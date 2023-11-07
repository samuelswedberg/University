library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity pipeline is
	port( clock, reset : in std_logic;
	current_pc, result : out std_logic_vector(3 downto 0));
end pipeline;

architecture behaviour of pipeline is
	constant initial_pc : std_logic_vector(3 downto 0) := (others => '0');
	signal update_pc, read_port1, read_port2, write_port, w_value, src1, src2, sum, rout, mout, im_out, reg_out, dmux_out, brmux_out, jmux_out : std_logic_vector(3 downto 0);
	signal instr_from_im : std_logic_vector(31 downto 0);
	signal MemRead, RegWrite, MemWrite, add_sub, RegDst, ALUSrc, MemtoReg, Branch, ALUOp1, ALUOp0, Jump, zero2 : std_logic;
	signal ALUOP : std_logic_vector(1 downto 0);
	signal imm, DM_out, Dummy2 : std_logic_vector(3 downto 0);
	signal BranchSignal : std_logic;
	
	---------- IF/ID register --------------------------------------
	signal IF_ID_PC : std_logic_vector(3 downto 0);
	signal IF_ID_Instr : std_logic_vector(31 downto 0);
	
	---------- ID/EX register --------------------------------------
	signal ID_EX_RegWrite, ID_EX_MemWrite, ID_EX_Branch, ID_EX_Jump, ID_EX_RegDst, ID_EX_ALUSrc, ID_EX_AddSub, ID_EX_MemtoReg : std_logic;
	signal ID_EX_Src1, ID_EX_Src2, ID_EX_imm, ID_EX_WriteAddr, ID_EX_ReadPort2, ID_EX_PC : std_logic_vector(3 downto 0);
	signal ID_EX_ALUOP : std_logic_vector(1 downto 0);
	
	---------- EX/MEM register --------------------------------------
	signal EX_MEM_MemWrite, EX_MEM_RegWrite, EX_MEM_MemtoReg : std_logic;
	signal EX_MEM_ALUout, ALU_Input, write_address, EX_MEM_WriteAddr, EX_MEM_PC : std_logic_vector(3 downto 0);
	
	---------- MEM/WB register --------------------------------------
	signal MEM_WB_MemtoReg, MEM_WB_RegWrite : std_logic;
	signal MEM_WB_ALUOut, MEM_WB_PC, EX_MEM_Src2, MEM_WB_DMout, MEM_WB_WriteAddr : std_logic_vector(3 downto 0);

begin
	pc_mux : mux2to1 generic map (n=>4) port map (reset, MEM_WB_PC, initial_pc, mout); --- multiplexer
	pc	: regN generic map (n=>4) port map (clock, mout, rout); --- register
	---------- pc = pc +1 ------------------------------------------
	addpc : ripple_carry port map ('0', rout, "0001", update_pc); --- PC + 1
	im : instruction_memory port map (clock, reset, rout, instr_from_im);
	im_mux : mux2to1 generic map (n=>4) port map (RegDst, read_port2, write_port, im_out);	
	
	---------- IF/ID register --------------------------------------
	IF_ID_PC_reg : regM generic map (n=>4) port map (clock, reset, update_pc, IF_ID_PC); -- REG 1
	IF_ID_Ins_reg : regM generic map (n=>32) port map (clock, reset, instr_from_im, IF_ID_Instr); -- REG 2
	
	---------- ID STAGE --------------------------------------------
	id : instruction_decode port map (IF_ID_Instr, MemRead, MemWrite, RegWrite, add_sub, RegDst, ALUSrc, MemtoReg, Branch, ALUOp1, ALUOp0, Jump, read_port1, read_port2, write_port, imm, ALUOP);
	rf : register_file port map (clock, reset, MEM_WB_RegWrite, read_port1, read_port2, im_out, dmux_out, src1, src2);
	
	---------- ID/EX register --------------------------------------
	ID_EX_src1_reg : regM generic map (n=>4) port map (clock, reset, src1, ID_EX_Src1); -- REG 3
	ID_EX_src2_reg : regM generic map (n=>4) port map (clock, reset, src2, ID_EX_Src2); -- REG 4
	ID_EX_imm_reg : regM generic map (n=>4) port map (clock, reset, imm, ID_EX_imm); -- REG 5
	ID_EX_WriteAddr_reg : regM generic map (n=>4) port map (clock, reset, read_port1, ID_EX_WriteAddr); -- REG 6
	ID_EX_ReadPort2_reg : regM generic map (n=>4) port map (clock, reset, read_port2, ID_EX_ReadPort2); -- REG 7
	ID_EX_RegWrite_reg : reg1 port map (clock, reset, RegWrite, ID_EX_RegWrite); -- REG 8
	ID_EX_MemWrite_reg : reg1 port map (clock, reset, MemWrite, ID_EX_MemWrite); -- REG 9
	ID_EX_Branch_reg : reg1 port map (clock, reset, Branch, ID_EX_Branch); -- REG 10
	ID_EX_Jump_reg : reg1 port map (clock, reset, Jump, ID_EX_Jump); -- REG 11
	ID_EX_PC_reg : regM generic map (n=>4) port map (clock, reset, update_pc, ID_EX_PC); -- REG 12
	ID_EX_RegDst_reg : reg1 port map (clock, reset, RegDst, ID_EX_RegDst); -- REG 13
	ID_EX_ALUSrc_reg : reg1 port map (clock, reset, ALUSrc, ID_EX_ALUSrc); -- REG 14
	ID_EX_ALUOP_reg : regM generic map (n=>2) port map (clock, reset, ALUOp, ID_EX_ALUOP); -- REG 15
	ID_EX_AddSub_reg : reg1 port map (clock, reset, add_sub, ID_EX_AddSub); -- REG 16
	ID_EX_MemtoReg_reg : reg1 port map (clock, reset, MemtoReg, ID_EX_MemtoReg); -- REG 17

	---------- EX STAGE --------------------------------------------
	alu_ins : alu port map (ID_EX_Src1, ALU_Input, ID_EX_AddSub, ID_EX_ALUOP, sum, zero2); 
	writeaddress_reg_mux : mux2to1 generic map (n=>4) port map (ID_EX_RegDst, ID_EX_WriteAddr, ID_EX_ReadPort2, write_address);	
	alusrc_mux : mux2to1 generic map (n=>4) port map (ID_EX_ALUSrc, ID_EX_Src2, ID_EX_imm, ALU_Input);	
	
	---------- EX/MEM register --------------------------------------
	EX_MEM_ALUOut_reg : regM generic map (n=>4) port map (clock, reset, sum, EX_MEM_ALUout); -- REG 18
	EX_MEM_PC_reg : regM generic map (n=>4) port map (clock, reset, brmux_out, EX_MEM_PC); -- REG 19
	EX_MEM_MemWrite_reg : reg1 port map (clock, reset, ID_EX_MemWrite, EX_MEM_MemWrite); -- REG 20
	EX_MEM_RegWrite_reg : reg1 port map (clock, reset, ID_EX_RegWrite, EX_MEM_RegWrite); -- REG 21
	EX_MEM_MemtoReg_reg : reg1 port map (clock, reset, ID_EX_MemtoReg, EX_MEM_MemtoReg); -- REG 22
	EX_MEM_Src2_reg : regM generic map (n=>4) port map (clock, reset, ID_EX_Src2, EX_MEM_Src2); -- REG 23
	EX_MEM_WriteAddr_reg : regM generic map (n=>4) port map (clock, reset, write_address, EX_MEM_WriteAddr); -- REG 24
	
	---------- MEM STAGE --------------------------------------------
	BranchSignal <= Branch and zero2;
	br_mux : mux2to1 generic map (n=>4) port map (BranchSignal, update_pc, imm, brmux_out);	
	dm : data_memory port map (clock, reset, MemWrite, sum, "ZZZZ", sum, src2, DM_out, Dummy2);
	dm_mux : mux2to1 generic map (n=>4) port map (MEM_WB_MemtoReg, MEM_WB_ALUOut, MEM_WB_DMout, dmux_out);	
	
	---------- MEM/WB register --------------------------------------
	MEM_WB_ALUOut_reg : regM generic map (n=>4) port map (clock, reset, EX_MEM_ALUout, MEM_WB_ALUOut); -- REG 25
	MEM_WB_PC_reg : regM generic map (n=>4) port map (clock, reset, EX_MEM_PC, MEM_WB_PC); -- REG 26	
	MEM_WB_MemtoReg_reg : reg1 port map (clock, reset, EX_MEM_MemtoReg, MEM_WB_MemtoReg); -- REG 27	
	MEM_WB_DMout_reg : regM generic map (n=>4) port map (clock, reset, DM_out, MEM_WB_DMout); -- REG 28
	MEM_WB_WriteAddr_reg : regM generic map (n=>4) port map (clock, reset, EX_MEM_WriteAddr, MEM_WB_WriteAddr); -- REG 29
	MEM_WB_RegWrite_reg : reg1 port map (clock, reset, EX_MEM_RegWrite, MEM_WB_RegWrite); -- REG 30
	
	current_pc <= rout;
	result <= dmux_out;	

end behaviour;