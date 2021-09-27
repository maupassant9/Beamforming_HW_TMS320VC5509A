library verilog;
use verilog.vl_types.all;
entity cnter8Bits is
    port(
        clock           : in     vl_logic;
        q               : out    vl_logic_vector(7 downto 0)
    );
end cnter8Bits;
