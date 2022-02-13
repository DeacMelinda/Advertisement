--the structure of one of a register on one bit. In another file i will make the register on 7 bits connecting it to the rom memory too

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 

entity reg is
	port(CLK, Alfa, Lett: in std_logic;
	Q: inout std_logic);
end reg;

architecture regg of reg is

component D_flip_flop is
	port(D: in std_logic;
	CLK: in std_logic;
	Q: out std_logic);
end component;		  

component mux2i is
	port(A, B, S: in std_logic;
	Q: out std_logic);
end component;	 

signal Qd: std_logic;
signal Dd: std_logic;

begin				   
	Qd <= Q;
	R1: mux2i port map(Lett, Qd, Alfa, Dd);
	R2: D_flip_flop port map(Dd, CLK, Q);
end regg;