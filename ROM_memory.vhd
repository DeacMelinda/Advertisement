--the rom memory that contains the letters. I can edit here if I want other letters to appear on the display

library IEEE;
use IEEE.std_logic_1164.all;  
use IEEE.std_logic_unsigned.all;

entity ROM_MEMORY is
	port(INPUT: in STD_LOGIC_VECTOR(3 downto 0);
	CS_ROM: in STD_LOGIC;
	OUTPUT: out STD_LOGIC_VECTOR(6 downto 0));
end ROM_MEMORY;
   
architecture ROM_MEMORY of ROM_MEMORY is
type ROM_TYPE is array(0 to 12) of std_logic_vector(6 downto 0);
signal ROM: ROM_TYPE :=(  
0 => "0000000",		--space
1 => "0110111",		--H
2 => "1001111",		--E
3 => "0001110",		--L
4 => "0001110",		--L
5 => "0011101",		--O
6 => "0000000",		--SPACE
7 => "0001111",		--T
8 => "0110111",		--H
9 => "1001111",		--E
10 => "0000101",	--R
11 => "1001111",	--E
12 => "1101011");	--!

begin
	OUTPUT <= ROM(conv_integer(INPUT)) when CS_ROM = '1';
end ROM_MEMORY;