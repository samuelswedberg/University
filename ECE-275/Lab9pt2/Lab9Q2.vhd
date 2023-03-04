Library IEEE;
USE IEEE.Std_logic_1164.all;

entity Lab9Q2 is 
   port(clk,resetn: in std_logic;
		count_out: out std_logic_vector(2 downto 0));
end Lab9Q2;

architecture Behavioral of Lab9Q2 is
component tflipflop is
	port(t,clk,resetn : in std_logic;
        Q: out std_logic;
        Qnot : out std_logic);
end component;

signal s1, s2, s3, ns1, ns2, ns3 : std_logic;
signal count : std_logic_vector (2 downto 0);

begin

uut: tflipflop PORT MAP (t => count(2), clk => clk, resetn => resetn, Q => s1, Qnot => ns1);
uut1: tflipflop PORT MAP (t => count(1), clk => clk, resetn => resetn, Q => s2, Qnot => ns2);
uut2: tflipflop PORT MAP (t => count(0), clk => clk, resetn => resetn, Q => s3, Qnot => ns3);

s3 <= not count(0);
s2 <= count(1) xor count(0);
s1 <= (count(2) xor (count(0) and count(1))) ;

count_out <= count;

end Behavioral; 