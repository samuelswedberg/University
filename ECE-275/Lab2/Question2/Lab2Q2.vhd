LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY Lab2Q2 IS
		PORT (a, b, c, d : IN STD_LOGIC;
					f, g : OUT STD_LOGIC);
END Lab2Q2;
ARCHITECTURE LogicFunc OF Lab2Q2 IS
BEGIN
		f <= (a AND c) OR
					((NOT a) AND (NOT c)) OR 
					(b AND d) OR
					((NOT b) AND (NOT d));
		g <= (a AND b AND (NOT c) AND (NOT d)) OR
					((NOT a) AND (NOT b) AND c AND d) OR
					(a AND (NOT b) AND (NOT c) AND d) OR
					((NOT a) AND b AND c AND (NOT d));
END LogicFunc;