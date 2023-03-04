library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lab6Q1 is
    Port ( A  : in  STD_LOGIC_VECTOR (1 downto 0);  -- 2-bit input
			  B  : in  STD_LOGIC_VECTOR (1 downto 0);  -- 2-bit input
           X  : out STD_LOGIC_VECTOR (7 downto 0);  -- 4-bit output
           EN : in  STD_LOGIC);                     -- enable input
end Lab6Q1;

architecture Behavioral of Lab6Q1 is
begin
process (A, B, EN)
begin
    X <= "11111111";        -- default output value
    if (EN = '1') then  -- active high enable pin
        case A is
            when "00" => X(0) <= '0';
            when "01" => X(1) <= '0';
            when "10" => X(2) <= '0';
            when "11" => X(3) <= '0';
            when others => X <= "11111111";
        end case;
		  case B is
            when "00" => X(4) <= '0';
            when "01" => X(5) <= '0';
            when "10" => X(6) <= '0';
            when "11" => X(7) <= '0';
            when others => X <= "11111111";
        end case;
    end if;
end process;
end Behavioral;