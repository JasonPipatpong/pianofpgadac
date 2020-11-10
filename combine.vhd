library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity combine is 
port(clk: in std_logic ;
		slide_switch: in std_LOGIC_vector(6 downto 0);
		reset : in std_logic;
		sclk : out std_logic;
		sd : out std_logic;
		ws : out std_logic);
end combine;

architecture fn of combine is 

component my_i2s is 
    Port (  MCLK     : in STD_LOGIC;
				nReset   : in STD_LOGIC;
				LRCLK    : out STD_LOGIC;
            SCLK     : out STD_LOGIC;
            SD       : out STD_LOGIC
            );
end component;

component freqA is
    Port (
        clk_in : in  STD_LOGIC;
        clk_out: out STD_LOGIC
    );
end component;

component freqB is 
    Port (
        clk_in : in  STD_LOGIC;
        clk_out: out STD_LOGIC
    );
end component;

component freqD is 
    Port (
        clk_in : in  STD_LOGIC;
        clk_out: out STD_LOGIC
    );
end component;

component freqC is 
    Port (
        clk_in : in  STD_LOGIC;
        clk_out: out STD_LOGIC
    );
end component;

component freqE is 
    Port (
        clk_in : in  STD_LOGIC;
        clk_out: out STD_LOGIC
    );
end component;

component freqF is 
    Port (
        clk_in : in  STD_LOGIC;
        clk_out: out STD_LOGIC
    );
end component;

component freqG is 
    Port (
        clk_in : in  STD_LOGIC;
        clk_out: out STD_LOGIC
    );
end component;

component select_note is 
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
end component;

signal freqA_out : std_logic;
signal freqB_out : std_logic;
signal freqC_out :  std_logic;
signal freqD_out :  std_logic;
signal freqE_out :  std_logic;
signal freqF_out :  std_logic;
signal freqG_out:  std_logic; 
signal select_note_out:  std_logic; 
begin 
	a0:freqA
		port map (clk,freqA_out);
	a1:freqB
		port map (clk,freqB_out);
	a2:freqC
		port map (clk,freqC_out);
	a3:freqD
		port map (clk,freqD_out);
	a4:freqE
		port map (clk,freqE_out);
	a5:freqF
		port map (clk,freqF_out);
	a6:freqG
		port map (clk,freqG_out);
	a7:select_note
		port map (freqA_out,freqB_out,freqC_out,freqD_out,freqE_out,freqF_out,freqG_out,clk,slide_switch,select_note_out);
	a8:my_i2s
		port map (select_note_out,reset,ws,sclk,sd);
end ;




