Library IEEE;
USE IEEE.Std_logic_1164.all;

entity Lab9Q1 is 
   port(clk,resetn: inout std_logic;
		count_out: inout std_logic_vector(2 downto 0));
end Lab9Q1;

architecture Behavioral of Lab9Q1 is
component flipflop is
	port(Q : out std_logic;    
      Clk :in std_logic;  
   resetn: in std_logic;  
      D :in  std_logic);
end component;

signal s1, s2, s3 : std_logic;
signal count : std_logic_vector (2 downto 0);

begin

uut: flipflop PORT MAP (Q => count(2), clk => clk, resetn => resetn, D => s1);
uut1: flipflop PORT MAP (Q => count(1), clk => clk, resetn => resetn, D => s2);
uut2: flipflop PORT MAP (Q => count(0), clk => clk, resetn => resetn, D => s3);

s3 <= not count(0);
s2 <= count(1) xor count(0);
s1 <= (count(2) xor (count(0) and count(1))) ;

count_out <= count;

end Behavioral; 