library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;
use work.components.all;

entity FSM is
	port(clk, start, lsb: in std_logic;
			mp, mc : in std_logic_vector(7 downto 0);
			sel : out std_logic;
			prodOut : out std_logic_vector(15 downto 0));
	end FSM;
	
architecture behavorial of FSM is
	type FSMstate is (s0, s1, s2, s3);
	signal state, ns : FSMstate;
	signal counter : integer;
	signal productShift : std_logic_vector(15 downto 0);
	signal leftHalf, adderOut : std_logic_vector(15 downto 8);
	signal done, signedbit : std_logic;
	signal prodIntermed : std_logic_vector(15 downto 0);
	begin
	leftHalf <= mp;
	process(state, start, lsb)
	begin
		case state is
			when s0 =>
				if start='1' then
					prodIntermed <= "0000000000000000";
					prodIntermed(15 downto 8) <= leftHalf;
					ns <= s1;
				end if;
			when s1 =>
				if prodIntermed(0)='1' then
					ns <= s2;
					prodIntermed(15 downto 8) <= adderOut;
				else
					ns <= s3;
					signedbit <= productShift(15);
					productShift <= signedbit & prodIntermed(15 downto 1);
					prodIntermed <= productShift;
				end if;
			when s2 =>
				ns <= s3;
				signedbit <= productShift(15);
				productShift <= signedbit & prodIntermed(15 downto 1);
				prodIntermed <= productShift;
			when s3 =>
				if prodIntermed(0)='1' then
					ns <= s2;
					prodIntermed(15 downto 8) <= adderOut;
				else
					ns <= s3;
					signedbit <= productShift(15);
					productShift <= signedbit & prodIntermed(15 downto 1);
					prodIntermed <= productShift;
				end if;
		end case;
		if(counter = 8) then
			done <= '1';
		end if;
		prodOut <= prodIntermed;
	end process;
	
	process(clk)
		begin
			if rising_edge(clk) then
				state <= ns;
				counter <= counter + 1;
			end if;
		end process;
end behavorial;
			
				