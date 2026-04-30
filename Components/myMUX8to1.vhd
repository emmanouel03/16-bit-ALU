library ieee;
use ieee.std_logic_1164.all;

entity myMUX8to1 is port(
	A, B, C, D, E, F, G, H, S1, S2, S3:  in std_logic;
	Q: out std_logic);
end myMUX8to1;

architecture structMUX of myMUX8to1 is 
	component myAND4 is
		port (A, B, C, D: in std_logic;
				Q: out std_logic);
	end component;
	
	component myOR8 is
		port (A, B, C, D, E, F, G, H: in std_logic;
				Q: out std_logic);
	end component;
	
	component myNOT is
		port (A: in std_logic;
				Q: out std_logic);
	end component;
	
	signal notS1, notS2, notS3: std_logic;
	signal i0, i1, i2, i3, i4, i5, i6, i7: std_logic;

begin
		
	U0: myNOT port map(S1, notS1);
	U1: myNOT port map(S2, notS2);
	U3: myNOT port map(S3, notS3);
	U4: myAND4 port map(A, notS3, notS2, notS1, i0);
	U4: myAND4 port map(B, notS3, notS2, S1, i1);
	U5: myAND4 port map(C, notS3, S2, notS1, i2);
	U6: myAND4 port map(D, notS3, S2, S1, i3);
	U7: myAND4 port map(E, S3, notS2, notS1, i4);
	U8: myAND4 port map(F, S3, notS2, S1, i5);
	U9: myAND4 port map(G, S3, S2, notS1, i6);
	U10: myAND4 port map(H, S3, S2, S1, i7);
	U11: myOR8 port map(i0, i1, i2, i3, i4, i5, i6, i7, Q);
		
end structMUX;