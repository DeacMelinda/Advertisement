--the almighty counter that we use for reading and for selecting in the alfa_mux

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity up_count is
	port(CLK, RST: in STD_LOGIC;
	val_max: in std_logic_vector(3 downto 0);
	OUTPUT: out std_logic_vector(3 downto 0);
	C_EN: out STD_LOGIC);
end up_count;

architecture co of up_count is

signal count: std_logic_vector(3 downto 0);
signal en: std_logic;

begin  
	
	process(clk, en, rst, count)
	begin 
		if rst = '1' then count <= "0000";
		
		elsif (clk'event and clk='1') then 
			if (count = "1100") then en <= '0';
			else
				if count < val_max then	
					count <= count+1;
					en <= '1';		 
				else
					en <= '0';
				end if;
				
			end if;
		end if;
	end process;
	OUTPUT <= count;
	C_EN <= en;
end co;