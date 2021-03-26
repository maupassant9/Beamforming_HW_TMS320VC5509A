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
	output cpld_mem_cs,
	input eeprom_miso
	
);

	assign pwr_en = clk_in;
endmodule
