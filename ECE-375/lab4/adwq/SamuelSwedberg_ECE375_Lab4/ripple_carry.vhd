---- this is a 8-bit ripple_carry adder circuit -----------

LIBRARY ieee;
USE ieee.std_logic_1164.all ;
USE work.components.all;

ENTITY ripple_carry IS
    PORT ( Cin: IN STD_LOGIC;
            x,y : IN STD_LOGIC_VECTOR(7 downto 0);
            s : OUT STD_LOGIC_VECTOR(7 downto 0);
            Cout : OUT STD_LOGIC );
END ripple_carry ;

ARCHITECTURE struc_behaviour OF ripple_carry IS
    signal carry : std_logic_vector(7 downto 1);
    signal z : std_logic_vector(7 downto 0);
	 
BEGIN
    
    stage1 : FullAdd PORT MAP (Cin, x(0), z(0), s(0), carry(1));
    stage2 : FullAdd PORT MAP (carry(1), x(1), Z(1), s(1), carry(2));
    stage3 : FullAdd PORT MAP (carry(2), x(2), Z(2), s(2), carry(3));
	 stage4 : FullAdd PORT MAP (carry(3), x(3), Z(3), s(3), carry(4));
	 stage5 : FullAdd PORT MAP (carry(4), x(4), Z(4), s(4), carry(5));
	 stage6 : FullAdd PORT MAP (carry(5), x(5), Z(5), s(5), carry(6));
	 stage7 : FullAdd PORT MAP (carry(6), x(6), Z(6), s(6), carry(7));
    stage8 : FullAdd PORT MAP (carry(7), x(7), Z(7), s(7), Cout);

    z(0) <= y(0) xor Cin;
    z(1) <= y(1) xor Cin;
    z(2) <= y(2) xor Cin;
    z(3) <= y(3) xor Cin;
	 z(4) <= y(4) xor Cin;
	 z(5) <= y(5) xor Cin;
	 z(6) <= y(6) xor Cin;
	 z(7) <= y(7) xor Cin;
	 
END struc_behaviour;