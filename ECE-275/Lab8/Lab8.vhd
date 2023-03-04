Library IEEE;
USE IEEE.Std_logic_1164.all;

entity Lab8 is 
   PORT (   D, Resetn, CE, Clock   : IN STD_LOGIC;
       Q           : OUT STD_LOGIC);
end Lab8;

architecture Behavioral of Lab8 is
component flipflop is
	port(clk,D,sync_reset : in std_logic;
							Q : out std_logic);
end component;

signal din, qreg : std_logic;

begin

   din <= D when CE = '1' else qreg;
   Q <= qreg;
   uut : flipflop port map (din, Resetn, Clock, qreg);


end Behavioral; 