//Verilog driver for AD7864
//
// Author: Dong Xia
// Date: 26/03/2021
// 
// 

module ad7864(
	input clk_in, //the input clock
	
	//////CPLD <--> ADC
	output clk,  //clk output to AD7864
	output cs_a, //chip select for chip A
	output cs_b, //chip select for chip B
	output wr,   //write signal
	output rd,   //read signal
	output conv_out, //start conversion signal
	
	input busy,  //ADC busy signal
	input eoc,   //end of conversion signal
		
	inout [11:0] db,
	
	//CPLD <-->DSP (SPI interface)
	input conv_in,
	output spi_clk,
	output spi_mosi,
	output spi_cs,
	input spi_miso
	
	
); //ADC converted data
	
	assign clk = busy && eoc;
	assign cs_a = !busy;
	assign cs_b = busy || eoc;
	assign wr = !eoc;
	assign rd = eoc;
	assign conv_out = conv_in;
	
	
endmodule
	