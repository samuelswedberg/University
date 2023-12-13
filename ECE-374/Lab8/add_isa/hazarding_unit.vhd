library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity hazarding_unit is
    port(IF_ID_ReadPort1, IF_ID_ReadPort2, ID_EX_ReadPort2 : in std_logic_vector(3 downto 0);
			ID_EX_MemRead : in std_logic;
             stall : out std_logic);
end hazarding_unit;

architecture behaviour of hazarding_unit is
begin

	stall <= '1' when (ID_EX_MemRead = '1' and ((ID_EX_ReadPort2 = IF_ID_ReadPort1) or ( ID_EX_ReadPort2 = IF_ID_ReadPort2))) else 
				'0';
	
end behaviour;