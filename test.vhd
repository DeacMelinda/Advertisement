library ieee;
use ieee.std_logic_1164.all;

entity test	is
end test;

architecture test of test is

component Union is
	port(CLK, Reset, C1, C2, C3, C4: in std_logic;	 
	F1: out std_logic_vector(6 downto 0);
	F2: out std_logic_vector(6 downto 0);
	F3: out std_logic_vector(6 downto 0);
	F4: out std_logic_vector(6 downto 0));
end component;

signal END_SIM: BOOLEAN := FALSE;	 
signal CLK, Reset, C1, C2, C3, C4: std_logic;	 
signal F1, F2, F3, F4: std_logic_vector(6 downto 0);
constant PERIOADA_CLK: TIME := 100 ns;

begin
	mapping: Union port map(CLK, Reset, C1, C2, C3, C4, F1, F2, F3, F4);
	
	clock: process
	begin
		if not end_sim then 
			CLK <= '1';
			wait for PERIOADA_CLK / 2;
			CLK <= '0';
			wait for PERIOADA_CLK / 2;
		else wait;
		end if;
	end process clock;
	
	Reset <= '1', '0' after 100 ns, '1' after 200 ns, '0' after 300 ns;
	C1 <= '1' after 1250 ns, '0' after 2800 ns;
	C2 <= '1' after 2800 ns, '0' after 3600 ns;
	C3 <= '1' after 3600 ns, '0' after 5800 ns;
	C4 <= '1' after 5800 ns, '0' after 8800 ns;	
	end_sim <= TRUE after 8800 ns;

end test;