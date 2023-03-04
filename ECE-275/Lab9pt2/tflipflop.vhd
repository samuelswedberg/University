library ieee;
use ieee.std_logic_1164.all;
entity tflipflop is
  port (clk,t,en,resetn : in std_logic;
        Q: out std_logic;
        Qnot : out std_logic);
 end tflipflop;
architecture TFF_arch of tflipflop is  
 signal op: std_logic;                           
  begin                                              
   process(clk, resetn) is
    begin
      if(en='0') then op<='Z';
      elsif (en='1' and resetn='1') then
          op <= '0';
      elsif (clk'event and clk='1' and en='1') then
          if(t='1') then op <= not op;
          else op <= op;
          end if;
     end if;
   end process;
   Q <= op;
   Qnot <= not op;                               
 end TFF_arch;