library verilog;
use verilog.vl_types.all;
entity cyclone_dll is
    generic(
        input_frequency : string  := "10000 ps";
        phase_shift     : string  := "0";
        sim_valid_lock  : integer := 1;
        sim_invalid_lock: integer := 5;
        lpm_type        : string  := "cyclone_dll"
    );
    port(
        clk             : in     vl_logic;
        delayctrlout    : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of input_frequency : constant is 1;
    attribute mti_svvh_generic_type of phase_shift : constant is 1;
    attribute mti_svvh_generic_type of sim_valid_lock : constant is 1;
    attribute mti_svvh_generic_type of sim_invalid_lock : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
end cyclone_dll;
