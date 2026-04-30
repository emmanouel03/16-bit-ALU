library ieee;
use ieee.std_logic_1164.all;

entity myAND4 is port(
	A, B, C, D: in std_logic;
	Q: out std_logic);
end myAND4;

architecture behavioralAND of myAND4 is begin
	Q <= A AND B AND C AND D;
end behavioralAND;