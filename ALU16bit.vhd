library ieee;
use ieee.std_logic_1164.all;

entity ALU16bit is
	port(in1, in2: in std_logic_vector(15 downto 0);
			op: in std_logic_vector(2 downto 0);
			output: out std_logic_vector(15 downto 0);
			overflow: out std_logic);
end ALU16bit;

architecture structALU16bit of ALU16bit is
	component ALU1bit
		port(A, B: in std_logic;
				Cin: in std_logic;
				op: in std_logic_vector(2 downto 0);
				GEQ: in std_logic;
				Cout, res: out std_logic);
	end component;
	
	signal carry: std_logic_vector(16 downto 0);
	
begin
	
	carry(0) <= '1' when op = "001" else '0';
	
	U0: ALU1bit port map(
			A => in1(0),
			B => in2(0),
			Cin => carry(0),
			op => op,
			GEQ => not in1(15), 
			Cout => carry(1),       
			res => output(0)
	);
	 
	 ALUloop: for i in 1 to 15 generate
			Ui: ALU1bit port map(
					A => in1(i),
					B => in2(i),
					Cin => carry(i),       
					op => op,
					GEQ  => '0',            
					Cout => carry(i+1),     
					res => output(i)
			);
    end generate ALUloop;
	 
	 overflow <= carry(16);
	 
end structALU16bit;