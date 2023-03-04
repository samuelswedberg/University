LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Lab7Q2 IS
	PORT (
		i : IN STD_LOGIC_VECTOR(7 downto 0);
		o : out STD_LOGIC_VECTOR(2 downto 0));
END Lab7Q2;
ARCHITECTURE Behavorial OF Lab7Q2 IS 
BEGIN
o <= "000" when i(0)='1' else
		"001" when i(1)='1' else
		"010" when i(2)='1' else
		"011" when i(3)='1' else
		"100" when i(4)='1' else
		"101" when i(5)='1' else
		"110" when i(6)='1' else
		"111";
END Behavorial;
		
		