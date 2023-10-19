library ieee;
use ieee.std_logic_1164.all;

entity FSM2 is
	port(reset, start, clk, done: in std_logic;
			red, yellow, green: out std_logic);
	end FSM2;
	
architecture behavorial of FSM2 is
	type FSM is (a, b, c);
	signal state, ns : FSM;
	
	begin
	process(state,reset,start)
	begin
		case state is
			when a =>
				red <= '1';
				yellow <='0';
				green <='0';
			if done='1' then
				ns <= b;
			end if;
			if reset='1' then
				ns <= a;
			end if;
			
			when b =>
				red <='0';
				yellow <='1';
				green <='0';
			if done='1' then
				ns <= c;
			end if;
			if reset='1' then
				ns <= a;
			end if;
			
			when c =>
				red <='0';
				yellow <='0';
				green <='1';
			if done='1' then
				ns <= a;
			end if;
			if reset='1' then
				ns <= a;
			end if;
		end case;
	end process;
	
	process(clk)
		begin
			if rising_edge(clk) then
				state <= ns;
			end if;
		end process;
end behavorial;
			
				