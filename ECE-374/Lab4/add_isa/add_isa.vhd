library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity add_isa is
	port( clock, reset : in std_logic;
	current_pc, result : out std_logic_vector(3 downto 0));
end add_isa;

architecture behaviour of add_isa is
	constant initial_pc : std_logic_vector(3 downto 0) := (others => '0');
	signal update_pc, read_port1, read_port2, write_port, w_value, src1, src2, sum, rout, mout, im_out, reg_out, dmux_out : std_logic_vector(3 downto 0);
	signal instr_from_im : std_logic_vector(31 downto 0);
	signal MemRead, MemWrite, RegWrite, add_sub, RegDst, ALUSrc, MemtoReg, Branch, ALUOp1, ALUOp0, zero2 : std_logic;
	signal ALUOP : std_logic_vector(1 downto 0);
	signal imm, DM_out, Dummy2 : std_logic_vector(3 downto 0);
	
begin
	pc_mux : mux2to1 generic map (n=>4) port map (reset, update_pc, initial_pc, mout);					--- multiplexer
	pc	: regN generic map (n=>4) port map (clock, mout, rout);												--- register
	---------- pc = pc +1 ------------------------------------------
	addpc : ripple_carry port map ('0', rout, "0001", update_pc);

	----------- IM -------------------------------------------------
	im : instruction_memory port map (clock, reset, rout, instr_from_im);
	
	------------- ID ------------------------------------------------
	id : instruction_decode port map (instr_from_im, MemRead, MemWrite, RegWrite, add_sub, RegDst, ALUSrc, MemtoReg, Branch, ALUOp1, ALUOp0, read_port1, read_port2, write_port, imm, ALUOP);
	
	------------- RF --------------------------------------------------
	rf : register_file port map (clock, reset, RegWrite, read_port1, read_port2, im_out, dmux_out, src1, src2);
	
	------------- DM --------------------------------------------------
	dm : data_memory port map (clock, reset, MemWrite, sum, "ZZZZ", sum, src2, DM_out, Dummy2);
	
	-- add_ins : ripple_carry port map (add_sub, src1, src2, sum);
	
	alu_ins : alu port map (src1, reg_out, add_sub, ALUOP, sum, zero2); 
	
	im_mux : mux2to1 generic map (n=>4) port map (RegDst, read_port2, write_port, im_out);	
	reg_mux : mux2to1 generic map (n=>4) port map (ALUSrc, src2, imm, reg_out);	
	dm_mux : mux2to1 generic map (n=>4) port map (MemtoReg, sum, DM_out, dmux_out);	
	
	current_pc <= rout;
	result <= dmux_out;	
	
end behaviour;