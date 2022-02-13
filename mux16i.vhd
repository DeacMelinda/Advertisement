library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 

entity mux16i is
	port(SEL: in std_logic_vector(3 downto 0);
	CLK: in std_logic;
	I: in std_logic_vector(0 to 15);
	F: out std_logic;
	en: in std_logic);
end mux16i;

architecture mux16i of mux16i is  

signal auxi: std_logic;

begin	  
	Proc: process(CLK, I, SEL, en)
	begin  
	if en = '1' then
		case SEL is
			when "0000" => 	auxi <= I(0);
			when "0001" => auxi <= I(1);
			when "0010" => auxi <= I(2); 
			when "0011" => 	auxi <= I(3);
			when "0100" => auxi <= I(4);
			when "0101" => auxi <= I(5); 
			when "0110" => 	auxi <= I(6);
			when "0111" => auxi <= I(7);
			when "1000" => auxi <= I(8); 
			when "1001" => 	auxi <= I(9);
			when "1010" => auxi <= I(10);
			when "1011" => auxi <= I(11); 
			when "1100" => 	auxi <= I(12);
			when "1101" => auxi <= I(13);
			when "1110" => auxi <= I(14); 
			when "1111" => auxi <= I(15);
			when others => auxi <= I(15);
		end case;	
	end if;
end process Proc;
F <= auxi;
end mux16i;		   

--the structure of a mux 16:1 with all inputs on one bit.