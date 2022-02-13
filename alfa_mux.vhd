--this is the mux that decides the alfa from the scheme. Alfa will have an important role later on

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 

entity muxaa is
	port(CLK, RST: in std_logic; 
	co: in std_logic_vector;
	alfaa: out std_logic);
end muxaa;

architecture ar of muxaa is

component big_mux is
	port(SEL: in std_logic_vector(3 downto 0);
	alfa: out std_logic);
end component;	   

component up_count is
	port(CLK, RST: in STD_LOGIC;
	val_max: in std_logic_vector(3 downto 0);
	OUTPUT: out std_logic_vector(3 downto 0);
	C_EN: out STD_LOGIC);
end component;

signal inp: std_logic_vector(3 downto 0); 
begin
	M1: up_count port map(CLK, RST, co, inp);
	M2: big_mux port map(inp, alfaa);
end ar;