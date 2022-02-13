--this is the mux component of the mux that gives us alfa aka alfa_mux

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;  

entity big_mux is
	port(SEL: in std_logic_vector(3 downto 0);
	alfa: out std_logic);
end big_mux;

architecture b of big_mux is 
signal a: std_logic;
begin
	process(SEL)
	begin
		if SEL > "1100" then a <= '1';
		else
			a <= '0'; 
		end if;
	end process;
	alfa <= a;
end b;
	