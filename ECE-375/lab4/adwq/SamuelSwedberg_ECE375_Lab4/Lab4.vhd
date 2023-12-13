LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;
use work.components.all;

entity Lab4 is

GENERIC (N : INTEGER := 16);

port(start, clk : in std_logic;
     productFPGA : out std_logic_vector(N-1 downto 0));
	  end Lab4;
	  
ARCHITECTURE behavorial of Lab4 is
signal done, load, shift, add, sel : std_logic;
signal product, productShift : std_logic_vector(N-1 downto 0);
signal mp, mc, muxOut : std_logic_vector((N-1)/2 downto 0);
signal leftHalf, adderOut : std_logic_vector(N-1 downto N/2);
begin
	mc <= "00000101"; -- 5
	mp <= "00000100"; -- 4
	
	fsm1 : fsm port map(clk, start, product(0), done, load, shift, add, sel);
	
	mux : mux2to1 generic map (n=>8) port map (sel, product(0), "00000000", mc, muxOut);
	
	adder : ripple_carry port map (add, muxOut, leftHalf, adderOut);	
	
	process(add, shift)
	begin
		lefthalf <= mp;
		product(N-1 downto N/2) <= leftHalf; 
		productShift <= std_logic_vector(shift_right(signed(product), 1));
		if load = '1' then
            product(N-1 downto N/2) <= leftHalf;
        end if;
		if add = '1' then
			product(N-1 downto N/2) <= adderOut;
		end if;
		if shift = '1' then
			product <= productShift;
		end if;
		
	end process;
	
	productFPGA <= product;
end behavorial;