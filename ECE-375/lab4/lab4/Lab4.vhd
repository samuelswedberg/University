LIBRARY ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity Lab4 is

port(start, clk : in std_logic;
     productFPGA : out std_logic_vector(15 downto 0));
	  end Lab4;
	  
ARCHITECTURE behavorial of Lab4 is
signal done, load, shift, add, sel : std_logic;
signal mp, mc, muxOut : std_logic_vector(7 downto 0);
signal leftHalf, adderOut : std_logic_vector(15 downto 8);
signal product : std_logic_vector(15 downto 0);
begin
	mc <= "00000100"; -- 4
	mp <= "00000101"; -- 5
	
	
	fsm1 : fsm port map(clk, start, product(0), mp, mc, sel, productFPGA);
	
	mux : mux2to1 generic map (n=>8) port map (sel, product(0), "00000000", mc, muxOut);
	
	adder : ripple_carry port map (add, muxOut, leftHalf, adderOut);

	
end behavorial;