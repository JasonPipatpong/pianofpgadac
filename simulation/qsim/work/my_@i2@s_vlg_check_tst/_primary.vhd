library verilog;
use verilog.vl_types.all;
entity my_I2S_vlg_check_tst is
    port(
        LRCLK           : in     vl_logic;
        SCLK            : in     vl_logic;
        SD              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end my_I2S_vlg_check_tst;
