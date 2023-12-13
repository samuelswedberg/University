--------- This is m-bit register circuit -----------
library ieee;
use ieee.std_logic_1164.all;

entity regM is
generic(N: integer:= 32);
port (clock : in std_logic;
	  reset : in std_logic;
	  D : in std_logic_vector(N-1 downto 0);
	  Q : out std_logic_vector(N-1 downto 0));
end regM;

architecture behavior of regM is
begin
	process (clock, reset)
	begin
		if reset = '1' then
			Q <= (others => '0');
		elsif clock'event and clock = '1' then
			Q <= D;
		end if;
	end process;
end behavior;