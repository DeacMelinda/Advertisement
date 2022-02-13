library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity PalpaireF1 is
	port(CLK, Reset: in std_logic; 
	R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12: in std_logic_vector(6 downto 0);
	gataa: in std_logic;
	Output: out std_logic_vector(6 downto 0));
end PalpaireF1;

architecture PalpaireF1 of PalpaireF1 is


component CadereCounter is
	port(CLK, Reset: in std_logic; 
	gata: in std_logic;
	val_max: in std_logic_vector(3 downto 0);  
	Q: out std_logic_vector(3 downto 0);
	en: out std_logic);
end component;

component mux16i is
	port(SEL: in std_logic_vector(3 downto 0);
	CLK: in std_logic;
	I: in std_logic_vector(0 to 15);
	F: out std_logic;
	en: in std_logic);
end component;

signal s: std_logic_vector(3 downto 0);		 
constant val: std_logic_vector(3 downto 0):= "0011"; 

signal a: std_logic_vector(0 to 15); 
signal en: std_logic;  
signal b: std_logic_vector(0 to 15);
signal c: std_logic_vector(0 to 15);
signal d: std_logic_vector(0 to 15);
signal e: std_logic_vector(0 to 15); 
signal f: std_logic_vector(0 to 15);
signal g: std_logic_vector(0 to 15);


begin
		
		C1: CadereCounter port map(CLK, Reset, gataa, val, s, en); 	
		
		C46: for i in 4 to 15 generate
			C47: a(i) <= '0';
			C48: b(i) <= '0';
			C49: c(i) <= '0';
			C50: d(i) <= '0';
			C51: e(i) <= '0';
			C52: f(i) <= '0';
			C53: g(i) <= '0';
		end generate C46;
		
		C18: a(0) <= R11(0) when en = '1';
		C19: a(1) <= R7(0) when en='1';
		C20: a(2) <= R3(0) when en='1';
		C21: a(3) <= R12(0) when en='1';  
		C54: mux16i port map(s, CLK, a, Output(0), en);
		
		C22: b(0) <= R11(1) when en = '1';
		C23: b(1) <= R7(1) when en='1';
		C24: b(2) <= R3(1) when en='1';
		C25: b(3) <= R12(1) when en='1'; 
		C55: mux16i port map(s, CLK, b, Output(1), en);
		
		C26: c(0) <= R11(2) when en = '1';
		C27: c(1) <= R7(2) when en='1';
		C28: c(2) <= R3(2) when en='1';
		C29: c(3) <= R12(2) when en='1'; 
		C56: mux16i port map(s, CLK, c, Output(2), en);
		
		C30: d(0) <= R11(3) when en = '1';
		C31: d(1) <= R7(3) when en='1';
		C32: d(2) <= R3(3) when en='1';
		C33: d(3) <= R12(3) when en='1'; 
		C57: mux16i port map(s, CLK, d, Output(3), en);
		
		C34: e(0) <= R11(4) when en = '1';
		C35: e(1) <= R7(4) when en='1';
		C36: e(2) <= R3(4) when en='1';
		C37: e(3) <= R12(4) when en='1'; 
		C58: mux16i port map(s, CLK, e, Output(4), en);
		
		C38: f(0) <= R11(5) when en = '1';
		C39: f(1) <= R7(5) when en='1';
		C40: f(2) <= R3(5) when en='1';
		C41: f(3) <= R12(5) when en='1';
		C59: mux16i port map(s, CLK, f, Output(5), en);
		
		C42: g(0) <= R11(6) when en = '1';
		C43: g(1) <= R7(6) when en='1';
		C44: g(2) <= R3(6) when en='1';
		C45: g(3) <= R12(6) when en='1';	  
		C60: mux16i port map(s, CLK, g, Output(6), en);
	  
end PalpaireF1;