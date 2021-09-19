`timescale 100ns/10ns
//TestBench for AD7864
module testbench;
    reg clki;
    reg conv2;
    reg conv;
    reg rd;
    reg cs;
    reg [11:0] datas;
    wire spi_clk, spi_miso, spi_mosi;



    ad7864Drv DUT(.clkin(clki),
		  .clkout(clko),
        .dsp_conv_bar(conv),
        .ad_conv_bar(conv2),
        .rd_bar(rd),
        .cs_bar(cs),
        .db(datas),
        .sclk(spi_clk),
        .miso(spi_miso),
        .mosi(spi_mosi) );

        reg [1:0] cnter;
    
    initial begin
        $dumpfile("testbench.vcd");$dumpvars(0,testbench);
        $monitor($time, "conv = %b, clki = %b", conv,clki);
        clki = 1'b0;
        conv = 1'b1;
        datas = 11'b10111010010;
 
    end

    always
        #1 clki = ~clki;
    

    initial begin
        #700 $finish;
    end
    
    always begin
        #240 conv = 1'b0;
        #2 conv = 1'b1;
    end
    
endmodule