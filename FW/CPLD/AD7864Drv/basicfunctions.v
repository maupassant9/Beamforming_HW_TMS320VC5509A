// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
// CREATED		"Fri Oct 01 22:37:03 2021"

module basicfunctions(
	CLOCKPIN,
	DSP_EEPROM_SCK,
	DSP_EEPROM_MOSI,
	DSP_EEPROM_CS,
	DSP_CONV_PIN,
	CPLD_EEPROM_MISO,
	ADC_DB_PIN,
	DSPCLKOUT,
	DSP_PWR_EN,
	DSP_RST,
	CPLD_EEPROM_CS,
	CPLD_EEPROM_SCK,
	CPLD_EEPROM_MOSI,
	DSP_EEPROM_MISO,
	ADC_CONV,
	ADC_RD,
	CPLD_SPI_CLK,
	CPLD_SPI_MO,
	ADC_CLK,
	GPIO0,
	GPIO1,
	GPIO2,
	GPIO3,
	CPLD_SPI_CS,
	LED_PIN,
	AD_CS
);


input wire	CLOCKPIN;
input wire	DSP_EEPROM_SCK;
input wire	DSP_EEPROM_MOSI;
input wire	DSP_EEPROM_CS;
input wire	DSP_CONV_PIN;
input wire	CPLD_EEPROM_MISO;
input wire	[11:0] ADC_DB_PIN;
output wire	DSPCLKOUT;
output wire	DSP_PWR_EN;
output wire	DSP_RST;
output wire	CPLD_EEPROM_CS;
output wire	CPLD_EEPROM_SCK;
output wire	CPLD_EEPROM_MOSI;
output wire	DSP_EEPROM_MISO;
output wire	ADC_CONV;
output wire	ADC_RD;
output wire	CPLD_SPI_CLK;
output wire	CPLD_SPI_MO;
output wire	ADC_CLK;
output wire	GPIO0;
output wire	GPIO1;
output wire	GPIO2;
output wire	GPIO3;
output wire	CPLD_SPI_CS;
output wire	LED_PIN;
output wire	[3:0] AD_CS;

wire	CLKIN;
wire	[23:0] cnterout;
wire	SYNTHESIZED_WIRE_0;

assign	CPLD_EEPROM_CS = DSP_EEPROM_CS;
assign	CPLD_EEPROM_SCK = DSP_EEPROM_SCK;
assign	CPLD_EEPROM_MOSI = DSP_EEPROM_MOSI;
assign	DSP_EEPROM_MISO = CPLD_EEPROM_MISO;
assign	GPIO0 = 1;
assign	GPIO1 = 1;
assign	GPIO2 = 0;
assign	GPIO3 = 0;




ad7864Drv	b2v_inst13(
	.clkin(cnterout[2]),
	.dsp_conv_bar(DSP_CONV_PIN),
	.clkout(ADC_CLK),
	.ad_conv_bar(ADC_CONV),
	.db_rdy(SYNTHESIZED_WIRE_0));




Parallel2Serial4OneAD7265New	b2v_inst17(
	.clkin(CLKIN),
	.enable(SYNTHESIZED_WIRE_0),
	.db(ADC_DB_PIN),
	.rd_bar(ADC_RD),
	.sclk(CPLD_SPI_CLK),
	.spi_cs(CPLD_SPI_CS),
	.mosi(CPLD_SPI_MO),
	.cs_bar(AD_CS));


DelayDrv	b2v_inst18(
	.in1(cnterout[17]),
	.in2(cnterout[22]),
	.pwron(DSP_PWR_EN),
	.rst(DSP_RST));

assign	DSPCLKOUT =  ~CLKIN;


pll	b2v_inst4(
	.inclk0(CLOCKPIN),
	.c0(CLKIN));


lpm_counter0	b2v_inst5(
	.clock(CLKIN),
	.q(cnterout));

assign	LED_PIN = cnterout[23];

endmodule
