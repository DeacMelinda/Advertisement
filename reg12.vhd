library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 

entity reg12 is
	port(CLK, Reset: in std_logic;
	R12: inout std_logic_vector(6 downto 0));
end reg12;

architecture reg12 of reg12 is

begin
	R12 <= "0000000";
end reg12;

--works!!!