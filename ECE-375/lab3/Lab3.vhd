library ieee;
use ieee.std_logic_1164.all;

entity Lab3 is
	port(clk, Ld : in std_logic;
			Memin: in std_logic_vector(5 downto 0);
			ReadAddr : in std_logic_vector(1 downto 0);
			Memout : out std_logic_vector(5 downto 0));
	end Lab3;
	
architecture behavorial of Lab3 is
	signal mem1: std_logic_vector(5 downto 0) :="000000";
	signal mem2: std_logic_vector(5 downto 0) :="000000";
	signal mem3: std_logic_vector(5 downto 0) :="000000";
	signal mem4: std_logic_vector(5 downto 0) :="000000";
	signal toload: std_logic_vector(5 downto 0) :="000000";
	
	begin
	process(clk)
		begin
		if Ld='1' then
			toload <= Memin;
		end if;
		
		if (clk'event and clk='1') then
		
		if(ReadAddr(1)='0' and ReadAddr(0)='0') then
			mem1<=toload;
		elsif(ReadAddr(1)='0' and ReadAddr(0)='1') then
			mem2<=toload;
		elsif(ReadAddr(1)='1' and ReadAddr(0)='0') then
			mem3<=toload;
		elsif(ReadAddr(1)='1' and ReadAddr(1)='1') then
			mem4<=toload;
		end if;

		end if;
		
		if(ReadAddr(1)='0' and ReadAddr(0)='0') then
			Memout<=mem1;
		elsif(ReadAddr(1)='0' and ReadAddr(0)='1') then
			Memout<=mem2;
		elsif(ReadAddr(1)='1' and ReadAddr(0)='0') then
			Memout<=mem3;
		elsif(ReadAddr(1)='1' and ReadAddr(1)='1') then
			Memout<=mem4;
		else
			Memout<="ZZZZZZ";
		end if;
		
		end process;

end behavorial;
			
				