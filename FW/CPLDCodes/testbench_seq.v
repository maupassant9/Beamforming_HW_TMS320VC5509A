`timescale 100ns/1ns
//TestBench for AD7864
module testbench_seq;
    reg clk,x,reset;
    wire z1,z2;
    
    seekseq DUT(clk, reset, x, z1);
    seekseq2 DUT2(clk, reset, x, z2);
    
    initial begin
        $dumpfile("sequence.vcd");$dumpvars(0,testbench_seq);
        clk = 1'b0;
        reset = 1'b1;
        #15 reset = 1'b0;
    end

    always
        #5 clk = ~clk;
    
    always begin
        #12 x = 0; #10 x = 0; #10 x = 1; #10 x = 1;
        #10 x = 0; #10 x = 1; #10 x = 1; #10 x = 0;
        #10 x = 0; #10 x = 1; #10 x = 1; #10 x = 0;
        #10 $finish;
    end

    
endmodule