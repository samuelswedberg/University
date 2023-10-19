library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity add_11 is

port ( A, B : in std_logic;
	C : out std_logic);

end add_11;

architecture behavioral of add_11 is

begin

addition_1 : process (A,B)

begin

if (A='0') and (B='0') then

C <='0';

elsif (A='0') and (B='1') then

C <='0';

elsif (A='1') and (B='0') then

C <='0';

else

C <='1';

end if;
end process;

end behavioral;