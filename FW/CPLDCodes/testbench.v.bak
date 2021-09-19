`timescale 100ns/1ns
//TestBench for AD7864
module testbench;
    reg clk;
    wire busy;
    reg eoc_bar;
    reg conv2;
    reg conv;
    reg rd;
    reg cs;
    reg [11:0] datas;
    wire spi_clk, spi_miso, spi_mosi;



    ad7864Drv DUT(.clkin(clk), 
        .dsp_conv_bar(conv),
        .busy(busy),
        .eoc_bar(eoc_bar),
        .ad_conv_bar(conv2),
        .rd_bar(rd),
        .cs_bar(cs),
        .db(datas),
        .sclk(spi_clk),
        .miso(spi_miso),
        .mosi(spi_mosi) );

        reg [1:0] cnter;
    
    initial begin
        $dumpfile("test.vcd");$dumpvars(0,testbench);
        $monitor($time, "conv = %b, clk = %b", conv,clk);
        clk = 1'b0;
        conv = 1'b1;
        datas = 11'b10111010010;
        cnter = 2'b00;
    end

    always
        #1 clk = ~clk;
    

    initial begin
        #300 $finish;
    end
    
    always begin
        #30 conv = 1'b0;
        #2 conv = 1'b1;
    end

    always begin
        #3 eoc_bar = 1'b0;
        #3 eoc_bar = 1'b1;
    end

    
endmodule