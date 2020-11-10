library verilog;
use verilog.vl_types.all;
entity my_I2S_vlg_sample_tst is
    port(
        MCLK            : in     vl_logic;
        nReset          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end my_I2S_vlg_sample_tst;
