library ieee;
use ieee.std_logic_1164.all;

entity select_note is
port(
	freqA : in std_logic;
	freqB : in std_logic;
	freqC : in std_logic;
	freqD : in std_logic;
	freqE : in std_logic;
	freqF : in std_logic;
	freqG : in std_logic;
	clk_in : in std_logic;
	sel : in std_logic_vector(6 downto 0);
	clk_out: out std_logic);
end select_note;

architecture rtl of select_note is
begin
	with sel select
		clk_out <= freqC when "1000000",
						freqD when "0100000",
						freqE when "0010000",
						freqF when "0001000",
						freqG when "0000100",
						freqA when "0000010",
						freqB when "0000001",
						clk_in when others;
end rtl;