library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity pipeline is
	port( clock, reset : in std_logic;
	current_pc, result : out std_logic_vector(3 downto 0));
end pipeline;

architecture behaviour of pipeline is
	constant initial_pc : std_logic_vector(3 downto 0) := (others => '0');
	signal update_pc, read_port1, read_port2, write_port, w_value, src1, src2, sum, rout, mout, im_out, reg_out, dmux_out, brmux_out, jumpmux_out, ALUFwd1_muxout, ALUFwd2_muxout, pc1_muxout, BranchandZeroO: std_logic_vector(3 downto 0);
	signal instr_from_im, IF_ID_muxout, instr_muxout : std_logic_vector(31 downto 0);
	signal MemRead, RegWrite, MemWrite, add_sub, RegDst, ALUSrc, MemtoReg, Branch, ALUOp1, ALUOp0, Jump, zero2 : std_logic;
	signal IF_ID_RegWritemuxout, IF_ID_MemWritemuxout, IF_ID_MemReadmuxout, IF_ID_Branchmuxout, IF_ID_Jumpmuxout : std_logic;
	signal ALUOP, forwardA, forwardB : std_logic_vector(1 downto 0);
	signal imm, DM_out, Dummy2 : std_logic_vector(3 downto 0);
	signal BranchSignal, StallSignal : std_logic;
	
	---------- IF/ID register --------------------------------------
	signal IF_ID_PC : std_logic_vector(3 downto 0);
	signal IF_ID_Instr : std_logic_vector(31 downto 0);
	signal ResetB : std_logic;
	
	---------- ID/EX register --------------------------------------
	signal ID_EX_MemRead, ID_EX_RegWrite, ID_EX_MemWrite, ID_EX_Branch, ID_EX_Jump, ID_EX_RegDst, ID_EX_ALUSrc, ID_EX_AddSub, ID_EX_MemtoReg : std_logic;
	signal ID_EX_Src1, ID_EX_Src2, ID_EX_imm, ID_EX_WriteAddr, ID_EX_ReadPort1, ID_EX_ReadPort2, ID_EX_PC : std_logic_vector(3 downto 0);
	signal ID_EX_ALUOP : std_logic_vector(1 downto 0);
	
	---------- EX/MEM register --------------------------------------
	signal EX_MEM_MemWrite, EX_MEM_RegWrite, EX_MEM_MemtoReg : std_logic;
	signal EX_MEM_ALUout, ALU_Input, write_address, EX_MEM_WriteAddr, EX_MEM_PC : std_logic_vector(3 downto 0);
	
	---------- MEM/WB register --------------------------------------
	signal MEM_WB_MemtoReg, MEM_WB_RegWrite : std_logic;
	signal MEM_WB_ALUOut, MEM_WB_PC, EX_MEM_Src2, MEM_WB_DMout, MEM_WB_WriteAddr : std_logic_vector(3 downto 0);

begin
	pc_mux : mux2to1 generic map (n=>4) port map (reset, BranchandZeroO, initial_pc, mout); --- multiplexer
	pc	: regN generic map (n=>4) port map (clock, mout, rout); --- register
	
	---------- pc = pc +1 ------------------------------------------
	addpc : ripple_carry port map ('0', rout, "0001", update_pc); --- PC + 1
	im : instruction_memory port map (clock, reset, rout, instr_from_im);
 
	---------- IF STAGE ------------------------------------------
	pc1_mux : mux2to1 generic map (n=>4) port map (StallSignal, update_pc, IF_ID_PC, pc1_muxout);	
	instr_mux : mux2to1 generic map (n=>32) port map (StallSignal, instr_from_im, IF_ID_Instr, instr_muxout);	
	pc_mux_BranchandZero : mux2to1 generic map (n=>4) port map (BranchSignal, update_pc, jumpmux_out, BranchandZeroO);
	
	---------- IF/ID register --------------------------------------
	IF_ID_PC_reg : regM generic map (n=>4) port map (clock, ResetB, pc1_muxout, IF_ID_PC); -- REG 1
	IF_ID_Ins_reg : regM generic map (n=>32) port map (clock, ResetB, instr_muxout, IF_ID_Instr); -- REG 2
	IF_ID_RegWritemux : mux1to1 port map (StallSignal, RegWrite, '0', IF_ID_RegWritemuxout);
	IF_ID_MemWritemux : mux1to1 port map (StallSignal, MemWrite, '0', IF_ID_MemWritemuxout);
	IF_ID_MemReadmux : mux1to1 port map (StallSignal, MemRead, '0', IF_ID_MemReadmuxout);
	IF_ID_Branchmux : mux1to1 port map (StallSignal, Branch, '0', IF_ID_Branchmuxout);
	IF_ID_Jumpmux : mux1to1 port map (StallSignal, Jump, '0', IF_ID_Jumpmuxout);
	ResetB <= reset or BranchSignal;
	
	---------- ID STAGE --------------------------------------------
	id : instruction_decode port map (IF_ID_Instr, MemRead, MemWrite, RegWrite, add_sub, RegDst, ALUSrc, MemtoReg, Branch, ALUOp1, ALUOp0, Jump, read_port1, read_port2, write_port, imm, ALUOP);
	rf : register_file port map (clock, reset, MEM_WB_RegWrite, read_port1, read_port2, MEM_WB_WriteAddr, dmux_out, src1, src2);
	hazunit : hazarding_unit port map(read_port1, read_port2, ID_EX_ReadPort2, ID_EX_MemRead, StallSignal);
	
	---------- ID/EX register --------------------------------------
	ID_EX_src1_reg : regM generic map (n=>4) port map (clock, reset, src1, ID_EX_Src1); -- REG 3
	ID_EX_src2_reg : regM generic map (n=>4) port map (clock, reset, src2, ID_EX_Src2); -- REG 4
	ID_EX_imm_reg : regM generic map (n=>4) port map (clock, reset, imm, ID_EX_imm); -- REG 5
	ID_EX_MemRead_reg : reg1 port map (clock, ResetB, IF_ID_MemReadmuxout, ID_EX_MemRead); -- REG 5.5
	ID_EX_WriteAddr_reg : regM generic map (n=>4) port map (clock, reset, write_port, ID_EX_WriteAddr); -- REG 6
	ID_EX_ReadPort1_reg : regM generic map (n=>4) port map (clock, reset, read_port1, ID_EX_ReadPort1); -- REG 7.5
	ID_EX_ReadPort2_reg : regM generic map (n=>4) port map (clock, reset, read_port2, ID_EX_ReadPort2); -- REG 7
	ID_EX_RegWrite_reg : reg1 port map (clock, ResetB, IF_ID_RegWritemuxout, ID_EX_RegWrite); -- REG 8
	ID_EX_MemWrite_reg : reg1 port map (clock, ResetB, IF_ID_MemWritemuxout, ID_EX_MemWrite); -- REG 9
	ID_EX_Branch_reg : reg1 port map (clock, ResetB, Branch, ID_EX_Branch); -- REG 10
	ID_EX_Jump_reg : reg1 port map (clock, ResetB, IF_ID_Jumpmuxout, ID_EX_Jump); -- REG 11
	ID_EX_PC_reg : regM generic map (n=>4) port map (clock, reset, IF_ID_PC, ID_EX_PC); -- REG 12
	ID_EX_RegDst_reg : reg1 port map (clock, reset, RegDst, ID_EX_RegDst); -- REG 13
	ID_EX_ALUSrc_reg : reg1 port map (clock, reset, ALUSrc, ID_EX_ALUSrc); -- REG 14
	ID_EX_ALUOP_reg : regM generic map (n=>2) port map (clock, reset, ALUOp, ID_EX_ALUOP); -- REG 15
	ID_EX_AddSub_reg : reg1 port map (clock, reset, add_sub, ID_EX_AddSub); -- REG 16
	ID_EX_MemtoReg_reg : reg1 port map (clock, reset, MemtoReg, ID_EX_MemtoReg); -- REG 17

	---------- EX STAGE --------------------------------------------
	alu_ins : alu port map (ALUFwd1_muxout, ALUFwd2_muxout, ID_EX_AddSub, ID_EX_ALUOP, sum, zero2); 
	writeaddress_reg_mux : mux2to1 generic map (n=>4) port map (ID_EX_RegDst, ID_EX_ReadPort2, ID_EX_WriteAddr, write_address);	
	alusrc_mux : mux2to1 generic map (n=>4) port map (ID_EX_ALUSrc, ID_EX_Src2, ID_EX_imm, ALU_Input);	-- 4 & 5
	BranchSignal <= ID_EX_Branch and zero2;
	br_mux : mux2to1 generic map (n=>4) port map (BranchSignal, ID_EX_PC, ID_EX_imm, brmux_out);	
	jump_mux : mux2to1 generic map (n=>4) port map (ID_EX_Jump, brmux_out, ID_EX_imm, jumpmux_out);
	
	fwdunit : forwarding_unit port map (ID_EX_ReadPort1, ID_EX_ReadPort2, EX_MEM_WriteAddr, MEM_WB_WriteAddr, ID_EX_RegWrite, EX_MEM_RegWrite, MEM_WB_RegWrite, forwardA, forwardB);
	ALUFwd_mux1 : mux4to1 generic map (n=>4) port map (ID_EX_Src1, EX_MEM_ALUout, dmux_out, "ZZZZ", forwardA, ALUFwd1_muxout);	
	ALUFwd_mux2 : mux4to1 generic map (n=>4) port map (ALU_Input, EX_MEM_ALUout, dmux_out, "ZZZZ", forwardB, ALUFwd2_muxout);	
	
	---------- EX/MEM register --------------------------------------
	EX_MEM_ALUOut_reg : regM generic map (n=>4) port map (clock, reset, sum, EX_MEM_ALUout); -- REG 18
	--EX_MEM_PC_reg : regM generic map (n=>4) port map (clock, reset, brmux_out, EX_MEM_PC); -- REG 19
	EX_MEM_MemWrite_reg : reg1 port map (clock, reset, ID_EX_MemWrite, EX_MEM_MemWrite); -- REG 20
	EX_MEM_RegWrite_reg : reg1 port map (clock, reset, ID_EX_RegWrite, EX_MEM_RegWrite); -- REG 21
	EX_MEM_MemtoReg_reg : reg1 port map (clock, reset, ID_EX_MemtoReg, EX_MEM_MemtoReg); -- REG 22
	EX_MEM_Src2_reg : regM generic map (n=>4) port map (clock, reset, ID_EX_Src2, EX_MEM_Src2); -- REG 23
	EX_MEM_WriteAddr_reg : regM generic map (n=>4) port map (clock, reset, write_address, EX_MEM_WriteAddr); -- REG 24
	
	---------- MEM STAGE --------------------------------------------
	dm : data_memory port map (clock, reset, EX_MEM_MemWrite, EX_MEM_ALUout, "ZZZZ", EX_MEM_ALUout, EX_MEM_Src2, DM_out, Dummy2);
	
	---------- MEM/WB register --------------------------------------
	MEM_WB_ALUOut_reg : regM generic map (n=>4) port map (clock, reset, EX_MEM_ALUout, MEM_WB_ALUOut); -- REG 25
	--MEM_WB_PC_reg : regM generic map (n=>4) port map (clock, reset, EX_MEM_PC, MEM_WB_PC); -- REG 26	
	MEM_WB_MemtoReg_reg : reg1 port map (clock, reset, EX_MEM_MemtoReg, MEM_WB_MemtoReg); -- REG 27	
	MEM_WB_DMout_reg : regM generic map (n=>4) port map (clock, reset, DM_out, MEM_WB_DMout); -- REG 28
	MEM_WB_WriteAddr_reg : regM generic map (n=>4) port map (clock, reset, EX_MEM_WriteAddr, MEM_WB_WriteAddr); -- REG 29
	MEM_WB_RegWrite_reg : reg1 port map (clock, reset, EX_MEM_RegWrite, MEM_WB_RegWrite); -- REG 30
	
	---------- WB STAGE --------------------------------------------
	dm_mux : mux2to1 generic map (n=>4) port map (MEM_WB_MemtoReg, MEM_WB_ALUOut, MEM_WB_DMout, dmux_out);	
	
	current_pc <= rout;
	result <= dmux_out;	

end behaviour;