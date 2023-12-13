-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/28/2023 16:55:21"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pipeline IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	current_pc : OUT std_logic_vector(3 DOWNTO 0);
	result : OUT std_logic_vector(3 DOWNTO 0)
	);
END pipeline;

-- Design Ports Information
-- current_pc[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pipeline IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_current_pc : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(3 DOWNTO 0);
SIGNAL \current_pc[0]~output_o\ : std_logic;
SIGNAL \current_pc[1]~output_o\ : std_logic;
SIGNAL \current_pc[2]~output_o\ : std_logic;
SIGNAL \current_pc[3]~output_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \ID_EX_imm_reg|Q[2]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \addpc|stage3|s~combout\ : std_logic;
SIGNAL \pc_mux_BranchandZero|f[2]~2_combout\ : std_logic;
SIGNAL \addpc|stage4|s~combout\ : std_logic;
SIGNAL \pc_mux_BranchandZero|f[3]~3_combout\ : std_logic;
SIGNAL \im|output[28]~1_combout\ : std_logic;
SIGNAL \id|alu_temp~0_combout\ : std_logic;
SIGNAL \ID_EX_ALUOP_reg|Q[0]~feeder_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage1|f[0]~0_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|r3|Q[0]~feeder_combout\ : std_logic;
SIGNAL \im|stage_dec|s2|y[2]~0_combout\ : std_logic;
SIGNAL \ID_EX_RegDst_reg|Q~feeder_combout\ : std_logic;
SIGNAL \ID_EX_RegDst_reg|Q~q\ : std_logic;
SIGNAL \im|output[11]~3_combout\ : std_logic;
SIGNAL \ID_EX_WriteAddr_reg|Q[0]~feeder_combout\ : std_logic;
SIGNAL \writeaddress_reg_mux|f[0]~0_combout\ : std_logic;
SIGNAL \id|alu_temp~1_combout\ : std_logic;
SIGNAL \ID_EX_RegWrite_reg|Q~q\ : std_logic;
SIGNAL \EX_MEM_RegWrite_reg|Q~feeder_combout\ : std_logic;
SIGNAL \EX_MEM_RegWrite_reg|Q~q\ : std_logic;
SIGNAL \MEM_WB_RegWrite_reg|Q~q\ : std_logic;
SIGNAL \EX_MEM_WriteAddr_reg|Q[2]~feeder_combout\ : std_logic;
SIGNAL \im|output[12]~2_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|r2|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|r0|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~2_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf|value1[0]~2_combout\ : std_logic;
SIGNAL \rf|value1[0]~3_combout\ : std_logic;
SIGNAL \rf|r15|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m15|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|m15|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf|m13|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|m12|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m14|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|r12|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m12|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|value1[0]~0_combout\ : std_logic;
SIGNAL \rf|value1[0]~1_combout\ : std_logic;
SIGNAL \rf|value1[0]~4_combout\ : std_logic;
SIGNAL \fwdunit|forwardB[0]~0_combout\ : std_logic;
SIGNAL \fwdunit|forwardB[0]~1_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage2|s~0_combout\ : std_logic;
SIGNAL \fwdunit|forwardB[1]~2_combout\ : std_logic;
SIGNAL \fwdunit|forwardB[1]~3_combout\ : std_logic;
SIGNAL \fwdunit|forwardB[1]~4_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage2|s~1_combout\ : std_logic;
SIGNAL \ID_EX_Branch_reg|Q~q\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage3|f[1]~1_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[1]~1_combout\ : std_logic;
SIGNAL \rf|r3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~4_combout\ : std_logic;
SIGNAL \rf|r0|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[1]~12_combout\ : std_logic;
SIGNAL \rf|value1[1]~13_combout\ : std_logic;
SIGNAL \rf|r15|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r14|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r12|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[1]~10_combout\ : std_logic;
SIGNAL \rf|value1[1]~11_combout\ : std_logic;
SIGNAL \rf|value1[1]~14_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage3|s~0_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage3|s~1_combout\ : std_logic;
SIGNAL \ResetB~0_combout\ : std_logic;
SIGNAL \ResetB~combout\ : std_logic;
SIGNAL \id|Equal5~0_combout\ : std_logic;
SIGNAL \ID_EX_AddSub_reg|Q~q\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage3|f[2]~0_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~3_combout\ : std_logic;
SIGNAL \rf|r3|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r2|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[2]~7_combout\ : std_logic;
SIGNAL \rf|value1[2]~8_combout\ : std_logic;
SIGNAL \rf|m12|stage3|f[2]~2_combout\ : std_logic;
SIGNAL \rf|r15|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r12|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r14|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[2]~5_combout\ : std_logic;
SIGNAL \rf|r13|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[2]~6_combout\ : std_logic;
SIGNAL \rf|value1[2]~9_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage4|s~0_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage4|s~1_combout\ : std_logic;
SIGNAL \BranchSignal~0_combout\ : std_logic;
SIGNAL \pc_mux_BranchandZero|f[1]~1_combout\ : std_logic;
SIGNAL \im|output[0]~0_combout\ : std_logic;
SIGNAL \pc_mux_BranchandZero|f[0]~0_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage3|f[3]~2_combout\ : std_logic;
SIGNAL \MEM_WB_ALUOut_reg|Q[3]~feeder_combout\ : std_logic;
SIGNAL \ID_EX_imm_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM_WB_WriteAddr_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IF_ID_Ins_reg|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \MEM_WB_ALUOut_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_src1_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_ReadPort1_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EX_MEM_ALUOut_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EX_MEM_WriteAddr_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_ALUOP_reg|Q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \rf|r13|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r14|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r12|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r15|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r0|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_WriteAddr_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \im|stage_dec|s2|y\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_ResetB~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
current_pc <= ww_current_pc;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_ResetB~combout\ <= NOT \ResetB~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\current_pc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|Q\(0),
	devoe => ww_devoe,
	o => \current_pc[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\current_pc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|Q\(1),
	devoe => ww_devoe,
	o => \current_pc[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\current_pc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|Q\(2),
	devoe => ww_devoe,
	o => \current_pc[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\current_pc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|Q\(3),
	devoe => ww_devoe,
	o => \current_pc[3]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB_ALUOut_reg|Q\(0),
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB_ALUOut_reg|Q\(1),
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB_ALUOut_reg|Q\(2),
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB_ALUOut_reg|Q\(3),
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: LCCOMB_X114_Y40_N2
\ID_EX_imm_reg|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_imm_reg|Q[2]~feeder_combout\ = \IF_ID_Ins_reg|Q\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID_Ins_reg|Q\(28),
	combout => \ID_EX_imm_reg|Q[2]~feeder_combout\);

-- Location: IOIBUF_X115_Y17_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X114_Y40_N3
\ID_EX_imm_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_imm_reg|Q[2]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_imm_reg|Q\(2));

-- Location: LCCOMB_X112_Y36_N12
\addpc|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage3|s~combout\ = \pc|Q\(2) $ (((\pc|Q\(1) & \pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \addpc|stage3|s~combout\);

-- Location: LCCOMB_X111_Y36_N0
\pc_mux_BranchandZero|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux_BranchandZero|f[2]~2_combout\ = (\BranchSignal~0_combout\ & (\ID_EX_imm_reg|Q\(2))) # (!\BranchSignal~0_combout\ & ((\addpc|stage3|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_imm_reg|Q\(2),
	datac => \addpc|stage3|s~combout\,
	datad => \BranchSignal~0_combout\,
	combout => \pc_mux_BranchandZero|f[2]~2_combout\);

-- Location: FF_X111_Y36_N1
\pc|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \pc_mux_BranchandZero|f[2]~2_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(2));

-- Location: LCCOMB_X112_Y36_N30
\addpc|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage4|s~combout\ = \pc|Q\(3) $ (((\pc|Q\(1) & (\pc|Q\(2) & \pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(3),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \addpc|stage4|s~combout\);

-- Location: LCCOMB_X111_Y36_N26
\pc_mux_BranchandZero|f[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux_BranchandZero|f[3]~3_combout\ = (\BranchSignal~0_combout\ & (\ID_EX_ReadPort1_reg|Q\(2))) # (!\BranchSignal~0_combout\ & ((\addpc|stage4|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX_ReadPort1_reg|Q\(2),
	datac => \addpc|stage4|s~combout\,
	datad => \BranchSignal~0_combout\,
	combout => \pc_mux_BranchandZero|f[3]~3_combout\);

-- Location: FF_X111_Y36_N27
\pc|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \pc_mux_BranchandZero|f[3]~3_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(3));

-- Location: LCCOMB_X112_Y36_N10
\im|output[28]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[28]~1_combout\ = (\pc|Q\(3)) # ((\pc|Q\(2) & ((\pc|Q\(1)) # (\pc|Q\(0)))) # (!\pc|Q\(2) & ((!\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(3),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \im|output[28]~1_combout\);

-- Location: LCCOMB_X112_Y36_N26
\im|stage_dec|s2|y[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|stage_dec|s2|y\(2) = ((\pc|Q\(3)) # ((\pc|Q\(2)) # (\pc|Q\(0)))) # (!\pc|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(3),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \im|stage_dec|s2|y\(2));

-- Location: FF_X112_Y36_N27
\IF_ID_Ins_reg|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|stage_dec|s2|y\(2),
	clrn => \ALT_INV_ResetB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_Ins_reg|Q\(5));

-- Location: LCCOMB_X112_Y36_N24
\id|alu_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|alu_temp~0_combout\ = (!\IF_ID_Ins_reg|Q\(0) & (\IF_ID_Ins_reg|Q\(5) & !\IF_ID_Ins_reg|Q\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID_Ins_reg|Q\(0),
	datac => \IF_ID_Ins_reg|Q\(5),
	datad => \IF_ID_Ins_reg|Q\(28),
	combout => \id|alu_temp~0_combout\);

-- Location: LCCOMB_X114_Y40_N8
\ID_EX_ALUOP_reg|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_ALUOP_reg|Q[0]~feeder_combout\ = \id|alu_temp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \id|alu_temp~0_combout\,
	combout => \ID_EX_ALUOP_reg|Q[0]~feeder_combout\);

-- Location: FF_X114_Y40_N9
\ID_EX_ALUOP_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_ALUOP_reg|Q[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_ALUOP_reg|Q\(0));

-- Location: LCCOMB_X111_Y36_N8
\alu_ins|mux4to1_ins|stage1|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage1|f[0]~0_combout\ = (!\ID_EX_ALUOP_reg|Q\(0) & \alu_ins|add_ins|stage4|s~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX_ALUOP_reg|Q\(0),
	datac => \alu_ins|add_ins|stage4|s~1_combout\,
	combout => \alu_ins|mux4to1_ins|stage1|f[0]~0_combout\);

-- Location: FF_X111_Y36_N9
\EX_MEM_ALUOut_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu_ins|mux4to1_ins|stage1|f[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_ALUOut_reg|Q\(0));

-- Location: FF_X110_Y36_N11
\MEM_WB_ALUOut_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM_ALUOut_reg|Q\(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_ALUOut_reg|Q\(0));

-- Location: LCCOMB_X110_Y36_N8
\rf|m1|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~0_combout\ = (\reset~input_o\) # (\MEM_WB_ALUOut_reg|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \MEM_WB_ALUOut_reg|Q\(0),
	combout => \rf|m1|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X114_Y36_N26
\rf|r3|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[0]~feeder_combout\ = \rf|m1|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f[0]~0_combout\,
	combout => \rf|r3|Q[0]~feeder_combout\);

-- Location: LCCOMB_X112_Y36_N8
\im|stage_dec|s2|y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|stage_dec|s2|y[2]~0_combout\ = (\pc|Q\(2)) # ((\pc|Q\(3)) # (!\pc|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(1),
	combout => \im|stage_dec|s2|y[2]~0_combout\);

-- Location: FF_X112_Y36_N9
\IF_ID_Ins_reg|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|stage_dec|s2|y[2]~0_combout\,
	clrn => \ALT_INV_ResetB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_Ins_reg|Q\(16));

-- Location: FF_X110_Y36_N5
\ID_EX_ReadPort1_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \IF_ID_Ins_reg|Q\(16),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_ReadPort1_reg|Q\(0));

-- Location: LCCOMB_X114_Y40_N12
\ID_EX_RegDst_reg|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_RegDst_reg|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \ID_EX_RegDst_reg|Q~feeder_combout\);

-- Location: FF_X114_Y40_N13
\ID_EX_RegDst_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_RegDst_reg|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_RegDst_reg|Q~q\);

-- Location: LCCOMB_X112_Y36_N18
\im|output[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[11]~3_combout\ = (\pc|Q\(3)) # ((\pc|Q\(1) & (\pc|Q\(2))) # (!\pc|Q\(1) & ((\pc|Q\(0)) # (!\pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(3),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \im|output[11]~3_combout\);

-- Location: FF_X112_Y36_N19
\IF_ID_Ins_reg|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[11]~3_combout\,
	clrn => \ALT_INV_ResetB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_Ins_reg|Q\(11));

-- Location: LCCOMB_X114_Y40_N22
\ID_EX_WriteAddr_reg|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_WriteAddr_reg|Q[0]~feeder_combout\ = \IF_ID_Ins_reg|Q\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID_Ins_reg|Q\(11),
	combout => \ID_EX_WriteAddr_reg|Q[0]~feeder_combout\);

-- Location: FF_X114_Y40_N23
\ID_EX_WriteAddr_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_WriteAddr_reg|Q[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_WriteAddr_reg|Q\(0));

-- Location: LCCOMB_X111_Y36_N28
\writeaddress_reg_mux|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeaddress_reg_mux|f[0]~0_combout\ = (\ID_EX_RegDst_reg|Q~q\ & ((\ID_EX_WriteAddr_reg|Q\(0)))) # (!\ID_EX_RegDst_reg|Q~q\ & (\ID_EX_ReadPort1_reg|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(0),
	datac => \ID_EX_RegDst_reg|Q~q\,
	datad => \ID_EX_WriteAddr_reg|Q\(0),
	combout => \writeaddress_reg_mux|f[0]~0_combout\);

-- Location: FF_X111_Y36_N29
\EX_MEM_WriteAddr_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \writeaddress_reg_mux|f[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_WriteAddr_reg|Q\(0));

-- Location: FF_X110_Y36_N3
\MEM_WB_WriteAddr_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM_WriteAddr_reg|Q\(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_WriteAddr_reg|Q\(0));

-- Location: LCCOMB_X112_Y36_N28
\id|alu_temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|alu_temp~1_combout\ = (!\IF_ID_Ins_reg|Q\(0) & !\IF_ID_Ins_reg|Q\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID_Ins_reg|Q\(0),
	datad => \IF_ID_Ins_reg|Q\(28),
	combout => \id|alu_temp~1_combout\);

-- Location: FF_X112_Y36_N29
\ID_EX_RegWrite_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \id|alu_temp~1_combout\,
	clrn => \ALT_INV_ResetB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_RegWrite_reg|Q~q\);

-- Location: LCCOMB_X111_Y36_N18
\EX_MEM_RegWrite_reg|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM_RegWrite_reg|Q~feeder_combout\ = \ID_EX_RegWrite_reg|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX_RegWrite_reg|Q~q\,
	combout => \EX_MEM_RegWrite_reg|Q~feeder_combout\);

-- Location: FF_X111_Y36_N19
\EX_MEM_RegWrite_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \EX_MEM_RegWrite_reg|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_RegWrite_reg|Q~q\);

-- Location: FF_X110_Y36_N23
\MEM_WB_RegWrite_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM_RegWrite_reg|Q~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_RegWrite_reg|Q~q\);

-- Location: LCCOMB_X109_Y36_N20
\EX_MEM_WriteAddr_reg|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM_WriteAddr_reg|Q[2]~feeder_combout\ = \ID_EX_ReadPort1_reg|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX_ReadPort1_reg|Q\(2),
	combout => \EX_MEM_WriteAddr_reg|Q[2]~feeder_combout\);

-- Location: FF_X109_Y36_N21
\EX_MEM_WriteAddr_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \EX_MEM_WriteAddr_reg|Q[2]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_WriteAddr_reg|Q\(2));

-- Location: FF_X110_Y36_N19
\MEM_WB_WriteAddr_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM_WriteAddr_reg|Q\(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_WriteAddr_reg|Q\(2));

-- Location: LCCOMB_X112_Y36_N22
\im|output[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[12]~2_combout\ = (\pc|Q\(3)) # ((\pc|Q\(2)) # (\pc|Q\(1) $ (!\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(3),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \im|output[12]~2_combout\);

-- Location: FF_X112_Y36_N23
\IF_ID_Ins_reg|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[12]~2_combout\,
	clrn => \ALT_INV_ResetB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_Ins_reg|Q\(12));

-- Location: FF_X110_Y36_N31
\ID_EX_ReadPort1_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \IF_ID_Ins_reg|Q\(12),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_ReadPort1_reg|Q\(1));

-- Location: FF_X110_Y36_N27
\EX_MEM_WriteAddr_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \ID_EX_ReadPort1_reg|Q\(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_WriteAddr_reg|Q\(1));

-- Location: FF_X110_Y36_N9
\MEM_WB_WriteAddr_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM_WriteAddr_reg|Q\(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_WriteAddr_reg|Q\(1));

-- Location: LCCOMB_X114_Y36_N28
\rf|m3|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f[0]~0_combout\ = (\MEM_WB_RegWrite_reg|Q~q\ & (!\MEM_WB_WriteAddr_reg|Q\(2) & \MEM_WB_WriteAddr_reg|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RegWrite_reg|Q~q\,
	datac => \MEM_WB_WriteAddr_reg|Q\(2),
	datad => \MEM_WB_WriteAddr_reg|Q\(1),
	combout => \rf|m3|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X114_Y36_N24
\rf|m3|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((\MEM_WB_WriteAddr_reg|Q\(0) & \rf|m3|stage3|f[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \MEM_WB_WriteAddr_reg|Q\(0),
	datad => \rf|m3|stage3|f[0]~0_combout\,
	combout => \rf|m3|stage3|f[0]~1_combout\);

-- Location: FF_X114_Y36_N27
\rf|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r3|Q[0]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(0));

-- Location: LCCOMB_X110_Y36_N2
\rf|m0|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~0_combout\ = (!\reset~input_o\ & \MEM_WB_ALUOut_reg|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \MEM_WB_ALUOut_reg|Q\(0),
	combout => \rf|m0|stage3|f~0_combout\);

-- Location: LCCOMB_X114_Y36_N8
\rf|r2|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r2|Q[0]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r2|Q[0]~feeder_combout\);

-- Location: LCCOMB_X114_Y36_N6
\rf|m2|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f~0_combout\ = (\reset~input_o\) # ((!\MEM_WB_WriteAddr_reg|Q\(0) & \rf|m3|stage3|f[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \MEM_WB_WriteAddr_reg|Q\(0),
	datad => \rf|m3|stage3|f[0]~0_combout\,
	combout => \rf|m2|stage3|f~0_combout\);

-- Location: FF_X114_Y36_N9
\rf|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r2|Q[0]~feeder_combout\,
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(0));

-- Location: LCCOMB_X113_Y36_N6
\rf|r0|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r0|Q[0]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r0|Q[0]~feeder_combout\);

-- Location: LCCOMB_X110_Y36_N22
\rf|m0|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~1_combout\ = (!\MEM_WB_WriteAddr_reg|Q\(1) & (\MEM_WB_RegWrite_reg|Q~q\ & !\MEM_WB_WriteAddr_reg|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB_WriteAddr_reg|Q\(1),
	datac => \MEM_WB_RegWrite_reg|Q~q\,
	datad => \MEM_WB_WriteAddr_reg|Q\(2),
	combout => \rf|m0|stage3|f~1_combout\);

-- Location: LCCOMB_X113_Y36_N4
\rf|m0|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~2_combout\ = (\reset~input_o\) # ((!\MEM_WB_WriteAddr_reg|Q\(0) & \rf|m0|stage3|f~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \MEM_WB_WriteAddr_reg|Q\(0),
	datad => \rf|m0|stage3|f~1_combout\,
	combout => \rf|m0|stage3|f~2_combout\);

-- Location: FF_X113_Y36_N7
\rf|r0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r0|Q[0]~feeder_combout\,
	ena => \rf|m0|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(0));

-- Location: LCCOMB_X113_Y36_N22
\rf|m1|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((\MEM_WB_WriteAddr_reg|Q\(0) & \rf|m0|stage3|f~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \MEM_WB_WriteAddr_reg|Q\(0),
	datad => \rf|m0|stage3|f~1_combout\,
	combout => \rf|m1|stage3|f[0]~1_combout\);

-- Location: FF_X113_Y36_N25
\rf|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f[0]~0_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(0));

-- Location: LCCOMB_X113_Y36_N24
\rf|value1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~2_combout\ = (\IF_ID_Ins_reg|Q\(12) & (((\IF_ID_Ins_reg|Q\(16))))) # (!\IF_ID_Ins_reg|Q\(12) & ((\IF_ID_Ins_reg|Q\(16) & ((\rf|r1|Q\(0)))) # (!\IF_ID_Ins_reg|Q\(16) & (\rf|r0|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r0|Q\(0),
	datab => \IF_ID_Ins_reg|Q\(12),
	datac => \rf|r1|Q\(0),
	datad => \IF_ID_Ins_reg|Q\(16),
	combout => \rf|value1[0]~2_combout\);

-- Location: LCCOMB_X113_Y36_N8
\rf|value1[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~3_combout\ = (\IF_ID_Ins_reg|Q\(12) & ((\rf|value1[0]~2_combout\ & (\rf|r3|Q\(0))) # (!\rf|value1[0]~2_combout\ & ((\rf|r2|Q\(0)))))) # (!\IF_ID_Ins_reg|Q\(12) & (((\rf|value1[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(0),
	datab => \IF_ID_Ins_reg|Q\(12),
	datac => \rf|r2|Q\(0),
	datad => \rf|value1[0]~2_combout\,
	combout => \rf|value1[0]~3_combout\);

-- Location: LCCOMB_X112_Y37_N4
\rf|r15|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r15|Q[0]~feeder_combout\ = \rf|m1|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f[0]~0_combout\,
	combout => \rf|r15|Q[0]~feeder_combout\);

-- Location: LCCOMB_X111_Y37_N12
\rf|m15|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m15|stage3|f[0]~0_combout\ = (\MEM_WB_RegWrite_reg|Q~q\ & (\MEM_WB_WriteAddr_reg|Q\(0) & \MEM_WB_WriteAddr_reg|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB_RegWrite_reg|Q~q\,
	datac => \MEM_WB_WriteAddr_reg|Q\(0),
	datad => \MEM_WB_WriteAddr_reg|Q\(2),
	combout => \rf|m15|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X112_Y37_N30
\rf|m15|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m15|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((\MEM_WB_WriteAddr_reg|Q\(1) & \rf|m15|stage3|f[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \MEM_WB_WriteAddr_reg|Q\(1),
	datad => \rf|m15|stage3|f[0]~0_combout\,
	combout => \rf|m15|stage3|f[0]~1_combout\);

-- Location: FF_X112_Y37_N5
\rf|r15|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r15|Q[0]~feeder_combout\,
	ena => \rf|m15|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(0));

-- Location: LCCOMB_X111_Y37_N20
\rf|m13|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m13|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((!\MEM_WB_WriteAddr_reg|Q\(1) & \rf|m15|stage3|f[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_WriteAddr_reg|Q\(1),
	datab => \reset~input_o\,
	datad => \rf|m15|stage3|f[0]~0_combout\,
	combout => \rf|m13|stage3|f[0]~0_combout\);

-- Location: FF_X111_Y37_N29
\rf|r13|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f[0]~0_combout\,
	sload => VCC,
	ena => \rf|m13|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(0));

-- Location: LCCOMB_X110_Y36_N18
\rf|m12|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m12|stage3|f~0_combout\ = (\MEM_WB_RegWrite_reg|Q~q\ & (\MEM_WB_WriteAddr_reg|Q\(2) & !\MEM_WB_WriteAddr_reg|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RegWrite_reg|Q~q\,
	datac => \MEM_WB_WriteAddr_reg|Q\(2),
	datad => \MEM_WB_WriteAddr_reg|Q\(0),
	combout => \rf|m12|stage3|f~0_combout\);

-- Location: LCCOMB_X111_Y37_N26
\rf|m14|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m14|stage3|f~0_combout\ = (\reset~input_o\) # ((\MEM_WB_WriteAddr_reg|Q\(1) & \rf|m12|stage3|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_WriteAddr_reg|Q\(1),
	datab => \reset~input_o\,
	datad => \rf|m12|stage3|f~0_combout\,
	combout => \rf|m14|stage3|f~0_combout\);

-- Location: FF_X111_Y37_N11
\rf|r14|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r14|Q\(0));

-- Location: LCCOMB_X109_Y36_N6
\rf|r12|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r12|Q[0]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r12|Q[0]~feeder_combout\);

-- Location: LCCOMB_X109_Y36_N12
\rf|m12|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m12|stage3|f~1_combout\ = (\reset~input_o\) # ((!\MEM_WB_WriteAddr_reg|Q\(1) & \rf|m12|stage3|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \MEM_WB_WriteAddr_reg|Q\(1),
	datad => \rf|m12|stage3|f~0_combout\,
	combout => \rf|m12|stage3|f~1_combout\);

-- Location: FF_X109_Y36_N7
\rf|r12|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r12|Q[0]~feeder_combout\,
	ena => \rf|m12|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(0));

-- Location: LCCOMB_X111_Y37_N10
\rf|value1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~0_combout\ = (\IF_ID_Ins_reg|Q\(16) & (\IF_ID_Ins_reg|Q\(12))) # (!\IF_ID_Ins_reg|Q\(16) & ((\IF_ID_Ins_reg|Q\(12) & (\rf|r14|Q\(0))) # (!\IF_ID_Ins_reg|Q\(12) & ((\rf|r12|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(16),
	datab => \IF_ID_Ins_reg|Q\(12),
	datac => \rf|r14|Q\(0),
	datad => \rf|r12|Q\(0),
	combout => \rf|value1[0]~0_combout\);

-- Location: LCCOMB_X111_Y37_N28
\rf|value1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~1_combout\ = (\IF_ID_Ins_reg|Q\(16) & ((\rf|value1[0]~0_combout\ & (\rf|r15|Q\(0))) # (!\rf|value1[0]~0_combout\ & ((\rf|r13|Q\(0)))))) # (!\IF_ID_Ins_reg|Q\(16) & (((\rf|value1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r15|Q\(0),
	datab => \IF_ID_Ins_reg|Q\(16),
	datac => \rf|r13|Q\(0),
	datad => \rf|value1[0]~0_combout\,
	combout => \rf|value1[0]~1_combout\);

-- Location: LCCOMB_X111_Y36_N30
\rf|value1[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~4_combout\ = (\IF_ID_Ins_reg|Q\(0) & ((\rf|value1[0]~1_combout\))) # (!\IF_ID_Ins_reg|Q\(0) & (\rf|value1[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID_Ins_reg|Q\(0),
	datac => \rf|value1[0]~3_combout\,
	datad => \rf|value1[0]~1_combout\,
	combout => \rf|value1[0]~4_combout\);

-- Location: FF_X111_Y36_N31
\ID_EX_src1_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value1[0]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_src1_reg|Q\(0));

-- Location: LCCOMB_X110_Y36_N26
\fwdunit|forwardB[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwdunit|forwardB[0]~0_combout\ = (\ID_EX_ReadPort1_reg|Q\(1) & (\EX_MEM_WriteAddr_reg|Q\(1) & (\ID_EX_ReadPort1_reg|Q\(0) $ (!\EX_MEM_WriteAddr_reg|Q\(0))))) # (!\ID_EX_ReadPort1_reg|Q\(1) & (!\EX_MEM_WriteAddr_reg|Q\(1) & (\ID_EX_ReadPort1_reg|Q\(0) $ 
-- (!\EX_MEM_WriteAddr_reg|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(1),
	datab => \ID_EX_ReadPort1_reg|Q\(0),
	datac => \EX_MEM_WriteAddr_reg|Q\(1),
	datad => \EX_MEM_WriteAddr_reg|Q\(0),
	combout => \fwdunit|forwardB[0]~0_combout\);

-- Location: LCCOMB_X110_Y36_N24
\fwdunit|forwardB[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwdunit|forwardB[0]~1_combout\ = (\EX_MEM_RegWrite_reg|Q~q\ & (\ID_EX_ReadPort1_reg|Q\(2) $ (!\EX_MEM_WriteAddr_reg|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EX_MEM_RegWrite_reg|Q~q\,
	datac => \ID_EX_ReadPort1_reg|Q\(2),
	datad => \EX_MEM_WriteAddr_reg|Q\(2),
	combout => \fwdunit|forwardB[0]~1_combout\);

-- Location: LCCOMB_X110_Y36_N28
\alu_ins|add_ins|stage2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage2|s~0_combout\ = (\fwdunit|forwardB[0]~0_combout\ & ((\fwdunit|forwardB[0]~1_combout\ & ((\EX_MEM_ALUOut_reg|Q\(0)))) # (!\fwdunit|forwardB[0]~1_combout\ & (\ID_EX_src1_reg|Q\(0))))) # (!\fwdunit|forwardB[0]~0_combout\ & 
-- (\ID_EX_src1_reg|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_src1_reg|Q\(0),
	datab => \EX_MEM_ALUOut_reg|Q\(0),
	datac => \fwdunit|forwardB[0]~0_combout\,
	datad => \fwdunit|forwardB[0]~1_combout\,
	combout => \alu_ins|add_ins|stage2|s~0_combout\);

-- Location: LCCOMB_X110_Y36_N4
\fwdunit|forwardB[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwdunit|forwardB[1]~2_combout\ = (\ID_EX_ReadPort1_reg|Q\(1) & (\MEM_WB_WriteAddr_reg|Q\(1) & (\MEM_WB_WriteAddr_reg|Q\(0) $ (!\ID_EX_ReadPort1_reg|Q\(0))))) # (!\ID_EX_ReadPort1_reg|Q\(1) & (!\MEM_WB_WriteAddr_reg|Q\(1) & (\MEM_WB_WriteAddr_reg|Q\(0) $ 
-- (!\ID_EX_ReadPort1_reg|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(1),
	datab => \MEM_WB_WriteAddr_reg|Q\(0),
	datac => \ID_EX_ReadPort1_reg|Q\(0),
	datad => \MEM_WB_WriteAddr_reg|Q\(1),
	combout => \fwdunit|forwardB[1]~2_combout\);

-- Location: LCCOMB_X110_Y36_N30
\fwdunit|forwardB[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwdunit|forwardB[1]~3_combout\ = (\MEM_WB_RegWrite_reg|Q~q\ & (\ID_EX_ReadPort1_reg|Q\(2) $ (!\MEM_WB_WriteAddr_reg|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(2),
	datab => \MEM_WB_WriteAddr_reg|Q\(2),
	datad => \MEM_WB_RegWrite_reg|Q~q\,
	combout => \fwdunit|forwardB[1]~3_combout\);

-- Location: LCCOMB_X110_Y36_N20
\fwdunit|forwardB[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwdunit|forwardB[1]~4_combout\ = (\fwdunit|forwardB[1]~2_combout\ & (\fwdunit|forwardB[1]~3_combout\ & ((!\fwdunit|forwardB[0]~1_combout\) # (!\fwdunit|forwardB[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fwdunit|forwardB[1]~2_combout\,
	datab => \fwdunit|forwardB[1]~3_combout\,
	datac => \fwdunit|forwardB[0]~0_combout\,
	datad => \fwdunit|forwardB[0]~1_combout\,
	combout => \fwdunit|forwardB[1]~4_combout\);

-- Location: LCCOMB_X110_Y36_N10
\alu_ins|add_ins|stage2|s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage2|s~1_combout\ = (!\ID_EX_AddSub_reg|Q~q\ & ((\fwdunit|forwardB[1]~4_combout\ & ((\MEM_WB_ALUOut_reg|Q\(0)))) # (!\fwdunit|forwardB[1]~4_combout\ & (\alu_ins|add_ins|stage2|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_AddSub_reg|Q~q\,
	datab => \alu_ins|add_ins|stage2|s~0_combout\,
	datac => \MEM_WB_ALUOut_reg|Q\(0),
	datad => \fwdunit|forwardB[1]~4_combout\,
	combout => \alu_ins|add_ins|stage2|s~1_combout\);

-- Location: FF_X110_Y36_N15
\ID_EX_Branch_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \id|Equal5~0_combout\,
	clrn => \ALT_INV_ResetB~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_Branch_reg|Q~q\);

-- Location: LCCOMB_X111_Y36_N14
\alu_ins|mux4to1_ins|stage3|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage3|f[1]~1_combout\ = (\ID_EX_ALUOP_reg|Q\(0) & \alu_ins|add_ins|stage2|s~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX_ALUOP_reg|Q\(0),
	datad => \alu_ins|add_ins|stage2|s~1_combout\,
	combout => \alu_ins|mux4to1_ins|stage3|f[1]~1_combout\);

-- Location: FF_X111_Y36_N15
\EX_MEM_ALUOut_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu_ins|mux4to1_ins|stage3|f[1]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_ALUOut_reg|Q\(1));

-- Location: FF_X110_Y36_N7
\MEM_WB_ALUOut_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM_ALUOut_reg|Q\(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_ALUOut_reg|Q\(1));

-- Location: LCCOMB_X109_Y36_N16
\rf|m2|stage3|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[1]~1_combout\ = (\reset~input_o\) # (\MEM_WB_ALUOut_reg|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \MEM_WB_ALUOut_reg|Q\(1),
	combout => \rf|m2|stage3|f[1]~1_combout\);

-- Location: LCCOMB_X114_Y36_N18
\rf|r3|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[1]~feeder_combout\ = \rf|m2|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m2|stage3|f[1]~1_combout\,
	combout => \rf|r3|Q[1]~feeder_combout\);

-- Location: FF_X114_Y36_N19
\rf|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r3|Q[1]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(1));

-- Location: LCCOMB_X114_Y36_N20
\rf|r2|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r2|Q[1]~feeder_combout\ = \rf|m2|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m2|stage3|f[1]~1_combout\,
	combout => \rf|r2|Q[1]~feeder_combout\);

-- Location: FF_X114_Y36_N21
\rf|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r2|Q[1]~feeder_combout\,
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(1));

-- Location: LCCOMB_X112_Y36_N4
\rf|m0|stage3|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~4_combout\ = (!\reset~input_o\ & \MEM_WB_ALUOut_reg|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \MEM_WB_ALUOut_reg|Q\(1),
	combout => \rf|m0|stage3|f~4_combout\);

-- Location: LCCOMB_X113_Y36_N10
\rf|r0|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r0|Q[1]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r0|Q[1]~feeder_combout\);

-- Location: FF_X113_Y36_N11
\rf|r0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r0|Q[1]~feeder_combout\,
	ena => \rf|m0|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(1));

-- Location: FF_X113_Y36_N17
\rf|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(1));

-- Location: LCCOMB_X113_Y36_N16
\rf|value1[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~12_combout\ = (\IF_ID_Ins_reg|Q\(12) & (((\IF_ID_Ins_reg|Q\(16))))) # (!\IF_ID_Ins_reg|Q\(12) & ((\IF_ID_Ins_reg|Q\(16) & ((\rf|r1|Q\(1)))) # (!\IF_ID_Ins_reg|Q\(16) & (\rf|r0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r0|Q\(1),
	datab => \IF_ID_Ins_reg|Q\(12),
	datac => \rf|r1|Q\(1),
	datad => \IF_ID_Ins_reg|Q\(16),
	combout => \rf|value1[1]~12_combout\);

-- Location: LCCOMB_X113_Y36_N28
\rf|value1[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~13_combout\ = (\IF_ID_Ins_reg|Q\(12) & ((\rf|value1[1]~12_combout\ & (\rf|r3|Q\(1))) # (!\rf|value1[1]~12_combout\ & ((\rf|r2|Q\(1)))))) # (!\IF_ID_Ins_reg|Q\(12) & (((\rf|value1[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(1),
	datab => \IF_ID_Ins_reg|Q\(12),
	datac => \rf|r2|Q\(1),
	datad => \rf|value1[1]~12_combout\,
	combout => \rf|value1[1]~13_combout\);

-- Location: LCCOMB_X112_Y37_N20
\rf|r15|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r15|Q[1]~feeder_combout\ = \rf|m2|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m2|stage3|f[1]~1_combout\,
	combout => \rf|r15|Q[1]~feeder_combout\);

-- Location: FF_X112_Y37_N21
\rf|r15|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r15|Q[1]~feeder_combout\,
	ena => \rf|m15|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(1));

-- Location: FF_X111_Y37_N21
\rf|r13|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m13|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(1));

-- Location: LCCOMB_X111_Y37_N22
\rf|r14|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r14|Q[1]~feeder_combout\ = \rf|m2|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m2|stage3|f[1]~1_combout\,
	combout => \rf|r14|Q[1]~feeder_combout\);

-- Location: FF_X111_Y37_N23
\rf|r14|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r14|Q[1]~feeder_combout\,
	ena => \rf|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r14|Q\(1));

-- Location: LCCOMB_X109_Y36_N14
\rf|r12|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r12|Q[1]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r12|Q[1]~feeder_combout\);

-- Location: FF_X109_Y36_N15
\rf|r12|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r12|Q[1]~feeder_combout\,
	ena => \rf|m12|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(1));

-- Location: LCCOMB_X111_Y37_N16
\rf|value1[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~10_combout\ = (\IF_ID_Ins_reg|Q\(16) & (((\IF_ID_Ins_reg|Q\(12))))) # (!\IF_ID_Ins_reg|Q\(16) & ((\IF_ID_Ins_reg|Q\(12) & (\rf|r14|Q\(1))) # (!\IF_ID_Ins_reg|Q\(12) & ((\rf|r12|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r14|Q\(1),
	datab => \IF_ID_Ins_reg|Q\(16),
	datac => \IF_ID_Ins_reg|Q\(12),
	datad => \rf|r12|Q\(1),
	combout => \rf|value1[1]~10_combout\);

-- Location: LCCOMB_X111_Y37_N14
\rf|value1[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~11_combout\ = (\IF_ID_Ins_reg|Q\(16) & ((\rf|value1[1]~10_combout\ & (\rf|r15|Q\(1))) # (!\rf|value1[1]~10_combout\ & ((\rf|r13|Q\(1)))))) # (!\IF_ID_Ins_reg|Q\(16) & (((\rf|value1[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r15|Q\(1),
	datab => \IF_ID_Ins_reg|Q\(16),
	datac => \rf|r13|Q\(1),
	datad => \rf|value1[1]~10_combout\,
	combout => \rf|value1[1]~11_combout\);

-- Location: LCCOMB_X111_Y36_N4
\rf|value1[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~14_combout\ = (\IF_ID_Ins_reg|Q\(0) & ((\rf|value1[1]~11_combout\))) # (!\IF_ID_Ins_reg|Q\(0) & (\rf|value1[1]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID_Ins_reg|Q\(0),
	datac => \rf|value1[1]~13_combout\,
	datad => \rf|value1[1]~11_combout\,
	combout => \rf|value1[1]~14_combout\);

-- Location: FF_X111_Y36_N5
\ID_EX_src1_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value1[1]~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_src1_reg|Q\(1));

-- Location: LCCOMB_X110_Y36_N12
\alu_ins|add_ins|stage3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage3|s~0_combout\ = (\fwdunit|forwardB[0]~0_combout\ & ((\fwdunit|forwardB[0]~1_combout\ & ((\EX_MEM_ALUOut_reg|Q\(1)))) # (!\fwdunit|forwardB[0]~1_combout\ & (\ID_EX_src1_reg|Q\(1))))) # (!\fwdunit|forwardB[0]~0_combout\ & 
-- (\ID_EX_src1_reg|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_src1_reg|Q\(1),
	datab => \EX_MEM_ALUOut_reg|Q\(1),
	datac => \fwdunit|forwardB[0]~0_combout\,
	datad => \fwdunit|forwardB[0]~1_combout\,
	combout => \alu_ins|add_ins|stage3|s~0_combout\);

-- Location: LCCOMB_X110_Y36_N6
\alu_ins|add_ins|stage3|s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage3|s~1_combout\ = (!\ID_EX_AddSub_reg|Q~q\ & ((\fwdunit|forwardB[1]~4_combout\ & ((\MEM_WB_ALUOut_reg|Q\(1)))) # (!\fwdunit|forwardB[1]~4_combout\ & (\alu_ins|add_ins|stage3|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage3|s~0_combout\,
	datab => \ID_EX_AddSub_reg|Q~q\,
	datac => \MEM_WB_ALUOut_reg|Q\(1),
	datad => \fwdunit|forwardB[1]~4_combout\,
	combout => \alu_ins|add_ins|stage3|s~1_combout\);

-- Location: LCCOMB_X110_Y36_N14
\ResetB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetB~0_combout\ = (\ID_EX_Branch_reg|Q~q\ & !\alu_ins|add_ins|stage3|s~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX_Branch_reg|Q~q\,
	datad => \alu_ins|add_ins|stage3|s~1_combout\,
	combout => \ResetB~0_combout\);

-- Location: LCCOMB_X111_Y36_N6
ResetB : cycloneive_lcell_comb
-- Equation(s):
-- \ResetB~combout\ = (\reset~input_o\) # ((!\alu_ins|add_ins|stage2|s~1_combout\ & (!\alu_ins|add_ins|stage4|s~1_combout\ & \ResetB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage2|s~1_combout\,
	datab => \reset~input_o\,
	datac => \alu_ins|add_ins|stage4|s~1_combout\,
	datad => \ResetB~0_combout\,
	combout => \ResetB~combout\);

-- Location: FF_X112_Y36_N11
\IF_ID_Ins_reg|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[28]~1_combout\,
	clrn => \ALT_INV_ResetB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_Ins_reg|Q\(28));

-- Location: LCCOMB_X111_Y36_N16
\id|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal5~0_combout\ = (\IF_ID_Ins_reg|Q\(28) & !\IF_ID_Ins_reg|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IF_ID_Ins_reg|Q\(28),
	datad => \IF_ID_Ins_reg|Q\(0),
	combout => \id|Equal5~0_combout\);

-- Location: FF_X111_Y36_N17
\ID_EX_AddSub_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \id|Equal5~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_AddSub_reg|Q~q\);

-- Location: LCCOMB_X111_Y36_N2
\alu_ins|mux4to1_ins|stage3|f[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage3|f[2]~0_combout\ = (\ID_EX_ALUOP_reg|Q\(0) & \alu_ins|add_ins|stage3|s~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX_ALUOP_reg|Q\(0),
	datac => \alu_ins|add_ins|stage3|s~1_combout\,
	combout => \alu_ins|mux4to1_ins|stage3|f[2]~0_combout\);

-- Location: FF_X111_Y36_N3
\EX_MEM_ALUOut_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu_ins|mux4to1_ins|stage3|f[2]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_ALUOut_reg|Q\(2));

-- Location: FF_X110_Y36_N17
\MEM_WB_ALUOut_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM_ALUOut_reg|Q\(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_ALUOut_reg|Q\(2));

-- Location: LCCOMB_X114_Y36_N30
\rf|m0|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~3_combout\ = (!\reset~input_o\ & \MEM_WB_ALUOut_reg|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \MEM_WB_ALUOut_reg|Q\(2),
	combout => \rf|m0|stage3|f~3_combout\);

-- Location: LCCOMB_X114_Y36_N22
\rf|r3|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[2]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r3|Q[2]~feeder_combout\);

-- Location: FF_X114_Y36_N23
\rf|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r3|Q[2]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(2));

-- Location: LCCOMB_X114_Y36_N12
\rf|r2|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r2|Q[2]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r2|Q[2]~feeder_combout\);

-- Location: FF_X114_Y36_N13
\rf|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r2|Q[2]~feeder_combout\,
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(2));

-- Location: LCCOMB_X113_Y36_N26
\rf|r1|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[2]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r1|Q[2]~feeder_combout\);

-- Location: FF_X113_Y36_N27
\rf|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[2]~feeder_combout\,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(2));

-- Location: FF_X113_Y36_N13
\rf|r0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m0|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(2));

-- Location: LCCOMB_X113_Y36_N12
\rf|value1[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~7_combout\ = (\IF_ID_Ins_reg|Q\(12) & (((\IF_ID_Ins_reg|Q\(16))))) # (!\IF_ID_Ins_reg|Q\(12) & ((\IF_ID_Ins_reg|Q\(16) & (\rf|r1|Q\(2))) # (!\IF_ID_Ins_reg|Q\(16) & ((\rf|r0|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(2),
	datab => \IF_ID_Ins_reg|Q\(12),
	datac => \rf|r0|Q\(2),
	datad => \IF_ID_Ins_reg|Q\(16),
	combout => \rf|value1[2]~7_combout\);

-- Location: LCCOMB_X113_Y36_N30
\rf|value1[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~8_combout\ = (\IF_ID_Ins_reg|Q\(12) & ((\rf|value1[2]~7_combout\ & (\rf|r3|Q\(2))) # (!\rf|value1[2]~7_combout\ & ((\rf|r2|Q\(2)))))) # (!\IF_ID_Ins_reg|Q\(12) & (((\rf|value1[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(2),
	datab => \IF_ID_Ins_reg|Q\(12),
	datac => \rf|r2|Q\(2),
	datad => \rf|value1[2]~7_combout\,
	combout => \rf|value1[2]~8_combout\);

-- Location: LCCOMB_X109_Y36_N10
\rf|m12|stage3|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m12|stage3|f[2]~2_combout\ = (\reset~input_o\) # (\MEM_WB_ALUOut_reg|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \MEM_WB_ALUOut_reg|Q\(2),
	combout => \rf|m12|stage3|f[2]~2_combout\);

-- Location: LCCOMB_X112_Y37_N26
\rf|r15|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r15|Q[2]~feeder_combout\ = \rf|m12|stage3|f[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m12|stage3|f[2]~2_combout\,
	combout => \rf|r15|Q[2]~feeder_combout\);

-- Location: FF_X112_Y37_N27
\rf|r15|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r15|Q[2]~feeder_combout\,
	ena => \rf|m15|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(2));

-- Location: LCCOMB_X109_Y36_N24
\rf|r12|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r12|Q[2]~feeder_combout\ = \rf|m12|stage3|f[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m12|stage3|f[2]~2_combout\,
	combout => \rf|r12|Q[2]~feeder_combout\);

-- Location: FF_X109_Y36_N25
\rf|r12|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r12|Q[2]~feeder_combout\,
	ena => \rf|m12|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(2));

-- Location: LCCOMB_X111_Y37_N6
\rf|r14|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r14|Q[2]~feeder_combout\ = \rf|m12|stage3|f[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m12|stage3|f[2]~2_combout\,
	combout => \rf|r14|Q[2]~feeder_combout\);

-- Location: FF_X111_Y37_N7
\rf|r14|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r14|Q[2]~feeder_combout\,
	ena => \rf|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r14|Q\(2));

-- Location: LCCOMB_X112_Y36_N14
\rf|value1[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~5_combout\ = (\IF_ID_Ins_reg|Q\(16) & (((\IF_ID_Ins_reg|Q\(12))))) # (!\IF_ID_Ins_reg|Q\(16) & ((\IF_ID_Ins_reg|Q\(12) & ((\rf|r14|Q\(2)))) # (!\IF_ID_Ins_reg|Q\(12) & (\rf|r12|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r12|Q\(2),
	datab => \IF_ID_Ins_reg|Q\(16),
	datac => \rf|r14|Q\(2),
	datad => \IF_ID_Ins_reg|Q\(12),
	combout => \rf|value1[2]~5_combout\);

-- Location: LCCOMB_X111_Y37_N8
\rf|r13|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r13|Q[2]~feeder_combout\ = \rf|m12|stage3|f[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m12|stage3|f[2]~2_combout\,
	combout => \rf|r13|Q[2]~feeder_combout\);

-- Location: FF_X111_Y37_N9
\rf|r13|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r13|Q[2]~feeder_combout\,
	ena => \rf|m13|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(2));

-- Location: LCCOMB_X112_Y36_N16
\rf|value1[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~6_combout\ = (\IF_ID_Ins_reg|Q\(16) & ((\rf|value1[2]~5_combout\ & (\rf|r15|Q\(2))) # (!\rf|value1[2]~5_combout\ & ((\rf|r13|Q\(2)))))) # (!\IF_ID_Ins_reg|Q\(16) & (((\rf|value1[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r15|Q\(2),
	datab => \IF_ID_Ins_reg|Q\(16),
	datac => \rf|value1[2]~5_combout\,
	datad => \rf|r13|Q\(2),
	combout => \rf|value1[2]~6_combout\);

-- Location: LCCOMB_X111_Y36_N24
\rf|value1[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~9_combout\ = (\IF_ID_Ins_reg|Q\(0) & ((\rf|value1[2]~6_combout\))) # (!\IF_ID_Ins_reg|Q\(0) & (\rf|value1[2]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID_Ins_reg|Q\(0),
	datac => \rf|value1[2]~8_combout\,
	datad => \rf|value1[2]~6_combout\,
	combout => \rf|value1[2]~9_combout\);

-- Location: FF_X111_Y36_N25
\ID_EX_src1_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value1[2]~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_src1_reg|Q\(2));

-- Location: LCCOMB_X110_Y36_N0
\alu_ins|add_ins|stage4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage4|s~0_combout\ = (\fwdunit|forwardB[0]~0_combout\ & ((\fwdunit|forwardB[0]~1_combout\ & (\EX_MEM_ALUOut_reg|Q\(2))) # (!\fwdunit|forwardB[0]~1_combout\ & ((\ID_EX_src1_reg|Q\(2)))))) # (!\fwdunit|forwardB[0]~0_combout\ & 
-- (((\ID_EX_src1_reg|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_ALUOut_reg|Q\(2),
	datab => \ID_EX_src1_reg|Q\(2),
	datac => \fwdunit|forwardB[0]~0_combout\,
	datad => \fwdunit|forwardB[0]~1_combout\,
	combout => \alu_ins|add_ins|stage4|s~0_combout\);

-- Location: LCCOMB_X110_Y36_N16
\alu_ins|add_ins|stage4|s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage4|s~1_combout\ = (!\ID_EX_AddSub_reg|Q~q\ & ((\fwdunit|forwardB[1]~4_combout\ & ((\MEM_WB_ALUOut_reg|Q\(2)))) # (!\fwdunit|forwardB[1]~4_combout\ & (\alu_ins|add_ins|stage4|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_AddSub_reg|Q~q\,
	datab => \alu_ins|add_ins|stage4|s~0_combout\,
	datac => \MEM_WB_ALUOut_reg|Q\(2),
	datad => \fwdunit|forwardB[1]~4_combout\,
	combout => \alu_ins|add_ins|stage4|s~1_combout\);

-- Location: LCCOMB_X111_Y36_N10
\BranchSignal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchSignal~0_combout\ = (!\alu_ins|add_ins|stage4|s~1_combout\ & (\ID_EX_Branch_reg|Q~q\ & (!\alu_ins|add_ins|stage3|s~1_combout\ & !\alu_ins|add_ins|stage2|s~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage4|s~1_combout\,
	datab => \ID_EX_Branch_reg|Q~q\,
	datac => \alu_ins|add_ins|stage3|s~1_combout\,
	datad => \alu_ins|add_ins|stage2|s~1_combout\,
	combout => \BranchSignal~0_combout\);

-- Location: LCCOMB_X111_Y36_N22
\pc_mux_BranchandZero|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux_BranchandZero|f[1]~1_combout\ = (\BranchSignal~0_combout\ & (((\ID_EX_ReadPort1_reg|Q\(2))))) # (!\BranchSignal~0_combout\ & (\pc|Q\(0) $ (((\pc|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \ID_EX_ReadPort1_reg|Q\(2),
	datac => \pc|Q\(1),
	datad => \BranchSignal~0_combout\,
	combout => \pc_mux_BranchandZero|f[1]~1_combout\);

-- Location: FF_X111_Y36_N23
\pc|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \pc_mux_BranchandZero|f[1]~1_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(1));

-- Location: LCCOMB_X112_Y36_N20
\im|output[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[0]~0_combout\ = (\pc|Q\(3)) # (\pc|Q\(2) $ (((!\pc|Q\(1) & !\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(3),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \im|output[0]~0_combout\);

-- Location: FF_X112_Y36_N21
\IF_ID_Ins_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[0]~0_combout\,
	clrn => \ALT_INV_ResetB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_Ins_reg|Q\(0));

-- Location: FF_X110_Y36_N25
\ID_EX_ReadPort1_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \IF_ID_Ins_reg|Q\(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_ReadPort1_reg|Q\(2));

-- Location: LCCOMB_X111_Y36_N12
\pc_mux_BranchandZero|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux_BranchandZero|f[0]~0_combout\ = (\BranchSignal~0_combout\ & (\ID_EX_ReadPort1_reg|Q\(2))) # (!\BranchSignal~0_combout\ & ((!\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX_ReadPort1_reg|Q\(2),
	datac => \pc|Q\(0),
	datad => \BranchSignal~0_combout\,
	combout => \pc_mux_BranchandZero|f[0]~0_combout\);

-- Location: FF_X111_Y36_N13
\pc|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \pc_mux_BranchandZero|f[0]~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(0));

-- Location: LCCOMB_X111_Y36_N20
\alu_ins|mux4to1_ins|stage3|f[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage3|f[3]~2_combout\ = (\ID_EX_ALUOP_reg|Q\(0) & \alu_ins|add_ins|stage4|s~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX_ALUOP_reg|Q\(0),
	datac => \alu_ins|add_ins|stage4|s~1_combout\,
	combout => \alu_ins|mux4to1_ins|stage3|f[3]~2_combout\);

-- Location: FF_X111_Y36_N21
\EX_MEM_ALUOut_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu_ins|mux4to1_ins|stage3|f[3]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_ALUOut_reg|Q\(3));

-- Location: LCCOMB_X114_Y40_N28
\MEM_WB_ALUOut_reg|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB_ALUOut_reg|Q[3]~feeder_combout\ = \EX_MEM_ALUOut_reg|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EX_MEM_ALUOut_reg|Q\(3),
	combout => \MEM_WB_ALUOut_reg|Q[3]~feeder_combout\);

-- Location: FF_X114_Y40_N29
\MEM_WB_ALUOut_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEM_WB_ALUOut_reg|Q[3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_ALUOut_reg|Q\(3));

ww_current_pc(0) <= \current_pc[0]~output_o\;

ww_current_pc(1) <= \current_pc[1]~output_o\;

ww_current_pc(2) <= \current_pc[2]~output_o\;

ww_current_pc(3) <= \current_pc[3]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;
END structure;


