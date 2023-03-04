library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder2To4 is
  port (A,B:  in STD_LOGIC;
    O:  out STD_LOGIC_VECTOR(3 downto 0));
end Decoder2To4;
 
architecture DecIns of Decoder2To4 is
begin
  O(3) <= (not A) and (not B);
  O(2) <= (not A) and B;
  O(1) <= A and (not B);
  O(0) <= A and B;
end DecIns;