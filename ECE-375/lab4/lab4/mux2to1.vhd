-------- This is a n-bit 2_to_1 MUX ------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use work.components.all;

ENTITY mux2to1 IS
    generic(n : integer := 8);
    PORT ( sel, en : IN std_logic;
            a, b : in std_logic_vector((n-1) downto 0);
            f : OUT std_logic_vector((n-1) downto 0));
END mux2to1;

ARCHITECTURE LogicFunc OF mux2to1 IS
BEGIN
    process(sel, en)
        begin
            if (sel='0' and en='1') then
                f <= b;
				elsif (sel='1' and en='1') then
					 f <= (not b);
            else
                f <= a;
            end if;
    end process;   
END LogicFunc;