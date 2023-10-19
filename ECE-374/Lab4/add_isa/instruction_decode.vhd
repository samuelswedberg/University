------ This file describes the instruction decode operation -------------
LIBRARY ieee;
use ieee.std_logic_1164.all;
USE work.components.all;

entity instruction_decode is
	port(instr : in std_logic_vector(31 downto 0);
			MemRead, MemWrite, RegWrite, add_sub, RegDst, ALUSrc, MemtoReg, Branch, ALUOp1, ALUOp0 : out std_logic;
			read_p1, read_p2, write_p, imm : out std_logic_vector(3 downto 0);
			ALUOP : out std_logic_vector(1 downto 0));
end instruction_decode;

architecture struc_behaviour of instruction_decode is
	signal opcode, funct : std_logic_vector(5 downto 0);
	signal shamt : std_logic_vector(4 downto 0);
	signal alu_temp : std_logic_vector(2 downto 0);
begin


	opcode <= instr(31 downto 26);
	shamt <= instr(10 downto 6);
	funct <= instr(5 downto 0);
	imm <= instr(3 downto 0);
	
	read_p1 <= instr(24 downto 21);
	read_p2 <= instr(19 downto 16);
	write_p <= instr(14 downto 11);
	
	RegDst <= '0' when (opcode = "100011") else '1'; -- Load
	ALUSrc <= '1' when (opcode = "100011" or opcode = "101011") else '0'; -- Load or Save
	MemtoReg <= '1' when (opcode = "100011") else '0'; -- Load
	RegWrite <= '1' when (opcode = "100011" or opcode = "000000") else '0'; -- Load
	MemRead <= '1' when (opcode = "100011") else '0'; -- Load
	MemWrite <= '1' when (opcode = "101011") else '0'; -- Save
	Branch <= '1' when (opcode = "000100") else '0'; -- beq
	
							
	----- add_sub <= '0' when (funct = "100000") else '1';
	
	alu_temp <= "001" when(opcode="000000" and funct="100000") else -- Add
					"101" when(opcode="000000" and funct="100010") else -- Sub
					"X11" when(opcode="000000" and funct="100101") else -- Or
					"X10" when(opcode="000000" and funct="100100") else -- And
					"100" when(opcode="000000" and funct="101010") else -- SLT
					"001" when(opcode="100011") else -- LW
					"001" when(opcode="101011") else -- SW
					"000" when(opcode="000100") else -- BEQ
					"000" when(opcode="000010") else -- Jump
					"ZZZ"; -- default case
	add_sub <= alu_temp(2);
	ALUOP <= alu_temp(1 downto 0);
	
end struc_behaviour;