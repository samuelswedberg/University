library ieee;
use ieee.std_logic_1164.all;

entity Timer is
	port(reset, start, clk : in std_logic;
			done : out std_logic);
	end Timer;
	
architecture Behavioral of Timer is
    signal counter: integer range 0 to 299999999;
begin
    process(clk, reset, start)
	 begin
	 if(reset='1') then
			counter<= 0;
	 else
		if(start='1') then
			if rising_edge(clk) then
				counter<=counter+1;
				if(counter = 299999999) then
					counter<=0;
				end if;
			end if;
		end if;
	 end if;
	case counter is
		when 49999999 =>
			done <= '1';
		when 149999999 =>
			done <= '1';
		when 299999998 =>
			done <= '1';
		when others =>
			done <='0';
	end case;
 end process;
end Behavioral;			
				