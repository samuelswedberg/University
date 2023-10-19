library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tristate is
    Port ( A    : in  STD_LOGIC;
           EN  : in  STD_LOGIC;
           Y    : out STD_LOGIC);
end tristate;

architecture Behavioral of tristate is

begin

    Y <= A when (EN = '0') else 'Z';

end Behavioral;