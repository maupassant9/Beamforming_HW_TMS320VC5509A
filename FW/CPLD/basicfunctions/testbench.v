`timescale 100ns/10ns

//TestBench for AD7864
// iverilog -g2005-sv -o testbench ad7864Drv.v testbench.v
module testbench;
    reg clki;
	 reg clkihf;
    reg conv2;
    reg conv;
    reg rd;
    reg [3:0] cs;
	//reg cs;
    reg [11:0] datas;
    wire spi_clk, spi_miso, spi_mosi;



    ad7864Drv DUT1(.clkin(clki),
		  .clkout(clko),
        .dsp_conv_bar(conv),
        .ad_conv_bar(conv2),
		  .db_rdy(en));
		  
	 Parrallel2SerialNew DUT2(.clkin(clkihf),
			.enable(en),
			.db(datas),
			.cs_bar(cs),
			.rd_bar(rd));

        reg [1:0] cnter;
    
    initial begin
        $dumpfile("testbench.vcd");$dumpvars(0,testbench);
        $monitor($time, "conv = %b, clki = %b", conv,clki);
        clki = 1'b0;
		  clkihf = 1'b0;
        conv = 1'b1;
        datas = 11'b10111010010;
 
    end

    always begin
        #8 clki = ~clki;
	 end
	 
	 always begin
	     #1 clkihf = ~clkihf;
	 end
    

    initial begin
        #8000 $finish;
    end
    
    always begin
        #500 conv = 1'b0;
        #16 conv = 1'b1;
    end
	 
	 always begin
		#50 datas = datas + 11'b1;
	 end
    
endmodule