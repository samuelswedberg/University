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

-- DATE "09/19/2023 16:44:33"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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
SIGNAL \addpc|stage2|s~combout\ : std_logic;
SIGNAL \addpc|stage3|s~combout\ : std_logic;
SIGNAL \addpc|stage4|s~combout\ : std_logic;
SIGNAL \rf|value1[0]~4_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|r3|Q[0]~feeder_combout\ : std_logic;
SIGNAL \im|output[22]~4_combout\ : std_logic;
SIGNAL \im|output[21]~3_combout\ : std_logic;
SIGNAL \im|output[23]~2_combout\ : std_logic;
SIGNAL \im|output[19]~0_combout\ : std_logic;
SIGNAL \rf|stage_dec_write|s1|y[0]~0_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|value1[0]~0_combout\ : std_logic;
SIGNAL \rf|r1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf|value2[0]~0_combout\ : std_logic;
SIGNAL \rf|m5|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|m5|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf|r2|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f~10_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f~8_combout\ : std_logic;
SIGNAL \rf|m4|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|value1[0]~1_combout\ : std_logic;
SIGNAL \rf|value1[0]~2_combout\ : std_logic;
SIGNAL \rf|value1[0]~3_combout\ : std_logic;
SIGNAL \rf|value1[0]~5_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|value2[0]~1_combout\ : std_logic;
SIGNAL \rf|value2[0]~3_combout\ : std_logic;
SIGNAL \rf|value2[0]~2_combout\ : std_logic;
SIGNAL \rf|value2[0]~4_combout\ : std_logic;
SIGNAL \rf|value2[0]~5_combout\ : std_logic;
SIGNAL \add_ins|stage1|s~0_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[1]~9_combout\ : std_logic;
SIGNAL \rf|r3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[1]~6_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~2_combout\ : std_logic;
SIGNAL \rf|value1[1]~7_combout\ : std_logic;
SIGNAL \rf|r2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[1]~8_combout\ : std_logic;
SIGNAL \rf|value1[1]~9_combout\ : std_logic;
SIGNAL \rf|value1[1]~10_combout\ : std_logic;
SIGNAL \im|output[1]~1_combout\ : std_logic;
SIGNAL \rf|value2[1]~6_combout\ : std_logic;
SIGNAL \rf|value2[1]~7_combout\ : std_logic;
SIGNAL \rf|value2[1]~8_combout\ : std_logic;
SIGNAL \add_ins|stage1|Cout~3_combout\ : std_logic;
SIGNAL \id|Equal1~0_combout\ : std_logic;
SIGNAL \add_ins|stage1|Cout~2_combout\ : std_logic;
SIGNAL \add_ins|stage2|s~combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~3_combout\ : std_logic;
SIGNAL \rf|m4|stage3|f[2]~1_combout\ : std_logic;
SIGNAL \rf|value2[2]~9_combout\ : std_logic;
SIGNAL \rf|r1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[2]~10_combout\ : std_logic;
SIGNAL \rf|value2[2]~11_combout\ : std_logic;
SIGNAL \rf|value2[2]~12_combout\ : std_logic;
SIGNAL \rf|value1[2]~11_combout\ : std_logic;
SIGNAL \rf|r2|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[2]~12_combout\ : std_logic;
SIGNAL \rf|value1[2]~13_combout\ : std_logic;
SIGNAL \rf|value1[2]~14_combout\ : std_logic;
SIGNAL \rf|value1[2]~15_combout\ : std_logic;
SIGNAL \add_ins|stage2|Cout~0_combout\ : std_logic;
SIGNAL \add_ins|stage3|s~combout\ : std_logic;
SIGNAL \add_ins|stage3|Cout~0_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~4_combout\ : std_logic;
SIGNAL \rf|r1|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|r3|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[3]~13_combout\ : std_logic;
SIGNAL \rf|value2[3]~14_combout\ : std_logic;
SIGNAL \rf|value2[3]~15_combout\ : std_logic;
SIGNAL \rf|value1[3]~16_combout\ : std_logic;
SIGNAL \rf|r2|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[3]~17_combout\ : std_logic;
SIGNAL \rf|value1[3]~18_combout\ : std_logic;
SIGNAL \rf|value1[3]~19_combout\ : std_logic;
SIGNAL \add_ins|stage4|s~0_combout\ : std_logic;
SIGNAL \add_ins|stage4|s~combout\ : std_logic;
SIGNAL \pc|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \add_ins|z\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r5|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r0|Q\ : std_logic_vector(3 DOWNTO 0);

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
	i => \add_ins|stage1|s~0_combout\,
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
	i => \add_ins|stage2|s~combout\,
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
	i => \add_ins|stage3|s~combout\,
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
	i => \add_ins|stage4|s~combout\,
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

-- Location: LCCOMB_X106_Y40_N8
\pc_mux|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~0_combout\ = (!\pc|Q\(0) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(0),
	datad => \reset~input_o\,
	combout => \pc_mux|f~0_combout\);

-- Location: FF_X106_Y40_N9
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

-- Location: LCCOMB_X110_Y40_N28
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

-- Location: FF_X110_Y40_N29
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

-- Location: LCCOMB_X110_Y40_N30
\addpc|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage3|s~combout\ = \pc|Q\(2) $ (((\pc|Q\(1) & \pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \addpc|stage3|s~combout\);

-- Location: FF_X110_Y40_N31
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

-- Location: LCCOMB_X110_Y40_N20
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

-- Location: FF_X110_Y40_N21
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

-- Location: LCCOMB_X107_Y40_N0
\rf|value1[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~4_combout\ = (\pc|Q\(1) & \pc|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \rf|value1[0]~4_combout\);

-- Location: LCCOMB_X108_Y40_N0
\rf|m1|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~0_combout\ = (\reset~input_o\) # (\rf|value1[0]~5_combout\ $ (((!\pc|Q\(3) & \rf|value2[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \reset~input_o\,
	datac => \rf|value2[0]~5_combout\,
	datad => \rf|value1[0]~5_combout\,
	combout => \rf|m1|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X109_Y40_N8
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

-- Location: LCCOMB_X106_Y40_N0
\im|output[22]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[22]~4_combout\ = (!\pc|Q\(1) & (!\pc|Q\(3) & ((\pc|Q\(0)) # (\pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(2),
	datac => \pc|Q\(1),
	datad => \pc|Q\(3),
	combout => \im|output[22]~4_combout\);

-- Location: LCCOMB_X106_Y40_N22
\im|output[21]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[21]~3_combout\ = (!\pc|Q\(0) & (!\pc|Q\(3) & (\pc|Q\(1) $ (\pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(3),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \im|output[21]~3_combout\);

-- Location: LCCOMB_X106_Y40_N4
\im|output[23]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[23]~2_combout\ = (!\pc|Q\(2) & (!\pc|Q\(3) & ((\pc|Q\(0)) # (\pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(2),
	datac => \pc|Q\(1),
	datad => \pc|Q\(3),
	combout => \im|output[23]~2_combout\);

-- Location: LCCOMB_X107_Y40_N24
\im|output[19]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[19]~0_combout\ = (!\pc|Q\(3) & ((\pc|Q\(1) & ((!\pc|Q\(2)))) # (!\pc|Q\(1) & ((\pc|Q\(0)) # (\pc|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(3),
	datad => \pc|Q\(2),
	combout => \im|output[19]~0_combout\);

-- Location: LCCOMB_X106_Y40_N6
\rf|stage_dec_write|s1|y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|stage_dec_write|s1|y[0]~0_combout\ = (!\im|output[21]~3_combout\ & (\im|output[23]~2_combout\ & \im|output[19]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[21]~3_combout\,
	datab => \im|output[23]~2_combout\,
	datad => \im|output[19]~0_combout\,
	combout => \rf|stage_dec_write|s1|y[0]~0_combout\);

-- Location: LCCOMB_X109_Y40_N22
\rf|m3|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((!\im|output[22]~4_combout\ & \rf|stage_dec_write|s1|y[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \im|output[22]~4_combout\,
	datad => \rf|stage_dec_write|s1|y[0]~0_combout\,
	combout => \rf|m3|stage3|f[0]~0_combout\);

-- Location: FF_X109_Y40_N9
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

-- Location: LCCOMB_X110_Y40_N26
\rf|value1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~0_combout\ = (!\pc|Q\(2) & (\pc|Q\(1) & (\pc|Q\(0) & \rf|r3|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(1),
	datac => \pc|Q\(0),
	datad => \rf|r3|Q\(0),
	combout => \rf|value1[0]~0_combout\);

-- Location: LCCOMB_X109_Y40_N18
\rf|r1|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[0]~feeder_combout\ = \rf|m1|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f[0]~0_combout\,
	combout => \rf|r1|Q[0]~feeder_combout\);

-- Location: LCCOMB_X109_Y40_N10
\rf|m1|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((\rf|stage_dec_write|s1|y[0]~0_combout\ & \im|output[22]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \rf|stage_dec_write|s1|y[0]~0_combout\,
	datac => \im|output[22]~4_combout\,
	combout => \rf|m1|stage3|f[0]~1_combout\);

-- Location: FF_X109_Y40_N19
\rf|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[0]~feeder_combout\,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(0));

-- Location: LCCOMB_X106_Y40_N28
\rf|value2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~0_combout\ = (!\pc|Q\(1) & \pc|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \rf|value2[0]~0_combout\);

-- Location: LCCOMB_X106_Y40_N30
\rf|m5|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m5|stage3|f[0]~0_combout\ = (\im|output[22]~4_combout\ & (!\im|output[23]~2_combout\ & \im|output[19]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \im|output[22]~4_combout\,
	datac => \im|output[23]~2_combout\,
	datad => \im|output[19]~0_combout\,
	combout => \rf|m5|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X105_Y40_N16
\rf|m5|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m5|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((\rf|m5|stage3|f[0]~0_combout\ & !\im|output[21]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \rf|m5|stage3|f[0]~0_combout\,
	datad => \im|output[21]~3_combout\,
	combout => \rf|m5|stage3|f[0]~1_combout\);

-- Location: FF_X106_Y40_N15
\rf|r5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f[0]~0_combout\,
	sload => VCC,
	ena => \rf|m5|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(0));

-- Location: LCCOMB_X105_Y40_N4
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

-- Location: LCCOMB_X106_Y40_N26
\rf|m2|stage3|f~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f~10_combout\ = (!\pc|Q\(2) & (!\pc|Q\(3) & (\pc|Q\(1) & !\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(3),
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \rf|m2|stage3|f~10_combout\);

-- Location: LCCOMB_X105_Y40_N24
\rf|m2|stage3|f~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f~8_combout\ = (\reset~input_o\) # ((!\im|output[22]~4_combout\ & \rf|m2|stage3|f~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \im|output[22]~4_combout\,
	datad => \rf|m2|stage3|f~10_combout\,
	combout => \rf|m2|stage3|f~8_combout\);

-- Location: FF_X105_Y40_N5
\rf|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r2|Q[0]~feeder_combout\,
	ena => \rf|m2|stage3|f~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(0));

-- Location: LCCOMB_X105_Y40_N6
\rf|m4|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f~0_combout\ = (\reset~input_o\) # ((\rf|m5|stage3|f[0]~0_combout\ & \im|output[21]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \rf|m5|stage3|f[0]~0_combout\,
	datad => \im|output[21]~3_combout\,
	combout => \rf|m4|stage3|f~0_combout\);

-- Location: FF_X107_Y40_N1
\rf|r4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(0));

-- Location: LCCOMB_X106_Y40_N18
\rf|value1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~1_combout\ = (\pc|Q\(1) & ((!\pc|Q\(2)))) # (!\pc|Q\(1) & (\rf|r4|Q\(0) & \pc|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|r4|Q\(0),
	datac => \pc|Q\(1),
	datad => \pc|Q\(2),
	combout => \rf|value1[0]~1_combout\);

-- Location: LCCOMB_X106_Y40_N20
\rf|value1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~2_combout\ = (\pc|Q\(2) & (!\pc|Q\(0) & ((\rf|value1[0]~1_combout\)))) # (!\pc|Q\(2) & ((\rf|value1[0]~1_combout\ & ((\rf|r2|Q\(0)))) # (!\rf|value1[0]~1_combout\ & (\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(2),
	datac => \rf|r2|Q\(0),
	datad => \rf|value1[0]~1_combout\,
	combout => \rf|value1[0]~2_combout\);

-- Location: LCCOMB_X106_Y40_N14
\rf|value1[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~3_combout\ = (\rf|value2[0]~0_combout\ & ((\rf|value1[0]~2_combout\ & (\rf|r1|Q\(0))) # (!\rf|value1[0]~2_combout\ & ((\rf|r5|Q\(0)))))) # (!\rf|value2[0]~0_combout\ & (((\rf|value1[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(0),
	datab => \rf|value2[0]~0_combout\,
	datac => \rf|r5|Q\(0),
	datad => \rf|value1[0]~2_combout\,
	combout => \rf|value1[0]~3_combout\);

-- Location: LCCOMB_X107_Y40_N22
\rf|value1[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~5_combout\ = (!\pc|Q\(3) & ((\rf|value1[0]~0_combout\) # ((!\rf|value1[0]~4_combout\ & \rf|value1[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \rf|value1[0]~4_combout\,
	datac => \rf|value1[0]~0_combout\,
	datad => \rf|value1[0]~3_combout\,
	combout => \rf|value1[0]~5_combout\);

-- Location: LCCOMB_X105_Y40_N30
\rf|m0|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~0_combout\ = (!\reset~input_o\ & (\rf|value1[0]~5_combout\ $ (((!\pc|Q\(3) & \rf|value2[0]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pc|Q\(3),
	datac => \rf|value2[0]~5_combout\,
	datad => \rf|value1[0]~5_combout\,
	combout => \rf|m0|stage3|f~0_combout\);

-- Location: LCCOMB_X105_Y40_N28
\rf|m0|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~1_combout\ = (\reset~input_o\) # ((\im|output[22]~4_combout\ & \rf|m2|stage3|f~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \im|output[22]~4_combout\,
	datad => \rf|m2|stage3|f~10_combout\,
	combout => \rf|m0|stage3|f~1_combout\);

-- Location: FF_X105_Y40_N15
\rf|r0|Q[0]\ : dffeas
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
	q => \rf|r0|Q\(0));

-- Location: LCCOMB_X109_Y40_N12
\rf|value2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~1_combout\ = (\pc|Q\(2) & \rf|r3|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(2),
	datad => \rf|r3|Q\(0),
	combout => \rf|value2[0]~1_combout\);

-- Location: LCCOMB_X110_Y40_N10
\rf|value2[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~3_combout\ = (\pc|Q\(1)) # ((\pc|Q\(2) & \pc|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \rf|value2[0]~3_combout\);

-- Location: LCCOMB_X110_Y40_N24
\rf|value2[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~2_combout\ = (\pc|Q\(1) & (!\pc|Q\(2))) # (!\pc|Q\(1) & ((!\pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(1),
	datac => \pc|Q\(2),
	datad => \pc|Q\(0),
	combout => \rf|value2[0]~2_combout\);

-- Location: LCCOMB_X108_Y40_N28
\rf|value2[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~4_combout\ = (\rf|value2[0]~3_combout\ & (\rf|r1|Q\(0) & ((\rf|value2[0]~2_combout\)))) # (!\rf|value2[0]~3_combout\ & (((\rf|value2[0]~1_combout\) # (!\rf|value2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(0),
	datab => \rf|value2[0]~1_combout\,
	datac => \rf|value2[0]~3_combout\,
	datad => \rf|value2[0]~2_combout\,
	combout => \rf|value2[0]~4_combout\);

-- Location: LCCOMB_X108_Y40_N22
\rf|value2[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~5_combout\ = (\rf|value2[0]~0_combout\ & ((\rf|value2[0]~4_combout\ & (\rf|r0|Q\(0))) # (!\rf|value2[0]~4_combout\ & ((\rf|r4|Q\(0)))))) # (!\rf|value2[0]~0_combout\ & (((\rf|value2[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r0|Q\(0),
	datab => \rf|r4|Q\(0),
	datac => \rf|value2[0]~0_combout\,
	datad => \rf|value2[0]~4_combout\,
	combout => \rf|value2[0]~5_combout\);

-- Location: LCCOMB_X105_Y40_N14
\add_ins|stage1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage1|s~0_combout\ = \rf|value1[0]~5_combout\ $ (((!\pc|Q\(3) & \rf|value2[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \rf|value2[0]~5_combout\,
	datad => \rf|value1[0]~5_combout\,
	combout => \add_ins|stage1|s~0_combout\);

-- Location: LCCOMB_X110_Y40_N16
\rf|m2|stage3|f[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[1]~9_combout\ = (\reset~input_o\) # (\add_ins|stage2|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \add_ins|stage2|s~combout\,
	combout => \rf|m2|stage3|f[1]~9_combout\);

-- Location: LCCOMB_X109_Y40_N20
\rf|r3|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[1]~feeder_combout\ = \rf|m2|stage3|f[1]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m2|stage3|f[1]~9_combout\,
	combout => \rf|r3|Q[1]~feeder_combout\);

-- Location: FF_X109_Y40_N21
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

-- Location: LCCOMB_X107_Y40_N8
\rf|value1[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~6_combout\ = (\rf|r3|Q\(1) & (!\pc|Q\(2) & (!\pc|Q\(3) & \rf|value1[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(1),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \rf|value1[0]~4_combout\,
	combout => \rf|value1[1]~6_combout\);

-- Location: LCCOMB_X106_Y40_N16
\rf|m0|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~2_combout\ = (!\reset~input_o\ & \add_ins|stage2|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \add_ins|stage2|s~combout\,
	combout => \rf|m0|stage3|f~2_combout\);

-- Location: FF_X106_Y40_N7
\rf|r5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m5|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(1));

-- Location: FF_X109_Y40_N31
\rf|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(1));

-- Location: FF_X107_Y40_N29
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
	ena => \rf|m4|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(1));

-- Location: LCCOMB_X107_Y40_N10
\rf|value1[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~7_combout\ = (\rf|r4|Q\(1) & \pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|r4|Q\(1),
	datad => \pc|Q\(2),
	combout => \rf|value1[1]~7_combout\);

-- Location: LCCOMB_X110_Y40_N12
\rf|r2|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r2|Q[1]~feeder_combout\ = \rf|m2|stage3|f[1]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m2|stage3|f[1]~9_combout\,
	combout => \rf|r2|Q[1]~feeder_combout\);

-- Location: FF_X110_Y40_N13
\rf|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r2|Q[1]~feeder_combout\,
	ena => \rf|m2|stage3|f~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(1));

-- Location: LCCOMB_X107_Y40_N12
\rf|value1[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~8_combout\ = (\rf|value2[0]~3_combout\ & (((\rf|r2|Q\(1) & \rf|value2[0]~2_combout\)))) # (!\rf|value2[0]~3_combout\ & ((\rf|value1[1]~7_combout\) # ((!\rf|value2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[1]~7_combout\,
	datab => \rf|r2|Q\(1),
	datac => \rf|value2[0]~3_combout\,
	datad => \rf|value2[0]~2_combout\,
	combout => \rf|value1[1]~8_combout\);

-- Location: LCCOMB_X107_Y40_N18
\rf|value1[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~9_combout\ = (\rf|value2[0]~0_combout\ & ((\rf|value1[1]~8_combout\ & ((\rf|r1|Q\(1)))) # (!\rf|value1[1]~8_combout\ & (\rf|r5|Q\(1))))) # (!\rf|value2[0]~0_combout\ & (((\rf|value1[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r5|Q\(1),
	datab => \rf|value2[0]~0_combout\,
	datac => \rf|r1|Q\(1),
	datad => \rf|value1[1]~8_combout\,
	combout => \rf|value1[1]~9_combout\);

-- Location: LCCOMB_X107_Y40_N4
\rf|value1[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~10_combout\ = (\rf|value1[1]~6_combout\) # ((!\pc|Q\(3) & (!\rf|value1[0]~4_combout\ & \rf|value1[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \rf|value1[0]~4_combout\,
	datac => \rf|value1[1]~6_combout\,
	datad => \rf|value1[1]~9_combout\,
	combout => \rf|value1[1]~10_combout\);

-- Location: LCCOMB_X107_Y40_N30
\im|output[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[1]~1_combout\ = (!\pc|Q\(1) & (!\pc|Q\(3) & (\pc|Q\(2) $ (\pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(2),
	datab => \pc|Q\(1),
	datac => \pc|Q\(3),
	datad => \pc|Q\(0),
	combout => \im|output[1]~1_combout\);

-- Location: FF_X107_Y40_N7
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

-- Location: LCCOMB_X109_Y40_N26
\rf|value2[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~6_combout\ = (\pc|Q\(2) & \rf|r3|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(2),
	datad => \rf|r3|Q\(1),
	combout => \rf|value2[1]~6_combout\);

-- Location: LCCOMB_X109_Y40_N4
\rf|value2[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~7_combout\ = (\rf|value2[0]~3_combout\ & (((\rf|r1|Q\(1) & \rf|value2[0]~2_combout\)))) # (!\rf|value2[0]~3_combout\ & ((\rf|value2[1]~6_combout\) # ((!\rf|value2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[1]~6_combout\,
	datab => \rf|r1|Q\(1),
	datac => \rf|value2[0]~3_combout\,
	datad => \rf|value2[0]~2_combout\,
	combout => \rf|value2[1]~7_combout\);

-- Location: LCCOMB_X107_Y40_N6
\rf|value2[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~8_combout\ = (\rf|value2[0]~0_combout\ & ((\rf|value2[1]~7_combout\ & ((\rf|r0|Q\(1)))) # (!\rf|value2[1]~7_combout\ & (\rf|r4|Q\(1))))) # (!\rf|value2[0]~0_combout\ & (((\rf|value2[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r4|Q\(1),
	datab => \rf|value2[0]~0_combout\,
	datac => \rf|r0|Q\(1),
	datad => \rf|value2[1]~7_combout\,
	combout => \rf|value2[1]~8_combout\);

-- Location: LCCOMB_X107_Y40_N20
\add_ins|z[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|z\(1) = (\im|output[1]~1_combout\ & (\im|output[19]~0_combout\ $ (((\pc|Q\(3)) # (!\rf|value2[1]~8_combout\))))) # (!\im|output[1]~1_combout\ & (((\pc|Q\(3)) # (!\rf|value2[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[1]~1_combout\,
	datab => \im|output[19]~0_combout\,
	datac => \pc|Q\(3),
	datad => \rf|value2[1]~8_combout\,
	combout => \add_ins|z\(1));

-- Location: LCCOMB_X107_Y40_N26
\add_ins|stage1|Cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage1|Cout~3_combout\ = (\im|output[1]~1_combout\ & (!\im|output[19]~0_combout\ & ((\pc|Q\(3)) # (!\rf|value2[0]~5_combout\)))) # (!\im|output[1]~1_combout\ & (((\pc|Q\(3)) # (!\rf|value2[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[1]~1_combout\,
	datab => \im|output[19]~0_combout\,
	datac => \pc|Q\(3),
	datad => \rf|value2[0]~5_combout\,
	combout => \add_ins|stage1|Cout~3_combout\);

-- Location: LCCOMB_X107_Y40_N28
\id|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal1~0_combout\ = (!\im|output[19]~0_combout\) # (!\im|output[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[1]~1_combout\,
	datad => \im|output[19]~0_combout\,
	combout => \id|Equal1~0_combout\);

-- Location: LCCOMB_X107_Y40_N14
\add_ins|stage1|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage1|Cout~2_combout\ = (\rf|value1[0]~5_combout\ & ((\id|Equal1~0_combout\) # ((!\pc|Q\(3) & \rf|value2[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \id|Equal1~0_combout\,
	datac => \rf|value1[0]~5_combout\,
	datad => \rf|value2[0]~5_combout\,
	combout => \add_ins|stage1|Cout~2_combout\);

-- Location: LCCOMB_X107_Y40_N16
\add_ins|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage2|s~combout\ = \rf|value1[1]~10_combout\ $ (\add_ins|z\(1) $ (((\add_ins|stage1|Cout~3_combout\) # (\add_ins|stage1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[1]~10_combout\,
	datab => \add_ins|z\(1),
	datac => \add_ins|stage1|Cout~3_combout\,
	datad => \add_ins|stage1|Cout~2_combout\,
	combout => \add_ins|stage2|s~combout\);

-- Location: LCCOMB_X108_Y40_N6
\rf|m0|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~3_combout\ = (!\reset~input_o\ & \add_ins|stage3|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \add_ins|stage3|s~combout\,
	combout => \rf|m0|stage3|f~3_combout\);

-- Location: FF_X108_Y40_N7
\rf|r0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m0|stage3|f~3_combout\,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(2));

-- Location: LCCOMB_X108_Y40_N14
\rf|m4|stage3|f[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f[2]~1_combout\ = (\reset~input_o\) # (\add_ins|stage3|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \add_ins|stage3|s~combout\,
	combout => \rf|m4|stage3|f[2]~1_combout\);

-- Location: FF_X108_Y40_N27
\rf|r4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m4|stage3|f[2]~1_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(2));

-- Location: FF_X109_Y40_N23
\rf|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(2));

-- Location: LCCOMB_X109_Y40_N6
\rf|value2[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~9_combout\ = (\pc|Q\(2) & \rf|r3|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(2),
	datad => \rf|r3|Q\(2),
	combout => \rf|value2[2]~9_combout\);

-- Location: LCCOMB_X109_Y40_N24
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

-- Location: FF_X109_Y40_N25
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

-- Location: LCCOMB_X109_Y40_N28
\rf|value2[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~10_combout\ = (\rf|value2[0]~3_combout\ & (((\rf|r1|Q\(2) & \rf|value2[0]~2_combout\)))) # (!\rf|value2[0]~3_combout\ & ((\rf|value2[2]~9_combout\) # ((!\rf|value2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~9_combout\,
	datab => \rf|r1|Q\(2),
	datac => \rf|value2[0]~3_combout\,
	datad => \rf|value2[0]~2_combout\,
	combout => \rf|value2[2]~10_combout\);

-- Location: LCCOMB_X108_Y40_N20
\rf|value2[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~11_combout\ = (\rf|value2[0]~0_combout\ & ((\rf|value2[2]~10_combout\ & (\rf|r0|Q\(2))) # (!\rf|value2[2]~10_combout\ & ((\rf|r4|Q\(2)))))) # (!\rf|value2[0]~0_combout\ & (((\rf|value2[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r0|Q\(2),
	datab => \rf|r4|Q\(2),
	datac => \rf|value2[0]~0_combout\,
	datad => \rf|value2[2]~10_combout\,
	combout => \rf|value2[2]~11_combout\);

-- Location: LCCOMB_X108_Y40_N26
\rf|value2[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~12_combout\ = (!\pc|Q\(3) & \rf|value2[2]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|Q\(3),
	datad => \rf|value2[2]~11_combout\,
	combout => \rf|value2[2]~12_combout\);

-- Location: LCCOMB_X108_Y40_N16
\rf|value1[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~11_combout\ = (\rf|r3|Q\(2) & (!\pc|Q\(2) & (!\pc|Q\(3) & \rf|value1[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r3|Q\(2),
	datab => \pc|Q\(2),
	datac => \pc|Q\(3),
	datad => \rf|value1[0]~4_combout\,
	combout => \rf|value1[2]~11_combout\);

-- Location: FF_X106_Y40_N25
\rf|r5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m4|stage3|f[2]~1_combout\,
	sload => VCC,
	ena => \rf|m5|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(2));

-- Location: LCCOMB_X105_Y40_N8
\rf|r2|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r2|Q[2]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r2|Q[2]~feeder_combout\);

-- Location: FF_X105_Y40_N9
\rf|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r2|Q[2]~feeder_combout\,
	ena => \rf|m2|stage3|f~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(2));

-- Location: LCCOMB_X110_Y40_N22
\rf|value1[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~12_combout\ = (\rf|r4|Q\(2) & \pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|r4|Q\(2),
	datad => \pc|Q\(2),
	combout => \rf|value1[2]~12_combout\);

-- Location: LCCOMB_X106_Y40_N2
\rf|value1[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~13_combout\ = (\rf|value2[0]~3_combout\ & (\rf|r2|Q\(2) & ((\rf|value2[0]~2_combout\)))) # (!\rf|value2[0]~3_combout\ & (((\rf|value1[2]~12_combout\) # (!\rf|value2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(2),
	datab => \rf|value2[0]~3_combout\,
	datac => \rf|value1[2]~12_combout\,
	datad => \rf|value2[0]~2_combout\,
	combout => \rf|value1[2]~13_combout\);

-- Location: LCCOMB_X106_Y40_N24
\rf|value1[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~14_combout\ = (\rf|value2[0]~0_combout\ & ((\rf|value1[2]~13_combout\ & (\rf|r1|Q\(2))) # (!\rf|value1[2]~13_combout\ & ((\rf|r5|Q\(2)))))) # (!\rf|value2[0]~0_combout\ & (((\rf|value1[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(2),
	datab => \rf|value2[0]~0_combout\,
	datac => \rf|r5|Q\(2),
	datad => \rf|value1[2]~13_combout\,
	combout => \rf|value1[2]~14_combout\);

-- Location: LCCOMB_X108_Y40_N4
\rf|value1[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~15_combout\ = (\rf|value1[2]~11_combout\) # ((!\rf|value1[0]~4_combout\ & (!\pc|Q\(3) & \rf|value1[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[0]~4_combout\,
	datab => \rf|value1[2]~11_combout\,
	datac => \pc|Q\(3),
	datad => \rf|value1[2]~14_combout\,
	combout => \rf|value1[2]~15_combout\);

-- Location: LCCOMB_X107_Y40_N2
\add_ins|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage2|Cout~0_combout\ = (\rf|value1[1]~10_combout\ & ((\add_ins|stage1|Cout~3_combout\) # ((\add_ins|stage1|Cout~2_combout\) # (\add_ins|z\(1))))) # (!\rf|value1[1]~10_combout\ & (\add_ins|z\(1) & ((\add_ins|stage1|Cout~3_combout\) # 
-- (\add_ins|stage1|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_ins|stage1|Cout~3_combout\,
	datab => \rf|value1[1]~10_combout\,
	datac => \add_ins|stage1|Cout~2_combout\,
	datad => \add_ins|z\(1),
	combout => \add_ins|stage2|Cout~0_combout\);

-- Location: LCCOMB_X108_Y40_N18
\add_ins|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage3|s~combout\ = \rf|value2[2]~12_combout\ $ (\id|Equal1~0_combout\ $ (\rf|value1[2]~15_combout\ $ (\add_ins|stage2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~12_combout\,
	datab => \id|Equal1~0_combout\,
	datac => \rf|value1[2]~15_combout\,
	datad => \add_ins|stage2|Cout~0_combout\,
	combout => \add_ins|stage3|s~combout\);

-- Location: LCCOMB_X108_Y40_N12
\add_ins|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage3|Cout~0_combout\ = (\rf|value1[2]~15_combout\ & ((\add_ins|stage2|Cout~0_combout\) # (\rf|value2[2]~12_combout\ $ (\id|Equal1~0_combout\)))) # (!\rf|value1[2]~15_combout\ & (\add_ins|stage2|Cout~0_combout\ & (\rf|value2[2]~12_combout\ $ 
-- (\id|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~12_combout\,
	datab => \id|Equal1~0_combout\,
	datac => \rf|value1[2]~15_combout\,
	datad => \add_ins|stage2|Cout~0_combout\,
	combout => \add_ins|stage3|Cout~0_combout\);

-- Location: LCCOMB_X108_Y40_N24
\rf|m0|stage3|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~4_combout\ = (!\reset~input_o\ & (\add_ins|stage4|s~0_combout\ $ (\add_ins|stage3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \add_ins|stage4|s~0_combout\,
	datad => \add_ins|stage3|Cout~0_combout\,
	combout => \rf|m0|stage3|f~4_combout\);

-- Location: FF_X108_Y40_N25
\rf|r0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m0|stage3|f~4_combout\,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(3));

-- Location: FF_X108_Y40_N11
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
	ena => \rf|m4|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(3));

-- Location: LCCOMB_X109_Y40_N2
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

-- Location: FF_X109_Y40_N3
\rf|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[3]~feeder_combout\,
	ena => \rf|m1|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(3));

-- Location: LCCOMB_X109_Y40_N0
\rf|r3|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r3|Q[3]~feeder_combout\);

-- Location: FF_X109_Y40_N1
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

-- Location: LCCOMB_X109_Y40_N14
\rf|value2[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~13_combout\ = (\pc|Q\(2) & \rf|r3|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(2),
	datad => \rf|r3|Q\(3),
	combout => \rf|value2[3]~13_combout\);

-- Location: LCCOMB_X109_Y40_N16
\rf|value2[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~14_combout\ = (\rf|value2[0]~3_combout\ & (\rf|r1|Q\(3) & ((\rf|value2[0]~2_combout\)))) # (!\rf|value2[0]~3_combout\ & (((\rf|value2[3]~13_combout\) # (!\rf|value2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(3),
	datab => \rf|value2[3]~13_combout\,
	datac => \rf|value2[0]~3_combout\,
	datad => \rf|value2[0]~2_combout\,
	combout => \rf|value2[3]~14_combout\);

-- Location: LCCOMB_X108_Y40_N10
\rf|value2[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~15_combout\ = (\rf|value2[0]~0_combout\ & ((\rf|value2[3]~14_combout\ & (\rf|r0|Q\(3))) # (!\rf|value2[3]~14_combout\ & ((\rf|r4|Q\(3)))))) # (!\rf|value2[0]~0_combout\ & (((\rf|value2[3]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[0]~0_combout\,
	datab => \rf|r0|Q\(3),
	datac => \rf|r4|Q\(3),
	datad => \rf|value2[3]~14_combout\,
	combout => \rf|value2[3]~15_combout\);

-- Location: FF_X106_Y40_N13
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

-- Location: LCCOMB_X108_Y40_N8
\rf|value1[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~16_combout\ = (\rf|r4|Q\(3) & \pc|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r4|Q\(3),
	datad => \pc|Q\(2),
	combout => \rf|value1[3]~16_combout\);

-- Location: LCCOMB_X105_Y40_N26
\rf|r2|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r2|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r2|Q[3]~feeder_combout\);

-- Location: FF_X105_Y40_N27
\rf|r2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r2|Q[3]~feeder_combout\,
	ena => \rf|m2|stage3|f~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(3));

-- Location: LCCOMB_X106_Y40_N10
\rf|value1[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~17_combout\ = (\rf|value2[0]~3_combout\ & (((\rf|r2|Q\(3) & \rf|value2[0]~2_combout\)))) # (!\rf|value2[0]~3_combout\ & ((\rf|value1[3]~16_combout\) # ((!\rf|value2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~16_combout\,
	datab => \rf|r2|Q\(3),
	datac => \rf|value2[0]~3_combout\,
	datad => \rf|value2[0]~2_combout\,
	combout => \rf|value1[3]~17_combout\);

-- Location: LCCOMB_X106_Y40_N12
\rf|value1[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~18_combout\ = (\rf|value2[0]~0_combout\ & ((\rf|value1[3]~17_combout\ & (\rf|r1|Q\(3))) # (!\rf|value1[3]~17_combout\ & ((\rf|r5|Q\(3)))))) # (!\rf|value2[0]~0_combout\ & (((\rf|value1[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(3),
	datab => \rf|value2[0]~0_combout\,
	datac => \rf|r5|Q\(3),
	datad => \rf|value1[3]~17_combout\,
	combout => \rf|value1[3]~18_combout\);

-- Location: LCCOMB_X108_Y40_N2
\rf|value1[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~19_combout\ = (\rf|value1[0]~4_combout\ & (!\pc|Q\(2) & (\rf|r3|Q\(3)))) # (!\rf|value1[0]~4_combout\ & (((\rf|value1[3]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[0]~4_combout\,
	datab => \pc|Q\(2),
	datac => \rf|r3|Q\(3),
	datad => \rf|value1[3]~18_combout\,
	combout => \rf|value1[3]~19_combout\);

-- Location: LCCOMB_X108_Y40_N30
\add_ins|stage4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage4|s~0_combout\ = \id|Equal1~0_combout\ $ (((!\pc|Q\(3) & (\rf|value2[3]~15_combout\ $ (\rf|value1[3]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(3),
	datab => \id|Equal1~0_combout\,
	datac => \rf|value2[3]~15_combout\,
	datad => \rf|value1[3]~19_combout\,
	combout => \add_ins|stage4|s~0_combout\);

-- Location: LCCOMB_X109_Y40_N30
\add_ins|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_ins|stage4|s~combout\ = \add_ins|stage3|Cout~0_combout\ $ (\add_ins|stage4|s~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_ins|stage3|Cout~0_combout\,
	datad => \add_ins|stage4|s~0_combout\,
	combout => \add_ins|stage4|s~combout\);

ww_current_pc(0) <= \current_pc[0]~output_o\;

ww_current_pc(1) <= \current_pc[1]~output_o\;

ww_current_pc(2) <= \current_pc[2]~output_o\;

ww_current_pc(3) <= \current_pc[3]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;
END structure;


