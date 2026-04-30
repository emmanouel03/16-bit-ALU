library ieee;
use ieee.std_logic_1164.all;

entity myNOR is port(
	A: in std_logic;
	B: in std_logic;
	Q: out std_logic);
end myNOR;

architecture structuralNOR of myNOR is

component myNOT is port(
	A: in std_logic;
	Q: out std_logic);
end component;

component myOR is port(
	A: in std_logic;
	B: in std_logic;
	Q: out std_logic);
end component;

signal C: std_logic;

begin
	U1: myOR port map (A, B, C);
	U2: myNOT port map (C, Q);
end structuralNOR;