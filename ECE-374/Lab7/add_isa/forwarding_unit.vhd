library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity forwarding_unit is
    port(ID_EX_ReadPort1, ID_EX_ReadPort2, EX_MEM_WriteAddr, MEM_WB_WriteAddr   : in std_logic_vector(3 downto 0);
			ID_EX_RegWrite, EX_MEM_RegWrite, MEM_WB_RegWrite: in std_logic;
			forwardA, forwardB : out std_logic_vector(1 downto 0));
end forwarding_unit;

architecture behaviour of forwarding_unit is
begin
	forwardA <= "01" when ((EX_MEM_RegWrite='1') and (EX_MEM_WriteAddr = ID_EX_ReadPort1)) else
					"10" when ((MEM_WB_RegWrite = '1') and (MEM_WB_WriteAddr = ID_EX_ReadPort1)) else
					"00";
		
	forwardB <= "01" when ((EX_MEM_RegWrite='1') and (EX_MEM_WriteAddr = ID_EX_ReadPort2)) else
					"10" when ((MEM_WB_RegWrite = '1') and (MEM_WB_WriteAddr = ID_EX_ReadPort2)) else
					"00";

end behaviour;