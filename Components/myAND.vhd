library ieee;
use ieee.std_logic_1164.all;

entity myAND is port(
	A: in std_logic;
	B: in std_logic;
	Q: out std_logic);
end myAND;

architecture behavioralAND of myAND is begin
	Q <= A AND B;
end behavioralAND;