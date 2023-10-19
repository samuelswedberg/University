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

-- DATE "10/09/2023 12:46:15"

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

ENTITY 	Lab2 IS
    PORT (
	reset : IN std_logic;
	start : IN std_logic;
	clk : IN std_logic;
	done : IN std_logic;
	red : BUFFER std_logic;
	yellow : BUFFER std_logic;
	green : BUFFER std_logic
	);
END Lab2;

-- Design Ports Information
-- done	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yellow	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL ww_red : std_logic;
SIGNAL ww_yellow : std_logic;
SIGNAL ww_green : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \f1|ns.b~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \done~input_o\ : std_logic;
SIGNAL \red~output_o\ : std_logic;
SIGNAL \yellow~output_o\ : std_logic;
SIGNAL \green~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \f1|Selector1~0_combout\ : std_logic;
SIGNAL \t1|Add0~0_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \t1|Add0~1\ : std_logic;
SIGNAL \t1|Add0~2_combout\ : std_logic;
SIGNAL \t1|Add0~3\ : std_logic;
SIGNAL \t1|Add0~4_combout\ : std_logic;
SIGNAL \t1|Equal0~3_combout\ : std_logic;
SIGNAL \t1|Add0~5\ : std_logic;
SIGNAL \t1|Add0~6_combout\ : std_logic;
SIGNAL \t1|Add0~7\ : std_logic;
SIGNAL \t1|Add0~8_combout\ : std_logic;
SIGNAL \t1|Add0~9\ : std_logic;
SIGNAL \t1|Add0~10_combout\ : std_logic;
SIGNAL \t1|Add0~11\ : std_logic;
SIGNAL \t1|Add0~12_combout\ : std_logic;
SIGNAL \t1|Add0~13\ : std_logic;
SIGNAL \t1|Add0~14_combout\ : std_logic;
SIGNAL \t1|Add0~15\ : std_logic;
SIGNAL \t1|Add0~16_combout\ : std_logic;
SIGNAL \t1|counter~5_combout\ : std_logic;
SIGNAL \t1|Add0~17\ : std_logic;
SIGNAL \t1|Add0~18_combout\ : std_logic;
SIGNAL \t1|counter~9_combout\ : std_logic;
SIGNAL \t1|Add0~19\ : std_logic;
SIGNAL \t1|Add0~20_combout\ : std_logic;
SIGNAL \t1|Add0~21\ : std_logic;
SIGNAL \t1|Add0~22_combout\ : std_logic;
SIGNAL \t1|Add0~23\ : std_logic;
SIGNAL \t1|Add0~24_combout\ : std_logic;
SIGNAL \t1|Add0~25\ : std_logic;
SIGNAL \t1|Add0~26_combout\ : std_logic;
SIGNAL \t1|counter~4_combout\ : std_logic;
SIGNAL \t1|Add0~27\ : std_logic;
SIGNAL \t1|Add0~28_combout\ : std_logic;
SIGNAL \t1|Add0~29\ : std_logic;
SIGNAL \t1|Add0~30_combout\ : std_logic;
SIGNAL \t1|counter~3_combout\ : std_logic;
SIGNAL \t1|Add0~31\ : std_logic;
SIGNAL \t1|Add0~32_combout\ : std_logic;
SIGNAL \t1|counter~8_combout\ : std_logic;
SIGNAL \t1|Add0~33\ : std_logic;
SIGNAL \t1|Add0~34_combout\ : std_logic;
SIGNAL \t1|Add0~35\ : std_logic;
SIGNAL \t1|Add0~36_combout\ : std_logic;
SIGNAL \t1|Add0~37\ : std_logic;
SIGNAL \t1|Add0~38_combout\ : std_logic;
SIGNAL \t1|Add0~39\ : std_logic;
SIGNAL \t1|Add0~40_combout\ : std_logic;
SIGNAL \t1|Equal0~7_combout\ : std_logic;
SIGNAL \t1|Add0~41\ : std_logic;
SIGNAL \t1|Add0~42_combout\ : std_logic;
SIGNAL \t1|counter~2_combout\ : std_logic;
SIGNAL \t1|Add0~43\ : std_logic;
SIGNAL \t1|Add0~45\ : std_logic;
SIGNAL \t1|Add0~46_combout\ : std_logic;
SIGNAL \t1|counter~0_combout\ : std_logic;
SIGNAL \t1|Add0~47\ : std_logic;
SIGNAL \t1|Add0~48_combout\ : std_logic;
SIGNAL \t1|counter~7_combout\ : std_logic;
SIGNAL \t1|Add0~49\ : std_logic;
SIGNAL \t1|Add0~50_combout\ : std_logic;
SIGNAL \t1|Add0~51\ : std_logic;
SIGNAL \t1|Add0~52_combout\ : std_logic;
SIGNAL \t1|Add0~53\ : std_logic;
SIGNAL \t1|Add0~54_combout\ : std_logic;
SIGNAL \f1|ns.b~0_combout\ : std_logic;
SIGNAL \t1|Equal0~5_combout\ : std_logic;
SIGNAL \t1|Add0~55\ : std_logic;
SIGNAL \t1|Add0~56_combout\ : std_logic;
SIGNAL \t1|counter~6_combout\ : std_logic;
SIGNAL \t1|Equal0~6_combout\ : std_logic;
SIGNAL \t1|Equal0~8_combout\ : std_logic;
SIGNAL \t1|Add0~44_combout\ : std_logic;
SIGNAL \t1|counter~1_combout\ : std_logic;
SIGNAL \t1|Equal0~0_combout\ : std_logic;
SIGNAL \t1|Equal0~2_combout\ : std_logic;
SIGNAL \t1|Equal0~1_combout\ : std_logic;
SIGNAL \t1|Equal0~4_combout\ : std_logic;
SIGNAL \f1|ns.b~2_combout\ : std_logic;
SIGNAL \f1|ns.b~1_combout\ : std_logic;
SIGNAL \f1|ns.b~3_combout\ : std_logic;
SIGNAL \f1|ns.b~4_combout\ : std_logic;
SIGNAL \f1|ns.b~5_combout\ : std_logic;
SIGNAL \f1|ns.b~6_combout\ : std_logic;
SIGNAL \f1|ns.b~7_combout\ : std_logic;
SIGNAL \f1|ns.b~8_combout\ : std_logic;
SIGNAL \f1|ns.b~8clkctrl_outclk\ : std_logic;
SIGNAL \f1|ns.b_98~combout\ : std_logic;
SIGNAL \f1|state.b~q\ : std_logic;
SIGNAL \f1|Selector2~0_combout\ : std_logic;
SIGNAL \f1|ns.c_81~combout\ : std_logic;
SIGNAL \f1|state.c~q\ : std_logic;
SIGNAL \f1|Selector0~0_combout\ : std_logic;
SIGNAL \f1|ns.a_115~combout\ : std_logic;
SIGNAL \f1|state.a~0_combout\ : std_logic;
SIGNAL \f1|state.a~q\ : std_logic;
SIGNAL \t1|counter\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \f1|ALT_INV_state.a~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset <= reset;
ww_start <= start;
ww_clk <= clk;
ww_done <= done;
red <= ww_red;
yellow <= ww_yellow;
green <= ww_green;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\f1|ns.b~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \f1|ns.b~8_combout\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\f1|ALT_INV_state.a~q\ <= NOT \f1|state.a~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X83_Y73_N2
\red~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|ALT_INV_state.a~q\,
	devoe => ww_devoe,
	o => \red~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\yellow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|state.b~q\,
	devoe => ww_devoe,
	o => \yellow~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\green~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|state.c~q\,
	devoe => ww_devoe,
	o => \green~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y14_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X109_Y30_N30
\f1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Selector1~0_combout\ = (\f1|state.a~q\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|state.a~q\,
	datad => \reset~input_o\,
	combout => \f1|Selector1~0_combout\);

-- Location: LCCOMB_X110_Y31_N4
\t1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~0_combout\ = \t1|counter\(0) $ (VCC)
-- \t1|Add0~1\ = CARRY(\t1|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(0),
	datad => VCC,
	combout => \t1|Add0~0_combout\,
	cout => \t1|Add0~1\);

-- Location: IOIBUF_X115_Y17_N1
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: FF_X110_Y31_N5
\t1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(0));

-- Location: LCCOMB_X110_Y31_N6
\t1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~2_combout\ = (\t1|counter\(1) & (!\t1|Add0~1\)) # (!\t1|counter\(1) & ((\t1|Add0~1\) # (GND)))
-- \t1|Add0~3\ = CARRY((!\t1|Add0~1\) # (!\t1|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(1),
	datad => VCC,
	cin => \t1|Add0~1\,
	combout => \t1|Add0~2_combout\,
	cout => \t1|Add0~3\);

-- Location: FF_X110_Y31_N7
\t1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|Add0~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(1));

-- Location: LCCOMB_X110_Y31_N8
\t1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~4_combout\ = (\t1|counter\(2) & (\t1|Add0~3\ $ (GND))) # (!\t1|counter\(2) & (!\t1|Add0~3\ & VCC))
-- \t1|Add0~5\ = CARRY((\t1|counter\(2) & !\t1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(2),
	datad => VCC,
	cin => \t1|Add0~3\,
	combout => \t1|Add0~4_combout\,
	cout => \t1|Add0~5\);

-- Location: FF_X110_Y31_N9
\t1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|Add0~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(2));

-- Location: LCCOMB_X109_Y31_N30
\t1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~3_combout\ = (\t1|counter\(2) & \t1|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|counter\(2),
	datad => \t1|counter\(1),
	combout => \t1|Equal0~3_combout\);

-- Location: LCCOMB_X110_Y31_N10
\t1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~6_combout\ = (\t1|counter\(3) & (!\t1|Add0~5\)) # (!\t1|counter\(3) & ((\t1|Add0~5\) # (GND)))
-- \t1|Add0~7\ = CARRY((!\t1|Add0~5\) # (!\t1|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(3),
	datad => VCC,
	cin => \t1|Add0~5\,
	combout => \t1|Add0~6_combout\,
	cout => \t1|Add0~7\);

-- Location: FF_X110_Y31_N11
\t1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|Add0~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(3));

-- Location: LCCOMB_X110_Y31_N12
\t1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~8_combout\ = (\t1|counter\(4) & (\t1|Add0~7\ $ (GND))) # (!\t1|counter\(4) & (!\t1|Add0~7\ & VCC))
-- \t1|Add0~9\ = CARRY((\t1|counter\(4) & !\t1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(4),
	datad => VCC,
	cin => \t1|Add0~7\,
	combout => \t1|Add0~8_combout\,
	cout => \t1|Add0~9\);

-- Location: FF_X110_Y31_N13
\t1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|Add0~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(4));

-- Location: LCCOMB_X110_Y31_N14
\t1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~10_combout\ = (\t1|counter\(5) & (!\t1|Add0~9\)) # (!\t1|counter\(5) & ((\t1|Add0~9\) # (GND)))
-- \t1|Add0~11\ = CARRY((!\t1|Add0~9\) # (!\t1|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(5),
	datad => VCC,
	cin => \t1|Add0~9\,
	combout => \t1|Add0~10_combout\,
	cout => \t1|Add0~11\);

-- Location: FF_X110_Y31_N15
\t1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|Add0~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(5));

-- Location: LCCOMB_X110_Y31_N16
\t1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~12_combout\ = (\t1|counter\(6) & (\t1|Add0~11\ $ (GND))) # (!\t1|counter\(6) & (!\t1|Add0~11\ & VCC))
-- \t1|Add0~13\ = CARRY((\t1|counter\(6) & !\t1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(6),
	datad => VCC,
	cin => \t1|Add0~11\,
	combout => \t1|Add0~12_combout\,
	cout => \t1|Add0~13\);

-- Location: FF_X110_Y31_N17
\t1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|Add0~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(6));

-- Location: LCCOMB_X110_Y31_N18
\t1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~14_combout\ = (\t1|counter\(7) & (!\t1|Add0~13\)) # (!\t1|counter\(7) & ((\t1|Add0~13\) # (GND)))
-- \t1|Add0~15\ = CARRY((!\t1|Add0~13\) # (!\t1|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(7),
	datad => VCC,
	cin => \t1|Add0~13\,
	combout => \t1|Add0~14_combout\,
	cout => \t1|Add0~15\);

-- Location: FF_X110_Y31_N19
\t1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|Add0~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(7));

-- Location: LCCOMB_X110_Y31_N20
\t1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~16_combout\ = (\t1|counter\(8) & (\t1|Add0~15\ $ (GND))) # (!\t1|counter\(8) & (!\t1|Add0~15\ & VCC))
-- \t1|Add0~17\ = CARRY((\t1|counter\(8) & !\t1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(8),
	datad => VCC,
	cin => \t1|Add0~15\,
	combout => \t1|Add0~16_combout\,
	cout => \t1|Add0~17\);

-- Location: LCCOMB_X111_Y30_N26
\t1|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~5_combout\ = (\t1|Add0~16_combout\ & (((!\t1|Equal0~8_combout\) # (!\t1|counter\(0))) # (!\t1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~4_combout\,
	datab => \t1|counter\(0),
	datac => \t1|Add0~16_combout\,
	datad => \t1|Equal0~8_combout\,
	combout => \t1|counter~5_combout\);

-- Location: FF_X111_Y30_N27
\t1|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|counter~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(8));

-- Location: LCCOMB_X110_Y31_N22
\t1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~18_combout\ = (\t1|counter\(9) & (!\t1|Add0~17\)) # (!\t1|counter\(9) & ((\t1|Add0~17\) # (GND)))
-- \t1|Add0~19\ = CARRY((!\t1|Add0~17\) # (!\t1|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(9),
	datad => VCC,
	cin => \t1|Add0~17\,
	combout => \t1|Add0~18_combout\,
	cout => \t1|Add0~19\);

-- Location: LCCOMB_X110_Y31_N0
\t1|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~9_combout\ = (\t1|Add0~18_combout\ & (((!\t1|Equal0~8_combout\) # (!\t1|Equal0~4_combout\)) # (!\t1|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~18_combout\,
	datab => \t1|counter\(0),
	datac => \t1|Equal0~4_combout\,
	datad => \t1|Equal0~8_combout\,
	combout => \t1|counter~9_combout\);

-- Location: FF_X110_Y31_N1
\t1|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|counter~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(9));

-- Location: LCCOMB_X110_Y31_N24
\t1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~20_combout\ = (\t1|counter\(10) & (\t1|Add0~19\ $ (GND))) # (!\t1|counter\(10) & (!\t1|Add0~19\ & VCC))
-- \t1|Add0~21\ = CARRY((\t1|counter\(10) & !\t1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(10),
	datad => VCC,
	cin => \t1|Add0~19\,
	combout => \t1|Add0~20_combout\,
	cout => \t1|Add0~21\);

-- Location: FF_X110_Y31_N25
\t1|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|Add0~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(10));

-- Location: LCCOMB_X110_Y31_N26
\t1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~22_combout\ = (\t1|counter\(11) & (!\t1|Add0~21\)) # (!\t1|counter\(11) & ((\t1|Add0~21\) # (GND)))
-- \t1|Add0~23\ = CARRY((!\t1|Add0~21\) # (!\t1|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(11),
	datad => VCC,
	cin => \t1|Add0~21\,
	combout => \t1|Add0~22_combout\,
	cout => \t1|Add0~23\);

-- Location: FF_X110_Y31_N27
\t1|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|Add0~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(11));

-- Location: LCCOMB_X110_Y31_N28
\t1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~24_combout\ = (\t1|counter\(12) & (\t1|Add0~23\ $ (GND))) # (!\t1|counter\(12) & (!\t1|Add0~23\ & VCC))
-- \t1|Add0~25\ = CARRY((\t1|counter\(12) & !\t1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(12),
	datad => VCC,
	cin => \t1|Add0~23\,
	combout => \t1|Add0~24_combout\,
	cout => \t1|Add0~25\);

-- Location: FF_X110_Y31_N29
\t1|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|Add0~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(12));

-- Location: LCCOMB_X110_Y31_N30
\t1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~26_combout\ = (\t1|counter\(13) & (!\t1|Add0~25\)) # (!\t1|counter\(13) & ((\t1|Add0~25\) # (GND)))
-- \t1|Add0~27\ = CARRY((!\t1|Add0~25\) # (!\t1|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(13),
	datad => VCC,
	cin => \t1|Add0~25\,
	combout => \t1|Add0~26_combout\,
	cout => \t1|Add0~27\);

-- Location: LCCOMB_X111_Y30_N24
\t1|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~4_combout\ = (\t1|Add0~26_combout\ & (((!\t1|Equal0~8_combout\) # (!\t1|counter\(0))) # (!\t1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~4_combout\,
	datab => \t1|counter\(0),
	datac => \t1|Equal0~8_combout\,
	datad => \t1|Add0~26_combout\,
	combout => \t1|counter~4_combout\);

-- Location: FF_X111_Y30_N25
\t1|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|counter~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(13));

-- Location: LCCOMB_X110_Y30_N0
\t1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~28_combout\ = (\t1|counter\(14) & (\t1|Add0~27\ $ (GND))) # (!\t1|counter\(14) & (!\t1|Add0~27\ & VCC))
-- \t1|Add0~29\ = CARRY((\t1|counter\(14) & !\t1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(14),
	datad => VCC,
	cin => \t1|Add0~27\,
	combout => \t1|Add0~28_combout\,
	cout => \t1|Add0~29\);

-- Location: FF_X110_Y30_N1
\t1|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|Add0~28_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(14));

-- Location: LCCOMB_X110_Y30_N2
\t1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~30_combout\ = (\t1|counter\(15) & (!\t1|Add0~29\)) # (!\t1|counter\(15) & ((\t1|Add0~29\) # (GND)))
-- \t1|Add0~31\ = CARRY((!\t1|Add0~29\) # (!\t1|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(15),
	datad => VCC,
	cin => \t1|Add0~29\,
	combout => \t1|Add0~30_combout\,
	cout => \t1|Add0~31\);

-- Location: LCCOMB_X109_Y30_N26
\t1|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~3_combout\ = (\t1|Add0~30_combout\ & (((!\t1|Equal0~4_combout\) # (!\t1|Equal0~8_combout\)) # (!\t1|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(0),
	datab => \t1|Equal0~8_combout\,
	datac => \t1|Add0~30_combout\,
	datad => \t1|Equal0~4_combout\,
	combout => \t1|counter~3_combout\);

-- Location: FF_X109_Y30_N27
\t1|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|counter~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(15));

-- Location: LCCOMB_X110_Y30_N4
\t1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~32_combout\ = (\t1|counter\(16) & (\t1|Add0~31\ $ (GND))) # (!\t1|counter\(16) & (!\t1|Add0~31\ & VCC))
-- \t1|Add0~33\ = CARRY((\t1|counter\(16) & !\t1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(16),
	datad => VCC,
	cin => \t1|Add0~31\,
	combout => \t1|Add0~32_combout\,
	cout => \t1|Add0~33\);

-- Location: LCCOMB_X111_Y30_N30
\t1|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~8_combout\ = (\t1|Add0~32_combout\ & (((!\t1|Equal0~8_combout\) # (!\t1|counter\(0))) # (!\t1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~4_combout\,
	datab => \t1|counter\(0),
	datac => \t1|Add0~32_combout\,
	datad => \t1|Equal0~8_combout\,
	combout => \t1|counter~8_combout\);

-- Location: FF_X111_Y30_N31
\t1|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|counter~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(16));

-- Location: LCCOMB_X110_Y30_N6
\t1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~34_combout\ = (\t1|counter\(17) & (!\t1|Add0~33\)) # (!\t1|counter\(17) & ((\t1|Add0~33\) # (GND)))
-- \t1|Add0~35\ = CARRY((!\t1|Add0~33\) # (!\t1|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(17),
	datad => VCC,
	cin => \t1|Add0~33\,
	combout => \t1|Add0~34_combout\,
	cout => \t1|Add0~35\);

-- Location: FF_X110_Y30_N7
\t1|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|Add0~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(17));

-- Location: LCCOMB_X110_Y30_N8
\t1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~36_combout\ = (\t1|counter\(18) & (\t1|Add0~35\ $ (GND))) # (!\t1|counter\(18) & (!\t1|Add0~35\ & VCC))
-- \t1|Add0~37\ = CARRY((\t1|counter\(18) & !\t1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(18),
	datad => VCC,
	cin => \t1|Add0~35\,
	combout => \t1|Add0~36_combout\,
	cout => \t1|Add0~37\);

-- Location: FF_X110_Y30_N9
\t1|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|Add0~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(18));

-- Location: LCCOMB_X110_Y30_N10
\t1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~38_combout\ = (\t1|counter\(19) & (!\t1|Add0~37\)) # (!\t1|counter\(19) & ((\t1|Add0~37\) # (GND)))
-- \t1|Add0~39\ = CARRY((!\t1|Add0~37\) # (!\t1|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(19),
	datad => VCC,
	cin => \t1|Add0~37\,
	combout => \t1|Add0~38_combout\,
	cout => \t1|Add0~39\);

-- Location: FF_X110_Y30_N11
\t1|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|Add0~38_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(19));

-- Location: LCCOMB_X110_Y30_N12
\t1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~40_combout\ = (\t1|counter\(20) & (\t1|Add0~39\ $ (GND))) # (!\t1|counter\(20) & (!\t1|Add0~39\ & VCC))
-- \t1|Add0~41\ = CARRY((\t1|counter\(20) & !\t1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(20),
	datad => VCC,
	cin => \t1|Add0~39\,
	combout => \t1|Add0~40_combout\,
	cout => \t1|Add0~41\);

-- Location: FF_X110_Y30_N13
\t1|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|Add0~40_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(20));

-- Location: LCCOMB_X111_Y30_N14
\t1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~7_combout\ = (\t1|counter\(16) & (!\t1|counter\(12) & (!\t1|counter\(14) & !\t1|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(16),
	datab => \t1|counter\(12),
	datac => \t1|counter\(14),
	datad => \t1|counter\(20),
	combout => \t1|Equal0~7_combout\);

-- Location: LCCOMB_X110_Y30_N14
\t1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~42_combout\ = (\t1|counter\(21) & (!\t1|Add0~41\)) # (!\t1|counter\(21) & ((\t1|Add0~41\) # (GND)))
-- \t1|Add0~43\ = CARRY((!\t1|Add0~41\) # (!\t1|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(21),
	datad => VCC,
	cin => \t1|Add0~41\,
	combout => \t1|Add0~42_combout\,
	cout => \t1|Add0~43\);

-- Location: LCCOMB_X109_Y30_N2
\t1|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~2_combout\ = (\t1|Add0~42_combout\ & (((!\t1|Equal0~8_combout\) # (!\t1|Equal0~4_combout\)) # (!\t1|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(0),
	datab => \t1|Equal0~4_combout\,
	datac => \t1|Add0~42_combout\,
	datad => \t1|Equal0~8_combout\,
	combout => \t1|counter~2_combout\);

-- Location: FF_X109_Y30_N3
\t1|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|counter~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(21));

-- Location: LCCOMB_X110_Y30_N16
\t1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~44_combout\ = (\t1|counter\(22) & (\t1|Add0~43\ $ (GND))) # (!\t1|counter\(22) & (!\t1|Add0~43\ & VCC))
-- \t1|Add0~45\ = CARRY((\t1|counter\(22) & !\t1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(22),
	datad => VCC,
	cin => \t1|Add0~43\,
	combout => \t1|Add0~44_combout\,
	cout => \t1|Add0~45\);

-- Location: LCCOMB_X110_Y30_N18
\t1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~46_combout\ = (\t1|counter\(23) & (!\t1|Add0~45\)) # (!\t1|counter\(23) & ((\t1|Add0~45\) # (GND)))
-- \t1|Add0~47\ = CARRY((!\t1|Add0~45\) # (!\t1|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(23),
	datad => VCC,
	cin => \t1|Add0~45\,
	combout => \t1|Add0~46_combout\,
	cout => \t1|Add0~47\);

-- Location: LCCOMB_X109_Y30_N22
\t1|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~0_combout\ = (\t1|Add0~46_combout\ & (((!\t1|Equal0~4_combout\) # (!\t1|Equal0~8_combout\)) # (!\t1|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(0),
	datab => \t1|Equal0~8_combout\,
	datac => \t1|Equal0~4_combout\,
	datad => \t1|Add0~46_combout\,
	combout => \t1|counter~0_combout\);

-- Location: FF_X109_Y30_N23
\t1|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|counter~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(23));

-- Location: LCCOMB_X110_Y30_N20
\t1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~48_combout\ = (\t1|counter\(24) & (\t1|Add0~47\ $ (GND))) # (!\t1|counter\(24) & (!\t1|Add0~47\ & VCC))
-- \t1|Add0~49\ = CARRY((\t1|counter\(24) & !\t1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(24),
	datad => VCC,
	cin => \t1|Add0~47\,
	combout => \t1|Add0~48_combout\,
	cout => \t1|Add0~49\);

-- Location: LCCOMB_X111_Y30_N28
\t1|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~7_combout\ = (\t1|Add0~48_combout\ & (((!\t1|Equal0~8_combout\) # (!\t1|counter\(0))) # (!\t1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~4_combout\,
	datab => \t1|counter\(0),
	datac => \t1|Equal0~8_combout\,
	datad => \t1|Add0~48_combout\,
	combout => \t1|counter~7_combout\);

-- Location: FF_X111_Y30_N29
\t1|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|counter~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(24));

-- Location: LCCOMB_X110_Y30_N22
\t1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~50_combout\ = (\t1|counter\(25) & (!\t1|Add0~49\)) # (!\t1|counter\(25) & ((\t1|Add0~49\) # (GND)))
-- \t1|Add0~51\ = CARRY((!\t1|Add0~49\) # (!\t1|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(25),
	datad => VCC,
	cin => \t1|Add0~49\,
	combout => \t1|Add0~50_combout\,
	cout => \t1|Add0~51\);

-- Location: FF_X110_Y30_N23
\t1|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|Add0~50_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(25));

-- Location: LCCOMB_X110_Y30_N24
\t1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~52_combout\ = (\t1|counter\(26) & (\t1|Add0~51\ $ (GND))) # (!\t1|counter\(26) & (!\t1|Add0~51\ & VCC))
-- \t1|Add0~53\ = CARRY((\t1|counter\(26) & !\t1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(26),
	datad => VCC,
	cin => \t1|Add0~51\,
	combout => \t1|Add0~52_combout\,
	cout => \t1|Add0~53\);

-- Location: FF_X110_Y30_N25
\t1|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|Add0~52_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(26));

-- Location: LCCOMB_X110_Y30_N26
\t1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~54_combout\ = (\t1|counter\(27) & (!\t1|Add0~53\)) # (!\t1|counter\(27) & ((\t1|Add0~53\) # (GND)))
-- \t1|Add0~55\ = CARRY((!\t1|Add0~53\) # (!\t1|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(27),
	datad => VCC,
	cin => \t1|Add0~53\,
	combout => \t1|Add0~54_combout\,
	cout => \t1|Add0~55\);

-- Location: FF_X110_Y30_N27
\t1|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|Add0~54_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(27));

-- Location: LCCOMB_X111_Y30_N8
\f1|ns.b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ns.b~0_combout\ = (!\t1|counter\(8) & (!\t1|counter\(27) & \t1|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(8),
	datac => \t1|counter\(27),
	datad => \t1|counter\(13),
	combout => \f1|ns.b~0_combout\);

-- Location: LCCOMB_X111_Y30_N20
\t1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~5_combout\ = (!\t1|counter\(25) & (\t1|counter\(24) & (!\t1|counter\(17) & !\t1|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(25),
	datab => \t1|counter\(24),
	datac => \t1|counter\(17),
	datad => \t1|counter\(19),
	combout => \t1|Equal0~5_combout\);

-- Location: LCCOMB_X110_Y30_N28
\t1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~56_combout\ = \t1|counter\(28) $ (!\t1|Add0~55\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(28),
	cin => \t1|Add0~55\,
	combout => \t1|Add0~56_combout\);

-- Location: LCCOMB_X110_Y30_N30
\t1|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~6_combout\ = (\t1|Add0~56_combout\ & (((!\t1|Equal0~4_combout\) # (!\t1|Equal0~8_combout\)) # (!\t1|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(0),
	datab => \t1|Equal0~8_combout\,
	datac => \t1|Equal0~4_combout\,
	datad => \t1|Add0~56_combout\,
	combout => \t1|counter~6_combout\);

-- Location: FF_X110_Y30_N31
\t1|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|counter~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(28));

-- Location: LCCOMB_X109_Y30_N12
\t1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~6_combout\ = (\f1|ns.b~0_combout\ & (\t1|Equal0~5_combout\ & \t1|counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|ns.b~0_combout\,
	datac => \t1|Equal0~5_combout\,
	datad => \t1|counter\(28),
	combout => \t1|Equal0~6_combout\);

-- Location: LCCOMB_X109_Y30_N24
\t1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~8_combout\ = (\t1|Equal0~7_combout\ & (\t1|counter\(7) & (\t1|counter\(9) & \t1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~7_combout\,
	datab => \t1|counter\(7),
	datac => \t1|counter\(9),
	datad => \t1|Equal0~6_combout\,
	combout => \t1|Equal0~8_combout\);

-- Location: LCCOMB_X109_Y30_N6
\t1|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~1_combout\ = (\t1|Add0~44_combout\ & (((!\t1|Equal0~4_combout\) # (!\t1|Equal0~8_combout\)) # (!\t1|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(0),
	datab => \t1|Equal0~8_combout\,
	datac => \t1|Equal0~4_combout\,
	datad => \t1|Add0~44_combout\,
	combout => \t1|counter~1_combout\);

-- Location: FF_X109_Y30_N7
\t1|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|counter~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(22));

-- Location: LCCOMB_X109_Y30_N8
\t1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~0_combout\ = (\t1|counter\(22) & (!\t1|counter\(26) & (\t1|counter\(23) & \t1|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(22),
	datab => \t1|counter\(26),
	datac => \t1|counter\(23),
	datad => \t1|counter\(21),
	combout => \t1|Equal0~0_combout\);

-- Location: LCCOMB_X110_Y31_N2
\t1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~2_combout\ = (\t1|counter\(3) & (\t1|counter\(6) & (\t1|counter\(5) & \t1|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(3),
	datab => \t1|counter\(6),
	datac => \t1|counter\(5),
	datad => \t1|counter\(4),
	combout => \t1|Equal0~2_combout\);

-- Location: LCCOMB_X109_Y30_N28
\t1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~1_combout\ = (!\t1|counter\(18) & (!\t1|counter\(11) & (\t1|counter\(15) & !\t1|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(18),
	datab => \t1|counter\(11),
	datac => \t1|counter\(15),
	datad => \t1|counter\(10),
	combout => \t1|Equal0~1_combout\);

-- Location: LCCOMB_X109_Y30_N20
\t1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~4_combout\ = (\t1|Equal0~3_combout\ & (\t1|Equal0~0_combout\ & (\t1|Equal0~2_combout\ & \t1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~3_combout\,
	datab => \t1|Equal0~0_combout\,
	datac => \t1|Equal0~2_combout\,
	datad => \t1|Equal0~1_combout\,
	combout => \t1|Equal0~4_combout\);

-- Location: LCCOMB_X111_Y30_N6
\f1|ns.b~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ns.b~2_combout\ = (!\t1|counter\(19) & (!\t1|counter\(17) & (\t1|counter\(27) & !\t1|counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(19),
	datab => \t1|counter\(17),
	datac => \t1|counter\(27),
	datad => \t1|counter\(25),
	combout => \f1|ns.b~2_combout\);

-- Location: LCCOMB_X111_Y30_N2
\f1|ns.b~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ns.b~1_combout\ = (\t1|counter\(17) & (\t1|counter\(25) & (\f1|ns.b~0_combout\ & \t1|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(17),
	datab => \t1|counter\(25),
	datac => \f1|ns.b~0_combout\,
	datad => \t1|counter\(19),
	combout => \f1|ns.b~1_combout\);

-- Location: LCCOMB_X111_Y30_N10
\f1|ns.b~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ns.b~3_combout\ = (\f1|ns.b~1_combout\) # ((\f1|ns.b~2_combout\ & (!\t1|counter\(13) & \t1|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ns.b~2_combout\,
	datab => \t1|counter\(13),
	datac => \f1|ns.b~1_combout\,
	datad => \t1|counter\(8),
	combout => \f1|ns.b~3_combout\);

-- Location: LCCOMB_X111_Y30_N22
\f1|ns.b~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ns.b~4_combout\ = (!\t1|counter\(28) & (!\t1|counter\(24) & (!\t1|counter\(16) & \t1|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(28),
	datab => \t1|counter\(24),
	datac => \t1|counter\(16),
	datad => \t1|counter\(20),
	combout => \f1|ns.b~4_combout\);

-- Location: LCCOMB_X111_Y30_N12
\f1|ns.b~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ns.b~5_combout\ = (\t1|counter\(14) & (!\t1|counter\(9) & (\t1|counter\(12) & !\t1|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(14),
	datab => \t1|counter\(9),
	datac => \t1|counter\(12),
	datad => \t1|counter\(7),
	combout => \f1|ns.b~5_combout\);

-- Location: LCCOMB_X111_Y30_N16
\f1|ns.b~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ns.b~6_combout\ = (\f1|ns.b~3_combout\ & (\t1|counter\(0) & (\f1|ns.b~4_combout\ & \f1|ns.b~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ns.b~3_combout\,
	datab => \t1|counter\(0),
	datac => \f1|ns.b~4_combout\,
	datad => \f1|ns.b~5_combout\,
	combout => \f1|ns.b~6_combout\);

-- Location: LCCOMB_X111_Y30_N18
\f1|ns.b~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ns.b~7_combout\ = (\t1|Equal0~4_combout\ & ((\f1|ns.b~6_combout\) # ((\t1|Equal0~8_combout\ & !\t1|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~4_combout\,
	datab => \f1|ns.b~6_combout\,
	datac => \t1|Equal0~8_combout\,
	datad => \t1|counter\(0),
	combout => \f1|ns.b~7_combout\);

-- Location: LCCOMB_X111_Y30_N4
\f1|ns.b~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ns.b~8_combout\ = (\reset~input_o\) # (\f1|ns.b~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \f1|ns.b~7_combout\,
	combout => \f1|ns.b~8_combout\);

-- Location: CLKCTRL_G6
\f1|ns.b~8clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \f1|ns.b~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \f1|ns.b~8clkctrl_outclk\);

-- Location: LCCOMB_X109_Y30_N18
\f1|ns.b_98\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ns.b_98~combout\ = (GLOBAL(\f1|ns.b~8clkctrl_outclk\) & ((!\f1|Selector1~0_combout\))) # (!GLOBAL(\f1|ns.b~8clkctrl_outclk\) & (\f1|ns.b_98~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|ns.b_98~combout\,
	datac => \f1|Selector1~0_combout\,
	datad => \f1|ns.b~8clkctrl_outclk\,
	combout => \f1|ns.b_98~combout\);

-- Location: FF_X109_Y30_N19
\f1|state.b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|ns.b_98~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|state.b~q\);

-- Location: LCCOMB_X109_Y30_N14
\f1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Selector2~0_combout\ = (\f1|state.b~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|state.b~q\,
	datad => \reset~input_o\,
	combout => \f1|Selector2~0_combout\);

-- Location: LCCOMB_X109_Y30_N0
\f1|ns.c_81\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ns.c_81~combout\ = (GLOBAL(\f1|ns.b~8clkctrl_outclk\) & ((\f1|Selector2~0_combout\))) # (!GLOBAL(\f1|ns.b~8clkctrl_outclk\) & (\f1|ns.c_81~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ns.c_81~combout\,
	datab => \f1|Selector2~0_combout\,
	datad => \f1|ns.b~8clkctrl_outclk\,
	combout => \f1|ns.c_81~combout\);

-- Location: FF_X109_Y30_N1
\f1|state.c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|ns.c_81~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|state.c~q\);

-- Location: LCCOMB_X109_Y30_N4
\f1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Selector0~0_combout\ = (\f1|state.c~q\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|state.c~q\,
	datad => \reset~input_o\,
	combout => \f1|Selector0~0_combout\);

-- Location: LCCOMB_X109_Y30_N16
\f1|ns.a_115\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ns.a_115~combout\ = (GLOBAL(\f1|ns.b~8clkctrl_outclk\) & ((\f1|Selector0~0_combout\))) # (!GLOBAL(\f1|ns.b~8clkctrl_outclk\) & (\f1|ns.a_115~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|ns.a_115~combout\,
	datac => \f1|Selector0~0_combout\,
	datad => \f1|ns.b~8clkctrl_outclk\,
	combout => \f1|ns.a_115~combout\);

-- Location: LCCOMB_X109_Y30_N10
\f1|state.a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|state.a~0_combout\ = !\f1|ns.a_115~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f1|ns.a_115~combout\,
	combout => \f1|state.a~0_combout\);

-- Location: FF_X109_Y30_N11
\f1|state.a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|state.a~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|state.a~q\);

-- Location: IOIBUF_X0_Y27_N15
\done~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_done,
	o => \done~input_o\);

ww_red <= \red~output_o\;

ww_yellow <= \yellow~output_o\;

ww_green <= \green~output_o\;
END structure;


