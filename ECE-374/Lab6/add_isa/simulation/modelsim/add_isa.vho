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

-- DATE "11/06/2023 17:49:39"

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
	current_pc : BUFFER std_logic_vector(3 DOWNTO 0);
	result : BUFFER std_logic_vector(3 DOWNTO 0)
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
-- reset	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \addpc|stage2|Cout~0_combout\ : std_logic;
SIGNAL \br_mux|f[2]~5_combout\ : std_logic;
SIGNAL \pc_mux|f~2_combout\ : std_logic;
SIGNAL \pc|Q[2]~feeder_combout\ : std_logic;
SIGNAL \br_mux|f[3]~4_combout\ : std_logic;
SIGNAL \MEM_WB_PC_reg|Q[3]~feeder_combout\ : std_logic;
SIGNAL \pc_mux|f~3_combout\ : std_logic;
SIGNAL \pc|Q[3]~feeder_combout\ : std_logic;
SIGNAL \im|output[14]~3_combout\ : std_logic;
SIGNAL \im|output[1]~2_combout\ : std_logic;
SIGNAL \im|output[27]~0_combout\ : std_logic;
SIGNAL \im|output[26]~1_combout\ : std_logic;
SIGNAL \BranchSignal~1_combout\ : std_logic;
SIGNAL \im|output[12]~8_combout\ : std_logic;
SIGNAL \im|output[11]~5_combout\ : std_logic;
SIGNAL \IF_ID_Ins_reg|Q[11]~feeder_combout\ : std_logic;
SIGNAL \id|Equal1~0_combout\ : std_logic;
SIGNAL \id|Equal2~0_combout\ : std_logic;
SIGNAL \id|alu_temp[0]~0_combout\ : std_logic;
SIGNAL \ID_EX_AddSub_reg|Q~q\ : std_logic;
SIGNAL \ID_EX_MemtoReg_reg|Q~q\ : std_logic;
SIGNAL \EX_MEM_MemtoReg_reg|Q~q\ : std_logic;
SIGNAL \MEM_WB_MemtoReg_reg|Q~feeder_combout\ : std_logic;
SIGNAL \MEM_WB_MemtoReg_reg|Q~q\ : std_logic;
SIGNAL \rf|r15|Q[0]~feeder_combout\ : std_logic;
SIGNAL \id|RegWrite~combout\ : std_logic;
SIGNAL \ID_EX_RegWrite_reg|Q~feeder_combout\ : std_logic;
SIGNAL \ID_EX_RegWrite_reg|Q~q\ : std_logic;
SIGNAL \EX_MEM_RegWrite_reg|Q~feeder_combout\ : std_logic;
SIGNAL \EX_MEM_RegWrite_reg|Q~q\ : std_logic;
SIGNAL \MEM_WB_RegWrite_reg|Q~feeder_combout\ : std_logic;
SIGNAL \MEM_WB_RegWrite_reg|Q~q\ : std_logic;
SIGNAL \rf|m9|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m15|stage3|f~0_combout\ : std_logic;
SIGNAL \im_mux|f[0]~2_combout\ : std_logic;
SIGNAL \im|output[17]~6_combout\ : std_logic;
SIGNAL \im_mux|f[1]~0_combout\ : std_logic;
SIGNAL \im|output[18]~9_combout\ : std_logic;
SIGNAL \im_mux|f[2]~1_combout\ : std_logic;
SIGNAL \rf|m7|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m7|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|value2[0]~7_combout\ : std_logic;
SIGNAL \im|output[21]~7_combout\ : std_logic;
SIGNAL \rf|m9|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|r1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|value2[0]~4_combout\ : std_logic;
SIGNAL \rf|r14|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m8|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m14|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m6|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|value2[0]~5_combout\ : std_logic;
SIGNAL \rf|value1[0]~2_combout\ : std_logic;
SIGNAL \rf|value1[0]~3_combout\ : std_logic;
SIGNAL \alusrc_mux|f[0]~0_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage1|s~0_combout\ : std_logic;
SIGNAL \rf|r7|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r15|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[2]~3_combout\ : std_logic;
SIGNAL \rf|value2[2]~0_combout\ : std_logic;
SIGNAL \rf|r1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r9|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[2]~1_combout\ : std_logic;
SIGNAL \rf|value1[2]~0_combout\ : std_logic;
SIGNAL \rf|value1[2]~1_combout\ : std_logic;
SIGNAL \rf|r0|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|m8|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|value1[1]~4_combout\ : std_logic;
SIGNAL \rf|r1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r9|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[1]~5_combout\ : std_logic;
SIGNAL \ID_EX_src2_reg|Q[1]~2_combout\ : std_logic;
SIGNAL \ID_EX_src2_reg|Q[2]~5_combout\ : std_logic;
SIGNAL \rf|r13|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|m5|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|r12|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|m4|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|value2[1]~14_combout\ : std_logic;
SIGNAL \rf|value2[1]~15_combout\ : std_logic;
SIGNAL \ID_EX_src2_reg|Q[2]~4_combout\ : std_logic;
SIGNAL \rf|r3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage1|f~2_combout\ : std_logic;
SIGNAL \MEM_WB_ALUOut_reg|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[1]~2_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf|value2[1]~16_combout\ : std_logic;
SIGNAL \rf|value2[1]~17_combout\ : std_logic;
SIGNAL \rf|r14|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[1]~6_combout\ : std_logic;
SIGNAL \rf|value2[1]~18_combout\ : std_logic;
SIGNAL \rf|value2[1]~19_combout\ : std_logic;
SIGNAL \ID_EX_src2_reg|Q[2]~6_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage1|Cout~0_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage1|Cout~1_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage2|Cout~0_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage3|s~combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage1|f~4_combout\ : std_logic;
SIGNAL \dm|value1[2]~31_combout\ : std_logic;
SIGNAL \dm|value1[2]~32_combout\ : std_logic;
SIGNAL \dm|value1[2]~33_combout\ : std_logic;
SIGNAL \dm|value1[2]~34_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|r0|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[2]~2_combout\ : std_logic;
SIGNAL \ID_EX_src2_reg|Q[2]~0_combout\ : std_logic;
SIGNAL \rf|r11|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r10|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[2]~22_combout\ : std_logic;
SIGNAL \rf|value2[2]~23_combout\ : std_logic;
SIGNAL \rf|r5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r13|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r12|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[2]~20_combout\ : std_logic;
SIGNAL \rf|value2[2]~21_combout\ : std_logic;
SIGNAL \rf|value2[2]~24_combout\ : std_logic;
SIGNAL \rf|value2[2]~25_combout\ : std_logic;
SIGNAL \alusrc_mux|f[2]~1_combout\ : std_logic;
SIGNAL \dm|value1[1]~27_combout\ : std_logic;
SIGNAL \dm|value1[1]~41_combout\ : std_logic;
SIGNAL \dm|value1[0]~46_combout\ : std_logic;
SIGNAL \dm|value1[1]~42_combout\ : std_logic;
SIGNAL \dm|value1[1]~28_combout\ : std_logic;
SIGNAL \dm|value1[1]~29_combout\ : std_logic;
SIGNAL \dm|value1[1]~30_combout\ : std_logic;
SIGNAL \dm|value1[1]~43_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~3_combout\ : std_logic;
SIGNAL \rf|r7|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[1]~7_combout\ : std_logic;
SIGNAL \rf|value1[1]~8_combout\ : std_logic;
SIGNAL \rf|value1[1]~9_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage2|s~combout\ : std_logic;
SIGNAL \dm|value1[3]~36_combout\ : std_logic;
SIGNAL \dm|value1[3]~37_combout\ : std_logic;
SIGNAL \dm|value1[3]~38_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage3|Cout~0_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage4|s~combout\ : std_logic;
SIGNAL \dm|value1[3]~44_combout\ : std_logic;
SIGNAL \dm|value1[3]~35_combout\ : std_logic;
SIGNAL \dm|value1[3]~39_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage1|f~5_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~4_combout\ : std_logic;
SIGNAL \rf|r8|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|r0|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[3]~10_combout\ : std_logic;
SIGNAL \rf|r1|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|r9|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[3]~11_combout\ : std_logic;
SIGNAL \ID_EX_src2_reg|Q[3]~3_combout\ : std_logic;
SIGNAL \rf|r7|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[3]~13_combout\ : std_logic;
SIGNAL \rf|r5|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|r13|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|r12|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[3]~26_combout\ : std_logic;
SIGNAL \rf|value2[3]~27_combout\ : std_logic;
SIGNAL \rf|r3|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|r2|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[3]~28_combout\ : std_logic;
SIGNAL \rf|value2[3]~29_combout\ : std_logic;
SIGNAL \rf|r14|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[3]~12_combout\ : std_logic;
SIGNAL \rf|value2[3]~30_combout\ : std_logic;
SIGNAL \rf|value2[3]~31_combout\ : std_logic;
SIGNAL \rf|value1[3]~14_combout\ : std_logic;
SIGNAL \rf|value1[3]~15_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage4|s~2_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage4|s~3_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage1|f[0]~3_combout\ : std_logic;
SIGNAL \dm|value1[0]~40_combout\ : std_logic;
SIGNAL \dm|value1[0]~24_combout\ : std_logic;
SIGNAL \dm|value1[0]~25_combout\ : std_logic;
SIGNAL \dm|value1[0]~45_combout\ : std_logic;
SIGNAL \dm|value1[0]~26_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~2_combout\ : std_logic;
SIGNAL \rf|r0|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[0]~6_combout\ : std_logic;
SIGNAL \ID_EX_src2_reg|Q[0]~1_combout\ : std_logic;
SIGNAL \rf|r11|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|value2[0]~10_combout\ : std_logic;
SIGNAL \rf|value2[0]~11_combout\ : std_logic;
SIGNAL \rf|r5|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|r13|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|r12|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[0]~8_combout\ : std_logic;
SIGNAL \rf|value2[0]~9_combout\ : std_logic;
SIGNAL \rf|value2[0]~12_combout\ : std_logic;
SIGNAL \rf|value2[0]~13_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage1|s~1_combout\ : std_logic;
SIGNAL \BranchSignal~0_combout\ : std_logic;
SIGNAL \BranchSignal~combout\ : std_logic;
SIGNAL \br_mux|f[1]~3_combout\ : std_logic;
SIGNAL \MEM_WB_PC_reg|Q[1]~feeder_combout\ : std_logic;
SIGNAL \pc_mux|f~1_combout\ : std_logic;
SIGNAL \im|output[0]~4_combout\ : std_logic;
SIGNAL \IF_ID_Ins_reg|Q[0]~feeder_combout\ : std_logic;
SIGNAL \br_mux|f[0]~2_combout\ : std_logic;
SIGNAL \MEM_WB_PC_reg|Q[0]~feeder_combout\ : std_logic;
SIGNAL \pc_mux|f~0_combout\ : std_logic;
SIGNAL \dm_mux|f[0]~0_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~1_combout\ : std_logic;
SIGNAL \dm_mux|f[2]~2_combout\ : std_logic;
SIGNAL \dm_mux|f[3]~3_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|z\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_src2_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r13|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_ALUOP_reg|Q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MEM_WB_DMout_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM_WB_ALUOut_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r6|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_imm_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM_WB_PC_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_src1_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EX_MEM_ALUOut_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EX_MEM_PC_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IF_ID_Ins_reg|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \rf|r14|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r9|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r8|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r0|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r15|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r7|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r5|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r12|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r10|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r11|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

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
	i => \dm_mux|f[0]~0_combout\,
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
	i => \dm_mux|f[1]~1_combout\,
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
	i => \dm_mux|f[2]~2_combout\,
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
	i => \dm_mux|f[3]~3_combout\,
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

-- Location: LCCOMB_X112_Y36_N30
\addpc|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage2|Cout~0_combout\ = (\pc|Q\(0) & \pc|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \addpc|stage2|Cout~0_combout\);

-- Location: LCCOMB_X112_Y36_N4
\br_mux|f[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \br_mux|f[2]~5_combout\ = (\BranchSignal~combout\) # (\pc|Q\(2) $ (((\pc|Q\(1) & \pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \BranchSignal~combout\,
	combout => \br_mux|f[2]~5_combout\);

-- Location: FF_X112_Y36_N5
\EX_MEM_PC_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \br_mux|f[2]~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_PC_reg|Q\(2));

-- Location: FF_X114_Y40_N19
\MEM_WB_PC_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM_PC_reg|Q\(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_PC_reg|Q\(2));

-- Location: LCCOMB_X114_Y40_N26
\pc_mux|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~2_combout\ = (!\reset~input_o\ & \MEM_WB_PC_reg|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \MEM_WB_PC_reg|Q\(2),
	combout => \pc_mux|f~2_combout\);

-- Location: LCCOMB_X113_Y40_N24
\pc|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|Q[2]~feeder_combout\ = \pc_mux|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc_mux|f~2_combout\,
	combout => \pc|Q[2]~feeder_combout\);

-- Location: FF_X113_Y40_N25
\pc|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \pc|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(2));

-- Location: LCCOMB_X112_Y36_N18
\br_mux|f[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \br_mux|f[3]~4_combout\ = (!\BranchSignal~combout\ & (\pc|Q\(3) $ (((\addpc|stage2|Cout~0_combout\ & \pc|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addpc|stage2|Cout~0_combout\,
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \BranchSignal~combout\,
	combout => \br_mux|f[3]~4_combout\);

-- Location: FF_X112_Y36_N19
\EX_MEM_PC_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \br_mux|f[3]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_PC_reg|Q\(3));

-- Location: LCCOMB_X114_Y40_N2
\MEM_WB_PC_reg|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB_PC_reg|Q[3]~feeder_combout\ = \EX_MEM_PC_reg|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM_PC_reg|Q\(3),
	combout => \MEM_WB_PC_reg|Q[3]~feeder_combout\);

-- Location: FF_X114_Y40_N3
\MEM_WB_PC_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEM_WB_PC_reg|Q[3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_PC_reg|Q\(3));

-- Location: LCCOMB_X114_Y40_N18
\pc_mux|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~3_combout\ = (!\reset~input_o\ & \MEM_WB_PC_reg|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \MEM_WB_PC_reg|Q\(3),
	combout => \pc_mux|f~3_combout\);

-- Location: LCCOMB_X113_Y40_N14
\pc|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|Q[3]~feeder_combout\ = \pc_mux|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc_mux|f~3_combout\,
	combout => \pc|Q[3]~feeder_combout\);

-- Location: FF_X113_Y40_N15
\pc|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \pc|Q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(3));

-- Location: LCCOMB_X110_Y38_N2
\im|output[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[14]~3_combout\ = (\pc|Q\(3)) # ((\pc|Q\(1) & (\pc|Q\(2))) # (!\pc|Q\(1) & (!\pc|Q\(2) & !\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \im|output[14]~3_combout\);

-- Location: FF_X110_Y38_N3
\IF_ID_Ins_reg|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[14]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_Ins_reg|Q\(14));

-- Location: LCCOMB_X110_Y38_N20
\im|output[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[1]~2_combout\ = (\pc|Q\(3)) # (\pc|Q\(1) $ (((!\pc|Q\(2) & !\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \im|output[1]~2_combout\);

-- Location: FF_X110_Y38_N21
\IF_ID_Ins_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[1]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_Ins_reg|Q\(1));

-- Location: LCCOMB_X110_Y38_N8
\im|output[27]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[27]~0_combout\ = (\pc|Q\(3)) # ((\pc|Q\(2) & ((\pc|Q\(1)) # (\pc|Q\(0)))) # (!\pc|Q\(2) & ((!\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \im|output[27]~0_combout\);

-- Location: FF_X110_Y38_N9
\IF_ID_Ins_reg|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[27]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_Ins_reg|Q\(27));

-- Location: LCCOMB_X110_Y38_N18
\im|output[26]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[26]~1_combout\ = (\pc|Q\(3)) # ((\pc|Q\(2) & (\pc|Q\(1))) # (!\pc|Q\(2) & ((!\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \im|output[26]~1_combout\);

-- Location: FF_X110_Y38_N19
\IF_ID_Ins_reg|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[26]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_Ins_reg|Q\(26));

-- Location: LCCOMB_X110_Y38_N26
\BranchSignal~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchSignal~1_combout\ = (!\IF_ID_Ins_reg|Q\(14) & (\IF_ID_Ins_reg|Q\(1) & (!\IF_ID_Ins_reg|Q\(27) & !\IF_ID_Ins_reg|Q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(14),
	datab => \IF_ID_Ins_reg|Q\(1),
	datac => \IF_ID_Ins_reg|Q\(27),
	datad => \IF_ID_Ins_reg|Q\(26),
	combout => \BranchSignal~1_combout\);

-- Location: LCCOMB_X110_Y38_N16
\im|output[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[12]~8_combout\ = (\pc|Q\(3)) # (\pc|Q\(2) $ (!\pc|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(1),
	combout => \im|output[12]~8_combout\);

-- Location: FF_X110_Y38_N17
\IF_ID_Ins_reg|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[12]~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_Ins_reg|Q\(12));

-- Location: LCCOMB_X110_Y38_N30
\im|output[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[11]~5_combout\ = (\pc|Q\(3)) # ((\pc|Q\(1) & (\pc|Q\(2))) # (!\pc|Q\(1) & ((!\pc|Q\(0)) # (!\pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \im|output[11]~5_combout\);

-- Location: LCCOMB_X111_Y38_N26
\IF_ID_Ins_reg|Q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID_Ins_reg|Q[11]~feeder_combout\ = \im|output[11]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \im|output[11]~5_combout\,
	combout => \IF_ID_Ins_reg|Q[11]~feeder_combout\);

-- Location: FF_X111_Y38_N27
\IF_ID_Ins_reg|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IF_ID_Ins_reg|Q[11]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_Ins_reg|Q\(11));

-- Location: LCCOMB_X110_Y38_N10
\id|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal1~0_combout\ = (!\IF_ID_Ins_reg|Q\(14) & (!\IF_ID_Ins_reg|Q\(26) & (!\IF_ID_Ins_reg|Q\(27) & !\IF_ID_Ins_reg|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(14),
	datab => \IF_ID_Ins_reg|Q\(26),
	datac => \IF_ID_Ins_reg|Q\(27),
	datad => \IF_ID_Ins_reg|Q\(1),
	combout => \id|Equal1~0_combout\);

-- Location: LCCOMB_X110_Y38_N12
\id|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal2~0_combout\ = (!\IF_ID_Ins_reg|Q\(14) & (!\IF_ID_Ins_reg|Q\(1) & (\IF_ID_Ins_reg|Q\(27) & \IF_ID_Ins_reg|Q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(14),
	datab => \IF_ID_Ins_reg|Q\(1),
	datac => \IF_ID_Ins_reg|Q\(27),
	datad => \IF_ID_Ins_reg|Q\(26),
	combout => \id|Equal2~0_combout\);

-- Location: LCCOMB_X114_Y40_N16
\id|alu_temp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|alu_temp[0]~0_combout\ = \id|Equal2~0_combout\ $ (((!\IF_ID_Ins_reg|Q\(0) & (\IF_ID_Ins_reg|Q\(11) & \id|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(0),
	datab => \IF_ID_Ins_reg|Q\(11),
	datac => \id|Equal1~0_combout\,
	datad => \id|Equal2~0_combout\,
	combout => \id|alu_temp[0]~0_combout\);

-- Location: FF_X114_Y40_N17
\ID_EX_ALUOP_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \id|alu_temp[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_ALUOP_reg|Q\(0));

-- Location: FF_X111_Y36_N31
\ID_EX_AddSub_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \BranchSignal~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_AddSub_reg|Q~q\);

-- Location: FF_X114_Y36_N31
\ID_EX_MemtoReg_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \id|Equal2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_MemtoReg_reg|Q~q\);

-- Location: FF_X114_Y36_N23
\EX_MEM_MemtoReg_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \ID_EX_MemtoReg_reg|Q~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_MemtoReg_reg|Q~q\);

-- Location: LCCOMB_X110_Y36_N24
\MEM_WB_MemtoReg_reg|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB_MemtoReg_reg|Q~feeder_combout\ = \EX_MEM_MemtoReg_reg|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM_MemtoReg_reg|Q~q\,
	combout => \MEM_WB_MemtoReg_reg|Q~feeder_combout\);

-- Location: FF_X110_Y36_N25
\MEM_WB_MemtoReg_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEM_WB_MemtoReg_reg|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_MemtoReg_reg|Q~q\);

-- Location: LCCOMB_X114_Y38_N10
\rf|r15|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r15|Q[0]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r15|Q[0]~feeder_combout\);

-- Location: LCCOMB_X110_Y38_N22
\id|RegWrite\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|RegWrite~combout\ = (!\IF_ID_Ins_reg|Q\(14) & (!\IF_ID_Ins_reg|Q\(1) & (\IF_ID_Ins_reg|Q\(26) $ (!\IF_ID_Ins_reg|Q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(14),
	datab => \IF_ID_Ins_reg|Q\(26),
	datac => \IF_ID_Ins_reg|Q\(27),
	datad => \IF_ID_Ins_reg|Q\(1),
	combout => \id|RegWrite~combout\);

-- Location: LCCOMB_X114_Y40_N28
\ID_EX_RegWrite_reg|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_RegWrite_reg|Q~feeder_combout\ = \id|RegWrite~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \id|RegWrite~combout\,
	combout => \ID_EX_RegWrite_reg|Q~feeder_combout\);

-- Location: FF_X114_Y40_N29
\ID_EX_RegWrite_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_RegWrite_reg|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_RegWrite_reg|Q~q\);

-- Location: LCCOMB_X114_Y40_N14
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

-- Location: FF_X114_Y40_N15
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

-- Location: LCCOMB_X111_Y38_N30
\MEM_WB_RegWrite_reg|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB_RegWrite_reg|Q~feeder_combout\ = \EX_MEM_RegWrite_reg|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM_RegWrite_reg|Q~q\,
	combout => \MEM_WB_RegWrite_reg|Q~feeder_combout\);

-- Location: FF_X111_Y38_N31
\MEM_WB_RegWrite_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEM_WB_RegWrite_reg|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_RegWrite_reg|Q~q\);

-- Location: LCCOMB_X111_Y38_N0
\rf|m9|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m9|stage3|f~0_combout\ = (\MEM_WB_RegWrite_reg|Q~q\ & (\IF_ID_Ins_reg|Q\(11) & \IF_ID_Ins_reg|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RegWrite_reg|Q~q\,
	datac => \IF_ID_Ins_reg|Q\(11),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|m9|stage3|f~0_combout\);

-- Location: LCCOMB_X114_Y38_N8
\rf|m15|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m15|stage3|f~0_combout\ = (\reset~input_o\) # ((\rf|m9|stage3|f~0_combout\ & \IF_ID_Ins_reg|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \rf|m9|stage3|f~0_combout\,
	datad => \IF_ID_Ins_reg|Q\(12),
	combout => \rf|m15|stage3|f~0_combout\);

-- Location: FF_X114_Y38_N11
\rf|r15|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r15|Q[0]~feeder_combout\,
	ena => \rf|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(0));

-- Location: LCCOMB_X111_Y38_N6
\im_mux|f[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux|f[0]~2_combout\ = (\id|Equal2~0_combout\ & (\IF_ID_Ins_reg|Q\(12))) # (!\id|Equal2~0_combout\ & ((\IF_ID_Ins_reg|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(12),
	datac => \IF_ID_Ins_reg|Q\(11),
	datad => \id|Equal2~0_combout\,
	combout => \im_mux|f[0]~2_combout\);

-- Location: LCCOMB_X110_Y38_N28
\im|output[17]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[17]~6_combout\ = ((\pc|Q\(3)) # (\pc|Q\(1))) # (!\pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(1),
	combout => \im|output[17]~6_combout\);

-- Location: FF_X110_Y38_N29
\IF_ID_Ins_reg|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[17]~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_Ins_reg|Q\(17));

-- Location: LCCOMB_X110_Y38_N24
\im_mux|f[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux|f[1]~0_combout\ = (\id|Equal2~0_combout\ & (\IF_ID_Ins_reg|Q\(17))) # (!\id|Equal2~0_combout\ & ((\IF_ID_Ins_reg|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID_Ins_reg|Q\(17),
	datac => \IF_ID_Ins_reg|Q\(12),
	datad => \id|Equal2~0_combout\,
	combout => \im_mux|f[1]~0_combout\);

-- Location: LCCOMB_X110_Y38_N14
\im|output[18]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[18]~9_combout\ = (\pc|Q\(3)) # (((\pc|Q\(1) & \pc|Q\(2))) # (!\pc|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \im|output[18]~9_combout\);

-- Location: FF_X110_Y38_N15
\IF_ID_Ins_reg|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[18]~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_Ins_reg|Q\(18));

-- Location: LCCOMB_X111_Y38_N18
\im_mux|f[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im_mux|f[2]~1_combout\ = (\id|Equal2~0_combout\ & (\IF_ID_Ins_reg|Q\(18))) # (!\id|Equal2~0_combout\ & ((\IF_ID_Ins_reg|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(18),
	datac => \IF_ID_Ins_reg|Q\(12),
	datad => \id|Equal2~0_combout\,
	combout => \im_mux|f[2]~1_combout\);

-- Location: LCCOMB_X111_Y38_N8
\rf|m7|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m7|stage3|f~0_combout\ = (!\IF_ID_Ins_reg|Q\(14) & (\MEM_WB_RegWrite_reg|Q~q\ & \im_mux|f[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(14),
	datac => \MEM_WB_RegWrite_reg|Q~q\,
	datad => \im_mux|f[2]~1_combout\,
	combout => \rf|m7|stage3|f~0_combout\);

-- Location: LCCOMB_X112_Y40_N2
\rf|m7|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m7|stage3|f~1_combout\ = (\reset~input_o\) # ((\im_mux|f[0]~2_combout\ & (\im_mux|f[1]~0_combout\ & \rf|m7|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux|f[0]~2_combout\,
	datab => \reset~input_o\,
	datac => \im_mux|f[1]~0_combout\,
	datad => \rf|m7|stage3|f~0_combout\,
	combout => \rf|m7|stage3|f~1_combout\);

-- Location: FF_X112_Y40_N7
\rf|r7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m7|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(0));

-- Location: LCCOMB_X112_Y40_N6
\rf|value2[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~7_combout\ = (\IF_ID_Ins_reg|Q\(14) & (\rf|r15|Q\(0))) # (!\IF_ID_Ins_reg|Q\(14) & ((\rf|r7|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r15|Q\(0),
	datac => \rf|r7|Q\(0),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value2[0]~7_combout\);

-- Location: LCCOMB_X113_Y40_N4
\im|output[21]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[21]~7_combout\ = (\pc|Q\(3)) # ((\pc|Q\(1) $ (!\pc|Q\(2))) # (!\pc|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \im|output[21]~7_combout\);

-- Location: FF_X114_Y40_N27
\IF_ID_Ins_reg|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \im|output[21]~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_Ins_reg|Q\(21));

-- Location: LCCOMB_X114_Y40_N20
\rf|m9|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m9|stage3|f~1_combout\ = (\reset~input_o\) # ((!\IF_ID_Ins_reg|Q\(12) & \rf|m9|stage3|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(12),
	datab => \reset~input_o\,
	datad => \rf|m9|stage3|f~0_combout\,
	combout => \rf|m9|stage3|f~1_combout\);

-- Location: FF_X114_Y40_N21
\rf|r9|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m9|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r9|Q\(0));

-- Location: LCCOMB_X114_Y39_N4
\rf|r1|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[0]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r1|Q[0]~feeder_combout\);

-- Location: LCCOMB_X111_Y38_N10
\rf|m1|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~0_combout\ = (!\IF_ID_Ins_reg|Q\(14) & (\MEM_WB_RegWrite_reg|Q~q\ & !\im_mux|f[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(14),
	datac => \MEM_WB_RegWrite_reg|Q~q\,
	datad => \im_mux|f[2]~1_combout\,
	combout => \rf|m1|stage3|f~0_combout\);

-- Location: LCCOMB_X114_Y39_N20
\rf|m1|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~1_combout\ = (\reset~input_o\) # ((!\im_mux|f[1]~0_combout\ & (\im_mux|f[0]~2_combout\ & \rf|m1|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \im_mux|f[1]~0_combout\,
	datac => \im_mux|f[0]~2_combout\,
	datad => \rf|m1|stage3|f~0_combout\,
	combout => \rf|m1|stage3|f~1_combout\);

-- Location: FF_X114_Y39_N5
\rf|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[0]~feeder_combout\,
	ena => \rf|m1|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(0));

-- Location: LCCOMB_X114_Y39_N10
\rf|value2[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~4_combout\ = (\IF_ID_Ins_reg|Q\(14) & (\rf|r9|Q\(0))) # (!\IF_ID_Ins_reg|Q\(14) & ((\rf|r1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r9|Q\(0),
	datac => \rf|r1|Q\(0),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value2[0]~4_combout\);

-- Location: LCCOMB_X110_Y40_N20
\rf|r14|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r14|Q[0]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r14|Q[0]~feeder_combout\);

-- Location: LCCOMB_X111_Y38_N16
\rf|m8|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m8|stage3|f~0_combout\ = (\MEM_WB_RegWrite_reg|Q~q\ & (!\IF_ID_Ins_reg|Q\(11) & \IF_ID_Ins_reg|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RegWrite_reg|Q~q\,
	datac => \IF_ID_Ins_reg|Q\(11),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|m8|stage3|f~0_combout\);

-- Location: LCCOMB_X110_Y40_N4
\rf|m14|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m14|stage3|f~0_combout\ = (\reset~input_o\) # ((\IF_ID_Ins_reg|Q\(12) & \rf|m8|stage3|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(12),
	datab => \reset~input_o\,
	datad => \rf|m8|stage3|f~0_combout\,
	combout => \rf|m14|stage3|f~0_combout\);

-- Location: FF_X110_Y40_N21
\rf|r14|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r14|Q[0]~feeder_combout\,
	ena => \rf|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r14|Q\(0));

-- Location: LCCOMB_X110_Y40_N16
\rf|m6|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m6|stage3|f~0_combout\ = (\reset~input_o\) # ((!\im_mux|f[0]~2_combout\ & (\im_mux|f[1]~0_combout\ & \rf|m7|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \im_mux|f[0]~2_combout\,
	datac => \im_mux|f[1]~0_combout\,
	datad => \rf|m7|stage3|f~0_combout\,
	combout => \rf|m6|stage3|f~0_combout\);

-- Location: FF_X110_Y40_N19
\rf|r6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(0));

-- Location: LCCOMB_X110_Y40_N18
\rf|value2[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~5_combout\ = (\IF_ID_Ins_reg|Q\(14) & (\rf|r14|Q\(0))) # (!\IF_ID_Ins_reg|Q\(14) & ((\rf|r6|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r14|Q\(0),
	datac => \rf|r6|Q\(0),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value2[0]~5_combout\);

-- Location: LCCOMB_X113_Y36_N30
\rf|value1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~2_combout\ = (\IF_ID_Ins_reg|Q\(21) & (\IF_ID_Ins_reg|Q\(17))) # (!\IF_ID_Ins_reg|Q\(21) & ((\IF_ID_Ins_reg|Q\(17) & ((\rf|value2[0]~5_combout\))) # (!\IF_ID_Ins_reg|Q\(17) & (\rf|value2[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(21),
	datab => \IF_ID_Ins_reg|Q\(17),
	datac => \rf|value2[0]~6_combout\,
	datad => \rf|value2[0]~5_combout\,
	combout => \rf|value1[0]~2_combout\);

-- Location: LCCOMB_X114_Y36_N26
\rf|value1[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~3_combout\ = (\IF_ID_Ins_reg|Q\(21) & ((\rf|value1[0]~2_combout\ & (\rf|value2[0]~7_combout\)) # (!\rf|value1[0]~2_combout\ & ((\rf|value2[0]~4_combout\))))) # (!\IF_ID_Ins_reg|Q\(21) & (((\rf|value1[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[0]~7_combout\,
	datab => \IF_ID_Ins_reg|Q\(21),
	datac => \rf|value2[0]~4_combout\,
	datad => \rf|value1[0]~2_combout\,
	combout => \rf|value1[0]~3_combout\);

-- Location: FF_X114_Y36_N27
\ID_EX_src1_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value1[0]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_src1_reg|Q\(0));

-- Location: FF_X114_Y36_N13
\ID_EX_imm_reg|Q[0]\ : dffeas
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
	q => \ID_EX_imm_reg|Q\(0));

-- Location: LCCOMB_X114_Y36_N2
\alusrc_mux|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|f[0]~0_combout\ = (\ID_EX_MemtoReg_reg|Q~q\ & (\ID_EX_imm_reg|Q\(0))) # (!\ID_EX_MemtoReg_reg|Q~q\ & ((\ID_EX_src2_reg|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX_MemtoReg_reg|Q~q\,
	datac => \ID_EX_imm_reg|Q\(0),
	datad => \ID_EX_src2_reg|Q\(0),
	combout => \alusrc_mux|f[0]~0_combout\);

-- Location: LCCOMB_X111_Y36_N6
\alu_ins|add_ins|stage1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage1|s~0_combout\ = \ID_EX_AddSub_reg|Q~q\ $ (\ID_EX_src1_reg|Q\(0) $ (\alusrc_mux|f[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX_AddSub_reg|Q~q\,
	datac => \ID_EX_src1_reg|Q\(0),
	datad => \alusrc_mux|f[0]~0_combout\,
	combout => \alu_ins|add_ins|stage1|s~0_combout\);

-- Location: FF_X114_Y36_N25
\ID_EX_imm_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \IF_ID_Ins_reg|Q\(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_imm_reg|Q\(1));

-- Location: LCCOMB_X112_Y40_N18
\rf|r7|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r7|Q[2]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r7|Q[2]~feeder_combout\);

-- Location: FF_X112_Y40_N19
\rf|r7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r7|Q[2]~feeder_combout\,
	ena => \rf|m7|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(2));

-- Location: LCCOMB_X114_Y38_N24
\rf|r15|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r15|Q[2]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r15|Q[2]~feeder_combout\);

-- Location: FF_X114_Y38_N25
\rf|r15|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r15|Q[2]~feeder_combout\,
	ena => \rf|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(2));

-- Location: LCCOMB_X112_Y36_N14
\rf|value2[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~3_combout\ = (\IF_ID_Ins_reg|Q\(14) & ((\rf|r15|Q\(2)))) # (!\IF_ID_Ins_reg|Q\(14) & (\rf|r7|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r7|Q\(2),
	datac => \IF_ID_Ins_reg|Q\(14),
	datad => \rf|r15|Q\(2),
	combout => \rf|value2[2]~3_combout\);

-- Location: FF_X110_Y40_N5
\rf|r14|Q[2]\ : dffeas
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
	q => \rf|r14|Q\(2));

-- Location: FF_X110_Y40_N23
\rf|r6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(2));

-- Location: LCCOMB_X110_Y40_N22
\rf|value2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~0_combout\ = (\IF_ID_Ins_reg|Q\(14) & (\rf|r14|Q\(2))) # (!\IF_ID_Ins_reg|Q\(14) & ((\rf|r6|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r14|Q\(2),
	datac => \rf|r6|Q\(2),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value2[2]~0_combout\);

-- Location: LCCOMB_X114_Y39_N28
\rf|r1|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[2]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r1|Q[2]~feeder_combout\);

-- Location: FF_X114_Y39_N29
\rf|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[2]~feeder_combout\,
	ena => \rf|m1|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(2));

-- Location: LCCOMB_X114_Y40_N22
\rf|r9|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r9|Q[2]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r9|Q[2]~feeder_combout\);

-- Location: FF_X114_Y40_N23
\rf|r9|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r9|Q[2]~feeder_combout\,
	ena => \rf|m9|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r9|Q\(2));

-- Location: LCCOMB_X114_Y39_N18
\rf|value2[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~1_combout\ = (\IF_ID_Ins_reg|Q\(14) & ((\rf|r9|Q\(2)))) # (!\IF_ID_Ins_reg|Q\(14) & (\rf|r1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r1|Q\(2),
	datac => \rf|r9|Q\(2),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value2[2]~1_combout\);

-- Location: LCCOMB_X113_Y36_N16
\rf|value1[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~0_combout\ = (\IF_ID_Ins_reg|Q\(21) & ((\IF_ID_Ins_reg|Q\(17)) # ((\rf|value2[2]~1_combout\)))) # (!\IF_ID_Ins_reg|Q\(21) & (!\IF_ID_Ins_reg|Q\(17) & (\rf|value2[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(21),
	datab => \IF_ID_Ins_reg|Q\(17),
	datac => \rf|value2[2]~2_combout\,
	datad => \rf|value2[2]~1_combout\,
	combout => \rf|value1[2]~0_combout\);

-- Location: LCCOMB_X113_Y36_N0
\rf|value1[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~1_combout\ = (\IF_ID_Ins_reg|Q\(17) & ((\rf|value1[2]~0_combout\ & (\rf|value2[2]~3_combout\)) # (!\rf|value1[2]~0_combout\ & ((\rf|value2[2]~0_combout\))))) # (!\IF_ID_Ins_reg|Q\(17) & (((\rf|value1[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~3_combout\,
	datab => \IF_ID_Ins_reg|Q\(17),
	datac => \rf|value2[2]~0_combout\,
	datad => \rf|value1[2]~0_combout\,
	combout => \rf|value1[2]~1_combout\);

-- Location: FF_X113_Y36_N1
\ID_EX_src1_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value1[2]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_src1_reg|Q\(2));

-- Location: LCCOMB_X111_Y40_N24
\rf|r0|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r0|Q[1]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r0|Q[1]~feeder_combout\);

-- Location: LCCOMB_X111_Y40_N12
\rf|m0|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~1_combout\ = (\reset~input_o\) # ((!\im_mux|f[1]~0_combout\ & (\rf|m1|stage3|f~0_combout\ & !\im_mux|f[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux|f[1]~0_combout\,
	datab => \reset~input_o\,
	datac => \rf|m1|stage3|f~0_combout\,
	datad => \im_mux|f[0]~2_combout\,
	combout => \rf|m0|stage3|f~1_combout\);

-- Location: FF_X111_Y40_N25
\rf|r0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r0|Q[1]~feeder_combout\,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(1));

-- Location: LCCOMB_X112_Y40_N16
\rf|m8|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m8|stage3|f~1_combout\ = (\reset~input_o\) # ((!\IF_ID_Ins_reg|Q\(12) & \rf|m8|stage3|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(12),
	datab => \reset~input_o\,
	datad => \rf|m8|stage3|f~0_combout\,
	combout => \rf|m8|stage3|f~1_combout\);

-- Location: FF_X112_Y40_N9
\rf|r8|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m8|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r8|Q\(1));

-- Location: LCCOMB_X112_Y40_N8
\rf|value1[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~4_combout\ = (\IF_ID_Ins_reg|Q\(14) & ((\rf|r8|Q\(1)))) # (!\IF_ID_Ins_reg|Q\(14) & (\rf|r0|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r0|Q\(1),
	datac => \rf|r8|Q\(1),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value1[1]~4_combout\);

-- Location: LCCOMB_X114_Y39_N8
\rf|r1|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[1]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r1|Q[1]~feeder_combout\);

-- Location: FF_X114_Y39_N9
\rf|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[1]~feeder_combout\,
	ena => \rf|m1|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(1));

-- Location: LCCOMB_X114_Y40_N30
\rf|r9|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r9|Q[1]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r9|Q[1]~feeder_combout\);

-- Location: FF_X114_Y40_N31
\rf|r9|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r9|Q[1]~feeder_combout\,
	ena => \rf|m9|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r9|Q\(1));

-- Location: LCCOMB_X114_Y39_N6
\rf|value1[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~5_combout\ = (\IF_ID_Ins_reg|Q\(14) & ((\rf|r9|Q\(1)))) # (!\IF_ID_Ins_reg|Q\(14) & (\rf|r1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r1|Q\(1),
	datac => \rf|r9|Q\(1),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value1[1]~5_combout\);

-- Location: LCCOMB_X113_Y36_N22
\ID_EX_src2_reg|Q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_src2_reg|Q[1]~2_combout\ = (\IF_ID_Ins_reg|Q\(12) & ((\rf|value1[1]~5_combout\))) # (!\IF_ID_Ins_reg|Q\(12) & (\rf|value1[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(12),
	datab => \rf|value1[1]~4_combout\,
	datad => \rf|value1[1]~5_combout\,
	combout => \ID_EX_src2_reg|Q[1]~2_combout\);

-- Location: LCCOMB_X110_Y38_N6
\ID_EX_src2_reg|Q[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_src2_reg|Q[2]~5_combout\ = (\IF_ID_Ins_reg|Q\(18) & ((\IF_ID_Ins_reg|Q\(12)) # (!\IF_ID_Ins_reg|Q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID_Ins_reg|Q\(12),
	datac => \IF_ID_Ins_reg|Q\(18),
	datad => \IF_ID_Ins_reg|Q\(17),
	combout => \ID_EX_src2_reg|Q[2]~5_combout\);

-- Location: LCCOMB_X112_Y38_N18
\rf|r13|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r13|Q[1]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r13|Q[1]~feeder_combout\);

-- Location: FF_X112_Y38_N19
\rf|r13|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r13|Q[1]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(1));

-- Location: LCCOMB_X112_Y38_N8
\rf|m5|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m5|stage3|f~0_combout\ = (\reset~input_o\) # ((\rf|m7|stage3|f~0_combout\ & (\im_mux|f[0]~2_combout\ & !\im_mux|f[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|m7|stage3|f~0_combout\,
	datab => \reset~input_o\,
	datac => \im_mux|f[0]~2_combout\,
	datad => \im_mux|f[1]~0_combout\,
	combout => \rf|m5|stage3|f~0_combout\);

-- Location: FF_X112_Y38_N5
\rf|r5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m5|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(1));

-- Location: LCCOMB_X109_Y38_N12
\rf|r12|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r12|Q[1]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r12|Q[1]~feeder_combout\);

-- Location: FF_X109_Y38_N13
\rf|r12|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r12|Q[1]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(1));

-- Location: LCCOMB_X109_Y38_N22
\rf|m4|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((!\im_mux|f[1]~0_combout\ & (!\im_mux|f[0]~2_combout\ & \rf|m7|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \im_mux|f[1]~0_combout\,
	datac => \im_mux|f[0]~2_combout\,
	datad => \rf|m7|stage3|f~0_combout\,
	combout => \rf|m4|stage3|f[0]~0_combout\);

-- Location: FF_X109_Y38_N3
\rf|r4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(1));

-- Location: LCCOMB_X109_Y38_N2
\rf|value2[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~14_combout\ = (\IF_ID_Ins_reg|Q\(12) & (((\IF_ID_Ins_reg|Q\(14))))) # (!\IF_ID_Ins_reg|Q\(12) & ((\IF_ID_Ins_reg|Q\(14) & (\rf|r12|Q\(1))) # (!\IF_ID_Ins_reg|Q\(14) & ((\rf|r4|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r12|Q\(1),
	datab => \IF_ID_Ins_reg|Q\(12),
	datac => \rf|r4|Q\(1),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value2[1]~14_combout\);

-- Location: LCCOMB_X112_Y38_N4
\rf|value2[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~15_combout\ = (\IF_ID_Ins_reg|Q\(12) & ((\rf|value2[1]~14_combout\ & (\rf|r13|Q\(1))) # (!\rf|value2[1]~14_combout\ & ((\rf|r5|Q\(1)))))) # (!\IF_ID_Ins_reg|Q\(12) & (((\rf|value2[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(12),
	datab => \rf|r13|Q\(1),
	datac => \rf|r5|Q\(1),
	datad => \rf|value2[1]~14_combout\,
	combout => \rf|value2[1]~15_combout\);

-- Location: LCCOMB_X110_Y38_N0
\ID_EX_src2_reg|Q[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_src2_reg|Q[2]~4_combout\ = (\IF_ID_Ins_reg|Q\(18) & \IF_ID_Ins_reg|Q\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IF_ID_Ins_reg|Q\(18),
	datad => \IF_ID_Ins_reg|Q\(17),
	combout => \ID_EX_src2_reg|Q[2]~4_combout\);

-- Location: LCCOMB_X113_Y38_N24
\rf|r3|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[1]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r3|Q[1]~feeder_combout\);

-- Location: LCCOMB_X113_Y38_N30
\rf|m3|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\im_mux|f[1]~0_combout\ & (\im_mux|f[0]~2_combout\ & \rf|m1|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux|f[1]~0_combout\,
	datab => \reset~input_o\,
	datac => \im_mux|f[0]~2_combout\,
	datad => \rf|m1|stage3|f~0_combout\,
	combout => \rf|m3|stage3|f[0]~0_combout\);

-- Location: FF_X113_Y38_N25
\rf|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r3|Q[1]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(1));

-- Location: FF_X109_Y38_N15
\rf|r11|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(1));

-- Location: LCCOMB_X114_Y36_N30
\alu_ins|mux4to1_ins|stage1|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage1|f~2_combout\ = (\ID_EX_ALUOP_reg|Q\(0) & \alu_ins|add_ins|stage2|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX_ALUOP_reg|Q\(0),
	datad => \alu_ins|add_ins|stage2|s~combout\,
	combout => \alu_ins|mux4to1_ins|stage1|f~2_combout\);

-- Location: FF_X114_Y36_N9
\EX_MEM_ALUOut_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \alu_ins|mux4to1_ins|stage1|f~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_ALUOut_reg|Q\(1));

-- Location: LCCOMB_X114_Y40_N24
\MEM_WB_ALUOut_reg|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB_ALUOut_reg|Q[1]~feeder_combout\ = \EX_MEM_ALUOut_reg|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM_ALUOut_reg|Q\(1),
	combout => \MEM_WB_ALUOut_reg|Q[1]~feeder_combout\);

-- Location: FF_X114_Y40_N25
\MEM_WB_ALUOut_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEM_WB_ALUOut_reg|Q[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_ALUOut_reg|Q\(1));

-- Location: LCCOMB_X111_Y38_N12
\rf|m2|stage3|f[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[1]~2_combout\ = (\reset~input_o\) # ((\MEM_WB_MemtoReg_reg|Q~q\ & (\MEM_WB_DMout_reg|Q\(1))) # (!\MEM_WB_MemtoReg_reg|Q~q\ & ((\MEM_WB_ALUOut_reg|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_DMout_reg|Q\(1),
	datac => \MEM_WB_MemtoReg_reg|Q~q\,
	datad => \MEM_WB_ALUOut_reg|Q\(1),
	combout => \rf|m2|stage3|f[1]~2_combout\);

-- Location: LCCOMB_X111_Y38_N20
\rf|m2|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((!\im_mux|f[0]~2_combout\ & (\im_mux|f[1]~0_combout\ & \rf|m1|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im_mux|f[0]~2_combout\,
	datab => \reset~input_o\,
	datac => \im_mux|f[1]~0_combout\,
	datad => \rf|m1|stage3|f~0_combout\,
	combout => \rf|m2|stage3|f[0]~1_combout\);

-- Location: FF_X110_Y38_N5
\rf|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m2|stage3|f[1]~2_combout\,
	sload => VCC,
	ena => \rf|m2|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(1));

-- Location: FF_X109_Y38_N17
\rf|r10|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(1));

-- Location: LCCOMB_X109_Y38_N16
\rf|value2[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~16_combout\ = (\IF_ID_Ins_reg|Q\(12) & (((\IF_ID_Ins_reg|Q\(14))))) # (!\IF_ID_Ins_reg|Q\(12) & ((\IF_ID_Ins_reg|Q\(14) & ((\rf|r10|Q\(1)))) # (!\IF_ID_Ins_reg|Q\(14) & (\rf|r2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(1),
	datab => \IF_ID_Ins_reg|Q\(12),
	datac => \rf|r10|Q\(1),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value2[1]~16_combout\);

-- Location: LCCOMB_X109_Y38_N14
\rf|value2[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~17_combout\ = (\IF_ID_Ins_reg|Q\(12) & ((\rf|value2[1]~16_combout\ & ((\rf|r11|Q\(1)))) # (!\rf|value2[1]~16_combout\ & (\rf|r3|Q\(1))))) # (!\IF_ID_Ins_reg|Q\(12) & (((\rf|value2[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(1),
	datab => \IF_ID_Ins_reg|Q\(12),
	datac => \rf|r11|Q\(1),
	datad => \rf|value2[1]~16_combout\,
	combout => \rf|value2[1]~17_combout\);

-- Location: LCCOMB_X110_Y40_N28
\rf|r14|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r14|Q[1]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r14|Q[1]~feeder_combout\);

-- Location: FF_X110_Y40_N29
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

-- Location: FF_X110_Y40_N11
\rf|r6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(1));

-- Location: LCCOMB_X110_Y40_N10
\rf|value1[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~6_combout\ = (\IF_ID_Ins_reg|Q\(14) & (\rf|r14|Q\(1))) # (!\IF_ID_Ins_reg|Q\(14) & ((\rf|r6|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r14|Q\(1),
	datac => \rf|r6|Q\(1),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value1[1]~6_combout\);

-- Location: LCCOMB_X109_Y38_N4
\rf|value2[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~18_combout\ = (\ID_EX_src2_reg|Q[2]~5_combout\ & (\ID_EX_src2_reg|Q[2]~4_combout\)) # (!\ID_EX_src2_reg|Q[2]~5_combout\ & ((\ID_EX_src2_reg|Q[2]~4_combout\ & ((\rf|value1[1]~6_combout\))) # (!\ID_EX_src2_reg|Q[2]~4_combout\ & 
-- (\rf|value2[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_src2_reg|Q[2]~5_combout\,
	datab => \ID_EX_src2_reg|Q[2]~4_combout\,
	datac => \rf|value2[1]~17_combout\,
	datad => \rf|value1[1]~6_combout\,
	combout => \rf|value2[1]~18_combout\);

-- Location: LCCOMB_X113_Y36_N8
\rf|value2[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~19_combout\ = (\ID_EX_src2_reg|Q[2]~5_combout\ & ((\rf|value2[1]~18_combout\ & (\rf|value1[1]~7_combout\)) # (!\rf|value2[1]~18_combout\ & ((\rf|value2[1]~15_combout\))))) # (!\ID_EX_src2_reg|Q[2]~5_combout\ & 
-- (((\rf|value2[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[1]~7_combout\,
	datab => \ID_EX_src2_reg|Q[2]~5_combout\,
	datac => \rf|value2[1]~15_combout\,
	datad => \rf|value2[1]~18_combout\,
	combout => \rf|value2[1]~19_combout\);

-- Location: LCCOMB_X110_Y38_N4
\ID_EX_src2_reg|Q[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_src2_reg|Q[2]~6_combout\ = (\IF_ID_Ins_reg|Q\(18)) # (\IF_ID_Ins_reg|Q\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID_Ins_reg|Q\(18),
	datad => \IF_ID_Ins_reg|Q\(17),
	combout => \ID_EX_src2_reg|Q[2]~6_combout\);

-- Location: FF_X113_Y36_N23
\ID_EX_src2_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_src2_reg|Q[1]~2_combout\,
	asdata => \rf|value2[1]~19_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ID_EX_src2_reg|Q[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_src2_reg|Q\(1));

-- Location: LCCOMB_X114_Y36_N24
\alu_ins|add_ins|z[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|z\(1) = \ID_EX_AddSub_reg|Q~q\ $ (((\ID_EX_MemtoReg_reg|Q~q\ & ((\ID_EX_imm_reg|Q\(1)))) # (!\ID_EX_MemtoReg_reg|Q~q\ & (\ID_EX_src2_reg|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_src2_reg|Q\(1),
	datab => \ID_EX_MemtoReg_reg|Q~q\,
	datac => \ID_EX_imm_reg|Q\(1),
	datad => \ID_EX_AddSub_reg|Q~q\,
	combout => \alu_ins|add_ins|z\(1));

-- Location: LCCOMB_X114_Y36_N22
\alu_ins|add_ins|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage1|Cout~0_combout\ = (\ID_EX_src1_reg|Q\(0) & ((\ID_EX_AddSub_reg|Q~q\) # (\alusrc_mux|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_src1_reg|Q\(0),
	datab => \ID_EX_AddSub_reg|Q~q\,
	datad => \alusrc_mux|f[0]~0_combout\,
	combout => \alu_ins|add_ins|stage1|Cout~0_combout\);

-- Location: LCCOMB_X114_Y36_N12
\alu_ins|add_ins|stage1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage1|Cout~1_combout\ = (\ID_EX_AddSub_reg|Q~q\ & ((\ID_EX_MemtoReg_reg|Q~q\ & ((!\ID_EX_imm_reg|Q\(0)))) # (!\ID_EX_MemtoReg_reg|Q~q\ & (!\ID_EX_src2_reg|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_src2_reg|Q\(0),
	datab => \ID_EX_MemtoReg_reg|Q~q\,
	datac => \ID_EX_imm_reg|Q\(0),
	datad => \ID_EX_AddSub_reg|Q~q\,
	combout => \alu_ins|add_ins|stage1|Cout~1_combout\);

-- Location: LCCOMB_X114_Y36_N16
\alu_ins|add_ins|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage2|Cout~0_combout\ = (\ID_EX_src1_reg|Q\(1) & ((\alu_ins|add_ins|z\(1)) # ((\alu_ins|add_ins|stage1|Cout~0_combout\) # (\alu_ins|add_ins|stage1|Cout~1_combout\)))) # (!\ID_EX_src1_reg|Q\(1) & (\alu_ins|add_ins|z\(1) & 
-- ((\alu_ins|add_ins|stage1|Cout~0_combout\) # (\alu_ins|add_ins|stage1|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_src1_reg|Q\(1),
	datab => \alu_ins|add_ins|z\(1),
	datac => \alu_ins|add_ins|stage1|Cout~0_combout\,
	datad => \alu_ins|add_ins|stage1|Cout~1_combout\,
	combout => \alu_ins|add_ins|stage2|Cout~0_combout\);

-- Location: LCCOMB_X113_Y36_N6
\alu_ins|add_ins|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage3|s~combout\ = \ID_EX_AddSub_reg|Q~q\ $ (\ID_EX_src1_reg|Q\(2) $ (\alusrc_mux|f[2]~1_combout\ $ (\alu_ins|add_ins|stage2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_AddSub_reg|Q~q\,
	datab => \ID_EX_src1_reg|Q\(2),
	datac => \alusrc_mux|f[2]~1_combout\,
	datad => \alu_ins|add_ins|stage2|Cout~0_combout\,
	combout => \alu_ins|add_ins|stage3|s~combout\);

-- Location: LCCOMB_X114_Y40_N4
\alu_ins|mux4to1_ins|stage1|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage1|f~4_combout\ = (\ID_EX_ALUOP_reg|Q\(0) & \alu_ins|add_ins|stage3|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX_ALUOP_reg|Q\(0),
	datac => \alu_ins|add_ins|stage3|s~combout\,
	combout => \alu_ins|mux4to1_ins|stage1|f~4_combout\);

-- Location: FF_X114_Y40_N5
\EX_MEM_ALUOut_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu_ins|mux4to1_ins|stage1|f~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_ALUOut_reg|Q\(2));

-- Location: FF_X114_Y40_N1
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

-- Location: LCCOMB_X111_Y36_N22
\dm|value1[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[2]~31_combout\ = \alusrc_mux|f[2]~1_combout\ $ (\ID_EX_src1_reg|Q\(2) $ (\alu_ins|add_ins|stage2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alusrc_mux|f[2]~1_combout\,
	datac => \ID_EX_src1_reg|Q\(2),
	datad => \alu_ins|add_ins|stage2|Cout~0_combout\,
	combout => \dm|value1[2]~31_combout\);

-- Location: LCCOMB_X111_Y36_N0
\dm|value1[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[2]~32_combout\ = \alusrc_mux|f[2]~1_combout\ $ (\alu_ins|add_ins|stage4|s~3_combout\ $ (((\alu_ins|add_ins|stage2|Cout~0_combout\ & \ID_EX_src1_reg|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alusrc_mux|f[2]~1_combout\,
	datab => \alu_ins|add_ins|stage4|s~3_combout\,
	datac => \alu_ins|add_ins|stage2|Cout~0_combout\,
	datad => \ID_EX_src1_reg|Q\(2),
	combout => \dm|value1[2]~32_combout\);

-- Location: LCCOMB_X111_Y36_N18
\dm|value1[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[2]~33_combout\ = (\ID_EX_AddSub_reg|Q~q\ & (((!\alu_ins|add_ins|stage1|s~0_combout\ & !\dm|value1[2]~32_combout\)) # (!\dm|value1[2]~31_combout\))) # (!\ID_EX_AddSub_reg|Q~q\ & ((\dm|value1[2]~31_combout\) # 
-- ((\alu_ins|add_ins|stage1|s~0_combout\ & \dm|value1[2]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage1|s~0_combout\,
	datab => \ID_EX_AddSub_reg|Q~q\,
	datac => \dm|value1[2]~31_combout\,
	datad => \dm|value1[2]~32_combout\,
	combout => \dm|value1[2]~33_combout\);

-- Location: LCCOMB_X111_Y36_N20
\dm|value1[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[2]~34_combout\ = ((\alu_ins|add_ins|stage2|s~combout\ & (\dm|value1[1]~41_combout\)) # (!\alu_ins|add_ins|stage2|s~combout\ & ((!\dm|value1[2]~33_combout\)))) # (!\ID_EX_ALUOP_reg|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[1]~41_combout\,
	datab => \ID_EX_ALUOP_reg|Q\(0),
	datac => \alu_ins|add_ins|stage2|s~combout\,
	datad => \dm|value1[2]~33_combout\,
	combout => \dm|value1[2]~34_combout\);

-- Location: FF_X111_Y36_N21
\MEM_WB_DMout_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|value1[2]~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_DMout_reg|Q\(2));

-- Location: LCCOMB_X113_Y40_N2
\rf|m0|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~0_combout\ = (!\reset~input_o\ & ((\MEM_WB_MemtoReg_reg|Q~q\ & ((\MEM_WB_DMout_reg|Q\(2)))) # (!\MEM_WB_MemtoReg_reg|Q~q\ & (\MEM_WB_ALUOut_reg|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_ALUOut_reg|Q\(2),
	datac => \MEM_WB_MemtoReg_reg|Q~q\,
	datad => \MEM_WB_DMout_reg|Q\(2),
	combout => \rf|m0|stage3|f~0_combout\);

-- Location: LCCOMB_X111_Y40_N28
\rf|r0|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r0|Q[2]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r0|Q[2]~feeder_combout\);

-- Location: FF_X111_Y40_N29
\rf|r0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r0|Q[2]~feeder_combout\,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(2));

-- Location: FF_X112_Y40_N17
\rf|r8|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m8|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r8|Q\(2));

-- Location: LCCOMB_X112_Y36_N0
\rf|value2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~2_combout\ = (\IF_ID_Ins_reg|Q\(14) & ((\rf|r8|Q\(2)))) # (!\IF_ID_Ins_reg|Q\(14) & (\rf|r0|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r0|Q\(2),
	datac => \IF_ID_Ins_reg|Q\(14),
	datad => \rf|r8|Q\(2),
	combout => \rf|value2[2]~2_combout\);

-- Location: LCCOMB_X113_Y36_N24
\ID_EX_src2_reg|Q[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_src2_reg|Q[2]~0_combout\ = (\IF_ID_Ins_reg|Q\(12) & ((\rf|value2[2]~1_combout\))) # (!\IF_ID_Ins_reg|Q\(12) & (\rf|value2[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~2_combout\,
	datab => \IF_ID_Ins_reg|Q\(12),
	datad => \rf|value2[2]~1_combout\,
	combout => \ID_EX_src2_reg|Q[2]~0_combout\);

-- Location: LCCOMB_X114_Y38_N6
\rf|r11|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r11|Q[2]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r11|Q[2]~feeder_combout\);

-- Location: FF_X114_Y38_N7
\rf|r11|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r11|Q[2]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(2));

-- Location: FF_X113_Y38_N15
\rf|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(2));

-- Location: LCCOMB_X114_Y38_N16
\rf|r10|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r10|Q[2]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r10|Q[2]~feeder_combout\);

-- Location: FF_X114_Y38_N17
\rf|r10|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r10|Q[2]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(2));

-- Location: FF_X113_Y38_N29
\rf|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m2|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(2));

-- Location: LCCOMB_X113_Y38_N28
\rf|value2[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~22_combout\ = (\IF_ID_Ins_reg|Q\(12) & (((\IF_ID_Ins_reg|Q\(14))))) # (!\IF_ID_Ins_reg|Q\(12) & ((\IF_ID_Ins_reg|Q\(14) & (\rf|r10|Q\(2))) # (!\IF_ID_Ins_reg|Q\(14) & ((\rf|r2|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(12),
	datab => \rf|r10|Q\(2),
	datac => \rf|r2|Q\(2),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value2[2]~22_combout\);

-- Location: LCCOMB_X113_Y38_N14
\rf|value2[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~23_combout\ = (\IF_ID_Ins_reg|Q\(12) & ((\rf|value2[2]~22_combout\ & (\rf|r11|Q\(2))) # (!\rf|value2[2]~22_combout\ & ((\rf|r3|Q\(2)))))) # (!\IF_ID_Ins_reg|Q\(12) & (((\rf|value2[2]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r11|Q\(2),
	datab => \IF_ID_Ins_reg|Q\(12),
	datac => \rf|r3|Q\(2),
	datad => \rf|value2[2]~22_combout\,
	combout => \rf|value2[2]~23_combout\);

-- Location: LCCOMB_X112_Y38_N16
\rf|r5|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r5|Q[2]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r5|Q[2]~feeder_combout\);

-- Location: FF_X112_Y38_N17
\rf|r5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r5|Q[2]~feeder_combout\,
	ena => \rf|m5|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(2));

-- Location: LCCOMB_X114_Y38_N30
\rf|r13|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r13|Q[2]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r13|Q[2]~feeder_combout\);

-- Location: FF_X114_Y38_N31
\rf|r13|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r13|Q[2]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(2));

-- Location: LCCOMB_X109_Y38_N6
\rf|r12|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r12|Q[2]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r12|Q[2]~feeder_combout\);

-- Location: FF_X109_Y38_N7
\rf|r12|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r12|Q[2]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(2));

-- Location: FF_X109_Y38_N25
\rf|r4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(2));

-- Location: LCCOMB_X109_Y38_N24
\rf|value2[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~20_combout\ = (\IF_ID_Ins_reg|Q\(12) & (((\IF_ID_Ins_reg|Q\(14))))) # (!\IF_ID_Ins_reg|Q\(12) & ((\IF_ID_Ins_reg|Q\(14) & (\rf|r12|Q\(2))) # (!\IF_ID_Ins_reg|Q\(14) & ((\rf|r4|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r12|Q\(2),
	datab => \IF_ID_Ins_reg|Q\(12),
	datac => \rf|r4|Q\(2),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value2[2]~20_combout\);

-- Location: LCCOMB_X113_Y38_N12
\rf|value2[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~21_combout\ = (\IF_ID_Ins_reg|Q\(12) & ((\rf|value2[2]~20_combout\ & ((\rf|r13|Q\(2)))) # (!\rf|value2[2]~20_combout\ & (\rf|r5|Q\(2))))) # (!\IF_ID_Ins_reg|Q\(12) & (((\rf|value2[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r5|Q\(2),
	datab => \IF_ID_Ins_reg|Q\(12),
	datac => \rf|r13|Q\(2),
	datad => \rf|value2[2]~20_combout\,
	combout => \rf|value2[2]~21_combout\);

-- Location: LCCOMB_X113_Y38_N2
\rf|value2[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~24_combout\ = (\ID_EX_src2_reg|Q[2]~4_combout\ & (\ID_EX_src2_reg|Q[2]~5_combout\)) # (!\ID_EX_src2_reg|Q[2]~4_combout\ & ((\ID_EX_src2_reg|Q[2]~5_combout\ & ((\rf|value2[2]~21_combout\))) # (!\ID_EX_src2_reg|Q[2]~5_combout\ & 
-- (\rf|value2[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_src2_reg|Q[2]~4_combout\,
	datab => \ID_EX_src2_reg|Q[2]~5_combout\,
	datac => \rf|value2[2]~23_combout\,
	datad => \rf|value2[2]~21_combout\,
	combout => \rf|value2[2]~24_combout\);

-- Location: LCCOMB_X113_Y36_N4
\rf|value2[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~25_combout\ = (\ID_EX_src2_reg|Q[2]~4_combout\ & ((\rf|value2[2]~24_combout\ & (\rf|value2[2]~3_combout\)) # (!\rf|value2[2]~24_combout\ & ((\rf|value2[2]~0_combout\))))) # (!\ID_EX_src2_reg|Q[2]~4_combout\ & (((\rf|value2[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~3_combout\,
	datab => \ID_EX_src2_reg|Q[2]~4_combout\,
	datac => \rf|value2[2]~0_combout\,
	datad => \rf|value2[2]~24_combout\,
	combout => \rf|value2[2]~25_combout\);

-- Location: FF_X113_Y36_N25
\ID_EX_src2_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_src2_reg|Q[2]~0_combout\,
	asdata => \rf|value2[2]~25_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ID_EX_src2_reg|Q[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_src2_reg|Q\(2));

-- Location: LCCOMB_X114_Y36_N8
\alusrc_mux|f[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|f[2]~1_combout\ = (\ID_EX_MemtoReg_reg|Q~q\ & (\ID_EX_imm_reg|Q\(1))) # (!\ID_EX_MemtoReg_reg|Q~q\ & ((\ID_EX_src2_reg|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_imm_reg|Q\(1),
	datab => \ID_EX_MemtoReg_reg|Q~q\,
	datad => \ID_EX_src2_reg|Q\(2),
	combout => \alusrc_mux|f[2]~1_combout\);

-- Location: LCCOMB_X111_Y36_N16
\dm|value1[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[1]~27_combout\ = (\ID_EX_src1_reg|Q\(2) & ((\alu_ins|add_ins|stage2|Cout~0_combout\) # (\alusrc_mux|f[2]~1_combout\ $ (\ID_EX_AddSub_reg|Q~q\)))) # (!\ID_EX_src1_reg|Q\(2) & (\alu_ins|add_ins|stage2|Cout~0_combout\ & 
-- (\alusrc_mux|f[2]~1_combout\ $ (\ID_EX_AddSub_reg|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alusrc_mux|f[2]~1_combout\,
	datab => \ID_EX_AddSub_reg|Q~q\,
	datac => \ID_EX_src1_reg|Q\(2),
	datad => \alu_ins|add_ins|stage2|Cout~0_combout\,
	combout => \dm|value1[1]~27_combout\);

-- Location: LCCOMB_X111_Y36_N26
\dm|value1[1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[1]~41_combout\ = (\ID_EX_AddSub_reg|Q~q\ & (\alu_ins|add_ins|stage1|s~0_combout\ & (\alu_ins|add_ins|stage4|s~2_combout\ $ (\dm|value1[1]~27_combout\)))) # (!\ID_EX_AddSub_reg|Q~q\ & (!\alu_ins|add_ins|stage1|s~0_combout\ & 
-- (\alu_ins|add_ins|stage4|s~2_combout\ $ (!\dm|value1[1]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage4|s~2_combout\,
	datab => \ID_EX_AddSub_reg|Q~q\,
	datac => \alu_ins|add_ins|stage1|s~0_combout\,
	datad => \dm|value1[1]~27_combout\,
	combout => \dm|value1[1]~41_combout\);

-- Location: LCCOMB_X112_Y36_N6
\dm|value1[0]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~46_combout\ = \ID_EX_src1_reg|Q\(0) $ (((\ID_EX_MemtoReg_reg|Q~q\ & ((\ID_EX_imm_reg|Q\(0)))) # (!\ID_EX_MemtoReg_reg|Q~q\ & (\ID_EX_src2_reg|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_src2_reg|Q\(0),
	datab => \ID_EX_src1_reg|Q\(0),
	datac => \ID_EX_MemtoReg_reg|Q~q\,
	datad => \ID_EX_imm_reg|Q\(0),
	combout => \dm|value1[0]~46_combout\);

-- Location: LCCOMB_X111_Y36_N28
\dm|value1[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[1]~42_combout\ = \alu_ins|add_ins|stage1|s~0_combout\ $ (((\ID_EX_MemtoReg_reg|Q~q\ & ((\ID_EX_imm_reg|Q\(1)))) # (!\ID_EX_MemtoReg_reg|Q~q\ & (\ID_EX_src2_reg|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_MemtoReg_reg|Q~q\,
	datab => \ID_EX_src2_reg|Q\(2),
	datac => \ID_EX_imm_reg|Q\(1),
	datad => \alu_ins|add_ins|stage1|s~0_combout\,
	combout => \dm|value1[1]~42_combout\);

-- Location: LCCOMB_X111_Y36_N10
\dm|value1[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[1]~28_combout\ = (\dm|value1[0]~46_combout\) # (\ID_EX_src1_reg|Q\(2) $ (\alu_ins|add_ins|stage2|Cout~0_combout\ $ (\dm|value1[1]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[0]~46_combout\,
	datab => \ID_EX_src1_reg|Q\(2),
	datac => \alu_ins|add_ins|stage2|Cout~0_combout\,
	datad => \dm|value1[1]~42_combout\,
	combout => \dm|value1[1]~28_combout\);

-- Location: LCCOMB_X111_Y36_N24
\dm|value1[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[1]~29_combout\ = (\ID_EX_src1_reg|Q\(2) & ((\alu_ins|add_ins|stage2|Cout~0_combout\) # (\dm|value1[0]~46_combout\ $ (\dm|value1[1]~42_combout\)))) # (!\ID_EX_src1_reg|Q\(2) & (\alu_ins|add_ins|stage2|Cout~0_combout\ & (\dm|value1[0]~46_combout\ 
-- $ (\dm|value1[1]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[0]~46_combout\,
	datab => \ID_EX_src1_reg|Q\(2),
	datac => \alu_ins|add_ins|stage2|Cout~0_combout\,
	datad => \dm|value1[1]~42_combout\,
	combout => \dm|value1[1]~29_combout\);

-- Location: LCCOMB_X111_Y38_N24
\dm|value1[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[1]~30_combout\ = (\ID_EX_ALUOP_reg|Q\(0) & (\dm|value1[1]~28_combout\ & (\alu_ins|add_ins|stage4|s~3_combout\ $ (!\dm|value1[1]~29_combout\)))) # (!\ID_EX_ALUOP_reg|Q\(0) & (\alu_ins|add_ins|stage4|s~3_combout\ $ 
-- (((\dm|value1[1]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ALUOP_reg|Q\(0),
	datab => \alu_ins|add_ins|stage4|s~3_combout\,
	datac => \dm|value1[1]~28_combout\,
	datad => \dm|value1[1]~29_combout\,
	combout => \dm|value1[1]~30_combout\);

-- Location: LCCOMB_X111_Y38_N28
\dm|value1[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[1]~43_combout\ = (\alu_ins|add_ins|stage2|s~combout\ & ((\ID_EX_ALUOP_reg|Q\(0) & (\dm|value1[1]~41_combout\)) # (!\ID_EX_ALUOP_reg|Q\(0) & ((\dm|value1[1]~30_combout\))))) # (!\alu_ins|add_ins|stage2|s~combout\ & 
-- (((\dm|value1[1]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage2|s~combout\,
	datab => \ID_EX_ALUOP_reg|Q\(0),
	datac => \dm|value1[1]~41_combout\,
	datad => \dm|value1[1]~30_combout\,
	combout => \dm|value1[1]~43_combout\);

-- Location: FF_X111_Y38_N29
\MEM_WB_DMout_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|value1[1]~43_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_DMout_reg|Q\(1));

-- Location: LCCOMB_X111_Y38_N14
\rf|m0|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~3_combout\ = (!\reset~input_o\ & ((\MEM_WB_MemtoReg_reg|Q~q\ & (\MEM_WB_DMout_reg|Q\(1))) # (!\MEM_WB_MemtoReg_reg|Q~q\ & ((\MEM_WB_ALUOut_reg|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_DMout_reg|Q\(1),
	datac => \MEM_WB_MemtoReg_reg|Q~q\,
	datad => \MEM_WB_ALUOut_reg|Q\(1),
	combout => \rf|m0|stage3|f~3_combout\);

-- Location: FF_X114_Y38_N9
\rf|r15|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(1));

-- Location: LCCOMB_X112_Y40_N30
\rf|r7|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r7|Q[1]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r7|Q[1]~feeder_combout\);

-- Location: FF_X112_Y40_N31
\rf|r7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r7|Q[1]~feeder_combout\,
	ena => \rf|m7|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(1));

-- Location: LCCOMB_X113_Y38_N26
\rf|value1[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~7_combout\ = (\IF_ID_Ins_reg|Q\(14) & (\rf|r15|Q\(1))) # (!\IF_ID_Ins_reg|Q\(14) & ((\rf|r7|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(14),
	datac => \rf|r15|Q\(1),
	datad => \rf|r7|Q\(1),
	combout => \rf|value1[1]~7_combout\);

-- Location: LCCOMB_X113_Y36_N18
\rf|value1[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~8_combout\ = (\IF_ID_Ins_reg|Q\(21) & (((\IF_ID_Ins_reg|Q\(17))))) # (!\IF_ID_Ins_reg|Q\(21) & ((\IF_ID_Ins_reg|Q\(17) & (\rf|value1[1]~6_combout\)) # (!\IF_ID_Ins_reg|Q\(17) & ((\rf|value1[1]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(21),
	datab => \rf|value1[1]~6_combout\,
	datac => \rf|value1[1]~4_combout\,
	datad => \IF_ID_Ins_reg|Q\(17),
	combout => \rf|value1[1]~8_combout\);

-- Location: LCCOMB_X113_Y36_N26
\rf|value1[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~9_combout\ = (\rf|value1[1]~8_combout\ & ((\rf|value1[1]~7_combout\) # ((!\IF_ID_Ins_reg|Q\(21))))) # (!\rf|value1[1]~8_combout\ & (((\IF_ID_Ins_reg|Q\(21) & \rf|value1[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[1]~7_combout\,
	datab => \rf|value1[1]~8_combout\,
	datac => \IF_ID_Ins_reg|Q\(21),
	datad => \rf|value1[1]~5_combout\,
	combout => \rf|value1[1]~9_combout\);

-- Location: FF_X113_Y36_N27
\ID_EX_src1_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value1[1]~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_src1_reg|Q\(1));

-- Location: LCCOMB_X114_Y36_N18
\alu_ins|add_ins|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage2|s~combout\ = \ID_EX_src1_reg|Q\(1) $ (\alu_ins|add_ins|z\(1) $ (((\alu_ins|add_ins|stage1|Cout~0_combout\) # (\alu_ins|add_ins|stage1|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_src1_reg|Q\(1),
	datab => \alu_ins|add_ins|z\(1),
	datac => \alu_ins|add_ins|stage1|Cout~0_combout\,
	datad => \alu_ins|add_ins|stage1|Cout~1_combout\,
	combout => \alu_ins|add_ins|stage2|s~combout\);

-- Location: LCCOMB_X113_Y36_N12
\dm|value1[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[3]~36_combout\ = \ID_EX_src1_reg|Q\(1) $ (((\ID_EX_MemtoReg_reg|Q~q\ & ((\ID_EX_imm_reg|Q\(1)))) # (!\ID_EX_MemtoReg_reg|Q~q\ & (\ID_EX_src2_reg|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_src2_reg|Q\(1),
	datab => \ID_EX_src1_reg|Q\(1),
	datac => \ID_EX_MemtoReg_reg|Q~q\,
	datad => \ID_EX_imm_reg|Q\(1),
	combout => \dm|value1[3]~36_combout\);

-- Location: LCCOMB_X113_Y36_N2
\dm|value1[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[3]~37_combout\ = \ID_EX_src1_reg|Q\(2) $ (\alusrc_mux|f[2]~1_combout\ $ (\dm|value1[3]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX_src1_reg|Q\(2),
	datac => \alusrc_mux|f[2]~1_combout\,
	datad => \dm|value1[3]~36_combout\,
	combout => \dm|value1[3]~37_combout\);

-- Location: LCCOMB_X114_Y36_N14
\dm|value1[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[3]~38_combout\ = \alu_ins|add_ins|stage2|Cout~0_combout\ $ (\dm|value1[3]~37_combout\ $ (((\alu_ins|add_ins|stage1|Cout~1_combout\) # (\alu_ins|add_ins|stage1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage1|Cout~1_combout\,
	datab => \alu_ins|add_ins|stage2|Cout~0_combout\,
	datac => \alu_ins|add_ins|stage1|Cout~0_combout\,
	datad => \dm|value1[3]~37_combout\,
	combout => \dm|value1[3]~38_combout\);

-- Location: LCCOMB_X114_Y36_N20
\alu_ins|add_ins|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage3|Cout~0_combout\ = (\ID_EX_src1_reg|Q\(2) & ((\alu_ins|add_ins|stage2|Cout~0_combout\) # (\ID_EX_AddSub_reg|Q~q\ $ (\alusrc_mux|f[2]~1_combout\)))) # (!\ID_EX_src1_reg|Q\(2) & (\alu_ins|add_ins|stage2|Cout~0_combout\ & 
-- (\ID_EX_AddSub_reg|Q~q\ $ (\alusrc_mux|f[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_AddSub_reg|Q~q\,
	datab => \ID_EX_src1_reg|Q\(2),
	datac => \alusrc_mux|f[2]~1_combout\,
	datad => \alu_ins|add_ins|stage2|Cout~0_combout\,
	combout => \alu_ins|add_ins|stage3|Cout~0_combout\);

-- Location: LCCOMB_X114_Y36_N0
\alu_ins|add_ins|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage4|s~combout\ = \ID_EX_AddSub_reg|Q~q\ $ (\alu_ins|add_ins|stage4|s~2_combout\ $ (\alu_ins|add_ins|stage3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_AddSub_reg|Q~q\,
	datac => \alu_ins|add_ins|stage4|s~2_combout\,
	datad => \alu_ins|add_ins|stage3|Cout~0_combout\,
	combout => \alu_ins|add_ins|stage4|s~combout\);

-- Location: LCCOMB_X114_Y36_N4
\dm|value1[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[3]~44_combout\ = (\alu_ins|add_ins|stage4|s~combout\ & (!\alu_ins|add_ins|stage2|s~combout\ & (!\alu_ins|add_ins|stage3|s~combout\))) # (!\alu_ins|add_ins|stage4|s~combout\ & (((\dm|value1[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage2|s~combout\,
	datab => \alu_ins|add_ins|stage3|s~combout\,
	datac => \dm|value1[3]~38_combout\,
	datad => \alu_ins|add_ins|stage4|s~combout\,
	combout => \dm|value1[3]~44_combout\);

-- Location: LCCOMB_X114_Y36_N10
\dm|value1[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[3]~35_combout\ = (\alu_ins|mux4to1_ins|stage1|f~2_combout\ & (!\alu_ins|add_ins|stage4|s~combout\ & (\alu_ins|add_ins|stage3|s~combout\ & !\alu_ins|mux4to1_ins|stage1|f[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|mux4to1_ins|stage1|f~2_combout\,
	datab => \alu_ins|add_ins|stage4|s~combout\,
	datac => \alu_ins|add_ins|stage3|s~combout\,
	datad => \alu_ins|mux4to1_ins|stage1|f[0]~3_combout\,
	combout => \dm|value1[3]~35_combout\);

-- Location: LCCOMB_X114_Y36_N6
\dm|value1[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[3]~39_combout\ = (\dm|value1[3]~35_combout\) # ((\alu_ins|add_ins|stage1|s~1_combout\ & (\ID_EX_ALUOP_reg|Q\(0) & \dm|value1[3]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage1|s~1_combout\,
	datab => \ID_EX_ALUOP_reg|Q\(0),
	datac => \dm|value1[3]~44_combout\,
	datad => \dm|value1[3]~35_combout\,
	combout => \dm|value1[3]~39_combout\);

-- Location: FF_X114_Y36_N7
\MEM_WB_DMout_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|value1[3]~39_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_DMout_reg|Q\(3));

-- Location: LCCOMB_X111_Y36_N4
\alu_ins|mux4to1_ins|stage1|f~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage1|f~5_combout\ = (\ID_EX_ALUOP_reg|Q\(0) & (\alu_ins|add_ins|stage4|s~2_combout\ $ (\ID_EX_AddSub_reg|Q~q\ $ (\alu_ins|add_ins|stage3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage4|s~2_combout\,
	datab => \ID_EX_ALUOP_reg|Q\(0),
	datac => \ID_EX_AddSub_reg|Q~q\,
	datad => \alu_ins|add_ins|stage3|Cout~0_combout\,
	combout => \alu_ins|mux4to1_ins|stage1|f~5_combout\);

-- Location: FF_X111_Y36_N5
\EX_MEM_ALUOut_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu_ins|mux4to1_ins|stage1|f~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_ALUOut_reg|Q\(3));

-- Location: FF_X112_Y36_N29
\MEM_WB_ALUOut_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM_ALUOut_reg|Q\(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_ALUOut_reg|Q\(3));

-- Location: LCCOMB_X112_Y36_N20
\rf|m0|stage3|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~4_combout\ = (!\reset~input_o\ & ((\MEM_WB_MemtoReg_reg|Q~q\ & (\MEM_WB_DMout_reg|Q\(3))) # (!\MEM_WB_MemtoReg_reg|Q~q\ & ((\MEM_WB_ALUOut_reg|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_MemtoReg_reg|Q~q\,
	datab => \reset~input_o\,
	datac => \MEM_WB_DMout_reg|Q\(3),
	datad => \MEM_WB_ALUOut_reg|Q\(3),
	combout => \rf|m0|stage3|f~4_combout\);

-- Location: LCCOMB_X112_Y40_N4
\rf|r8|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r8|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r8|Q[3]~feeder_combout\);

-- Location: FF_X112_Y40_N5
\rf|r8|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r8|Q[3]~feeder_combout\,
	ena => \rf|m8|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r8|Q\(3));

-- Location: LCCOMB_X111_Y40_N6
\rf|r0|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r0|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r0|Q[3]~feeder_combout\);

-- Location: FF_X111_Y40_N7
\rf|r0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r0|Q[3]~feeder_combout\,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(3));

-- Location: LCCOMB_X112_Y40_N22
\rf|value1[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~10_combout\ = (\IF_ID_Ins_reg|Q\(14) & (\rf|r8|Q\(3))) # (!\IF_ID_Ins_reg|Q\(14) & ((\rf|r0|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r8|Q\(3),
	datac => \rf|r0|Q\(3),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value1[3]~10_combout\);

-- Location: LCCOMB_X114_Y39_N12
\rf|r1|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r1|Q[3]~feeder_combout\);

-- Location: FF_X114_Y39_N13
\rf|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[3]~feeder_combout\,
	ena => \rf|m1|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(3));

-- Location: LCCOMB_X114_Y40_N6
\rf|r9|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r9|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r9|Q[3]~feeder_combout\);

-- Location: FF_X114_Y40_N7
\rf|r9|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r9|Q[3]~feeder_combout\,
	ena => \rf|m9|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r9|Q\(3));

-- Location: LCCOMB_X114_Y39_N2
\rf|value1[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~11_combout\ = (\IF_ID_Ins_reg|Q\(14) & ((\rf|r9|Q\(3)))) # (!\IF_ID_Ins_reg|Q\(14) & (\rf|r1|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(3),
	datac => \rf|r9|Q\(3),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value1[3]~11_combout\);

-- Location: LCCOMB_X113_Y36_N10
\ID_EX_src2_reg|Q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_src2_reg|Q[3]~3_combout\ = (\IF_ID_Ins_reg|Q\(12) & ((\rf|value1[3]~11_combout\))) # (!\IF_ID_Ins_reg|Q\(12) & (\rf|value1[3]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(12),
	datab => \rf|value1[3]~10_combout\,
	datad => \rf|value1[3]~11_combout\,
	combout => \ID_EX_src2_reg|Q[3]~3_combout\);

-- Location: FF_X114_Y38_N27
\rf|r15|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(3));

-- Location: LCCOMB_X112_Y40_N24
\rf|r7|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r7|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r7|Q[3]~feeder_combout\);

-- Location: FF_X112_Y40_N25
\rf|r7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r7|Q[3]~feeder_combout\,
	ena => \rf|m7|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(3));

-- Location: LCCOMB_X114_Y38_N26
\rf|value1[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~13_combout\ = (\IF_ID_Ins_reg|Q\(14) & (\rf|r15|Q\(3))) # (!\IF_ID_Ins_reg|Q\(14) & ((\rf|r7|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(14),
	datac => \rf|r15|Q\(3),
	datad => \rf|r7|Q\(3),
	combout => \rf|value1[3]~13_combout\);

-- Location: LCCOMB_X112_Y38_N10
\rf|r5|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r5|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r5|Q[3]~feeder_combout\);

-- Location: FF_X112_Y38_N11
\rf|r5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r5|Q[3]~feeder_combout\,
	ena => \rf|m5|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(3));

-- Location: LCCOMB_X114_Y38_N20
\rf|r13|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r13|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r13|Q[3]~feeder_combout\);

-- Location: FF_X114_Y38_N21
\rf|r13|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r13|Q[3]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(3));

-- Location: LCCOMB_X109_Y38_N26
\rf|r12|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r12|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r12|Q[3]~feeder_combout\);

-- Location: FF_X109_Y38_N27
\rf|r12|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r12|Q[3]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(3));

-- Location: FF_X109_Y38_N21
\rf|r4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(3));

-- Location: LCCOMB_X109_Y38_N20
\rf|value2[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~26_combout\ = (\IF_ID_Ins_reg|Q\(12) & (((\IF_ID_Ins_reg|Q\(14))))) # (!\IF_ID_Ins_reg|Q\(12) & ((\IF_ID_Ins_reg|Q\(14) & (\rf|r12|Q\(3))) # (!\IF_ID_Ins_reg|Q\(14) & ((\rf|r4|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r12|Q\(3),
	datab => \IF_ID_Ins_reg|Q\(12),
	datac => \rf|r4|Q\(3),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value2[3]~26_combout\);

-- Location: LCCOMB_X114_Y38_N22
\rf|value2[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~27_combout\ = (\IF_ID_Ins_reg|Q\(12) & ((\rf|value2[3]~26_combout\ & ((\rf|r13|Q\(3)))) # (!\rf|value2[3]~26_combout\ & (\rf|r5|Q\(3))))) # (!\IF_ID_Ins_reg|Q\(12) & (((\rf|value2[3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r5|Q\(3),
	datab => \rf|r13|Q\(3),
	datac => \IF_ID_Ins_reg|Q\(12),
	datad => \rf|value2[3]~26_combout\,
	combout => \rf|value2[3]~27_combout\);

-- Location: LCCOMB_X113_Y38_N4
\rf|r3|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r3|Q[3]~feeder_combout\);

-- Location: FF_X113_Y38_N5
\rf|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r3|Q[3]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(3));

-- Location: FF_X114_Y38_N15
\rf|r11|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(3));

-- Location: LCCOMB_X111_Y38_N4
\rf|r2|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r2|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r2|Q[3]~feeder_combout\);

-- Location: FF_X111_Y38_N5
\rf|r2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r2|Q[3]~feeder_combout\,
	ena => \rf|m2|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(3));

-- Location: FF_X114_Y38_N29
\rf|r10|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(3));

-- Location: LCCOMB_X114_Y38_N28
\rf|value2[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~28_combout\ = (\IF_ID_Ins_reg|Q\(12) & (((\IF_ID_Ins_reg|Q\(14))))) # (!\IF_ID_Ins_reg|Q\(12) & ((\IF_ID_Ins_reg|Q\(14) & ((\rf|r10|Q\(3)))) # (!\IF_ID_Ins_reg|Q\(14) & (\rf|r2|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(12),
	datab => \rf|r2|Q\(3),
	datac => \rf|r10|Q\(3),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value2[3]~28_combout\);

-- Location: LCCOMB_X114_Y38_N14
\rf|value2[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~29_combout\ = (\IF_ID_Ins_reg|Q\(12) & ((\rf|value2[3]~28_combout\ & ((\rf|r11|Q\(3)))) # (!\rf|value2[3]~28_combout\ & (\rf|r3|Q\(3))))) # (!\IF_ID_Ins_reg|Q\(12) & (((\rf|value2[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(12),
	datab => \rf|r3|Q\(3),
	datac => \rf|r11|Q\(3),
	datad => \rf|value2[3]~28_combout\,
	combout => \rf|value2[3]~29_combout\);

-- Location: LCCOMB_X110_Y40_N24
\rf|r14|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r14|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r14|Q[3]~feeder_combout\);

-- Location: FF_X110_Y40_N25
\rf|r14|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r14|Q[3]~feeder_combout\,
	ena => \rf|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r14|Q\(3));

-- Location: FF_X110_Y40_N15
\rf|r6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(3));

-- Location: LCCOMB_X110_Y40_N14
\rf|value1[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~12_combout\ = (\IF_ID_Ins_reg|Q\(14) & (\rf|r14|Q\(3))) # (!\IF_ID_Ins_reg|Q\(14) & ((\rf|r6|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r14|Q\(3),
	datac => \rf|r6|Q\(3),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value1[3]~12_combout\);

-- Location: LCCOMB_X114_Y38_N12
\rf|value2[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~30_combout\ = (\ID_EX_src2_reg|Q[2]~4_combout\ & ((\ID_EX_src2_reg|Q[2]~5_combout\) # ((\rf|value1[3]~12_combout\)))) # (!\ID_EX_src2_reg|Q[2]~4_combout\ & (!\ID_EX_src2_reg|Q[2]~5_combout\ & (\rf|value2[3]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_src2_reg|Q[2]~4_combout\,
	datab => \ID_EX_src2_reg|Q[2]~5_combout\,
	datac => \rf|value2[3]~29_combout\,
	datad => \rf|value1[3]~12_combout\,
	combout => \rf|value2[3]~30_combout\);

-- Location: LCCOMB_X114_Y38_N4
\rf|value2[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~31_combout\ = (\ID_EX_src2_reg|Q[2]~5_combout\ & ((\rf|value2[3]~30_combout\ & (\rf|value1[3]~13_combout\)) # (!\rf|value2[3]~30_combout\ & ((\rf|value2[3]~27_combout\))))) # (!\ID_EX_src2_reg|Q[2]~5_combout\ & 
-- (((\rf|value2[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~13_combout\,
	datab => \ID_EX_src2_reg|Q[2]~5_combout\,
	datac => \rf|value2[3]~27_combout\,
	datad => \rf|value2[3]~30_combout\,
	combout => \rf|value2[3]~31_combout\);

-- Location: FF_X113_Y36_N11
\ID_EX_src2_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_src2_reg|Q[3]~3_combout\,
	asdata => \rf|value2[3]~31_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ID_EX_src2_reg|Q[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_src2_reg|Q\(3));

-- Location: FF_X112_Y36_N3
\ID_EX_imm_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \IF_ID_Ins_reg|Q\(14),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_imm_reg|Q\(3));

-- Location: LCCOMB_X113_Y36_N14
\rf|value1[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~14_combout\ = (\IF_ID_Ins_reg|Q\(21) & (((\IF_ID_Ins_reg|Q\(17))))) # (!\IF_ID_Ins_reg|Q\(21) & ((\IF_ID_Ins_reg|Q\(17) & (\rf|value1[3]~12_combout\)) # (!\IF_ID_Ins_reg|Q\(17) & ((\rf|value1[3]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(21),
	datab => \rf|value1[3]~12_combout\,
	datac => \IF_ID_Ins_reg|Q\(17),
	datad => \rf|value1[3]~10_combout\,
	combout => \rf|value1[3]~14_combout\);

-- Location: LCCOMB_X113_Y36_N28
\rf|value1[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~15_combout\ = (\IF_ID_Ins_reg|Q\(21) & ((\rf|value1[3]~14_combout\ & (\rf|value1[3]~13_combout\)) # (!\rf|value1[3]~14_combout\ & ((\rf|value1[3]~11_combout\))))) # (!\IF_ID_Ins_reg|Q\(21) & (((\rf|value1[3]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(21),
	datab => \rf|value1[3]~13_combout\,
	datac => \rf|value1[3]~14_combout\,
	datad => \rf|value1[3]~11_combout\,
	combout => \rf|value1[3]~15_combout\);

-- Location: FF_X113_Y36_N29
\ID_EX_src1_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value1[3]~15_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_src1_reg|Q\(3));

-- Location: LCCOMB_X112_Y36_N2
\alu_ins|add_ins|stage4|s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage4|s~2_combout\ = \ID_EX_src1_reg|Q\(3) $ (((\ID_EX_MemtoReg_reg|Q~q\ & ((\ID_EX_imm_reg|Q\(3)))) # (!\ID_EX_MemtoReg_reg|Q~q\ & (\ID_EX_src2_reg|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_MemtoReg_reg|Q~q\,
	datab => \ID_EX_src2_reg|Q\(3),
	datac => \ID_EX_imm_reg|Q\(3),
	datad => \ID_EX_src1_reg|Q\(3),
	combout => \alu_ins|add_ins|stage4|s~2_combout\);

-- Location: LCCOMB_X111_Y36_N8
\alu_ins|add_ins|stage4|s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage4|s~3_combout\ = \ID_EX_AddSub_reg|Q~q\ $ (\alu_ins|add_ins|stage4|s~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX_AddSub_reg|Q~q\,
	datad => \alu_ins|add_ins|stage4|s~2_combout\,
	combout => \alu_ins|add_ins|stage4|s~3_combout\);

-- Location: LCCOMB_X114_Y36_N28
\alu_ins|mux4to1_ins|stage1|f[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage1|f[0]~3_combout\ = (\ID_EX_ALUOP_reg|Q\(0) & (\alu_ins|add_ins|stage1|s~1_combout\)) # (!\ID_EX_ALUOP_reg|Q\(0) & ((\alu_ins|add_ins|stage4|s~3_combout\ $ (\alu_ins|add_ins|stage3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage1|s~1_combout\,
	datab => \ID_EX_ALUOP_reg|Q\(0),
	datac => \alu_ins|add_ins|stage4|s~3_combout\,
	datad => \alu_ins|add_ins|stage3|Cout~0_combout\,
	combout => \alu_ins|mux4to1_ins|stage1|f[0]~3_combout\);

-- Location: FF_X114_Y36_N29
\EX_MEM_ALUOut_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu_ins|mux4to1_ins|stage1|f[0]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_ALUOut_reg|Q\(0));

-- Location: FF_X110_Y36_N23
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

-- Location: LCCOMB_X111_Y36_N30
\dm|value1[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~40_combout\ = \ID_EX_AddSub_reg|Q~q\ $ (((\ID_EX_MemtoReg_reg|Q~q\ & ((\ID_EX_imm_reg|Q\(1)))) # (!\ID_EX_MemtoReg_reg|Q~q\ & (\ID_EX_src2_reg|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_MemtoReg_reg|Q~q\,
	datab => \ID_EX_src2_reg|Q\(2),
	datac => \ID_EX_AddSub_reg|Q~q\,
	datad => \ID_EX_imm_reg|Q\(1),
	combout => \dm|value1[0]~40_combout\);

-- Location: LCCOMB_X111_Y36_N12
\dm|value1[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~24_combout\ = \dm|value1[0]~40_combout\ $ (\ID_EX_src1_reg|Q\(2) $ (\alu_ins|add_ins|stage2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[0]~40_combout\,
	datab => \ID_EX_src1_reg|Q\(2),
	datad => \alu_ins|add_ins|stage2|Cout~0_combout\,
	combout => \dm|value1[0]~24_combout\);

-- Location: LCCOMB_X111_Y36_N14
\dm|value1[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~25_combout\ = \alu_ins|add_ins|stage4|s~3_combout\ $ (((\ID_EX_src1_reg|Q\(2) & ((\dm|value1[0]~40_combout\) # (\alu_ins|add_ins|stage2|Cout~0_combout\))) # (!\ID_EX_src1_reg|Q\(2) & (\dm|value1[0]~40_combout\ & 
-- \alu_ins|add_ins|stage2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_src1_reg|Q\(2),
	datab => \alu_ins|add_ins|stage4|s~3_combout\,
	datac => \dm|value1[0]~40_combout\,
	datad => \alu_ins|add_ins|stage2|Cout~0_combout\,
	combout => \dm|value1[0]~25_combout\);

-- Location: LCCOMB_X111_Y36_N2
\dm|value1[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~45_combout\ = (\alu_ins|add_ins|stage2|s~combout\ & (\alusrc_mux|f[0]~0_combout\ $ (((!\ID_EX_src1_reg|Q\(0)))))) # (!\alu_ins|add_ins|stage2|s~combout\ & (((\dm|value1[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alusrc_mux|f[0]~0_combout\,
	datab => \alu_ins|add_ins|stage2|s~combout\,
	datac => \dm|value1[0]~25_combout\,
	datad => \ID_EX_src1_reg|Q\(0),
	combout => \dm|value1[0]~45_combout\);

-- Location: LCCOMB_X110_Y36_N28
\dm|value1[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~26_combout\ = (\ID_EX_ALUOP_reg|Q\(0) & ((\dm|value1[0]~24_combout\ & (!\dm|value1[0]~46_combout\ & !\dm|value1[0]~45_combout\)) # (!\dm|value1[0]~24_combout\ & ((\dm|value1[0]~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ALUOP_reg|Q\(0),
	datab => \dm|value1[0]~46_combout\,
	datac => \dm|value1[0]~24_combout\,
	datad => \dm|value1[0]~45_combout\,
	combout => \dm|value1[0]~26_combout\);

-- Location: FF_X110_Y36_N29
\MEM_WB_DMout_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|value1[0]~26_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_DMout_reg|Q\(0));

-- Location: LCCOMB_X110_Y36_N26
\rf|m0|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~2_combout\ = (!\reset~input_o\ & ((\MEM_WB_MemtoReg_reg|Q~q\ & ((\MEM_WB_DMout_reg|Q\(0)))) # (!\MEM_WB_MemtoReg_reg|Q~q\ & (\MEM_WB_ALUOut_reg|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_ALUOut_reg|Q\(0),
	datab => \MEM_WB_DMout_reg|Q\(0),
	datac => \reset~input_o\,
	datad => \MEM_WB_MemtoReg_reg|Q~q\,
	combout => \rf|m0|stage3|f~2_combout\);

-- Location: LCCOMB_X111_Y40_N14
\rf|r0|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r0|Q[0]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r0|Q[0]~feeder_combout\);

-- Location: FF_X111_Y40_N15
\rf|r0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r0|Q[0]~feeder_combout\,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(0));

-- Location: FF_X112_Y40_N1
\rf|r8|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m8|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r8|Q\(0));

-- Location: LCCOMB_X112_Y40_N0
\rf|value2[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~6_combout\ = (\IF_ID_Ins_reg|Q\(14) & ((\rf|r8|Q\(0)))) # (!\IF_ID_Ins_reg|Q\(14) & (\rf|r0|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r0|Q\(0),
	datac => \rf|r8|Q\(0),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value2[0]~6_combout\);

-- Location: LCCOMB_X113_Y36_N20
\ID_EX_src2_reg|Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_src2_reg|Q[0]~1_combout\ = (\IF_ID_Ins_reg|Q\(12) & ((\rf|value2[0]~4_combout\))) # (!\IF_ID_Ins_reg|Q\(12) & (\rf|value2[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(12),
	datab => \rf|value2[0]~6_combout\,
	datad => \rf|value2[0]~4_combout\,
	combout => \ID_EX_src2_reg|Q[0]~1_combout\);

-- Location: LCCOMB_X114_Y38_N2
\rf|r11|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r11|Q[0]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r11|Q[0]~feeder_combout\);

-- Location: FF_X114_Y38_N3
\rf|r11|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r11|Q[0]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(0));

-- Location: LCCOMB_X110_Y36_N20
\rf|m2|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\MEM_WB_MemtoReg_reg|Q~q\ & ((\MEM_WB_DMout_reg|Q\(0)))) # (!\MEM_WB_MemtoReg_reg|Q~q\ & (\MEM_WB_ALUOut_reg|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_ALUOut_reg|Q\(0),
	datab => \MEM_WB_DMout_reg|Q\(0),
	datac => \reset~input_o\,
	datad => \MEM_WB_MemtoReg_reg|Q~q\,
	combout => \rf|m2|stage3|f[0]~0_combout\);

-- Location: FF_X113_Y38_N23
\rf|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m2|stage3|f[0]~0_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(0));

-- Location: FF_X111_Y38_N23
\rf|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m2|stage3|f[0]~0_combout\,
	sload => VCC,
	ena => \rf|m2|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(0));

-- Location: FF_X112_Y38_N15
\rf|r10|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(0));

-- Location: LCCOMB_X112_Y38_N14
\rf|value2[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~10_combout\ = (\IF_ID_Ins_reg|Q\(12) & (((\IF_ID_Ins_reg|Q\(14))))) # (!\IF_ID_Ins_reg|Q\(12) & ((\IF_ID_Ins_reg|Q\(14) & ((\rf|r10|Q\(0)))) # (!\IF_ID_Ins_reg|Q\(14) & (\rf|r2|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(12),
	datab => \rf|r2|Q\(0),
	datac => \rf|r10|Q\(0),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value2[0]~10_combout\);

-- Location: LCCOMB_X113_Y38_N22
\rf|value2[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~11_combout\ = (\IF_ID_Ins_reg|Q\(12) & ((\rf|value2[0]~10_combout\ & (\rf|r11|Q\(0))) # (!\rf|value2[0]~10_combout\ & ((\rf|r3|Q\(0)))))) # (!\IF_ID_Ins_reg|Q\(12) & (((\rf|value2[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(12),
	datab => \rf|r11|Q\(0),
	datac => \rf|r3|Q\(0),
	datad => \rf|value2[0]~10_combout\,
	combout => \rf|value2[0]~11_combout\);

-- Location: LCCOMB_X112_Y38_N0
\rf|r5|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r5|Q[0]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r5|Q[0]~feeder_combout\);

-- Location: FF_X112_Y38_N1
\rf|r5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r5|Q[0]~feeder_combout\,
	ena => \rf|m5|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(0));

-- Location: LCCOMB_X114_Y38_N0
\rf|r13|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r13|Q[0]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r13|Q[0]~feeder_combout\);

-- Location: FF_X114_Y38_N1
\rf|r13|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r13|Q[0]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(0));

-- Location: LCCOMB_X109_Y38_N28
\rf|r12|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r12|Q[0]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r12|Q[0]~feeder_combout\);

-- Location: FF_X109_Y38_N29
\rf|r12|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r12|Q[0]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(0));

-- Location: FF_X109_Y38_N31
\rf|r4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m2|stage3|f[0]~0_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(0));

-- Location: LCCOMB_X109_Y38_N30
\rf|value2[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~8_combout\ = (\IF_ID_Ins_reg|Q\(12) & (((\IF_ID_Ins_reg|Q\(14))))) # (!\IF_ID_Ins_reg|Q\(12) & ((\IF_ID_Ins_reg|Q\(14) & (\rf|r12|Q\(0))) # (!\IF_ID_Ins_reg|Q\(14) & ((\rf|r4|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r12|Q\(0),
	datab => \IF_ID_Ins_reg|Q\(12),
	datac => \rf|r4|Q\(0),
	datad => \IF_ID_Ins_reg|Q\(14),
	combout => \rf|value2[0]~8_combout\);

-- Location: LCCOMB_X113_Y38_N20
\rf|value2[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~9_combout\ = (\IF_ID_Ins_reg|Q\(12) & ((\rf|value2[0]~8_combout\ & ((\rf|r13|Q\(0)))) # (!\rf|value2[0]~8_combout\ & (\rf|r5|Q\(0))))) # (!\IF_ID_Ins_reg|Q\(12) & (((\rf|value2[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r5|Q\(0),
	datab => \IF_ID_Ins_reg|Q\(12),
	datac => \rf|r13|Q\(0),
	datad => \rf|value2[0]~8_combout\,
	combout => \rf|value2[0]~9_combout\);

-- Location: LCCOMB_X113_Y38_N16
\rf|value2[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~12_combout\ = (\ID_EX_src2_reg|Q[2]~4_combout\ & (\ID_EX_src2_reg|Q[2]~5_combout\)) # (!\ID_EX_src2_reg|Q[2]~4_combout\ & ((\ID_EX_src2_reg|Q[2]~5_combout\ & ((\rf|value2[0]~9_combout\))) # (!\ID_EX_src2_reg|Q[2]~5_combout\ & 
-- (\rf|value2[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_src2_reg|Q[2]~4_combout\,
	datab => \ID_EX_src2_reg|Q[2]~5_combout\,
	datac => \rf|value2[0]~11_combout\,
	datad => \rf|value2[0]~9_combout\,
	combout => \rf|value2[0]~12_combout\);

-- Location: LCCOMB_X113_Y38_N10
\rf|value2[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~13_combout\ = (\ID_EX_src2_reg|Q[2]~4_combout\ & ((\rf|value2[0]~12_combout\ & ((\rf|value2[0]~7_combout\))) # (!\rf|value2[0]~12_combout\ & (\rf|value2[0]~5_combout\)))) # (!\ID_EX_src2_reg|Q[2]~4_combout\ & (((\rf|value2[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_src2_reg|Q[2]~4_combout\,
	datab => \rf|value2[0]~5_combout\,
	datac => \rf|value2[0]~7_combout\,
	datad => \rf|value2[0]~12_combout\,
	combout => \rf|value2[0]~13_combout\);

-- Location: FF_X113_Y36_N21
\ID_EX_src2_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_src2_reg|Q[0]~1_combout\,
	asdata => \rf|value2[0]~13_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \ID_EX_src2_reg|Q[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_src2_reg|Q\(0));

-- Location: LCCOMB_X112_Y36_N8
\alu_ins|add_ins|stage1|s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage1|s~1_combout\ = \ID_EX_src1_reg|Q\(0) $ (((\ID_EX_MemtoReg_reg|Q~q\ & ((\ID_EX_imm_reg|Q\(0)))) # (!\ID_EX_MemtoReg_reg|Q~q\ & (\ID_EX_src2_reg|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_src2_reg|Q\(0),
	datab => \ID_EX_src1_reg|Q\(0),
	datac => \ID_EX_MemtoReg_reg|Q~q\,
	datad => \ID_EX_imm_reg|Q\(0),
	combout => \alu_ins|add_ins|stage1|s~1_combout\);

-- Location: LCCOMB_X112_Y36_N10
\BranchSignal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BranchSignal~0_combout\ = (!\alu_ins|add_ins|stage2|s~combout\ & !\alu_ins|add_ins|stage3|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_ins|add_ins|stage2|s~combout\,
	datad => \alu_ins|add_ins|stage3|s~combout\,
	combout => \BranchSignal~0_combout\);

-- Location: LCCOMB_X112_Y36_N12
BranchSignal : cycloneive_lcell_comb
-- Equation(s):
-- \BranchSignal~combout\ = (\BranchSignal~1_combout\ & (!\alu_ins|add_ins|stage1|s~1_combout\ & (!\alu_ins|add_ins|stage4|s~combout\ & \BranchSignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BranchSignal~1_combout\,
	datab => \alu_ins|add_ins|stage1|s~1_combout\,
	datac => \alu_ins|add_ins|stage4|s~combout\,
	datad => \BranchSignal~0_combout\,
	combout => \BranchSignal~combout\);

-- Location: LCCOMB_X112_Y36_N26
\br_mux|f[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \br_mux|f[1]~3_combout\ = (\BranchSignal~combout\) # (\pc|Q\(1) $ (\pc|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datac => \pc|Q\(0),
	datad => \BranchSignal~combout\,
	combout => \br_mux|f[1]~3_combout\);

-- Location: FF_X112_Y36_N27
\EX_MEM_PC_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \br_mux|f[1]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_PC_reg|Q\(1));

-- Location: LCCOMB_X114_Y40_N10
\MEM_WB_PC_reg|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB_PC_reg|Q[1]~feeder_combout\ = \EX_MEM_PC_reg|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM_PC_reg|Q\(1),
	combout => \MEM_WB_PC_reg|Q[1]~feeder_combout\);

-- Location: FF_X114_Y40_N11
\MEM_WB_PC_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEM_WB_PC_reg|Q[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_PC_reg|Q\(1));

-- Location: LCCOMB_X113_Y40_N30
\pc_mux|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~1_combout\ = (\MEM_WB_PC_reg|Q\(1) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM_WB_PC_reg|Q\(1),
	datad => \reset~input_o\,
	combout => \pc_mux|f~1_combout\);

-- Location: FF_X113_Y40_N31
\pc|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \pc_mux|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(1));

-- Location: LCCOMB_X113_Y40_N28
\im|output[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[0]~4_combout\ = (\pc|Q\(3)) # (\pc|Q\(2) $ (((!\pc|Q\(1) & !\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \im|output[0]~4_combout\);

-- Location: LCCOMB_X114_Y40_N8
\IF_ID_Ins_reg|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID_Ins_reg|Q[0]~feeder_combout\ = \im|output[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \im|output[0]~4_combout\,
	combout => \IF_ID_Ins_reg|Q[0]~feeder_combout\);

-- Location: FF_X114_Y40_N9
\IF_ID_Ins_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IF_ID_Ins_reg|Q[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_Ins_reg|Q\(0));

-- Location: LCCOMB_X112_Y36_N24
\br_mux|f[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \br_mux|f[0]~2_combout\ = (\BranchSignal~combout\ & (\IF_ID_Ins_reg|Q\(0))) # (!\BranchSignal~combout\ & ((!\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID_Ins_reg|Q\(0),
	datac => \pc|Q\(0),
	datad => \BranchSignal~combout\,
	combout => \br_mux|f[0]~2_combout\);

-- Location: FF_X112_Y36_N25
\EX_MEM_PC_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \br_mux|f[0]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_PC_reg|Q\(0));

-- Location: LCCOMB_X114_Y40_N12
\MEM_WB_PC_reg|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB_PC_reg|Q[0]~feeder_combout\ = \EX_MEM_PC_reg|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM_PC_reg|Q\(0),
	combout => \MEM_WB_PC_reg|Q[0]~feeder_combout\);

-- Location: FF_X114_Y40_N13
\MEM_WB_PC_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEM_WB_PC_reg|Q[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_PC_reg|Q\(0));

-- Location: LCCOMB_X113_Y40_N0
\pc_mux|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~0_combout\ = (\MEM_WB_PC_reg|Q\(0) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM_WB_PC_reg|Q\(0),
	datad => \reset~input_o\,
	combout => \pc_mux|f~0_combout\);

-- Location: FF_X113_Y40_N1
\pc|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \pc_mux|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(0));

-- Location: LCCOMB_X110_Y36_N22
\dm_mux|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[0]~0_combout\ = (\MEM_WB_MemtoReg_reg|Q~q\ & (\MEM_WB_DMout_reg|Q\(0))) # (!\MEM_WB_MemtoReg_reg|Q~q\ & ((\MEM_WB_ALUOut_reg|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB_DMout_reg|Q\(0),
	datac => \MEM_WB_ALUOut_reg|Q\(0),
	datad => \MEM_WB_MemtoReg_reg|Q~q\,
	combout => \dm_mux|f[0]~0_combout\);

-- Location: LCCOMB_X111_Y38_N22
\dm_mux|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~1_combout\ = (\MEM_WB_MemtoReg_reg|Q~q\ & (\MEM_WB_DMout_reg|Q\(1))) # (!\MEM_WB_MemtoReg_reg|Q~q\ & ((\MEM_WB_ALUOut_reg|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_MemtoReg_reg|Q~q\,
	datab => \MEM_WB_DMout_reg|Q\(1),
	datad => \MEM_WB_ALUOut_reg|Q\(1),
	combout => \dm_mux|f[1]~1_combout\);

-- Location: LCCOMB_X114_Y40_N0
\dm_mux|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[2]~2_combout\ = (\MEM_WB_MemtoReg_reg|Q~q\ & (\MEM_WB_DMout_reg|Q\(2))) # (!\MEM_WB_MemtoReg_reg|Q~q\ & ((\MEM_WB_ALUOut_reg|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB_DMout_reg|Q\(2),
	datac => \MEM_WB_ALUOut_reg|Q\(2),
	datad => \MEM_WB_MemtoReg_reg|Q~q\,
	combout => \dm_mux|f[2]~2_combout\);

-- Location: LCCOMB_X112_Y36_N28
\dm_mux|f[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[3]~3_combout\ = (\MEM_WB_MemtoReg_reg|Q~q\ & (\MEM_WB_DMout_reg|Q\(3))) # (!\MEM_WB_MemtoReg_reg|Q~q\ & ((\MEM_WB_ALUOut_reg|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_MemtoReg_reg|Q~q\,
	datab => \MEM_WB_DMout_reg|Q\(3),
	datac => \MEM_WB_ALUOut_reg|Q\(3),
	combout => \dm_mux|f[3]~3_combout\);

ww_current_pc(0) <= \current_pc[0]~output_o\;

ww_current_pc(1) <= \current_pc[1]~output_o\;

ww_current_pc(2) <= \current_pc[2]~output_o\;

ww_current_pc(3) <= \current_pc[3]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;
END structure;


