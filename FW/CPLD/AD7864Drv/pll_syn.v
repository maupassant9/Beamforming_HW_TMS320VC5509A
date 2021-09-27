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

// VENDOR "Altera"
// PROGRAM "Quartus II 64-Bit"
// VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

// DATE "09/26/2021 15:30:30"

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module pll (
	inclk0,
	c0)/* synthesis synthesis_greybox=0 */;
input 	inclk0;
output 	c0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \altpll_component|_clk0 ;


pll_altpll_1 altpll_component(
	._clk0(\altpll_component|_clk0 ),
	.inclk({gnd,inclk0}));

assign c0 = \altpll_component|_clk0 ;

endmodule

module pll_altpll_1 (
	_clk0,
	inclk)/* synthesis synthesis_greybox=0 */;
output 	_clk0;
input 	[1:0] inclk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \pll~CLK1 ;
wire _clk2;
wire \pll~CLK3 ;
wire \pll~CLK4 ;
wire \pll~CLK5 ;

wire [5:0] pll_CLK_bus;

assign _clk0 = pll_CLK_bus[0];
assign \pll~CLK1  = pll_CLK_bus[1];
assign _clk2 = pll_CLK_bus[2];
assign \pll~CLK3  = pll_CLK_bus[3];
assign \pll~CLK4  = pll_CLK_bus[4];
assign \pll~CLK5  = pll_CLK_bus[5];

cyclone_pll pll(
	.fbin(vcc),
	.ena(vcc),
	.clkswitch(gnd),
	.areset(gnd),
	.pfdena(vcc),
	.scanclk(gnd),
	.scanaclr(gnd),
	.scandata(gnd),
	.comparator(gnd),
	.inclk({gnd,inclk[0]}),
	.clkena(6'b111111),
	.extclkena(4'b1111),
	.activeclock(),
	.clkloss(),
	.locked(),
	.scandataout(),
	.enable0(),
	.enable1(),
	.clk(pll_CLK_bus),
	.extclk(),
	.clkbad());
defparam pll.bandwidth = 0;
defparam pll.bandwidth_type = "auto";
defparam pll.clk0_counter = "l0";
defparam pll.clk0_divide_by = 25;
defparam pll.clk0_duty_cycle = 50;
defparam pll.clk0_multiply_by = 12;
defparam pll.clk0_phase_shift = "0";
defparam pll.clk0_time_delay = "0";
defparam pll.clk1_divide_by = 1;
defparam pll.clk1_duty_cycle = 50;
defparam pll.clk1_multiply_by = 1;
defparam pll.clk1_phase_shift = "0";
defparam pll.clk1_time_delay = "0";
defparam pll.clk2_divide_by = 1;
defparam pll.clk2_duty_cycle = 50;
defparam pll.clk2_multiply_by = 1;
defparam pll.clk2_phase_shift = "0";
defparam pll.clk2_time_delay = "0";
defparam pll.clk3_divide_by = 1;
defparam pll.clk3_duty_cycle = 50;
defparam pll.clk3_multiply_by = 1;
defparam pll.clk3_phase_shift = "0";
defparam pll.clk3_time_delay = "0";
defparam pll.clk4_divide_by = 1;
defparam pll.clk4_duty_cycle = 50;
defparam pll.clk4_multiply_by = 1;
defparam pll.clk4_phase_shift = "0";
defparam pll.clk4_time_delay = "0";
defparam pll.clk5_divide_by = 1;
defparam pll.clk5_duty_cycle = 50;
defparam pll.clk5_multiply_by = 1;
defparam pll.clk5_phase_shift = "0";
defparam pll.clk5_time_delay = "0";
defparam pll.compensate_clock = "clk0";
defparam pll.down_spread = "0";
defparam pll.e0_mode = "bypass";
defparam pll.e0_ph = 0;
defparam pll.e0_time_delay = 0;
defparam pll.e1_mode = "bypass";
defparam pll.e1_ph = 0;
defparam pll.e1_time_delay = 0;
defparam pll.e2_mode = "bypass";
defparam pll.e2_ph = 0;
defparam pll.e2_time_delay = 0;
defparam pll.e3_mode = "bypass";
defparam pll.e3_ph = 0;
defparam pll.e3_time_delay = 0;
defparam pll.enable_switch_over_counter = "off";
defparam pll.extclk0_divide_by = 1;
defparam pll.extclk0_duty_cycle = 50;
defparam pll.extclk0_multiply_by = 1;
defparam pll.extclk0_phase_shift = "0";
defparam pll.extclk0_time_delay = "0";
defparam pll.extclk1_divide_by = 1;
defparam pll.extclk1_duty_cycle = 50;
defparam pll.extclk1_multiply_by = 1;
defparam pll.extclk1_phase_shift = "0";
defparam pll.extclk1_time_delay = "0";
defparam pll.extclk2_divide_by = 1;
defparam pll.extclk2_duty_cycle = 50;
defparam pll.extclk2_multiply_by = 1;
defparam pll.extclk2_phase_shift = "0";
defparam pll.extclk2_time_delay = "0";
defparam pll.extclk3_divide_by = 1;
defparam pll.extclk3_duty_cycle = 50;
defparam pll.extclk3_multiply_by = 1;
defparam pll.extclk3_phase_shift = "0";
defparam pll.extclk3_time_delay = "0";
defparam pll.g0_mode = "bypass";
defparam pll.g0_ph = 0;
defparam pll.g0_time_delay = 0;
defparam pll.g1_mode = "bypass";
defparam pll.g1_ph = 0;
defparam pll.g1_time_delay = 0;
defparam pll.g2_mode = "bypass";
defparam pll.g2_ph = 0;
defparam pll.g2_time_delay = 0;
defparam pll.g3_mode = "bypass";
defparam pll.g3_ph = 0;
defparam pll.g3_time_delay = 0;
defparam pll.gate_lock_counter = 0;
defparam pll.gate_lock_signal = "no";
defparam pll.inclk0_input_frequency = 20000;
defparam pll.inclk1_input_frequency = 20000;
defparam pll.invalid_lock_multiplier = 5;
defparam pll.l0_high = 25;
defparam pll.l0_initial = 1;
defparam pll.l0_low = 25;
defparam pll.l0_mode = "even";
defparam pll.l0_ph = 0;
defparam pll.l0_time_delay = 0;
defparam pll.l1_mode = "bypass";
defparam pll.l1_ph = 0;
defparam pll.l1_time_delay = 0;
defparam pll.m = 24;
defparam pll.m2 = 1;
defparam pll.m_initial = 1;
defparam pll.m_ph = 0;
defparam pll.m_time_delay = 0;
defparam pll.n = 1;
defparam pll.n2 = 1;
defparam pll.n_time_delay = 0;
defparam pll.operation_mode = "normal";
defparam pll.pll_type = "auto";
defparam pll.primary_clock = "inclk0";
defparam pll.qualify_conf_done = "off";
defparam pll.simulation_type = "timing";
defparam pll.skip_vco = "off";
defparam pll.spread_frequency = 0;
defparam pll.switch_over_counter = 1;
defparam pll.switch_over_on_gated_lock = "off";
defparam pll.switch_over_on_lossclk = "off";
defparam pll.valid_lock_multiplier = 1;

endmodule
