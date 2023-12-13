-------- This is a 1-bit 2_to_1 MUX ------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux1to1 IS
	PORT ( s : IN std_logic;
			a, b : in std_logic;
			f : OUT std_logic);
END mux1to1;

ARCHITECTURE LogicFunc OF mux1to1 IS
	signal s_vec : std_logic;
BEGIN
	process(s)
		begin
			if (s='0') then
				s_vec <= '0';
			else
				s_vec <= '1';
			end if;
	end process;
		
	f <= ((not s_vec) and a) OR (b and s_vec);	
END LogicFunc;
