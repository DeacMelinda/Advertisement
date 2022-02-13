library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 

entity reg0 is
	port(CLK, Reset: in std_logic;
	R0: inout std_logic_vector(6 downto 0);
	en: out std_logic);
end reg0;

architecture reg0 of reg0 is

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
						  
signal sel2: std_logic_vector(6 downto 0);
constant c: std_logic_vector(3 downto 0) := "1101";
begin	
	 
	 R01: big port map(CLK, Reset, c, sel2);
	 R02: BigReg port map(CLK, Reset, c, sel2, R0);   
	 en <= '1' when (sel2 = "1101011");
	
end reg0;

--reg 0, merge perfect. totusi... prima rulare cu Reset = 0, apoi nu se va modifica decat ddaca pui reset pe 1 si apoi iar pe 0