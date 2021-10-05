library verilog;
use verilog.vl_types.all;
entity pll_altpll_1 is
    port(
        \_clk0\         : out    vl_logic;
        inclk           : in     vl_logic_vector(1 downto 0)
    );
end pll_altpll_1;
