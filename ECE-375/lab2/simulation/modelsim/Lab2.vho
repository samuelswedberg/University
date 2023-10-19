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

-- DATE "10/08/2023 19:42:25"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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
-- start	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yellow	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \f1|ns.b~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \start~input_o\ : std_logic;
SIGNAL \red~output_o\ : std_logic;
SIGNAL \yellow~output_o\ : std_logic;
SIGNAL \green~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \f1|Selector1~0_combout\ : std_logic;
SIGNAL \done~input_o\ : std_logic;
SIGNAL \t1|Add0~0_combout\ : std_logic;
SIGNAL \t1|Add0~1\ : std_logic;
SIGNAL \t1|Add0~2_combout\ : std_logic;
SIGNAL \t1|Add0~3\ : std_logic;
SIGNAL \t1|Add0~4_combout\ : std_logic;
SIGNAL \t1|Add0~5\ : std_logic;
SIGNAL \t1|Add0~6_combout\ : std_logic;
SIGNAL \t1|Add0~7\ : std_logic;
SIGNAL \t1|Add0~8_combout\ : std_logic;
SIGNAL \t1|Add0~9\ : std_logic;
SIGNAL \t1|Add0~10_combout\ : std_logic;
SIGNAL \t1|Add0~11\ : std_logic;
SIGNAL \t1|Add0~12_combout\ : std_logic;
SIGNAL \t1|counter~11_combout\ : std_logic;
SIGNAL \t1|Add0~13\ : std_logic;
SIGNAL \t1|Add0~14_combout\ : std_logic;
SIGNAL \t1|Add0~15\ : std_logic;
SIGNAL \t1|Add0~16_combout\ : std_logic;
SIGNAL \t1|Add0~17\ : std_logic;
SIGNAL \t1|Add0~18_combout\ : std_logic;
SIGNAL \t1|Add0~19\ : std_logic;
SIGNAL \t1|Add0~20_combout\ : std_logic;
SIGNAL \t1|Add0~21\ : std_logic;
SIGNAL \t1|Add0~22_combout\ : std_logic;
SIGNAL \t1|counter~10_combout\ : std_logic;
SIGNAL \t1|Add0~23\ : std_logic;
SIGNAL \t1|Add0~24_combout\ : std_logic;
SIGNAL \t1|counter~9_combout\ : std_logic;
SIGNAL \t1|Add0~25\ : std_logic;
SIGNAL \t1|Add0~26_combout\ : std_logic;
SIGNAL \t1|counter~8_combout\ : std_logic;
SIGNAL \t1|Add0~27\ : std_logic;
SIGNAL \t1|Add0~28_combout\ : std_logic;
SIGNAL \t1|counter~7_combout\ : std_logic;
SIGNAL \t1|Add0~29\ : std_logic;
SIGNAL \t1|Add0~30_combout\ : std_logic;
SIGNAL \t1|Add0~31\ : std_logic;
SIGNAL \t1|Add0~32_combout\ : std_logic;
SIGNAL \t1|counter~6_combout\ : std_logic;
SIGNAL \t1|Add0~33\ : std_logic;
SIGNAL \t1|Add0~34_combout\ : std_logic;
SIGNAL \t1|Add0~35\ : std_logic;
SIGNAL \t1|Add0~36_combout\ : std_logic;
SIGNAL \t1|counter~5_combout\ : std_logic;
SIGNAL \t1|Add0~37\ : std_logic;
SIGNAL \t1|Add0~38_combout\ : std_logic;
SIGNAL \t1|counter~4_combout\ : std_logic;
SIGNAL \t1|Add0~39\ : std_logic;
SIGNAL \t1|Add0~40_combout\ : std_logic;
SIGNAL \t1|counter~3_combout\ : std_logic;
SIGNAL \t1|Add0~41\ : std_logic;
SIGNAL \t1|Add0~42_combout\ : std_logic;
SIGNAL \t1|counter~2_combout\ : std_logic;
SIGNAL \t1|Add0~43\ : std_logic;
SIGNAL \t1|Add0~44_combout\ : std_logic;
SIGNAL \t1|counter~1_combout\ : std_logic;
SIGNAL \t1|Add0~45\ : std_logic;
SIGNAL \t1|Add0~46_combout\ : std_logic;
SIGNAL \t1|Add0~47\ : std_logic;
SIGNAL \t1|Add0~48_combout\ : std_logic;
SIGNAL \t1|counter~0_combout\ : std_logic;
SIGNAL \t1|Equal0~0_combout\ : std_logic;
SIGNAL \t1|Equal0~1_combout\ : std_logic;
SIGNAL \t1|Equal0~2_combout\ : std_logic;
SIGNAL \t1|Equal0~3_combout\ : std_logic;
SIGNAL \t1|Equal0~4_combout\ : std_logic;
SIGNAL \t1|Equal0~6_combout\ : std_logic;
SIGNAL \t1|Equal0~5_combout\ : std_logic;
SIGNAL \t1|Equal0~7_combout\ : std_logic;
SIGNAL \t1|tick[0]~3_combout\ : std_logic;
SIGNAL \t1|tick[1]~5_combout\ : std_logic;
SIGNAL \t1|Equal1~0_combout\ : std_logic;
SIGNAL \t1|tick[2]~2_combout\ : std_logic;
SIGNAL \t1|tick[2]~4_combout\ : std_logic;
SIGNAL \f1|ns.b~0_combout\ : std_logic;
SIGNAL \f1|ns.b~0clkctrl_outclk\ : std_logic;
SIGNAL \f1|ns.b_98~combout\ : std_logic;
SIGNAL \f1|state.b~q\ : std_logic;
SIGNAL \f1|Selector2~0_combout\ : std_logic;
SIGNAL \f1|ns.c_81~combout\ : std_logic;
SIGNAL \f1|state.c~q\ : std_logic;
SIGNAL \f1|Selector0~0_combout\ : std_logic;
SIGNAL \f1|ns.a_115~combout\ : std_logic;
SIGNAL \f1|state.a~0_combout\ : std_logic;
SIGNAL \f1|state.a~q\ : std_logic;
SIGNAL \t1|tick\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \t1|counter\ : std_logic_vector(24 DOWNTO 0);
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

\f1|ns.b~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \f1|ns.b~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\f1|ALT_INV_state.a~q\ <= NOT \f1|state.a~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y17_N23
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

-- Location: IOOBUF_X34_Y17_N16
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

-- Location: IOOBUF_X34_Y17_N2
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

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: IOIBUF_X0_Y11_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X26_Y15_N28
\f1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Selector1~0_combout\ = (\reset~input_o\) # (\f1|state.a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \f1|state.a~q\,
	combout => \f1|Selector1~0_combout\);

-- Location: IOIBUF_X23_Y24_N15
\done~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_done,
	o => \done~input_o\);

-- Location: LCCOMB_X23_Y17_N8
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

-- Location: FF_X23_Y17_N9
\t1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(0));

-- Location: LCCOMB_X23_Y17_N10
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

-- Location: FF_X23_Y17_N11
\t1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(1));

-- Location: LCCOMB_X23_Y17_N12
\t1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~4_combout\ = (\t1|counter\(2) & (\t1|Add0~3\ $ (GND))) # (!\t1|counter\(2) & (!\t1|Add0~3\ & VCC))
-- \t1|Add0~5\ = CARRY((\t1|counter\(2) & !\t1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(2),
	datad => VCC,
	cin => \t1|Add0~3\,
	combout => \t1|Add0~4_combout\,
	cout => \t1|Add0~5\);

-- Location: FF_X23_Y17_N13
\t1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(2));

-- Location: LCCOMB_X23_Y17_N14
\t1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~6_combout\ = (\t1|counter\(3) & (!\t1|Add0~5\)) # (!\t1|counter\(3) & ((\t1|Add0~5\) # (GND)))
-- \t1|Add0~7\ = CARRY((!\t1|Add0~5\) # (!\t1|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(3),
	datad => VCC,
	cin => \t1|Add0~5\,
	combout => \t1|Add0~6_combout\,
	cout => \t1|Add0~7\);

-- Location: FF_X23_Y17_N15
\t1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(3));

-- Location: LCCOMB_X23_Y17_N16
\t1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~8_combout\ = (\t1|counter\(4) & (\t1|Add0~7\ $ (GND))) # (!\t1|counter\(4) & (!\t1|Add0~7\ & VCC))
-- \t1|Add0~9\ = CARRY((\t1|counter\(4) & !\t1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(4),
	datad => VCC,
	cin => \t1|Add0~7\,
	combout => \t1|Add0~8_combout\,
	cout => \t1|Add0~9\);

-- Location: FF_X23_Y17_N17
\t1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(4));

-- Location: LCCOMB_X23_Y17_N18
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

-- Location: FF_X23_Y17_N19
\t1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(5));

-- Location: LCCOMB_X23_Y17_N20
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

-- Location: LCCOMB_X23_Y17_N2
\t1|counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~11_combout\ = (\t1|Add0~12_combout\ & \t1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|Add0~12_combout\,
	datad => \t1|Equal0~7_combout\,
	combout => \t1|counter~11_combout\);

-- Location: FF_X23_Y17_N3
\t1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|counter~11_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(6));

-- Location: LCCOMB_X23_Y17_N22
\t1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~14_combout\ = (\t1|counter\(7) & (!\t1|Add0~13\)) # (!\t1|counter\(7) & ((\t1|Add0~13\) # (GND)))
-- \t1|Add0~15\ = CARRY((!\t1|Add0~13\) # (!\t1|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(7),
	datad => VCC,
	cin => \t1|Add0~13\,
	combout => \t1|Add0~14_combout\,
	cout => \t1|Add0~15\);

-- Location: FF_X23_Y17_N23
\t1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(7));

-- Location: LCCOMB_X23_Y17_N24
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

-- Location: FF_X23_Y17_N25
\t1|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(8));

-- Location: LCCOMB_X23_Y17_N26
\t1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~18_combout\ = (\t1|counter\(9) & (!\t1|Add0~17\)) # (!\t1|counter\(9) & ((\t1|Add0~17\) # (GND)))
-- \t1|Add0~19\ = CARRY((!\t1|Add0~17\) # (!\t1|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(9),
	datad => VCC,
	cin => \t1|Add0~17\,
	combout => \t1|Add0~18_combout\,
	cout => \t1|Add0~19\);

-- Location: FF_X23_Y17_N27
\t1|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(9));

-- Location: LCCOMB_X23_Y17_N28
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

-- Location: FF_X23_Y17_N29
\t1|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(10));

-- Location: LCCOMB_X23_Y17_N30
\t1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~22_combout\ = (\t1|counter\(11) & (!\t1|Add0~21\)) # (!\t1|counter\(11) & ((\t1|Add0~21\) # (GND)))
-- \t1|Add0~23\ = CARRY((!\t1|Add0~21\) # (!\t1|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(11),
	datad => VCC,
	cin => \t1|Add0~21\,
	combout => \t1|Add0~22_combout\,
	cout => \t1|Add0~23\);

-- Location: LCCOMB_X23_Y17_N0
\t1|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~10_combout\ = (\t1|Add0~22_combout\ & \t1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Add0~22_combout\,
	datad => \t1|Equal0~7_combout\,
	combout => \t1|counter~10_combout\);

-- Location: FF_X23_Y17_N1
\t1|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|counter~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(11));

-- Location: LCCOMB_X23_Y16_N0
\t1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~24_combout\ = (\t1|counter\(12) & (\t1|Add0~23\ $ (GND))) # (!\t1|counter\(12) & (!\t1|Add0~23\ & VCC))
-- \t1|Add0~25\ = CARRY((\t1|counter\(12) & !\t1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(12),
	datad => VCC,
	cin => \t1|Add0~23\,
	combout => \t1|Add0~24_combout\,
	cout => \t1|Add0~25\);

-- Location: LCCOMB_X23_Y16_N30
\t1|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~9_combout\ = (\t1|Equal0~7_combout\ & \t1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~7_combout\,
	datad => \t1|Add0~24_combout\,
	combout => \t1|counter~9_combout\);

-- Location: FF_X23_Y16_N31
\t1|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|counter~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(12));

-- Location: LCCOMB_X23_Y16_N2
\t1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~26_combout\ = (\t1|counter\(13) & (!\t1|Add0~25\)) # (!\t1|counter\(13) & ((\t1|Add0~25\) # (GND)))
-- \t1|Add0~27\ = CARRY((!\t1|Add0~25\) # (!\t1|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(13),
	datad => VCC,
	cin => \t1|Add0~25\,
	combout => \t1|Add0~26_combout\,
	cout => \t1|Add0~27\);

-- Location: LCCOMB_X22_Y16_N24
\t1|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~8_combout\ = (\t1|Equal0~7_combout\ & \t1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|Equal0~7_combout\,
	datad => \t1|Add0~26_combout\,
	combout => \t1|counter~8_combout\);

-- Location: FF_X22_Y16_N25
\t1|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|counter~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(13));

-- Location: LCCOMB_X23_Y16_N4
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

-- Location: LCCOMB_X22_Y16_N22
\t1|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~7_combout\ = (\t1|Equal0~7_combout\ & \t1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|Equal0~7_combout\,
	datad => \t1|Add0~28_combout\,
	combout => \t1|counter~7_combout\);

-- Location: FF_X22_Y16_N23
\t1|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|counter~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(14));

-- Location: LCCOMB_X23_Y16_N6
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

-- Location: FF_X23_Y16_N7
\t1|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(15));

-- Location: LCCOMB_X23_Y16_N8
\t1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~32_combout\ = (\t1|counter\(16) & (\t1|Add0~31\ $ (GND))) # (!\t1|counter\(16) & (!\t1|Add0~31\ & VCC))
-- \t1|Add0~33\ = CARRY((\t1|counter\(16) & !\t1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(16),
	datad => VCC,
	cin => \t1|Add0~31\,
	combout => \t1|Add0~32_combout\,
	cout => \t1|Add0~33\);

-- Location: LCCOMB_X22_Y16_N16
\t1|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~6_combout\ = (\t1|Add0~32_combout\ & \t1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Add0~32_combout\,
	datad => \t1|Equal0~7_combout\,
	combout => \t1|counter~6_combout\);

-- Location: FF_X22_Y16_N17
\t1|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|counter~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(16));

-- Location: LCCOMB_X23_Y16_N10
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

-- Location: FF_X23_Y16_N11
\t1|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(17));

-- Location: LCCOMB_X23_Y16_N12
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

-- Location: LCCOMB_X22_Y16_N20
\t1|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~5_combout\ = (\t1|Add0~36_combout\ & \t1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Add0~36_combout\,
	datad => \t1|Equal0~7_combout\,
	combout => \t1|counter~5_combout\);

-- Location: FF_X22_Y16_N21
\t1|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|counter~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(18));

-- Location: LCCOMB_X23_Y16_N14
\t1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~38_combout\ = (\t1|counter\(19) & (!\t1|Add0~37\)) # (!\t1|counter\(19) & ((\t1|Add0~37\) # (GND)))
-- \t1|Add0~39\ = CARRY((!\t1|Add0~37\) # (!\t1|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(19),
	datad => VCC,
	cin => \t1|Add0~37\,
	combout => \t1|Add0~38_combout\,
	cout => \t1|Add0~39\);

-- Location: LCCOMB_X23_Y16_N28
\t1|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~4_combout\ = (\t1|Equal0~7_combout\ & \t1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~7_combout\,
	datad => \t1|Add0~38_combout\,
	combout => \t1|counter~4_combout\);

-- Location: FF_X23_Y16_N29
\t1|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|counter~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(19));

-- Location: LCCOMB_X23_Y16_N16
\t1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~40_combout\ = (\t1|counter\(20) & (\t1|Add0~39\ $ (GND))) # (!\t1|counter\(20) & (!\t1|Add0~39\ & VCC))
-- \t1|Add0~41\ = CARRY((\t1|counter\(20) & !\t1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(20),
	datad => VCC,
	cin => \t1|Add0~39\,
	combout => \t1|Add0~40_combout\,
	cout => \t1|Add0~41\);

-- Location: LCCOMB_X22_Y16_N6
\t1|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~3_combout\ = (\t1|Equal0~7_combout\ & \t1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|Equal0~7_combout\,
	datad => \t1|Add0~40_combout\,
	combout => \t1|counter~3_combout\);

-- Location: FF_X22_Y16_N7
\t1|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|counter~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(20));

-- Location: LCCOMB_X23_Y16_N18
\t1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~42_combout\ = (\t1|counter\(21) & (!\t1|Add0~41\)) # (!\t1|counter\(21) & ((\t1|Add0~41\) # (GND)))
-- \t1|Add0~43\ = CARRY((!\t1|Add0~41\) # (!\t1|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|counter\(21),
	datad => VCC,
	cin => \t1|Add0~41\,
	combout => \t1|Add0~42_combout\,
	cout => \t1|Add0~43\);

-- Location: LCCOMB_X22_Y16_N30
\t1|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~2_combout\ = (\t1|Equal0~7_combout\ & \t1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|Equal0~7_combout\,
	datad => \t1|Add0~42_combout\,
	combout => \t1|counter~2_combout\);

-- Location: FF_X22_Y16_N31
\t1|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|counter~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(21));

-- Location: LCCOMB_X23_Y16_N20
\t1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~44_combout\ = (\t1|counter\(22) & (\t1|Add0~43\ $ (GND))) # (!\t1|counter\(22) & (!\t1|Add0~43\ & VCC))
-- \t1|Add0~45\ = CARRY((\t1|counter\(22) & !\t1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(22),
	datad => VCC,
	cin => \t1|Add0~43\,
	combout => \t1|Add0~44_combout\,
	cout => \t1|Add0~45\);

-- Location: LCCOMB_X22_Y16_N8
\t1|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~1_combout\ = (\t1|Add0~44_combout\ & \t1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Add0~44_combout\,
	datad => \t1|Equal0~7_combout\,
	combout => \t1|counter~1_combout\);

-- Location: FF_X22_Y16_N9
\t1|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|counter~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(22));

-- Location: LCCOMB_X23_Y16_N22
\t1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~46_combout\ = (\t1|counter\(23) & (!\t1|Add0~45\)) # (!\t1|counter\(23) & ((\t1|Add0~45\) # (GND)))
-- \t1|Add0~47\ = CARRY((!\t1|Add0~45\) # (!\t1|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(23),
	datad => VCC,
	cin => \t1|Add0~45\,
	combout => \t1|Add0~46_combout\,
	cout => \t1|Add0~47\);

-- Location: FF_X23_Y16_N23
\t1|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(23));

-- Location: LCCOMB_X23_Y16_N24
\t1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~48_combout\ = \t1|counter\(24) $ (!\t1|Add0~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(24),
	cin => \t1|Add0~47\,
	combout => \t1|Add0~48_combout\);

-- Location: LCCOMB_X23_Y16_N26
\t1|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|counter~0_combout\ = (\t1|Equal0~7_combout\ & \t1|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~7_combout\,
	datad => \t1|Add0~48_combout\,
	combout => \t1|counter~0_combout\);

-- Location: FF_X23_Y16_N27
\t1|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|counter~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \done~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|counter\(24));

-- Location: LCCOMB_X22_Y16_N12
\t1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~0_combout\ = (((\t1|counter\(23)) # (!\t1|counter\(24))) # (!\t1|counter\(22))) # (!\t1|counter\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(21),
	datab => \t1|counter\(22),
	datac => \t1|counter\(24),
	datad => \t1|counter\(23),
	combout => \t1|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y16_N18
\t1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~1_combout\ = (((\t1|counter\(17)) # (!\t1|counter\(19))) # (!\t1|counter\(18))) # (!\t1|counter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(20),
	datab => \t1|counter\(18),
	datac => \t1|counter\(17),
	datad => \t1|counter\(19),
	combout => \t1|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y16_N26
\t1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~2_combout\ = (\t1|counter\(15)) # (((!\t1|counter\(13)) # (!\t1|counter\(14))) # (!\t1|counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(15),
	datab => \t1|counter\(16),
	datac => \t1|counter\(14),
	datad => \t1|counter\(13),
	combout => \t1|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y16_N28
\t1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~3_combout\ = ((\t1|counter\(10)) # ((\t1|counter\(9)) # (!\t1|counter\(11)))) # (!\t1|counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(12),
	datab => \t1|counter\(10),
	datac => \t1|counter\(9),
	datad => \t1|counter\(11),
	combout => \t1|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y16_N10
\t1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~4_combout\ = (\t1|Equal0~0_combout\) # ((\t1|Equal0~1_combout\) # ((\t1|Equal0~2_combout\) # (\t1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~0_combout\,
	datab => \t1|Equal0~1_combout\,
	datac => \t1|Equal0~2_combout\,
	datad => \t1|Equal0~3_combout\,
	combout => \t1|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y17_N6
\t1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~6_combout\ = (((!\t1|counter\(2)) # (!\t1|counter\(3))) # (!\t1|counter\(4))) # (!\t1|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(1),
	datab => \t1|counter\(4),
	datac => \t1|counter\(3),
	datad => \t1|counter\(2),
	combout => \t1|Equal0~6_combout\);

-- Location: LCCOMB_X23_Y17_N4
\t1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~5_combout\ = (\t1|counter\(8)) # ((\t1|counter\(6)) # ((\t1|counter\(7)) # (!\t1|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|counter\(8),
	datab => \t1|counter\(6),
	datac => \t1|counter\(7),
	datad => \t1|counter\(5),
	combout => \t1|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y16_N0
\t1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~7_combout\ = (\t1|Equal0~4_combout\) # (((\t1|Equal0~6_combout\) # (\t1|Equal0~5_combout\)) # (!\t1|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~4_combout\,
	datab => \t1|counter\(0),
	datac => \t1|Equal0~6_combout\,
	datad => \t1|Equal0~5_combout\,
	combout => \t1|Equal0~7_combout\);

-- Location: LCCOMB_X21_Y16_N28
\t1|tick[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|tick[0]~3_combout\ = (\done~input_o\ & (!\t1|Equal1~0_combout\ & (\t1|Equal0~7_combout\ $ (!\t1|tick\(0))))) # (!\done~input_o\ & (((\t1|tick\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \done~input_o\,
	datab => \t1|Equal0~7_combout\,
	datac => \t1|tick\(0),
	datad => \t1|Equal1~0_combout\,
	combout => \t1|tick[0]~3_combout\);

-- Location: FF_X21_Y16_N29
\t1|tick[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|tick[0]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|tick\(0));

-- Location: LCCOMB_X21_Y16_N30
\t1|tick[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|tick[1]~5_combout\ = (\t1|tick\(0) & ((\t1|tick\(1) $ (\t1|tick[2]~2_combout\)))) # (!\t1|tick\(0) & (\t1|tick\(1) & ((!\t1|tick[2]~2_combout\) # (!\t1|tick\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|tick\(2),
	datab => \t1|tick\(0),
	datac => \t1|tick\(1),
	datad => \t1|tick[2]~2_combout\,
	combout => \t1|tick[1]~5_combout\);

-- Location: FF_X21_Y16_N31
\t1|tick[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|tick[1]~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|tick\(1));

-- Location: LCCOMB_X21_Y16_N20
\t1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal1~0_combout\ = (!\t1|tick\(0) & (\t1|tick\(2) & \t1|tick\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|tick\(0),
	datac => \t1|tick\(2),
	datad => \t1|tick\(1),
	combout => \t1|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y16_N26
\t1|tick[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|tick[2]~2_combout\ = (\done~input_o\ & ((\t1|Equal1~0_combout\) # (!\t1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \done~input_o\,
	datac => \t1|Equal0~7_combout\,
	datad => \t1|Equal1~0_combout\,
	combout => \t1|tick[2]~2_combout\);

-- Location: LCCOMB_X21_Y16_N22
\t1|tick[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|tick[2]~4_combout\ = (\t1|tick[2]~2_combout\ & ((\t1|tick\(1) & (!\t1|tick\(2) & \t1|tick\(0))) # (!\t1|tick\(1) & (\t1|tick\(2))))) # (!\t1|tick[2]~2_combout\ & (((\t1|tick\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|tick[2]~2_combout\,
	datab => \t1|tick\(1),
	datac => \t1|tick\(2),
	datad => \t1|tick\(0),
	combout => \t1|tick[2]~4_combout\);

-- Location: FF_X21_Y16_N23
\t1|tick[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t1|tick[2]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|tick\(2));

-- Location: LCCOMB_X21_Y16_N24
\f1|ns.b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ns.b~0_combout\ = (\reset~input_o\) # ((\t1|tick\(2) & (!\t1|tick\(0) & \t1|tick\(1))) # (!\t1|tick\(2) & (\t1|tick\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|tick\(2),
	datab => \t1|tick\(0),
	datac => \t1|tick\(1),
	datad => \reset~input_o\,
	combout => \f1|ns.b~0_combout\);

-- Location: CLKCTRL_G7
\f1|ns.b~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \f1|ns.b~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \f1|ns.b~0clkctrl_outclk\);

-- Location: LCCOMB_X26_Y15_N22
\f1|ns.b_98\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ns.b_98~combout\ = (GLOBAL(\f1|ns.b~0clkctrl_outclk\) & ((!\f1|Selector1~0_combout\))) # (!GLOBAL(\f1|ns.b~0clkctrl_outclk\) & (\f1|ns.b_98~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ns.b_98~combout\,
	datac => \f1|Selector1~0_combout\,
	datad => \f1|ns.b~0clkctrl_outclk\,
	combout => \f1|ns.b_98~combout\);

-- Location: FF_X26_Y15_N23
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

-- Location: LCCOMB_X26_Y15_N6
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

-- Location: LCCOMB_X26_Y15_N4
\f1|ns.c_81\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ns.c_81~combout\ = (GLOBAL(\f1|ns.b~0clkctrl_outclk\) & (\f1|Selector2~0_combout\)) # (!GLOBAL(\f1|ns.b~0clkctrl_outclk\) & ((\f1|ns.c_81~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Selector2~0_combout\,
	datac => \f1|ns.c_81~combout\,
	datad => \f1|ns.b~0clkctrl_outclk\,
	combout => \f1|ns.c_81~combout\);

-- Location: FF_X26_Y15_N5
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

-- Location: LCCOMB_X26_Y15_N14
\f1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Selector0~0_combout\ = (\reset~input_o\) # (\f1|state.c~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \f1|state.c~q\,
	combout => \f1|Selector0~0_combout\);

-- Location: LCCOMB_X26_Y15_N24
\f1|ns.a_115\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ns.a_115~combout\ = (GLOBAL(\f1|ns.b~0clkctrl_outclk\) & ((\f1|Selector0~0_combout\))) # (!GLOBAL(\f1|ns.b~0clkctrl_outclk\) & (\f1|ns.a_115~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|ns.a_115~combout\,
	datac => \f1|Selector0~0_combout\,
	datad => \f1|ns.b~0clkctrl_outclk\,
	combout => \f1|ns.a_115~combout\);

-- Location: LCCOMB_X26_Y15_N8
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

-- Location: FF_X26_Y15_N9
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

-- Location: IOIBUF_X0_Y11_N15
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

ww_red <= \red~output_o\;

ww_yellow <= \yellow~output_o\;

ww_green <= \green~output_o\;
END structure;


