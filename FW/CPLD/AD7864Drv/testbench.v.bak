`timescale 100ps/10ps
//TestBench for AD7864
// iverilog -g2005-sv -o testbench ad7864Drv.v testbench.v
module testbench;
	 reg clkihf;
	 wire clko;
	 reg eepromsck_in;
	 reg eeprommosi_in;
	 reg eepromcs_in;
	 wire eeprommiso_in;
	 
	 wire eepromcs_out;
	 wire eepromsck_out;
	 wire eeprommosi_out;
	 reg eeprommiso_out;
	 
    reg conv;
	 wire conv_out;
	 wire ad_clk;
	 reg [11:0] datas;
	 
	 wire pwren;
	 wire rst;
	 
    reg rd;
	 wire ad_rd;
    wire [3:0] ad_cs;
	//reg cs;
    
    wire spi_clk, spi_mo, spi_cs;
	 wire gpio0, gpio1, gpio2, gpio3;
	 wire led;


	basicfunctions DUT1(
	.CLOCKPIN(clkihf),
	.DSPCLKOUT(clko),
	//eeprom
	.DSP_EEPROM_SCK(eepromsck_in),
	.DSP_EEPROM_MOSI(eeprommosi_in),
	.DSP_EEPROM_CS(eepromcs_in),
	.DSP_EEPROM_MISO(eeprommiso_in),

	.DSP_CONV_PIN(conv),
	.ADC_DB_PIN(datas),

	.DSP_PWR_EN(pwren),
	.DSP_RST(rst),
	.CPLD_EEPROM_CS(eepromcs_out),
	.CPLD_EEPROM_SCK(eepromsck_out),
	.CPLD_EEPROM_MOSI(eeprommosi_out),
	.CPLD_EEPROM_MISO(eeprommiso_out),
	
	.ADC_CONV(conv_out),
	.ADC_RD(ad_rd),
	.CPLD_SPI_CLK(spi_clk),
	.CPLD_SPI_MO(spi_mo),
	.ADC_CLK(ad_clk),
	.GPIO0(gpio0),
	.GPIO1(gpio1),
	.GPIO2(gpio2),
	.GPIO3(gpio3),
	.CPLD_SPI_CS(spi_cs),
	.LED_PIN(led),
	.AD_CS(ad_cs)
);
    
    initial begin
        //$dumpfile("testbench.vcd");$dumpvars(0,testbench);
        //$monitor($time, "conv = %b, clki = %b", conv,clki);
		  clkihf = 1'b0;
        conv = 1'b1;
        datas = 11'b10111010010;
		 #800 conv = 1'b0; 
		 #8000 conv = 1'b1;
    end

	 always begin
	     #1 clkihf = ~clkihf;
	 end
    
    initial begin
        #800000 $finish;
    end
    
	 always begin
		#500 datas = datas + 11'b1;
	 end
    
endmodule