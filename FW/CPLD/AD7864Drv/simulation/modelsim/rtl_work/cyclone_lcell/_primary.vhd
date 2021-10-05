library verilog;
use verilog.vl_types.all;
entity cyclone_lcell is
    generic(
        operation_mode  : string  := "normal";
        synch_mode      : string  := "off";
        register_cascade_mode: string  := "off";
        sum_lutc_input  : string  := "datac";
        lut_mask        : string  := "ffff";
        power_up        : string  := "low";
        cin_used        : string  := "false";
        cin0_used       : string  := "false";
        cin1_used       : string  := "false";
        output_mode     : string  := "reg_and_comb";
        lpm_type        : string  := "cyclone_lcell";
        x_on_violation  : string  := "on"
    );
    port(
        clk             : in     vl_logic;
        dataa           : in     vl_logic;
        datab           : in     vl_logic;
        datac           : in     vl_logic;
        datad           : in     vl_logic;
        aclr            : in     vl_logic;
        aload           : in     vl_logic;
        sclr            : in     vl_logic;
        sload           : in     vl_logic;
        ena             : in     vl_logic;
        cin             : in     vl_logic;
        cin0            : in     vl_logic;
        cin1            : in     vl_logic;
        inverta         : in     vl_logic;
        regcascin       : in     vl_logic;
        devclrn         : in     vl_logic;
        devpor          : in     vl_logic;
        combout         : out    vl_logic;
        regout          : out    vl_logic;
        cout            : out    vl_logic;
        cout0           : out    vl_logic;
        cout1           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of operation_mode : constant is 1;
    attribute mti_svvh_generic_type of synch_mode : constant is 1;
    attribute mti_svvh_generic_type of register_cascade_mode : constant is 1;
    attribute mti_svvh_generic_type of sum_lutc_input : constant is 1;
    attribute mti_svvh_generic_type of lut_mask : constant is 1;
    attribute mti_svvh_generic_type of power_up : constant is 1;
    attribute mti_svvh_generic_type of cin_used : constant is 1;
    attribute mti_svvh_generic_type of cin0_used : constant is 1;
    attribute mti_svvh_generic_type of cin1_used : constant is 1;
    attribute mti_svvh_generic_type of output_mode : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
    attribute mti_svvh_generic_type of x_on_violation : constant is 1;
end cyclone_lcell;
