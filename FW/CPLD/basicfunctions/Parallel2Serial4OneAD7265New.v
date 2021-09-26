//Parallel2Serial4OneAD7265.v
//This controller read only one ADC and then transfer
//the 4 channels of this adc parallel data into 12 bits serial
//Author: Dong Xia
//Date: 19/Set/2021

`define ADC_CHIP_NO 4
`define SPI_CLK_NO 5
`define MAX_CHANNEL_NO 3  //should be the number of channel -1 
module Parallel2Serial4OneAD7265New (

	//clock in: 24Mhz clk
    input clkin,
	 
	 //enable the logic, pulse signal
	 input enable,
	 
	
	 //parallel data and control signal
	 input [11:0] db, //data[11:0]
    output reg [3:0] cs_bar, //chip select to ad
	 output reg rd_bar,
	 output reg sclk,
//    input miso,
	 output reg spi_cs,
    output reg mosi);
	 
	 reg [2:0] cnter;
	 reg [3:0] sel; 
	 reg [3:0] reg_cs_bar;
	 reg [11:0] dbreg;
	 reg spi_rdy;
	 reg enspi;
	 reg enp;
	 reg enspiPrev;
	 reg [3:0] cnter_ch;
	 reg enable_channel;
	 reg [2:0] tmpcnter;
	 		
	 initial begin
			sel <= 4'b1100;
			cnter <= 3'h00;
			enp <= 1'b0;
			sclk <= 1'b1;
			rd_bar <= 1'b1;
			reg_cs_bar <= `ADC_CHIP_NO'b0;
			cs_bar <= 4'b1111;
			mosi <= 1'b0;
			enspi <= 1'b0;
			enspiPrev <= 1'b0;
			spi_rdy <= 1'b1;
			spi_cs <= 1'b1;
			cnter_ch <= 4'b0000;
			enable_channel <= 1'b0;
			tmpcnter <= 3'b0;
	 end
	 
	 
	 //generate the module enable signal
	 always @(posedge enable_channel, posedge spi_rdy) begin
		//if enable turns to ready, then start to read the data
		enp = ~enp;
	 end 
	 
	 //auto generate the enable signal to activate the 
	 //read of all the other channels besides the 0 channel.
	 always @(posedge clkin) begin
		if(cnter_ch == 4'b0000) begin 
			//the first channel will just copy the
			//enable signal from pin
			if(enable == 1'b1) enable_channel = 1'b1;
			else enable_channel = 1'b0;
		end
		else begin 
			//other channel should generate the enable
			//signal automatically
			if(spi_rdy == 1'b1) begin 
				if(tmpcnter == 3'b011) enable_channel = 1'b1;
				if(tmpcnter <= 3'b100) tmpcnter = tmpcnter + 1'b1;
				else enable_channel = 1'b0;
			end
			else tmpcnter = 3'b000;
		end
	 end
	 
	 always @(posedge spi_rdy) begin
		if(cnter_ch == 4'h`MAX_CHANNEL_NO) cnter_ch = 4'b0;
		else cnter_ch = cnter_ch + 1'b1;
	 end
	 
	 
	 always @(posedge clkin) begin
		 
		 if(clkin == 1'b1) begin
			 //During en signal:
			 // counter add up
			 // generate the rd cs signal
			 if(enp == 1'b1) begin
				 if(cnter < 3'h7) cnter = cnter + 1'h1;
				 //when the counter is one
				 //generate the rd signal
				 if(cnter == 3'h1) rd_bar = 1'b0;
				 if(cnter == 3'h2) dbreg = db;
				 if(cnter == 3'h3) rd_bar = 1'b1;
				 if(cnter == 3'h5) enspi = 1'b1;
				 if(cnter == 3'h6) enspi = 1'b0;
			end
			else cnter = 3'b000;
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
	 
	 
	 //generate the spi cs signal
	 always @(posedge rd_bar, posedge spi_rdy) begin
	 	spi_cs = ~spi_cs;	
	 end
	 


    //convert parallel data into serial
	 //dbrdy negedge work as a enable signal to spi 
	 always @(posedge clkin) begin
			
			if(enspiPrev != enspi) begin
				sel = 4'b0000;
				spi_rdy = 1'b0;
			end 
			enspiPrev = enspi;
	  
			if(sel < 4'b1100) begin
				sclk = ~sclk;
				//read the data into register
            if(sclk == 1'b0) begin
                mosi = dbreg[sel];
            end
            else begin
                sel = sel + 1'b1;
            end
			end
			else 
				spi_rdy = 1'b1;
	  end
	 
endmodule

