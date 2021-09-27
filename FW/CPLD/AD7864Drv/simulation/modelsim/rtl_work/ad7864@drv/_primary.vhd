library verilog;
use verilog.vl_types.all;
entity ad7864Drv is
    port(
        clkin           : in     vl_logic;
        clkinhi         : in     vl_logic;
        dsp_conv_bar    : in     vl_logic;
        clkout          : out    vl_logic;
        ad_conv_bar     : out    vl_logic;
        db_rdy          : out    vl_logic
    );
end ad7864Drv;
