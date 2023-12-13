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

-- DATE "11/28/2023 15:54:46"

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
SIGNAL \pc_mux|f~0_combout\ : std_logic;
SIGNAL \addpc|stage2|s~combout\ : std_logic;
SIGNAL \addpc|stage3|s~combout\ : std_logic;
SIGNAL \addpc|stage4|s~combout\ : std_logic;
SIGNAL \im|output[26]~3_combout\ : std_logic;
SIGNAL \im|output[28]~0_combout\ : std_logic;
SIGNAL \IF_ID_MemReadmux|f~6_combout\ : std_logic;
SIGNAL \ID_EX_MemRead_reg|Q~q\ : std_logic;
SIGNAL \im|output[23]~1_combout\ : std_logic;
SIGNAL \instr_mux|f[23]~2_combout\ : std_logic;
SIGNAL \hazunit|stall~3_combout\ : std_logic;
SIGNAL \im|output[16]~4_combout\ : std_logic;
SIGNAL \instr_mux|f[16]~39_combout\ : std_logic;
SIGNAL \hazunit|Equal1~0_combout\ : std_logic;
SIGNAL \im|output[17]~5_combout\ : std_logic;
SIGNAL \instr_mux|f[17]~40_combout\ : std_logic;
SIGNAL \im|output[22]~2_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~3_combout\ : std_logic;
SIGNAL \im|stage_dec|s2|y[2]~0_combout\ : std_logic;
SIGNAL \instr_mux|f[21]~4_combout\ : std_logic;
SIGNAL \hazunit|stall~1_combout\ : std_logic;
SIGNAL \hazunit|stall~2_combout\ : std_logic;
SIGNAL \hazunit|stall~4_combout\ : std_logic;
SIGNAL \instr_mux|f[24]~1_combout\ : std_logic;
SIGNAL \instr_mux|f[26]~138_combout\ : std_logic;
SIGNAL \id|Equal0~0_combout\ : std_logic;
SIGNAL \ID_EX_RegDst_reg|Q~0_combout\ : std_logic;
SIGNAL \ID_EX_RegDst_reg|Q~q\ : std_logic;
SIGNAL \im|output[13]~6_combout\ : std_logic;
SIGNAL \writeaddress_reg_mux|f[2]~0_combout\ : std_logic;
SIGNAL \fwdunit|forwardB[0]~1_combout\ : std_logic;
SIGNAL \IF_ID_RegWritemux|f~0_combout\ : std_logic;
SIGNAL \ID_EX_RegWrite_reg|Q~q\ : std_logic;
SIGNAL \EX_MEM_RegWrite_reg|Q~q\ : std_logic;
SIGNAL \im|output[11]~7_combout\ : std_logic;
SIGNAL \writeaddress_reg_mux|f[1]~2_combout\ : std_logic;
SIGNAL \writeaddress_reg_mux|f[0]~1_combout\ : std_logic;
SIGNAL \fwdunit|forwardA[0]~2_combout\ : std_logic;
SIGNAL \fwdunit|forwardA~0_combout\ : std_logic;
SIGNAL \MEM_WB_RegWrite_reg|Q~q\ : std_logic;
SIGNAL \fwdunit|forwardB[1]~0_combout\ : std_logic;
SIGNAL \fwdunit|forwardB[1]~2_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~3_combout\ : std_logic;
SIGNAL \rf|m4|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|m12|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m8|stage3|f~0_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~83_combout\ : std_logic;
SIGNAL \rf|r4|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m4|stage3|f~2_combout\ : std_logic;
SIGNAL \rf|m12|stage3|f~1_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~82_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~101_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf|r5|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m5|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|m5|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf|r13|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m13|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|m13|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~77_combout\ : std_logic;
SIGNAL \rf|r1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|m9|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~78_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~79_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~102_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~90_combout\ : std_logic;
SIGNAL \rf|m15|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|r7|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m7|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~86_combout\ : std_logic;
SIGNAL \rf|r3|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|r11|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m11|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~87_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~96_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~98_combout\ : std_logic;
SIGNAL \rf|r10|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m10|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f~0_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~75_combout\ : std_logic;
SIGNAL \rf|m14|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m6|stage3|f~0_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~74_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~80_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~81_combout\ : std_logic;
SIGNAL \rf|value1[0]~20_combout\ : std_logic;
SIGNAL \rf|value1[0]~21_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~92_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~88_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~95_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~105_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~89_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~100_combout\ : std_logic;
SIGNAL \rf|value1[0]~27_combout\ : std_logic;
SIGNAL \rf|value1[0]~28_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~104_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~84_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~99_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~85_combout\ : std_logic;
SIGNAL \rf|value1[0]~24_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~94_combout\ : std_logic;
SIGNAL \rf|value1[0]~25_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~91_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~93_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~97_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~76_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~103_combout\ : std_logic;
SIGNAL \rf|value1[0]~22_combout\ : std_logic;
SIGNAL \rf|value1[0]~23_combout\ : std_logic;
SIGNAL \rf|value1[0]~26_combout\ : std_logic;
SIGNAL \rf|value1[0]~29_combout\ : std_logic;
SIGNAL \ALUFwd_mux1|stage3|f[0]~4_combout\ : std_logic;
SIGNAL \ALUFwd_mux1|stage3|f[0]~7_combout\ : std_logic;
SIGNAL \fwdunit|forwardB[0]~4_combout\ : std_logic;
SIGNAL \ID_EX_MemtoReg_reg|Q~q\ : std_logic;
SIGNAL \fwdunit|forwardB[1]~3_combout\ : std_logic;
SIGNAL \ALUFwd_mux2|stage3|f[1]~0_combout\ : std_logic;
SIGNAL \rf|value2[0]~27_combout\ : std_logic;
SIGNAL \rf|value2[0]~28_combout\ : std_logic;
SIGNAL \rf|value2[0]~20_combout\ : std_logic;
SIGNAL \rf|value2[0]~21_combout\ : std_logic;
SIGNAL \rf|value2[0]~24_combout\ : std_logic;
SIGNAL \rf|value2[0]~25_combout\ : std_logic;
SIGNAL \rf|value2[0]~22_combout\ : std_logic;
SIGNAL \rf|value2[0]~23_combout\ : std_logic;
SIGNAL \rf|value2[0]~26_combout\ : std_logic;
SIGNAL \rf|value2[0]~29_combout\ : std_logic;
SIGNAL \ALUFwd_mux2|stage3|f[1]~1_combout\ : std_logic;
SIGNAL \ALUFwd_mux2|stage3|f[0]~6_combout\ : std_logic;
SIGNAL \ALUFwd_mux2|stage3|f[0]~7_combout\ : std_logic;
SIGNAL \instr_mux|f[5]~139_combout\ : std_logic;
SIGNAL \instr_mux|f[5]~140_combout\ : std_logic;
SIGNAL \id|alu_temp[0]~0_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage1|f~3_combout\ : std_logic;
SIGNAL \rf|m8|stage3|f[3]~1_combout\ : std_logic;
SIGNAL \rf|r14|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~4_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~106_combout\ : std_logic;
SIGNAL \rf|r10|Q[3]~feeder_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~107_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~124_combout\ : std_logic;
SIGNAL \rf|r7|Q[3]~feeder_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~115_combout\ : std_logic;
SIGNAL \rf|r11|Q[3]~feeder_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~114_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~133_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~135_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~108_combout\ : std_logic;
SIGNAL \rf|r4|Q[3]~feeder_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~119_combout\ : std_logic;
SIGNAL \rf|r8|Q[3]~feeder_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~118_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~128_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~130_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~110_combout\ : std_logic;
SIGNAL \rf|r13|Q[3]~feeder_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~111_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~123_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~125_combout\ : std_logic;
SIGNAL \rf|value1[3]~34_combout\ : std_logic;
SIGNAL \rf|value1[3]~35_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~120_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~127_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~137_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~132_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~109_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~121_combout\ : std_logic;
SIGNAL \rf|value1[3]~32_combout\ : std_logic;
SIGNAL \rf|value1[3]~33_combout\ : std_logic;
SIGNAL \rf|value1[3]~36_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~136_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~116_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~131_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~126_combout\ : std_logic;
SIGNAL \rf|value1[3]~30_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~117_combout\ : std_logic;
SIGNAL \rf|value1[3]~31_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~122_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~112_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~134_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~129_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~113_combout\ : std_logic;
SIGNAL \rf|value1[3]~37_combout\ : std_logic;
SIGNAL \rf|value1[3]~38_combout\ : std_logic;
SIGNAL \rf|value1[3]~39_combout\ : std_logic;
SIGNAL \fwdunit|forwardA~1_combout\ : std_logic;
SIGNAL \ALUFwd_mux1|stage3|f[3]~6_combout\ : std_logic;
SIGNAL \ALUFwd_mux1|stage3|f[3]~5_combout\ : std_logic;
SIGNAL \rf|value2[3]~37_combout\ : std_logic;
SIGNAL \rf|value2[3]~38_combout\ : std_logic;
SIGNAL \rf|value2[3]~34_combout\ : std_logic;
SIGNAL \rf|value2[3]~35_combout\ : std_logic;
SIGNAL \rf|value2[3]~32_combout\ : std_logic;
SIGNAL \rf|value2[3]~33_combout\ : std_logic;
SIGNAL \rf|value2[3]~36_combout\ : std_logic;
SIGNAL \rf|value2[3]~30_combout\ : std_logic;
SIGNAL \rf|value2[3]~31_combout\ : std_logic;
SIGNAL \rf|value2[3]~39_combout\ : std_logic;
SIGNAL \ALUFwd_mux2|stage3|f[3]~8_combout\ : std_logic;
SIGNAL \ALUFwd_mux2|stage3|f[3]~9_combout\ : std_logic;
SIGNAL \rf|m4|stage3|f[2]~0_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~11_combout\ : std_logic;
SIGNAL \rf|r8|Q[2]~feeder_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~10_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~12_combout\ : std_logic;
SIGNAL \rf|r11|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r3|Q[2]~feeder_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~14_combout\ : std_logic;
SIGNAL \rf|r7|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r15|Q[2]~feeder_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~15_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~35_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~36_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~34_combout\ : std_logic;
SIGNAL \rf|r5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~20_combout\ : std_logic;
SIGNAL \rf|r1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~19_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~21_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~38_combout\ : std_logic;
SIGNAL \rf|value2[2]~7_combout\ : std_logic;
SIGNAL \rf|r14|Q[2]~feeder_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~5_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~6_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~26_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~37_combout\ : std_logic;
SIGNAL \rf|value2[2]~8_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~22_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~18_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~16_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~17_combout\ : std_logic;
SIGNAL \rf|value2[2]~0_combout\ : std_logic;
SIGNAL \rf|value2[2]~1_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~29_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~30_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~33_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~32_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~31_combout\ : std_logic;
SIGNAL \rf|value2[2]~4_combout\ : std_logic;
SIGNAL \rf|value2[2]~5_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~23_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~25_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~27_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~28_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~24_combout\ : std_logic;
SIGNAL \rf|value2[2]~2_combout\ : std_logic;
SIGNAL \rf|value2[2]~3_combout\ : std_logic;
SIGNAL \rf|value2[2]~6_combout\ : std_logic;
SIGNAL \rf|value2[2]~9_combout\ : std_logic;
SIGNAL \ALUFwd_mux2|stage3|f[2]~2_combout\ : std_logic;
SIGNAL \ALUFwd_mux2|stage3|f[2]~3_combout\ : std_logic;
SIGNAL \ALUFwd_mux1|stage3|f~0_combout\ : std_logic;
SIGNAL \ALUFwd_mux1|stage3|f~2_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage2|s~0_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~2_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~54_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~53_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~58_combout\ : std_logic;
SIGNAL \rf|r5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~41_combout\ : std_logic;
SIGNAL \rf|r1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~42_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~43_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~44_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~60_combout\ : std_logic;
SIGNAL \rf|r2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~50_combout\ : std_logic;
SIGNAL \rf|r14|Q[1]~feeder_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~49_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~64_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~65_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~71_combout\ : std_logic;
SIGNAL \rf|r3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r11|Q[1]~feeder_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~45_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~47_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~48_combout\ : std_logic;
SIGNAL \rf|value2[1]~10_combout\ : std_logic;
SIGNAL \rf|value2[1]~11_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~62_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~63_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~69_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~73_combout\ : std_logic;
SIGNAL \rf|value2[1]~17_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~68_combout\ : std_logic;
SIGNAL \rf|value2[1]~18_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~55_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~56_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~61_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~67_combout\ : std_logic;
SIGNAL \rf|value2[1]~14_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~72_combout\ : std_logic;
SIGNAL \rf|value2[1]~15_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~51_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~59_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~70_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~66_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~52_combout\ : std_logic;
SIGNAL \rf|value2[1]~12_combout\ : std_logic;
SIGNAL \rf|value2[1]~13_combout\ : std_logic;
SIGNAL \rf|value2[1]~16_combout\ : std_logic;
SIGNAL \rf|value2[1]~19_combout\ : std_logic;
SIGNAL \ALUFwd_mux2|stage3|f[1]~4_combout\ : std_logic;
SIGNAL \ALUFwd_mux2|stage3|f[1]~5_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage1|f~1_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[1]~1_combout\ : std_logic;
SIGNAL \rf|r15|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r7|Q[1]~feeder_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~46_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~57_combout\ : std_logic;
SIGNAL \rf|value1[1]~10_combout\ : std_logic;
SIGNAL \rf|value1[1]~11_combout\ : std_logic;
SIGNAL \rf|value1[1]~17_combout\ : std_logic;
SIGNAL \rf|value1[1]~18_combout\ : std_logic;
SIGNAL \rf|value1[1]~12_combout\ : std_logic;
SIGNAL \rf|value1[1]~13_combout\ : std_logic;
SIGNAL \rf|value1[1]~14_combout\ : std_logic;
SIGNAL \rf|value1[1]~15_combout\ : std_logic;
SIGNAL \rf|value1[1]~16_combout\ : std_logic;
SIGNAL \rf|value1[1]~19_combout\ : std_logic;
SIGNAL \ALUFwd_mux1|stage3|f~3_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage1|Cout~0_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage2|Cout~0_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage3|s~combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage1|f~2_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|r10|Q[2]~feeder_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~7_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~8_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~9_combout\ : std_logic;
SIGNAL \instr_mux|f[22]~13_combout\ : std_logic;
SIGNAL \rf|value1[2]~0_combout\ : std_logic;
SIGNAL \rf|value1[2]~1_combout\ : std_logic;
SIGNAL \rf|value1[2]~7_combout\ : std_logic;
SIGNAL \rf|value1[2]~8_combout\ : std_logic;
SIGNAL \rf|value1[2]~2_combout\ : std_logic;
SIGNAL \rf|value1[2]~3_combout\ : std_logic;
SIGNAL \rf|value1[2]~4_combout\ : std_logic;
SIGNAL \rf|value1[2]~5_combout\ : std_logic;
SIGNAL \rf|value1[2]~6_combout\ : std_logic;
SIGNAL \rf|value1[2]~9_combout\ : std_logic;
SIGNAL \ALUFwd_mux1|stage3|f~1_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage3|Cout~0_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage4|s~combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage1|f[0]~0_combout\ : std_logic;
SIGNAL \pc|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r12|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fwdunit|forwardA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MEM_WB_ALUOut_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM_WB_WriteAddr_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EX_MEM_ALUOut_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r8|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_ReadPort1_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EX_MEM_WriteAddr_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_ReadPort2_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_src1_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fwdunit|forwardB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ID_EX_src2_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_ALUOP_reg|Q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ID_EX_WriteAddr_reg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r14|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r6|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r10|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r0|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r11|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r15|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r7|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r9|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r13|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r5|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IF_ID_Ins_reg|Q\ : std_logic_vector(31 DOWNTO 0);
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

-- Location: LCCOMB_X110_Y38_N26
\pc_mux|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~0_combout\ = (!\pc|Q\(0) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(0),
	datad => \reset~input_o\,
	combout => \pc_mux|f~0_combout\);

-- Location: FF_X111_Y38_N25
\pc|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \pc_mux|f~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(0));

-- Location: LCCOMB_X110_Y38_N16
\addpc|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage2|s~combout\ = \pc|Q\(1) $ (\pc|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \addpc|stage2|s~combout\);

-- Location: FF_X110_Y38_N17
\pc|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \addpc|stage2|s~combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(1));

-- Location: LCCOMB_X110_Y38_N6
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

-- Location: FF_X110_Y38_N7
\pc|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \addpc|stage3|s~combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(2));

-- Location: LCCOMB_X110_Y38_N20
\addpc|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage4|s~combout\ = \pc|Q\(3) $ (((\pc|Q\(1) & (\pc|Q\(2) & \pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \addpc|stage4|s~combout\);

-- Location: FF_X110_Y38_N21
\pc|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \addpc|stage4|s~combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(3));

-- Location: LCCOMB_X110_Y38_N8
\im|output[26]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[26]~3_combout\ = (!\pc|Q\(3) & ((\pc|Q\(1) & ((!\pc|Q\(2)))) # (!\pc|Q\(1) & (\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \im|output[26]~3_combout\);

-- Location: LCCOMB_X110_Y38_N4
\im|output[28]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[28]~0_combout\ = (!\pc|Q\(3) & ((\pc|Q\(2) & (!\pc|Q\(1))) # (!\pc|Q\(2) & ((\pc|Q\(1)) # (\pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(1),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \im|output[28]~0_combout\);

-- Location: LCCOMB_X111_Y38_N10
\IF_ID_MemReadmux|f~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID_MemReadmux|f~6_combout\ = (!\im|output[26]~3_combout\ & (\im|output[28]~0_combout\ & \hazunit|stall~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[26]~3_combout\,
	datab => \im|output[28]~0_combout\,
	datad => \hazunit|stall~4_combout\,
	combout => \IF_ID_MemReadmux|f~6_combout\);

-- Location: FF_X111_Y38_N11
\ID_EX_MemRead_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IF_ID_MemReadmux|f~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_MemRead_reg|Q~q\);

-- Location: LCCOMB_X111_Y38_N24
\im|output[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[23]~1_combout\ = (!\pc|Q\(2) & (!\pc|Q\(3) & ((\pc|Q\(1)) # (\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \pc|Q\(3),
	combout => \im|output[23]~1_combout\);

-- Location: LCCOMB_X111_Y38_N4
\instr_mux|f[23]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[23]~2_combout\ = (\hazunit|stall~4_combout\ & (!\im|output[23]~1_combout\)) # (!\hazunit|stall~4_combout\ & ((\ID_EX_ReadPort1_reg|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[23]~1_combout\,
	datab => \hazunit|stall~4_combout\,
	datad => \ID_EX_ReadPort1_reg|Q\(2),
	combout => \instr_mux|f[23]~2_combout\);

-- Location: FF_X111_Y38_N23
\ID_EX_ReadPort1_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \instr_mux|f[23]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_ReadPort1_reg|Q\(2));

-- Location: LCCOMB_X111_Y38_N8
\hazunit|stall~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hazunit|stall~3_combout\ = (\ID_EX_MemRead_reg|Q~q\ & ((\ID_EX_ReadPort1_reg|Q\(2) $ (\im|output[23]~1_combout\)) # (!\hazunit|stall~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_MemRead_reg|Q~q\,
	datab => \ID_EX_ReadPort1_reg|Q\(2),
	datac => \im|output[23]~1_combout\,
	datad => \hazunit|stall~4_combout\,
	combout => \hazunit|stall~3_combout\);

-- Location: LCCOMB_X111_Y38_N18
\im|output[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[16]~4_combout\ = (!\pc|Q\(3) & (\pc|Q\(2) $ (((\pc|Q\(1)) # (\pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \im|output[16]~4_combout\);

-- Location: LCCOMB_X111_Y38_N0
\instr_mux|f[16]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[16]~39_combout\ = (\hazunit|stall~4_combout\ & (!\im|output[16]~4_combout\)) # (!\hazunit|stall~4_combout\ & ((\ID_EX_ReadPort2_reg|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[16]~4_combout\,
	datac => \ID_EX_ReadPort2_reg|Q\(0),
	datad => \hazunit|stall~4_combout\,
	combout => \instr_mux|f[16]~39_combout\);

-- Location: FF_X111_Y38_N1
\ID_EX_ReadPort2_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \instr_mux|f[16]~39_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_ReadPort2_reg|Q\(0));

-- Location: LCCOMB_X111_Y38_N22
\hazunit|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hazunit|Equal1~0_combout\ = (\hazunit|stall~4_combout\ & (\ID_EX_ReadPort2_reg|Q\(0) $ (!\im|output[16]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \ID_EX_ReadPort2_reg|Q\(0),
	datad => \im|output[16]~4_combout\,
	combout => \hazunit|Equal1~0_combout\);

-- Location: LCCOMB_X111_Y38_N16
\im|output[17]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[17]~5_combout\ = (!\pc|Q\(3) & ((\pc|Q\(1) & ((!\pc|Q\(2)))) # (!\pc|Q\(1) & (\pc|Q\(0) & \pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \im|output[17]~5_combout\);

-- Location: LCCOMB_X111_Y38_N30
\instr_mux|f[17]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[17]~40_combout\ = (\hazunit|stall~4_combout\ & ((!\im|output[17]~5_combout\))) # (!\hazunit|stall~4_combout\ & (\ID_EX_ReadPort2_reg|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hazunit|stall~4_combout\,
	datac => \ID_EX_ReadPort2_reg|Q\(1),
	datad => \im|output[17]~5_combout\,
	combout => \instr_mux|f[17]~40_combout\);

-- Location: FF_X111_Y38_N31
\ID_EX_ReadPort2_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \instr_mux|f[17]~40_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_ReadPort2_reg|Q\(1));

-- Location: FF_X111_Y38_N13
\ID_EX_ReadPort1_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \instr_mux|f[22]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_ReadPort1_reg|Q\(1));

-- Location: LCCOMB_X111_Y38_N2
\im|output[22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[22]~2_combout\ = (!\pc|Q\(3) & (\pc|Q\(1) $ (((\pc|Q\(0)) # (\pc|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \im|output[22]~2_combout\);

-- Location: LCCOMB_X111_Y38_N12
\instr_mux|f[22]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~3_combout\ = (\hazunit|stall~4_combout\ & ((!\im|output[22]~2_combout\))) # (!\hazunit|stall~4_combout\ & (\ID_EX_ReadPort1_reg|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hazunit|stall~4_combout\,
	datac => \ID_EX_ReadPort1_reg|Q\(1),
	datad => \im|output[22]~2_combout\,
	combout => \instr_mux|f[22]~3_combout\);

-- Location: FF_X111_Y38_N27
\ID_EX_ReadPort1_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \instr_mux|f[21]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_ReadPort1_reg|Q\(0));

-- Location: LCCOMB_X111_Y38_N20
\im|stage_dec|s2|y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|stage_dec|s2|y[2]~0_combout\ = ((\pc|Q\(0)) # ((\pc|Q\(2)) # (\pc|Q\(3)))) # (!\pc|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \im|stage_dec|s2|y[2]~0_combout\);

-- Location: LCCOMB_X111_Y38_N26
\instr_mux|f[21]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[21]~4_combout\ = (\hazunit|stall~4_combout\ & ((\im|stage_dec|s2|y[2]~0_combout\))) # (!\hazunit|stall~4_combout\ & (\ID_EX_ReadPort1_reg|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hazunit|stall~4_combout\,
	datac => \ID_EX_ReadPort1_reg|Q\(0),
	datad => \im|stage_dec|s2|y[2]~0_combout\,
	combout => \instr_mux|f[21]~4_combout\);

-- Location: LCCOMB_X111_Y38_N6
\hazunit|stall~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hazunit|stall~1_combout\ = (\instr_mux|f[22]~3_combout\ & (\ID_EX_ReadPort2_reg|Q\(1) & (\ID_EX_ReadPort2_reg|Q\(0) $ (!\instr_mux|f[21]~4_combout\)))) # (!\instr_mux|f[22]~3_combout\ & (!\ID_EX_ReadPort2_reg|Q\(1) & (\ID_EX_ReadPort2_reg|Q\(0) $ 
-- (!\instr_mux|f[21]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~3_combout\,
	datab => \ID_EX_ReadPort2_reg|Q\(0),
	datac => \instr_mux|f[21]~4_combout\,
	datad => \ID_EX_ReadPort2_reg|Q\(1),
	combout => \hazunit|stall~1_combout\);

-- Location: LCCOMB_X111_Y38_N28
\hazunit|stall~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hazunit|stall~2_combout\ = (\hazunit|stall~1_combout\) # ((!\hazunit|Equal1~0_combout\ & (\ID_EX_ReadPort2_reg|Q\(1) $ (!\instr_mux|f[17]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|Equal1~0_combout\,
	datab => \ID_EX_ReadPort2_reg|Q\(1),
	datac => \instr_mux|f[17]~40_combout\,
	datad => \hazunit|stall~1_combout\,
	combout => \hazunit|stall~2_combout\);

-- Location: LCCOMB_X111_Y38_N14
\hazunit|stall~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hazunit|stall~4_combout\ = ((\instr_mux|f[24]~1_combout\ $ (\ID_EX_ReadPort1_reg|Q\(3))) # (!\hazunit|stall~2_combout\)) # (!\hazunit|stall~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[24]~1_combout\,
	datab => \ID_EX_ReadPort1_reg|Q\(3),
	datac => \hazunit|stall~3_combout\,
	datad => \hazunit|stall~2_combout\,
	combout => \hazunit|stall~4_combout\);

-- Location: LCCOMB_X111_Y36_N24
\instr_mux|f[24]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[24]~1_combout\ = (\hazunit|stall~4_combout\ & ((!\im|output[28]~0_combout\))) # (!\hazunit|stall~4_combout\ & (\ID_EX_ReadPort1_reg|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hazunit|stall~4_combout\,
	datac => \ID_EX_ReadPort1_reg|Q\(3),
	datad => \im|output[28]~0_combout\,
	combout => \instr_mux|f[24]~1_combout\);

-- Location: FF_X111_Y36_N25
\ID_EX_ReadPort1_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \instr_mux|f[24]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_ReadPort1_reg|Q\(3));

-- Location: FF_X109_Y38_N9
\EX_MEM_WriteAddr_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \ID_EX_ReadPort1_reg|Q\(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_WriteAddr_reg|Q\(3));

-- Location: LCCOMB_X114_Y38_N4
\instr_mux|f[26]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[26]~138_combout\ = (\hazunit|stall~4_combout\ & (!\im|output[26]~3_combout\)) # (!\hazunit|stall~4_combout\ & ((\IF_ID_Ins_reg|Q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \im|output[26]~3_combout\,
	datac => \IF_ID_Ins_reg|Q\(26),
	datad => \hazunit|stall~4_combout\,
	combout => \instr_mux|f[26]~138_combout\);

-- Location: FF_X114_Y38_N5
\IF_ID_Ins_reg|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \instr_mux|f[26]~138_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_Ins_reg|Q\(26));

-- Location: LCCOMB_X114_Y38_N18
\id|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal0~0_combout\ = (!\instr_mux|f[24]~1_combout\ & ((\hazunit|stall~4_combout\ & ((!\im|output[26]~3_combout\))) # (!\hazunit|stall~4_combout\ & (\IF_ID_Ins_reg|Q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_Ins_reg|Q\(26),
	datab => \im|output[26]~3_combout\,
	datac => \instr_mux|f[24]~1_combout\,
	datad => \hazunit|stall~4_combout\,
	combout => \id|Equal0~0_combout\);

-- Location: LCCOMB_X114_Y38_N10
\ID_EX_RegDst_reg|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_RegDst_reg|Q~0_combout\ = !\id|Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \id|Equal0~0_combout\,
	combout => \ID_EX_RegDst_reg|Q~0_combout\);

-- Location: FF_X114_Y38_N11
\ID_EX_RegDst_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_RegDst_reg|Q~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_RegDst_reg|Q~q\);

-- Location: LCCOMB_X110_Y38_N12
\im|output[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[13]~6_combout\ = (\pc|Q\(3)) # ((\pc|Q\(1) & ((\pc|Q\(0)) # (\pc|Q\(2)))) # (!\pc|Q\(1) & (\pc|Q\(0) $ (!\pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \im|output[13]~6_combout\);

-- Location: FF_X111_Y38_N5
\ID_EX_WriteAddr_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \im|output[13]~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \hazunit|stall~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_WriteAddr_reg|Q\(2));

-- Location: LCCOMB_X110_Y38_N10
\writeaddress_reg_mux|f[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeaddress_reg_mux|f[2]~0_combout\ = (\ID_EX_RegDst_reg|Q~q\ & ((\ID_EX_WriteAddr_reg|Q\(2)))) # (!\ID_EX_RegDst_reg|Q~q\ & (\ID_EX_ReadPort1_reg|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX_ReadPort1_reg|Q\(2),
	datac => \ID_EX_RegDst_reg|Q~q\,
	datad => \ID_EX_WriteAddr_reg|Q\(2),
	combout => \writeaddress_reg_mux|f[2]~0_combout\);

-- Location: FF_X111_Y40_N23
\EX_MEM_WriteAddr_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \writeaddress_reg_mux|f[2]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_WriteAddr_reg|Q\(2));

-- Location: LCCOMB_X110_Y38_N18
\fwdunit|forwardB[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwdunit|forwardB[0]~1_combout\ = (\EX_MEM_WriteAddr_reg|Q\(3) & (\ID_EX_ReadPort1_reg|Q\(3) & (\ID_EX_ReadPort1_reg|Q\(2) $ (!\EX_MEM_WriteAddr_reg|Q\(2))))) # (!\EX_MEM_WriteAddr_reg|Q\(3) & (!\ID_EX_ReadPort1_reg|Q\(3) & (\ID_EX_ReadPort1_reg|Q\(2) $ 
-- (!\EX_MEM_WriteAddr_reg|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_WriteAddr_reg|Q\(3),
	datab => \ID_EX_ReadPort1_reg|Q\(2),
	datac => \ID_EX_ReadPort1_reg|Q\(3),
	datad => \EX_MEM_WriteAddr_reg|Q\(2),
	combout => \fwdunit|forwardB[0]~1_combout\);

-- Location: LCCOMB_X114_Y38_N8
\IF_ID_RegWritemux|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID_RegWritemux|f~0_combout\ = (\im|output[28]~0_combout\ & \hazunit|stall~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \im|output[28]~0_combout\,
	datad => \hazunit|stall~4_combout\,
	combout => \IF_ID_RegWritemux|f~0_combout\);

-- Location: FF_X114_Y38_N9
\ID_EX_RegWrite_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IF_ID_RegWritemux|f~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_RegWrite_reg|Q~q\);

-- Location: FF_X114_Y38_N31
\EX_MEM_RegWrite_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \ID_EX_RegWrite_reg|Q~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_RegWrite_reg|Q~q\);

-- Location: LCCOMB_X109_Y40_N0
\im|output[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[11]~7_combout\ = (\pc|Q\(3)) # ((\pc|Q\(2) & ((\pc|Q\(1)))) # (!\pc|Q\(2) & (!\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(3),
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \im|output[11]~7_combout\);

-- Location: FF_X109_Y40_N1
\ID_EX_WriteAddr_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[11]~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \hazunit|stall~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_WriteAddr_reg|Q\(0));

-- Location: LCCOMB_X114_Y38_N22
\writeaddress_reg_mux|f[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeaddress_reg_mux|f[1]~2_combout\ = (\ID_EX_RegDst_reg|Q~q\ & (\ID_EX_WriteAddr_reg|Q\(0))) # (!\ID_EX_RegDst_reg|Q~q\ & ((\ID_EX_ReadPort2_reg|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX_WriteAddr_reg|Q\(0),
	datac => \ID_EX_ReadPort2_reg|Q\(1),
	datad => \ID_EX_RegDst_reg|Q~q\,
	combout => \writeaddress_reg_mux|f[1]~2_combout\);

-- Location: FF_X114_Y38_N23
\EX_MEM_WriteAddr_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \writeaddress_reg_mux|f[1]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_WriteAddr_reg|Q\(1));

-- Location: LCCOMB_X110_Y38_N24
\writeaddress_reg_mux|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeaddress_reg_mux|f[0]~1_combout\ = (\ID_EX_RegDst_reg|Q~q\ & ((\ID_EX_WriteAddr_reg|Q\(0)))) # (!\ID_EX_RegDst_reg|Q~q\ & (\ID_EX_ReadPort2_reg|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX_ReadPort2_reg|Q\(0),
	datac => \ID_EX_RegDst_reg|Q~q\,
	datad => \ID_EX_WriteAddr_reg|Q\(0),
	combout => \writeaddress_reg_mux|f[0]~1_combout\);

-- Location: FF_X110_Y38_N25
\EX_MEM_WriteAddr_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \writeaddress_reg_mux|f[0]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_WriteAddr_reg|Q\(0));

-- Location: LCCOMB_X110_Y38_N22
\fwdunit|forwardA[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwdunit|forwardA[0]~2_combout\ = (\EX_MEM_WriteAddr_reg|Q\(1) & (\ID_EX_ReadPort1_reg|Q\(1) & (\ID_EX_ReadPort1_reg|Q\(0) $ (!\EX_MEM_WriteAddr_reg|Q\(0))))) # (!\EX_MEM_WriteAddr_reg|Q\(1) & (!\ID_EX_ReadPort1_reg|Q\(1) & (\ID_EX_ReadPort1_reg|Q\(0) $ 
-- (!\EX_MEM_WriteAddr_reg|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_WriteAddr_reg|Q\(1),
	datab => \ID_EX_ReadPort1_reg|Q\(0),
	datac => \ID_EX_ReadPort1_reg|Q\(1),
	datad => \EX_MEM_WriteAddr_reg|Q\(0),
	combout => \fwdunit|forwardA[0]~2_combout\);

-- Location: LCCOMB_X109_Y38_N16
\fwdunit|forwardA[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwdunit|forwardA\(0) = (\fwdunit|forwardB[0]~1_combout\ & (\EX_MEM_RegWrite_reg|Q~q\ & \fwdunit|forwardA[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fwdunit|forwardB[0]~1_combout\,
	datac => \EX_MEM_RegWrite_reg|Q~q\,
	datad => \fwdunit|forwardA[0]~2_combout\,
	combout => \fwdunit|forwardA\(0));

-- Location: FF_X114_Y38_N3
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

-- Location: FF_X111_Y40_N1
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

-- Location: LCCOMB_X110_Y38_N0
\fwdunit|forwardA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwdunit|forwardA~0_combout\ = (\ID_EX_ReadPort1_reg|Q\(1) & (\MEM_WB_WriteAddr_reg|Q\(1) & (\ID_EX_ReadPort1_reg|Q\(0) $ (!\MEM_WB_WriteAddr_reg|Q\(0))))) # (!\ID_EX_ReadPort1_reg|Q\(1) & (!\MEM_WB_WriteAddr_reg|Q\(1) & (\ID_EX_ReadPort1_reg|Q\(0) $ 
-- (!\MEM_WB_WriteAddr_reg|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(1),
	datab => \ID_EX_ReadPort1_reg|Q\(0),
	datac => \MEM_WB_WriteAddr_reg|Q\(1),
	datad => \MEM_WB_WriteAddr_reg|Q\(0),
	combout => \fwdunit|forwardA~0_combout\);

-- Location: FF_X109_Y38_N5
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

-- Location: FF_X111_Y40_N19
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

-- Location: FF_X109_Y38_N1
\MEM_WB_WriteAddr_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM_WriteAddr_reg|Q\(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_WriteAddr_reg|Q\(3));

-- Location: LCCOMB_X109_Y38_N0
\fwdunit|forwardB[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwdunit|forwardB[1]~0_combout\ = (\MEM_WB_WriteAddr_reg|Q\(2) & (\ID_EX_ReadPort1_reg|Q\(2) & (\ID_EX_ReadPort1_reg|Q\(3) $ (!\MEM_WB_WriteAddr_reg|Q\(3))))) # (!\MEM_WB_WriteAddr_reg|Q\(2) & (!\ID_EX_ReadPort1_reg|Q\(2) & (\ID_EX_ReadPort1_reg|Q\(3) $ 
-- (!\MEM_WB_WriteAddr_reg|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_WriteAddr_reg|Q\(2),
	datab => \ID_EX_ReadPort1_reg|Q\(3),
	datac => \MEM_WB_WriteAddr_reg|Q\(3),
	datad => \ID_EX_ReadPort1_reg|Q\(2),
	combout => \fwdunit|forwardB[1]~0_combout\);

-- Location: LCCOMB_X109_Y38_N4
\fwdunit|forwardB[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwdunit|forwardB[1]~2_combout\ = (\MEM_WB_RegWrite_reg|Q~q\ & \fwdunit|forwardB[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM_WB_RegWrite_reg|Q~q\,
	datad => \fwdunit|forwardB[1]~0_combout\,
	combout => \fwdunit|forwardB[1]~2_combout\);

-- Location: LCCOMB_X110_Y37_N22
\rf|m0|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~3_combout\ = (!\reset~input_o\ & \MEM_WB_ALUOut_reg|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \MEM_WB_ALUOut_reg|Q\(0),
	combout => \rf|m0|stage3|f~3_combout\);

-- Location: LCCOMB_X109_Y39_N20
\rf|m4|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f~1_combout\ = (\MEM_WB_RegWrite_reg|Q~q\ & (!\MEM_WB_WriteAddr_reg|Q\(3) & !\MEM_WB_WriteAddr_reg|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RegWrite_reg|Q~q\,
	datab => \MEM_WB_WriteAddr_reg|Q\(3),
	datad => \MEM_WB_WriteAddr_reg|Q\(0),
	combout => \rf|m4|stage3|f~1_combout\);

-- Location: LCCOMB_X109_Y39_N8
\rf|m0|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~1_combout\ = (\reset~input_o\) # ((\rf|m4|stage3|f~1_combout\ & (!\MEM_WB_WriteAddr_reg|Q\(1) & !\MEM_WB_WriteAddr_reg|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \rf|m4|stage3|f~1_combout\,
	datac => \MEM_WB_WriteAddr_reg|Q\(1),
	datad => \MEM_WB_WriteAddr_reg|Q\(2),
	combout => \rf|m0|stage3|f~1_combout\);

-- Location: FF_X110_Y40_N19
\rf|r0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(0));

-- Location: LCCOMB_X109_Y39_N26
\rf|m12|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m12|stage3|f~0_combout\ = (\MEM_WB_RegWrite_reg|Q~q\ & (\MEM_WB_WriteAddr_reg|Q\(3) & !\MEM_WB_WriteAddr_reg|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RegWrite_reg|Q~q\,
	datab => \MEM_WB_WriteAddr_reg|Q\(3),
	datad => \MEM_WB_WriteAddr_reg|Q\(0),
	combout => \rf|m12|stage3|f~0_combout\);

-- Location: LCCOMB_X114_Y38_N2
\rf|m8|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m8|stage3|f~0_combout\ = (\reset~input_o\) # ((\rf|m12|stage3|f~0_combout\ & (!\MEM_WB_WriteAddr_reg|Q\(1) & !\MEM_WB_WriteAddr_reg|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|m12|stage3|f~0_combout\,
	datab => \reset~input_o\,
	datac => \MEM_WB_WriteAddr_reg|Q\(1),
	datad => \MEM_WB_WriteAddr_reg|Q\(2),
	combout => \rf|m8|stage3|f~0_combout\);

-- Location: FF_X111_Y36_N5
\rf|r8|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m8|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r8|Q\(0));

-- Location: LCCOMB_X111_Y36_N4
\instr_mux|f[22]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~83_combout\ = (\instr_mux|f[24]~1_combout\ & ((\rf|r8|Q\(0)))) # (!\instr_mux|f[24]~1_combout\ & (\rf|r0|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r0|Q\(0),
	datac => \rf|r8|Q\(0),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~83_combout\);

-- Location: LCCOMB_X114_Y36_N12
\rf|r4|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r4|Q[0]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r4|Q[0]~feeder_combout\);

-- Location: LCCOMB_X109_Y39_N12
\rf|m4|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f~2_combout\ = (\reset~input_o\) # ((\rf|m4|stage3|f~1_combout\ & (!\MEM_WB_WriteAddr_reg|Q\(1) & \MEM_WB_WriteAddr_reg|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \rf|m4|stage3|f~1_combout\,
	datac => \MEM_WB_WriteAddr_reg|Q\(1),
	datad => \MEM_WB_WriteAddr_reg|Q\(2),
	combout => \rf|m4|stage3|f~2_combout\);

-- Location: FF_X114_Y36_N13
\rf|r4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r4|Q[0]~feeder_combout\,
	ena => \rf|m4|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(0));

-- Location: LCCOMB_X109_Y39_N2
\rf|m12|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m12|stage3|f~1_combout\ = (\reset~input_o\) # ((\rf|m12|stage3|f~0_combout\ & (\MEM_WB_WriteAddr_reg|Q\(2) & !\MEM_WB_WriteAddr_reg|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|m12|stage3|f~0_combout\,
	datab => \MEM_WB_WriteAddr_reg|Q\(2),
	datac => \MEM_WB_WriteAddr_reg|Q\(1),
	datad => \reset~input_o\,
	combout => \rf|m12|stage3|f~1_combout\);

-- Location: FF_X111_Y40_N21
\rf|r12|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m12|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(0));

-- Location: LCCOMB_X111_Y36_N22
\instr_mux|f[22]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~82_combout\ = (\instr_mux|f[24]~1_combout\ & ((\rf|r12|Q\(0)))) # (!\instr_mux|f[24]~1_combout\ & (\rf|r4|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r4|Q\(0),
	datac => \rf|r12|Q\(0),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~82_combout\);

-- Location: LCCOMB_X112_Y36_N10
\instr_mux|f[22]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~101_combout\ = (\hazunit|stall~4_combout\ & ((\im|output[23]~1_combout\ & (\instr_mux|f[22]~83_combout\)) # (!\im|output[23]~1_combout\ & ((\instr_mux|f[22]~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \im|output[23]~1_combout\,
	datac => \instr_mux|f[22]~83_combout\,
	datad => \instr_mux|f[22]~82_combout\,
	combout => \instr_mux|f[22]~101_combout\);

-- Location: LCCOMB_X110_Y37_N20
\rf|m1|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~1_combout\ = (\reset~input_o\) # (\MEM_WB_ALUOut_reg|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \MEM_WB_ALUOut_reg|Q\(0),
	combout => \rf|m1|stage3|f[0]~1_combout\);

-- Location: LCCOMB_X114_Y39_N26
\rf|r5|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r5|Q[0]~feeder_combout\ = \rf|m1|stage3|f[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f[0]~1_combout\,
	combout => \rf|r5|Q[0]~feeder_combout\);

-- Location: LCCOMB_X109_Y39_N16
\rf|m5|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m5|stage3|f[0]~0_combout\ = (\MEM_WB_RegWrite_reg|Q~q\ & (!\MEM_WB_WriteAddr_reg|Q\(3) & \MEM_WB_WriteAddr_reg|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RegWrite_reg|Q~q\,
	datab => \MEM_WB_WriteAddr_reg|Q\(3),
	datad => \MEM_WB_WriteAddr_reg|Q\(0),
	combout => \rf|m5|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X110_Y37_N4
\rf|m5|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m5|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((\MEM_WB_WriteAddr_reg|Q\(2) & (\rf|m5|stage3|f[0]~0_combout\ & !\MEM_WB_WriteAddr_reg|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_WriteAddr_reg|Q\(2),
	datac => \rf|m5|stage3|f[0]~0_combout\,
	datad => \MEM_WB_WriteAddr_reg|Q\(1),
	combout => \rf|m5|stage3|f[0]~1_combout\);

-- Location: FF_X114_Y39_N27
\rf|r5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r5|Q[0]~feeder_combout\,
	ena => \rf|m5|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(0));

-- Location: LCCOMB_X110_Y36_N22
\rf|r13|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r13|Q[0]~feeder_combout\ = \rf|m1|stage3|f[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f[0]~1_combout\,
	combout => \rf|r13|Q[0]~feeder_combout\);

-- Location: LCCOMB_X109_Y39_N22
\rf|m13|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m13|stage3|f[0]~0_combout\ = (\MEM_WB_RegWrite_reg|Q~q\ & (\MEM_WB_WriteAddr_reg|Q\(3) & \MEM_WB_WriteAddr_reg|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RegWrite_reg|Q~q\,
	datab => \MEM_WB_WriteAddr_reg|Q\(3),
	datad => \MEM_WB_WriteAddr_reg|Q\(0),
	combout => \rf|m13|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X110_Y37_N30
\rf|m13|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m13|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((\MEM_WB_WriteAddr_reg|Q\(2) & (\rf|m13|stage3|f[0]~0_combout\ & !\MEM_WB_WriteAddr_reg|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_WriteAddr_reg|Q\(2),
	datac => \rf|m13|stage3|f[0]~0_combout\,
	datad => \MEM_WB_WriteAddr_reg|Q\(1),
	combout => \rf|m13|stage3|f[0]~1_combout\);

-- Location: FF_X110_Y36_N23
\rf|r13|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r13|Q[0]~feeder_combout\,
	ena => \rf|m13|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(0));

-- Location: LCCOMB_X110_Y36_N4
\instr_mux|f[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~77_combout\ = (\instr_mux|f[24]~1_combout\ & ((\rf|r13|Q\(0)))) # (!\instr_mux|f[24]~1_combout\ & (\rf|r5|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r5|Q\(0),
	datac => \rf|r13|Q\(0),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~77_combout\);

-- Location: LCCOMB_X113_Y40_N4
\rf|r1|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[0]~feeder_combout\ = \rf|m1|stage3|f[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f[0]~1_combout\,
	combout => \rf|r1|Q[0]~feeder_combout\);

-- Location: LCCOMB_X110_Y37_N16
\rf|m1|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((!\MEM_WB_WriteAddr_reg|Q\(2) & (\rf|m5|stage3|f[0]~0_combout\ & !\MEM_WB_WriteAddr_reg|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_WriteAddr_reg|Q\(2),
	datac => \rf|m5|stage3|f[0]~0_combout\,
	datad => \MEM_WB_WriteAddr_reg|Q\(1),
	combout => \rf|m1|stage3|f[0]~0_combout\);

-- Location: FF_X113_Y40_N5
\rf|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[0]~feeder_combout\,
	ena => \rf|m1|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(0));

-- Location: LCCOMB_X109_Y39_N18
\rf|m9|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m9|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\rf|m13|stage3|f[0]~0_combout\ & (!\MEM_WB_WriteAddr_reg|Q\(2) & !\MEM_WB_WriteAddr_reg|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|m13|stage3|f[0]~0_combout\,
	datab => \MEM_WB_WriteAddr_reg|Q\(2),
	datac => \MEM_WB_WriteAddr_reg|Q\(1),
	datad => \reset~input_o\,
	combout => \rf|m9|stage3|f[0]~0_combout\);

-- Location: FF_X112_Y40_N7
\rf|r9|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f[0]~1_combout\,
	sload => VCC,
	ena => \rf|m9|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r9|Q\(0));

-- Location: LCCOMB_X110_Y36_N10
\instr_mux|f[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~78_combout\ = (\instr_mux|f[24]~1_combout\ & ((\rf|r9|Q\(0)))) # (!\instr_mux|f[24]~1_combout\ & (\rf|r1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r1|Q\(0),
	datac => \rf|r9|Q\(0),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~78_combout\);

-- Location: LCCOMB_X110_Y36_N12
\instr_mux|f[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~79_combout\ = (!\hazunit|stall~4_combout\ & ((\ID_EX_ReadPort1_reg|Q\(2) & (\instr_mux|f[22]~77_combout\)) # (!\ID_EX_ReadPort1_reg|Q\(2) & ((\instr_mux|f[22]~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(2),
	datab => \hazunit|stall~4_combout\,
	datac => \instr_mux|f[22]~77_combout\,
	datad => \instr_mux|f[22]~78_combout\,
	combout => \instr_mux|f[22]~79_combout\);

-- Location: LCCOMB_X112_Y36_N22
\instr_mux|f[22]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~102_combout\ = (\instr_mux|f[22]~101_combout\) # (\instr_mux|f[22]~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~101_combout\,
	datad => \instr_mux|f[22]~79_combout\,
	combout => \instr_mux|f[22]~102_combout\);

-- Location: LCCOMB_X110_Y36_N30
\instr_mux|f[22]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~90_combout\ = (\instr_mux|f[23]~2_combout\ & (\instr_mux|f[22]~77_combout\)) # (!\instr_mux|f[23]~2_combout\ & ((\instr_mux|f[22]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_mux|f[23]~2_combout\,
	datac => \instr_mux|f[22]~77_combout\,
	datad => \instr_mux|f[22]~78_combout\,
	combout => \instr_mux|f[22]~90_combout\);

-- Location: LCCOMB_X109_Y36_N12
\rf|m15|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m15|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\MEM_WB_WriteAddr_reg|Q\(1) & (\MEM_WB_WriteAddr_reg|Q\(2) & \rf|m13|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_WriteAddr_reg|Q\(1),
	datab => \reset~input_o\,
	datac => \MEM_WB_WriteAddr_reg|Q\(2),
	datad => \rf|m13|stage3|f[0]~0_combout\,
	combout => \rf|m15|stage3|f[0]~0_combout\);

-- Location: FF_X112_Y36_N23
\rf|r15|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f[0]~1_combout\,
	sload => VCC,
	ena => \rf|m15|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(0));

-- Location: LCCOMB_X114_Y36_N14
\rf|r7|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r7|Q[0]~feeder_combout\ = \rf|m1|stage3|f[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f[0]~1_combout\,
	combout => \rf|r7|Q[0]~feeder_combout\);

-- Location: LCCOMB_X109_Y36_N18
\rf|m7|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m7|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\MEM_WB_WriteAddr_reg|Q\(2) & (\MEM_WB_WriteAddr_reg|Q\(1) & \rf|m5|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_WriteAddr_reg|Q\(2),
	datab => \reset~input_o\,
	datac => \MEM_WB_WriteAddr_reg|Q\(1),
	datad => \rf|m5|stage3|f[0]~0_combout\,
	combout => \rf|m7|stage3|f[0]~0_combout\);

-- Location: FF_X114_Y36_N15
\rf|r7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r7|Q[0]~feeder_combout\,
	ena => \rf|m7|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(0));

-- Location: LCCOMB_X113_Y36_N4
\instr_mux|f[22]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~86_combout\ = (\instr_mux|f[24]~1_combout\ & (\rf|r15|Q\(0))) # (!\instr_mux|f[24]~1_combout\ & ((\rf|r7|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r15|Q\(0),
	datac => \rf|r7|Q\(0),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~86_combout\);

-- Location: LCCOMB_X114_Y40_N18
\rf|r3|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[0]~feeder_combout\ = \rf|m1|stage3|f[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f[0]~1_combout\,
	combout => \rf|r3|Q[0]~feeder_combout\);

-- Location: LCCOMB_X110_Y37_N26
\rf|m3|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((!\MEM_WB_WriteAddr_reg|Q\(2) & (\rf|m5|stage3|f[0]~0_combout\ & \MEM_WB_WriteAddr_reg|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_WriteAddr_reg|Q\(2),
	datac => \rf|m5|stage3|f[0]~0_combout\,
	datad => \MEM_WB_WriteAddr_reg|Q\(1),
	combout => \rf|m3|stage3|f[0]~0_combout\);

-- Location: FF_X114_Y40_N19
\rf|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r3|Q[0]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(0));

-- Location: LCCOMB_X114_Y37_N24
\rf|r11|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r11|Q[0]~feeder_combout\ = \rf|m1|stage3|f[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f[0]~1_combout\,
	combout => \rf|r11|Q[0]~feeder_combout\);

-- Location: LCCOMB_X110_Y37_N0
\rf|m11|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m11|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((!\MEM_WB_WriteAddr_reg|Q\(2) & (\rf|m13|stage3|f[0]~0_combout\ & \MEM_WB_WriteAddr_reg|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_WriteAddr_reg|Q\(2),
	datac => \rf|m13|stage3|f[0]~0_combout\,
	datad => \MEM_WB_WriteAddr_reg|Q\(1),
	combout => \rf|m11|stage3|f[0]~0_combout\);

-- Location: FF_X114_Y37_N25
\rf|r11|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r11|Q[0]~feeder_combout\,
	ena => \rf|m11|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(0));

-- Location: LCCOMB_X113_Y36_N2
\instr_mux|f[22]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~87_combout\ = (\instr_mux|f[24]~1_combout\ & ((\rf|r11|Q\(0)))) # (!\instr_mux|f[24]~1_combout\ & (\rf|r3|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(0),
	datac => \rf|r11|Q\(0),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~87_combout\);

-- Location: LCCOMB_X113_Y36_N8
\instr_mux|f[22]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~96_combout\ = (\hazunit|stall~4_combout\ & ((\im|output[23]~1_combout\ & ((\instr_mux|f[22]~87_combout\))) # (!\im|output[23]~1_combout\ & (\instr_mux|f[22]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \im|output[23]~1_combout\,
	datac => \instr_mux|f[22]~86_combout\,
	datad => \instr_mux|f[22]~87_combout\,
	combout => \instr_mux|f[22]~96_combout\);

-- Location: LCCOMB_X112_Y36_N26
\instr_mux|f[22]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~98_combout\ = (\instr_mux|f[22]~96_combout\) # (\instr_mux|f[22]~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_mux|f[22]~96_combout\,
	datad => \instr_mux|f[22]~79_combout\,
	combout => \instr_mux|f[22]~98_combout\);

-- Location: LCCOMB_X113_Y40_N10
\rf|r10|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r10|Q[0]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r10|Q[0]~feeder_combout\);

-- Location: LCCOMB_X109_Y39_N0
\rf|m10|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m10|stage3|f~0_combout\ = (\reset~input_o\) # ((\rf|m12|stage3|f~0_combout\ & (!\MEM_WB_WriteAddr_reg|Q\(2) & \MEM_WB_WriteAddr_reg|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|m12|stage3|f~0_combout\,
	datab => \MEM_WB_WriteAddr_reg|Q\(2),
	datac => \MEM_WB_WriteAddr_reg|Q\(1),
	datad => \reset~input_o\,
	combout => \rf|m10|stage3|f~0_combout\);

-- Location: FF_X113_Y40_N11
\rf|r10|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r10|Q[0]~feeder_combout\,
	ena => \rf|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(0));

-- Location: LCCOMB_X109_Y39_N30
\rf|m2|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f~0_combout\ = (\reset~input_o\) # ((\rf|m4|stage3|f~1_combout\ & (\MEM_WB_WriteAddr_reg|Q\(1) & !\MEM_WB_WriteAddr_reg|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \rf|m4|stage3|f~1_combout\,
	datac => \MEM_WB_WriteAddr_reg|Q\(1),
	datad => \MEM_WB_WriteAddr_reg|Q\(2),
	combout => \rf|m2|stage3|f~0_combout\);

-- Location: FF_X113_Y36_N15
\rf|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(0));

-- Location: LCCOMB_X113_Y36_N14
\instr_mux|f[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~75_combout\ = (\instr_mux|f[24]~1_combout\ & (\rf|r10|Q\(0))) # (!\instr_mux|f[24]~1_combout\ & ((\rf|r2|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r10|Q\(0),
	datac => \rf|r2|Q\(0),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~75_combout\);

-- Location: LCCOMB_X114_Y38_N28
\rf|m14|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m14|stage3|f~0_combout\ = (\reset~input_o\) # ((\rf|m12|stage3|f~0_combout\ & (\MEM_WB_WriteAddr_reg|Q\(1) & \MEM_WB_WriteAddr_reg|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|m12|stage3|f~0_combout\,
	datab => \MEM_WB_WriteAddr_reg|Q\(1),
	datac => \MEM_WB_WriteAddr_reg|Q\(2),
	datad => \reset~input_o\,
	combout => \rf|m14|stage3|f~0_combout\);

-- Location: FF_X114_Y38_N25
\rf|r14|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r14|Q\(0));

-- Location: LCCOMB_X109_Y39_N6
\rf|m6|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m6|stage3|f~0_combout\ = (\reset~input_o\) # ((\rf|m4|stage3|f~1_combout\ & (\MEM_WB_WriteAddr_reg|Q\(1) & \MEM_WB_WriteAddr_reg|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \rf|m4|stage3|f~1_combout\,
	datac => \MEM_WB_WriteAddr_reg|Q\(1),
	datad => \MEM_WB_WriteAddr_reg|Q\(2),
	combout => \rf|m6|stage3|f~0_combout\);

-- Location: FF_X113_Y36_N21
\rf|r6|Q[0]\ : dffeas
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
	q => \rf|r6|Q\(0));

-- Location: LCCOMB_X113_Y36_N20
\instr_mux|f[22]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~74_combout\ = (\instr_mux|f[24]~1_combout\ & (\rf|r14|Q\(0))) # (!\instr_mux|f[24]~1_combout\ & ((\rf|r6|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r14|Q\(0),
	datac => \rf|r6|Q\(0),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~74_combout\);

-- Location: LCCOMB_X113_Y36_N6
\instr_mux|f[22]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~80_combout\ = (\hazunit|stall~4_combout\ & ((\im|output[23]~1_combout\ & (\instr_mux|f[22]~75_combout\)) # (!\im|output[23]~1_combout\ & ((\instr_mux|f[22]~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \im|output[23]~1_combout\,
	datac => \instr_mux|f[22]~75_combout\,
	datad => \instr_mux|f[22]~74_combout\,
	combout => \instr_mux|f[22]~80_combout\);

-- Location: LCCOMB_X112_Y36_N2
\instr_mux|f[22]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~81_combout\ = (\instr_mux|f[22]~79_combout\) # (\instr_mux|f[22]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~79_combout\,
	datad => \instr_mux|f[22]~80_combout\,
	combout => \instr_mux|f[22]~81_combout\);

-- Location: LCCOMB_X112_Y36_N0
\rf|value1[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~20_combout\ = (\im|output[22]~2_combout\ & (\im|stage_dec|s2|y[2]~0_combout\)) # (!\im|output[22]~2_combout\ & ((\im|stage_dec|s2|y[2]~0_combout\ & (\instr_mux|f[22]~98_combout\)) # (!\im|stage_dec|s2|y[2]~0_combout\ & 
-- ((\instr_mux|f[22]~81_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[22]~2_combout\,
	datab => \im|stage_dec|s2|y[2]~0_combout\,
	datac => \instr_mux|f[22]~98_combout\,
	datad => \instr_mux|f[22]~81_combout\,
	combout => \rf|value1[0]~20_combout\);

-- Location: LCCOMB_X112_Y36_N6
\rf|value1[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~21_combout\ = (\im|output[22]~2_combout\ & ((\rf|value1[0]~20_combout\ & ((\instr_mux|f[22]~90_combout\))) # (!\rf|value1[0]~20_combout\ & (\instr_mux|f[22]~102_combout\)))) # (!\im|output[22]~2_combout\ & (((\rf|value1[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~102_combout\,
	datab => \im|output[22]~2_combout\,
	datac => \instr_mux|f[22]~90_combout\,
	datad => \rf|value1[0]~20_combout\,
	combout => \rf|value1[0]~21_combout\);

-- Location: LCCOMB_X110_Y36_N24
\instr_mux|f[22]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~92_combout\ = (\hazunit|stall~4_combout\ & ((\im|output[23]~1_combout\ & (\instr_mux|f[22]~78_combout\)) # (!\im|output[23]~1_combout\ & ((\instr_mux|f[22]~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~78_combout\,
	datab => \im|output[23]~1_combout\,
	datac => \instr_mux|f[22]~77_combout\,
	datad => \hazunit|stall~4_combout\,
	combout => \instr_mux|f[22]~92_combout\);

-- Location: LCCOMB_X113_Y36_N24
\instr_mux|f[22]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~88_combout\ = (!\hazunit|stall~4_combout\ & ((\ID_EX_ReadPort1_reg|Q\(2) & (\instr_mux|f[22]~86_combout\)) # (!\ID_EX_ReadPort1_reg|Q\(2) & ((\instr_mux|f[22]~87_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \ID_EX_ReadPort1_reg|Q\(2),
	datac => \instr_mux|f[22]~86_combout\,
	datad => \instr_mux|f[22]~87_combout\,
	combout => \instr_mux|f[22]~88_combout\);

-- Location: LCCOMB_X113_Y36_N22
\instr_mux|f[22]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~95_combout\ = (\instr_mux|f[22]~92_combout\) # (\instr_mux|f[22]~88_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~92_combout\,
	datad => \instr_mux|f[22]~88_combout\,
	combout => \instr_mux|f[22]~95_combout\);

-- Location: LCCOMB_X113_Y36_N30
\instr_mux|f[22]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~105_combout\ = (\instr_mux|f[22]~101_combout\) # (\instr_mux|f[22]~88_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~101_combout\,
	datad => \instr_mux|f[22]~88_combout\,
	combout => \instr_mux|f[22]~105_combout\);

-- Location: LCCOMB_X113_Y36_N26
\instr_mux|f[22]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~89_combout\ = (\instr_mux|f[22]~80_combout\) # (\instr_mux|f[22]~88_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~80_combout\,
	datad => \instr_mux|f[22]~88_combout\,
	combout => \instr_mux|f[22]~89_combout\);

-- Location: LCCOMB_X114_Y36_N28
\instr_mux|f[22]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~100_combout\ = (\instr_mux|f[23]~2_combout\ & (\instr_mux|f[22]~86_combout\)) # (!\instr_mux|f[23]~2_combout\ & ((\instr_mux|f[22]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[23]~2_combout\,
	datac => \instr_mux|f[22]~86_combout\,
	datad => \instr_mux|f[22]~87_combout\,
	combout => \instr_mux|f[22]~100_combout\);

-- Location: LCCOMB_X113_Y36_N16
\rf|value1[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~27_combout\ = (\im|stage_dec|s2|y[2]~0_combout\ & ((\im|output[22]~2_combout\) # ((\instr_mux|f[22]~100_combout\)))) # (!\im|stage_dec|s2|y[2]~0_combout\ & (!\im|output[22]~2_combout\ & (\instr_mux|f[22]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|stage_dec|s2|y[2]~0_combout\,
	datab => \im|output[22]~2_combout\,
	datac => \instr_mux|f[22]~89_combout\,
	datad => \instr_mux|f[22]~100_combout\,
	combout => \rf|value1[0]~27_combout\);

-- Location: LCCOMB_X113_Y36_N18
\rf|value1[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~28_combout\ = (\im|output[22]~2_combout\ & ((\rf|value1[0]~27_combout\ & (\instr_mux|f[22]~95_combout\)) # (!\rf|value1[0]~27_combout\ & ((\instr_mux|f[22]~105_combout\))))) # (!\im|output[22]~2_combout\ & (((\rf|value1[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~95_combout\,
	datab => \im|output[22]~2_combout\,
	datac => \instr_mux|f[22]~105_combout\,
	datad => \rf|value1[0]~27_combout\,
	combout => \rf|value1[0]~28_combout\);

-- Location: LCCOMB_X111_Y36_N2
\instr_mux|f[22]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~104_combout\ = (\instr_mux|f[23]~2_combout\ & ((\instr_mux|f[22]~82_combout\))) # (!\instr_mux|f[23]~2_combout\ & (\instr_mux|f[22]~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~83_combout\,
	datac => \instr_mux|f[22]~82_combout\,
	datad => \instr_mux|f[23]~2_combout\,
	combout => \instr_mux|f[22]~104_combout\);

-- Location: LCCOMB_X111_Y36_N18
\instr_mux|f[22]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~84_combout\ = (!\hazunit|stall~4_combout\ & ((\ID_EX_ReadPort1_reg|Q\(2) & ((\instr_mux|f[22]~82_combout\))) # (!\ID_EX_ReadPort1_reg|Q\(2) & (\instr_mux|f[22]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~83_combout\,
	datab => \ID_EX_ReadPort1_reg|Q\(2),
	datac => \instr_mux|f[22]~82_combout\,
	datad => \hazunit|stall~4_combout\,
	combout => \instr_mux|f[22]~84_combout\);

-- Location: LCCOMB_X111_Y36_N20
\instr_mux|f[22]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~99_combout\ = (\instr_mux|f[22]~84_combout\) # (\instr_mux|f[22]~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_mux|f[22]~84_combout\,
	datad => \instr_mux|f[22]~96_combout\,
	combout => \instr_mux|f[22]~99_combout\);

-- Location: LCCOMB_X111_Y36_N16
\instr_mux|f[22]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~85_combout\ = (\instr_mux|f[22]~84_combout\) # (\instr_mux|f[22]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_mux|f[22]~84_combout\,
	datad => \instr_mux|f[22]~80_combout\,
	combout => \instr_mux|f[22]~85_combout\);

-- Location: LCCOMB_X111_Y36_N8
\rf|value1[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~24_combout\ = (\im|output[22]~2_combout\ & (((\im|stage_dec|s2|y[2]~0_combout\)))) # (!\im|output[22]~2_combout\ & ((\im|stage_dec|s2|y[2]~0_combout\ & (\instr_mux|f[22]~99_combout\)) # (!\im|stage_dec|s2|y[2]~0_combout\ & 
-- ((\instr_mux|f[22]~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[22]~2_combout\,
	datab => \instr_mux|f[22]~99_combout\,
	datac => \im|stage_dec|s2|y[2]~0_combout\,
	datad => \instr_mux|f[22]~85_combout\,
	combout => \rf|value1[0]~24_combout\);

-- Location: LCCOMB_X111_Y36_N6
\instr_mux|f[22]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~94_combout\ = (\instr_mux|f[22]~84_combout\) # (\instr_mux|f[22]~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_mux|f[22]~84_combout\,
	datad => \instr_mux|f[22]~92_combout\,
	combout => \instr_mux|f[22]~94_combout\);

-- Location: LCCOMB_X111_Y36_N30
\rf|value1[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~25_combout\ = (\im|output[22]~2_combout\ & ((\rf|value1[0]~24_combout\ & ((\instr_mux|f[22]~94_combout\))) # (!\rf|value1[0]~24_combout\ & (\instr_mux|f[22]~104_combout\)))) # (!\im|output[22]~2_combout\ & (((\rf|value1[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[22]~2_combout\,
	datab => \instr_mux|f[22]~104_combout\,
	datac => \rf|value1[0]~24_combout\,
	datad => \instr_mux|f[22]~94_combout\,
	combout => \rf|value1[0]~25_combout\);

-- Location: LCCOMB_X113_Y36_N0
\instr_mux|f[22]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~91_combout\ = (!\hazunit|stall~4_combout\ & ((\ID_EX_ReadPort1_reg|Q\(2) & ((\instr_mux|f[22]~74_combout\))) # (!\ID_EX_ReadPort1_reg|Q\(2) & (\instr_mux|f[22]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \ID_EX_ReadPort1_reg|Q\(2),
	datac => \instr_mux|f[22]~75_combout\,
	datad => \instr_mux|f[22]~74_combout\,
	combout => \instr_mux|f[22]~91_combout\);

-- Location: LCCOMB_X110_Y36_N2
\instr_mux|f[22]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~93_combout\ = (\instr_mux|f[22]~91_combout\) # (\instr_mux|f[22]~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~91_combout\,
	datad => \instr_mux|f[22]~92_combout\,
	combout => \instr_mux|f[22]~93_combout\);

-- Location: LCCOMB_X113_Y36_N10
\instr_mux|f[22]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~97_combout\ = (\instr_mux|f[22]~96_combout\) # (\instr_mux|f[22]~91_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~96_combout\,
	datad => \instr_mux|f[22]~91_combout\,
	combout => \instr_mux|f[22]~97_combout\);

-- Location: LCCOMB_X113_Y36_N28
\instr_mux|f[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~76_combout\ = (\instr_mux|f[23]~2_combout\ & (\instr_mux|f[22]~74_combout\)) # (!\instr_mux|f[23]~2_combout\ & ((\instr_mux|f[22]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_mux|f[22]~74_combout\,
	datac => \instr_mux|f[22]~75_combout\,
	datad => \instr_mux|f[23]~2_combout\,
	combout => \instr_mux|f[22]~76_combout\);

-- Location: LCCOMB_X113_Y36_N12
\instr_mux|f[22]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~103_combout\ = (\instr_mux|f[22]~91_combout\) # (\instr_mux|f[22]~101_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_mux|f[22]~91_combout\,
	datad => \instr_mux|f[22]~101_combout\,
	combout => \instr_mux|f[22]~103_combout\);

-- Location: LCCOMB_X111_Y36_N12
\rf|value1[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~22_combout\ = (\im|stage_dec|s2|y[2]~0_combout\ & (((\im|output[22]~2_combout\)))) # (!\im|stage_dec|s2|y[2]~0_combout\ & ((\im|output[22]~2_combout\ & ((\instr_mux|f[22]~103_combout\))) # (!\im|output[22]~2_combout\ & 
-- (\instr_mux|f[22]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~76_combout\,
	datab => \im|stage_dec|s2|y[2]~0_combout\,
	datac => \im|output[22]~2_combout\,
	datad => \instr_mux|f[22]~103_combout\,
	combout => \rf|value1[0]~22_combout\);

-- Location: LCCOMB_X111_Y36_N10
\rf|value1[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~23_combout\ = (\im|stage_dec|s2|y[2]~0_combout\ & ((\rf|value1[0]~22_combout\ & (\instr_mux|f[22]~93_combout\)) # (!\rf|value1[0]~22_combout\ & ((\instr_mux|f[22]~97_combout\))))) # (!\im|stage_dec|s2|y[2]~0_combout\ & 
-- (((\rf|value1[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~93_combout\,
	datab => \im|stage_dec|s2|y[2]~0_combout\,
	datac => \instr_mux|f[22]~97_combout\,
	datad => \rf|value1[0]~22_combout\,
	combout => \rf|value1[0]~23_combout\);

-- Location: LCCOMB_X111_Y36_N0
\rf|value1[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~26_combout\ = (\ID_EX_ReadPort1_reg|Q\(1) & ((\ID_EX_ReadPort1_reg|Q\(0)) # ((\rf|value1[0]~23_combout\)))) # (!\ID_EX_ReadPort1_reg|Q\(1) & (!\ID_EX_ReadPort1_reg|Q\(0) & (\rf|value1[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(1),
	datab => \ID_EX_ReadPort1_reg|Q\(0),
	datac => \rf|value1[0]~25_combout\,
	datad => \rf|value1[0]~23_combout\,
	combout => \rf|value1[0]~26_combout\);

-- Location: LCCOMB_X111_Y36_N14
\rf|value1[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~29_combout\ = (\ID_EX_ReadPort1_reg|Q\(0) & ((\rf|value1[0]~26_combout\ & ((\rf|value1[0]~28_combout\))) # (!\rf|value1[0]~26_combout\ & (\rf|value1[0]~21_combout\)))) # (!\ID_EX_ReadPort1_reg|Q\(0) & (((\rf|value1[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[0]~21_combout\,
	datab => \ID_EX_ReadPort1_reg|Q\(0),
	datac => \rf|value1[0]~28_combout\,
	datad => \rf|value1[0]~26_combout\,
	combout => \rf|value1[0]~29_combout\);

-- Location: FF_X111_Y36_N15
\ID_EX_src1_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value1[0]~29_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_src1_reg|Q\(0));

-- Location: LCCOMB_X109_Y38_N22
\ALUFwd_mux1|stage3|f[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFwd_mux1|stage3|f[0]~4_combout\ = (\fwdunit|forwardA~0_combout\ & ((\fwdunit|forwardB[1]~2_combout\ & ((\MEM_WB_ALUOut_reg|Q\(0)))) # (!\fwdunit|forwardB[1]~2_combout\ & (\ID_EX_src1_reg|Q\(0))))) # (!\fwdunit|forwardA~0_combout\ & 
-- (((\ID_EX_src1_reg|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fwdunit|forwardA~0_combout\,
	datab => \fwdunit|forwardB[1]~2_combout\,
	datac => \ID_EX_src1_reg|Q\(0),
	datad => \MEM_WB_ALUOut_reg|Q\(0),
	combout => \ALUFwd_mux1|stage3|f[0]~4_combout\);

-- Location: LCCOMB_X108_Y38_N10
\ALUFwd_mux1|stage3|f[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFwd_mux1|stage3|f[0]~7_combout\ = (\fwdunit|forwardA\(0) & (\EX_MEM_ALUOut_reg|Q\(0))) # (!\fwdunit|forwardA\(0) & ((\ALUFwd_mux1|stage3|f[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_ALUOut_reg|Q\(0),
	datac => \fwdunit|forwardA\(0),
	datad => \ALUFwd_mux1|stage3|f[0]~4_combout\,
	combout => \ALUFwd_mux1|stage3|f[0]~7_combout\);

-- Location: LCCOMB_X110_Y38_N14
\fwdunit|forwardB[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwdunit|forwardB[0]~4_combout\ = (\EX_MEM_WriteAddr_reg|Q\(1) & (\ID_EX_ReadPort2_reg|Q\(1) & (\ID_EX_ReadPort2_reg|Q\(0) $ (!\EX_MEM_WriteAddr_reg|Q\(0))))) # (!\EX_MEM_WriteAddr_reg|Q\(1) & (!\ID_EX_ReadPort2_reg|Q\(1) & (\ID_EX_ReadPort2_reg|Q\(0) $ 
-- (!\EX_MEM_WriteAddr_reg|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_WriteAddr_reg|Q\(1),
	datab => \ID_EX_ReadPort2_reg|Q\(0),
	datac => \ID_EX_ReadPort2_reg|Q\(1),
	datad => \EX_MEM_WriteAddr_reg|Q\(0),
	combout => \fwdunit|forwardB[0]~4_combout\);

-- Location: LCCOMB_X109_Y38_N6
\fwdunit|forwardB[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwdunit|forwardB\(0) = (\EX_MEM_RegWrite_reg|Q~q\ & (\fwdunit|forwardB[0]~4_combout\ & \fwdunit|forwardB[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_RegWrite_reg|Q~q\,
	datac => \fwdunit|forwardB[0]~4_combout\,
	datad => \fwdunit|forwardB[0]~1_combout\,
	combout => \fwdunit|forwardB\(0));

-- Location: FF_X114_Y38_N19
\ID_EX_MemtoReg_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \id|Equal0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_MemtoReg_reg|Q~q\);

-- Location: LCCOMB_X110_Y38_N28
\fwdunit|forwardB[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwdunit|forwardB[1]~3_combout\ = (\ID_EX_ReadPort2_reg|Q\(1) & (\MEM_WB_WriteAddr_reg|Q\(1) & (\ID_EX_ReadPort2_reg|Q\(0) $ (!\MEM_WB_WriteAddr_reg|Q\(0))))) # (!\ID_EX_ReadPort2_reg|Q\(1) & (!\MEM_WB_WriteAddr_reg|Q\(1) & (\ID_EX_ReadPort2_reg|Q\(0) $ 
-- (!\MEM_WB_WriteAddr_reg|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort2_reg|Q\(1),
	datab => \ID_EX_ReadPort2_reg|Q\(0),
	datac => \MEM_WB_WriteAddr_reg|Q\(1),
	datad => \MEM_WB_WriteAddr_reg|Q\(0),
	combout => \fwdunit|forwardB[1]~3_combout\);

-- Location: LCCOMB_X109_Y38_N2
\ALUFwd_mux2|stage3|f[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFwd_mux2|stage3|f[1]~0_combout\ = (!\fwdunit|forwardB\(0) & ((\ID_EX_MemtoReg_reg|Q~q\) # ((\fwdunit|forwardB[1]~2_combout\ & \fwdunit|forwardB[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fwdunit|forwardB\(0),
	datab => \fwdunit|forwardB[1]~2_combout\,
	datac => \ID_EX_MemtoReg_reg|Q~q\,
	datad => \fwdunit|forwardB[1]~3_combout\,
	combout => \ALUFwd_mux2|stage3|f[1]~0_combout\);

-- Location: LCCOMB_X112_Y36_N28
\rf|value2[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~27_combout\ = (\ID_EX_ReadPort2_reg|Q\(1) & ((\ID_EX_ReadPort2_reg|Q\(0)) # ((\instr_mux|f[22]~103_combout\)))) # (!\ID_EX_ReadPort2_reg|Q\(1) & (!\ID_EX_ReadPort2_reg|Q\(0) & ((\instr_mux|f[22]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort2_reg|Q\(1),
	datab => \ID_EX_ReadPort2_reg|Q\(0),
	datac => \instr_mux|f[22]~103_combout\,
	datad => \instr_mux|f[22]~104_combout\,
	combout => \rf|value2[0]~27_combout\);

-- Location: LCCOMB_X112_Y36_N30
\rf|value2[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~28_combout\ = (\ID_EX_ReadPort2_reg|Q\(0) & ((\rf|value2[0]~27_combout\ & (\instr_mux|f[22]~105_combout\)) # (!\rf|value2[0]~27_combout\ & ((\instr_mux|f[22]~102_combout\))))) # (!\ID_EX_ReadPort2_reg|Q\(0) & (((\rf|value2[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~105_combout\,
	datab => \ID_EX_ReadPort2_reg|Q\(0),
	datac => \instr_mux|f[22]~102_combout\,
	datad => \rf|value2[0]~27_combout\,
	combout => \rf|value2[0]~28_combout\);

-- Location: LCCOMB_X112_Y36_N8
\rf|value2[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~20_combout\ = (\ID_EX_ReadPort2_reg|Q\(1) & (\ID_EX_ReadPort2_reg|Q\(0))) # (!\ID_EX_ReadPort2_reg|Q\(1) & ((\ID_EX_ReadPort2_reg|Q\(0) & ((\instr_mux|f[22]~81_combout\))) # (!\ID_EX_ReadPort2_reg|Q\(0) & (\instr_mux|f[22]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort2_reg|Q\(1),
	datab => \ID_EX_ReadPort2_reg|Q\(0),
	datac => \instr_mux|f[22]~85_combout\,
	datad => \instr_mux|f[22]~81_combout\,
	combout => \rf|value2[0]~20_combout\);

-- Location: LCCOMB_X112_Y36_N4
\rf|value2[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~21_combout\ = (\ID_EX_ReadPort2_reg|Q\(1) & ((\rf|value2[0]~20_combout\ & ((\instr_mux|f[22]~89_combout\))) # (!\rf|value2[0]~20_combout\ & (\instr_mux|f[22]~76_combout\)))) # (!\ID_EX_ReadPort2_reg|Q\(1) & (((\rf|value2[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort2_reg|Q\(1),
	datab => \instr_mux|f[22]~76_combout\,
	datac => \rf|value2[0]~20_combout\,
	datad => \instr_mux|f[22]~89_combout\,
	combout => \rf|value2[0]~21_combout\);

-- Location: LCCOMB_X112_Y36_N12
\rf|value2[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~24_combout\ = (\ID_EX_ReadPort2_reg|Q\(1) & (\ID_EX_ReadPort2_reg|Q\(0))) # (!\ID_EX_ReadPort2_reg|Q\(1) & ((\ID_EX_ReadPort2_reg|Q\(0) & (\instr_mux|f[22]~98_combout\)) # (!\ID_EX_ReadPort2_reg|Q\(0) & ((\instr_mux|f[22]~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort2_reg|Q\(1),
	datab => \ID_EX_ReadPort2_reg|Q\(0),
	datac => \instr_mux|f[22]~98_combout\,
	datad => \instr_mux|f[22]~99_combout\,
	combout => \rf|value2[0]~24_combout\);

-- Location: LCCOMB_X112_Y36_N14
\rf|value2[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~25_combout\ = (\ID_EX_ReadPort2_reg|Q\(1) & ((\rf|value2[0]~24_combout\ & (\instr_mux|f[22]~100_combout\)) # (!\rf|value2[0]~24_combout\ & ((\instr_mux|f[22]~97_combout\))))) # (!\ID_EX_ReadPort2_reg|Q\(1) & (((\rf|value2[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort2_reg|Q\(1),
	datab => \instr_mux|f[22]~100_combout\,
	datac => \instr_mux|f[22]~97_combout\,
	datad => \rf|value2[0]~24_combout\,
	combout => \rf|value2[0]~25_combout\);

-- Location: LCCOMB_X112_Y36_N18
\rf|value2[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~22_combout\ = (\ID_EX_ReadPort2_reg|Q\(1) & ((\ID_EX_ReadPort2_reg|Q\(0)) # ((\instr_mux|f[22]~93_combout\)))) # (!\ID_EX_ReadPort2_reg|Q\(1) & (!\ID_EX_ReadPort2_reg|Q\(0) & (\instr_mux|f[22]~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort2_reg|Q\(1),
	datab => \ID_EX_ReadPort2_reg|Q\(0),
	datac => \instr_mux|f[22]~94_combout\,
	datad => \instr_mux|f[22]~93_combout\,
	combout => \rf|value2[0]~22_combout\);

-- Location: LCCOMB_X112_Y36_N20
\rf|value2[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~23_combout\ = (\ID_EX_ReadPort2_reg|Q\(0) & ((\rf|value2[0]~22_combout\ & (\instr_mux|f[22]~95_combout\)) # (!\rf|value2[0]~22_combout\ & ((\instr_mux|f[22]~90_combout\))))) # (!\ID_EX_ReadPort2_reg|Q\(0) & (((\rf|value2[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort2_reg|Q\(0),
	datab => \instr_mux|f[22]~95_combout\,
	datac => \instr_mux|f[22]~90_combout\,
	datad => \rf|value2[0]~22_combout\,
	combout => \rf|value2[0]~23_combout\);

-- Location: LCCOMB_X112_Y36_N16
\rf|value2[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~26_combout\ = (\im|output[17]~5_combout\ & ((\im|output[16]~4_combout\) # ((\rf|value2[0]~23_combout\)))) # (!\im|output[17]~5_combout\ & (!\im|output[16]~4_combout\ & (\rf|value2[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[17]~5_combout\,
	datab => \im|output[16]~4_combout\,
	datac => \rf|value2[0]~25_combout\,
	datad => \rf|value2[0]~23_combout\,
	combout => \rf|value2[0]~26_combout\);

-- Location: LCCOMB_X112_Y36_N24
\rf|value2[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~29_combout\ = (\im|output[16]~4_combout\ & ((\rf|value2[0]~26_combout\ & (\rf|value2[0]~28_combout\)) # (!\rf|value2[0]~26_combout\ & ((\rf|value2[0]~21_combout\))))) # (!\im|output[16]~4_combout\ & (((\rf|value2[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[0]~28_combout\,
	datab => \im|output[16]~4_combout\,
	datac => \rf|value2[0]~21_combout\,
	datad => \rf|value2[0]~26_combout\,
	combout => \rf|value2[0]~29_combout\);

-- Location: FF_X112_Y36_N25
\ID_EX_src2_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value2[0]~29_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_src2_reg|Q\(0));

-- Location: LCCOMB_X109_Y38_N26
\ALUFwd_mux2|stage3|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFwd_mux2|stage3|f[1]~1_combout\ = (\fwdunit|forwardB\(0)) # ((\fwdunit|forwardB[1]~0_combout\ & (\MEM_WB_RegWrite_reg|Q~q\ & \fwdunit|forwardB[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fwdunit|forwardB\(0),
	datab => \fwdunit|forwardB[1]~0_combout\,
	datac => \MEM_WB_RegWrite_reg|Q~q\,
	datad => \fwdunit|forwardB[1]~3_combout\,
	combout => \ALUFwd_mux2|stage3|f[1]~1_combout\);

-- Location: LCCOMB_X109_Y38_N10
\ALUFwd_mux2|stage3|f[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFwd_mux2|stage3|f[0]~6_combout\ = (\ALUFwd_mux2|stage3|f[1]~1_combout\ & ((\EX_MEM_ALUOut_reg|Q\(0)) # ((\ALUFwd_mux2|stage3|f[1]~0_combout\)))) # (!\ALUFwd_mux2|stage3|f[1]~1_combout\ & (((\ID_EX_src2_reg|Q\(0) & 
-- !\ALUFwd_mux2|stage3|f[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_ALUOut_reg|Q\(0),
	datab => \ID_EX_src2_reg|Q\(0),
	datac => \ALUFwd_mux2|stage3|f[1]~1_combout\,
	datad => \ALUFwd_mux2|stage3|f[1]~0_combout\,
	combout => \ALUFwd_mux2|stage3|f[0]~6_combout\);

-- Location: LCCOMB_X109_Y38_N28
\ALUFwd_mux2|stage3|f[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFwd_mux2|stage3|f[0]~7_combout\ = (\ALUFwd_mux2|stage3|f[1]~0_combout\ & ((\ALUFwd_mux2|stage3|f[0]~6_combout\ & ((\MEM_WB_ALUOut_reg|Q\(0)))) # (!\ALUFwd_mux2|stage3|f[0]~6_combout\ & (\ID_EX_ReadPort1_reg|Q\(3))))) # 
-- (!\ALUFwd_mux2|stage3|f[1]~0_combout\ & (((\ALUFwd_mux2|stage3|f[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(3),
	datab => \ALUFwd_mux2|stage3|f[1]~0_combout\,
	datac => \MEM_WB_ALUOut_reg|Q\(0),
	datad => \ALUFwd_mux2|stage3|f[0]~6_combout\,
	combout => \ALUFwd_mux2|stage3|f[0]~7_combout\);

-- Location: LCCOMB_X110_Y38_N30
\instr_mux|f[5]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[5]~139_combout\ = (\pc|Q\(1)) # ((\pc|Q\(0)) # ((\pc|Q\(3)) # (!\pc|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \instr_mux|f[5]~139_combout\);

-- Location: FF_X114_Y38_N21
\IF_ID_Ins_reg|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \instr_mux|f[5]~140_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_Ins_reg|Q\(5));

-- Location: LCCOMB_X114_Y38_N20
\instr_mux|f[5]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[5]~140_combout\ = (\hazunit|stall~4_combout\ & (\instr_mux|f[5]~139_combout\)) # (!\hazunit|stall~4_combout\ & ((\IF_ID_Ins_reg|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[5]~139_combout\,
	datac => \IF_ID_Ins_reg|Q\(5),
	datad => \hazunit|stall~4_combout\,
	combout => \instr_mux|f[5]~140_combout\);

-- Location: LCCOMB_X114_Y38_N12
\id|alu_temp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|alu_temp[0]~0_combout\ = (!\instr_mux|f[24]~1_combout\ & ((\instr_mux|f[26]~138_combout\) # (\instr_mux|f[5]~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[24]~1_combout\,
	datac => \instr_mux|f[26]~138_combout\,
	datad => \instr_mux|f[5]~140_combout\,
	combout => \id|alu_temp[0]~0_combout\);

-- Location: FF_X114_Y38_N13
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

-- Location: LCCOMB_X114_Y38_N26
\alu_ins|mux4to1_ins|stage1|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage1|f~3_combout\ = (\ID_EX_ALUOP_reg|Q\(0) & \alu_ins|add_ins|stage4|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX_ALUOP_reg|Q\(0),
	datad => \alu_ins|add_ins|stage4|s~combout\,
	combout => \alu_ins|mux4to1_ins|stage1|f~3_combout\);

-- Location: FF_X114_Y38_N27
\EX_MEM_ALUOut_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu_ins|mux4to1_ins|stage1|f~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_ALUOut_reg|Q\(3));

-- Location: FF_X114_Y38_N17
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

-- Location: LCCOMB_X114_Y38_N24
\rf|m8|stage3|f[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m8|stage3|f[3]~1_combout\ = (\MEM_WB_ALUOut_reg|Q\(3)) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB_ALUOut_reg|Q\(3),
	datad => \reset~input_o\,
	combout => \rf|m8|stage3|f[3]~1_combout\);

-- Location: LCCOMB_X114_Y38_N6
\rf|r14|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r14|Q[3]~feeder_combout\ = \rf|m8|stage3|f[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m8|stage3|f[3]~1_combout\,
	combout => \rf|r14|Q[3]~feeder_combout\);

-- Location: FF_X114_Y38_N7
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

-- Location: LCCOMB_X114_Y38_N30
\rf|m0|stage3|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~4_combout\ = (\MEM_WB_ALUOut_reg|Q\(3) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB_ALUOut_reg|Q\(3),
	datad => \reset~input_o\,
	combout => \rf|m0|stage3|f~4_combout\);

-- Location: FF_X112_Y38_N5
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

-- Location: LCCOMB_X112_Y38_N4
\instr_mux|f[22]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~106_combout\ = (\instr_mux|f[24]~1_combout\ & (\rf|r14|Q\(3))) # (!\instr_mux|f[24]~1_combout\ & ((\rf|r6|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r14|Q\(3),
	datac => \rf|r6|Q\(3),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~106_combout\);

-- Location: LCCOMB_X113_Y40_N26
\rf|r10|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r10|Q[3]~feeder_combout\ = \rf|m8|stage3|f[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m8|stage3|f[3]~1_combout\,
	combout => \rf|r10|Q[3]~feeder_combout\);

-- Location: FF_X113_Y40_N27
\rf|r10|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r10|Q[3]~feeder_combout\,
	ena => \rf|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(3));

-- Location: FF_X112_Y38_N19
\rf|r2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(3));

-- Location: LCCOMB_X112_Y38_N18
\instr_mux|f[22]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~107_combout\ = (\instr_mux|f[24]~1_combout\ & (\rf|r10|Q\(3))) # (!\instr_mux|f[24]~1_combout\ & ((\rf|r2|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r10|Q\(3),
	datac => \rf|r2|Q\(3),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~107_combout\);

-- Location: LCCOMB_X112_Y38_N30
\instr_mux|f[22]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~124_combout\ = (\hazunit|stall~4_combout\ & ((\im|output[23]~1_combout\ & ((\instr_mux|f[22]~107_combout\))) # (!\im|output[23]~1_combout\ & (\instr_mux|f[22]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \im|output[23]~1_combout\,
	datac => \instr_mux|f[22]~106_combout\,
	datad => \instr_mux|f[22]~107_combout\,
	combout => \instr_mux|f[22]~124_combout\);

-- Location: LCCOMB_X114_Y36_N6
\rf|r7|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r7|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r7|Q[3]~feeder_combout\);

-- Location: FF_X114_Y36_N7
\rf|r7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r7|Q[3]~feeder_combout\,
	ena => \rf|m7|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(3));

-- Location: FF_X112_Y36_N3
\rf|r15|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m8|stage3|f[3]~1_combout\,
	sload => VCC,
	ena => \rf|m15|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(3));

-- Location: LCCOMB_X111_Y37_N26
\instr_mux|f[22]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~115_combout\ = (\instr_mux|f[24]~1_combout\ & ((\rf|r15|Q\(3)))) # (!\instr_mux|f[24]~1_combout\ & (\rf|r7|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r7|Q\(3),
	datac => \rf|r15|Q\(3),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~115_combout\);

-- Location: LCCOMB_X114_Y37_N18
\rf|r11|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r11|Q[3]~feeder_combout\ = \rf|m8|stage3|f[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m8|stage3|f[3]~1_combout\,
	combout => \rf|r11|Q[3]~feeder_combout\);

-- Location: FF_X114_Y37_N19
\rf|r11|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r11|Q[3]~feeder_combout\,
	ena => \rf|m11|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(3));

-- Location: FF_X114_Y37_N5
\rf|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(3));

-- Location: LCCOMB_X114_Y37_N4
\instr_mux|f[22]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~114_combout\ = (\instr_mux|f[24]~1_combout\ & (\rf|r11|Q\(3))) # (!\instr_mux|f[24]~1_combout\ & ((\rf|r3|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r11|Q\(3),
	datac => \rf|r3|Q\(3),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~114_combout\);

-- Location: LCCOMB_X112_Y37_N18
\instr_mux|f[22]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~133_combout\ = (!\hazunit|stall~4_combout\ & ((\ID_EX_ReadPort1_reg|Q\(2) & (\instr_mux|f[22]~115_combout\)) # (!\ID_EX_ReadPort1_reg|Q\(2) & ((\instr_mux|f[22]~114_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \ID_EX_ReadPort1_reg|Q\(2),
	datac => \instr_mux|f[22]~115_combout\,
	datad => \instr_mux|f[22]~114_combout\,
	combout => \instr_mux|f[22]~133_combout\);

-- Location: LCCOMB_X112_Y37_N8
\instr_mux|f[22]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~135_combout\ = (\instr_mux|f[22]~124_combout\) # (\instr_mux|f[22]~133_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~124_combout\,
	datad => \instr_mux|f[22]~133_combout\,
	combout => \instr_mux|f[22]~135_combout\);

-- Location: LCCOMB_X112_Y38_N24
\instr_mux|f[22]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~108_combout\ = (\instr_mux|f[23]~2_combout\ & (\instr_mux|f[22]~106_combout\)) # (!\instr_mux|f[23]~2_combout\ & ((\instr_mux|f[22]~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_mux|f[23]~2_combout\,
	datac => \instr_mux|f[22]~106_combout\,
	datad => \instr_mux|f[22]~107_combout\,
	combout => \instr_mux|f[22]~108_combout\);

-- Location: FF_X111_Y40_N15
\rf|r12|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m8|stage3|f[3]~1_combout\,
	sload => VCC,
	ena => \rf|m12|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(3));

-- Location: LCCOMB_X114_Y36_N16
\rf|r4|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r4|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r4|Q[3]~feeder_combout\);

-- Location: FF_X114_Y36_N17
\rf|r4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r4|Q[3]~feeder_combout\,
	ena => \rf|m4|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(3));

-- Location: LCCOMB_X111_Y36_N26
\instr_mux|f[22]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~119_combout\ = (\instr_mux|f[24]~1_combout\ & (\rf|r12|Q\(3))) # (!\instr_mux|f[24]~1_combout\ & ((\rf|r4|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r12|Q\(3),
	datac => \rf|r4|Q\(3),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~119_combout\);

-- Location: LCCOMB_X114_Y40_N12
\rf|r8|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r8|Q[3]~feeder_combout\ = \rf|m8|stage3|f[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m8|stage3|f[3]~1_combout\,
	combout => \rf|r8|Q[3]~feeder_combout\);

-- Location: FF_X114_Y40_N13
\rf|r8|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r8|Q[3]~feeder_combout\,
	ena => \rf|m8|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r8|Q\(3));

-- Location: FF_X112_Y37_N25
\rf|r0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(3));

-- Location: LCCOMB_X112_Y37_N24
\instr_mux|f[22]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~118_combout\ = (\instr_mux|f[24]~1_combout\ & (\rf|r8|Q\(3))) # (!\instr_mux|f[24]~1_combout\ & ((\rf|r0|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r8|Q\(3),
	datac => \rf|r0|Q\(3),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~118_combout\);

-- Location: LCCOMB_X112_Y37_N6
\instr_mux|f[22]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~128_combout\ = (!\hazunit|stall~4_combout\ & ((\ID_EX_ReadPort1_reg|Q\(2) & (\instr_mux|f[22]~119_combout\)) # (!\ID_EX_ReadPort1_reg|Q\(2) & ((\instr_mux|f[22]~118_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \ID_EX_ReadPort1_reg|Q\(2),
	datac => \instr_mux|f[22]~119_combout\,
	datad => \instr_mux|f[22]~118_combout\,
	combout => \instr_mux|f[22]~128_combout\);

-- Location: LCCOMB_X113_Y37_N14
\instr_mux|f[22]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~130_combout\ = (\instr_mux|f[22]~128_combout\) # (\instr_mux|f[22]~124_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~128_combout\,
	datad => \instr_mux|f[22]~124_combout\,
	combout => \instr_mux|f[22]~130_combout\);

-- Location: FF_X112_Y40_N29
\rf|r9|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m8|stage3|f[3]~1_combout\,
	sload => VCC,
	ena => \rf|m9|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r9|Q\(3));

-- Location: FF_X112_Y37_N29
\rf|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(3));

-- Location: LCCOMB_X112_Y37_N28
\instr_mux|f[22]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~110_combout\ = (\instr_mux|f[24]~1_combout\ & (\rf|r9|Q\(3))) # (!\instr_mux|f[24]~1_combout\ & ((\rf|r1|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r9|Q\(3),
	datac => \rf|r1|Q\(3),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~110_combout\);

-- Location: LCCOMB_X111_Y37_N28
\rf|r13|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r13|Q[3]~feeder_combout\ = \rf|m8|stage3|f[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m8|stage3|f[3]~1_combout\,
	combout => \rf|r13|Q[3]~feeder_combout\);

-- Location: FF_X111_Y37_N29
\rf|r13|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r13|Q[3]~feeder_combout\,
	ena => \rf|m13|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(3));

-- Location: FF_X111_Y37_N23
\rf|r5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m5|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(3));

-- Location: LCCOMB_X111_Y37_N22
\instr_mux|f[22]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~111_combout\ = (\instr_mux|f[24]~1_combout\ & (\rf|r13|Q\(3))) # (!\instr_mux|f[24]~1_combout\ & ((\rf|r5|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r13|Q\(3),
	datac => \rf|r5|Q\(3),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~111_combout\);

-- Location: LCCOMB_X112_Y37_N0
\instr_mux|f[22]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~123_combout\ = (!\hazunit|stall~4_combout\ & ((\ID_EX_ReadPort1_reg|Q\(2) & ((\instr_mux|f[22]~111_combout\))) # (!\ID_EX_ReadPort1_reg|Q\(2) & (\instr_mux|f[22]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \instr_mux|f[22]~110_combout\,
	datac => \ID_EX_ReadPort1_reg|Q\(2),
	datad => \instr_mux|f[22]~111_combout\,
	combout => \instr_mux|f[22]~123_combout\);

-- Location: LCCOMB_X113_Y37_N20
\instr_mux|f[22]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~125_combout\ = (\instr_mux|f[22]~123_combout\) # (\instr_mux|f[22]~124_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~123_combout\,
	datad => \instr_mux|f[22]~124_combout\,
	combout => \instr_mux|f[22]~125_combout\);

-- Location: LCCOMB_X113_Y37_N12
\rf|value1[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~34_combout\ = (\ID_EX_ReadPort1_reg|Q\(0) & ((\ID_EX_ReadPort1_reg|Q\(1)) # ((\instr_mux|f[22]~125_combout\)))) # (!\ID_EX_ReadPort1_reg|Q\(0) & (!\ID_EX_ReadPort1_reg|Q\(1) & (\instr_mux|f[22]~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(0),
	datab => \ID_EX_ReadPort1_reg|Q\(1),
	datac => \instr_mux|f[22]~130_combout\,
	datad => \instr_mux|f[22]~125_combout\,
	combout => \rf|value1[3]~34_combout\);

-- Location: LCCOMB_X113_Y37_N22
\rf|value1[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~35_combout\ = (\ID_EX_ReadPort1_reg|Q\(1) & ((\rf|value1[3]~34_combout\ & (\instr_mux|f[22]~135_combout\)) # (!\rf|value1[3]~34_combout\ & ((\instr_mux|f[22]~108_combout\))))) # (!\ID_EX_ReadPort1_reg|Q\(1) & (((\rf|value1[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~135_combout\,
	datab => \ID_EX_ReadPort1_reg|Q\(1),
	datac => \instr_mux|f[22]~108_combout\,
	datad => \rf|value1[3]~34_combout\,
	combout => \rf|value1[3]~35_combout\);

-- Location: LCCOMB_X112_Y37_N10
\instr_mux|f[22]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~120_combout\ = (\hazunit|stall~4_combout\ & ((\im|output[23]~1_combout\ & ((\instr_mux|f[22]~118_combout\))) # (!\im|output[23]~1_combout\ & (\instr_mux|f[22]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \im|output[23]~1_combout\,
	datac => \instr_mux|f[22]~119_combout\,
	datad => \instr_mux|f[22]~118_combout\,
	combout => \instr_mux|f[22]~120_combout\);

-- Location: LCCOMB_X112_Y37_N16
\instr_mux|f[22]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~127_combout\ = (\instr_mux|f[22]~120_combout\) # (\instr_mux|f[22]~123_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~120_combout\,
	datad => \instr_mux|f[22]~123_combout\,
	combout => \instr_mux|f[22]~127_combout\);

-- Location: LCCOMB_X112_Y37_N26
\instr_mux|f[22]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~137_combout\ = (\instr_mux|f[22]~120_combout\) # (\instr_mux|f[22]~133_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~120_combout\,
	datad => \instr_mux|f[22]~133_combout\,
	combout => \instr_mux|f[22]~137_combout\);

-- Location: LCCOMB_X112_Y37_N4
\instr_mux|f[22]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~132_combout\ = (\instr_mux|f[23]~2_combout\ & (\instr_mux|f[22]~119_combout\)) # (!\instr_mux|f[23]~2_combout\ & ((\instr_mux|f[22]~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_mux|f[23]~2_combout\,
	datac => \instr_mux|f[22]~119_combout\,
	datad => \instr_mux|f[22]~118_combout\,
	combout => \instr_mux|f[22]~132_combout\);

-- Location: LCCOMB_X112_Y38_N26
\instr_mux|f[22]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~109_combout\ = (!\hazunit|stall~4_combout\ & ((\ID_EX_ReadPort1_reg|Q\(2) & (\instr_mux|f[22]~106_combout\)) # (!\ID_EX_ReadPort1_reg|Q\(2) & ((\instr_mux|f[22]~107_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \ID_EX_ReadPort1_reg|Q\(2),
	datac => \instr_mux|f[22]~106_combout\,
	datad => \instr_mux|f[22]~107_combout\,
	combout => \instr_mux|f[22]~109_combout\);

-- Location: LCCOMB_X112_Y37_N12
\instr_mux|f[22]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~121_combout\ = (\instr_mux|f[22]~120_combout\) # (\instr_mux|f[22]~109_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~120_combout\,
	datad => \instr_mux|f[22]~109_combout\,
	combout => \instr_mux|f[22]~121_combout\);

-- Location: LCCOMB_X112_Y37_N20
\rf|value1[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~32_combout\ = (\ID_EX_ReadPort1_reg|Q\(0) & (\ID_EX_ReadPort1_reg|Q\(1))) # (!\ID_EX_ReadPort1_reg|Q\(0) & ((\ID_EX_ReadPort1_reg|Q\(1) & ((\instr_mux|f[22]~121_combout\))) # (!\ID_EX_ReadPort1_reg|Q\(1) & (\instr_mux|f[22]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(0),
	datab => \ID_EX_ReadPort1_reg|Q\(1),
	datac => \instr_mux|f[22]~132_combout\,
	datad => \instr_mux|f[22]~121_combout\,
	combout => \rf|value1[3]~32_combout\);

-- Location: LCCOMB_X112_Y37_N14
\rf|value1[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~33_combout\ = (\ID_EX_ReadPort1_reg|Q\(0) & ((\rf|value1[3]~32_combout\ & ((\instr_mux|f[22]~137_combout\))) # (!\rf|value1[3]~32_combout\ & (\instr_mux|f[22]~127_combout\)))) # (!\ID_EX_ReadPort1_reg|Q\(0) & (((\rf|value1[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(0),
	datab => \instr_mux|f[22]~127_combout\,
	datac => \instr_mux|f[22]~137_combout\,
	datad => \rf|value1[3]~32_combout\,
	combout => \rf|value1[3]~33_combout\);

-- Location: LCCOMB_X113_Y37_N24
\rf|value1[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~36_combout\ = (\im|stage_dec|s2|y[2]~0_combout\ & (\im|output[22]~2_combout\)) # (!\im|stage_dec|s2|y[2]~0_combout\ & ((\im|output[22]~2_combout\ & ((\rf|value1[3]~33_combout\))) # (!\im|output[22]~2_combout\ & (\rf|value1[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|stage_dec|s2|y[2]~0_combout\,
	datab => \im|output[22]~2_combout\,
	datac => \rf|value1[3]~35_combout\,
	datad => \rf|value1[3]~33_combout\,
	combout => \rf|value1[3]~36_combout\);

-- Location: LCCOMB_X114_Y37_N22
\instr_mux|f[22]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~136_combout\ = (\instr_mux|f[23]~2_combout\ & ((\instr_mux|f[22]~115_combout\))) # (!\instr_mux|f[23]~2_combout\ & (\instr_mux|f[22]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_mux|f[23]~2_combout\,
	datac => \instr_mux|f[22]~114_combout\,
	datad => \instr_mux|f[22]~115_combout\,
	combout => \instr_mux|f[22]~136_combout\);

-- Location: LCCOMB_X112_Y37_N30
\instr_mux|f[22]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~116_combout\ = (\hazunit|stall~4_combout\ & ((\im|output[23]~1_combout\ & ((\instr_mux|f[22]~114_combout\))) # (!\im|output[23]~1_combout\ & (\instr_mux|f[22]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \im|output[23]~1_combout\,
	datac => \instr_mux|f[22]~115_combout\,
	datad => \instr_mux|f[22]~114_combout\,
	combout => \instr_mux|f[22]~116_combout\);

-- Location: LCCOMB_X113_Y37_N0
\instr_mux|f[22]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~131_combout\ = (\instr_mux|f[22]~128_combout\) # (\instr_mux|f[22]~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~128_combout\,
	datad => \instr_mux|f[22]~116_combout\,
	combout => \instr_mux|f[22]~131_combout\);

-- Location: LCCOMB_X112_Y37_N22
\instr_mux|f[22]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~126_combout\ = (\instr_mux|f[22]~116_combout\) # (\instr_mux|f[22]~123_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~116_combout\,
	datad => \instr_mux|f[22]~123_combout\,
	combout => \instr_mux|f[22]~126_combout\);

-- Location: LCCOMB_X113_Y37_N4
\rf|value1[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~30_combout\ = (\ID_EX_ReadPort1_reg|Q\(0) & (((\ID_EX_ReadPort1_reg|Q\(1)) # (\instr_mux|f[22]~126_combout\)))) # (!\ID_EX_ReadPort1_reg|Q\(0) & (\instr_mux|f[22]~131_combout\ & (!\ID_EX_ReadPort1_reg|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(0),
	datab => \instr_mux|f[22]~131_combout\,
	datac => \ID_EX_ReadPort1_reg|Q\(1),
	datad => \instr_mux|f[22]~126_combout\,
	combout => \rf|value1[3]~30_combout\);

-- Location: LCCOMB_X114_Y37_N26
\instr_mux|f[22]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~117_combout\ = (\instr_mux|f[22]~109_combout\) # (\instr_mux|f[22]~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~109_combout\,
	datad => \instr_mux|f[22]~116_combout\,
	combout => \instr_mux|f[22]~117_combout\);

-- Location: LCCOMB_X113_Y37_N30
\rf|value1[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~31_combout\ = (\ID_EX_ReadPort1_reg|Q\(1) & ((\rf|value1[3]~30_combout\ & (\instr_mux|f[22]~136_combout\)) # (!\rf|value1[3]~30_combout\ & ((\instr_mux|f[22]~117_combout\))))) # (!\ID_EX_ReadPort1_reg|Q\(1) & (((\rf|value1[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~136_combout\,
	datab => \ID_EX_ReadPort1_reg|Q\(1),
	datac => \rf|value1[3]~30_combout\,
	datad => \instr_mux|f[22]~117_combout\,
	combout => \rf|value1[3]~31_combout\);

-- Location: LCCOMB_X112_Y37_N2
\instr_mux|f[22]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~122_combout\ = (\instr_mux|f[23]~2_combout\ & (\instr_mux|f[22]~111_combout\)) # (!\instr_mux|f[23]~2_combout\ & ((\instr_mux|f[22]~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_mux|f[23]~2_combout\,
	datac => \instr_mux|f[22]~111_combout\,
	datad => \instr_mux|f[22]~110_combout\,
	combout => \instr_mux|f[22]~122_combout\);

-- Location: LCCOMB_X111_Y37_N4
\instr_mux|f[22]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~112_combout\ = (\hazunit|stall~4_combout\ & ((\im|output[23]~1_combout\ & ((\instr_mux|f[22]~110_combout\))) # (!\im|output[23]~1_combout\ & (\instr_mux|f[22]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[23]~1_combout\,
	datab => \hazunit|stall~4_combout\,
	datac => \instr_mux|f[22]~111_combout\,
	datad => \instr_mux|f[22]~110_combout\,
	combout => \instr_mux|f[22]~112_combout\);

-- Location: LCCOMB_X114_Y37_N8
\instr_mux|f[22]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~134_combout\ = (\instr_mux|f[22]~112_combout\) # (\instr_mux|f[22]~133_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~112_combout\,
	datad => \instr_mux|f[22]~133_combout\,
	combout => \instr_mux|f[22]~134_combout\);

-- Location: LCCOMB_X112_Y38_N20
\instr_mux|f[22]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~129_combout\ = (\instr_mux|f[22]~128_combout\) # (\instr_mux|f[22]~112_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~128_combout\,
	datad => \instr_mux|f[22]~112_combout\,
	combout => \instr_mux|f[22]~129_combout\);

-- Location: LCCOMB_X112_Y38_N28
\instr_mux|f[22]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~113_combout\ = (\instr_mux|f[22]~109_combout\) # (\instr_mux|f[22]~112_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~109_combout\,
	datad => \instr_mux|f[22]~112_combout\,
	combout => \instr_mux|f[22]~113_combout\);

-- Location: LCCOMB_X112_Y38_N6
\rf|value1[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~37_combout\ = (\ID_EX_ReadPort1_reg|Q\(1) & (((\ID_EX_ReadPort1_reg|Q\(0)) # (\instr_mux|f[22]~113_combout\)))) # (!\ID_EX_ReadPort1_reg|Q\(1) & (\instr_mux|f[22]~129_combout\ & (!\ID_EX_ReadPort1_reg|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(1),
	datab => \instr_mux|f[22]~129_combout\,
	datac => \ID_EX_ReadPort1_reg|Q\(0),
	datad => \instr_mux|f[22]~113_combout\,
	combout => \rf|value1[3]~37_combout\);

-- Location: LCCOMB_X113_Y37_N10
\rf|value1[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~38_combout\ = (\ID_EX_ReadPort1_reg|Q\(0) & ((\rf|value1[3]~37_combout\ & ((\instr_mux|f[22]~134_combout\))) # (!\rf|value1[3]~37_combout\ & (\instr_mux|f[22]~122_combout\)))) # (!\ID_EX_ReadPort1_reg|Q\(0) & (((\rf|value1[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(0),
	datab => \instr_mux|f[22]~122_combout\,
	datac => \instr_mux|f[22]~134_combout\,
	datad => \rf|value1[3]~37_combout\,
	combout => \rf|value1[3]~38_combout\);

-- Location: LCCOMB_X113_Y37_N2
\rf|value1[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~39_combout\ = (\im|stage_dec|s2|y[2]~0_combout\ & ((\rf|value1[3]~36_combout\ & ((\rf|value1[3]~38_combout\))) # (!\rf|value1[3]~36_combout\ & (\rf|value1[3]~31_combout\)))) # (!\im|stage_dec|s2|y[2]~0_combout\ & (\rf|value1[3]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|stage_dec|s2|y[2]~0_combout\,
	datab => \rf|value1[3]~36_combout\,
	datac => \rf|value1[3]~31_combout\,
	datad => \rf|value1[3]~38_combout\,
	combout => \rf|value1[3]~39_combout\);

-- Location: FF_X113_Y37_N3
\ID_EX_src1_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value1[3]~39_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_src1_reg|Q\(3));

-- Location: LCCOMB_X109_Y38_N20
\fwdunit|forwardA~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwdunit|forwardA~1_combout\ = (\MEM_WB_RegWrite_reg|Q~q\ & (\fwdunit|forwardB[1]~0_combout\ & \fwdunit|forwardA~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RegWrite_reg|Q~q\,
	datab => \fwdunit|forwardB[1]~0_combout\,
	datad => \fwdunit|forwardA~0_combout\,
	combout => \fwdunit|forwardA~1_combout\);

-- Location: LCCOMB_X109_Y38_N12
\ALUFwd_mux1|stage3|f[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFwd_mux1|stage3|f[3]~6_combout\ = (!\fwdunit|forwardA\(0) & ((\fwdunit|forwardA~1_combout\ & (\MEM_WB_ALUOut_reg|Q\(3))) # (!\fwdunit|forwardA~1_combout\ & ((\ID_EX_src1_reg|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_ALUOut_reg|Q\(3),
	datab => \ID_EX_src1_reg|Q\(3),
	datac => \fwdunit|forwardA\(0),
	datad => \fwdunit|forwardA~1_combout\,
	combout => \ALUFwd_mux1|stage3|f[3]~6_combout\);

-- Location: LCCOMB_X109_Y38_N24
\ALUFwd_mux1|stage3|f[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFwd_mux1|stage3|f[3]~5_combout\ = (\EX_MEM_RegWrite_reg|Q~q\ & (\fwdunit|forwardA[0]~2_combout\ & (\EX_MEM_ALUOut_reg|Q\(3) & \fwdunit|forwardB[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_RegWrite_reg|Q~q\,
	datab => \fwdunit|forwardA[0]~2_combout\,
	datac => \EX_MEM_ALUOut_reg|Q\(3),
	datad => \fwdunit|forwardB[0]~1_combout\,
	combout => \ALUFwd_mux1|stage3|f[3]~5_combout\);

-- Location: LCCOMB_X114_Y37_N20
\rf|value2[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~37_combout\ = (\im|output[17]~5_combout\ & (((\im|output[16]~4_combout\)))) # (!\im|output[17]~5_combout\ & ((\im|output[16]~4_combout\ & ((\instr_mux|f[22]~135_combout\))) # (!\im|output[16]~4_combout\ & (\instr_mux|f[22]~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~136_combout\,
	datab => \im|output[17]~5_combout\,
	datac => \im|output[16]~4_combout\,
	datad => \instr_mux|f[22]~135_combout\,
	combout => \rf|value2[3]~37_combout\);

-- Location: LCCOMB_X114_Y37_N10
\rf|value2[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~38_combout\ = (\im|output[17]~5_combout\ & ((\rf|value2[3]~37_combout\ & (\instr_mux|f[22]~137_combout\)) # (!\rf|value2[3]~37_combout\ & ((\instr_mux|f[22]~134_combout\))))) # (!\im|output[17]~5_combout\ & (((\rf|value2[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~137_combout\,
	datab => \im|output[17]~5_combout\,
	datac => \instr_mux|f[22]~134_combout\,
	datad => \rf|value2[3]~37_combout\,
	combout => \rf|value2[3]~38_combout\);

-- Location: LCCOMB_X113_Y37_N18
\rf|value2[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~34_combout\ = (\im|output[17]~5_combout\ & (\im|output[16]~4_combout\)) # (!\im|output[17]~5_combout\ & ((\im|output[16]~4_combout\ & (\instr_mux|f[22]~130_combout\)) # (!\im|output[16]~4_combout\ & ((\instr_mux|f[22]~131_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[17]~5_combout\,
	datab => \im|output[16]~4_combout\,
	datac => \instr_mux|f[22]~130_combout\,
	datad => \instr_mux|f[22]~131_combout\,
	combout => \rf|value2[3]~34_combout\);

-- Location: LCCOMB_X113_Y37_N8
\rf|value2[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~35_combout\ = (\im|output[17]~5_combout\ & ((\rf|value2[3]~34_combout\ & (\instr_mux|f[22]~132_combout\)) # (!\rf|value2[3]~34_combout\ & ((\instr_mux|f[22]~129_combout\))))) # (!\im|output[17]~5_combout\ & (((\rf|value2[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[17]~5_combout\,
	datab => \instr_mux|f[22]~132_combout\,
	datac => \instr_mux|f[22]~129_combout\,
	datad => \rf|value2[3]~34_combout\,
	combout => \rf|value2[3]~35_combout\);

-- Location: LCCOMB_X113_Y37_N6
\rf|value2[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~32_combout\ = (\im|output[17]~5_combout\ & (((\im|output[16]~4_combout\)))) # (!\im|output[17]~5_combout\ & ((\im|output[16]~4_combout\ & (\instr_mux|f[22]~125_combout\)) # (!\im|output[16]~4_combout\ & ((\instr_mux|f[22]~126_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[17]~5_combout\,
	datab => \instr_mux|f[22]~125_combout\,
	datac => \im|output[16]~4_combout\,
	datad => \instr_mux|f[22]~126_combout\,
	combout => \rf|value2[3]~32_combout\);

-- Location: LCCOMB_X113_Y37_N28
\rf|value2[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~33_combout\ = (\im|output[17]~5_combout\ & ((\rf|value2[3]~32_combout\ & (\instr_mux|f[22]~127_combout\)) # (!\rf|value2[3]~32_combout\ & ((\instr_mux|f[22]~122_combout\))))) # (!\im|output[17]~5_combout\ & (((\rf|value2[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~127_combout\,
	datab => \im|output[17]~5_combout\,
	datac => \instr_mux|f[22]~122_combout\,
	datad => \rf|value2[3]~32_combout\,
	combout => \rf|value2[3]~33_combout\);

-- Location: LCCOMB_X113_Y37_N26
\rf|value2[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~36_combout\ = (\ID_EX_ReadPort2_reg|Q\(1) & (\ID_EX_ReadPort2_reg|Q\(0))) # (!\ID_EX_ReadPort2_reg|Q\(1) & ((\ID_EX_ReadPort2_reg|Q\(0) & ((\rf|value2[3]~33_combout\))) # (!\ID_EX_ReadPort2_reg|Q\(0) & (\rf|value2[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort2_reg|Q\(1),
	datab => \ID_EX_ReadPort2_reg|Q\(0),
	datac => \rf|value2[3]~35_combout\,
	datad => \rf|value2[3]~33_combout\,
	combout => \rf|value2[3]~36_combout\);

-- Location: LCCOMB_X114_Y37_N28
\rf|value2[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~30_combout\ = (\im|output[16]~4_combout\ & (\im|output[17]~5_combout\)) # (!\im|output[16]~4_combout\ & ((\im|output[17]~5_combout\ & ((\instr_mux|f[22]~113_combout\))) # (!\im|output[17]~5_combout\ & (\instr_mux|f[22]~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[16]~4_combout\,
	datab => \im|output[17]~5_combout\,
	datac => \instr_mux|f[22]~117_combout\,
	datad => \instr_mux|f[22]~113_combout\,
	combout => \rf|value2[3]~30_combout\);

-- Location: LCCOMB_X114_Y37_N6
\rf|value2[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~31_combout\ = (\im|output[16]~4_combout\ & ((\rf|value2[3]~30_combout\ & ((\instr_mux|f[22]~121_combout\))) # (!\rf|value2[3]~30_combout\ & (\instr_mux|f[22]~108_combout\)))) # (!\im|output[16]~4_combout\ & (((\rf|value2[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[16]~4_combout\,
	datab => \instr_mux|f[22]~108_combout\,
	datac => \instr_mux|f[22]~121_combout\,
	datad => \rf|value2[3]~30_combout\,
	combout => \rf|value2[3]~31_combout\);

-- Location: LCCOMB_X113_Y37_N16
\rf|value2[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~39_combout\ = (\ID_EX_ReadPort2_reg|Q\(1) & ((\rf|value2[3]~36_combout\ & (\rf|value2[3]~38_combout\)) # (!\rf|value2[3]~36_combout\ & ((\rf|value2[3]~31_combout\))))) # (!\ID_EX_ReadPort2_reg|Q\(1) & (((\rf|value2[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort2_reg|Q\(1),
	datab => \rf|value2[3]~38_combout\,
	datac => \rf|value2[3]~36_combout\,
	datad => \rf|value2[3]~31_combout\,
	combout => \rf|value2[3]~39_combout\);

-- Location: FF_X113_Y37_N17
\ID_EX_src2_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value2[3]~39_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_src2_reg|Q\(3));

-- Location: LCCOMB_X109_Y38_N8
\ALUFwd_mux2|stage3|f[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFwd_mux2|stage3|f[3]~8_combout\ = (\ALUFwd_mux2|stage3|f[1]~1_combout\ & (((\ALUFwd_mux2|stage3|f[1]~0_combout\)))) # (!\ALUFwd_mux2|stage3|f[1]~1_combout\ & ((\ALUFwd_mux2|stage3|f[1]~0_combout\ & ((\ID_EX_ReadPort1_reg|Q\(3)))) # 
-- (!\ALUFwd_mux2|stage3|f[1]~0_combout\ & (\ID_EX_src2_reg|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFwd_mux2|stage3|f[1]~1_combout\,
	datab => \ID_EX_src2_reg|Q\(3),
	datac => \ID_EX_ReadPort1_reg|Q\(3),
	datad => \ALUFwd_mux2|stage3|f[1]~0_combout\,
	combout => \ALUFwd_mux2|stage3|f[3]~8_combout\);

-- Location: LCCOMB_X109_Y38_N30
\ALUFwd_mux2|stage3|f[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFwd_mux2|stage3|f[3]~9_combout\ = (\ALUFwd_mux2|stage3|f[1]~1_combout\ & ((\ALUFwd_mux2|stage3|f[3]~8_combout\ & ((\MEM_WB_ALUOut_reg|Q\(3)))) # (!\ALUFwd_mux2|stage3|f[3]~8_combout\ & (\EX_MEM_ALUOut_reg|Q\(3))))) # 
-- (!\ALUFwd_mux2|stage3|f[1]~1_combout\ & (((\ALUFwd_mux2|stage3|f[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_ALUOut_reg|Q\(3),
	datab => \MEM_WB_ALUOut_reg|Q\(3),
	datac => \ALUFwd_mux2|stage3|f[1]~1_combout\,
	datad => \ALUFwd_mux2|stage3|f[3]~8_combout\,
	combout => \ALUFwd_mux2|stage3|f[3]~9_combout\);

-- Location: LCCOMB_X110_Y37_N8
\rf|m4|stage3|f[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f[2]~0_combout\ = (\reset~input_o\) # (\MEM_WB_ALUOut_reg|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \MEM_WB_ALUOut_reg|Q\(2),
	combout => \rf|m4|stage3|f[2]~0_combout\);

-- Location: FF_X111_Y40_N31
\rf|r12|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m4|stage3|f[2]~0_combout\,
	sload => VCC,
	ena => \rf|m12|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(2));

-- Location: FF_X110_Y40_N23
\rf|r4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m4|stage3|f[2]~0_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(2));

-- Location: LCCOMB_X110_Y40_N22
\instr_mux|f[22]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~11_combout\ = (\instr_mux|f[24]~1_combout\ & (\rf|r12|Q\(2))) # (!\instr_mux|f[24]~1_combout\ & ((\rf|r4|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r12|Q\(2),
	datac => \rf|r4|Q\(2),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~11_combout\);

-- Location: LCCOMB_X114_Y40_N4
\rf|r8|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r8|Q[2]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r8|Q[2]~feeder_combout\);

-- Location: FF_X114_Y40_N5
\rf|r8|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r8|Q[2]~feeder_combout\,
	ena => \rf|m8|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r8|Q\(2));

-- Location: FF_X110_Y40_N25
\rf|r0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(2));

-- Location: LCCOMB_X110_Y40_N24
\instr_mux|f[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~10_combout\ = (\instr_mux|f[24]~1_combout\ & (\rf|r8|Q\(2))) # (!\instr_mux|f[24]~1_combout\ & ((\rf|r0|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r8|Q\(2),
	datac => \rf|r0|Q\(2),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~10_combout\);

-- Location: LCCOMB_X110_Y40_N28
\instr_mux|f[22]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~12_combout\ = (\hazunit|stall~4_combout\ & ((\im|output[23]~1_combout\ & ((\instr_mux|f[22]~10_combout\))) # (!\im|output[23]~1_combout\ & (\instr_mux|f[22]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[23]~1_combout\,
	datab => \hazunit|stall~4_combout\,
	datac => \instr_mux|f[22]~11_combout\,
	datad => \instr_mux|f[22]~10_combout\,
	combout => \instr_mux|f[22]~12_combout\);

-- Location: LCCOMB_X114_Y37_N16
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

-- Location: FF_X114_Y37_N17
\rf|r11|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r11|Q[2]~feeder_combout\,
	ena => \rf|m11|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(2));

-- Location: LCCOMB_X114_Y40_N22
\rf|r3|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[2]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r3|Q[2]~feeder_combout\);

-- Location: FF_X114_Y40_N23
\rf|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r3|Q[2]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(2));

-- Location: LCCOMB_X111_Y40_N14
\instr_mux|f[22]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~14_combout\ = (\instr_mux|f[24]~1_combout\ & (\rf|r11|Q\(2))) # (!\instr_mux|f[24]~1_combout\ & ((\rf|r3|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r11|Q\(2),
	datab => \rf|r3|Q\(2),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~14_combout\);

-- Location: LCCOMB_X114_Y36_N4
\rf|r7|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r7|Q[2]~feeder_combout\ = \rf|m4|stage3|f[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m4|stage3|f[2]~0_combout\,
	combout => \rf|r7|Q[2]~feeder_combout\);

-- Location: FF_X114_Y36_N5
\rf|r7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r7|Q[2]~feeder_combout\,
	ena => \rf|m7|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(2));

-- Location: LCCOMB_X109_Y36_N28
\rf|r15|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r15|Q[2]~feeder_combout\ = \rf|m4|stage3|f[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m4|stage3|f[2]~0_combout\,
	combout => \rf|r15|Q[2]~feeder_combout\);

-- Location: FF_X109_Y36_N29
\rf|r15|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r15|Q[2]~feeder_combout\,
	ena => \rf|m15|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(2));

-- Location: LCCOMB_X110_Y36_N16
\instr_mux|f[22]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~15_combout\ = (\instr_mux|f[24]~1_combout\ & ((\rf|r15|Q\(2)))) # (!\instr_mux|f[24]~1_combout\ & (\rf|r7|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r7|Q\(2),
	datab => \rf|r15|Q\(2),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~15_combout\);

-- Location: LCCOMB_X111_Y40_N12
\instr_mux|f[22]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~35_combout\ = (!\hazunit|stall~4_combout\ & ((\ID_EX_ReadPort1_reg|Q\(2) & ((\instr_mux|f[22]~15_combout\))) # (!\ID_EX_ReadPort1_reg|Q\(2) & (\instr_mux|f[22]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \ID_EX_ReadPort1_reg|Q\(2),
	datac => \instr_mux|f[22]~14_combout\,
	datad => \instr_mux|f[22]~15_combout\,
	combout => \instr_mux|f[22]~35_combout\);

-- Location: LCCOMB_X111_Y40_N22
\instr_mux|f[22]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~36_combout\ = (\instr_mux|f[22]~12_combout\) # (\instr_mux|f[22]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_mux|f[22]~12_combout\,
	datad => \instr_mux|f[22]~35_combout\,
	combout => \instr_mux|f[22]~36_combout\);

-- Location: LCCOMB_X111_Y40_N30
\instr_mux|f[22]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~34_combout\ = (\instr_mux|f[23]~2_combout\ & ((\instr_mux|f[22]~15_combout\))) # (!\instr_mux|f[23]~2_combout\ & (\instr_mux|f[22]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[23]~2_combout\,
	datab => \instr_mux|f[22]~14_combout\,
	datad => \instr_mux|f[22]~15_combout\,
	combout => \instr_mux|f[22]~34_combout\);

-- Location: LCCOMB_X114_Y39_N0
\rf|r5|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r5|Q[2]~feeder_combout\ = \rf|m4|stage3|f[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m4|stage3|f[2]~0_combout\,
	combout => \rf|r5|Q[2]~feeder_combout\);

-- Location: FF_X114_Y39_N1
\rf|r5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r5|Q[2]~feeder_combout\,
	ena => \rf|m5|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(2));

-- Location: FF_X112_Y40_N5
\rf|r13|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m4|stage3|f[2]~0_combout\,
	sload => VCC,
	ena => \rf|m13|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(2));

-- Location: LCCOMB_X112_Y40_N4
\instr_mux|f[22]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~20_combout\ = (\instr_mux|f[24]~1_combout\ & ((\rf|r13|Q\(2)))) # (!\instr_mux|f[24]~1_combout\ & (\rf|r5|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r5|Q\(2),
	datac => \rf|r13|Q\(2),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~20_combout\);

-- Location: LCCOMB_X113_Y40_N18
\rf|r1|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[2]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r1|Q[2]~feeder_combout\);

-- Location: FF_X113_Y40_N19
\rf|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[2]~feeder_combout\,
	ena => \rf|m1|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(2));

-- Location: FF_X112_Y40_N19
\rf|r9|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m9|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r9|Q\(2));

-- Location: LCCOMB_X112_Y40_N18
\instr_mux|f[22]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~19_combout\ = (\instr_mux|f[24]~1_combout\ & ((\rf|r9|Q\(2)))) # (!\instr_mux|f[24]~1_combout\ & (\rf|r1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r1|Q\(2),
	datac => \rf|r9|Q\(2),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~19_combout\);

-- Location: LCCOMB_X112_Y40_N22
\instr_mux|f[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~21_combout\ = (\hazunit|stall~4_combout\ & ((\im|output[23]~1_combout\ & ((\instr_mux|f[22]~19_combout\))) # (!\im|output[23]~1_combout\ & (\instr_mux|f[22]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \im|output[23]~1_combout\,
	datac => \instr_mux|f[22]~20_combout\,
	datad => \instr_mux|f[22]~19_combout\,
	combout => \instr_mux|f[22]~21_combout\);

-- Location: LCCOMB_X111_Y40_N6
\instr_mux|f[22]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~38_combout\ = (\instr_mux|f[22]~21_combout\) # (\instr_mux|f[22]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~21_combout\,
	datad => \instr_mux|f[22]~35_combout\,
	combout => \instr_mux|f[22]~38_combout\);

-- Location: LCCOMB_X111_Y40_N8
\rf|value2[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~7_combout\ = (\im|output[17]~5_combout\ & ((\im|output[16]~4_combout\) # ((\instr_mux|f[22]~38_combout\)))) # (!\im|output[17]~5_combout\ & (!\im|output[16]~4_combout\ & (\instr_mux|f[22]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[17]~5_combout\,
	datab => \im|output[16]~4_combout\,
	datac => \instr_mux|f[22]~34_combout\,
	datad => \instr_mux|f[22]~38_combout\,
	combout => \rf|value2[2]~7_combout\);

-- Location: LCCOMB_X114_Y38_N14
\rf|r14|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r14|Q[2]~feeder_combout\ = \rf|m4|stage3|f[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m4|stage3|f[2]~0_combout\,
	combout => \rf|r14|Q[2]~feeder_combout\);

-- Location: FF_X114_Y38_N15
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

-- Location: FF_X112_Y38_N13
\rf|r6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m4|stage3|f[2]~0_combout\,
	sload => VCC,
	ena => \rf|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(2));

-- Location: LCCOMB_X112_Y38_N12
\instr_mux|f[22]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~5_combout\ = (\ID_EX_ReadPort1_reg|Q\(3) & ((\hazunit|stall~4_combout\ & ((\rf|r6|Q\(2)))) # (!\hazunit|stall~4_combout\ & (\rf|r14|Q\(2))))) # (!\ID_EX_ReadPort1_reg|Q\(3) & (((\rf|r6|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(3),
	datab => \rf|r14|Q\(2),
	datac => \rf|r6|Q\(2),
	datad => \hazunit|stall~4_combout\,
	combout => \instr_mux|f[22]~5_combout\);

-- Location: LCCOMB_X112_Y38_N22
\instr_mux|f[22]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~6_combout\ = (\hazunit|stall~4_combout\ & ((\im|output[28]~0_combout\ & ((\instr_mux|f[22]~5_combout\))) # (!\im|output[28]~0_combout\ & (\rf|r14|Q\(2))))) # (!\hazunit|stall~4_combout\ & (((\instr_mux|f[22]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \im|output[28]~0_combout\,
	datac => \rf|r14|Q\(2),
	datad => \instr_mux|f[22]~5_combout\,
	combout => \instr_mux|f[22]~6_combout\);

-- Location: LCCOMB_X112_Y40_N10
\instr_mux|f[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~26_combout\ = (\hazunit|stall~4_combout\ & ((\im|output[23]~1_combout\ & (\instr_mux|f[22]~8_combout\)) # (!\im|output[23]~1_combout\ & ((\instr_mux|f[22]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \im|output[23]~1_combout\,
	datac => \instr_mux|f[22]~8_combout\,
	datad => \instr_mux|f[22]~6_combout\,
	combout => \instr_mux|f[22]~26_combout\);

-- Location: LCCOMB_X111_Y40_N20
\instr_mux|f[22]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~37_combout\ = (\instr_mux|f[22]~26_combout\) # (\instr_mux|f[22]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_mux|f[22]~26_combout\,
	datad => \instr_mux|f[22]~35_combout\,
	combout => \instr_mux|f[22]~37_combout\);

-- Location: LCCOMB_X111_Y40_N2
\rf|value2[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~8_combout\ = (\im|output[16]~4_combout\ & ((\rf|value2[2]~7_combout\ & (\instr_mux|f[22]~36_combout\)) # (!\rf|value2[2]~7_combout\ & ((\instr_mux|f[22]~37_combout\))))) # (!\im|output[16]~4_combout\ & (((\rf|value2[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~36_combout\,
	datab => \im|output[16]~4_combout\,
	datac => \rf|value2[2]~7_combout\,
	datad => \instr_mux|f[22]~37_combout\,
	combout => \rf|value2[2]~8_combout\);

-- Location: LCCOMB_X112_Y40_N8
\instr_mux|f[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~22_combout\ = (\instr_mux|f[22]~21_combout\) # (\instr_mux|f[22]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~21_combout\,
	datad => \instr_mux|f[22]~9_combout\,
	combout => \instr_mux|f[22]~22_combout\);

-- Location: LCCOMB_X112_Y40_N26
\instr_mux|f[22]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~18_combout\ = (\instr_mux|f[23]~2_combout\ & ((\instr_mux|f[22]~6_combout\))) # (!\instr_mux|f[23]~2_combout\ & (\instr_mux|f[22]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[23]~2_combout\,
	datab => \instr_mux|f[22]~8_combout\,
	datad => \instr_mux|f[22]~6_combout\,
	combout => \instr_mux|f[22]~18_combout\);

-- Location: LCCOMB_X111_Y40_N16
\instr_mux|f[22]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~16_combout\ = (\hazunit|stall~4_combout\ & ((\im|output[23]~1_combout\ & (\instr_mux|f[22]~14_combout\)) # (!\im|output[23]~1_combout\ & ((\instr_mux|f[22]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \im|output[23]~1_combout\,
	datac => \instr_mux|f[22]~14_combout\,
	datad => \instr_mux|f[22]~15_combout\,
	combout => \instr_mux|f[22]~16_combout\);

-- Location: LCCOMB_X112_Y40_N20
\instr_mux|f[22]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~17_combout\ = (\instr_mux|f[22]~16_combout\) # (\instr_mux|f[22]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~16_combout\,
	datad => \instr_mux|f[22]~9_combout\,
	combout => \instr_mux|f[22]~17_combout\);

-- Location: LCCOMB_X112_Y40_N0
\rf|value2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~0_combout\ = (\im|output[17]~5_combout\ & (\im|output[16]~4_combout\)) # (!\im|output[17]~5_combout\ & ((\im|output[16]~4_combout\ & (\instr_mux|f[22]~18_combout\)) # (!\im|output[16]~4_combout\ & ((\instr_mux|f[22]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[17]~5_combout\,
	datab => \im|output[16]~4_combout\,
	datac => \instr_mux|f[22]~18_combout\,
	datad => \instr_mux|f[22]~17_combout\,
	combout => \rf|value2[2]~0_combout\);

-- Location: LCCOMB_X112_Y40_N30
\rf|value2[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~1_combout\ = (\im|output[17]~5_combout\ & ((\rf|value2[2]~0_combout\ & (\instr_mux|f[22]~13_combout\)) # (!\rf|value2[2]~0_combout\ & ((\instr_mux|f[22]~22_combout\))))) # (!\im|output[17]~5_combout\ & (((\rf|value2[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[17]~5_combout\,
	datab => \instr_mux|f[22]~13_combout\,
	datac => \instr_mux|f[22]~22_combout\,
	datad => \rf|value2[2]~0_combout\,
	combout => \rf|value2[2]~1_combout\);

-- Location: LCCOMB_X109_Y40_N14
\instr_mux|f[22]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~29_combout\ = (\instr_mux|f[23]~2_combout\ & ((\instr_mux|f[22]~11_combout\))) # (!\instr_mux|f[23]~2_combout\ & (\instr_mux|f[22]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_mux|f[22]~10_combout\,
	datac => \instr_mux|f[23]~2_combout\,
	datad => \instr_mux|f[22]~11_combout\,
	combout => \instr_mux|f[22]~29_combout\);

-- Location: LCCOMB_X110_Y40_N16
\instr_mux|f[22]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~30_combout\ = (!\hazunit|stall~4_combout\ & ((\ID_EX_ReadPort1_reg|Q\(2) & (\instr_mux|f[22]~11_combout\)) # (!\ID_EX_ReadPort1_reg|Q\(2) & ((\instr_mux|f[22]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(2),
	datab => \hazunit|stall~4_combout\,
	datac => \instr_mux|f[22]~11_combout\,
	datad => \instr_mux|f[22]~10_combout\,
	combout => \instr_mux|f[22]~30_combout\);

-- Location: LCCOMB_X111_Y40_N0
\instr_mux|f[22]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~33_combout\ = (\instr_mux|f[22]~30_combout\) # (\instr_mux|f[22]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~30_combout\,
	datad => \instr_mux|f[22]~21_combout\,
	combout => \instr_mux|f[22]~33_combout\);

-- Location: LCCOMB_X110_Y40_N4
\instr_mux|f[22]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~32_combout\ = (\instr_mux|f[22]~26_combout\) # (\instr_mux|f[22]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~26_combout\,
	datad => \instr_mux|f[22]~30_combout\,
	combout => \instr_mux|f[22]~32_combout\);

-- Location: LCCOMB_X110_Y40_N2
\instr_mux|f[22]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~31_combout\ = (\instr_mux|f[22]~30_combout\) # (\instr_mux|f[22]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_mux|f[22]~30_combout\,
	datad => \instr_mux|f[22]~16_combout\,
	combout => \instr_mux|f[22]~31_combout\);

-- Location: LCCOMB_X110_Y40_N6
\rf|value2[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~4_combout\ = (\im|output[17]~5_combout\ & (\im|output[16]~4_combout\)) # (!\im|output[17]~5_combout\ & ((\im|output[16]~4_combout\ & (\instr_mux|f[22]~32_combout\)) # (!\im|output[16]~4_combout\ & ((\instr_mux|f[22]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[17]~5_combout\,
	datab => \im|output[16]~4_combout\,
	datac => \instr_mux|f[22]~32_combout\,
	datad => \instr_mux|f[22]~31_combout\,
	combout => \rf|value2[2]~4_combout\);

-- Location: LCCOMB_X110_Y40_N8
\rf|value2[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~5_combout\ = (\im|output[17]~5_combout\ & ((\rf|value2[2]~4_combout\ & (\instr_mux|f[22]~29_combout\)) # (!\rf|value2[2]~4_combout\ & ((\instr_mux|f[22]~33_combout\))))) # (!\im|output[17]~5_combout\ & (((\rf|value2[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~29_combout\,
	datab => \im|output[17]~5_combout\,
	datac => \instr_mux|f[22]~33_combout\,
	datad => \rf|value2[2]~4_combout\,
	combout => \rf|value2[2]~5_combout\);

-- Location: LCCOMB_X112_Y40_N24
\instr_mux|f[22]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~23_combout\ = (!\hazunit|stall~4_combout\ & ((\ID_EX_ReadPort1_reg|Q\(2) & (\instr_mux|f[22]~20_combout\)) # (!\ID_EX_ReadPort1_reg|Q\(2) & ((\instr_mux|f[22]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \ID_EX_ReadPort1_reg|Q\(2),
	datac => \instr_mux|f[22]~20_combout\,
	datad => \instr_mux|f[22]~19_combout\,
	combout => \instr_mux|f[22]~23_combout\);

-- Location: LCCOMB_X110_Y40_N18
\instr_mux|f[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~25_combout\ = (\instr_mux|f[22]~12_combout\) # (\instr_mux|f[22]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_mux|f[22]~12_combout\,
	datad => \instr_mux|f[22]~23_combout\,
	combout => \instr_mux|f[22]~25_combout\);

-- Location: LCCOMB_X112_Y40_N28
\instr_mux|f[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~27_combout\ = (\instr_mux|f[22]~26_combout\) # (\instr_mux|f[22]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~26_combout\,
	datad => \instr_mux|f[22]~23_combout\,
	combout => \instr_mux|f[22]~27_combout\);

-- Location: LCCOMB_X112_Y40_N6
\instr_mux|f[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~28_combout\ = (\instr_mux|f[23]~2_combout\ & (\instr_mux|f[22]~20_combout\)) # (!\instr_mux|f[23]~2_combout\ & ((\instr_mux|f[22]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[23]~2_combout\,
	datab => \instr_mux|f[22]~20_combout\,
	datad => \instr_mux|f[22]~19_combout\,
	combout => \instr_mux|f[22]~28_combout\);

-- Location: LCCOMB_X111_Y40_N18
\instr_mux|f[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~24_combout\ = (\instr_mux|f[22]~23_combout\) # (\instr_mux|f[22]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_mux|f[22]~23_combout\,
	datad => \instr_mux|f[22]~16_combout\,
	combout => \instr_mux|f[22]~24_combout\);

-- Location: LCCOMB_X111_Y40_N28
\rf|value2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~2_combout\ = (\im|output[17]~5_combout\ & ((\instr_mux|f[22]~28_combout\) # ((\im|output[16]~4_combout\)))) # (!\im|output[17]~5_combout\ & (((!\im|output[16]~4_combout\ & \instr_mux|f[22]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~28_combout\,
	datab => \im|output[17]~5_combout\,
	datac => \im|output[16]~4_combout\,
	datad => \instr_mux|f[22]~24_combout\,
	combout => \rf|value2[2]~2_combout\);

-- Location: LCCOMB_X110_Y40_N12
\rf|value2[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~3_combout\ = (\im|output[16]~4_combout\ & ((\rf|value2[2]~2_combout\ & (\instr_mux|f[22]~25_combout\)) # (!\rf|value2[2]~2_combout\ & ((\instr_mux|f[22]~27_combout\))))) # (!\im|output[16]~4_combout\ & (((\rf|value2[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[16]~4_combout\,
	datab => \instr_mux|f[22]~25_combout\,
	datac => \instr_mux|f[22]~27_combout\,
	datad => \rf|value2[2]~2_combout\,
	combout => \rf|value2[2]~3_combout\);

-- Location: LCCOMB_X110_Y40_N30
\rf|value2[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~6_combout\ = (\ID_EX_ReadPort2_reg|Q\(1) & (\ID_EX_ReadPort2_reg|Q\(0))) # (!\ID_EX_ReadPort2_reg|Q\(1) & ((\ID_EX_ReadPort2_reg|Q\(0) & ((\rf|value2[2]~3_combout\))) # (!\ID_EX_ReadPort2_reg|Q\(0) & (\rf|value2[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort2_reg|Q\(1),
	datab => \ID_EX_ReadPort2_reg|Q\(0),
	datac => \rf|value2[2]~5_combout\,
	datad => \rf|value2[2]~3_combout\,
	combout => \rf|value2[2]~6_combout\);

-- Location: LCCOMB_X111_Y40_N10
\rf|value2[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~9_combout\ = (\ID_EX_ReadPort2_reg|Q\(1) & ((\rf|value2[2]~6_combout\ & (\rf|value2[2]~8_combout\)) # (!\rf|value2[2]~6_combout\ & ((\rf|value2[2]~1_combout\))))) # (!\ID_EX_ReadPort2_reg|Q\(1) & (((\rf|value2[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort2_reg|Q\(1),
	datab => \rf|value2[2]~8_combout\,
	datac => \rf|value2[2]~1_combout\,
	datad => \rf|value2[2]~6_combout\,
	combout => \rf|value2[2]~9_combout\);

-- Location: FF_X111_Y40_N11
\ID_EX_src2_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value2[2]~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_src2_reg|Q\(2));

-- Location: LCCOMB_X108_Y38_N18
\ALUFwd_mux2|stage3|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFwd_mux2|stage3|f[2]~2_combout\ = (\ALUFwd_mux2|stage3|f[1]~1_combout\ & ((\EX_MEM_ALUOut_reg|Q\(2)) # ((\ALUFwd_mux2|stage3|f[1]~0_combout\)))) # (!\ALUFwd_mux2|stage3|f[1]~1_combout\ & (((\ID_EX_src2_reg|Q\(2) & 
-- !\ALUFwd_mux2|stage3|f[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_ALUOut_reg|Q\(2),
	datab => \ALUFwd_mux2|stage3|f[1]~1_combout\,
	datac => \ID_EX_src2_reg|Q\(2),
	datad => \ALUFwd_mux2|stage3|f[1]~0_combout\,
	combout => \ALUFwd_mux2|stage3|f[2]~2_combout\);

-- Location: LCCOMB_X108_Y38_N30
\ALUFwd_mux2|stage3|f[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFwd_mux2|stage3|f[2]~3_combout\ = (\ALUFwd_mux2|stage3|f[1]~0_combout\ & ((\ALUFwd_mux2|stage3|f[2]~2_combout\ & ((\MEM_WB_ALUOut_reg|Q\(2)))) # (!\ALUFwd_mux2|stage3|f[2]~2_combout\ & (\ID_EX_ReadPort1_reg|Q\(3))))) # 
-- (!\ALUFwd_mux2|stage3|f[1]~0_combout\ & (((\ALUFwd_mux2|stage3|f[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFwd_mux2|stage3|f[1]~0_combout\,
	datab => \ID_EX_ReadPort1_reg|Q\(3),
	datac => \MEM_WB_ALUOut_reg|Q\(2),
	datad => \ALUFwd_mux2|stage3|f[2]~2_combout\,
	combout => \ALUFwd_mux2|stage3|f[2]~3_combout\);

-- Location: LCCOMB_X108_Y38_N16
\ALUFwd_mux1|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFwd_mux1|stage3|f~0_combout\ = (\MEM_WB_ALUOut_reg|Q\(2) & (!\fwdunit|forwardA\(0) & \fwdunit|forwardA~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB_ALUOut_reg|Q\(2),
	datac => \fwdunit|forwardA\(0),
	datad => \fwdunit|forwardA~1_combout\,
	combout => \ALUFwd_mux1|stage3|f~0_combout\);

-- Location: LCCOMB_X108_Y38_N28
\ALUFwd_mux1|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFwd_mux1|stage3|f~2_combout\ = (\MEM_WB_ALUOut_reg|Q\(1) & (!\fwdunit|forwardA\(0) & \fwdunit|forwardA~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_ALUOut_reg|Q\(1),
	datac => \fwdunit|forwardA\(0),
	datad => \fwdunit|forwardA~1_combout\,
	combout => \ALUFwd_mux1|stage3|f~2_combout\);

-- Location: LCCOMB_X108_Y38_N14
\alu_ins|add_ins|stage2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage2|s~0_combout\ = (\ALUFwd_mux1|stage3|f[0]~7_combout\ & (\ALUFwd_mux2|stage3|f[0]~7_combout\ $ (((\ALUFwd_mux1|stage3|f~2_combout\) # (\ALUFwd_mux1|stage3|f~3_combout\))))) # (!\ALUFwd_mux1|stage3|f[0]~7_combout\ & 
-- ((\ALUFwd_mux1|stage3|f~2_combout\) # ((\ALUFwd_mux1|stage3|f~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFwd_mux1|stage3|f[0]~7_combout\,
	datab => \ALUFwd_mux1|stage3|f~2_combout\,
	datac => \ALUFwd_mux1|stage3|f~3_combout\,
	datad => \ALUFwd_mux2|stage3|f[0]~7_combout\,
	combout => \alu_ins|add_ins|stage2|s~0_combout\);

-- Location: LCCOMB_X108_Y38_N2
\rf|m0|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~2_combout\ = (!\reset~input_o\ & \MEM_WB_ALUOut_reg|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \MEM_WB_ALUOut_reg|Q\(1),
	combout => \rf|m0|stage3|f~2_combout\);

-- Location: FF_X110_Y40_N5
\rf|r0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(1));

-- Location: FF_X111_Y36_N29
\rf|r8|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m8|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r8|Q\(1));

-- Location: LCCOMB_X111_Y36_N28
\instr_mux|f[22]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~54_combout\ = (\instr_mux|f[24]~1_combout\ & ((\rf|r8|Q\(1)))) # (!\instr_mux|f[24]~1_combout\ & (\rf|r0|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r0|Q\(1),
	datac => \rf|r8|Q\(1),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~54_combout\);

-- Location: FF_X111_Y40_N7
\rf|r12|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m12|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(1));

-- Location: FF_X110_Y40_N3
\rf|r4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(1));

-- Location: LCCOMB_X110_Y36_N28
\instr_mux|f[22]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~53_combout\ = (\instr_mux|f[24]~1_combout\ & (\rf|r12|Q\(1))) # (!\instr_mux|f[24]~1_combout\ & ((\rf|r4|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r12|Q\(1),
	datab => \rf|r4|Q\(1),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~53_combout\);

-- Location: LCCOMB_X112_Y39_N12
\instr_mux|f[22]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~58_combout\ = (\hazunit|stall~4_combout\ & ((\im|output[23]~1_combout\ & (\instr_mux|f[22]~54_combout\)) # (!\im|output[23]~1_combout\ & ((\instr_mux|f[22]~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \im|output[23]~1_combout\,
	datac => \instr_mux|f[22]~54_combout\,
	datad => \instr_mux|f[22]~53_combout\,
	combout => \instr_mux|f[22]~58_combout\);

-- Location: LCCOMB_X114_Y39_N14
\rf|r5|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r5|Q[1]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r5|Q[1]~feeder_combout\);

-- Location: FF_X114_Y39_N15
\rf|r5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r5|Q[1]~feeder_combout\,
	ena => \rf|m5|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(1));

-- Location: FF_X112_Y40_N3
\rf|r13|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m13|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(1));

-- Location: LCCOMB_X110_Y39_N8
\instr_mux|f[22]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~41_combout\ = (\instr_mux|f[24]~1_combout\ & ((\rf|r13|Q\(1)))) # (!\instr_mux|f[24]~1_combout\ & (\rf|r5|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r5|Q\(1),
	datac => \rf|r13|Q\(1),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~41_combout\);

-- Location: FF_X112_Y40_N27
\rf|r9|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m9|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r9|Q\(1));

-- Location: LCCOMB_X113_Y40_N12
\rf|r1|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[1]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r1|Q[1]~feeder_combout\);

-- Location: FF_X113_Y40_N13
\rf|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[1]~feeder_combout\,
	ena => \rf|m1|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(1));

-- Location: LCCOMB_X109_Y39_N24
\instr_mux|f[22]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~42_combout\ = (\ID_EX_ReadPort1_reg|Q\(3) & ((\hazunit|stall~4_combout\ & ((\rf|r1|Q\(1)))) # (!\hazunit|stall~4_combout\ & (\rf|r9|Q\(1))))) # (!\ID_EX_ReadPort1_reg|Q\(3) & (((\rf|r1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r9|Q\(1),
	datab => \ID_EX_ReadPort1_reg|Q\(3),
	datac => \rf|r1|Q\(1),
	datad => \hazunit|stall~4_combout\,
	combout => \instr_mux|f[22]~42_combout\);

-- Location: LCCOMB_X110_Y39_N10
\instr_mux|f[22]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~43_combout\ = (\im|output[28]~0_combout\ & (((\instr_mux|f[22]~42_combout\)))) # (!\im|output[28]~0_combout\ & ((\hazunit|stall~4_combout\ & (\rf|r9|Q\(1))) # (!\hazunit|stall~4_combout\ & ((\instr_mux|f[22]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r9|Q\(1),
	datab => \im|output[28]~0_combout\,
	datac => \hazunit|stall~4_combout\,
	datad => \instr_mux|f[22]~42_combout\,
	combout => \instr_mux|f[22]~43_combout\);

-- Location: LCCOMB_X110_Y39_N12
\instr_mux|f[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~44_combout\ = (!\hazunit|stall~4_combout\ & ((\ID_EX_ReadPort1_reg|Q\(2) & (\instr_mux|f[22]~41_combout\)) # (!\ID_EX_ReadPort1_reg|Q\(2) & ((\instr_mux|f[22]~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(2),
	datab => \hazunit|stall~4_combout\,
	datac => \instr_mux|f[22]~41_combout\,
	datad => \instr_mux|f[22]~43_combout\,
	combout => \instr_mux|f[22]~44_combout\);

-- Location: LCCOMB_X111_Y39_N6
\instr_mux|f[22]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~60_combout\ = (\instr_mux|f[22]~58_combout\) # (\instr_mux|f[22]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~58_combout\,
	datad => \instr_mux|f[22]~44_combout\,
	combout => \instr_mux|f[22]~60_combout\);

-- Location: LCCOMB_X114_Y39_N16
\rf|r2|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r2|Q[1]~feeder_combout\ = \rf|m2|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m2|stage3|f[1]~1_combout\,
	combout => \rf|r2|Q[1]~feeder_combout\);

-- Location: FF_X114_Y39_N17
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

-- Location: FF_X112_Y39_N27
\rf|r10|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m2|stage3|f[1]~1_combout\,
	sload => VCC,
	ena => \rf|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(1));

-- Location: LCCOMB_X112_Y39_N26
\instr_mux|f[22]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~50_combout\ = (\instr_mux|f[24]~1_combout\ & ((\rf|r10|Q\(1)))) # (!\instr_mux|f[24]~1_combout\ & (\rf|r2|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(1),
	datac => \rf|r10|Q\(1),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~50_combout\);

-- Location: LCCOMB_X114_Y38_N0
\rf|r14|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r14|Q[1]~feeder_combout\ = \rf|m2|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m2|stage3|f[1]~1_combout\,
	combout => \rf|r14|Q[1]~feeder_combout\);

-- Location: FF_X114_Y38_N1
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

-- Location: FF_X112_Y39_N25
\rf|r6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m2|stage3|f[1]~1_combout\,
	sload => VCC,
	ena => \rf|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(1));

-- Location: LCCOMB_X112_Y39_N24
\instr_mux|f[22]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~49_combout\ = (\instr_mux|f[24]~1_combout\ & (\rf|r14|Q\(1))) # (!\instr_mux|f[24]~1_combout\ & ((\rf|r6|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r14|Q\(1),
	datac => \rf|r6|Q\(1),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~49_combout\);

-- Location: LCCOMB_X112_Y39_N30
\instr_mux|f[22]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~64_combout\ = (\hazunit|stall~4_combout\ & ((\im|output[23]~1_combout\ & (\instr_mux|f[22]~50_combout\)) # (!\im|output[23]~1_combout\ & ((\instr_mux|f[22]~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \im|output[23]~1_combout\,
	datac => \instr_mux|f[22]~50_combout\,
	datad => \instr_mux|f[22]~49_combout\,
	combout => \instr_mux|f[22]~64_combout\);

-- Location: LCCOMB_X112_Y39_N28
\instr_mux|f[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~65_combout\ = (\instr_mux|f[22]~64_combout\) # (\instr_mux|f[22]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~64_combout\,
	datad => \instr_mux|f[22]~44_combout\,
	combout => \instr_mux|f[22]~65_combout\);

-- Location: LCCOMB_X110_Y39_N26
\instr_mux|f[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~71_combout\ = (\instr_mux|f[23]~2_combout\ & (\instr_mux|f[22]~41_combout\)) # (!\instr_mux|f[23]~2_combout\ & ((\instr_mux|f[22]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_mux|f[23]~2_combout\,
	datac => \instr_mux|f[22]~41_combout\,
	datad => \instr_mux|f[22]~43_combout\,
	combout => \instr_mux|f[22]~71_combout\);

-- Location: LCCOMB_X114_Y40_N20
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

-- Location: FF_X114_Y40_N21
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

-- Location: LCCOMB_X114_Y37_N30
\rf|r11|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r11|Q[1]~feeder_combout\ = \rf|m2|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m2|stage3|f[1]~1_combout\,
	combout => \rf|r11|Q[1]~feeder_combout\);

-- Location: FF_X114_Y37_N31
\rf|r11|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r11|Q[1]~feeder_combout\,
	ena => \rf|m11|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(1));

-- Location: LCCOMB_X113_Y39_N4
\instr_mux|f[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~45_combout\ = (\instr_mux|f[24]~1_combout\ & ((\rf|r11|Q\(1)))) # (!\instr_mux|f[24]~1_combout\ & (\rf|r3|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(1),
	datac => \rf|r11|Q\(1),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~45_combout\);

-- Location: LCCOMB_X110_Y39_N30
\instr_mux|f[22]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~47_combout\ = (\hazunit|stall~4_combout\ & ((\im|output[23]~1_combout\ & ((\instr_mux|f[22]~45_combout\))) # (!\im|output[23]~1_combout\ & (\instr_mux|f[22]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[23]~1_combout\,
	datab => \hazunit|stall~4_combout\,
	datac => \instr_mux|f[22]~46_combout\,
	datad => \instr_mux|f[22]~45_combout\,
	combout => \instr_mux|f[22]~47_combout\);

-- Location: LCCOMB_X110_Y39_N0
\instr_mux|f[22]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~48_combout\ = (\instr_mux|f[22]~47_combout\) # (\instr_mux|f[22]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~47_combout\,
	datad => \instr_mux|f[22]~44_combout\,
	combout => \instr_mux|f[22]~48_combout\);

-- Location: LCCOMB_X110_Y39_N18
\rf|value2[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~10_combout\ = (\im|output[17]~5_combout\ & ((\im|output[16]~4_combout\) # ((\instr_mux|f[22]~71_combout\)))) # (!\im|output[17]~5_combout\ & (!\im|output[16]~4_combout\ & ((\instr_mux|f[22]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[17]~5_combout\,
	datab => \im|output[16]~4_combout\,
	datac => \instr_mux|f[22]~71_combout\,
	datad => \instr_mux|f[22]~48_combout\,
	combout => \rf|value2[1]~10_combout\);

-- Location: LCCOMB_X111_Y39_N12
\rf|value2[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~11_combout\ = (\im|output[16]~4_combout\ & ((\rf|value2[1]~10_combout\ & (\instr_mux|f[22]~60_combout\)) # (!\rf|value2[1]~10_combout\ & ((\instr_mux|f[22]~65_combout\))))) # (!\im|output[16]~4_combout\ & (((\rf|value2[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~60_combout\,
	datab => \instr_mux|f[22]~65_combout\,
	datac => \im|output[16]~4_combout\,
	datad => \rf|value2[1]~10_combout\,
	combout => \rf|value2[1]~11_combout\);

-- Location: LCCOMB_X112_Y39_N2
\instr_mux|f[22]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~62_combout\ = (!\hazunit|stall~4_combout\ & ((\ID_EX_ReadPort1_reg|Q\(2) & (\instr_mux|f[22]~46_combout\)) # (!\ID_EX_ReadPort1_reg|Q\(2) & ((\instr_mux|f[22]~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \ID_EX_ReadPort1_reg|Q\(2),
	datac => \instr_mux|f[22]~46_combout\,
	datad => \instr_mux|f[22]~45_combout\,
	combout => \instr_mux|f[22]~62_combout\);

-- Location: LCCOMB_X112_Y39_N0
\instr_mux|f[22]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~63_combout\ = (\instr_mux|f[22]~58_combout\) # (\instr_mux|f[22]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~58_combout\,
	datad => \instr_mux|f[22]~62_combout\,
	combout => \instr_mux|f[22]~63_combout\);

-- Location: LCCOMB_X110_Y39_N22
\instr_mux|f[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~69_combout\ = (\hazunit|stall~4_combout\ & ((\im|output[23]~1_combout\ & ((\instr_mux|f[22]~43_combout\))) # (!\im|output[23]~1_combout\ & (\instr_mux|f[22]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[23]~1_combout\,
	datab => \hazunit|stall~4_combout\,
	datac => \instr_mux|f[22]~41_combout\,
	datad => \instr_mux|f[22]~43_combout\,
	combout => \instr_mux|f[22]~69_combout\);

-- Location: LCCOMB_X112_Y39_N22
\instr_mux|f[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~73_combout\ = (\instr_mux|f[22]~69_combout\) # (\instr_mux|f[22]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~69_combout\,
	datad => \instr_mux|f[22]~62_combout\,
	combout => \instr_mux|f[22]~73_combout\);

-- Location: LCCOMB_X112_Y39_N4
\rf|value2[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~17_combout\ = (\im|output[16]~4_combout\ & (\im|output[17]~5_combout\)) # (!\im|output[16]~4_combout\ & ((\im|output[17]~5_combout\ & (\instr_mux|f[22]~73_combout\)) # (!\im|output[17]~5_combout\ & ((\instr_mux|f[22]~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[16]~4_combout\,
	datab => \im|output[17]~5_combout\,
	datac => \instr_mux|f[22]~73_combout\,
	datad => \instr_mux|f[22]~57_combout\,
	combout => \rf|value2[1]~17_combout\);

-- Location: LCCOMB_X112_Y39_N16
\instr_mux|f[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~68_combout\ = (\instr_mux|f[22]~64_combout\) # (\instr_mux|f[22]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~64_combout\,
	datad => \instr_mux|f[22]~62_combout\,
	combout => \instr_mux|f[22]~68_combout\);

-- Location: LCCOMB_X112_Y39_N10
\rf|value2[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~18_combout\ = (\im|output[16]~4_combout\ & ((\rf|value2[1]~17_combout\ & (\instr_mux|f[22]~63_combout\)) # (!\rf|value2[1]~17_combout\ & ((\instr_mux|f[22]~68_combout\))))) # (!\im|output[16]~4_combout\ & (((\rf|value2[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[16]~4_combout\,
	datab => \instr_mux|f[22]~63_combout\,
	datac => \rf|value2[1]~17_combout\,
	datad => \instr_mux|f[22]~68_combout\,
	combout => \rf|value2[1]~18_combout\);

-- Location: LCCOMB_X110_Y39_N28
\instr_mux|f[22]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~55_combout\ = (!\hazunit|stall~4_combout\ & ((\ID_EX_ReadPort1_reg|Q\(2) & (\instr_mux|f[22]~53_combout\)) # (!\ID_EX_ReadPort1_reg|Q\(2) & ((\instr_mux|f[22]~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(2),
	datab => \hazunit|stall~4_combout\,
	datac => \instr_mux|f[22]~53_combout\,
	datad => \instr_mux|f[22]~54_combout\,
	combout => \instr_mux|f[22]~55_combout\);

-- Location: LCCOMB_X110_Y39_N6
\instr_mux|f[22]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~56_combout\ = (\instr_mux|f[22]~47_combout\) # (\instr_mux|f[22]~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~47_combout\,
	datad => \instr_mux|f[22]~55_combout\,
	combout => \instr_mux|f[22]~56_combout\);

-- Location: LCCOMB_X112_Y39_N20
\instr_mux|f[22]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~61_combout\ = (\instr_mux|f[23]~2_combout\ & ((\instr_mux|f[22]~53_combout\))) # (!\instr_mux|f[23]~2_combout\ & (\instr_mux|f[22]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[23]~2_combout\,
	datac => \instr_mux|f[22]~54_combout\,
	datad => \instr_mux|f[22]~53_combout\,
	combout => \instr_mux|f[22]~61_combout\);

-- Location: LCCOMB_X111_Y39_N28
\instr_mux|f[22]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~67_combout\ = (\instr_mux|f[22]~64_combout\) # (\instr_mux|f[22]~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~64_combout\,
	datad => \instr_mux|f[22]~55_combout\,
	combout => \instr_mux|f[22]~67_combout\);

-- Location: LCCOMB_X111_Y39_N30
\rf|value2[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~14_combout\ = (\im|output[16]~4_combout\ & ((\im|output[17]~5_combout\ & (\instr_mux|f[22]~61_combout\)) # (!\im|output[17]~5_combout\ & ((\instr_mux|f[22]~67_combout\))))) # (!\im|output[16]~4_combout\ & (\im|output[17]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[16]~4_combout\,
	datab => \im|output[17]~5_combout\,
	datac => \instr_mux|f[22]~61_combout\,
	datad => \instr_mux|f[22]~67_combout\,
	combout => \rf|value2[1]~14_combout\);

-- Location: LCCOMB_X110_Y39_N24
\instr_mux|f[22]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~72_combout\ = (\instr_mux|f[22]~69_combout\) # (\instr_mux|f[22]~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~69_combout\,
	datad => \instr_mux|f[22]~55_combout\,
	combout => \instr_mux|f[22]~72_combout\);

-- Location: LCCOMB_X111_Y39_N8
\rf|value2[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~15_combout\ = (\im|output[16]~4_combout\ & (((\rf|value2[1]~14_combout\)))) # (!\im|output[16]~4_combout\ & ((\rf|value2[1]~14_combout\ & ((\instr_mux|f[22]~72_combout\))) # (!\rf|value2[1]~14_combout\ & (\instr_mux|f[22]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[16]~4_combout\,
	datab => \instr_mux|f[22]~56_combout\,
	datac => \rf|value2[1]~14_combout\,
	datad => \instr_mux|f[22]~72_combout\,
	combout => \rf|value2[1]~15_combout\);

-- Location: LCCOMB_X112_Y39_N8
\instr_mux|f[22]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~51_combout\ = (!\hazunit|stall~4_combout\ & ((\ID_EX_ReadPort1_reg|Q\(2) & ((\instr_mux|f[22]~49_combout\))) # (!\ID_EX_ReadPort1_reg|Q\(2) & (\instr_mux|f[22]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \ID_EX_ReadPort1_reg|Q\(2),
	datac => \instr_mux|f[22]~50_combout\,
	datad => \instr_mux|f[22]~49_combout\,
	combout => \instr_mux|f[22]~51_combout\);

-- Location: LCCOMB_X112_Y39_N6
\instr_mux|f[22]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~59_combout\ = (\instr_mux|f[22]~51_combout\) # (\instr_mux|f[22]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~51_combout\,
	datad => \instr_mux|f[22]~58_combout\,
	combout => \instr_mux|f[22]~59_combout\);

-- Location: LCCOMB_X110_Y39_N4
\instr_mux|f[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~70_combout\ = (\instr_mux|f[22]~69_combout\) # (\instr_mux|f[22]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~69_combout\,
	datad => \instr_mux|f[22]~51_combout\,
	combout => \instr_mux|f[22]~70_combout\);

-- Location: LCCOMB_X112_Y39_N14
\instr_mux|f[22]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~66_combout\ = (\instr_mux|f[23]~2_combout\ & ((\instr_mux|f[22]~49_combout\))) # (!\instr_mux|f[23]~2_combout\ & (\instr_mux|f[22]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~50_combout\,
	datac => \instr_mux|f[23]~2_combout\,
	datad => \instr_mux|f[22]~49_combout\,
	combout => \instr_mux|f[22]~66_combout\);

-- Location: LCCOMB_X110_Y39_N14
\instr_mux|f[22]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~52_combout\ = (\instr_mux|f[22]~47_combout\) # (\instr_mux|f[22]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_mux|f[22]~47_combout\,
	datad => \instr_mux|f[22]~51_combout\,
	combout => \instr_mux|f[22]~52_combout\);

-- Location: LCCOMB_X111_Y39_N2
\rf|value2[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~12_combout\ = (\im|output[16]~4_combout\ & ((\im|output[17]~5_combout\) # ((\instr_mux|f[22]~66_combout\)))) # (!\im|output[16]~4_combout\ & (!\im|output[17]~5_combout\ & ((\instr_mux|f[22]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[16]~4_combout\,
	datab => \im|output[17]~5_combout\,
	datac => \instr_mux|f[22]~66_combout\,
	datad => \instr_mux|f[22]~52_combout\,
	combout => \rf|value2[1]~12_combout\);

-- Location: LCCOMB_X111_Y39_N16
\rf|value2[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~13_combout\ = (\im|output[17]~5_combout\ & ((\rf|value2[1]~12_combout\ & (\instr_mux|f[22]~59_combout\)) # (!\rf|value2[1]~12_combout\ & ((\instr_mux|f[22]~70_combout\))))) # (!\im|output[17]~5_combout\ & (((\rf|value2[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~59_combout\,
	datab => \im|output[17]~5_combout\,
	datac => \instr_mux|f[22]~70_combout\,
	datad => \rf|value2[1]~12_combout\,
	combout => \rf|value2[1]~13_combout\);

-- Location: LCCOMB_X111_Y39_N10
\rf|value2[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~16_combout\ = (\ID_EX_ReadPort2_reg|Q\(1) & ((\ID_EX_ReadPort2_reg|Q\(0)) # ((\rf|value2[1]~13_combout\)))) # (!\ID_EX_ReadPort2_reg|Q\(1) & (!\ID_EX_ReadPort2_reg|Q\(0) & (\rf|value2[1]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort2_reg|Q\(1),
	datab => \ID_EX_ReadPort2_reg|Q\(0),
	datac => \rf|value2[1]~15_combout\,
	datad => \rf|value2[1]~13_combout\,
	combout => \rf|value2[1]~16_combout\);

-- Location: LCCOMB_X111_Y39_N26
\rf|value2[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~19_combout\ = (\ID_EX_ReadPort2_reg|Q\(0) & ((\rf|value2[1]~16_combout\ & ((\rf|value2[1]~18_combout\))) # (!\rf|value2[1]~16_combout\ & (\rf|value2[1]~11_combout\)))) # (!\ID_EX_ReadPort2_reg|Q\(0) & (((\rf|value2[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[1]~11_combout\,
	datab => \ID_EX_ReadPort2_reg|Q\(0),
	datac => \rf|value2[1]~18_combout\,
	datad => \rf|value2[1]~16_combout\,
	combout => \rf|value2[1]~19_combout\);

-- Location: FF_X111_Y39_N27
\ID_EX_src2_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value2[1]~19_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_src2_reg|Q\(1));

-- Location: LCCOMB_X108_Y38_N24
\ALUFwd_mux2|stage3|f[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFwd_mux2|stage3|f[1]~4_combout\ = (\ALUFwd_mux2|stage3|f[1]~0_combout\ & ((\ID_EX_ReadPort1_reg|Q\(3)) # ((\ALUFwd_mux2|stage3|f[1]~1_combout\)))) # (!\ALUFwd_mux2|stage3|f[1]~0_combout\ & (((\ID_EX_src2_reg|Q\(1) & 
-- !\ALUFwd_mux2|stage3|f[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFwd_mux2|stage3|f[1]~0_combout\,
	datab => \ID_EX_ReadPort1_reg|Q\(3),
	datac => \ID_EX_src2_reg|Q\(1),
	datad => \ALUFwd_mux2|stage3|f[1]~1_combout\,
	combout => \ALUFwd_mux2|stage3|f[1]~4_combout\);

-- Location: LCCOMB_X108_Y38_N0
\ALUFwd_mux2|stage3|f[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFwd_mux2|stage3|f[1]~5_combout\ = (\ALUFwd_mux2|stage3|f[1]~4_combout\ & (((\MEM_WB_ALUOut_reg|Q\(1)) # (!\ALUFwd_mux2|stage3|f[1]~1_combout\)))) # (!\ALUFwd_mux2|stage3|f[1]~4_combout\ & (\EX_MEM_ALUOut_reg|Q\(1) & 
-- ((\ALUFwd_mux2|stage3|f[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_ALUOut_reg|Q\(1),
	datab => \ALUFwd_mux2|stage3|f[1]~4_combout\,
	datac => \MEM_WB_ALUOut_reg|Q\(1),
	datad => \ALUFwd_mux2|stage3|f[1]~1_combout\,
	combout => \ALUFwd_mux2|stage3|f[1]~5_combout\);

-- Location: LCCOMB_X108_Y38_N22
\alu_ins|mux4to1_ins|stage1|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage1|f~1_combout\ = (\ID_EX_ALUOP_reg|Q\(0) & (\alu_ins|add_ins|stage2|s~0_combout\ $ (\ALUFwd_mux2|stage3|f[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ALUOP_reg|Q\(0),
	datab => \alu_ins|add_ins|stage2|s~0_combout\,
	datad => \ALUFwd_mux2|stage3|f[1]~5_combout\,
	combout => \alu_ins|mux4to1_ins|stage1|f~1_combout\);

-- Location: FF_X108_Y38_N23
\EX_MEM_ALUOut_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu_ins|mux4to1_ins|stage1|f~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_ALUOut_reg|Q\(1));

-- Location: FF_X108_Y38_N1
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

-- Location: LCCOMB_X108_Y38_N6
\rf|m2|stage3|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[1]~1_combout\ = (\reset~input_o\) # (\MEM_WB_ALUOut_reg|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \MEM_WB_ALUOut_reg|Q\(1),
	combout => \rf|m2|stage3|f[1]~1_combout\);

-- Location: LCCOMB_X109_Y36_N14
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

-- Location: FF_X109_Y36_N15
\rf|r15|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r15|Q[1]~feeder_combout\,
	ena => \rf|m15|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(1));

-- Location: LCCOMB_X114_Y36_N22
\rf|r7|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r7|Q[1]~feeder_combout\ = \rf|m2|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m2|stage3|f[1]~1_combout\,
	combout => \rf|r7|Q[1]~feeder_combout\);

-- Location: FF_X114_Y36_N23
\rf|r7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r7|Q[1]~feeder_combout\,
	ena => \rf|m7|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(1));

-- Location: LCCOMB_X110_Y36_N26
\instr_mux|f[22]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~46_combout\ = (\instr_mux|f[24]~1_combout\ & (\rf|r15|Q\(1))) # (!\instr_mux|f[24]~1_combout\ & ((\rf|r7|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r15|Q\(1),
	datac => \rf|r7|Q\(1),
	datad => \instr_mux|f[24]~1_combout\,
	combout => \instr_mux|f[22]~46_combout\);

-- Location: LCCOMB_X112_Y39_N18
\instr_mux|f[22]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~57_combout\ = (\instr_mux|f[23]~2_combout\ & (\instr_mux|f[22]~46_combout\)) # (!\instr_mux|f[23]~2_combout\ & ((\instr_mux|f[22]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[23]~2_combout\,
	datac => \instr_mux|f[22]~46_combout\,
	datad => \instr_mux|f[22]~45_combout\,
	combout => \instr_mux|f[22]~57_combout\);

-- Location: LCCOMB_X110_Y39_N20
\rf|value1[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~10_combout\ = (\ID_EX_ReadPort1_reg|Q\(0) & (\ID_EX_ReadPort1_reg|Q\(1))) # (!\ID_EX_ReadPort1_reg|Q\(0) & ((\ID_EX_ReadPort1_reg|Q\(1) & (\instr_mux|f[22]~52_combout\)) # (!\ID_EX_ReadPort1_reg|Q\(1) & ((\instr_mux|f[22]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(0),
	datab => \ID_EX_ReadPort1_reg|Q\(1),
	datac => \instr_mux|f[22]~52_combout\,
	datad => \instr_mux|f[22]~56_combout\,
	combout => \rf|value1[1]~10_combout\);

-- Location: LCCOMB_X111_Y39_N0
\rf|value1[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~11_combout\ = (\ID_EX_ReadPort1_reg|Q\(0) & ((\rf|value1[1]~10_combout\ & (\instr_mux|f[22]~57_combout\)) # (!\rf|value1[1]~10_combout\ & ((\instr_mux|f[22]~48_combout\))))) # (!\ID_EX_ReadPort1_reg|Q\(0) & (((\rf|value1[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(0),
	datab => \instr_mux|f[22]~57_combout\,
	datac => \instr_mux|f[22]~48_combout\,
	datad => \rf|value1[1]~10_combout\,
	combout => \rf|value1[1]~11_combout\);

-- Location: LCCOMB_X110_Y39_N2
\rf|value1[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~17_combout\ = (\ID_EX_ReadPort1_reg|Q\(0) & ((\ID_EX_ReadPort1_reg|Q\(1)) # ((\instr_mux|f[22]~71_combout\)))) # (!\ID_EX_ReadPort1_reg|Q\(0) & (!\ID_EX_ReadPort1_reg|Q\(1) & ((\instr_mux|f[22]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(0),
	datab => \ID_EX_ReadPort1_reg|Q\(1),
	datac => \instr_mux|f[22]~71_combout\,
	datad => \instr_mux|f[22]~72_combout\,
	combout => \rf|value1[1]~17_combout\);

-- Location: LCCOMB_X110_Y39_N16
\rf|value1[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~18_combout\ = (\ID_EX_ReadPort1_reg|Q\(1) & ((\rf|value1[1]~17_combout\ & ((\instr_mux|f[22]~73_combout\))) # (!\rf|value1[1]~17_combout\ & (\instr_mux|f[22]~70_combout\)))) # (!\ID_EX_ReadPort1_reg|Q\(1) & (\rf|value1[1]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(1),
	datab => \rf|value1[1]~17_combout\,
	datac => \instr_mux|f[22]~70_combout\,
	datad => \instr_mux|f[22]~73_combout\,
	combout => \rf|value1[1]~18_combout\);

-- Location: LCCOMB_X111_Y39_N24
\rf|value1[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~12_combout\ = (\ID_EX_ReadPort1_reg|Q\(0) & ((\ID_EX_ReadPort1_reg|Q\(1)) # ((\instr_mux|f[22]~60_combout\)))) # (!\ID_EX_ReadPort1_reg|Q\(0) & (!\ID_EX_ReadPort1_reg|Q\(1) & (\instr_mux|f[22]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(0),
	datab => \ID_EX_ReadPort1_reg|Q\(1),
	datac => \instr_mux|f[22]~61_combout\,
	datad => \instr_mux|f[22]~60_combout\,
	combout => \rf|value1[1]~12_combout\);

-- Location: LCCOMB_X111_Y39_N14
\rf|value1[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~13_combout\ = (\ID_EX_ReadPort1_reg|Q\(1) & ((\rf|value1[1]~12_combout\ & ((\instr_mux|f[22]~63_combout\))) # (!\rf|value1[1]~12_combout\ & (\instr_mux|f[22]~59_combout\)))) # (!\ID_EX_ReadPort1_reg|Q\(1) & (((\rf|value1[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~59_combout\,
	datab => \ID_EX_ReadPort1_reg|Q\(1),
	datac => \instr_mux|f[22]~63_combout\,
	datad => \rf|value1[1]~12_combout\,
	combout => \rf|value1[1]~13_combout\);

-- Location: LCCOMB_X111_Y39_N22
\rf|value1[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~14_combout\ = (\ID_EX_ReadPort1_reg|Q\(0) & (\ID_EX_ReadPort1_reg|Q\(1))) # (!\ID_EX_ReadPort1_reg|Q\(0) & ((\ID_EX_ReadPort1_reg|Q\(1) & (\instr_mux|f[22]~66_combout\)) # (!\ID_EX_ReadPort1_reg|Q\(1) & ((\instr_mux|f[22]~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(0),
	datab => \ID_EX_ReadPort1_reg|Q\(1),
	datac => \instr_mux|f[22]~66_combout\,
	datad => \instr_mux|f[22]~67_combout\,
	combout => \rf|value1[1]~14_combout\);

-- Location: LCCOMB_X111_Y39_N20
\rf|value1[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~15_combout\ = (\ID_EX_ReadPort1_reg|Q\(0) & ((\rf|value1[1]~14_combout\ & (\instr_mux|f[22]~68_combout\)) # (!\rf|value1[1]~14_combout\ & ((\instr_mux|f[22]~65_combout\))))) # (!\ID_EX_ReadPort1_reg|Q\(0) & (((\rf|value1[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(0),
	datab => \instr_mux|f[22]~68_combout\,
	datac => \rf|value1[1]~14_combout\,
	datad => \instr_mux|f[22]~65_combout\,
	combout => \rf|value1[1]~15_combout\);

-- Location: LCCOMB_X111_Y39_N18
\rf|value1[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~16_combout\ = (\im|output[22]~2_combout\ & ((\im|stage_dec|s2|y[2]~0_combout\) # ((\rf|value1[1]~13_combout\)))) # (!\im|output[22]~2_combout\ & (!\im|stage_dec|s2|y[2]~0_combout\ & ((\rf|value1[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[22]~2_combout\,
	datab => \im|stage_dec|s2|y[2]~0_combout\,
	datac => \rf|value1[1]~13_combout\,
	datad => \rf|value1[1]~15_combout\,
	combout => \rf|value1[1]~16_combout\);

-- Location: LCCOMB_X111_Y39_N4
\rf|value1[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~19_combout\ = (\im|stage_dec|s2|y[2]~0_combout\ & ((\rf|value1[1]~16_combout\ & ((\rf|value1[1]~18_combout\))) # (!\rf|value1[1]~16_combout\ & (\rf|value1[1]~11_combout\)))) # (!\im|stage_dec|s2|y[2]~0_combout\ & 
-- (((\rf|value1[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|stage_dec|s2|y[2]~0_combout\,
	datab => \rf|value1[1]~11_combout\,
	datac => \rf|value1[1]~18_combout\,
	datad => \rf|value1[1]~16_combout\,
	combout => \rf|value1[1]~19_combout\);

-- Location: FF_X111_Y39_N5
\ID_EX_src1_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value1[1]~19_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_src1_reg|Q\(1));

-- Location: LCCOMB_X107_Y38_N26
\ALUFwd_mux1|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFwd_mux1|stage3|f~3_combout\ = (\fwdunit|forwardA\(0) & (((\EX_MEM_ALUOut_reg|Q\(1))))) # (!\fwdunit|forwardA\(0) & (\ID_EX_src1_reg|Q\(1) & ((!\fwdunit|forwardA~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_src1_reg|Q\(1),
	datab => \EX_MEM_ALUOut_reg|Q\(1),
	datac => \fwdunit|forwardA~1_combout\,
	datad => \fwdunit|forwardA\(0),
	combout => \ALUFwd_mux1|stage3|f~3_combout\);

-- Location: LCCOMB_X108_Y38_N4
\alu_ins|add_ins|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage1|Cout~0_combout\ = (\ALUFwd_mux2|stage3|f[0]~7_combout\ & ((\fwdunit|forwardA\(0) & (\EX_MEM_ALUOut_reg|Q\(0))) # (!\fwdunit|forwardA\(0) & ((\ALUFwd_mux1|stage3|f[0]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_ALUOut_reg|Q\(0),
	datab => \ALUFwd_mux1|stage3|f[0]~4_combout\,
	datac => \fwdunit|forwardA\(0),
	datad => \ALUFwd_mux2|stage3|f[0]~7_combout\,
	combout => \alu_ins|add_ins|stage1|Cout~0_combout\);

-- Location: LCCOMB_X108_Y38_N20
\alu_ins|add_ins|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage2|Cout~0_combout\ = (\alu_ins|add_ins|stage1|Cout~0_combout\ & ((\ALUFwd_mux1|stage3|f~3_combout\) # ((\ALUFwd_mux1|stage3|f~2_combout\) # (\ALUFwd_mux2|stage3|f[1]~5_combout\)))) # (!\alu_ins|add_ins|stage1|Cout~0_combout\ & 
-- (\ALUFwd_mux2|stage3|f[1]~5_combout\ & ((\ALUFwd_mux1|stage3|f~3_combout\) # (\ALUFwd_mux1|stage3|f~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFwd_mux1|stage3|f~3_combout\,
	datab => \ALUFwd_mux1|stage3|f~2_combout\,
	datac => \alu_ins|add_ins|stage1|Cout~0_combout\,
	datad => \ALUFwd_mux2|stage3|f[1]~5_combout\,
	combout => \alu_ins|add_ins|stage2|Cout~0_combout\);

-- Location: LCCOMB_X108_Y38_N26
\alu_ins|add_ins|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage3|s~combout\ = \ALUFwd_mux2|stage3|f[2]~3_combout\ $ (\alu_ins|add_ins|stage2|Cout~0_combout\ $ (((\ALUFwd_mux1|stage3|f~0_combout\) # (\ALUFwd_mux1|stage3|f~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFwd_mux2|stage3|f[2]~3_combout\,
	datab => \ALUFwd_mux1|stage3|f~0_combout\,
	datac => \ALUFwd_mux1|stage3|f~1_combout\,
	datad => \alu_ins|add_ins|stage2|Cout~0_combout\,
	combout => \alu_ins|add_ins|stage3|s~combout\);

-- Location: LCCOMB_X108_Y38_N12
\alu_ins|mux4to1_ins|stage1|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage1|f~2_combout\ = (\alu_ins|add_ins|stage3|s~combout\ & \ID_EX_ALUOP_reg|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_ins|add_ins|stage3|s~combout\,
	datad => \ID_EX_ALUOP_reg|Q\(0),
	combout => \alu_ins|mux4to1_ins|stage1|f~2_combout\);

-- Location: FF_X108_Y38_N13
\EX_MEM_ALUOut_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu_ins|mux4to1_ins|stage1|f~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_ALUOut_reg|Q\(2));

-- Location: FF_X108_Y38_N31
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

-- Location: LCCOMB_X110_Y37_N2
\rf|m0|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~0_combout\ = (!\reset~input_o\ & \MEM_WB_ALUOut_reg|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \MEM_WB_ALUOut_reg|Q\(2),
	combout => \rf|m0|stage3|f~0_combout\);

-- Location: LCCOMB_X113_Y40_N20
\rf|r10|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r10|Q[2]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r10|Q[2]~feeder_combout\);

-- Location: FF_X113_Y40_N21
\rf|r10|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r10|Q[2]~feeder_combout\,
	ena => \rf|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(2));

-- Location: FF_X112_Y38_N1
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
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(2));

-- Location: LCCOMB_X112_Y38_N0
\instr_mux|f[22]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~7_combout\ = (\ID_EX_ReadPort1_reg|Q\(3) & ((\hazunit|stall~4_combout\ & ((\rf|r2|Q\(2)))) # (!\hazunit|stall~4_combout\ & (\rf|r10|Q\(2))))) # (!\ID_EX_ReadPort1_reg|Q\(3) & (((\rf|r2|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(3),
	datab => \rf|r10|Q\(2),
	datac => \rf|r2|Q\(2),
	datad => \hazunit|stall~4_combout\,
	combout => \instr_mux|f[22]~7_combout\);

-- Location: LCCOMB_X112_Y38_N2
\instr_mux|f[22]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~8_combout\ = (\hazunit|stall~4_combout\ & ((\im|output[28]~0_combout\ & ((\instr_mux|f[22]~7_combout\))) # (!\im|output[28]~0_combout\ & (\rf|r10|Q\(2))))) # (!\hazunit|stall~4_combout\ & (((\instr_mux|f[22]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \rf|r10|Q\(2),
	datac => \im|output[28]~0_combout\,
	datad => \instr_mux|f[22]~7_combout\,
	combout => \instr_mux|f[22]~8_combout\);

-- Location: LCCOMB_X112_Y40_N12
\instr_mux|f[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~9_combout\ = (!\hazunit|stall~4_combout\ & ((\ID_EX_ReadPort1_reg|Q\(2) & ((\instr_mux|f[22]~6_combout\))) # (!\ID_EX_ReadPort1_reg|Q\(2) & (\instr_mux|f[22]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazunit|stall~4_combout\,
	datab => \ID_EX_ReadPort1_reg|Q\(2),
	datac => \instr_mux|f[22]~8_combout\,
	datad => \instr_mux|f[22]~6_combout\,
	combout => \instr_mux|f[22]~9_combout\);

-- Location: LCCOMB_X112_Y40_N2
\instr_mux|f[22]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \instr_mux|f[22]~13_combout\ = (\instr_mux|f[22]~9_combout\) # (\instr_mux|f[22]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~9_combout\,
	datad => \instr_mux|f[22]~12_combout\,
	combout => \instr_mux|f[22]~13_combout\);

-- Location: LCCOMB_X112_Y40_N16
\rf|value1[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~0_combout\ = (\im|output[22]~2_combout\ & (\im|stage_dec|s2|y[2]~0_combout\)) # (!\im|output[22]~2_combout\ & ((\im|stage_dec|s2|y[2]~0_combout\ & ((\instr_mux|f[22]~17_combout\))) # (!\im|stage_dec|s2|y[2]~0_combout\ & 
-- (\instr_mux|f[22]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[22]~2_combout\,
	datab => \im|stage_dec|s2|y[2]~0_combout\,
	datac => \instr_mux|f[22]~18_combout\,
	datad => \instr_mux|f[22]~17_combout\,
	combout => \rf|value1[2]~0_combout\);

-- Location: LCCOMB_X112_Y40_N14
\rf|value1[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~1_combout\ = (\im|output[22]~2_combout\ & ((\rf|value1[2]~0_combout\ & ((\instr_mux|f[22]~22_combout\))) # (!\rf|value1[2]~0_combout\ & (\instr_mux|f[22]~13_combout\)))) # (!\im|output[22]~2_combout\ & (((\rf|value1[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[22]~2_combout\,
	datab => \instr_mux|f[22]~13_combout\,
	datac => \instr_mux|f[22]~22_combout\,
	datad => \rf|value1[2]~0_combout\,
	combout => \rf|value1[2]~1_combout\);

-- Location: LCCOMB_X111_Y40_N26
\rf|value1[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~7_combout\ = (\im|output[22]~2_combout\ & ((\im|stage_dec|s2|y[2]~0_combout\) # ((\instr_mux|f[22]~36_combout\)))) # (!\im|output[22]~2_combout\ & (!\im|stage_dec|s2|y[2]~0_combout\ & ((\instr_mux|f[22]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[22]~2_combout\,
	datab => \im|stage_dec|s2|y[2]~0_combout\,
	datac => \instr_mux|f[22]~36_combout\,
	datad => \instr_mux|f[22]~37_combout\,
	combout => \rf|value1[2]~7_combout\);

-- Location: LCCOMB_X111_Y40_N4
\rf|value1[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~8_combout\ = (\im|stage_dec|s2|y[2]~0_combout\ & ((\rf|value1[2]~7_combout\ & ((\instr_mux|f[22]~38_combout\))) # (!\rf|value1[2]~7_combout\ & (\instr_mux|f[22]~34_combout\)))) # (!\im|stage_dec|s2|y[2]~0_combout\ & 
-- (((\rf|value1[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~34_combout\,
	datab => \im|stage_dec|s2|y[2]~0_combout\,
	datac => \rf|value1[2]~7_combout\,
	datad => \instr_mux|f[22]~38_combout\,
	combout => \rf|value1[2]~8_combout\);

-- Location: LCCOMB_X110_Y40_N20
\rf|value1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~2_combout\ = (\im|output[22]~2_combout\ & ((\im|stage_dec|s2|y[2]~0_combout\) # ((\instr_mux|f[22]~25_combout\)))) # (!\im|output[22]~2_combout\ & (!\im|stage_dec|s2|y[2]~0_combout\ & (\instr_mux|f[22]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[22]~2_combout\,
	datab => \im|stage_dec|s2|y[2]~0_combout\,
	datac => \instr_mux|f[22]~27_combout\,
	datad => \instr_mux|f[22]~25_combout\,
	combout => \rf|value1[2]~2_combout\);

-- Location: LCCOMB_X110_Y40_N26
\rf|value1[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~3_combout\ = (\im|stage_dec|s2|y[2]~0_combout\ & ((\rf|value1[2]~2_combout\ & ((\instr_mux|f[22]~28_combout\))) # (!\rf|value1[2]~2_combout\ & (\instr_mux|f[22]~24_combout\)))) # (!\im|stage_dec|s2|y[2]~0_combout\ & 
-- (((\rf|value1[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|stage_dec|s2|y[2]~0_combout\,
	datab => \instr_mux|f[22]~24_combout\,
	datac => \instr_mux|f[22]~28_combout\,
	datad => \rf|value1[2]~2_combout\,
	combout => \rf|value1[2]~3_combout\);

-- Location: LCCOMB_X110_Y40_N10
\rf|value1[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~4_combout\ = (\im|output[22]~2_combout\ & (\im|stage_dec|s2|y[2]~0_combout\)) # (!\im|output[22]~2_combout\ & ((\im|stage_dec|s2|y[2]~0_combout\ & ((\instr_mux|f[22]~31_combout\))) # (!\im|stage_dec|s2|y[2]~0_combout\ & 
-- (\instr_mux|f[22]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[22]~2_combout\,
	datab => \im|stage_dec|s2|y[2]~0_combout\,
	datac => \instr_mux|f[22]~32_combout\,
	datad => \instr_mux|f[22]~31_combout\,
	combout => \rf|value1[2]~4_combout\);

-- Location: LCCOMB_X110_Y40_N0
\rf|value1[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~5_combout\ = (\im|output[22]~2_combout\ & ((\rf|value1[2]~4_combout\ & ((\instr_mux|f[22]~33_combout\))) # (!\rf|value1[2]~4_combout\ & (\instr_mux|f[22]~29_combout\)))) # (!\im|output[22]~2_combout\ & (((\rf|value1[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_mux|f[22]~29_combout\,
	datab => \im|output[22]~2_combout\,
	datac => \instr_mux|f[22]~33_combout\,
	datad => \rf|value1[2]~4_combout\,
	combout => \rf|value1[2]~5_combout\);

-- Location: LCCOMB_X110_Y40_N14
\rf|value1[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~6_combout\ = (\ID_EX_ReadPort1_reg|Q\(0) & ((\ID_EX_ReadPort1_reg|Q\(1)) # ((\rf|value1[2]~3_combout\)))) # (!\ID_EX_ReadPort1_reg|Q\(0) & (!\ID_EX_ReadPort1_reg|Q\(1) & ((\rf|value1[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(0),
	datab => \ID_EX_ReadPort1_reg|Q\(1),
	datac => \rf|value1[2]~3_combout\,
	datad => \rf|value1[2]~5_combout\,
	combout => \rf|value1[2]~6_combout\);

-- Location: LCCOMB_X111_Y40_N24
\rf|value1[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~9_combout\ = (\ID_EX_ReadPort1_reg|Q\(1) & ((\rf|value1[2]~6_combout\ & ((\rf|value1[2]~8_combout\))) # (!\rf|value1[2]~6_combout\ & (\rf|value1[2]~1_combout\)))) # (!\ID_EX_ReadPort1_reg|Q\(1) & (((\rf|value1[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_ReadPort1_reg|Q\(1),
	datab => \rf|value1[2]~1_combout\,
	datac => \rf|value1[2]~8_combout\,
	datad => \rf|value1[2]~6_combout\,
	combout => \rf|value1[2]~9_combout\);

-- Location: FF_X111_Y40_N25
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

-- Location: LCCOMB_X107_Y38_N16
\ALUFwd_mux1|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFwd_mux1|stage3|f~1_combout\ = (\fwdunit|forwardA\(0) & (((\EX_MEM_ALUOut_reg|Q\(2))))) # (!\fwdunit|forwardA\(0) & (!\fwdunit|forwardA~1_combout\ & (\ID_EX_src1_reg|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fwdunit|forwardA~1_combout\,
	datab => \ID_EX_src1_reg|Q\(2),
	datac => \EX_MEM_ALUOut_reg|Q\(2),
	datad => \fwdunit|forwardA\(0),
	combout => \ALUFwd_mux1|stage3|f~1_combout\);

-- Location: LCCOMB_X108_Y38_N8
\alu_ins|add_ins|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage3|Cout~0_combout\ = (\ALUFwd_mux2|stage3|f[2]~3_combout\ & ((\ALUFwd_mux1|stage3|f~1_combout\) # ((\ALUFwd_mux1|stage3|f~0_combout\) # (\alu_ins|add_ins|stage2|Cout~0_combout\)))) # (!\ALUFwd_mux2|stage3|f[2]~3_combout\ & 
-- (\alu_ins|add_ins|stage2|Cout~0_combout\ & ((\ALUFwd_mux1|stage3|f~1_combout\) # (\ALUFwd_mux1|stage3|f~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFwd_mux1|stage3|f~1_combout\,
	datab => \ALUFwd_mux1|stage3|f~0_combout\,
	datac => \ALUFwd_mux2|stage3|f[2]~3_combout\,
	datad => \alu_ins|add_ins|stage2|Cout~0_combout\,
	combout => \alu_ins|add_ins|stage3|Cout~0_combout\);

-- Location: LCCOMB_X109_Y38_N18
\alu_ins|add_ins|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage4|s~combout\ = \ALUFwd_mux2|stage3|f[3]~9_combout\ $ (\alu_ins|add_ins|stage3|Cout~0_combout\ $ (((\ALUFwd_mux1|stage3|f[3]~6_combout\) # (\ALUFwd_mux1|stage3|f[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFwd_mux1|stage3|f[3]~6_combout\,
	datab => \ALUFwd_mux1|stage3|f[3]~5_combout\,
	datac => \ALUFwd_mux2|stage3|f[3]~9_combout\,
	datad => \alu_ins|add_ins|stage3|Cout~0_combout\,
	combout => \alu_ins|add_ins|stage4|s~combout\);

-- Location: LCCOMB_X109_Y38_N14
\alu_ins|mux4to1_ins|stage1|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage1|f[0]~0_combout\ = (\ID_EX_ALUOP_reg|Q\(0) & (\ALUFwd_mux1|stage3|f[0]~7_combout\ $ ((\ALUFwd_mux2|stage3|f[0]~7_combout\)))) # (!\ID_EX_ALUOP_reg|Q\(0) & (((\alu_ins|add_ins|stage4|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFwd_mux1|stage3|f[0]~7_combout\,
	datab => \ALUFwd_mux2|stage3|f[0]~7_combout\,
	datac => \ID_EX_ALUOP_reg|Q\(0),
	datad => \alu_ins|add_ins|stage4|s~combout\,
	combout => \alu_ins|mux4to1_ins|stage1|f[0]~0_combout\);

-- Location: FF_X109_Y38_N15
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

-- Location: FF_X109_Y38_N29
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

ww_current_pc(0) <= \current_pc[0]~output_o\;

ww_current_pc(1) <= \current_pc[1]~output_o\;

ww_current_pc(2) <= \current_pc[2]~output_o\;

ww_current_pc(3) <= \current_pc[3]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;
END structure;


