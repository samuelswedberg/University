LIBRARY ieee;
USE ieee.std_logic_1164.all;
use work.components.all;

ENTITY shiftright IS
    generic(n : integer := 16);
    PORT ( input : in std_logic_Vector((n-1) downto 0);
				output : out std_logic_Vector((n-1) downto 0));
END shiftright;

ARCHITECTURE LogicFunc OF shiftright IS
BEGIN
    output <= input(n-1) and input((n-1) downto 1);
END LogicFunc;