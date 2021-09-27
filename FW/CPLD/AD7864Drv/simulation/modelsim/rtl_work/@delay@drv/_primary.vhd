library verilog;
use verilog.vl_types.all;
entity DelayDrv is
    port(
        in1             : in     vl_logic;
        in2             : in     vl_logic;
        pwron           : out    vl_logic;
        rst             : out    vl_logic
    );
end DelayDrv;
