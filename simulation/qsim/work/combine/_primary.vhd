library verilog;
use verilog.vl_types.all;
entity combine is
    port(
        clk             : in     vl_logic;
        slide_switch    : in     vl_logic_vector(6 downto 0);
        reset           : in     vl_logic;
        sclk            : out    vl_logic;
        sd              : out    vl_logic;
        ws              : out    vl_logic
    );
end combine;
