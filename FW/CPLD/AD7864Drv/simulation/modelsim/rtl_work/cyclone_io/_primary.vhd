library verilog;
use verilog.vl_types.all;
entity cyclone_io is
    generic(
        operation_mode  : string  := "input";
        open_drain_output: string  := "false";
        bus_hold        : string  := "false";
        output_register_mode: string  := "none";
        output_async_reset: string  := "none";
        output_sync_reset: string  := "none";
        output_power_up : string  := "low";
        tie_off_output_clock_enable: string  := "false";
        oe_register_mode: string  := "none";
        oe_async_reset  : string  := "none";
        oe_sync_reset   : string  := "none";
        oe_power_up     : string  := "low";
        tie_off_oe_clock_enable: string  := "false";
        input_register_mode: string  := "none";
        input_async_reset: string  := "none";
        input_sync_reset: string  := "none";
        input_power_up  : string  := "low";
        lpm_type        : string  := "cyclone_io"
    );
    port(
        datain          : in     vl_logic;
        oe              : in     vl_logic;
        outclk          : in     vl_logic;
        outclkena       : in     vl_logic;
        inclk           : in     vl_logic;
        inclkena        : in     vl_logic;
        areset          : in     vl_logic;
        sreset          : in     vl_logic;
        devclrn         : in     vl_logic;
        devpor          : in     vl_logic;
        devoe           : in     vl_logic;
        padio           : inout  vl_logic;
        combout         : out    vl_logic;
        regout          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of operation_mode : constant is 1;
    attribute mti_svvh_generic_type of open_drain_output : constant is 1;
    attribute mti_svvh_generic_type of bus_hold : constant is 1;
    attribute mti_svvh_generic_type of output_register_mode : constant is 1;
    attribute mti_svvh_generic_type of output_async_reset : constant is 1;
    attribute mti_svvh_generic_type of output_sync_reset : constant is 1;
    attribute mti_svvh_generic_type of output_power_up : constant is 1;
    attribute mti_svvh_generic_type of tie_off_output_clock_enable : constant is 1;
    attribute mti_svvh_generic_type of oe_register_mode : constant is 1;
    attribute mti_svvh_generic_type of oe_async_reset : constant is 1;
    attribute mti_svvh_generic_type of oe_sync_reset : constant is 1;
    attribute mti_svvh_generic_type of oe_power_up : constant is 1;
    attribute mti_svvh_generic_type of tie_off_oe_clock_enable : constant is 1;
    attribute mti_svvh_generic_type of input_register_mode : constant is 1;
    attribute mti_svvh_generic_type of input_async_reset : constant is 1;
    attribute mti_svvh_generic_type of input_sync_reset : constant is 1;
    attribute mti_svvh_generic_type of input_power_up : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
end cyclone_io;
