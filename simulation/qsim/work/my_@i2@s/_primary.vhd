library verilog;
use verilog.vl_types.all;
entity my_I2S is
    port(
        MCLK            : in     vl_logic;
        nReset          : in     vl_logic;
        LRCLK           : out    vl_logic;
        SCLK            : out    vl_logic;
        SD              : out    vl_logic
    );
end my_I2S;
