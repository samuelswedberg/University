library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lab5Q1 is
	Port ( a,b,c,e,f,g,h : in STD_LOGIC;
	R : out STD_LOGIC);
end Lab5Q1;

architecture Behavioral of Lab5Q1 is

component mux
    Port ( SEL : in  STD_LOGIC;
           A   : in  STD_LOGIC;
           B   : in  STD_LOGIC;
           X   : out STD_LOGIC);
end component;

signal s0,s1:std_logic;
begin

mux0: mux port map(a, c, b, s0);
mux1: mux port map(e, f, g, s1);
mux2: mux port map(s0, s1, h, R);

end Behavioral;