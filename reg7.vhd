library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 

entity reg7 is
	port(CLK, Reset: in std_logic;
	R7: inout std_logic_vector(6 downto 0));
end reg7;

architecture reg7 of reg7 is
				  
component BigReg is	 
	port(CLK, Reset: in std_logic;	
	co: in std_logic_vector(3 downto 0);
	input: in std_logic_vector(6 downto 0);
	Qout: inout std_logic_vector(6 downto 0));
end component;	 

component big is
	port(CLK, RST: in std_logic;
	co: in std_logic_vector (3 downto 0);
	LIT: out std_logic_vector(6 downto 0));
end component;

signal c: std_logic_vector(3 downto 0):= "0101";  
signal sel2: std_logic_vector(6 downto 0);

begin
	R72: big port map(CLK, Reset, c, sel2);
	R73: BigReg port map(CLK, Reset, c, sel2, R7); 
end reg7;

--works!!!