LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Lab3Q1 IS
	PORT(A, B: IN BIT_VECTOR(3 downto 0); Ci: IN bit;
		S: OUT BIT_VECTOR(3 downto 0); Co: OUT bit);
END Lab3Q1;

ENTITY FullAdder is
	PORT(X,Y,Cin: IN bit;
		Cout,Sum: OUT bit);
END FullAdder;

ARCHITECTURE Equations of FullAdder is
BEGIN
	Sum <= X xor Y xor Cin after 10 ns;
	Cout <= (X and Y) or (X and Cin) or (Y and Cin) after 10ns;
END Equations;
 
ARCHITECTURE Structure OF Lab3Q1 IS

COMPONENT FullAdder
	PORT(X, Y, Cin: IN bit;
		Cout, Sum: OUT bit);
END COMPONENT;

SIGNAL C:BIT_VECTOR(3 downto 1);

BEGIN
	FA0: FullAdder port map( A(0), B(0), Ci, C(1), S(0));
	FA1: FullAdder port map( A(1), B(1), c(1), C(2), S(1));
	FA2: FullAdder port map( A(2), B(2), c(2), C(3), S(2));
	FA3: FullAdder port map( A(3), B(3), c(3), Co, S(3));
END Structure;
