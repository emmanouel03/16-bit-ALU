library ieee;
use ieee.std_logic_1164.all;

entity ALU1bit is
	port(
		A, B: in std_logic;
		Cin: in std_logic;
		op: in std_logic_vector(2 downto 0);
		GEQ: in std_logic;
		Cout, res: out std_logic);
end ALU1bit;

architecture structALU1bit of ALU1bit is
	component myAND 
		port(A, B: in std_logic;
				Q: out std_logic);
	end component;
	
	component myOR 
		port(A, B: in std_logic;
				Q: out std_logic);
	end component;
	
	component myXOR 
		port(A, B: in std_logic;
				Q: out std_logic);
	end component;
	
	component myNOR
		port(A, B: in std_logic;
				Q: out std_logic);
	end component;
	
	component myNOT
		port(A: in std_logic;
				Q: out std_logic);
	end component;
	
	component myFullAdder
		port(A, B, Cin: in std_logic;
				sum, Cout: out std_logic);
	end component;
	
	component myMUX2to1
		port(A, B, S: in std_logic;
				Q: out std_logic);
	end component;
	
	component myMUX8to1
		port(A, B, C, D, E, F, G, H, S1, S2, S3: in std_logic;
				Q: out std_logic);
	end component;
	
	signal notA, notB: std_logic;
	signal bmux: std_logic;
	signal add_res, and_res, or_res, nor_res, xor_res: std_logic;
	signal binvert: std_logic;
	
begin
	
	binvert <= '1' when op = "001" else '0';
	
	U1: myNOT port map(A, notA);
	U2: myNOT port map(B, notB);
	U3: myAND port map(A, B, and_res);
	U4: myOR port map(A, B, or_res);
	U5: myXOR port map(A, B, xor_res);
	U6: myNOR port map(A, B, nor_res);
	U7: myMUX2to1 port map(B, notB, binvert, bmux);
	U8: myFullAdder port map(A => A, B => bmux, Cin => Cin, sum => add_res, Cout => Cout);
	
	U9: myMUX8to1 port map(
			A  => add_res,	-- 000: ADD
			B  => add_res,  -- 001: SUB 
			C  => and_res,  -- 010: AND
			D  => or_res,   -- 011: OR
			E  => GEQ,   -- 100: GEQ 
			F  => notA,    -- 101: NOT
			G  => xor_res,  -- 110: XOR
			H  => nor_res,  -- 111: NOR
			S1  => op(0),
			S2  => op(1),
			S3  => op(2),
			Q => res
    );
	 
end structALU1bit;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

