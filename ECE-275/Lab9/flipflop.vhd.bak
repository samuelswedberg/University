Library IEEE;
USE IEEE.Std_logic_1164.all;

entity flipflop is 
   port(
      Q : out std_logic;    
      Clk :in std_logic;  
   sync_reset: in std_logic;  
      D :in  std_logic    
   );
end flipflop;
architecture Behavioral of flipflop is  
begin  
 process(Clk,sync_reset)
 begin 
     if(sync_reset='0') then 
   Q <= '0';
     elsif(rising_edge(Clk)) then
   Q <= D; 
  end if;      
 end process;  
end Behavioral; 