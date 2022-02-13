library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Cadere is
	port(CLK, Reset: in std_logic; 
	R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12: in std_logic_vector(6 downto 0);
	gataa: in std_logic;
	F1: out std_logic_vector(6 downto 0);
	F2: out std_logic_vector(6 downto 0);
	F3: out std_logic_vector(6 downto 0);
	F4: out std_logic_vector(6 downto 0));
end Cadere;

architecture Cadere of Cadere is

component CadereF1 is
	port(CLK, Reset: in std_logic; 
	R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12: in std_logic_vector(6 downto 0);
	gataa: in std_logic;
	Output: out std_logic_vector(6 downto 0));
end component;

component CadereF2 is
	port(CLK, Reset: in std_logic; 
	R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12: in std_logic_vector(6 downto 0);
	gataa: in std_logic;
	Output: out std_logic_vector(6 downto 0));
end component; 

component CadereF3 is
	port(CLK, Reset: in std_logic;
	R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12: in std_logic_vector(6 downto 0);
	gataa: in std_logic;
	Output: out std_logic_vector(6 downto 0));
end component;

component CadereF4 is
	port(CLK, Reset: in std_logic;
	R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12: in std_logic_vector(6 downto 0);
	gataa: in std_logic;
	Output: out std_logic_vector(6 downto 0));
end component; 

begin 
	
	C1: CadereF1 port map(CLK, Reset, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, gataa, F1);
	C22: CadereF2 port map(CLK, Reset, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, gataa, F2);
	C32: CadereF3 port map(CLK, Reset, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, gataa, F3);
	C42: CadereF4 port map(CLK, Reset, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, gataa, F4);
end Cadere;