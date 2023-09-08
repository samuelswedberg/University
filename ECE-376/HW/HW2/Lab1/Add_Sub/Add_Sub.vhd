Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity FullAdder is
	Port(A,B, Cin : in std_logic;
		  S, Co : out std_logic);
	end FullAdder;
	
Architecture Arch_Full_Adder of FullAdder is
	Begin
	S <= A xor B xor Cin;
	Co <= (A and B) or (Cin and (A or B));
end Arch_Full_Adder;
	
	
Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity Add_Sub is
	Port(X, Y : in std_logic_vector(3 downto 0);
		Cin : in std_logic;
		S : out std_logic_vector(3 downto 0));
	end Add_Sub;
	
Architecture Arch_Add_Sub of Add_Sub is

	Component FullAdder is
		Port(A,B, Cin : in std_logic;
		  S, Co : out std_logic);
	end component;
	
	signal z : std_logic_vector(3 downto 0);
	signal c0, c1, c2, c3 : std_logic;

	Begin
	FAO1: FullAdder port map(x(0), z(0), Cin, s(0), c0);
	FAO2: FullAdder port map(x(1), z(1), C0, s(1), c1);
	FAO3: FullAdder port map(x(2), z(2), c1, s(2), c2);
	FAO4: FullAdder port map(x(3), z(3), c2, s(3), c3);
	
	z(0) <= y(0) xor Cin;
	z(1) <= y(1) xor Cin;
	z(2) <= y(2) xor Cin;
	z(3) <= y(3) xor Cin;
	
end Arch_Add_Sub;