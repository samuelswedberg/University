library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity FSM is
	port(clk, start, lsb : in std_logic;
			done, load, shift, add, sel : out std_logic);
	end FSM;
	
architecture behavorial of FSM is
	type FSMstate is (s0, s1, s2, s3);
	signal state, ns : FSMstate;
	signal counter : integer;
	
	begin
	process(state, start, lsb)
	begin
		case state is
			when s0 =>
				if start='1' then
					load <= '1';
					ns <= s1;
				end if;
			when s1 =>
				load <= '0';
				if lsb='1' then
					ns <= s2;
					add <= '1';
				else
					ns <= s3;
					shift <= '1';
				end if;
			when s2 =>
				ns <= s3;
				shift <= '1';
			when s3 =>
				if lsb='1' then
					ns <= s2;
					add <= '1';
				else
					ns <= s3;
					shift <= '1';
				end if;
		end case;
		if(counter = 8) then
			done <= '1';
		end if;
	end process;
	
	process(clk)
		begin
			if rising_edge(clk) then
				state <= ns;
				counter <= counter + 1;
			end if;
		end process;
end behavorial;
			
				