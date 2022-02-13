--a mux with 2 inputs

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 

entity mux2i is
	port(A, B, S: in std_logic;
	Q: out std_logic);
end mux2i;

architecture arh of mux2i is
begin  
	process(S, A, B)
	begin
		if S = '0' then Q <= A;
		else
			Q <= B;
		end if;
	end process;
end arh;