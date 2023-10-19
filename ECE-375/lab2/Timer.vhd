library ieee;
use ieee.std_logic_1164.all;

entity Timer is
	port(reset, start, clk : in std_logic;
			done : out std_logic);
	end Timer;
	
architecture Behavioral of Timer is
    signal tick : integer range 0 to 6;
    signal counter: integer range 0 to 24999999;
begin
    process(clk, reset, start)
	 begin
		if(reset='1') then
				counter<= 0;
				tick <= 0;
		else
			if(start='1') then
				if rising_edge(clk) then
					counter<=counter+1;
					if(counter = 24999999) then
						tick <= tick + 1;
						counter<=0;
					end if;
					if(tick = 6) then
						tick<=0;
					end if;
				end if;
			end if;
		end if;
	case tick is
		when 1 =>
			done <= '1';
		when 3 =>
			done <= '1';
		when 6 =>
			done <= '1';
		when others =>
			done <='0';
	end case;
 end process;
end Behavioral;			
				