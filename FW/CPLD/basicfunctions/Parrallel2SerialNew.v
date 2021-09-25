//Parallel2Serial.v
//This controller read only one ADC and then transfer
//the 4 channels of this adc parallel data into 12 bits serial
//Author: Dong Xia
//Date: 19/Set/2021
//      24/Set/2021: rewrite to reduce the LEs used, from 187 to 30

`define ADC_CHIP_NO 4
`define MAX_CNTER_VAL 10'h350
`define SPI_CLK_NO 34+(12*`ADC_CHIP_NO*2)*4
module Parrallel2SerialNew (

	//clock in: 24Mhz clk
     input clkin,
	 
	 //enable the logic, pulse signal
	 input enable,
	
	 //parallel data and control signal
	 input [11:0] db, //data[11:0]
     output [`ADC_CHIP_NO-1:0] cs_bar, //chip select to ad
	 output rd_bar,//read signal to ad

	 
//    //serial port
    output reg sclk,
	output spi_cs,
    output reg mosi);
	 
	 
	 reg [3:0] sel;
	 reg [9:0] cnter;
	 reg [11:0] dbreg;
	 
	 wire rd;
	 wire enspi;
	 wire dbsample;
	 
	 		
	 initial begin
			sel <= 4'b0;
			cnter <= 10'h3ff;
			sclk <= 1'b1;
			mosi <= 1'b0;
	 end

	 //generate a counter
	 always @(clkin, enable, cnter) begin
		//if posedge triggered
		if(clkin == 1'b1) begin
			if((enable == 1'b1)&(cnter == 10'h3ff)) begin
			// intialize the cnter
				cnter <= 1'h0;
			end
		end
		
		else begin
		
			if(cnter < `MAX_CNTER_VAL) cnter <= cnter + 1'b1;
			else  cnter <= 10'h3ff;			
		end
	 end

	 
	 //generate the rd_bar signal
	 RdBarTruthTable(rd, cnter[9],cnter[8],
				    cnter[7],cnter[6],cnter[5],
					cnter[4],cnter[3],cnter[2],
					cnter[1],cnter[0]);
					
	 assign rd_bar = ~rd;
	 assign cs_bar = rd_bar;
	 assign spi_cs = ~enspi;
	 
	 EnspiTruthTable(enspi, cnter[9],cnter[8],
				    cnter[7],cnter[6],cnter[5],
					cnter[4],cnter[3],cnter[2],
					cnter[1],cnter[0]);
	 
	 
	 DbSampleTruthTable(dbsample, cnter[9],cnter[8],
				    cnter[7],cnter[6],cnter[5],
					cnter[4],cnter[3],cnter[2],
					cnter[1],cnter[0]);
	 
	 always @(posedge dbsample) begin
		dbreg <= db; 
	 end
	 	 

    //convert parallel data into serial
	 //dbrdy negedge work as a enable signal to spi
 	 always @(posedge clkin) begin
	  
			if(enspi == 1'b1) begin
				sclk = ~sclk;
				// read the data into register
            if(sclk == 1'b0) begin
                mosi = dbreg[sel];
            end
            else begin
                sel = sel + 1'b1;
            end
			end
			
			// check the sel value
			if(sel == 4'b1100) begin
				sel = 4'b0000;
			end
	  end
	 
endmodule

