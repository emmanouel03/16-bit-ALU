library ieee;
use ieee.std_logic_1164.all;

entity myOR is port(
	A: in std_logic;
	B: in std_logic;
	Q: out std_logic);
end myOR;

architecture behavioralOR of myOR is begin
	Q <= A OR B;
end behavioralOR;