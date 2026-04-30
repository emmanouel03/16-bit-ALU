library ieee;
use ieee.std_logic_1164.all;

entity myXOR is port(
	A: in std_logic;
	B: in std_logic;
	Q: out std_logic);
end myXOR;

architecture structuralXOR of myXOR is

component myNOT is port(
	A: in std_logic;
	Q: out std_logic);
end component;

component myAND is port(
	A: in std_logic;
	B: in std_logic;
	Q: out std_logic);
end component;

component myOR is port(
	A: in std_logic;
	B: in std_logic;
	Q: out std_logic);
end component;

signal C: std_logic;
signal notA: std_logic;
signal notB: std_logic;
signal D: std_logic;
signal notC: std_logic;
signal notD: std_logic;
signal E: std_logic;


begin

	U1: myNOT port map (A, notA);
	U2: myNOT port map (B, notB);
	U3: myAND port map (notA, B, C);
	U4: myAND port map (A, notB, D);
	U5: myNOT port map (C, notC);
	U6: myNOT port map (D, notD);
	U7: myAND port map (notC, notD, E);
	U8: myNOT port map (E, Q);

end structuralXOR;