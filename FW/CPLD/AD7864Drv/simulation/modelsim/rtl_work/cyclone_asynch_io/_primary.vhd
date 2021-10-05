library verilog;
use verilog.vl_types.all;
entity cyclone_asynch_io is
    generic(
        operation_mode  : string  := "input";
        bus_hold        : string  := "false";
        open_drain_output: string  := "false"
    );
    port(
        datain          : in     vl_logic;
        oe              : in     vl_logic;
        regin           : in     vl_logic;
        padio           : inout  vl_logic;
        combout         : out    vl_logic;
        regout          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of operation_mode : constant is 1;
    attribute mti_svvh_generic_type of bus_hold : constant is 1;
    attribute mti_svvh_generic_type of open_drain_output : constant is 1;
end cyclone_asynch_io;
