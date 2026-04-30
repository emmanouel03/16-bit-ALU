library ieee;
use ieee.std_logic_1164.all;

entity myNOT is port(
	A: in std_logic;
	Q: out std_logic);
end myNOT;

architecture behavioralNOT of myNOT is begin
	Q <= NOT A;
end behavioralNOT;