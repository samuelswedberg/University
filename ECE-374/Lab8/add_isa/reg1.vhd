--------- This is 1-bit register circuit -----------
library ieee;
use ieee.std_logic_1164.all;

entity reg1 is
port (clock : in std_logic;
	  reset : in std_logic;
	  D : in std_logic;
	  Q : out std_logic);
end reg1;

architecture behavior of reg1 is
begin
	process (clock, reset)
	begin
		if reset = '1' then
			Q <= '0';
		elsif clock'event and clock = '1' then
			Q <= D;
		end if;
	end process;
end behavior;