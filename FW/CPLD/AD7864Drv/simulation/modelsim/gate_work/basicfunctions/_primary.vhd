library verilog;
use verilog.vl_types.all;
entity basicfunctions is
    port(
        CLOCKPIN        : in     vl_logic;
        DSP_EEPROM_SCK  : in     vl_logic;
        DSP_EEPROM_MOSI : in     vl_logic;
        DSP_EEPROM_CS   : in     vl_logic;
        DSP_CONV_PIN    : in     vl_logic;
        CPLD_EEPROM_MISO: in     vl_logic;
        ADC_DB_PIN      : in     vl_logic_vector(11 downto 0);
        DSPCLKOUT       : out    vl_logic;
        DSP_PWR_EN      : out    vl_logic;
        DSP_RST         : out    vl_logic;
        CPLD_EEPROM_CS  : out    vl_logic;
        CPLD_EEPROM_SCK : out    vl_logic;
        CPLD_EEPROM_MOSI: out    vl_logic;
        DSP_EEPROM_MISO : out    vl_logic;
        ADC_CONV        : out    vl_logic;
        ADC_RD          : out    vl_logic;
        CPLD_SPI_CLK    : out    vl_logic;
        CPLD_SPI_MO     : out    vl_logic;
        ADC_CLK         : out    vl_logic;
        GPIO0           : out    vl_logic;
        GPIO1           : out    vl_logic;
        GPIO2           : out    vl_logic;
        GPIO3           : out    vl_logic;
        CPLD_SPI_CS     : out    vl_logic;
        LED_PIN         : out    vl_logic;
        AD_CS           : out    vl_logic_vector(3 downto 0)
    );
end basicfunctions;
