library ieee;
use ieee.std_logic_1164.all;

entity Lab2 is
	port(reset, start, clk, done: in std_logic;
			red, yellow, green: out std_logic);
	end Lab2;
	
architecture behavorial of Lab2 is
component Timer
	port(reset, start, clk : in std_logic;
			done : out std_logic);
	end component;
	
component FSM2
	port(reset, start, clk, done : in std_logic;
			red, yellow, green: out std_logic);
	end component;
	signal doneSignal : std_logic;

	begin
	f1 : FSM2 port map(reset=>reset, start=>done, clk=>clk, done=>doneSignal, red=>red, yellow=>yellow, green=>green);
	t1 : Timer port map(reset=>reset, start=>done, clk=>clk, done=>doneSignal);
end behavorial;
			
				