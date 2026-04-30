library ieee;
use ieee.std_logic_1164.all;

entity myFullAdder is port(
	A, B, Cin : in std_logic;
	sum, Cout : out std_logic);
end myFullAdder;

architecture structuralfullAdder of myFullAdder is

	component myAND is
		port(
			A: in std_logic;
			B: in std_logic;
			Q: out std_logic);
	end component;

	component myOR is
		port(
			A: in std_logic;
			B: in std_logic;
			Q: out std_logic);
	end component;

	component myXOR3 is
		port(
			A, B, C: in std_logic;
			Q: out std_logic);
	end component;

	component myOR3 is
		port(
			A, B, C: in std_logic;
			Q: out std_logic);
	end component;

signal s1, s2, s3: std_logic;

begin
	
	U1: myXOR3 port map (A, B, Cin, sum);
	U2: myAND port map (A, B, s1);
	U3: myAND port map (A, Cin, s2);
	U4: myAND port map (B, Cin, s3);
	U5: myOR3 port map (s1, s2, s3, Cout);

end structuralfullAdder;