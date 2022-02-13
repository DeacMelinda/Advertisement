library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 

entity reg10 is
	port(CLK, Reset: in std_logic;
	R10: inout std_logic_vector(6 downto 0));
end reg10;

architecture reg10 of reg10 is
				  
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

signal c: std_logic_vector(3 downto 0):= "0010";  
signal sel2: std_logic_vector(6 downto 0);

begin
	R102: big port map(CLK, Reset, c, sel2);
	R103: BigReg port map(CLK, Reset, c, sel2, R10); 
end reg10;

--works!!!