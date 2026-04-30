library ieee;
use ieee.std_logic_1164.all;

entity myMUX2to1 is port(
	A, B, S:  in std_logic;
	Q: out std_logic);
end myMUX2to1;

architecture structMUX of myMUX2to1 is 
	component myAND is
		port (A, B: in std_logic;
				Q: out std_logic);
	end component;
	
	component myOR is
		port (A, B: in std_logic;
				Q: out std_logic);
	end component;
	
	component myNOT is
		port (A: in std_logic;
				Q: out std_logic);
	end component;
	
	signal notS: std_logic;
	signal i1: std_logic;
	signal i2: std_logic;

begin
		
	U0: myNOT port map(S, notS);
	U1: myAND port map(A, notS, i1);
	U2: myAND port map(B, S, i2);
	U3: myOR port map(i1, i2, Q);

end structMUX;