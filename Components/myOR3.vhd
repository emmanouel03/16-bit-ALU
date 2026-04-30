library ieee;
use ieee.std_logic_1164.all;

entity myOR3 is port(
	A, B, C: in std_logic;
	Q: out std_logic);
end myOR3;

architecture behavioralOR of myOR3 is begin
	Q <= A OR B OR C;
end behavioralOR;