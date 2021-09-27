library verilog;
use verilog.vl_types.all;
entity Parallel2Serial4OneAD7265New is
    port(
        clkin           : in     vl_logic;
        enable          : in     vl_logic;
        db              : in     vl_logic_vector(11 downto 0);
        cs_bar          : out    vl_logic_vector(3 downto 0);
        rd_bar          : out    vl_logic;
        sclk            : out    vl_logic;
        spi_cs          : out    vl_logic;
        mosi            : out    vl_logic
    );
end Parallel2Serial4OneAD7265New;
