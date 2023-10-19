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

-- DATE "10/03/2023 16:37:01"

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
	current_pc : BUFFER std_logic_vector(3 DOWNTO 0);
	result : BUFFER std_logic_vector(3 DOWNTO 0)
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
SIGNAL \pc_mux|f~1_combout\ : std_logic;
SIGNAL \pc_mux|f~2_combout\ : std_logic;
SIGNAL \addpc|stage4|s~combout\ : std_logic;
SIGNAL \pc_mux|f~3_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage3|f[3]~40_combout\ : std_logic;
SIGNAL \id|alu_temp[1]~13_combout\ : std_logic;
SIGNAL \im|output[12]~1_combout\ : std_logic;
SIGNAL \im|output[31]~0_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage2|f[0]~9_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage2|f[0]~20_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage3|f[0]~31_combout\ : std_logic;
SIGNAL \id|alu_temp[2]~14_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage2|f[3]~3_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage2|f[3]~19_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage2|f[2]~15_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage2|f[2]~16_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage2|f[2]~21_combout\ : std_logic;
SIGNAL \rf|value2[2]~4_combout\ : std_logic;
SIGNAL \rf|value1[1]~1_combout\ : std_logic;
SIGNAL \rf|value2[2]~0_combout\ : std_logic;
SIGNAL \rf|value2[2]~3_combout\ : std_logic;
SIGNAL \rf|value2[2]~5_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f[1]~1_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage3|f[1]~17_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage3|f[1]~20_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage3|f[1]~16_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage3|f[1]~41_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage3|f[1]~42_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage3|f[1]~39_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~4_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf|value1[1]~4_combout\ : std_logic;
SIGNAL \rf|value2[1]~7_combout\ : std_logic;
SIGNAL \rf|value2[1]~6_combout\ : std_logic;
SIGNAL \rf|value2[1]~8_combout\ : std_logic;
SIGNAL \rf|value2[0]~1_combout\ : std_logic;
SIGNAL \rf|value2[0]~2_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage2|Cout~0_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage2|Cout~1_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage3|s~combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage3|f[2]~33_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~3_combout\ : std_logic;
SIGNAL \rf|value1[2]~2_combout\ : std_logic;
SIGNAL \rf|value1[2]~3_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage3|Cout~0_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage3|f[3]~34_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~2_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage4|s~4_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage4|s~3_combout\ : std_logic;
SIGNAL \alu_ins|add_ins|stage4|s~7_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage3|f[0]~38_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage3|f[0]~32_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|value1[0]~0_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage3|f[0]~36_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage3|f[0]~37_combout\ : std_logic;
SIGNAL \alu_ins|mux4to1_ins|stage3|f[3]~35_combout\ : std_logic;
SIGNAL \pc|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r1|Q\ : std_logic_vector(3 DOWNTO 0);

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
	i => \alu_ins|mux4to1_ins|stage3|f[0]~37_combout\,
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
	i => \alu_ins|mux4to1_ins|stage3|f[1]~39_combout\,
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
	i => \alu_ins|mux4to1_ins|stage3|f[2]~33_combout\,
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
	i => \alu_ins|mux4to1_ins|stage3|f[3]~35_combout\,
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

-- Location: LCCOMB_X114_Y41_N4
\pc_mux|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~0_combout\ = (!\reset~input_o\ & !\pc|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \pc|Q\(0),
	combout => \pc_mux|f~0_combout\);

-- Location: FF_X113_Y41_N9
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

-- Location: LCCOMB_X114_Y41_N30
\pc_mux|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~1_combout\ = (!\reset~input_o\ & (\pc|Q\(1) $ (\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \pc_mux|f~1_combout\);

-- Location: FF_X113_Y41_N7
\pc|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \pc_mux|f~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(1));

-- Location: LCCOMB_X114_Y41_N8
\pc_mux|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~2_combout\ = (!\reset~input_o\ & (\pc|Q\(2) $ (((\pc|Q\(1) & \pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pc|Q\(2),
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \pc_mux|f~2_combout\);

-- Location: FF_X113_Y41_N5
\pc|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \pc_mux|f~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(2));

-- Location: LCCOMB_X114_Y41_N26
\addpc|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage4|s~combout\ = \pc|Q\(3) $ (((\pc|Q\(0) & (\pc|Q\(2) & \pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(2),
	datac => \pc|Q\(1),
	datad => \pc|Q\(3),
	combout => \addpc|stage4|s~combout\);

-- Location: LCCOMB_X114_Y41_N12
\pc_mux|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~3_combout\ = (\addpc|stage4|s~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addpc|stage4|s~combout\,
	datac => \reset~input_o\,
	combout => \pc_mux|f~3_combout\);

-- Location: FF_X113_Y41_N19
\pc|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \pc_mux|f~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(3));

-- Location: LCCOMB_X114_Y41_N10
\alu_ins|mux4to1_ins|stage3|f[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage3|f[3]~40_combout\ = (!\pc|Q\(0) & (!\pc|Q\(3) & (\pc|Q\(2) $ (\pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(2),
	datac => \pc|Q\(1),
	datad => \pc|Q\(3),
	combout => \alu_ins|mux4to1_ins|stage3|f[3]~40_combout\);

-- Location: LCCOMB_X114_Y41_N24
\id|alu_temp[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|alu_temp[1]~13_combout\ = (\pc|Q\(2) & (!\pc|Q\(3) & (\pc|Q\(0) $ (\pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \id|alu_temp[1]~13_combout\);

-- Location: LCCOMB_X111_Y41_N8
\im|output[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[12]~1_combout\ = (!\pc|Q\(3) & (\pc|Q\(1) $ (((\pc|Q\(2) & \pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(2),
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \im|output[12]~1_combout\);

-- Location: LCCOMB_X111_Y41_N28
\im|output[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[31]~0_combout\ = (!\pc|Q\(3) & ((\pc|Q\(2) & ((!\pc|Q\(0)) # (!\pc|Q\(1)))) # (!\pc|Q\(2) & ((\pc|Q\(1)) # (\pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(2),
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \im|output[31]~0_combout\);

-- Location: LCCOMB_X111_Y41_N0
\rf|m3|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((!\im|output[12]~1_combout\ & \im|output[31]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \im|output[12]~1_combout\,
	datad => \im|output[31]~0_combout\,
	combout => \rf|m3|stage3|f[0]~0_combout\);

-- Location: FF_X112_Y41_N15
\rf|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m1|stage3|f[0]~0_combout\,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(0));

-- Location: LCCOMB_X113_Y41_N16
\alu_ins|mux4to1_ins|stage2|f[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage2|f[0]~9_combout\ = (\pc|Q\(1) & (((\rf|r1|Q\(0)) # (\rf|r3|Q\(0))))) # (!\pc|Q\(1) & (\pc|Q\(2) & (\rf|r1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \rf|r1|Q\(0),
	datad => \rf|r3|Q\(0),
	combout => \alu_ins|mux4to1_ins|stage2|f[0]~9_combout\);

-- Location: LCCOMB_X114_Y41_N2
\alu_ins|mux4to1_ins|stage2|f[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage2|f[0]~20_combout\ = (!\pc|Q\(3) & (\alu_ins|mux4to1_ins|stage2|f[0]~9_combout\ & !\pc|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(3),
	datac => \alu_ins|mux4to1_ins|stage2|f[0]~9_combout\,
	datad => \pc|Q\(0),
	combout => \alu_ins|mux4to1_ins|stage2|f[0]~20_combout\);

-- Location: LCCOMB_X114_Y41_N20
\alu_ins|mux4to1_ins|stage3|f[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage3|f[0]~31_combout\ = (\id|alu_temp[1]~13_combout\ & \alu_ins|mux4to1_ins|stage2|f[0]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id|alu_temp[1]~13_combout\,
	datad => \alu_ins|mux4to1_ins|stage2|f[0]~20_combout\,
	combout => \alu_ins|mux4to1_ins|stage3|f[0]~31_combout\);

-- Location: LCCOMB_X113_Y41_N2
\id|alu_temp[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|alu_temp[2]~14_combout\ = (!\pc|Q\(3) & ((\pc|Q\(2) & (!\pc|Q\(1) & !\pc|Q\(0))) # (!\pc|Q\(2) & ((\pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \pc|Q\(3),
	combout => \id|alu_temp[2]~14_combout\);

-- Location: FF_X112_Y41_N29
\rf|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m1|stage3|f~2_combout\,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(3));

-- Location: LCCOMB_X113_Y41_N30
\alu_ins|mux4to1_ins|stage2|f[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage2|f[3]~3_combout\ = (\pc|Q\(1) & (((\rf|r1|Q\(3)) # (\rf|r3|Q\(3))))) # (!\pc|Q\(1) & (\pc|Q\(2) & (\rf|r1|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \rf|r1|Q\(3),
	datad => \rf|r3|Q\(3),
	combout => \alu_ins|mux4to1_ins|stage2|f[3]~3_combout\);

-- Location: LCCOMB_X111_Y41_N24
\alu_ins|mux4to1_ins|stage2|f[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage2|f[3]~19_combout\ = (!\pc|Q\(3) & (\alu_ins|mux4to1_ins|stage2|f[3]~3_combout\ & !\pc|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datac => \alu_ins|mux4to1_ins|stage2|f[3]~3_combout\,
	datad => \pc|Q\(0),
	combout => \alu_ins|mux4to1_ins|stage2|f[3]~19_combout\);

-- Location: FF_X112_Y41_N3
\rf|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(2));

-- Location: LCCOMB_X111_Y41_N4
\alu_ins|mux4to1_ins|stage2|f[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage2|f[2]~15_combout\ = (\pc|Q\(0) & (((!\pc|Q\(1) & !\pc|Q\(2))))) # (!\pc|Q\(0) & (\rf|r1|Q\(2) & ((\pc|Q\(1)) # (\pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(2),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \alu_ins|mux4to1_ins|stage2|f[2]~15_combout\);

-- Location: LCCOMB_X111_Y41_N2
\alu_ins|mux4to1_ins|stage2|f[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage2|f[2]~16_combout\ = (\pc|Q\(1) & (((!\pc|Q\(0))))) # (!\pc|Q\(1) & ((\pc|Q\(2) & (\rf|r1|Q\(2) & !\pc|Q\(0))) # (!\pc|Q\(2) & ((\pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(2),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \alu_ins|mux4to1_ins|stage2|f[2]~16_combout\);

-- Location: LCCOMB_X111_Y41_N16
\alu_ins|mux4to1_ins|stage2|f[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage2|f[2]~21_combout\ = (!\pc|Q\(3) & ((\rf|r3|Q\(2) & ((\alu_ins|mux4to1_ins|stage2|f[2]~16_combout\))) # (!\rf|r3|Q\(2) & (\alu_ins|mux4to1_ins|stage2|f[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \rf|r3|Q\(2),
	datac => \alu_ins|mux4to1_ins|stage2|f[2]~15_combout\,
	datad => \alu_ins|mux4to1_ins|stage2|f[2]~16_combout\,
	combout => \alu_ins|mux4to1_ins|stage2|f[2]~21_combout\);

-- Location: LCCOMB_X113_Y41_N4
\rf|value2[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~4_combout\ = (!\pc|Q\(3) & (\pc|Q\(2) & !\pc|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(3),
	datac => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \rf|value2[2]~4_combout\);

-- Location: LCCOMB_X113_Y41_N12
\rf|value1[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~1_combout\ = (!\pc|Q\(3) & \pc|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(3),
	datad => \pc|Q\(1),
	combout => \rf|value1[1]~1_combout\);

-- Location: LCCOMB_X113_Y41_N22
\rf|value2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~0_combout\ = (!\pc|Q\(3) & (!\pc|Q\(2) & (\pc|Q\(0) & !\pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \rf|value2[2]~0_combout\);

-- Location: LCCOMB_X112_Y41_N2
\rf|value2[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~3_combout\ = (\rf|value2[2]~0_combout\) # ((!\pc|Q\(0) & (\rf|value1[1]~1_combout\ & \rf|r3|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \rf|value1[1]~1_combout\,
	datac => \rf|r3|Q\(2),
	datad => \rf|value2[2]~0_combout\,
	combout => \rf|value2[2]~3_combout\);

-- Location: LCCOMB_X112_Y41_N22
\rf|value2[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~5_combout\ = (\rf|value2[2]~3_combout\) # ((!\pc|Q\(0) & (\rf|r1|Q\(2) & \rf|value2[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \rf|r1|Q\(2),
	datac => \rf|value2[2]~4_combout\,
	datad => \rf|value2[2]~3_combout\,
	combout => \rf|value2[2]~5_combout\);

-- Location: LCCOMB_X113_Y41_N26
\rf|m3|stage3|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f[1]~1_combout\ = (\reset~input_o\) # (\alu_ins|mux4to1_ins|stage3|f[1]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \alu_ins|mux4to1_ins|stage3|f[1]~39_combout\,
	combout => \rf|m3|stage3|f[1]~1_combout\);

-- Location: FF_X113_Y41_N27
\rf|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m3|stage3|f[1]~1_combout\,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(1));

-- Location: LCCOMB_X114_Y41_N28
\alu_ins|mux4to1_ins|stage3|f[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage3|f[1]~17_combout\ = (\pc|Q\(1) & ((\rf|r3|Q\(1) & ((\pc|Q\(2)) # (!\rf|r1|Q\(1)))) # (!\rf|r3|Q\(1) & ((\rf|r1|Q\(1)))))) # (!\pc|Q\(1) & (((\pc|Q\(2) & !\rf|r1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(1),
	datad => \rf|r1|Q\(1),
	combout => \alu_ins|mux4to1_ins|stage3|f[1]~17_combout\);

-- Location: LCCOMB_X114_Y41_N22
\alu_ins|mux4to1_ins|stage3|f[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage3|f[1]~20_combout\ = (\rf|r1|Q\(1) & (\pc|Q\(1) & ((\rf|r3|Q\(1)) # (\pc|Q\(2))))) # (!\rf|r1|Q\(1) & (\pc|Q\(2) $ (((!\rf|r3|Q\(1) & \pc|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(1),
	datad => \rf|r1|Q\(1),
	combout => \alu_ins|mux4to1_ins|stage3|f[1]~20_combout\);

-- Location: LCCOMB_X114_Y41_N6
\alu_ins|mux4to1_ins|stage3|f[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage3|f[1]~16_combout\ = (\rf|r1|Q\(1) & ((\pc|Q\(2)) # ((!\rf|r3|Q\(1) & \pc|Q\(1))))) # (!\rf|r1|Q\(1) & (\rf|r3|Q\(1) & (\pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(1),
	datab => \pc|Q\(1),
	datac => \rf|r1|Q\(1),
	datad => \pc|Q\(2),
	combout => \alu_ins|mux4to1_ins|stage3|f[1]~16_combout\);

-- Location: LCCOMB_X114_Y41_N0
\alu_ins|mux4to1_ins|stage3|f[1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage3|f[1]~41_combout\ = (\rf|r1|Q\(0) & (\rf|r3|Q\(0) $ ((!\alu_ins|mux4to1_ins|stage3|f[1]~20_combout\)))) # (!\rf|r1|Q\(0) & (((\alu_ins|mux4to1_ins|stage3|f[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(0),
	datab => \rf|r3|Q\(0),
	datac => \alu_ins|mux4to1_ins|stage3|f[1]~20_combout\,
	datad => \alu_ins|mux4to1_ins|stage3|f[1]~16_combout\,
	combout => \alu_ins|mux4to1_ins|stage3|f[1]~41_combout\);

-- Location: LCCOMB_X114_Y41_N18
\alu_ins|mux4to1_ins|stage3|f[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage3|f[1]~42_combout\ = (\rf|r1|Q\(0) & ((\alu_ins|mux4to1_ins|stage3|f[1]~17_combout\ & ((\alu_ins|mux4to1_ins|stage3|f[1]~20_combout\) # (\alu_ins|mux4to1_ins|stage3|f[1]~41_combout\))) # 
-- (!\alu_ins|mux4to1_ins|stage3|f[1]~17_combout\ & (\alu_ins|mux4to1_ins|stage3|f[1]~20_combout\ & \alu_ins|mux4to1_ins|stage3|f[1]~41_combout\)))) # (!\rf|r1|Q\(0) & (((\alu_ins|mux4to1_ins|stage3|f[1]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(0),
	datab => \alu_ins|mux4to1_ins|stage3|f[1]~17_combout\,
	datac => \alu_ins|mux4to1_ins|stage3|f[1]~20_combout\,
	datad => \alu_ins|mux4to1_ins|stage3|f[1]~41_combout\,
	combout => \alu_ins|mux4to1_ins|stage3|f[1]~42_combout\);

-- Location: LCCOMB_X114_Y41_N16
\alu_ins|mux4to1_ins|stage3|f[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage3|f[1]~39_combout\ = (!\pc|Q\(0) & (\alu_ins|mux4to1_ins|stage3|f[1]~42_combout\ & !\pc|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \alu_ins|mux4to1_ins|stage3|f[1]~42_combout\,
	datad => \pc|Q\(3),
	combout => \alu_ins|mux4to1_ins|stage3|f[1]~39_combout\);

-- Location: LCCOMB_X114_Y41_N14
\rf|m1|stage3|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~4_combout\ = (!\reset~input_o\ & \alu_ins|mux4to1_ins|stage3|f[1]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \alu_ins|mux4to1_ins|stage3|f[1]~39_combout\,
	combout => \rf|m1|stage3|f~4_combout\);

-- Location: LCCOMB_X111_Y41_N18
\rf|m1|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((\im|output[12]~1_combout\ & \im|output[31]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \im|output[12]~1_combout\,
	datad => \im|output[31]~0_combout\,
	combout => \rf|m1|stage3|f[0]~1_combout\);

-- Location: FF_X114_Y41_N15
\rf|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m1|stage3|f~4_combout\,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(1));

-- Location: LCCOMB_X113_Y41_N24
\rf|value1[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~4_combout\ = (\rf|r1|Q\(1) & (\rf|value1[1]~1_combout\ & ((!\pc|Q\(2)) # (!\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(2),
	datac => \rf|r1|Q\(1),
	datad => \rf|value1[1]~1_combout\,
	combout => \rf|value1[1]~4_combout\);

-- Location: LCCOMB_X113_Y41_N14
\rf|value2[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~7_combout\ = (\pc|Q\(0)) # (\pc|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \rf|value2[1]~7_combout\);

-- Location: LCCOMB_X113_Y41_N0
\rf|value2[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~6_combout\ = (\pc|Q\(1) & ((\pc|Q\(0) & ((!\pc|Q\(2)))) # (!\pc|Q\(0) & (\rf|r3|Q\(1))))) # (!\pc|Q\(1) & (((\pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(1),
	datab => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \rf|value2[1]~6_combout\);

-- Location: LCCOMB_X113_Y41_N10
\rf|value2[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~8_combout\ = (!\pc|Q\(3) & (\rf|value2[1]~6_combout\ & ((\rf|r1|Q\(1)) # (\rf|value2[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \rf|r1|Q\(1),
	datac => \rf|value2[1]~7_combout\,
	datad => \rf|value2[1]~6_combout\,
	combout => \rf|value2[1]~8_combout\);

-- Location: LCCOMB_X112_Y41_N4
\rf|value2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~1_combout\ = (\pc|Q\(1) & (\rf|r3|Q\(0))) # (!\pc|Q\(1) & (((\rf|r1|Q\(0) & \pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \rf|r3|Q\(0),
	datac => \rf|r1|Q\(0),
	datad => \pc|Q\(2),
	combout => \rf|value2[0]~1_combout\);

-- Location: LCCOMB_X112_Y41_N20
\rf|value2[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~2_combout\ = (\rf|value2[2]~0_combout\) # ((!\pc|Q\(0) & (!\pc|Q\(3) & \rf|value2[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(3),
	datac => \rf|value2[0]~1_combout\,
	datad => \rf|value2[2]~0_combout\,
	combout => \rf|value2[0]~2_combout\);

-- Location: LCCOMB_X112_Y41_N12
\alu_ins|add_ins|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage2|Cout~0_combout\ = (\rf|value2[0]~2_combout\ & (((!\pc|Q\(3) & \rf|value1[0]~0_combout\)))) # (!\rf|value2[0]~2_combout\ & (\id|alu_temp[2]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|alu_temp[2]~14_combout\,
	datab => \pc|Q\(3),
	datac => \rf|value1[0]~0_combout\,
	datad => \rf|value2[0]~2_combout\,
	combout => \alu_ins|add_ins|stage2|Cout~0_combout\);

-- Location: LCCOMB_X112_Y41_N18
\alu_ins|add_ins|stage2|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage2|Cout~1_combout\ = (\rf|value1[1]~4_combout\ & ((\alu_ins|add_ins|stage2|Cout~0_combout\) # (\id|alu_temp[2]~14_combout\ $ (\rf|value2[1]~8_combout\)))) # (!\rf|value1[1]~4_combout\ & (\alu_ins|add_ins|stage2|Cout~0_combout\ & 
-- (\id|alu_temp[2]~14_combout\ $ (\rf|value2[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|alu_temp[2]~14_combout\,
	datab => \rf|value1[1]~4_combout\,
	datac => \rf|value2[1]~8_combout\,
	datad => \alu_ins|add_ins|stage2|Cout~0_combout\,
	combout => \alu_ins|add_ins|stage2|Cout~1_combout\);

-- Location: LCCOMB_X112_Y41_N16
\alu_ins|add_ins|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage3|s~combout\ = \rf|value1[2]~3_combout\ $ (\id|alu_temp[2]~14_combout\ $ (\rf|value2[2]~5_combout\ $ (\alu_ins|add_ins|stage2|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[2]~3_combout\,
	datab => \id|alu_temp[2]~14_combout\,
	datac => \rf|value2[2]~5_combout\,
	datad => \alu_ins|add_ins|stage2|Cout~1_combout\,
	combout => \alu_ins|add_ins|stage3|s~combout\);

-- Location: LCCOMB_X112_Y41_N6
\alu_ins|mux4to1_ins|stage3|f[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage3|f[2]~33_combout\ = (\id|alu_temp[1]~13_combout\ & ((\alu_ins|mux4to1_ins|stage2|f[2]~21_combout\) # ((\alu_ins|mux4to1_ins|stage3|f[3]~40_combout\ & \alu_ins|add_ins|stage3|s~combout\)))) # (!\id|alu_temp[1]~13_combout\ & 
-- (\alu_ins|mux4to1_ins|stage3|f[3]~40_combout\ & ((\alu_ins|add_ins|stage3|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|alu_temp[1]~13_combout\,
	datab => \alu_ins|mux4to1_ins|stage3|f[3]~40_combout\,
	datac => \alu_ins|mux4to1_ins|stage2|f[2]~21_combout\,
	datad => \alu_ins|add_ins|stage3|s~combout\,
	combout => \alu_ins|mux4to1_ins|stage3|f[2]~33_combout\);

-- Location: LCCOMB_X112_Y41_N8
\rf|m1|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~3_combout\ = (!\reset~input_o\ & \alu_ins|mux4to1_ins|stage3|f[2]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \alu_ins|mux4to1_ins|stage3|f[2]~33_combout\,
	combout => \rf|m1|stage3|f~3_combout\);

-- Location: FF_X112_Y41_N9
\rf|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m1|stage3|f~3_combout\,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(2));

-- Location: LCCOMB_X113_Y41_N28
\rf|value1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~2_combout\ = (\pc|Q\(1) & (\rf|r1|Q\(2) & ((!\pc|Q\(0)) # (!\pc|Q\(2))))) # (!\pc|Q\(1) & (((\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(1),
	datab => \pc|Q\(2),
	datac => \rf|r1|Q\(2),
	datad => \pc|Q\(0),
	combout => \rf|value1[2]~2_combout\);

-- Location: LCCOMB_X112_Y41_N26
\rf|value1[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~3_combout\ = (!\pc|Q\(3) & \rf|value1[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datad => \rf|value1[2]~2_combout\,
	combout => \rf|value1[2]~3_combout\);

-- Location: LCCOMB_X112_Y41_N0
\alu_ins|add_ins|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage3|Cout~0_combout\ = (\rf|value1[2]~3_combout\ & ((\alu_ins|add_ins|stage2|Cout~1_combout\) # (\id|alu_temp[2]~14_combout\ $ (\rf|value2[2]~5_combout\)))) # (!\rf|value1[2]~3_combout\ & (\alu_ins|add_ins|stage2|Cout~1_combout\ & 
-- (\id|alu_temp[2]~14_combout\ $ (\rf|value2[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[2]~3_combout\,
	datab => \id|alu_temp[2]~14_combout\,
	datac => \rf|value2[2]~5_combout\,
	datad => \alu_ins|add_ins|stage2|Cout~1_combout\,
	combout => \alu_ins|add_ins|stage3|Cout~0_combout\);

-- Location: LCCOMB_X112_Y41_N24
\alu_ins|mux4to1_ins|stage3|f[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage3|f[3]~34_combout\ = (\alu_ins|mux4to1_ins|stage3|f[3]~40_combout\ & (\id|alu_temp[2]~14_combout\ $ (\alu_ins|add_ins|stage4|s~7_combout\ $ (\alu_ins|add_ins|stage3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|alu_temp[2]~14_combout\,
	datab => \alu_ins|add_ins|stage4|s~7_combout\,
	datac => \alu_ins|mux4to1_ins|stage3|f[3]~40_combout\,
	datad => \alu_ins|add_ins|stage3|Cout~0_combout\,
	combout => \alu_ins|mux4to1_ins|stage3|f[3]~34_combout\);

-- Location: LCCOMB_X112_Y41_N28
\rf|m1|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~2_combout\ = (!\reset~input_o\ & ((\alu_ins|mux4to1_ins|stage3|f[3]~34_combout\) # ((\alu_ins|mux4to1_ins|stage2|f[3]~19_combout\ & \id|alu_temp[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \alu_ins|mux4to1_ins|stage2|f[3]~19_combout\,
	datac => \id|alu_temp[1]~13_combout\,
	datad => \alu_ins|mux4to1_ins|stage3|f[3]~34_combout\,
	combout => \rf|m1|stage3|f~2_combout\);

-- Location: FF_X112_Y41_N27
\rf|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(3));

-- Location: LCCOMB_X113_Y41_N8
\alu_ins|add_ins|stage4|s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage4|s~4_combout\ = (\pc|Q\(2) & (!\pc|Q\(0) & (\rf|r1|Q\(3) $ (\pc|Q\(1))))) # (!\pc|Q\(2) & (\pc|Q\(1) & (\rf|r1|Q\(3) $ (!\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(3),
	datab => \pc|Q\(2),
	datac => \pc|Q\(0),
	datad => \pc|Q\(1),
	combout => \alu_ins|add_ins|stage4|s~4_combout\);

-- Location: LCCOMB_X113_Y41_N6
\alu_ins|add_ins|stage4|s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage4|s~3_combout\ = (\rf|r1|Q\(3) & ((\pc|Q\(2) & ((!\pc|Q\(0)))) # (!\pc|Q\(2) & (\pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(3),
	datab => \pc|Q\(2),
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \alu_ins|add_ins|stage4|s~3_combout\);

-- Location: LCCOMB_X113_Y41_N18
\alu_ins|add_ins|stage4|s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|add_ins|stage4|s~7_combout\ = (!\pc|Q\(3) & ((\rf|r3|Q\(3) & (\alu_ins|add_ins|stage4|s~4_combout\)) # (!\rf|r3|Q\(3) & ((\alu_ins|add_ins|stage4|s~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|add_ins|stage4|s~4_combout\,
	datab => \rf|r3|Q\(3),
	datac => \pc|Q\(3),
	datad => \alu_ins|add_ins|stage4|s~3_combout\,
	combout => \alu_ins|add_ins|stage4|s~7_combout\);

-- Location: LCCOMB_X111_Y41_N26
\alu_ins|mux4to1_ins|stage3|f[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage3|f[0]~38_combout\ = (\pc|Q\(3)) # ((\pc|Q\(1) & (\pc|Q\(0))) # (!\pc|Q\(1) & ((!\pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(3),
	combout => \alu_ins|mux4to1_ins|stage3|f[0]~38_combout\);

-- Location: LCCOMB_X112_Y41_N10
\alu_ins|mux4to1_ins|stage3|f[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage3|f[0]~32_combout\ = (\alu_ins|mux4to1_ins|stage3|f[0]~38_combout\ & (\id|alu_temp[2]~14_combout\ $ (\alu_ins|add_ins|stage4|s~7_combout\ $ (\alu_ins|add_ins|stage3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|alu_temp[2]~14_combout\,
	datab => \alu_ins|add_ins|stage4|s~7_combout\,
	datac => \alu_ins|mux4to1_ins|stage3|f[0]~38_combout\,
	datad => \alu_ins|add_ins|stage3|Cout~0_combout\,
	combout => \alu_ins|mux4to1_ins|stage3|f[0]~32_combout\);

-- Location: LCCOMB_X112_Y41_N14
\rf|m1|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\alu_ins|mux4to1_ins|stage3|f[0]~36_combout\) # ((\alu_ins|mux4to1_ins|stage3|f[0]~31_combout\) # (\alu_ins|mux4to1_ins|stage3|f[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \alu_ins|mux4to1_ins|stage3|f[0]~36_combout\,
	datac => \alu_ins|mux4to1_ins|stage3|f[0]~31_combout\,
	datad => \alu_ins|mux4to1_ins|stage3|f[0]~32_combout\,
	combout => \rf|m1|stage3|f[0]~0_combout\);

-- Location: FF_X112_Y41_N5
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

-- Location: LCCOMB_X113_Y41_N20
\rf|value1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~0_combout\ = (\pc|Q\(1) & (\rf|r1|Q\(0) & ((!\pc|Q\(2)) # (!\pc|Q\(0))))) # (!\pc|Q\(1) & (\pc|Q\(0) & (\pc|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(2),
	datac => \rf|r1|Q\(0),
	datad => \pc|Q\(1),
	combout => \rf|value1[0]~0_combout\);

-- Location: LCCOMB_X112_Y41_N30
\alu_ins|mux4to1_ins|stage3|f[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage3|f[0]~36_combout\ = (\alu_ins|mux4to1_ins|stage3|f[3]~40_combout\ & (\rf|value2[0]~2_combout\ $ (((!\pc|Q\(3) & \rf|value1[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \alu_ins|mux4to1_ins|stage3|f[3]~40_combout\,
	datac => \rf|value1[0]~0_combout\,
	datad => \rf|value2[0]~2_combout\,
	combout => \alu_ins|mux4to1_ins|stage3|f[0]~36_combout\);

-- Location: LCCOMB_X111_Y41_N14
\alu_ins|mux4to1_ins|stage3|f[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage3|f[0]~37_combout\ = (\alu_ins|mux4to1_ins|stage3|f[0]~36_combout\) # ((\alu_ins|mux4to1_ins|stage3|f[0]~32_combout\) # ((\alu_ins|mux4to1_ins|stage2|f[0]~20_combout\ & \id|alu_temp[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|mux4to1_ins|stage3|f[0]~36_combout\,
	datab => \alu_ins|mux4to1_ins|stage3|f[0]~32_combout\,
	datac => \alu_ins|mux4to1_ins|stage2|f[0]~20_combout\,
	datad => \id|alu_temp[1]~13_combout\,
	combout => \alu_ins|mux4to1_ins|stage3|f[0]~37_combout\);

-- Location: LCCOMB_X111_Y41_N6
\alu_ins|mux4to1_ins|stage3|f[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|mux4to1_ins|stage3|f[3]~35_combout\ = (\alu_ins|mux4to1_ins|stage3|f[3]~34_combout\) # ((\alu_ins|mux4to1_ins|stage2|f[3]~19_combout\ & \id|alu_temp[1]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_ins|mux4to1_ins|stage2|f[3]~19_combout\,
	datac => \alu_ins|mux4to1_ins|stage3|f[3]~34_combout\,
	datad => \id|alu_temp[1]~13_combout\,
	combout => \alu_ins|mux4to1_ins|stage3|f[3]~35_combout\);

ww_current_pc(0) <= \current_pc[0]~output_o\;

ww_current_pc(1) <= \current_pc[1]~output_o\;

ww_current_pc(2) <= \current_pc[2]~output_o\;

ww_current_pc(3) <= \current_pc[3]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;
END structure;


