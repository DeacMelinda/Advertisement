library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity CadereCounter is
	port(CLK, Reset: in std_logic; 	   
	gata: in std_logic;
	val_max: in std_logic_vector(3 downto 0);
	Q: out std_logic_vector(3 downto 0);
	en: out std_logic); 
end CadereCounter;
	
architecture CadereCounter of CadereCounter is 

signal e: std_logic;
signal count: std_logic_vector(3 downto 0);

begin
		process(clk, e, reset, count, val_max, gata)
		begin 	
			if (gata = '1' and gata'event) then	count <= "0000"; e <= '0';
			else   
				if (gata = '1') then
					if reset = '1' then count <= "0000";
					elsif (clk'event and clk='1') then 
						if count < val_max then	 
							if (count = "0000" and e = '0') then e <= '1'; count<="0000" ;
								else
								count <= count+1;
								end if;
							elsif count = val_max then count <= "0000";
							end if;
						end if;	
					end if;
			end if;	  
		end process;
		Q <= count;
		en <= e;	 
end CadereCounter;	

--numara 0-max_val