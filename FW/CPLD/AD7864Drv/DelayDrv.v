//Delay
//Delay program for DSP RST and DSP POWER ON
// power on signal should be placed before rst signal

module DelayDrv 
(
    //clock in
    input in1, //input clk for power on
	 input in2, //input clk for rst
	 
	 output reg pwron, 
	 output reg rst);
	 
	 initial begin
		rst <= 1'b0;
		pwron <= 1'b0;	 
	 end 
	 
	 always @(posedge in2) begin
		rst = 1'b1;
	 end
	 
	 always @(posedge in1) begin
		pwron <= 1'b1;
	 end
	 
endmodule
