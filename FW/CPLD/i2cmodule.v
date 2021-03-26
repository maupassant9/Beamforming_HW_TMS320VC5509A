//Verilog driver for I2C
//
// Author: Dong Xia
// Date: 26/03/2021
// 
// 

module i2cmodule(
	inout scl_in,
	inout sda_in
);

assign scl_in = sda_in;

endmodule
