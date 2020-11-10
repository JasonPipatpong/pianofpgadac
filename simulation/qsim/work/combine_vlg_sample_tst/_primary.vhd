library verilog;
use verilog.vl_types.all;
entity combine_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        slide_switch    : in     vl_logic_vector(6 downto 0);
        sampler_tx      : out    vl_logic
    );
end combine_vlg_sample_tst;
