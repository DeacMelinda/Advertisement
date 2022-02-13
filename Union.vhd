library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Union is
	port(CLK, Reset, C1, C2, C3, C4: in std_logic;	 
	F1: out std_logic_vector(6 downto 0);
	F2: out std_logic_vector(6 downto 0);
	F3: out std_logic_vector(6 downto 0);
	F4: out std_logic_vector(6 downto 0));
end Union;

architecture Union of Union is

component Cadere is
	port(CLK, Reset: in std_logic; 
	R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12: in std_logic_vector(6 downto 0);
	gataa: in std_logic;
	F1: out std_logic_vector(6 downto 0);
	F2: out std_logic_vector(6 downto 0);
	F3: out std_logic_vector(6 downto 0);
	F4: out std_logic_vector(6 downto 0));
end component;

component palpaire is
	port(CLK, Reset: in std_logic;
	R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12: in std_logic_vector(6 downto 0);
	gataa: in std_logic;
	F1: out std_logic_vector(6 downto 0);
	F2: out std_logic_vector(6 downto 0);
	F3: out std_logic_vector(6 downto 0);
	F4: out std_logic_vector(6 downto 0));
end component;

component LetterByLetter is
	port(CLK, Reset: in std_logic;
	R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12: in std_logic_vector(6 downto 0);
	gataa: in std_logic;
	F1: out std_logic_vector(6 downto 0);
	F2: out std_logic_vector(6 downto 0);
	F3: out std_logic_vector(6 downto 0);
	F4: out std_logic_vector(6 downto 0));
end component;

component Curgere is
	port(CLK, Reset: in std_logic;	
	R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12: in std_logic_vector(6 downto 0);
	gataa: in std_logic;
	F1: out std_logic_vector(6 downto 0);
	F2: out std_logic_vector(6 downto 0);
	F3: out std_logic_vector(6 downto 0);
	F4: out std_logic_vector(6 downto 0));
end component; 


component reg0 is
	port(CLK, Reset: in std_logic;
	R0: inout std_logic_vector(6 downto 0);
	en: out std_logic);
end component;

component reg1 is
	port(CLK, Reset: in std_logic;
	R1: inout std_logic_vector(6 downto 0));
end component;

component reg2 is
	port(CLK, Reset: in std_logic;
	R2: inout std_logic_vector(6 downto 0));
end component;

component reg3 is
	port(CLK, Reset: in std_logic;
	R3: inout std_logic_vector(6 downto 0));
end component;

component reg4 is
	port(CLK, Reset: in std_logic;
	R4: inout std_logic_vector(6 downto 0));
end component;

component reg5 is
	port(CLK, Reset: in std_logic;
	R5: inout std_logic_vector(6 downto 0));
end component;

component reg6 is
	port(CLK, Reset: in std_logic;
	R6: inout std_logic_vector(6 downto 0));
end component;

component reg7 is
	port(CLK, Reset: in std_logic;
	R7: inout std_logic_vector(6 downto 0));
end component;

component reg8 is
	port(CLK, Reset: in std_logic;
	R8: inout std_logic_vector(6 downto 0));
end component;

component reg9 is
	port(CLK, Reset: in std_logic;
	R9: inout std_logic_vector(6 downto 0));
end component;

component reg10 is
	port(CLK, Reset: in std_logic;
	R10: inout std_logic_vector(6 downto 0));
end component;

component reg11 is
	port(CLK, Reset: in std_logic;
	R11: inout std_logic_vector(6 downto 0));
end component;

component reg12 is
	port(CLK, Reset: in std_logic;
	R12: inout std_logic_vector(6 downto 0));
end component; 

component mux16i is
	port(SEL: in std_logic_vector(3 downto 0);
	CLK: in std_logic;
	I: in std_logic_vector(0 to 15);
	F: out std_logic;
	en: in std_logic);
end component;

signal Fa1: std_logic_vector(6 downto 0); 
signal Fa2: std_logic_vector(6 downto 0); 
signal Fa3: std_logic_vector(6 downto 0); 
signal Fa4: std_logic_vector(6 downto 0); 
signal Fb1: std_logic_vector(6 downto 0); 
signal Fb2: std_logic_vector(6 downto 0); 
signal Fb3: std_logic_vector(6 downto 0); 
signal Fb4: std_logic_vector(6 downto 0); 
signal Fc1: std_logic_vector(6 downto 0); 
signal Fc2: std_logic_vector(6 downto 0); 
signal Fc3: std_logic_vector(6 downto 0); 
signal Fc4: std_logic_vector(6 downto 0); 
signal Fd1: std_logic_vector(6 downto 0); 
signal Fd2: std_logic_vector(6 downto 0); 
signal Fd3: std_logic_vector(6 downto 0); 
signal Fd4: std_logic_vector(6 downto 0); 	

signal R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12: std_logic_vector(6 downto 0);	
signal gata: std_logic;
signal gataa: std_logic; 
signal sel: std_logic_vector(3 downto 0);
signal I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, I16, I17, I18, I19, I20, I21, I22, I23, I24, I25, I26, I27, I28: std_logic_vector(0 to 15);

begin	
	C14: reg12 port map(CLK, Reset, R12); 
	C13: reg11 port map(CLK, Reset, R11);
		C12: reg10 port map(CLK, Reset, R10);
		C11: reg9 port map(CLK, Reset, R9);
		C10: reg8 port map(CLK, Reset, R8);
		C9: reg7 port map(CLK, Reset, R7);
		C8: reg6 port map(CLK, Reset, R6);
		C7: reg5 port map(CLK, Reset, R5);
		C6: reg4 port map(CLK, Reset, R4);
		C5: reg3 port map(CLK, Reset, R3);
		C224: reg2 port map(CLK, Reset, R2);
		C223: reg1 port map(CLK, Reset, R1);	 
		C222: reg0 port map(CLK, Reset, R0, gata);	
		C40: gataa <= gata when (gata = '1' and clk'event);
		
		C01: Cadere port map(CLK, Reset, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, gataa, Fa1, Fa2, Fa3, Fa4);		   
		
		C22: Palpaire port map(CLK, Reset, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, gataa, Fb1, Fb2, Fb3, Fb4);	
   
		C32: LetterByLetter port map(CLK, Reset, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, gataa, Fc1, Fc2, Fc3, Fc4); 

		C42: Curgere port map(CLK, Reset, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, gataa, Fd1, Fd2, Fd3, Fd4);

		
		
	    sel(0) <= C1;				
		sel(1) <= C2;					
		sel(2) <= C3; 						
		sel(3) <= C4;							
		
		I1(1) <= Fa1(0);
		I1(2) <= Fb1(0);
		I1(0) <= '0';
		I1(4) <= Fc1(0);
		I1(3) <= '0';	
		I1(5) <= '0';
		I1(6) <= '0';
		I1(8) <= Fd1(0);
		I1(7) <= '0';
		I1(9) <= '0';
		I1(10) <= '0';
		I1(11) <= '0';
		I1(12) <= '0';
		I1(13) <= '0';
		I1(14) <= '0';
		I1(15) <= '0';
		
		C09: mux16i port map(sel, CLK, I1, F1(0), gataa);  
		
		I2(1) <= Fa1(1);
		I2(2) <= Fb1(1);
		I2(0) <= '0';
		I2(4) <= Fc1(1);
		I2(3) <= '0';	
		I2(5) <= '0';
		I2(6) <= '0';
		I2(8) <= Fd1(1);
		I2(7) <= '0';
		I2(9) <= '0';
		I2(10) <= '0';
		I2(11) <= '0';
		I2(12) <= '0';
		I2(13) <= '0';
		I2(14) <= '0';
		I2(15) <= '0';
		
		C19: mux16i port map(sel, CLK, I2, F1(1), gataa);  
		
		I3(1) <= Fa1(2);
		I3(2) <= Fb1(2);
		I3(0) <= '0';
		I3(4) <= Fc1(2);
		I3(3) <= '0';	
		I3(5) <= '0';
		I3(6) <= '0';
		I3(8) <= Fd1(2);
		I3(7) <= '0';
		I3(9) <= '0';
		I3(10) <= '0';
		I3(11) <= '0';
		I3(12) <= '0';
		I3(13) <= '0';
		I3(14) <= '0';
		I3(15) <= '0';
		
		C39: mux16i port map(sel, CLK, I3, F1(2), gataa);
		
		I4(1) <= Fa1(3);
		I4(2) <= Fb1(3);
		I4(0) <= '0';
		I4(4) <= Fc1(3);
		I4(3) <= '0';	
		I4(5) <= '0';
		I4(6) <= '0';
		I4(8) <= Fd1(3);
		I4(7) <= '0';
		I4(9) <= '0';
		I4(10) <= '0';
		I4(11) <= '0';
		I4(12) <= '0';
		I4(13) <= '0';
		I4(14) <= '0';
		I4(15) <= '0';
		
		C49: mux16i port map(sel, CLK, I4, F1(3), gataa);
		
		I5(1) <= Fa1(4);
		I5(2) <= Fb1(4);
		I5(0) <= '0';
		I5(4) <= Fc1(4);
		I5(3) <= '0';	
		I5(5) <= '0';
		I5(6) <= '0';
		I5(8) <= Fd1(4);
		I5(7) <= '0';
		I5(9) <= '0';
		I5(10) <= '0';
		I5(11) <= '0';
		I5(12) <= '0';
		I5(13) <= '0';
		I5(14) <= '0';
		I5(15) <= '0';
		
		C59: mux16i port map(sel, CLK, I5, F1(4), gataa);
		
		I6(1) <= Fa1(5);
		I6(2) <= Fb1(5);
		I6(0) <= '0';
		I6(4) <= Fc1(5);
		I6(3) <= '0';	
		I6(5) <= '0';
		I6(6) <= '0';
		I6(8) <= Fd1(5);
		I6(7) <= '0';
		I6(9) <= '0';
		I6(10) <= '0';
		I6(11) <= '0';
		I6(12) <= '0';
		I6(13) <= '0';
		I6(14) <= '0';
		I6(15) <= '0';
		
		C69: mux16i port map(sel, CLK, I6, F1(5), gataa);
		
		I7(1) <= Fa1(6);
		I7(2) <= Fb1(6);
		I7(0) <= '0';
		I7(4) <= Fc1(6);
		I7(3) <= '0';	
		I7(5) <= '0';
		I7(6) <= '0';
		I7(8) <= Fd1(6);
		I7(7) <= '0';
		I7(9) <= '0';
		I7(10) <= '0';
		I7(11) <= '0';
		I7(12) <= '0';
		I7(13) <= '0';
		I7(14) <= '0';
		I7(15) <= '0';
		
		C79: mux16i port map(sel, CLK, I7, F1(6), gataa);  
		
		I8(1) <= Fa2(0);
		I8(2) <= Fb2(0);
		I8(0) <= '0';
		I8(4) <= Fc2(0);
		I8(3) <= '0';	
		I8(5) <= '0';
		I8(6) <= '0';
		I8(8) <= Fd2(0);
		I8(7) <= '0';
		I8(9) <= '0';
		I8(10) <= '0';
		I8(11) <= '0';
		I8(12) <= '0';
		I8(13) <= '0';
		I8(14) <= '0';
		I8(15) <= '0';
		
		C019: mux16i port map(sel, CLK, I8, F2(0), gataa);  
		
		I9(1) <= Fa2(1);
		I9(2) <= Fb2(1);
		I9(0) <= '0';
		I9(4) <= Fc2(1);
		I9(3) <= '0';	
		I9(5) <= '0';
		I9(6) <= '0';
		I9(8) <= Fd2(1);
		I9(7) <= '0';
		I9(9) <= '0';
		I9(10) <= '0';
		I9(11) <= '0';
		I9(12) <= '0';
		I9(13) <= '0';
		I9(14) <= '0';
		I9(15) <= '0';
		
		C119: mux16i port map(sel, CLK, I9, F2(1), gataa);  
		
		I10(1) <= Fa2(2);
		I10(2) <= Fb2(2);
		I10(0) <= '0';
		I10(4) <= Fc2(2);
		I10(3) <= '0';	
		I10(5) <= '0';
		I10(6) <= '0';
		I10(8) <= Fd2(2);
		I10(7) <= '0';
		I10(9) <= '0';
		I10(10) <= '0';
		I10(11) <= '0';
		I10(12) <= '0';
		I10(13) <= '0';
		I10(14) <= '0';
		I10(15) <= '0';
		
		C319: mux16i port map(sel, CLK, I10, F2(2), gataa);
		
		I11(1) <= Fa2(3);
		I11(2) <= Fb2(3);
		I11(0) <= '0';
		I11(4) <= Fc2(3);
		I11(3) <= '0';	
		I11(5) <= '0';
		I11(6) <= '0';
		I11(8) <= Fd2(3);
		I11(7) <= '0';
		I11(9) <= '0';
		I11(10) <= '0';
		I11(11) <= '0';
		I11(12) <= '0';
		I11(13) <= '0';
		I11(14) <= '0';
		I11(15) <= '0';
		
		C419: mux16i port map(sel, CLK, I11, F2(3), gataa);
		
		I12(1) <= Fa2(4);
		I12(2) <= Fb2(4);
		I12(0) <= '0';
		I12(4) <= Fc2(4);
		I12(3) <= '0';	
		I12(5) <= '0';
		I12(6) <= '0';
		I12(8) <= Fd2(4);
		I12(7) <= '0';
		I12(9) <= '0';
		I12(10) <= '0';
		I12(11) <= '0';
		I12(12) <= '0';
		I12(13) <= '0';
		I12(14) <= '0';
		I12(15) <= '0';
		
		C519: mux16i port map(sel, CLK, I12, F2(4), gataa);
		
		I13(1) <= Fa2(5);
		I13(2) <= Fb2(5);
		I13(0) <= '0';
		I13(4) <= Fc2(5);
		I13(3) <= '0';	
		I13(5) <= '0';
		I13(6) <= '0';
		I13(8) <= Fd2(5);
		I13(7) <= '0';
		I13(9) <= '0';
		I13(10) <= '0';
		I13(11) <= '0';
		I13(12) <= '0';
		I13(13) <= '0';
		I13(14) <= '0';
		I13(15) <= '0';
		
		C619: mux16i port map(sel, CLK, I13, F2(5), gataa);
		
		I14(1) <= Fa2(6);
		I14(2) <= Fb2(6);
		I14(0) <= '0';
		I14(4) <= Fc2(6);
		I14(3) <= '0';	
		I14(5) <= '0';
		I14(6) <= '0';
		I14(8) <= Fd2(6);
		I14(7) <= '0';
		I14(9) <= '0';
		I14(10) <= '0';
		I14(11) <= '0';
		I14(12) <= '0';
		I14(13) <= '0';
		I14(14) <= '0';
		I14(15) <= '0';
		
		C719: mux16i port map(sel, CLK, I14, F2(6), gataa); 
		
		I15(1) <= Fa3(0);
		I15(2) <= Fb3(0);
		I15(0) <= '0';
		I15(4) <= Fc3(0);
		I15(3) <= '0';	
		I15(5) <= '0';
		I15(6) <= '0';
		I15(8) <= Fd3(0);
		I15(7) <= '0';
		I15(9) <= '0';
		I15(10) <= '0';
		I15(11) <= '0';
		I15(12) <= '0';
		I15(13) <= '0';
		I15(14) <= '0';
		I15(15) <= '0';
		
		C0119: mux16i port map(sel, CLK, I15, F3(0), gataa);  
		
		I16(1) <= Fa3(1);
		I16(2) <= Fb3(1);
		I16(0) <= '0';
		I16(4) <= Fc3(1);
		I16(3) <= '0';	
		I16(5) <= '0';
		I16(6) <= '0';
		I16(8) <= Fd3(1);
		I16(7) <= '0';
		I16(9) <= '0';
		I16(10) <= '0';
		I16(11) <= '0';
		I16(12) <= '0';
		I16(13) <= '0';
		I16(14) <= '0';
		I16(15) <= '0';
		
		C1119: mux16i port map(sel, CLK, I16, F3(1), gataa);  
		
		I17(1) <= Fa3(2);
		I17(2) <= Fb3(2);
		I17(0) <= '0';
		I17(4) <= Fc3(2);
		I17(3) <= '0';	
		I17(5) <= '0';
		I17(6) <= '0';
		I17(8) <= Fd3(2);
		I17(7) <= '0';
		I17(9) <= '0';
		I17(10) <= '0';
		I17(11) <= '0';
		I17(12) <= '0';
		I17(13) <= '0';
		I17(14) <= '0';
		I17(15) <= '0';
		
		C3119: mux16i port map(sel, CLK, I17, F3(2), gataa);
		
		I18(1) <= Fa3(3);
		I18(2) <= Fb3(3);
		I18(0) <= '0';
		I18(4) <= Fc3(3);
		I18(3) <= '0';	
		I18(5) <= '0';
		I18(6) <= '0';
		I18(8) <= Fd3(3);
		I18(7) <= '0';
		I18(9) <= '0';
		I18(10) <= '0';
		I18(11) <= '0';
		I18(12) <= '0';
		I18(13) <= '0';
		I18(14) <= '0';
		I18(15) <= '0';
		  
		C4119: mux16i port map(sel, CLK, I18, F3(3), gataa);
		
		I19(1) <= Fa3(4);
		I19(2) <= Fb3(4);
		I19(0) <= '0';
		I19(4) <= Fc3(4);
		I19(3) <= '0';	
		I19(5) <= '0';
		I19(6) <= '0';
		I19(8) <= Fd3(4);
		I19(7) <= '0';
		I19(9) <= '0';
		I19(10) <= '0';
		I19(11) <= '0';
		I19(12) <= '0';
		I19(13) <= '0';
		I19(14) <= '0';
		I19(15) <= '0';
		
		C5119: mux16i port map(sel, CLK, I19, F3(4), gataa);
		
		I20(1) <= Fa3(5);
		I20(2) <= Fb3(5);
		I20(0) <= '0';
		I20(4) <= Fc3(5);
		I20(3) <= '0';	
		I20(5) <= '0';
		I20(6) <= '0';
		I20(8) <= Fd3(5);
		I20(7) <= '0';
		I20(9) <= '0';
		I20(10) <= '0';
		I20(11) <= '0';
		I20(12) <= '0';
		I20(13) <= '0';
		I20(14) <= '0';
		I20(15) <= '0';
		
		C6119: mux16i port map(sel, CLK, I20, F3(5), gataa);
		
		I21(1) <= Fa3(6);
		I21(2) <= Fb3(6);
		I21(0) <= '0';
		I21(4) <= Fc3(6);
		I21(3) <= '0';	
		I21(5) <= '0';
		I21(6) <= '0';
		I21(8) <= Fd3(6);
		I21(7) <= '0';
		I21(9) <= '0';
		I21(10) <= '0';
		I21(11) <= '0';
		I21(12) <= '0';
		I21(13) <= '0';
		I21(14) <= '0';
		I21(15) <= '0';
		
		C7119: mux16i port map(sel, CLK, I21, F3(6), gataa);   
		
		I22(1) <= Fa4(0);
		I22(2) <= Fb4(0);
		I22(0) <= '0';
		I22(4) <= Fc4(0);
		I22(3) <= '0';	
		I22(5) <= '0';
		I22(6) <= '0';
		I22(8) <= Fd4(0);
		I22(7) <= '0';
		I22(9) <= '0';
		I22(10) <= '0';
		I22(11) <= '0';
		I22(12) <= '0';
		I22(13) <= '0';
		I22(14) <= '0';
		I22(15) <= '0';
		
		C01119: mux16i port map(sel, CLK, I22, F4(0), gataa);  
		
		I23(1) <= Fa4(1);
		I23(2) <= Fb4(1);
		I23(0) <= '0';
		I23(4) <= Fc4(1);
		I23(3) <= '0';	
		I23(5) <= '0';
		I23(6) <= '0';
		I23(8) <= Fd4(1);
		I23(7) <= '0';
		I23(9) <= '0';
		I23(10) <= '0';
		I23(11) <= '0';
		I23(12) <= '0';
		I23(13) <= '0';
		I23(14) <= '0';
		I23(15) <= '0';
		
		C11119: mux16i port map(sel, CLK, I23, F4(1), gataa);  
		
		I24(1) <= Fa4(2);
		I24(2) <= Fb4(2);
		I24(0) <= '0';
		I24(4) <= Fc4(2);
		I24(3) <= '0';	
		I24(5) <= '0';
		I24(6) <= '0';
		I24(8) <= Fd4(2);
		I24(7) <= '0';
		I24(9) <= '0';
		I24(10) <= '0';
		I24(11) <= '0';
		I24(12) <= '0';
		I24(13) <= '0';
		I24(14) <= '0';
		I24(15) <= '0';
		
		C31119: mux16i port map(sel, CLK, I24, F4(2), gataa);
		
		I25(1) <= Fa4(3);
		I25(2) <= Fb4(3);
		I25(0) <= '0';
		I25(4) <= Fc4(3);
		I25(3) <= '0';	
		I25(5) <= '0';
		I25(6) <= '0';
		I25(8) <= Fd4(3);
		I25(7) <= '0';
		I25(9) <= '0';
		I25(10) <= '0';
		I25(11) <= '0';
		I25(12) <= '0';
		I25(13) <= '0';
		I25(14) <= '0';
		I25(15) <= '0';
		  
		C41119: mux16i port map(sel, CLK, I25, F4(3), gataa);
		
		I26(1) <= Fa4(4);
		I26(2) <= Fb4(4);
		I26(0) <= '0';
		I26(4) <= Fc4(4);
		I26(3) <= '0';	
		I26(5) <= '0';
		I26(6) <= '0';
		I26(8) <= Fd4(4);
		I26(7) <= '0';
		I26(9) <= '0';
		I26(10) <= '0';
		I26(11) <= '0';
		I26(12) <= '0';
		I26(13) <= '0';
		I26(14) <= '0';
		I26(15) <= '0';
		
		C51119: mux16i port map(sel, CLK, I26, F4(4), gataa);
		
		I27(1) <= Fa4(5);
		I27(2) <= Fb4(5);
		I27(0) <= '0';
		I27(4) <= Fc4(5);
		I27(3) <= '0';	
		I27(5) <= '0';
		I27(6) <= '0';
		I27(8) <= Fd4(5);
		I27(7) <= '0';
		I27(9) <= '0';
		I27(10) <= '0';
		I27(11) <= '0';
		I27(12) <= '0';
		I27(13) <= '0';
		I27(14) <= '0';
		I27(15) <= '0';
		
		C61119: mux16i port map(sel, CLK, I27, F4(5), gataa);
		
		I28(1) <= Fa4(6);
		I28(2) <= Fb4(6);
		I28(0) <= '0';
		I28(4) <= Fc4(6);
		I28(3) <= '0';	
		I28(5) <= '0';
		I28(6) <= '0';
		I28(8) <= Fd4(6);
		I28(7) <= '0';
		I28(9) <= '0';
		I28(10) <= '0';
		I28(11) <= '0';
		I28(12) <= '0';
		I28(13) <= '0';
		I28(14) <= '0';
		I28(15) <= '0';
		
		C71119: mux16i port map(sel, CLK, I28, F4(6), gataa); 
end Union;	

--Reset = 1 run, Reset = 0 run, Reset = 1 run, Reset = 0 run run run run run run run run run run run run run si abia acum incepe sa afiseze.