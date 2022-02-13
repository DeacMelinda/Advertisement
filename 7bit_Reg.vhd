library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 

entity BigReg is	 
	port(CLK, Reset: in std_logic;	
	co: in std_logic_vector(3 downto 0);
	input: in std_logic_vector(6 downto 0);
	Qout: inout std_logic_vector(6 downto 0));
end BigReg;

architecture BigReg of BigReg is

component muxaa is
	port(CLK, RST: in std_logic; 
	co: in std_logic_vector(3 downto 0);
	alfaa: out std_logic);
end component;

component reg is
	port(CLK, Alfa, Lett: in std_logic;
	Q: inout std_logic);
end component;	 

signal selection: std_logic;				

begin											  
	B1: muxaa port map(CLK, Reset, co, selection); 
	B3: reg port map(CLK, selection, input(0), Qout(0));
	B4: reg port map(CLK, selection, input(1), Qout(1));
	B5: reg port map(CLK, selection, input(2), Qout(2));
	B6: reg port map(CLK, selection, input(3), Qout(3));
	B7: reg port map(CLK, selection, input(4), Qout(4));
	B8: reg port map(CLK, selection, input(5), Qout(5));
	B9: reg port map(CLK, selection, input(6), Qout(6));  
end BigReg;

--Asta ar fi structura primului registru. Celelalte vor fi facute altfel, iar apoi se va face un fisier mare care sa le contina pe toate. Problema la asta e ca nu merge decat daca se
--ruleaza o data cu Reset pe 0, apoi Reset=1, apoi Reset=0 pe tot restul rularii. Nu prea stiu de ce, darasa merge.