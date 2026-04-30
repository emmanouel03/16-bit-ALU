library ieee;
use ieee.std_logic_1164.all;

entity myXOR3 is port(
	A, B, C: in std_logic;
	Q: out std_logic);
end myXOR3;

architecture behavioralXOR of myXOR3 is begin
	Q <= A XOR B XOR C;
end behavioralXOR;