--just a D flip-flop that we will use

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity D_flip_flop is
	port(D: in std_logic;
	CLK: in std_logic;
	Q: out std_logic);

end D_flip_flop;

architecture ar of D_flip_flop is
begin
	process(CLK)
	begin	 
		if (CLK = '1') and (CLK'EVENT) 
			then Q <= D;
		end if;
	end process;
end ar;