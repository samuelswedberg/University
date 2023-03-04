LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY Lab2Q1 IS
		PORT (a, b, c, d : IN STD_LOGIC;
					f, g : OUT STD_LOGIC);
END Lab2Q1;
ARCHITECTURE LogicFunc OF Lab2Q1 IS
BEGIN
		f <= (a AND (NOT c)) OR
					(b AND (NOT c)) OR ((NOT c) AND (NOT d)) OR
					(a AND b) OR (a and (NOT d));
		g <= (a OR (NOT c)) AND
					(a OR b OR (NOT d)) AND
					(b OR (NOT c) OR (NOT d));
END LogicFunc;