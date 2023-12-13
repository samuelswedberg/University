library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

package components is
------------ full adder ---------------
component fulladd IS
	PORT ( Cin, x, y : IN STD_LOGIC;
		s, Cout : OUT STD_LOGIC );
END component;

------------- n stage ripple carry adder -------------------
component ripple_carry IS
	PORT ( Cin: IN STD_LOGIC;
			x,y : IN STD_LOGIC_VECTOR(7 downto 0);
			s : OUT STD_LOGIC_VECTOR(7 downto 0);
			Cout : OUT STD_LOGIC );
END component;

--------- multiplexer -----------------------
component mux2to1 IS
    generic(n : integer := 8);
    PORT ( sel, en : IN std_logic;
            a, b : in std_logic_vector((n-1) downto 0);
            f : OUT std_logic_vector((n-1) downto 0));
END component;

-------- FSM --------------------
component FSM
	port(clk, start, lsb: in std_logic;
			done, load, shift, add, sel : out std_logic);
	end component;
	
end components;