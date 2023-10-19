library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity ALU is
	port( x, y : in std_logic_vector(3 downto 0);
			add_sub : in std_logic;
			ALUOP : in std_logic_vector(1 downto 0);
			S : out std_logic_vector(3 downto 0);
			zero2 : out std_logic);
end ALU;

architecture behaviour of ALU is
	signal or_out, and_out, sum_out, zero2_out : std_logic_vector(3 downto 0);
	begin
	add_ins : ripple_carry port map(add_sub, x, y, sum_out);
	or_out <= x or y;
	and_out <= x and y;
	mux2to1_ins : mux2to1 generic map (n=>4) port map(sum_out(3), "0000", "0001", zero2_out);
	mux4to1_ins : mux4to1 generic map (n=>4) port map(zero2_out, sum_out, and_out, or_out, ALUOP, S);
	zero2 <= '1' when (sum_out="0000") else '0';
	
end behaviour;