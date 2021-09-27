library verilog;
use verilog.vl_types.all;
entity cyclone_asynch_lcell is
    generic(
        operation_mode  : string  := "normal";
        sum_lutc_input  : string  := "datac";
        lut_mask        : string  := "ffff";
        cin_used        : string  := "false";
        cin0_used       : string  := "false";
        cin1_used       : string  := "false"
    );
    port(
        dataa           : in     vl_logic;
        datab           : in     vl_logic;
        datac           : in     vl_logic;
        datad           : in     vl_logic;
        cin             : in     vl_logic;
        cin0            : in     vl_logic;
        cin1            : in     vl_logic;
        inverta         : in     vl_logic;
        qfbkin          : in     vl_logic;
        regin           : out    vl_logic;
        combout         : out    vl_logic;
        cout            : out    vl_logic;
        cout0           : out    vl_logic;
        cout1           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of operation_mode : constant is 1;
    attribute mti_svvh_generic_type of sum_lutc_input : constant is 1;
    attribute mti_svvh_generic_type of lut_mask : constant is 1;
    attribute mti_svvh_generic_type of cin_used : constant is 1;
    attribute mti_svvh_generic_type of cin0_used : constant is 1;
    attribute mti_svvh_generic_type of cin1_used : constant is 1;
end cyclone_asynch_lcell;
