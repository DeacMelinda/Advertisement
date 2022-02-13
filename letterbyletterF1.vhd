library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity lblF1 is
	port(CLK, Reset: in std_logic;	  
	R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12: in std_logic_vector(6 downto 0);
	gataa: in std_logic;
	Output: out std_logic_vector(6 downto 0));
end lblF1;

architecture lblF1 of lblF1 is



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
constant val: std_logic_vector(3 downto 0):= "1110"; 

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
		
	  
			C18: a(0) <= R11(0) when en = '1';
			C19: a(1) <= R12(0) when en='1';
			C20: a(2) <= R12(0) when en='1';
			C21: a(3) <= R12(0) when en='1';
			C22: a(4) <= R7(0) when en='1';
			C23: a(5) <= R12(0)when en = '1';
			C24: a(6) <= R12(0) when en='1';
			C25: a(7) <= R12(0) when en='1';
			C26: a(8) <= R3(0) when en='1';
			C27: a(9) <= R12(0) when en='1';
			C28: a(10) <= R12(0) when en='1';
			C29: a(11) <= R12(0) when en='1';
			C30: a(12) <= R11(0) when en='1';
			C31: a(13) <= R7(0) when en='1';
			C32: a(14) <= R3(0) when en='1';
			C33: a(15) <= R12(0) when en='1';
			C15: mux16i port map(s, CLK, a , Output(0), en);   
			
			C38: b(0) <= R11(1) when en = '1';
			C39: b(1) <= R12(1) when en='1';
			C500: b(2) <= R12(1) when en='1';
			C41: b(3) <= R12(1) when en='1';
			C42: b(4) <= R7(1) when en='1';
			C43: b(5) <= R12(1)when en = '1';
			C44: b(6) <= R12(1) when en='1';
			C45: b(7) <= R12(1) when en='1';
			C46: b(8) <= R3(1) when en='1';
			C47: b(9) <= R12(1) when en='1';
			C48: b(10) <= R12(1) when en='1';
			C49: b(11) <= R12(1) when en='1';
			C50: b(12) <= R11(1) when en='1';
			C51: b(13) <= R7(1) when en='1';
			C52: b(14) <= R3(1) when en='1';
			C53: b(15) <= R12(1) when en='1';
			C55: mux16i port map(s, CLK, b , Output(1), en);  
			
			C58: c(0) <= R11(2) when en = '1';
			C59: c(1) <= R12(2) when en='1';
			C60: c(2) <= R12(2) when en='1';
			C61: c(3) <= R12(2) when en='1';
			C62: c(4) <= R7(2) when en='1';
			C63: c(5) <= R12(2)when en = '1';
			C64: c(6) <= R12(2) when en='1';
			C65: c(7) <= R12(2) when en='1';
			C66: c(8) <= R3(2) when en='1';
			C67: c(9) <= R12(2) when en='1';
			C68: c(10) <= R12(2) when en='1';
			C69: c(11) <= R12(2) when en='1';
			C70: c(12) <= R11(2) when en='1';
			C71: c(13) <= R7(2) when en='1';
			C72: c(14) <= R3(2) when en='1';
			C73: c(15) <= R12(2) when en='1';
			C75: mux16i port map(s, CLK, c , Output(2), en); 
			
			C78: d(0) <= R11(3) when en = '1';
			C79: d(1) <= R12(3) when en='1';
			C80: d(2) <= R12(3) when en='1';
			C81: d(3) <= R12(3) when en='1';
			C82: d(4) <= R7(3) when en='1';
			C83: d(5) <= R12(3)when en = '1';
			C84: d(6) <= R12(3) when en='1';
			C85: d(7) <= R12(3) when en='1';
			C86: d(8) <= R3(3) when en='1';
			C87: d(9) <= R12(3) when en='1';
			C88: d(10) <= R12(3) when en='1';
			C89: d(11) <= R12(3) when en='1';
			C90: d(12) <= R11(3) when en='1';
			C91: d(13) <= R7(3) when en='1';
			C92: d(14) <= R3(3) when en='1';
			C93: d(15) <= R12(3) when en='1';
			C95: mux16i port map(s, CLK, d , Output(3), en); 
			
			C98: e(0) <= R11(4) when en = '1';
			C99: e(1) <= R12(4) when en='1';
			C110: e(2) <= R12(4) when en='1';
			C111: e(3) <= R12(4) when en='1';
			C112: e(4) <= R7(4) when en='1';
			C113: e(5) <= R12(4)when en = '1';
			C114: e(6) <= R12(4) when en='1';
			C115: e(7) <= R12(4) when en='1';
			C116: e(8) <= R3(4) when en='1';
			C117: e(9) <= R12(4) when en='1';
			C118: e(10) <= R12(4) when en='1';
			C119: e(11) <= R12(4) when en='1';
			C120: e(12) <= R11(4) when en='1';
			C121: e(13) <= R7(4) when en='1';
			C122: e(14) <= R3(4) when en='1';
			C123: e(15) <= R12(4) when en='1';
			C125: mux16i port map(s, CLK, e , Output(4), en);
			
			C128: f(0) <= R11(5) when en = '1';
			C129: f(1) <= R12(5) when en='1';
			C130: f(2) <= R12(5) when en='1';
			C131: f(3) <= R12(5) when en='1';
			C132: f(4) <= R7(5) when en='1';
			C133: f(5) <= R12(5)when en = '1';
			C134: f(6) <= R12(5) when en='1';
			C135: f(7) <= R12(5) when en='1';
			C136: f(8) <= R3(5) when en='1';
			C137: f(9) <= R12(5) when en='1';
			C138: f(10) <= R12(5) when en='1';
			C139: f(11) <= R12(5) when en='1';
			C140: f(12) <= R11(5) when en='1';
			C141: f(13) <= R7(5) when en='1';
			C142: f(14) <= R3(5) when en='1';
			C143: f(15) <= R12(5) when en='1';
			C145: mux16i port map(s, CLK, f , Output(5), en);
			
			C148: g(0) <= R11(6) when en = '1';
			C149: g(1) <= R12(6) when en='1';
			C150: g(2) <= R12(6) when en='1';
			C151: g(3) <= R12(6) when en='1';
			C152: g(4) <= R7(6) when en='1';
			C153: g(5) <= R12(6)when en = '1';
			C154: g(6) <= R12(6) when en='1';
			C155: g(7) <= R12(6) when en='1';
			C156: g(8) <= R3(6) when en='1';
			C157: g(9) <= R12(6) when en='1';
			C158: g(10) <= R12(6) when en='1';
			C159: g(11) <= R12(6) when en='1';
			C160: g(12) <= R11(6) when en='1';
			C161: g(13) <= R7(6) when en='1';
			C162: g(14) <= R3(6) when en='1';
			C163: g(15) <= R12(6) when en='1';
			C165: mux16i port map(s, CLK, g , Output(6), en);
end lblF1;