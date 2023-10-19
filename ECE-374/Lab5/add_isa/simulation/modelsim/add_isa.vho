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

-- DATE "10/17/2023 16:55:24"

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

ENTITY 	add_isa IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	current_pc : OUT std_logic_vector(3 DOWNTO 0);
	result : OUT std_logic_vector(3 DOWNTO 0)
	);
END add_isa;

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


ARCHITECTURE structure OF add_isa IS
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
SIGNAL \dm_mux|f[1]~57_combout\ : std_logic;
SIGNAL \addpc|stage3|s~combout\ : std_logic;
SIGNAL \addpc|stage4|s~combout\ : std_logic;
SIGNAL \rf|r1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~3_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~13_combout\ : std_logic;
SIGNAL \rf|value2[0]~4_combout\ : std_logic;
SIGNAL \rf|value1[0]~6_combout\ : std_logic;
SIGNAL \rf|value1[1]~0_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[0]~3_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[0]~7_combout\ : std_logic;
SIGNAL \rf|value1[0]~5_combout\ : std_logic;
SIGNAL \rf|value1[0]~7_combout\ : std_logic;
SIGNAL \im|output[30]~1_combout\ : std_logic;
SIGNAL \im|output[3]~0_combout\ : std_logic;
SIGNAL \id|alu_temp~11_combout\ : std_logic;
SIGNAL \im|output[31]~2_combout\ : std_logic;
SIGNAL \id|alu_temp[0]~10_combout\ : std_logic;
SIGNAL \im|output[0]~3_combout\ : std_logic;
SIGNAL \id|ALUSrc~0_combout\ : std_logic;
SIGNAL \rf|value2[0]~0_combout\ : std_logic;
SIGNAL \rf|value2[0]~6_combout\ : std_logic;
SIGNAL \rf|value2[0]~7_combout\ : std_logic;
SIGNAL \reg_mux|f[0]~2_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage1|f~3_combout\ : std_logic;
SIGNAL \im|output[29]~4_combout\ : std_logic;
SIGNAL \id|Equal2~0_combout\ : std_logic;
SIGNAL \dm|m0|stage3|f~5_combout\ : std_logic;
SIGNAL \dm|r10|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|m10|stage3|f[0]~3_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage1|Cout~0_combout\ : std_logic;
SIGNAL \rf|value1[2]~2_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage1|f~2_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~58_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage1|s~0_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage1|Cout~1_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage1|f~1_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~8_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~14_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f~6_combout\ : std_logic;
SIGNAL \rf|r3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f[0]~3_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f[0]~9_combout\ : std_logic;
SIGNAL \rf|value1[2]~4_combout\ : std_logic;
SIGNAL \rf|value2[1]~9_combout\ : std_logic;
SIGNAL \rf|value2[1]~10_combout\ : std_logic;
SIGNAL \dm|m0|stage3|f~3_combout\ : std_logic;
SIGNAL \dm|r13|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|m1|stage3|f~2_combout\ : std_logic;
SIGNAL \dm|m13|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|m15|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|m1|stage3|f~5_combout\ : std_logic;
SIGNAL \dm|m15|stage3|f~1_combout\ : std_logic;
SIGNAL \dm|m14|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|m0|stage3|f~1_combout\ : std_logic;
SIGNAL \dm|m12|stage3|f~0_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~34_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~35_combout\ : std_logic;
SIGNAL \dm|r10|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|m11|stage3|f~2_combout\ : std_logic;
SIGNAL \dm|r9|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|m9|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \dm|m8|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~27_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~28_combout\ : std_logic;
SIGNAL \dm|m1|stage3|f[1]~4_combout\ : std_logic;
SIGNAL \dm|m1|stage3|f~3_combout\ : std_logic;
SIGNAL \dm|r3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|m3|stage3|f~11_combout\ : std_logic;
SIGNAL \dm|m3|stage3|f~8_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~17_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~9_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~19_combout\ : std_logic;
SIGNAL \dm|m0|stage3|f~2_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~18_combout\ : std_logic;
SIGNAL \dm|m2|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \dm|r7|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|m7|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|m7|stage3|f~1_combout\ : std_logic;
SIGNAL \dm|r5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|m5|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|r6|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|m6|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|m4|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~29_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~30_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~31_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~32_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~33_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~36_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[1]~12_combout\ : std_logic;
SIGNAL \rf|value2[1]~8_combout\ : std_logic;
SIGNAL \rf|value1[1]~8_combout\ : std_logic;
SIGNAL \rf|value1[1]~9_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage1|Cout~2_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage2|s~combout\ : std_logic;
SIGNAL \dm_mux|f[1]~10_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~11_combout\ : std_logic;
SIGNAL \rf|value2[2]~2_combout\ : std_logic;
SIGNAL \rf|value2[2]~1_combout\ : std_logic;
SIGNAL \rf|value2[2]~3_combout\ : std_logic;
SIGNAL \dm|m3|stage3|f~9_combout\ : std_logic;
SIGNAL \dm|r15|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|r14|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|r13|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|r12|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm_mux|f[2]~44_combout\ : std_logic;
SIGNAL \dm_mux|f[2]~45_combout\ : std_logic;
SIGNAL \dm|m0|stage3|f[2]~4_combout\ : std_logic;
SIGNAL \dm|r9|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|r11|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm_mux|f[2]~37_combout\ : std_logic;
SIGNAL \dm_mux|f[2]~38_combout\ : std_logic;
SIGNAL \dm|r0|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|r7|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|r6|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|r5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm_mux|f[2]~39_combout\ : std_logic;
SIGNAL \dm_mux|f[2]~40_combout\ : std_logic;
SIGNAL \dm|r3|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm_mux|f[2]~41_combout\ : std_logic;
SIGNAL \dm_mux|f[2]~42_combout\ : std_logic;
SIGNAL \dm_mux|f[2]~43_combout\ : std_logic;
SIGNAL \dm_mux|f[2]~46_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~10_combout\ : std_logic;
SIGNAL \rf|value1[2]~10_combout\ : std_logic;
SIGNAL \rf|value1[2]~11_combout\ : std_logic;
SIGNAL \rf|value1[2]~12_combout\ : std_logic;
SIGNAL \reg_mux|f[2]~3_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage2|Cout~0_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage3|s~0_combout\ : std_logic;
SIGNAL \dm|m11|stage3|f~3_combout\ : std_logic;
SIGNAL \dm|m10|stage3|f[0]~2_combout\ : std_logic;
SIGNAL \dm|r11|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|m3|stage3|f[3]~10_combout\ : std_logic;
SIGNAL \dm|r9|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm_mux|f[3]~47_combout\ : std_logic;
SIGNAL \dm_mux|f[3]~48_combout\ : std_logic;
SIGNAL \dm|r14|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm_mux|f[3]~54_combout\ : std_logic;
SIGNAL \dm|r13|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|r15|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm_mux|f[3]~55_combout\ : std_logic;
SIGNAL \dm|r5|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|r7|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|r6|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm_mux|f[3]~49_combout\ : std_logic;
SIGNAL \dm_mux|f[3]~50_combout\ : std_logic;
SIGNAL \dm_mux|f[3]~51_combout\ : std_logic;
SIGNAL \dm_mux|f[3]~52_combout\ : std_logic;
SIGNAL \dm_mux|f[3]~53_combout\ : std_logic;
SIGNAL \dm_mux|f[3]~56_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~9_combout\ : std_logic;
SIGNAL \rf|r1|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[3]~11_combout\ : std_logic;
SIGNAL \rf|value2[3]~12_combout\ : std_logic;
SIGNAL \rf|value2[3]~13_combout\ : std_logic;
SIGNAL \rf|value1[3]~1_combout\ : std_logic;
SIGNAL \rf|value1[3]~3_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage3|Cout~0_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage4|s~0_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage4|s~combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage1|f[0]~0_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~11_combout\ : std_logic;
SIGNAL \rf|r3|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[0]~5_combout\ : std_logic;
SIGNAL \dm|m0|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|r13|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|r15|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|r14|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm_mux|f[0]~23_combout\ : std_logic;
SIGNAL \dm_mux|f[0]~24_combout\ : std_logic;
SIGNAL \dm|r11|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|m2|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \dm|r9|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|r10|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm_mux|f[0]~12_combout\ : std_logic;
SIGNAL \dm_mux|f[0]~13_combout\ : std_logic;
SIGNAL \dm|r5|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|r6|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm_mux|f[0]~15_combout\ : std_logic;
SIGNAL \dm_mux|f[0]~16_combout\ : std_logic;
SIGNAL \dm_mux|f[0]~20_combout\ : std_logic;
SIGNAL \dm_mux|f[0]~21_combout\ : std_logic;
SIGNAL \dm_mux|f[0]~22_combout\ : std_logic;
SIGNAL \dm_mux|f[0]~25_combout\ : std_logic;
SIGNAL \dm_mux|f[0]~26_combout\ : std_logic;
SIGNAL \dm_mux|f[1]~59_combout\ : std_logic;
SIGNAL \dm_mux|f[2]~60_combout\ : std_logic;
SIGNAL \dm_mux|f[3]~61_combout\ : std_logic;
SIGNAL \rf|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r10|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu_ins|add_ins|z\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r9|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r8|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r11|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r5|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r6|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r7|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r13|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r0|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r14|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r12|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r15|Q\ : std_logic_vector(3 DOWNTO 0);

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
	i => \dm_mux|f[0]~26_combout\,
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
	i => \dm_mux|f[1]~59_combout\,
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
	i => \dm_mux|f[2]~60_combout\,
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
	i => \dm_mux|f[3]~61_combout\,
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

-- Location: LCCOMB_X111_Y39_N12
\pc_mux|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~0_combout\ = (!\reset~input_o\ & !\pc|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \pc|Q\(0),
	combout => \pc_mux|f~0_combout\);

-- Location: FF_X111_Y39_N13
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

-- Location: LCCOMB_X112_Y39_N20
\dm_mux|f[1]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~57_combout\ = \pc|Q\(1) $ (\pc|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \dm_mux|f[1]~57_combout\);

-- Location: FF_X112_Y39_N21
\pc|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm_mux|f[1]~57_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(1));

-- Location: LCCOMB_X112_Y39_N18
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

-- Location: FF_X112_Y39_N19
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

-- Location: LCCOMB_X112_Y39_N28
\addpc|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage4|s~combout\ = \pc|Q\(3) $ (((\pc|Q\(2) & (\pc|Q\(1) & \pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(1),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \addpc|stage4|s~combout\);

-- Location: FF_X112_Y39_N29
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

-- Location: LCCOMB_X112_Y39_N4
\rf|r1|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[0]~feeder_combout\ = \rf|m1|stage3|f[0]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f[0]~11_combout\,
	combout => \rf|r1|Q[0]~feeder_combout\);

-- Location: LCCOMB_X112_Y38_N6
\rf|m1|stage3|f[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~3_combout\ = (\pc|Q\(2) & !\pc|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \rf|m1|stage3|f[0]~3_combout\);

-- Location: LCCOMB_X112_Y38_N0
\rf|m1|stage3|f[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~13_combout\ = (\reset~input_o\) # ((\rf|m1|stage3|f[0]~3_combout\ & (!\pc|Q\(1) & \pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|m1|stage3|f[0]~3_combout\,
	datab => \reset~input_o\,
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \rf|m1|stage3|f[0]~13_combout\);

-- Location: FF_X112_Y39_N5
\rf|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[0]~feeder_combout\,
	ena => \rf|m1|stage3|f[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(0));

-- Location: LCCOMB_X112_Y39_N22
\rf|value2[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~4_combout\ = (\rf|r1|Q\(0) & !\pc|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|r1|Q\(0),
	datad => \pc|Q\(3),
	combout => \rf|value2[0]~4_combout\);

-- Location: LCCOMB_X111_Y39_N0
\rf|value1[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~6_combout\ = (!\pc|Q\(3) & ((\pc|Q\(0) & ((\pc|Q\(1)) # (\pc|Q\(2)))) # (!\pc|Q\(0) & (\pc|Q\(1) $ (!\pc|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(3),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \rf|value1[0]~6_combout\);

-- Location: LCCOMB_X111_Y39_N14
\rf|value1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~0_combout\ = \pc|Q\(1) $ (((\pc|Q\(0)) # (\pc|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \rf|value1[1]~0_combout\);

-- Location: LCCOMB_X112_Y38_N24
\rf|m2|stage3|f[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[0]~3_combout\ = (\pc|Q\(2) & (\pc|Q\(1) & !\pc|Q\(0))) # (!\pc|Q\(2) & ((\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \rf|m2|stage3|f[0]~3_combout\);

-- Location: LCCOMB_X112_Y38_N4
\rf|m2|stage3|f[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[0]~7_combout\ = (\reset~input_o\) # ((\rf|m2|stage3|f[0]~3_combout\ & !\pc|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|m2|stage3|f[0]~3_combout\,
	datab => \pc|Q\(3),
	datad => \reset~input_o\,
	combout => \rf|m2|stage3|f[0]~7_combout\);

-- Location: FF_X111_Y39_N25
\rf|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m1|stage3|f[0]~11_combout\,
	ena => \rf|m2|stage3|f[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(0));

-- Location: LCCOMB_X111_Y39_N6
\rf|value1[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~5_combout\ = (\pc|Q\(0) & (\rf|r2|Q\(0) & ((!\pc|Q\(2))))) # (!\pc|Q\(0) & (((\rf|r3|Q\(0) & \pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \rf|r2|Q\(0),
	datac => \rf|r3|Q\(0),
	datad => \pc|Q\(2),
	combout => \rf|value1[0]~5_combout\);

-- Location: LCCOMB_X111_Y39_N26
\rf|value1[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~7_combout\ = (\rf|value2[0]~4_combout\ & ((\rf|value1[1]~0_combout\) # ((\rf|value1[0]~6_combout\ & \rf|value1[0]~5_combout\)))) # (!\rf|value2[0]~4_combout\ & (\rf|value1[0]~6_combout\ & ((\rf|value1[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[0]~4_combout\,
	datab => \rf|value1[0]~6_combout\,
	datac => \rf|value1[1]~0_combout\,
	datad => \rf|value1[0]~5_combout\,
	combout => \rf|value1[0]~7_combout\);

-- Location: LCCOMB_X112_Y39_N0
\im|output[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[30]~1_combout\ = (!\pc|Q\(3) & ((\pc|Q\(1) & ((!\pc|Q\(0)) # (!\pc|Q\(2)))) # (!\pc|Q\(1) & ((\pc|Q\(2)) # (\pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \im|output[30]~1_combout\);

-- Location: LCCOMB_X112_Y39_N6
\im|output[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[3]~0_combout\ = (!\pc|Q\(3) & ((\pc|Q\(1) & ((!\pc|Q\(0)))) # (!\pc|Q\(1) & ((\pc|Q\(2)) # (\pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \im|output[3]~0_combout\);

-- Location: LCCOMB_X112_Y40_N2
\id|alu_temp~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|alu_temp~11_combout\ = (!\pc|Q\(3) & (\pc|Q\(1) & (\pc|Q\(2) $ (\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(2),
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \id|alu_temp~11_combout\);

-- Location: LCCOMB_X112_Y39_N2
\im|output[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[31]~2_combout\ = (\pc|Q\(1) & (!\pc|Q\(3) & (\pc|Q\(2) $ (\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \im|output[31]~2_combout\);

-- Location: LCCOMB_X111_Y41_N30
\id|alu_temp[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|alu_temp[0]~10_combout\ = (\im|output[30]~1_combout\ & (((\im|output[3]~0_combout\ & \id|alu_temp~11_combout\)) # (!\im|output[31]~2_combout\))) # (!\im|output[30]~1_combout\ & (\im|output[3]~0_combout\ & (\id|alu_temp~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[30]~1_combout\,
	datab => \im|output[3]~0_combout\,
	datac => \id|alu_temp~11_combout\,
	datad => \im|output[31]~2_combout\,
	combout => \id|alu_temp[0]~10_combout\);

-- Location: LCCOMB_X111_Y40_N22
\im|output[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[0]~3_combout\ = (!\pc|Q\(3) & ((\pc|Q\(0) & ((!\pc|Q\(1)) # (!\pc|Q\(2)))) # (!\pc|Q\(0) & (\pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(2),
	datac => \pc|Q\(1),
	datad => \pc|Q\(3),
	combout => \im|output[0]~3_combout\);

-- Location: LCCOMB_X111_Y40_N4
\id|ALUSrc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|ALUSrc~0_combout\ = (\im|output[30]~1_combout\ & !\im|output[31]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \im|output[30]~1_combout\,
	datad => \im|output[31]~2_combout\,
	combout => \id|ALUSrc~0_combout\);

-- Location: LCCOMB_X111_Y39_N30
\rf|value2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~0_combout\ = (\pc|Q\(2) & (\pc|Q\(0) $ (\pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \rf|value2[0]~0_combout\);

-- Location: LCCOMB_X111_Y39_N8
\rf|value2[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~6_combout\ = (!\pc|Q\(3) & (!\pc|Q\(1) & (\pc|Q\(0) $ (\pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(3),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \rf|value2[0]~6_combout\);

-- Location: LCCOMB_X111_Y39_N18
\rf|value2[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~7_combout\ = (\rf|value2[0]~0_combout\ & ((\rf|value2[0]~4_combout\) # ((\rf|r2|Q\(0) & \rf|value2[0]~6_combout\)))) # (!\rf|value2[0]~0_combout\ & (\rf|r2|Q\(0) & (\rf|value2[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[0]~0_combout\,
	datab => \rf|r2|Q\(0),
	datac => \rf|value2[0]~6_combout\,
	datad => \rf|value2[0]~4_combout\,
	combout => \rf|value2[0]~7_combout\);

-- Location: LCCOMB_X111_Y40_N24
\reg_mux|f[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_mux|f[0]~2_combout\ = (\id|ALUSrc~0_combout\ & (((!\im|output[0]~3_combout\)))) # (!\id|ALUSrc~0_combout\ & ((\rf|value2[0]~5_combout\) # ((\rf|value2[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[0]~5_combout\,
	datab => \im|output[0]~3_combout\,
	datac => \id|ALUSrc~0_combout\,
	datad => \rf|value2[0]~7_combout\,
	combout => \reg_mux|f[0]~2_combout\);

-- Location: LCCOMB_X111_Y38_N26
\alu_ins|mux4to1_ins|stage1|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage1|f~3_combout\ = (\alu_ins|add_ins|stage4|s~combout\ & \id|alu_temp[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_ins|add_ins|stage4|s~combout\,
	datad => \id|alu_temp[0]~10_combout\,
	combout => \alu_ins|mux4to1_ins|stage1|f~3_combout\);

-- Location: LCCOMB_X112_Y39_N24
\im|output[29]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[29]~4_combout\ = (!\pc|Q\(3) & ((\pc|Q\(0) & ((!\pc|Q\(1)) # (!\pc|Q\(2)))) # (!\pc|Q\(0) & ((\pc|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \im|output[29]~4_combout\);

-- Location: LCCOMB_X112_Y39_N30
\id|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal2~0_combout\ = (\im|output[29]~4_combout\ & (!\im|output[31]~2_combout\ & \im|output[30]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \im|output[29]~4_combout\,
	datac => \im|output[31]~2_combout\,
	datad => \im|output[30]~1_combout\,
	combout => \id|Equal2~0_combout\);

-- Location: LCCOMB_X113_Y40_N10
\dm|m0|stage3|f~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m0|stage3|f~5_combout\ = (!\reset~input_o\ & \rf|value2[3]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \rf|value2[3]~13_combout\,
	combout => \dm|m0|stage3|f~5_combout\);

-- Location: LCCOMB_X109_Y40_N28
\dm|r10|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r10|Q[3]~feeder_combout\ = \dm|m0|stage3|f~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~5_combout\,
	combout => \dm|r10|Q[3]~feeder_combout\);

-- Location: LCCOMB_X110_Y40_N28
\dm|m10|stage3|f[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m10|stage3|f[0]~3_combout\ = (!\im|output[29]~4_combout\ & (!\im|output[31]~2_combout\ & (!\alu_ins|mux4to1_ins|stage1|f[0]~0_combout\ & \im|output[30]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[29]~4_combout\,
	datab => \im|output[31]~2_combout\,
	datac => \alu_ins|mux4to1_ins|stage1|f[0]~0_combout\,
	datad => \im|output[30]~1_combout\,
	combout => \dm|m10|stage3|f[0]~3_combout\);

-- Location: LCCOMB_X112_Y40_N30
\alu_ins|add_ins|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage1|Cout~0_combout\ = (\id|alu_temp~11_combout\ & !\im|output[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id|alu_temp~11_combout\,
	datad => \im|output[3]~0_combout\,
	combout => \alu_ins|add_ins|stage1|Cout~0_combout\);

-- Location: LCCOMB_X112_Y38_N2
\rf|value1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~2_combout\ = (\pc|Q\(1) & (!\pc|Q\(2) & !\pc|Q\(0))) # (!\pc|Q\(1) & (\pc|Q\(2) $ (\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \rf|value1[2]~2_combout\);

-- Location: LCCOMB_X111_Y41_N24
\alu_ins|mux4to1_ins|stage1|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage1|f~2_combout\ = (\id|alu_temp[0]~10_combout\ & \alu_ins|add_ins|stage3|s~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \id|alu_temp[0]~10_combout\,
	datad => \alu_ins|add_ins|stage3|s~0_combout\,
	combout => \alu_ins|mux4to1_ins|stage1|f~2_combout\);

-- Location: LCCOMB_X112_Y38_N30
\dm_mux|f[1]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~58_combout\ = (\pc|Q\(3)) # ((\pc|Q\(1) & ((\pc|Q\(0)))) # (!\pc|Q\(1) & (!\pc|Q\(2) & !\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(1),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \dm_mux|f[1]~58_combout\);

-- Location: LCCOMB_X112_Y40_N20
\alu_ins|add_ins|stage1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage1|s~0_combout\ = \rf|value1[0]~7_combout\ $ (\reg_mux|f[0]~2_combout\ $ (((!\im|output[3]~0_combout\ & \id|alu_temp~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[3]~0_combout\,
	datab => \id|alu_temp~11_combout\,
	datac => \rf|value1[0]~7_combout\,
	datad => \reg_mux|f[0]~2_combout\,
	combout => \alu_ins|add_ins|stage1|s~0_combout\);

-- Location: LCCOMB_X111_Y40_N26
\alu_ins|add_ins|stage1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage1|Cout~1_combout\ = (\rf|value1[0]~7_combout\ & ((\reg_mux|f[0]~2_combout\) # ((\id|alu_temp~11_combout\ & !\im|output[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|alu_temp~11_combout\,
	datab => \im|output[3]~0_combout\,
	datac => \rf|value1[0]~7_combout\,
	datad => \reg_mux|f[0]~2_combout\,
	combout => \alu_ins|add_ins|stage1|Cout~1_combout\);

-- Location: LCCOMB_X110_Y39_N0
\alu_ins|mux4to1_ins|stage1|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage1|f~1_combout\ = (\alu_ins|add_ins|stage2|s~combout\ & \id|alu_temp[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage2|s~combout\,
	datac => \id|alu_temp[0]~10_combout\,
	combout => \alu_ins|mux4to1_ins|stage1|f~1_combout\);

-- Location: LCCOMB_X111_Y39_N2
\dm_mux|f[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~8_combout\ = (\pc|Q\(0) & ((\pc|Q\(1)))) # (!\pc|Q\(0) & (!\pc|Q\(2) & !\pc|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \dm_mux|f[1]~8_combout\);

-- Location: LCCOMB_X110_Y38_N0
\dm_mux|f[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~14_combout\ = (!\dm_mux|f[1]~8_combout\ & (!\pc|Q\(3) & \alu_ins|add_ins|stage4|s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm_mux|f[1]~8_combout\,
	datac => \pc|Q\(3),
	datad => \alu_ins|add_ins|stage4|s~combout\,
	combout => \dm_mux|f[1]~14_combout\);

-- Location: LCCOMB_X110_Y39_N6
\rf|m2|stage3|f~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f~6_combout\ = (!\reset~input_o\ & ((\id|Equal2~0_combout\ & ((\dm_mux|f[1]~36_combout\))) # (!\id|Equal2~0_combout\ & (\alu_ins|mux4to1_ins|stage1|f~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal2~0_combout\,
	datab => \alu_ins|mux4to1_ins|stage1|f~1_combout\,
	datac => \reset~input_o\,
	datad => \dm_mux|f[1]~36_combout\,
	combout => \rf|m2|stage3|f~6_combout\);

-- Location: LCCOMB_X110_Y39_N16
\rf|r3|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[1]~feeder_combout\ = \rf|m2|stage3|f~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m2|stage3|f~6_combout\,
	combout => \rf|r3|Q[1]~feeder_combout\);

-- Location: LCCOMB_X112_Y38_N14
\rf|m3|stage3|f[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f[0]~3_combout\ = (!\pc|Q\(2) & !\pc|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \rf|m3|stage3|f[0]~3_combout\);

-- Location: LCCOMB_X112_Y38_N26
\rf|m3|stage3|f[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f[0]~9_combout\ = (\reset~input_o\) # ((\rf|m3|stage3|f[0]~3_combout\ & (!\pc|Q\(0) & \pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|m3|stage3|f[0]~3_combout\,
	datab => \pc|Q\(0),
	datac => \pc|Q\(1),
	datad => \reset~input_o\,
	combout => \rf|m3|stage3|f[0]~9_combout\);

-- Location: FF_X110_Y39_N17
\rf|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r3|Q[1]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(1));

-- Location: LCCOMB_X111_Y39_N16
\rf|value1[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~4_combout\ = (\pc|Q\(1) & !\pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \rf|value1[2]~4_combout\);

-- Location: FF_X111_Y39_N3
\rf|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m2|stage3|f~6_combout\,
	sload => VCC,
	ena => \rf|m2|stage3|f[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(1));

-- Location: LCCOMB_X111_Y39_N20
\rf|value2[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~9_combout\ = (\rf|r2|Q\(1) & ((\rf|value2[0]~6_combout\) # ((\rf|value2[0]~0_combout\ & \rf|value2[1]~8_combout\)))) # (!\rf|r2|Q\(1) & (((\rf|value2[0]~0_combout\ & \rf|value2[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(1),
	datab => \rf|value2[0]~6_combout\,
	datac => \rf|value2[0]~0_combout\,
	datad => \rf|value2[1]~8_combout\,
	combout => \rf|value2[1]~9_combout\);

-- Location: LCCOMB_X111_Y39_N22
\rf|value2[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~10_combout\ = (\rf|value2[1]~9_combout\) # ((\rf|r3|Q\(1) & (\rf|value1[2]~4_combout\ & !\pc|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(1),
	datab => \rf|value1[2]~4_combout\,
	datac => \pc|Q\(3),
	datad => \rf|value2[1]~9_combout\,
	combout => \rf|value2[1]~10_combout\);

-- Location: LCCOMB_X111_Y38_N20
\dm|m0|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m0|stage3|f~3_combout\ = (!\reset~input_o\ & \rf|value2[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \rf|value2[1]~10_combout\,
	combout => \dm|m0|stage3|f~3_combout\);

-- Location: LCCOMB_X114_Y39_N28
\dm|r13|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r13|Q[1]~feeder_combout\ = \dm|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m0|stage3|f~3_combout\,
	combout => \dm|r13|Q[1]~feeder_combout\);

-- Location: LCCOMB_X110_Y39_N28
\dm|m1|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m1|stage3|f~2_combout\ = (!\im|output[29]~4_combout\ & (\id|ALUSrc~0_combout\ & (\alu_ins|mux4to1_ins|stage1|f[0]~0_combout\ & !\alu_ins|mux4to1_ins|stage1|f~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[29]~4_combout\,
	datab => \id|ALUSrc~0_combout\,
	datac => \alu_ins|mux4to1_ins|stage1|f[0]~0_combout\,
	datad => \alu_ins|mux4to1_ins|stage1|f~1_combout\,
	combout => \dm|m1|stage3|f~2_combout\);

-- Location: LCCOMB_X114_Y39_N12
\dm|m13|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m13|stage3|f~0_combout\ = (\reset~input_o\) # ((\alu_ins|add_ins|stage3|s~0_combout\ & (\alu_ins|add_ins|stage4|s~combout\ & \dm|m1|stage3|f~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage3|s~0_combout\,
	datab => \reset~input_o\,
	datac => \alu_ins|add_ins|stage4|s~combout\,
	datad => \dm|m1|stage3|f~2_combout\,
	combout => \dm|m13|stage3|f~0_combout\);

-- Location: FF_X114_Y39_N29
\dm|r13|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r13|Q[1]~feeder_combout\,
	ena => \dm|m13|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r13|Q\(1));

-- Location: LCCOMB_X114_Y40_N30
\dm|m15|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m15|stage3|f~0_combout\ = (\alu_ins|add_ins|stage3|s~0_combout\ & (\alu_ins|add_ins|stage4|s~combout\ & \alu_ins|add_ins|stage2|s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage3|s~0_combout\,
	datab => \alu_ins|add_ins|stage4|s~combout\,
	datac => \alu_ins|add_ins|stage2|s~combout\,
	combout => \dm|m15|stage3|f~0_combout\);

-- Location: LCCOMB_X113_Y40_N18
\dm|m1|stage3|f~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m1|stage3|f~5_combout\ = (!\im|output[29]~4_combout\ & (!\im|output[31]~2_combout\ & (\im|output[30]~1_combout\ & \alu_ins|mux4to1_ins|stage1|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[29]~4_combout\,
	datab => \im|output[31]~2_combout\,
	datac => \im|output[30]~1_combout\,
	datad => \alu_ins|mux4to1_ins|stage1|f[0]~0_combout\,
	combout => \dm|m1|stage3|f~5_combout\);

-- Location: LCCOMB_X114_Y39_N14
\dm|m15|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m15|stage3|f~1_combout\ = (\reset~input_o\) # ((\dm|m15|stage3|f~0_combout\ & \dm|m1|stage3|f~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|m15|stage3|f~0_combout\,
	datab => \reset~input_o\,
	datad => \dm|m1|stage3|f~5_combout\,
	combout => \dm|m15|stage3|f~1_combout\);

-- Location: FF_X114_Y39_N15
\dm|r15|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \dm|m15|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r15|Q\(1));

-- Location: LCCOMB_X114_Y40_N14
\dm|m14|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m14|stage3|f~0_combout\ = (\reset~input_o\) # ((\dm|m15|stage3|f~0_combout\ & \dm|m10|stage3|f[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|m15|stage3|f~0_combout\,
	datab => \reset~input_o\,
	datad => \dm|m10|stage3|f[0]~3_combout\,
	combout => \dm|m14|stage3|f~0_combout\);

-- Location: FF_X114_Y40_N15
\dm|r14|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \dm|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r14|Q\(1));

-- Location: LCCOMB_X110_Y40_N4
\dm|m0|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m0|stage3|f~1_combout\ = (!\im|output[29]~4_combout\ & (\id|ALUSrc~0_combout\ & (!\alu_ins|mux4to1_ins|stage1|f[0]~0_combout\ & !\alu_ins|mux4to1_ins|stage1|f~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[29]~4_combout\,
	datab => \id|ALUSrc~0_combout\,
	datac => \alu_ins|mux4to1_ins|stage1|f[0]~0_combout\,
	datad => \alu_ins|mux4to1_ins|stage1|f~1_combout\,
	combout => \dm|m0|stage3|f~1_combout\);

-- Location: LCCOMB_X111_Y37_N22
\dm|m12|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m12|stage3|f~0_combout\ = (\reset~input_o\) # ((\alu_ins|add_ins|stage4|s~combout\ & (\alu_ins|add_ins|stage3|s~0_combout\ & \dm|m0|stage3|f~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \alu_ins|add_ins|stage4|s~combout\,
	datac => \alu_ins|add_ins|stage3|s~0_combout\,
	datad => \dm|m0|stage3|f~1_combout\,
	combout => \dm|m12|stage3|f~0_combout\);

-- Location: FF_X111_Y37_N29
\dm|r12|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \dm|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r12|Q\(1));

-- Location: LCCOMB_X111_Y37_N28
\dm_mux|f[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~34_combout\ = (\alu_ins|add_ins|stage2|s~combout\ & ((\dm|r14|Q\(1)) # ((\alu_ins|add_ins|stage1|s~0_combout\)))) # (!\alu_ins|add_ins|stage2|s~combout\ & (((\dm|r12|Q\(1) & !\alu_ins|add_ins|stage1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r14|Q\(1),
	datab => \alu_ins|add_ins|stage2|s~combout\,
	datac => \dm|r12|Q\(1),
	datad => \alu_ins|add_ins|stage1|s~0_combout\,
	combout => \dm_mux|f[1]~34_combout\);

-- Location: LCCOMB_X111_Y37_N2
\dm_mux|f[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~35_combout\ = (\alu_ins|add_ins|stage1|s~0_combout\ & ((\dm_mux|f[1]~34_combout\ & ((\dm|r15|Q\(1)))) # (!\dm_mux|f[1]~34_combout\ & (\dm|r13|Q\(1))))) # (!\alu_ins|add_ins|stage1|s~0_combout\ & (((\dm_mux|f[1]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r13|Q\(1),
	datab => \alu_ins|add_ins|stage1|s~0_combout\,
	datac => \dm|r15|Q\(1),
	datad => \dm_mux|f[1]~34_combout\,
	combout => \dm_mux|f[1]~35_combout\);

-- Location: LCCOMB_X109_Y40_N16
\dm|r10|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r10|Q[1]~feeder_combout\ = \dm|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m0|stage3|f~3_combout\,
	combout => \dm|r10|Q[1]~feeder_combout\);

-- Location: FF_X109_Y40_N17
\dm|r10|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r10|Q[1]~feeder_combout\,
	ena => \dm|m10|stage3|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r10|Q\(1));

-- Location: LCCOMB_X114_Y38_N22
\dm|m11|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m11|stage3|f~2_combout\ = (\reset~input_o\) # ((\dm|m11|stage3|f~3_combout\ & \dm|m1|stage3|f~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|m11|stage3|f~3_combout\,
	datab => \reset~input_o\,
	datad => \dm|m1|stage3|f~5_combout\,
	combout => \dm|m11|stage3|f~2_combout\);

-- Location: FF_X114_Y38_N23
\dm|r11|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \dm|m11|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r11|Q\(1));

-- Location: LCCOMB_X114_Y38_N16
\dm|r9|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r9|Q[1]~feeder_combout\ = \dm|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m0|stage3|f~3_combout\,
	combout => \dm|r9|Q[1]~feeder_combout\);

-- Location: LCCOMB_X114_Y38_N8
\dm|m9|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m9|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\alu_ins|mux4to1_ins|stage1|f~3_combout\ & (!\alu_ins|mux4to1_ins|stage1|f~2_combout\ & \dm|m1|stage3|f~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|mux4to1_ins|stage1|f~3_combout\,
	datab => \reset~input_o\,
	datac => \alu_ins|mux4to1_ins|stage1|f~2_combout\,
	datad => \dm|m1|stage3|f~2_combout\,
	combout => \dm|m9|stage3|f[0]~0_combout\);

-- Location: FF_X114_Y38_N17
\dm|r9|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r9|Q[1]~feeder_combout\,
	ena => \dm|m9|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r9|Q\(1));

-- Location: LCCOMB_X111_Y38_N22
\dm|m8|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m8|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\alu_ins|mux4to1_ins|stage1|f~3_combout\ & (\dm|m0|stage3|f~1_combout\ & !\alu_ins|mux4to1_ins|stage1|f~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|mux4to1_ins|stage1|f~3_combout\,
	datab => \reset~input_o\,
	datac => \dm|m0|stage3|f~1_combout\,
	datad => \alu_ins|mux4to1_ins|stage1|f~2_combout\,
	combout => \dm|m8|stage3|f[0]~0_combout\);

-- Location: FF_X111_Y38_N27
\dm|r8|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \dm|m8|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r8|Q\(1));

-- Location: LCCOMB_X110_Y38_N18
\dm_mux|f[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~27_combout\ = (\alu_ins|add_ins|stage2|s~combout\ & (((\alu_ins|add_ins|stage1|s~0_combout\)))) # (!\alu_ins|add_ins|stage2|s~combout\ & ((\alu_ins|add_ins|stage1|s~0_combout\ & (\dm|r9|Q\(1))) # (!\alu_ins|add_ins|stage1|s~0_combout\ & 
-- ((\dm|r8|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r9|Q\(1),
	datab => \dm|r8|Q\(1),
	datac => \alu_ins|add_ins|stage2|s~combout\,
	datad => \alu_ins|add_ins|stage1|s~0_combout\,
	combout => \dm_mux|f[1]~27_combout\);

-- Location: LCCOMB_X110_Y38_N4
\dm_mux|f[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~28_combout\ = (\alu_ins|add_ins|stage2|s~combout\ & ((\dm_mux|f[1]~27_combout\ & ((\dm|r11|Q\(1)))) # (!\dm_mux|f[1]~27_combout\ & (\dm|r10|Q\(1))))) # (!\alu_ins|add_ins|stage2|s~combout\ & (((\dm_mux|f[1]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r10|Q\(1),
	datab => \dm|r11|Q\(1),
	datac => \alu_ins|add_ins|stage2|s~combout\,
	datad => \dm_mux|f[1]~27_combout\,
	combout => \dm_mux|f[1]~28_combout\);

-- Location: LCCOMB_X111_Y38_N4
\dm|m1|stage3|f[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m1|stage3|f[1]~4_combout\ = (\reset~input_o\) # (\rf|value2[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \rf|value2[1]~10_combout\,
	combout => \dm|m1|stage3|f[1]~4_combout\);

-- Location: LCCOMB_X111_Y38_N8
\dm|m1|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m1|stage3|f~3_combout\ = (\reset~input_o\) # ((!\alu_ins|mux4to1_ins|stage1|f~3_combout\ & (!\alu_ins|mux4to1_ins|stage1|f~2_combout\ & \dm|m1|stage3|f~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|mux4to1_ins|stage1|f~3_combout\,
	datab => \reset~input_o\,
	datac => \alu_ins|mux4to1_ins|stage1|f~2_combout\,
	datad => \dm|m1|stage3|f~2_combout\,
	combout => \dm|m1|stage3|f~3_combout\);

-- Location: FF_X111_Y38_N1
\dm|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m1|stage3|f[1]~4_combout\,
	sload => VCC,
	ena => \dm|m1|stage3|f~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r1|Q\(1));

-- Location: LCCOMB_X113_Y40_N24
\dm|r3|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r3|Q[1]~feeder_combout\ = \dm|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m0|stage3|f~3_combout\,
	combout => \dm|r3|Q[1]~feeder_combout\);

-- Location: LCCOMB_X110_Y40_N2
\dm|m3|stage3|f~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m3|stage3|f~11_combout\ = (\id|alu_temp[0]~10_combout\ & (!\alu_ins|add_ins|stage3|s~0_combout\ & (\alu_ins|add_ins|stage2|s~combout\ & !\alu_ins|add_ins|stage4|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|alu_temp[0]~10_combout\,
	datab => \alu_ins|add_ins|stage3|s~0_combout\,
	datac => \alu_ins|add_ins|stage2|s~combout\,
	datad => \alu_ins|add_ins|stage4|s~combout\,
	combout => \dm|m3|stage3|f~11_combout\);

-- Location: LCCOMB_X113_Y40_N12
\dm|m3|stage3|f~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m3|stage3|f~8_combout\ = (\reset~input_o\) # ((\dm|m3|stage3|f~11_combout\ & \dm|m1|stage3|f~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \dm|m3|stage3|f~11_combout\,
	datad => \dm|m1|stage3|f~5_combout\,
	combout => \dm|m3|stage3|f~8_combout\);

-- Location: FF_X113_Y40_N25
\dm|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r3|Q[1]~feeder_combout\,
	ena => \dm|m3|stage3|f~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r3|Q\(1));

-- Location: LCCOMB_X110_Y40_N8
\dm_mux|f[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~17_combout\ = ((\pc|Q\(0) & ((\pc|Q\(1)))) # (!\pc|Q\(0) & (!\pc|Q\(2) & !\pc|Q\(1)))) # (!\alu_ins|add_ins|stage2|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(0),
	datac => \alu_ins|add_ins|stage2|s~combout\,
	datad => \pc|Q\(1),
	combout => \dm_mux|f[1]~17_combout\);

-- Location: LCCOMB_X111_Y40_N16
\dm_mux|f[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~9_combout\ = (\pc|Q\(3)) # ((\dm_mux|f[1]~8_combout\ & ((\alu_ins|add_ins|stage1|s~0_combout\) # (\alu_ins|add_ins|stage3|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm_mux|f[1]~8_combout\,
	datab => \pc|Q\(3),
	datac => \alu_ins|add_ins|stage1|s~0_combout\,
	datad => \alu_ins|add_ins|stage3|s~0_combout\,
	combout => \dm_mux|f[1]~9_combout\);

-- Location: LCCOMB_X110_Y40_N0
\dm_mux|f[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~19_combout\ = (\dm_mux|f[1]~9_combout\) # ((!\alu_ins|add_ins|stage3|s~0_combout\ & ((\alu_ins|add_ins|stage1|s~0_combout\) # (\dm_mux|f[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage1|s~0_combout\,
	datab => \alu_ins|add_ins|stage3|s~0_combout\,
	datac => \dm_mux|f[1]~17_combout\,
	datad => \dm_mux|f[1]~9_combout\,
	combout => \dm_mux|f[1]~19_combout\);

-- Location: LCCOMB_X110_Y40_N12
\dm|m0|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m0|stage3|f~2_combout\ = (\reset~input_o\) # ((!\alu_ins|mux4to1_ins|stage1|f~2_combout\ & (\dm|m0|stage3|f~1_combout\ & !\alu_ins|mux4to1_ins|stage1|f~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|mux4to1_ins|stage1|f~2_combout\,
	datab => \reset~input_o\,
	datac => \dm|m0|stage3|f~1_combout\,
	datad => \alu_ins|mux4to1_ins|stage1|f~3_combout\,
	combout => \dm|m0|stage3|f~2_combout\);

-- Location: FF_X110_Y40_N7
\dm|r0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \dm|m0|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r0|Q\(1));

-- Location: LCCOMB_X110_Y40_N10
\dm_mux|f[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~18_combout\ = (\alu_ins|add_ins|stage3|s~0_combout\) # ((\dm_mux|f[1]~9_combout\) # ((!\alu_ins|add_ins|stage1|s~0_combout\ & \dm_mux|f[1]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage1|s~0_combout\,
	datab => \alu_ins|add_ins|stage3|s~0_combout\,
	datac => \dm_mux|f[1]~17_combout\,
	datad => \dm_mux|f[1]~9_combout\,
	combout => \dm_mux|f[1]~18_combout\);

-- Location: LCCOMB_X110_Y40_N22
\dm|m2|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m2|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((\dm|m10|stage3|f[0]~3_combout\ & \dm|m3|stage3|f~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \dm|m10|stage3|f[0]~3_combout\,
	datad => \dm|m3|stage3|f~11_combout\,
	combout => \dm|m2|stage3|f[0]~1_combout\);

-- Location: FF_X110_Y40_N17
\dm|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m1|stage3|f[1]~4_combout\,
	sload => VCC,
	ena => \dm|m2|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r2|Q\(1));

-- Location: LCCOMB_X113_Y40_N30
\dm|r7|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r7|Q[1]~feeder_combout\ = \dm|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m0|stage3|f~3_combout\,
	combout => \dm|r7|Q[1]~feeder_combout\);

-- Location: LCCOMB_X110_Y40_N30
\dm|m7|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m7|stage3|f~0_combout\ = (\alu_ins|add_ins|stage3|s~0_combout\ & (\alu_ins|add_ins|stage2|s~combout\ & ((!\alu_ins|add_ins|stage4|s~combout\) # (!\id|alu_temp[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|alu_temp[0]~10_combout\,
	datab => \alu_ins|add_ins|stage3|s~0_combout\,
	datac => \alu_ins|add_ins|stage2|s~combout\,
	datad => \alu_ins|add_ins|stage4|s~combout\,
	combout => \dm|m7|stage3|f~0_combout\);

-- Location: LCCOMB_X113_Y40_N28
\dm|m7|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m7|stage3|f~1_combout\ = (\reset~input_o\) # ((\dm|m7|stage3|f~0_combout\ & \dm|m1|stage3|f~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \dm|m7|stage3|f~0_combout\,
	datad => \dm|m1|stage3|f~5_combout\,
	combout => \dm|m7|stage3|f~1_combout\);

-- Location: FF_X113_Y40_N31
\dm|r7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r7|Q[1]~feeder_combout\,
	ena => \dm|m7|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r7|Q\(1));

-- Location: LCCOMB_X114_Y40_N24
\dm|r5|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r5|Q[1]~feeder_combout\ = \dm|m1|stage3|f[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m1|stage3|f[1]~4_combout\,
	combout => \dm|r5|Q[1]~feeder_combout\);

-- Location: LCCOMB_X114_Y40_N8
\dm|m5|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m5|stage3|f~0_combout\ = (\reset~input_o\) # ((\alu_ins|mux4to1_ins|stage1|f~2_combout\ & (!\alu_ins|mux4to1_ins|stage1|f~3_combout\ & \dm|m1|stage3|f~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|mux4to1_ins|stage1|f~2_combout\,
	datab => \reset~input_o\,
	datac => \alu_ins|mux4to1_ins|stage1|f~3_combout\,
	datad => \dm|m1|stage3|f~2_combout\,
	combout => \dm|m5|stage3|f~0_combout\);

-- Location: FF_X114_Y40_N25
\dm|r5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r5|Q[1]~feeder_combout\,
	ena => \dm|m5|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r5|Q\(1));

-- Location: LCCOMB_X109_Y40_N22
\dm|r6|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r6|Q[1]~feeder_combout\ = \dm|m1|stage3|f[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f[1]~4_combout\,
	combout => \dm|r6|Q[1]~feeder_combout\);

-- Location: LCCOMB_X109_Y40_N12
\dm|m6|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m6|stage3|f~0_combout\ = (\reset~input_o\) # ((\dm|m10|stage3|f[0]~3_combout\ & \dm|m7|stage3|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \dm|m10|stage3|f[0]~3_combout\,
	datac => \dm|m7|stage3|f~0_combout\,
	combout => \dm|m6|stage3|f~0_combout\);

-- Location: FF_X109_Y40_N23
\dm|r6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r6|Q[1]~feeder_combout\,
	ena => \dm|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r6|Q\(1));

-- Location: LCCOMB_X112_Y40_N12
\dm|m4|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m4|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\alu_ins|mux4to1_ins|stage1|f~2_combout\ & (\dm|m0|stage3|f~1_combout\ & !\alu_ins|mux4to1_ins|stage1|f~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|mux4to1_ins|stage1|f~2_combout\,
	datab => \reset~input_o\,
	datac => \dm|m0|stage3|f~1_combout\,
	datad => \alu_ins|mux4to1_ins|stage1|f~3_combout\,
	combout => \dm|m4|stage3|f[0]~0_combout\);

-- Location: FF_X112_Y40_N7
\dm|r4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m1|stage3|f[1]~4_combout\,
	sload => VCC,
	ena => \dm|m4|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r4|Q\(1));

-- Location: LCCOMB_X112_Y40_N6
\dm_mux|f[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~29_combout\ = (\alu_ins|add_ins|stage1|s~0_combout\ & (((\alu_ins|add_ins|stage2|s~combout\)))) # (!\alu_ins|add_ins|stage1|s~0_combout\ & ((\alu_ins|add_ins|stage2|s~combout\ & (\dm|r6|Q\(1))) # (!\alu_ins|add_ins|stage2|s~combout\ & 
-- ((\dm|r4|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r6|Q\(1),
	datab => \alu_ins|add_ins|stage1|s~0_combout\,
	datac => \dm|r4|Q\(1),
	datad => \alu_ins|add_ins|stage2|s~combout\,
	combout => \dm_mux|f[1]~29_combout\);

-- Location: LCCOMB_X112_Y40_N16
\dm_mux|f[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~30_combout\ = (\alu_ins|add_ins|stage1|s~0_combout\ & ((\dm_mux|f[1]~29_combout\ & (\dm|r7|Q\(1))) # (!\dm_mux|f[1]~29_combout\ & ((\dm|r5|Q\(1)))))) # (!\alu_ins|add_ins|stage1|s~0_combout\ & (((\dm_mux|f[1]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r7|Q\(1),
	datab => \alu_ins|add_ins|stage1|s~0_combout\,
	datac => \dm|r5|Q\(1),
	datad => \dm_mux|f[1]~29_combout\,
	combout => \dm_mux|f[1]~30_combout\);

-- Location: LCCOMB_X110_Y40_N16
\dm_mux|f[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~31_combout\ = (\dm_mux|f[1]~18_combout\ & ((\dm_mux|f[1]~19_combout\) # ((\dm_mux|f[1]~30_combout\)))) # (!\dm_mux|f[1]~18_combout\ & (!\dm_mux|f[1]~19_combout\ & (\dm|r2|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm_mux|f[1]~18_combout\,
	datab => \dm_mux|f[1]~19_combout\,
	datac => \dm|r2|Q\(1),
	datad => \dm_mux|f[1]~30_combout\,
	combout => \dm_mux|f[1]~31_combout\);

-- Location: LCCOMB_X110_Y40_N6
\dm_mux|f[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~32_combout\ = (\dm_mux|f[1]~19_combout\ & ((\dm_mux|f[1]~31_combout\ & ((\dm|r0|Q\(1)))) # (!\dm_mux|f[1]~31_combout\ & (\dm|r3|Q\(1))))) # (!\dm_mux|f[1]~19_combout\ & (((\dm_mux|f[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r3|Q\(1),
	datab => \dm_mux|f[1]~19_combout\,
	datac => \dm|r0|Q\(1),
	datad => \dm_mux|f[1]~31_combout\,
	combout => \dm_mux|f[1]~32_combout\);

-- Location: LCCOMB_X111_Y38_N0
\dm_mux|f[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~33_combout\ = (\dm_mux|f[1]~11_combout\ & ((\dm_mux|f[1]~14_combout\) # ((\dm|r1|Q\(1))))) # (!\dm_mux|f[1]~11_combout\ & (!\dm_mux|f[1]~14_combout\ & ((\dm_mux|f[1]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm_mux|f[1]~11_combout\,
	datab => \dm_mux|f[1]~14_combout\,
	datac => \dm|r1|Q\(1),
	datad => \dm_mux|f[1]~32_combout\,
	combout => \dm_mux|f[1]~33_combout\);

-- Location: LCCOMB_X111_Y38_N2
\dm_mux|f[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~36_combout\ = (\dm_mux|f[1]~14_combout\ & ((\dm_mux|f[1]~33_combout\ & (\dm_mux|f[1]~35_combout\)) # (!\dm_mux|f[1]~33_combout\ & ((\dm_mux|f[1]~28_combout\))))) # (!\dm_mux|f[1]~14_combout\ & (((\dm_mux|f[1]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm_mux|f[1]~14_combout\,
	datab => \dm_mux|f[1]~35_combout\,
	datac => \dm_mux|f[1]~28_combout\,
	datad => \dm_mux|f[1]~33_combout\,
	combout => \dm_mux|f[1]~36_combout\);

-- Location: LCCOMB_X112_Y39_N10
\rf|m1|stage3|f[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[1]~12_combout\ = (\reset~input_o\) # ((\id|Equal2~0_combout\ & ((\dm_mux|f[1]~36_combout\))) # (!\id|Equal2~0_combout\ & (\alu_ins|mux4to1_ins|stage1|f~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|mux4to1_ins|stage1|f~1_combout\,
	datab => \id|Equal2~0_combout\,
	datac => \reset~input_o\,
	datad => \dm_mux|f[1]~36_combout\,
	combout => \rf|m1|stage3|f[1]~12_combout\);

-- Location: FF_X112_Y39_N11
\rf|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m1|stage3|f[1]~12_combout\,
	ena => \rf|m1|stage3|f[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(1));

-- Location: LCCOMB_X111_Y39_N28
\rf|value2[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~8_combout\ = (\rf|r1|Q\(1) & !\pc|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|r1|Q\(1),
	datad => \pc|Q\(3),
	combout => \rf|value2[1]~8_combout\);

-- Location: LCCOMB_X111_Y39_N4
\rf|value1[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~8_combout\ = (\pc|Q\(0) & (\rf|r2|Q\(1) & ((!\pc|Q\(2))))) # (!\pc|Q\(0) & (((\rf|r3|Q\(1) & \pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \rf|r2|Q\(1),
	datac => \rf|r3|Q\(1),
	datad => \pc|Q\(2),
	combout => \rf|value1[1]~8_combout\);

-- Location: LCCOMB_X111_Y39_N10
\rf|value1[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~9_combout\ = (\rf|value2[1]~8_combout\ & ((\rf|value1[1]~0_combout\) # ((\rf|value1[0]~6_combout\ & \rf|value1[1]~8_combout\)))) # (!\rf|value2[1]~8_combout\ & (\rf|value1[0]~6_combout\ & ((\rf|value1[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[1]~8_combout\,
	datab => \rf|value1[0]~6_combout\,
	datac => \rf|value1[1]~0_combout\,
	datad => \rf|value1[1]~8_combout\,
	combout => \rf|value1[1]~9_combout\);

-- Location: LCCOMB_X111_Y40_N8
\alu_ins|add_ins|stage1|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage1|Cout~2_combout\ = (\id|alu_temp~11_combout\ & (!\im|output[3]~0_combout\ & !\reg_mux|f[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|alu_temp~11_combout\,
	datac => \im|output[3]~0_combout\,
	datad => \reg_mux|f[0]~2_combout\,
	combout => \alu_ins|add_ins|stage1|Cout~2_combout\);

-- Location: LCCOMB_X111_Y40_N6
\alu_ins|add_ins|z[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|z\(1) = (\im|output[3]~0_combout\ & (((!\id|ALUSrc~0_combout\ & \rf|value2[1]~10_combout\)))) # (!\im|output[3]~0_combout\ & (\id|alu_temp~11_combout\ $ (((\id|ALUSrc~0_combout\) # (\rf|value2[1]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|alu_temp~11_combout\,
	datab => \im|output[3]~0_combout\,
	datac => \id|ALUSrc~0_combout\,
	datad => \rf|value2[1]~10_combout\,
	combout => \alu_ins|add_ins|z\(1));

-- Location: LCCOMB_X111_Y40_N12
\alu_ins|add_ins|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage2|s~combout\ = \rf|value1[1]~9_combout\ $ (\alu_ins|add_ins|z\(1) $ (((\alu_ins|add_ins|stage1|Cout~1_combout\) # (\alu_ins|add_ins|stage1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage1|Cout~1_combout\,
	datab => \rf|value1[1]~9_combout\,
	datac => \alu_ins|add_ins|stage1|Cout~2_combout\,
	datad => \alu_ins|add_ins|z\(1),
	combout => \alu_ins|add_ins|stage2|s~combout\);

-- Location: LCCOMB_X111_Y38_N12
\dm_mux|f[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~10_combout\ = (\alu_ins|add_ins|stage1|s~0_combout\ & (!\alu_ins|add_ins|stage2|s~combout\ & !\dm_mux|f[1]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage1|s~0_combout\,
	datab => \alu_ins|add_ins|stage2|s~combout\,
	datad => \dm_mux|f[1]~9_combout\,
	combout => \dm_mux|f[1]~10_combout\);

-- Location: LCCOMB_X111_Y38_N30
\dm_mux|f[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~11_combout\ = (\alu_ins|add_ins|stage3|s~0_combout\ & (((\alu_ins|add_ins|stage4|s~combout\)))) # (!\alu_ins|add_ins|stage3|s~0_combout\ & ((\alu_ins|add_ins|stage4|s~combout\ & (\dm_mux|f[1]~58_combout\)) # 
-- (!\alu_ins|add_ins|stage4|s~combout\ & ((\dm_mux|f[1]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm_mux|f[1]~58_combout\,
	datab => \alu_ins|add_ins|stage3|s~0_combout\,
	datac => \alu_ins|add_ins|stage4|s~combout\,
	datad => \dm_mux|f[1]~10_combout\,
	combout => \dm_mux|f[1]~11_combout\);

-- Location: FF_X112_Y38_N7
\rf|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f~10_combout\,
	sload => VCC,
	ena => \rf|m2|stage3|f[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(2));

-- Location: LCCOMB_X112_Y40_N14
\rf|value2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~2_combout\ = (!\pc|Q\(1) & (\pc|Q\(2) $ (\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(2),
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \rf|value2[2]~2_combout\);

-- Location: FF_X112_Y38_N5
\rf|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f~10_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(2));

-- Location: LCCOMB_X112_Y40_N28
\rf|value2[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~1_combout\ = (\rf|r3|Q\(2) & ((\rf|value1[2]~4_combout\) # ((\rf|r1|Q\(2) & \rf|value2[0]~0_combout\)))) # (!\rf|r3|Q\(2) & (((\rf|r1|Q\(2) & \rf|value2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(2),
	datab => \rf|value1[2]~4_combout\,
	datac => \rf|r1|Q\(2),
	datad => \rf|value2[0]~0_combout\,
	combout => \rf|value2[2]~1_combout\);

-- Location: LCCOMB_X112_Y40_N4
\rf|value2[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~3_combout\ = (!\pc|Q\(3) & ((\rf|value2[2]~1_combout\) # ((\rf|r2|Q\(2) & \rf|value2[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \rf|r2|Q\(2),
	datac => \rf|value2[2]~2_combout\,
	datad => \rf|value2[2]~1_combout\,
	combout => \rf|value2[2]~3_combout\);

-- Location: LCCOMB_X112_Y40_N10
\dm|m3|stage3|f~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m3|stage3|f~9_combout\ = (!\reset~input_o\ & \rf|value2[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \rf|value2[2]~3_combout\,
	combout => \dm|m3|stage3|f~9_combout\);

-- Location: LCCOMB_X114_Y39_N30
\dm|r15|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r15|Q[2]~feeder_combout\ = \dm|m3|stage3|f~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m3|stage3|f~9_combout\,
	combout => \dm|r15|Q[2]~feeder_combout\);

-- Location: FF_X114_Y39_N31
\dm|r15|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r15|Q[2]~feeder_combout\,
	ena => \dm|m15|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r15|Q\(2));

-- Location: LCCOMB_X114_Y40_N18
\dm|r14|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r14|Q[2]~feeder_combout\ = \dm|m3|stage3|f~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m3|stage3|f~9_combout\,
	combout => \dm|r14|Q[2]~feeder_combout\);

-- Location: FF_X114_Y40_N19
\dm|r14|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r14|Q[2]~feeder_combout\,
	ena => \dm|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r14|Q\(2));

-- Location: LCCOMB_X114_Y39_N20
\dm|r13|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r13|Q[2]~feeder_combout\ = \dm|m3|stage3|f~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m3|stage3|f~9_combout\,
	combout => \dm|r13|Q[2]~feeder_combout\);

-- Location: FF_X114_Y39_N21
\dm|r13|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r13|Q[2]~feeder_combout\,
	ena => \dm|m13|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r13|Q\(2));

-- Location: LCCOMB_X111_Y37_N8
\dm|r12|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r12|Q[2]~feeder_combout\ = \dm|m3|stage3|f~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m3|stage3|f~9_combout\,
	combout => \dm|r12|Q[2]~feeder_combout\);

-- Location: FF_X111_Y37_N9
\dm|r12|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r12|Q[2]~feeder_combout\,
	ena => \dm|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r12|Q\(2));

-- Location: LCCOMB_X112_Y38_N10
\dm_mux|f[2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[2]~44_combout\ = (\alu_ins|add_ins|stage1|s~0_combout\ & ((\dm|r13|Q\(2)) # ((\alu_ins|add_ins|stage2|s~combout\)))) # (!\alu_ins|add_ins|stage1|s~0_combout\ & (((\dm|r12|Q\(2) & !\alu_ins|add_ins|stage2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r13|Q\(2),
	datab => \dm|r12|Q\(2),
	datac => \alu_ins|add_ins|stage1|s~0_combout\,
	datad => \alu_ins|add_ins|stage2|s~combout\,
	combout => \dm_mux|f[2]~44_combout\);

-- Location: LCCOMB_X111_Y38_N14
\dm_mux|f[2]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[2]~45_combout\ = (\dm_mux|f[2]~44_combout\ & ((\dm|r15|Q\(2)) # ((!\alu_ins|add_ins|stage2|s~combout\)))) # (!\dm_mux|f[2]~44_combout\ & (((\dm|r14|Q\(2) & \alu_ins|add_ins|stage2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r15|Q\(2),
	datab => \dm|r14|Q\(2),
	datac => \dm_mux|f[2]~44_combout\,
	datad => \alu_ins|add_ins|stage2|s~combout\,
	combout => \dm_mux|f[2]~45_combout\);

-- Location: LCCOMB_X110_Y39_N30
\dm|m0|stage3|f[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m0|stage3|f[2]~4_combout\ = (\reset~input_o\) # (\rf|value2[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \rf|value2[2]~3_combout\,
	combout => \dm|m0|stage3|f[2]~4_combout\);

-- Location: FF_X111_Y38_N25
\dm|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f[2]~4_combout\,
	sload => VCC,
	ena => \dm|m1|stage3|f~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r1|Q\(2));

-- Location: LCCOMB_X114_Y38_N24
\dm|r9|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r9|Q[2]~feeder_combout\ = \dm|m3|stage3|f~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m3|stage3|f~9_combout\,
	combout => \dm|r9|Q[2]~feeder_combout\);

-- Location: FF_X114_Y38_N25
\dm|r9|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r9|Q[2]~feeder_combout\,
	ena => \dm|m9|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r9|Q\(2));

-- Location: LCCOMB_X114_Y38_N10
\dm|r11|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r11|Q[2]~feeder_combout\ = \dm|m3|stage3|f~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m3|stage3|f~9_combout\,
	combout => \dm|r11|Q[2]~feeder_combout\);

-- Location: FF_X114_Y38_N11
\dm|r11|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r11|Q[2]~feeder_combout\,
	ena => \dm|m11|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r11|Q\(2));

-- Location: FF_X109_Y40_N9
\dm|r10|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m3|stage3|f~9_combout\,
	sload => VCC,
	ena => \dm|m10|stage3|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r10|Q\(2));

-- Location: FF_X111_Y38_N11
\dm|r8|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f[2]~4_combout\,
	sload => VCC,
	ena => \dm|m8|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r8|Q\(2));

-- Location: LCCOMB_X111_Y38_N10
\dm_mux|f[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[2]~37_combout\ = (\alu_ins|add_ins|stage1|s~0_combout\ & (((\alu_ins|add_ins|stage2|s~combout\)))) # (!\alu_ins|add_ins|stage1|s~0_combout\ & ((\alu_ins|add_ins|stage2|s~combout\ & (\dm|r10|Q\(2))) # (!\alu_ins|add_ins|stage2|s~combout\ & 
-- ((\dm|r8|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage1|s~0_combout\,
	datab => \dm|r10|Q\(2),
	datac => \dm|r8|Q\(2),
	datad => \alu_ins|add_ins|stage2|s~combout\,
	combout => \dm_mux|f[2]~37_combout\);

-- Location: LCCOMB_X111_Y38_N28
\dm_mux|f[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[2]~38_combout\ = (\alu_ins|add_ins|stage1|s~0_combout\ & ((\dm_mux|f[2]~37_combout\ & ((\dm|r11|Q\(2)))) # (!\dm_mux|f[2]~37_combout\ & (\dm|r9|Q\(2))))) # (!\alu_ins|add_ins|stage1|s~0_combout\ & (((\dm_mux|f[2]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r9|Q\(2),
	datab => \dm|r11|Q\(2),
	datac => \alu_ins|add_ins|stage1|s~0_combout\,
	datad => \dm_mux|f[2]~37_combout\,
	combout => \dm_mux|f[2]~38_combout\);

-- Location: LCCOMB_X110_Y38_N14
\dm|r0|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r0|Q[2]~feeder_combout\ = \dm|m0|stage3|f[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m0|stage3|f[2]~4_combout\,
	combout => \dm|r0|Q[2]~feeder_combout\);

-- Location: FF_X110_Y38_N15
\dm|r0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r0|Q[2]~feeder_combout\,
	ena => \dm|m0|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r0|Q\(2));

-- Location: LCCOMB_X113_Y40_N16
\dm|r7|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r7|Q[2]~feeder_combout\ = \dm|m3|stage3|f~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m3|stage3|f~9_combout\,
	combout => \dm|r7|Q[2]~feeder_combout\);

-- Location: FF_X113_Y40_N17
\dm|r7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r7|Q[2]~feeder_combout\,
	ena => \dm|m7|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r7|Q\(2));

-- Location: LCCOMB_X109_Y40_N6
\dm|r6|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r6|Q[2]~feeder_combout\ = \dm|m0|stage3|f[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m0|stage3|f[2]~4_combout\,
	combout => \dm|r6|Q[2]~feeder_combout\);

-- Location: FF_X109_Y40_N7
\dm|r6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r6|Q[2]~feeder_combout\,
	ena => \dm|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r6|Q\(2));

-- Location: FF_X112_Y40_N11
\dm|r4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|m3|stage3|f~9_combout\,
	ena => \dm|m4|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r4|Q\(2));

-- Location: LCCOMB_X114_Y40_N16
\dm|r5|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r5|Q[2]~feeder_combout\ = \dm|m3|stage3|f~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m3|stage3|f~9_combout\,
	combout => \dm|r5|Q[2]~feeder_combout\);

-- Location: FF_X114_Y40_N17
\dm|r5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r5|Q[2]~feeder_combout\,
	ena => \dm|m5|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r5|Q\(2));

-- Location: LCCOMB_X111_Y40_N20
\dm_mux|f[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[2]~39_combout\ = (\alu_ins|add_ins|stage2|s~combout\ & (((\alu_ins|add_ins|stage1|s~0_combout\)))) # (!\alu_ins|add_ins|stage2|s~combout\ & ((\alu_ins|add_ins|stage1|s~0_combout\ & ((\dm|r5|Q\(2)))) # (!\alu_ins|add_ins|stage1|s~0_combout\ & 
-- (\dm|r4|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage2|s~combout\,
	datab => \dm|r4|Q\(2),
	datac => \alu_ins|add_ins|stage1|s~0_combout\,
	datad => \dm|r5|Q\(2),
	combout => \dm_mux|f[2]~39_combout\);

-- Location: LCCOMB_X110_Y40_N20
\dm_mux|f[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[2]~40_combout\ = (\dm_mux|f[2]~39_combout\ & ((\dm|r7|Q\(2)) # ((!\alu_ins|add_ins|stage2|s~combout\)))) # (!\dm_mux|f[2]~39_combout\ & (((\dm|r6|Q\(2) & \alu_ins|add_ins|stage2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r7|Q\(2),
	datab => \dm|r6|Q\(2),
	datac => \dm_mux|f[2]~39_combout\,
	datad => \alu_ins|add_ins|stage2|s~combout\,
	combout => \dm_mux|f[2]~40_combout\);

-- Location: LCCOMB_X113_Y40_N14
\dm|r3|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r3|Q[2]~feeder_combout\ = \dm|m3|stage3|f~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m3|stage3|f~9_combout\,
	combout => \dm|r3|Q[2]~feeder_combout\);

-- Location: FF_X113_Y40_N15
\dm|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r3|Q[2]~feeder_combout\,
	ena => \dm|m3|stage3|f~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r3|Q\(2));

-- Location: FF_X110_Y40_N19
\dm|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f[2]~4_combout\,
	sload => VCC,
	ena => \dm|m2|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r2|Q\(2));

-- Location: LCCOMB_X110_Y40_N18
\dm_mux|f[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[2]~41_combout\ = (\dm_mux|f[1]~18_combout\ & (((\dm_mux|f[1]~19_combout\)))) # (!\dm_mux|f[1]~18_combout\ & ((\dm_mux|f[1]~19_combout\ & (\dm|r3|Q\(2))) # (!\dm_mux|f[1]~19_combout\ & ((\dm|r2|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm_mux|f[1]~18_combout\,
	datab => \dm|r3|Q\(2),
	datac => \dm|r2|Q\(2),
	datad => \dm_mux|f[1]~19_combout\,
	combout => \dm_mux|f[2]~41_combout\);

-- Location: LCCOMB_X111_Y38_N6
\dm_mux|f[2]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[2]~42_combout\ = (\dm_mux|f[1]~18_combout\ & ((\dm_mux|f[2]~41_combout\ & (\dm|r0|Q\(2))) # (!\dm_mux|f[2]~41_combout\ & ((\dm_mux|f[2]~40_combout\))))) # (!\dm_mux|f[1]~18_combout\ & (((\dm_mux|f[2]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm_mux|f[1]~18_combout\,
	datab => \dm|r0|Q\(2),
	datac => \dm_mux|f[2]~40_combout\,
	datad => \dm_mux|f[2]~41_combout\,
	combout => \dm_mux|f[2]~42_combout\);

-- Location: LCCOMB_X111_Y38_N16
\dm_mux|f[2]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[2]~43_combout\ = (\dm_mux|f[1]~11_combout\ & (((\dm_mux|f[1]~14_combout\)))) # (!\dm_mux|f[1]~11_combout\ & ((\dm_mux|f[1]~14_combout\ & (\dm_mux|f[2]~38_combout\)) # (!\dm_mux|f[1]~14_combout\ & ((\dm_mux|f[2]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm_mux|f[1]~11_combout\,
	datab => \dm_mux|f[2]~38_combout\,
	datac => \dm_mux|f[1]~14_combout\,
	datad => \dm_mux|f[2]~42_combout\,
	combout => \dm_mux|f[2]~43_combout\);

-- Location: LCCOMB_X111_Y38_N24
\dm_mux|f[2]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[2]~46_combout\ = (\dm_mux|f[1]~11_combout\ & ((\dm_mux|f[2]~43_combout\ & (\dm_mux|f[2]~45_combout\)) # (!\dm_mux|f[2]~43_combout\ & ((\dm|r1|Q\(2)))))) # (!\dm_mux|f[1]~11_combout\ & (((\dm_mux|f[2]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm_mux|f[1]~11_combout\,
	datab => \dm_mux|f[2]~45_combout\,
	datac => \dm|r1|Q\(2),
	datad => \dm_mux|f[2]~43_combout\,
	combout => \dm_mux|f[2]~46_combout\);

-- Location: LCCOMB_X112_Y38_N20
\rf|m1|stage3|f~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~10_combout\ = (!\reset~input_o\ & ((\id|Equal2~0_combout\ & ((\dm_mux|f[2]~46_combout\))) # (!\id|Equal2~0_combout\ & (\alu_ins|mux4to1_ins|stage1|f~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|mux4to1_ins|stage1|f~2_combout\,
	datab => \reset~input_o\,
	datac => \id|Equal2~0_combout\,
	datad => \dm_mux|f[2]~46_combout\,
	combout => \rf|m1|stage3|f~10_combout\);

-- Location: FF_X112_Y40_N29
\rf|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f~10_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(2));

-- Location: LCCOMB_X112_Y38_N8
\rf|value1[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~10_combout\ = (\rf|r1|Q\(2) & (\pc|Q\(1) $ (((\pc|Q\(2)) # (\pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \rf|r1|Q\(2),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \rf|value1[2]~10_combout\);

-- Location: LCCOMB_X112_Y38_N18
\rf|value1[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~11_combout\ = (\pc|Q\(2) & (((\rf|r3|Q\(2) & !\pc|Q\(0))))) # (!\pc|Q\(2) & (\rf|r2|Q\(2) & ((\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(2),
	datab => \rf|r3|Q\(2),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \rf|value1[2]~11_combout\);

-- Location: LCCOMB_X112_Y38_N28
\rf|value1[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~12_combout\ = (!\pc|Q\(3) & ((\rf|value1[2]~10_combout\) # ((!\rf|value1[2]~2_combout\ & \rf|value1[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \rf|value1[2]~2_combout\,
	datac => \rf|value1[2]~10_combout\,
	datad => \rf|value1[2]~11_combout\,
	combout => \rf|value1[2]~12_combout\);

-- Location: LCCOMB_X111_Y40_N14
\reg_mux|f[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_mux|f[2]~3_combout\ = (\rf|value2[2]~3_combout\ & ((\im|output[31]~2_combout\) # (!\im|output[30]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \im|output[31]~2_combout\,
	datac => \im|output[30]~1_combout\,
	datad => \rf|value2[2]~3_combout\,
	combout => \reg_mux|f[2]~3_combout\);

-- Location: LCCOMB_X111_Y40_N28
\alu_ins|add_ins|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage2|Cout~0_combout\ = (\rf|value1[1]~9_combout\ & ((\alu_ins|add_ins|stage1|Cout~1_combout\) # ((\alu_ins|add_ins|stage1|Cout~2_combout\) # (\alu_ins|add_ins|z\(1))))) # (!\rf|value1[1]~9_combout\ & (\alu_ins|add_ins|z\(1) & 
-- ((\alu_ins|add_ins|stage1|Cout~1_combout\) # (\alu_ins|add_ins|stage1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage1|Cout~1_combout\,
	datab => \rf|value1[1]~9_combout\,
	datac => \alu_ins|add_ins|stage1|Cout~2_combout\,
	datad => \alu_ins|add_ins|z\(1),
	combout => \alu_ins|add_ins|stage2|Cout~0_combout\);

-- Location: LCCOMB_X111_Y40_N10
\alu_ins|add_ins|stage3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage3|s~0_combout\ = \alu_ins|add_ins|stage1|Cout~0_combout\ $ (\rf|value1[2]~12_combout\ $ (\reg_mux|f[2]~3_combout\ $ (\alu_ins|add_ins|stage2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage1|Cout~0_combout\,
	datab => \rf|value1[2]~12_combout\,
	datac => \reg_mux|f[2]~3_combout\,
	datad => \alu_ins|add_ins|stage2|Cout~0_combout\,
	combout => \alu_ins|add_ins|stage3|s~0_combout\);

-- Location: LCCOMB_X110_Y40_N26
\dm|m11|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m11|stage3|f~3_combout\ = (\alu_ins|add_ins|stage2|s~combout\ & (\alu_ins|add_ins|stage4|s~combout\ & ((!\alu_ins|add_ins|stage3|s~0_combout\) # (!\id|alu_temp[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|alu_temp[0]~10_combout\,
	datab => \alu_ins|add_ins|stage3|s~0_combout\,
	datac => \alu_ins|add_ins|stage2|s~combout\,
	datad => \alu_ins|add_ins|stage4|s~combout\,
	combout => \dm|m11|stage3|f~3_combout\);

-- Location: LCCOMB_X109_Y40_N8
\dm|m10|stage3|f[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m10|stage3|f[0]~2_combout\ = (\reset~input_o\) # ((\dm|m10|stage3|f[0]~3_combout\ & \dm|m11|stage3|f~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \dm|m10|stage3|f[0]~3_combout\,
	datad => \dm|m11|stage3|f~3_combout\,
	combout => \dm|m10|stage3|f[0]~2_combout\);

-- Location: FF_X109_Y40_N29
\dm|r10|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r10|Q[3]~feeder_combout\,
	ena => \dm|m10|stage3|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r10|Q\(3));

-- Location: LCCOMB_X114_Y38_N18
\dm|r11|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r11|Q[3]~feeder_combout\ = \dm|m0|stage3|f~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~5_combout\,
	combout => \dm|r11|Q[3]~feeder_combout\);

-- Location: FF_X114_Y38_N19
\dm|r11|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r11|Q[3]~feeder_combout\,
	ena => \dm|m11|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r11|Q\(3));

-- Location: FF_X111_Y38_N5
\dm|r8|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~5_combout\,
	sload => VCC,
	ena => \dm|m8|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r8|Q\(3));

-- Location: LCCOMB_X113_Y40_N0
\dm|m3|stage3|f[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m3|stage3|f[3]~10_combout\ = (\reset~input_o\) # (\rf|value2[3]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \rf|value2[3]~13_combout\,
	combout => \dm|m3|stage3|f[3]~10_combout\);

-- Location: LCCOMB_X114_Y38_N4
\dm|r9|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r9|Q[3]~feeder_combout\ = \dm|m3|stage3|f[3]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m3|stage3|f[3]~10_combout\,
	combout => \dm|r9|Q[3]~feeder_combout\);

-- Location: FF_X114_Y38_N5
\dm|r9|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r9|Q[3]~feeder_combout\,
	ena => \dm|m9|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r9|Q\(3));

-- Location: LCCOMB_X113_Y38_N18
\dm_mux|f[3]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[3]~47_combout\ = (\alu_ins|add_ins|stage1|s~0_combout\ & (((\alu_ins|add_ins|stage2|s~combout\) # (\dm|r9|Q\(3))))) # (!\alu_ins|add_ins|stage1|s~0_combout\ & (\dm|r8|Q\(3) & (!\alu_ins|add_ins|stage2|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage1|s~0_combout\,
	datab => \dm|r8|Q\(3),
	datac => \alu_ins|add_ins|stage2|s~combout\,
	datad => \dm|r9|Q\(3),
	combout => \dm_mux|f[3]~47_combout\);

-- Location: LCCOMB_X113_Y38_N20
\dm_mux|f[3]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[3]~48_combout\ = (\alu_ins|add_ins|stage2|s~combout\ & ((\dm_mux|f[3]~47_combout\ & ((\dm|r11|Q\(3)))) # (!\dm_mux|f[3]~47_combout\ & (\dm|r10|Q\(3))))) # (!\alu_ins|add_ins|stage2|s~combout\ & (((\dm_mux|f[3]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r10|Q\(3),
	datab => \dm|r11|Q\(3),
	datac => \alu_ins|add_ins|stage2|s~combout\,
	datad => \dm_mux|f[3]~47_combout\,
	combout => \dm_mux|f[3]~48_combout\);

-- Location: LCCOMB_X114_Y40_N10
\dm|r14|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r14|Q[3]~feeder_combout\ = \dm|m0|stage3|f~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~5_combout\,
	combout => \dm|r14|Q[3]~feeder_combout\);

-- Location: FF_X114_Y40_N11
\dm|r14|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r14|Q[3]~feeder_combout\,
	ena => \dm|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r14|Q\(3));

-- Location: FF_X111_Y37_N31
\dm|r12|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~5_combout\,
	sload => VCC,
	ena => \dm|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r12|Q\(3));

-- Location: LCCOMB_X111_Y37_N30
\dm_mux|f[3]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[3]~54_combout\ = (\alu_ins|add_ins|stage1|s~0_combout\ & (((\alu_ins|add_ins|stage2|s~combout\)))) # (!\alu_ins|add_ins|stage1|s~0_combout\ & ((\alu_ins|add_ins|stage2|s~combout\ & (\dm|r14|Q\(3))) # (!\alu_ins|add_ins|stage2|s~combout\ & 
-- ((\dm|r12|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r14|Q\(3),
	datab => \alu_ins|add_ins|stage1|s~0_combout\,
	datac => \dm|r12|Q\(3),
	datad => \alu_ins|add_ins|stage2|s~combout\,
	combout => \dm_mux|f[3]~54_combout\);

-- Location: LCCOMB_X114_Y39_N24
\dm|r13|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r13|Q[3]~feeder_combout\ = \dm|m0|stage3|f~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~5_combout\,
	combout => \dm|r13|Q[3]~feeder_combout\);

-- Location: FF_X114_Y39_N25
\dm|r13|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r13|Q[3]~feeder_combout\,
	ena => \dm|m13|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r13|Q\(3));

-- Location: LCCOMB_X114_Y39_N22
\dm|r15|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r15|Q[3]~feeder_combout\ = \dm|m0|stage3|f~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~5_combout\,
	combout => \dm|r15|Q[3]~feeder_combout\);

-- Location: FF_X114_Y39_N23
\dm|r15|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r15|Q[3]~feeder_combout\,
	ena => \dm|m15|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r15|Q\(3));

-- Location: LCCOMB_X111_Y37_N16
\dm_mux|f[3]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[3]~55_combout\ = (\dm_mux|f[3]~54_combout\ & (((\dm|r15|Q\(3)) # (!\alu_ins|add_ins|stage1|s~0_combout\)))) # (!\dm_mux|f[3]~54_combout\ & (\dm|r13|Q\(3) & ((\alu_ins|add_ins|stage1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm_mux|f[3]~54_combout\,
	datab => \dm|r13|Q\(3),
	datac => \dm|r15|Q\(3),
	datad => \alu_ins|add_ins|stage1|s~0_combout\,
	combout => \dm_mux|f[3]~55_combout\);

-- Location: FF_X111_Y38_N19
\dm|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~5_combout\,
	sload => VCC,
	ena => \dm|m1|stage3|f~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r1|Q\(3));

-- Location: FF_X113_Y40_N13
\dm|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m3|stage3|f[3]~10_combout\,
	sload => VCC,
	ena => \dm|m3|stage3|f~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r3|Q\(3));

-- Location: FF_X110_Y40_N15
\dm|r0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~5_combout\,
	sload => VCC,
	ena => \dm|m0|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r0|Q\(3));

-- Location: FF_X110_Y40_N25
\dm|r2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~5_combout\,
	sload => VCC,
	ena => \dm|m2|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r2|Q\(3));

-- Location: LCCOMB_X114_Y40_N12
\dm|r5|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r5|Q[3]~feeder_combout\ = \dm|m3|stage3|f[3]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m3|stage3|f[3]~10_combout\,
	combout => \dm|r5|Q[3]~feeder_combout\);

-- Location: FF_X114_Y40_N13
\dm|r5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r5|Q[3]~feeder_combout\,
	ena => \dm|m5|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r5|Q\(3));

-- Location: LCCOMB_X113_Y40_N6
\dm|r7|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r7|Q[3]~feeder_combout\ = \dm|m0|stage3|f~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~5_combout\,
	combout => \dm|r7|Q[3]~feeder_combout\);

-- Location: FF_X113_Y40_N7
\dm|r7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r7|Q[3]~feeder_combout\,
	ena => \dm|m7|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r7|Q\(3));

-- Location: LCCOMB_X109_Y40_N14
\dm|r6|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r6|Q[3]~feeder_combout\ = \dm|m3|stage3|f[3]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m3|stage3|f[3]~10_combout\,
	combout => \dm|r6|Q[3]~feeder_combout\);

-- Location: FF_X109_Y40_N15
\dm|r6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r6|Q[3]~feeder_combout\,
	ena => \dm|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r6|Q\(3));

-- Location: FF_X112_Y40_N25
\dm|r4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~5_combout\,
	sload => VCC,
	ena => \dm|m4|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r4|Q\(3));

-- Location: LCCOMB_X112_Y40_N24
\dm_mux|f[3]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[3]~49_combout\ = (\alu_ins|add_ins|stage1|s~0_combout\ & (((\alu_ins|add_ins|stage2|s~combout\)))) # (!\alu_ins|add_ins|stage1|s~0_combout\ & ((\alu_ins|add_ins|stage2|s~combout\ & (\dm|r6|Q\(3))) # (!\alu_ins|add_ins|stage2|s~combout\ & 
-- ((\dm|r4|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r6|Q\(3),
	datab => \alu_ins|add_ins|stage1|s~0_combout\,
	datac => \dm|r4|Q\(3),
	datad => \alu_ins|add_ins|stage2|s~combout\,
	combout => \dm_mux|f[3]~49_combout\);

-- Location: LCCOMB_X112_Y40_N26
\dm_mux|f[3]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[3]~50_combout\ = (\alu_ins|add_ins|stage1|s~0_combout\ & ((\dm_mux|f[3]~49_combout\ & ((\dm|r7|Q\(3)))) # (!\dm_mux|f[3]~49_combout\ & (\dm|r5|Q\(3))))) # (!\alu_ins|add_ins|stage1|s~0_combout\ & (((\dm_mux|f[3]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r5|Q\(3),
	datab => \alu_ins|add_ins|stage1|s~0_combout\,
	datac => \dm|r7|Q\(3),
	datad => \dm_mux|f[3]~49_combout\,
	combout => \dm_mux|f[3]~50_combout\);

-- Location: LCCOMB_X110_Y40_N24
\dm_mux|f[3]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[3]~51_combout\ = (\dm_mux|f[1]~18_combout\ & ((\dm_mux|f[1]~19_combout\) # ((\dm_mux|f[3]~50_combout\)))) # (!\dm_mux|f[1]~18_combout\ & (!\dm_mux|f[1]~19_combout\ & (\dm|r2|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm_mux|f[1]~18_combout\,
	datab => \dm_mux|f[1]~19_combout\,
	datac => \dm|r2|Q\(3),
	datad => \dm_mux|f[3]~50_combout\,
	combout => \dm_mux|f[3]~51_combout\);

-- Location: LCCOMB_X110_Y40_N14
\dm_mux|f[3]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[3]~52_combout\ = (\dm_mux|f[1]~19_combout\ & ((\dm_mux|f[3]~51_combout\ & ((\dm|r0|Q\(3)))) # (!\dm_mux|f[3]~51_combout\ & (\dm|r3|Q\(3))))) # (!\dm_mux|f[1]~19_combout\ & (((\dm_mux|f[3]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r3|Q\(3),
	datab => \dm_mux|f[1]~19_combout\,
	datac => \dm|r0|Q\(3),
	datad => \dm_mux|f[3]~51_combout\,
	combout => \dm_mux|f[3]~52_combout\);

-- Location: LCCOMB_X111_Y38_N18
\dm_mux|f[3]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[3]~53_combout\ = (\dm_mux|f[1]~11_combout\ & ((\dm_mux|f[1]~14_combout\) # ((\dm|r1|Q\(3))))) # (!\dm_mux|f[1]~11_combout\ & (!\dm_mux|f[1]~14_combout\ & ((\dm_mux|f[3]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm_mux|f[1]~11_combout\,
	datab => \dm_mux|f[1]~14_combout\,
	datac => \dm|r1|Q\(3),
	datad => \dm_mux|f[3]~52_combout\,
	combout => \dm_mux|f[3]~53_combout\);

-- Location: LCCOMB_X112_Y38_N16
\dm_mux|f[3]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[3]~56_combout\ = (\dm_mux|f[1]~14_combout\ & ((\dm_mux|f[3]~53_combout\ & ((\dm_mux|f[3]~55_combout\))) # (!\dm_mux|f[3]~53_combout\ & (\dm_mux|f[3]~48_combout\)))) # (!\dm_mux|f[1]~14_combout\ & (((\dm_mux|f[3]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm_mux|f[3]~48_combout\,
	datab => \dm_mux|f[3]~55_combout\,
	datac => \dm_mux|f[1]~14_combout\,
	datad => \dm_mux|f[3]~53_combout\,
	combout => \dm_mux|f[3]~56_combout\);

-- Location: LCCOMB_X112_Y38_N22
\rf|m1|stage3|f~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~9_combout\ = (!\reset~input_o\ & ((\id|Equal2~0_combout\ & ((\dm_mux|f[3]~56_combout\))) # (!\id|Equal2~0_combout\ & (\alu_ins|mux4to1_ins|stage1|f~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|mux4to1_ins|stage1|f~3_combout\,
	datab => \reset~input_o\,
	datac => \id|Equal2~0_combout\,
	datad => \dm_mux|f[3]~56_combout\,
	combout => \rf|m1|stage3|f~9_combout\);

-- Location: FF_X112_Y38_N15
\rf|r2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f~9_combout\,
	sload => VCC,
	ena => \rf|m2|stage3|f[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(3));

-- Location: LCCOMB_X113_Y38_N28
\rf|r1|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[3]~feeder_combout\ = \rf|m1|stage3|f~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~9_combout\,
	combout => \rf|r1|Q[3]~feeder_combout\);

-- Location: FF_X113_Y38_N29
\rf|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[3]~feeder_combout\,
	ena => \rf|m1|stage3|f[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(3));

-- Location: LCCOMB_X112_Y40_N22
\rf|value2[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~11_combout\ = (\rf|r1|Q\(3) & (\pc|Q\(2) & ((!\pc|Q\(1)) # (!\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \rf|r1|Q\(3),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \rf|value2[3]~11_combout\);

-- Location: FF_X112_Y38_N25
\rf|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f~9_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(3));

-- Location: LCCOMB_X112_Y40_N0
\rf|value2[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~12_combout\ = (!\rf|value2[2]~2_combout\ & ((\rf|value2[3]~11_combout\) # ((\rf|r3|Q\(3) & \rf|value1[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[3]~11_combout\,
	datab => \rf|r3|Q\(3),
	datac => \rf|value2[2]~2_combout\,
	datad => \rf|value1[2]~4_combout\,
	combout => \rf|value2[3]~12_combout\);

-- Location: LCCOMB_X112_Y40_N18
\rf|value2[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~13_combout\ = (!\pc|Q\(3) & ((\rf|value2[3]~12_combout\) # ((\rf|r2|Q\(3) & \rf|value2[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \rf|r2|Q\(3),
	datac => \rf|value2[2]~2_combout\,
	datad => \rf|value2[3]~12_combout\,
	combout => \rf|value2[3]~13_combout\);

-- Location: LCCOMB_X112_Y38_N12
\rf|value1[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~1_combout\ = (\pc|Q\(2) & (\rf|r3|Q\(3) & ((!\pc|Q\(0))))) # (!\pc|Q\(2) & (((\rf|r2|Q\(3) & \pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \rf|r3|Q\(3),
	datac => \rf|r2|Q\(3),
	datad => \pc|Q\(0),
	combout => \rf|value1[3]~1_combout\);

-- Location: LCCOMB_X112_Y40_N8
\rf|value1[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~3_combout\ = (\rf|value1[1]~0_combout\ & ((\rf|r1|Q\(3)) # ((\rf|value1[3]~1_combout\ & !\rf|value1[2]~2_combout\)))) # (!\rf|value1[1]~0_combout\ & (((\rf|value1[3]~1_combout\ & !\rf|value1[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[1]~0_combout\,
	datab => \rf|r1|Q\(3),
	datac => \rf|value1[3]~1_combout\,
	datad => \rf|value1[2]~2_combout\,
	combout => \rf|value1[3]~3_combout\);

-- Location: LCCOMB_X111_Y40_N18
\alu_ins|add_ins|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage3|Cout~0_combout\ = (\rf|value1[2]~12_combout\ & ((\alu_ins|add_ins|stage2|Cout~0_combout\) # (\alu_ins|add_ins|stage1|Cout~0_combout\ $ (\reg_mux|f[2]~3_combout\)))) # (!\rf|value1[2]~12_combout\ & 
-- (\alu_ins|add_ins|stage2|Cout~0_combout\ & (\alu_ins|add_ins|stage1|Cout~0_combout\ $ (\reg_mux|f[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage1|Cout~0_combout\,
	datab => \rf|value1[2]~12_combout\,
	datac => \reg_mux|f[2]~3_combout\,
	datad => \alu_ins|add_ins|stage2|Cout~0_combout\,
	combout => \alu_ins|add_ins|stage3|Cout~0_combout\);

-- Location: LCCOMB_X111_Y40_N0
\alu_ins|add_ins|stage4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage4|s~0_combout\ = \alu_ins|add_ins|stage1|Cout~0_combout\ $ (\alu_ins|add_ins|stage3|Cout~0_combout\ $ (((!\pc|Q\(3) & \rf|value1[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage1|Cout~0_combout\,
	datab => \pc|Q\(3),
	datac => \rf|value1[3]~3_combout\,
	datad => \alu_ins|add_ins|stage3|Cout~0_combout\,
	combout => \alu_ins|add_ins|stage4|s~0_combout\);

-- Location: LCCOMB_X111_Y40_N2
\alu_ins|add_ins|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage4|s~combout\ = \alu_ins|add_ins|stage4|s~0_combout\ $ (((\id|ALUSrc~0_combout\ & (!\im|output[3]~0_combout\)) # (!\id|ALUSrc~0_combout\ & ((\rf|value2[3]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[3]~0_combout\,
	datab => \rf|value2[3]~13_combout\,
	datac => \id|ALUSrc~0_combout\,
	datad => \alu_ins|add_ins|stage4|s~0_combout\,
	combout => \alu_ins|add_ins|stage4|s~combout\);

-- Location: LCCOMB_X111_Y40_N30
\alu_ins|mux4to1_ins|stage1|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage1|f[0]~0_combout\ = (\id|alu_temp[0]~10_combout\ & (\rf|value1[0]~7_combout\ $ ((\reg_mux|f[0]~2_combout\)))) # (!\id|alu_temp[0]~10_combout\ & (((\alu_ins|add_ins|stage4|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[0]~7_combout\,
	datab => \id|alu_temp[0]~10_combout\,
	datac => \reg_mux|f[0]~2_combout\,
	datad => \alu_ins|add_ins|stage4|s~combout\,
	combout => \alu_ins|mux4to1_ins|stage1|f[0]~0_combout\);

-- Location: LCCOMB_X111_Y39_N24
\rf|m1|stage3|f[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~11_combout\ = (\reset~input_o\) # ((\id|Equal2~0_combout\ & ((\dm_mux|f[0]~25_combout\))) # (!\id|Equal2~0_combout\ & (\alu_ins|mux4to1_ins|stage1|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|mux4to1_ins|stage1|f[0]~0_combout\,
	datab => \reset~input_o\,
	datac => \id|Equal2~0_combout\,
	datad => \dm_mux|f[0]~25_combout\,
	combout => \rf|m1|stage3|f[0]~11_combout\);

-- Location: LCCOMB_X113_Y39_N4
\rf|r3|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[0]~feeder_combout\ = \rf|m1|stage3|f[0]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f[0]~11_combout\,
	combout => \rf|r3|Q[0]~feeder_combout\);

-- Location: FF_X113_Y39_N5
\rf|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r3|Q[0]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(0));

-- Location: LCCOMB_X112_Y39_N12
\rf|value2[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~5_combout\ = (\pc|Q\(1) & (!\pc|Q\(2) & (!\pc|Q\(3) & \rf|r3|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \rf|r3|Q\(0),
	combout => \rf|value2[0]~5_combout\);

-- Location: LCCOMB_X110_Y39_N14
\dm|m0|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m0|stage3|f~0_combout\ = (!\reset~input_o\ & ((\rf|value2[0]~5_combout\) # (\rf|value2[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[0]~5_combout\,
	datab => \reset~input_o\,
	datad => \rf|value2[0]~7_combout\,
	combout => \dm|m0|stage3|f~0_combout\);

-- Location: FF_X111_Y38_N13
\dm|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \dm|m1|stage3|f~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r1|Q\(0));

-- Location: LCCOMB_X114_Y39_N16
\dm|r13|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r13|Q[0]~feeder_combout\ = \dm|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~0_combout\,
	combout => \dm|r13|Q[0]~feeder_combout\);

-- Location: FF_X114_Y39_N17
\dm|r13|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r13|Q[0]~feeder_combout\,
	ena => \dm|m13|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r13|Q\(0));

-- Location: LCCOMB_X114_Y39_N18
\dm|r15|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r15|Q[0]~feeder_combout\ = \dm|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~0_combout\,
	combout => \dm|r15|Q[0]~feeder_combout\);

-- Location: FF_X114_Y39_N19
\dm|r15|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r15|Q[0]~feeder_combout\,
	ena => \dm|m15|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r15|Q\(0));

-- Location: LCCOMB_X114_Y40_N22
\dm|r14|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r14|Q[0]~feeder_combout\ = \dm|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~0_combout\,
	combout => \dm|r14|Q[0]~feeder_combout\);

-- Location: FF_X114_Y40_N23
\dm|r14|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r14|Q[0]~feeder_combout\,
	ena => \dm|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r14|Q\(0));

-- Location: FF_X111_Y37_N13
\dm|r12|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \dm|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r12|Q\(0));

-- Location: LCCOMB_X111_Y37_N12
\dm_mux|f[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[0]~23_combout\ = (\alu_ins|add_ins|stage2|s~combout\ & ((\dm|r14|Q\(0)) # ((\alu_ins|add_ins|stage1|s~0_combout\)))) # (!\alu_ins|add_ins|stage2|s~combout\ & (((\dm|r12|Q\(0) & !\alu_ins|add_ins|stage1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r14|Q\(0),
	datab => \alu_ins|add_ins|stage2|s~combout\,
	datac => \dm|r12|Q\(0),
	datad => \alu_ins|add_ins|stage1|s~0_combout\,
	combout => \dm_mux|f[0]~23_combout\);

-- Location: LCCOMB_X111_Y37_N10
\dm_mux|f[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[0]~24_combout\ = (\alu_ins|add_ins|stage1|s~0_combout\ & ((\dm_mux|f[0]~23_combout\ & ((\dm|r15|Q\(0)))) # (!\dm_mux|f[0]~23_combout\ & (\dm|r13|Q\(0))))) # (!\alu_ins|add_ins|stage1|s~0_combout\ & (((\dm_mux|f[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r13|Q\(0),
	datab => \alu_ins|add_ins|stage1|s~0_combout\,
	datac => \dm|r15|Q\(0),
	datad => \dm_mux|f[0]~23_combout\,
	combout => \dm_mux|f[0]~24_combout\);

-- Location: LCCOMB_X114_Y38_N26
\dm|r11|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r11|Q[0]~feeder_combout\ = \dm|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~0_combout\,
	combout => \dm|r11|Q[0]~feeder_combout\);

-- Location: FF_X114_Y38_N27
\dm|r11|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r11|Q[0]~feeder_combout\,
	ena => \dm|m11|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r11|Q\(0));

-- Location: LCCOMB_X110_Y39_N24
\dm|m2|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m2|stage3|f[0]~0_combout\ = (\rf|value2[0]~5_combout\) # ((\reset~input_o\) # (\rf|value2[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[0]~5_combout\,
	datab => \reset~input_o\,
	datad => \rf|value2[0]~7_combout\,
	combout => \dm|m2|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X114_Y38_N20
\dm|r9|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r9|Q[0]~feeder_combout\ = \dm|m2|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m2|stage3|f[0]~0_combout\,
	combout => \dm|r9|Q[0]~feeder_combout\);

-- Location: FF_X114_Y38_N21
\dm|r9|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r9|Q[0]~feeder_combout\,
	ena => \dm|m9|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r9|Q\(0));

-- Location: LCCOMB_X109_Y40_N20
\dm|r10|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r10|Q[0]~feeder_combout\ = \dm|m2|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m2|stage3|f[0]~0_combout\,
	combout => \dm|r10|Q[0]~feeder_combout\);

-- Location: FF_X109_Y40_N21
\dm|r10|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r10|Q[0]~feeder_combout\,
	ena => \dm|m10|stage3|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r10|Q\(0));

-- Location: FF_X111_Y38_N21
\dm|r8|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m2|stage3|f[0]~0_combout\,
	sload => VCC,
	ena => \dm|m8|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r8|Q\(0));

-- Location: LCCOMB_X110_Y38_N20
\dm_mux|f[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[0]~12_combout\ = (\alu_ins|add_ins|stage2|s~combout\ & ((\dm|r10|Q\(0)) # ((\alu_ins|add_ins|stage1|s~0_combout\)))) # (!\alu_ins|add_ins|stage2|s~combout\ & (((\dm|r8|Q\(0) & !\alu_ins|add_ins|stage1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r10|Q\(0),
	datab => \dm|r8|Q\(0),
	datac => \alu_ins|add_ins|stage2|s~combout\,
	datad => \alu_ins|add_ins|stage1|s~0_combout\,
	combout => \dm_mux|f[0]~12_combout\);

-- Location: LCCOMB_X110_Y38_N30
\dm_mux|f[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[0]~13_combout\ = (\alu_ins|add_ins|stage1|s~0_combout\ & ((\dm_mux|f[0]~12_combout\ & (\dm|r11|Q\(0))) # (!\dm_mux|f[0]~12_combout\ & ((\dm|r9|Q\(0)))))) # (!\alu_ins|add_ins|stage1|s~0_combout\ & (((\dm_mux|f[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r11|Q\(0),
	datab => \alu_ins|add_ins|stage1|s~0_combout\,
	datac => \dm|r9|Q\(0),
	datad => \dm_mux|f[0]~12_combout\,
	combout => \dm_mux|f[0]~13_combout\);

-- Location: LCCOMB_X114_Y40_N4
\dm|r5|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r5|Q[0]~feeder_combout\ = \dm|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m0|stage3|f~0_combout\,
	combout => \dm|r5|Q[0]~feeder_combout\);

-- Location: FF_X114_Y40_N5
\dm|r5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r5|Q[0]~feeder_combout\,
	ena => \dm|m5|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r5|Q\(0));

-- Location: FF_X113_Y40_N23
\dm|r7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \dm|m7|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r7|Q\(0));

-- Location: LCCOMB_X109_Y40_N18
\dm|r6|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r6|Q[0]~feeder_combout\ = \dm|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m0|stage3|f~0_combout\,
	combout => \dm|r6|Q[0]~feeder_combout\);

-- Location: FF_X109_Y40_N19
\dm|r6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dm|r6|Q[0]~feeder_combout\,
	ena => \dm|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r6|Q\(0));

-- Location: FF_X112_Y40_N31
\dm|r4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m2|stage3|f[0]~0_combout\,
	sload => VCC,
	ena => \dm|m4|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r4|Q\(0));

-- Location: LCCOMB_X113_Y40_N20
\dm_mux|f[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[0]~15_combout\ = (\alu_ins|add_ins|stage2|s~combout\ & ((\dm|r6|Q\(0)) # ((\alu_ins|add_ins|stage1|s~0_combout\)))) # (!\alu_ins|add_ins|stage2|s~combout\ & (((\dm|r4|Q\(0) & !\alu_ins|add_ins|stage1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r6|Q\(0),
	datab => \dm|r4|Q\(0),
	datac => \alu_ins|add_ins|stage2|s~combout\,
	datad => \alu_ins|add_ins|stage1|s~0_combout\,
	combout => \dm_mux|f[0]~15_combout\);

-- Location: LCCOMB_X113_Y40_N22
\dm_mux|f[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[0]~16_combout\ = (\alu_ins|add_ins|stage1|s~0_combout\ & ((\dm_mux|f[0]~15_combout\ & ((\dm|r7|Q\(0)))) # (!\dm_mux|f[0]~15_combout\ & (\dm|r5|Q\(0))))) # (!\alu_ins|add_ins|stage1|s~0_combout\ & (((\dm_mux|f[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r5|Q\(0),
	datab => \alu_ins|add_ins|stage1|s~0_combout\,
	datac => \dm|r7|Q\(0),
	datad => \dm_mux|f[0]~15_combout\,
	combout => \dm_mux|f[0]~16_combout\);

-- Location: FF_X110_Y38_N17
\dm|r0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \dm|m0|stage3|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r0|Q\(0));

-- Location: FF_X110_Y40_N23
\dm|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m2|stage3|f[0]~0_combout\,
	sload => VCC,
	ena => \dm|m2|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r2|Q\(0));

-- Location: FF_X110_Y38_N11
\dm|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \dm|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \dm|m3|stage3|f~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r3|Q\(0));

-- Location: LCCOMB_X110_Y38_N10
\dm_mux|f[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[0]~20_combout\ = (\dm_mux|f[1]~18_combout\ & (((\dm_mux|f[1]~19_combout\)))) # (!\dm_mux|f[1]~18_combout\ & ((\dm_mux|f[1]~19_combout\ & ((\dm|r3|Q\(0)))) # (!\dm_mux|f[1]~19_combout\ & (\dm|r2|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r2|Q\(0),
	datab => \dm_mux|f[1]~18_combout\,
	datac => \dm|r3|Q\(0),
	datad => \dm_mux|f[1]~19_combout\,
	combout => \dm_mux|f[0]~20_combout\);

-- Location: LCCOMB_X110_Y38_N16
\dm_mux|f[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[0]~21_combout\ = (\dm_mux|f[1]~18_combout\ & ((\dm_mux|f[0]~20_combout\ & ((\dm|r0|Q\(0)))) # (!\dm_mux|f[0]~20_combout\ & (\dm_mux|f[0]~16_combout\)))) # (!\dm_mux|f[1]~18_combout\ & (((\dm_mux|f[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm_mux|f[0]~16_combout\,
	datab => \dm_mux|f[1]~18_combout\,
	datac => \dm|r0|Q\(0),
	datad => \dm_mux|f[0]~20_combout\,
	combout => \dm_mux|f[0]~21_combout\);

-- Location: LCCOMB_X110_Y38_N6
\dm_mux|f[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[0]~22_combout\ = (\dm_mux|f[1]~14_combout\ & ((\dm_mux|f[0]~13_combout\) # ((\dm_mux|f[1]~11_combout\)))) # (!\dm_mux|f[1]~14_combout\ & (((!\dm_mux|f[1]~11_combout\ & \dm_mux|f[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm_mux|f[0]~13_combout\,
	datab => \dm_mux|f[1]~14_combout\,
	datac => \dm_mux|f[1]~11_combout\,
	datad => \dm_mux|f[0]~21_combout\,
	combout => \dm_mux|f[0]~22_combout\);

-- Location: LCCOMB_X110_Y38_N24
\dm_mux|f[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[0]~25_combout\ = (\dm_mux|f[1]~11_combout\ & ((\dm_mux|f[0]~22_combout\ & ((\dm_mux|f[0]~24_combout\))) # (!\dm_mux|f[0]~22_combout\ & (\dm|r1|Q\(0))))) # (!\dm_mux|f[1]~11_combout\ & (((\dm_mux|f[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r1|Q\(0),
	datab => \dm_mux|f[0]~24_combout\,
	datac => \dm_mux|f[1]~11_combout\,
	datad => \dm_mux|f[0]~22_combout\,
	combout => \dm_mux|f[0]~25_combout\);

-- Location: LCCOMB_X110_Y39_N26
\dm_mux|f[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[0]~26_combout\ = (\id|Equal2~0_combout\ & (\dm_mux|f[0]~25_combout\)) # (!\id|Equal2~0_combout\ & ((\alu_ins|mux4to1_ins|stage1|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dm_mux|f[0]~25_combout\,
	datac => \alu_ins|mux4to1_ins|stage1|f[0]~0_combout\,
	datad => \id|Equal2~0_combout\,
	combout => \dm_mux|f[0]~26_combout\);

-- Location: LCCOMB_X110_Y39_N20
\dm_mux|f[1]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[1]~59_combout\ = (\id|Equal2~0_combout\ & (((\dm_mux|f[1]~36_combout\)))) # (!\id|Equal2~0_combout\ & (\id|alu_temp[0]~10_combout\ & (\alu_ins|add_ins|stage2|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|alu_temp[0]~10_combout\,
	datab => \alu_ins|add_ins|stage2|s~combout\,
	datac => \id|Equal2~0_combout\,
	datad => \dm_mux|f[1]~36_combout\,
	combout => \dm_mux|f[1]~59_combout\);

-- Location: LCCOMB_X110_Y38_N28
\dm_mux|f[2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[2]~60_combout\ = (\id|Equal2~0_combout\ & (((\dm_mux|f[2]~46_combout\)))) # (!\id|Equal2~0_combout\ & (\id|alu_temp[0]~10_combout\ & (\alu_ins|add_ins|stage3|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal2~0_combout\,
	datab => \id|alu_temp[0]~10_combout\,
	datac => \alu_ins|add_ins|stage3|s~0_combout\,
	datad => \dm_mux|f[2]~46_combout\,
	combout => \dm_mux|f[2]~60_combout\);

-- Location: LCCOMB_X110_Y39_N2
\dm_mux|f[3]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm_mux|f[3]~61_combout\ = (\id|Equal2~0_combout\ & (((\dm_mux|f[3]~56_combout\)))) # (!\id|Equal2~0_combout\ & (\id|alu_temp[0]~10_combout\ & ((\alu_ins|add_ins|stage4|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|alu_temp[0]~10_combout\,
	datab => \dm_mux|f[3]~56_combout\,
	datac => \id|Equal2~0_combout\,
	datad => \alu_ins|add_ins|stage4|s~combout\,
	combout => \dm_mux|f[3]~61_combout\);

ww_current_pc(0) <= \current_pc[0]~output_o\;

ww_current_pc(1) <= \current_pc[1]~output_o\;

ww_current_pc(2) <= \current_pc[2]~output_o\;

ww_current_pc(3) <= \current_pc[3]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;
END structure;


