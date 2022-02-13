--this is the component that actually reads from the rom memory. you have to have the Reset on 1 for the first 2 presses

library IEEE;
use IEEE.std_logic_1164.all;  
use IEEE.std_logic_unsigned.all;

entity big is
	port(CLK, RST: in std_logic;
	co: in std_logic_vector (3 downto 0);
	LIT: out std_logic_vector(6 downto 0));
end big;

architecture biga of big is

component up_count is
	port(CLK, RST: in STD_LOGIC;
	val_max: in std_logic_vector(3 downto 0);
	OUTPUT: out std_logic_vector(3 downto 0);
	C_EN: out STD_LOGIC);
end component;		 

component ROM_MEMORY is
	port(INPUT: in STD_LOGIC_VECTOR(3 downto 0);
	CS_ROM: in STD_LOGIC;
	OUTPUT: out STD_LOGIC_VECTOR(6 downto 0));
end component;	 

signal inter: std_logic_vector(3 downto 0);	 
signal ine: std_logic; 

begin
	A1: up_count port map(CLK, RST, co, inter, ine);
	A2: ROM_MEMORY port map(inter, ine, LIT);  
end biga; 
