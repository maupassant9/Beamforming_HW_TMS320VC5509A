//Parallel2Serial.v
//This controller read only one ADC and then transfer
//the 4 channels of this adc parallel data into 12 bits serial
//Author: Dong Xia
//Date: 19/Set/2021

`define ADC_CHIP_NO 4
`define SPI_CLK_NO 34+(12*`ADC_CHIP_NO*2)*4
module Parallel2Serial (

	//clock in: 24Mhz clk
    input clkin,
	 
	 //enable the logic, pulse signal
	 input enable,
	
	 //parallel data and control signal
	 input [11:0] db, //data[11:0]
    output reg [`ADC_CHIP_NO-1:0] cs_bar, //chip select to ad
	 output reg rd_bar,//read signal to ad

	 
//    //serial port
    output reg sclk,
	output spi_cs,
    output reg mosi);
	 
	 
	 reg [3:0] sel;
	 reg [8:0] cnter;
	 reg en;
	 reg enspi;
	 reg [`ADC_CHIP_NO-1:0] reg_cs_bar;
	 reg [11:0] dbreg;
	 reg dbrdy;
	 		
	 initial begin
			sel <= 4'b0;
			cnter <= 9'h00;
			en <= 1'b0;
			sclk <= 1'b1;
			rd_bar <= 1'b1;
			reg_cs_bar <= `ADC_CHIP_NO'b00;
			dbrdy <= 1'b0;
			cs_bar <= 4'b1111;
			mosi <= 1'b0;
	 end
	 
	 
	 always @(clkin) begin
		 
		 if(clkin == 1'b1) begin
			 if(enable == 1'b1) begin
				 en = 1'b1;
			 end
			 
			 // stop the enable signal after 
			 // counter count to some value
			 if(cnter == 9'd`SPI_CLK_NO) begin
				 en = 1'b0;
				 cnter = 9'h0;
			 end
			 
			 //During en signal:
			 // counter add up
			 // generate the rd cs signal
			 if(en == 1'b1) begin
				 cnter = cnter + 9'h1;
				 
				 //when the counter is one
				 //generate the rd signal
				
				 if( 
					//first channel
					(cnter == 9'h1)|
					(cnter == 9'h1b)|
					(cnter == 9'h35)|
					(cnter == 9'h4f)|
					//second channel 
					(cnter == 9'h69)|
					(cnter == 9'h83)|
					(cnter == 9'h9d)|
					(cnter == 9'hb7)|
					//third channel
					(cnter == 9'hd1)|
					(cnter == 9'heb)|
					(cnter == 9'h105)|
					(cnter == 9'h11f)|
					//fourth channel
					(cnter == 9'h139)|
					(cnter == 9'h153)|
					(cnter == 9'h16d)|
					(cnter == 9'h187))
					
				 begin
					rd_bar = 1'b0;
				 end
				 if(
					 //first channel
					(cnter == 9'h3)|
					(cnter == 9'h1d)|
					(cnter == 9'h37)|
					(cnter == 9'h51)|
					 //second channel
					(cnter == 9'h6B)|
					(cnter == 9'h85)|
					(cnter == 9'h9f)|
					(cnter == 9'hB9)|
					 //third channel
					(cnter == 9'hD3)|
					(cnter == 9'hED)|
					(cnter == 9'h107)|
					(cnter == 9'h121)|
					//fourth channel
					(cnter == 9'h13B)|
					(cnter == 9'h155)|
					(cnter == 9'h16F)|
					(cnter == 9'h189))
				 begin
					rd_bar = 1'b1;
				 end
			end
			
			//control the enspi signal
			if(
				// FIRST CHANNEL
				(cnter == 9'h1c)|
				(cnter == 9'h36)|
				(cnter == 9'h50)|
				(cnter == 9'h6A)|
				// SECOND CHANNEL
				(cnter == 9'h84)|
				(cnter == 9'h9E)|
				(cnter == 9'hB8)|
				(cnter == 9'hD2)|
				//THIRD CHANNEL
				(cnter == 9'hEC)|
				(cnter == 9'h106)|
				(cnter == 9'h120)|
				(cnter == 9'h13A)|
				//FOURTH CHANNEL
				(cnter == 9'h154)|
				(cnter == 9'h16E)|
				(cnter == 9'h188)|
				(cnter == 9'h1A2))
			 begin
				enspi = 1'b0;
			 end
		end
		else begin
			//read the parallel data
			if(rd_bar == 1'b0) begin
				dbrdy = 1'b1;
			end
			else begin
				dbrdy = 1'b0;
				
			end
			//control the enspi signal
			if(
				//FISRT CHANNEL
				(cnter == 9'h3)|
				(cnter == 9'h1d)|
				(cnter == 9'h37)|
				(cnter == 9'h51)|
				//SECOND CHANNEL
				(cnter == 9'h6B)|
				(cnter == 9'h85)|
				(cnter == 9'h9F)|
				(cnter == 9'hB9)|
				//THIRD CHANNEL
				(cnter == 9'hD3)|
				(cnter == 9'hED)|
				(cnter == 9'h107)|
				(cnter == 9'h121)|
				//FOURTH CHANNEL
				(cnter == 9'h13B)|
				(cnter == 9'h155)|
				(cnter == 9'h16F)|
				(cnter == 9'h189))
				
			 begin
				enspi = 1'b1;
			 end
			
		end
	 end
	 
	 
	 //generate the cs signal 
	 always @(rd_bar) begin
		 if(rd_bar == 1'b0) begin
			reg_cs_bar = reg_cs_bar << 1;
			if(reg_cs_bar == `ADC_CHIP_NO'b0) begin
				reg_cs_bar = `ADC_CHIP_NO'b1;
			end 
			cs_bar = ~reg_cs_bar;
		 end
		 else begin
			cs_bar = ~`ADC_CHIP_NO'b0;
		 end
	 end
	 
	 //sample the data
	 always @(posedge clkin) begin
		if((dbrdy == 1'b1)&(rd_bar == 1'b0)) begin
			dbreg <= db;		
		end 
	 end
	 

	assign spi_cs = ((~rd_bar)&en)|(~en);
    //convert parallel data into serial
	 //dbrdy negedge work as a enable signal to spi

	 
	 always @(posedge clkin) begin
	  
			if(enspi == 1'b1) begin
				sclk = ~sclk;
				//read the data into register
            if(sclk == 1'b0) begin
                mosi = dbreg[sel];
            end
            else begin
                sel = sel + 1;
            end
			end
			
			//check the sel value
			if(sel == 4'b1100) begin
				sel = 4'b0000;
			end
	  end
	 
endmodule

