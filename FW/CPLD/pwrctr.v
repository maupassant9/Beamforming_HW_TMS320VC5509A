//Power Control and boot control for TMS320VC5509A
//
// Author: Dong Xia
// Date: 26/03/2021
// 
// 

module pwrctr(
	input clk_in,
	
	//power control pins
	output pwr_en,
	//boot select pins
	output [3:0] bootcfg,
	
	//boot image rd
	output eeprom_sclk,
	output eeprom_mosi,
	output eeprom_mem_cs,
	input eeprom_miso,
	
	//dsp side spi pins for boot
	input sclk,
	input mosi,
	input cs,
	output miso
	
);
	
	reg highreg;
	//connect the dsp spi pins and eeprom spi pins
	assign eeprom_sclk = sclk;
	assign eeprom_mosi = mosi;
	assign eeprom_mem_cs = cs;
	assign miso = eeprom_miso;
	
	//wait for first clk, and set bootcfg
//	assign pwr_en = highreg;
//	assign bootcfg[0] = highreg;
//	assign bootcfg[1] = !highreg;
//	assign bootcfg[2] = !highreg;
//	assign bootcfg[3] = highreg;
//	always @ (posedge clk_in) begin
//		highreg = 1;
//	end 	
	
endmodule
