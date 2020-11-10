library verilog;
use verilog.vl_types.all;
entity combine_vlg_check_tst is
    port(
        sclk            : in     vl_logic;
        sd              : in     vl_logic;
        ws              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end combine_vlg_check_tst;
