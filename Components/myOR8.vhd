library ieee;
use ieee.std_logic_1164.all;

entity myOR8 is port(
	A, B, C, D, E, F, G, H: in std_logic;
	Q: out std_logic);
end myOR8;

architecture behavioralOR of myOR8 is begin
	Q <= A OR B OR C OR D OR E OR F OR G OR H;
end behavioralOR;