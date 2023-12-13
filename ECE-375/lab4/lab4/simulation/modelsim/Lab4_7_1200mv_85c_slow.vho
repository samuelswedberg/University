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

-- DATE "11/13/2023 21:58:49"

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

ENTITY 	Lab4 IS
    PORT (
	start : IN std_logic;
	clk : IN std_logic;
	productFPGA : OUT std_logic_vector(15 DOWNTO 0)
	);
END Lab4;

-- Design Ports Information
-- productFPGA[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- productFPGA[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- productFPGA[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- productFPGA[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- productFPGA[4]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- productFPGA[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- productFPGA[6]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- productFPGA[7]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- productFPGA[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- productFPGA[9]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- productFPGA[10]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- productFPGA[11]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- productFPGA[12]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- productFPGA[13]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- productFPGA[14]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- productFPGA[15]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_productFPGA : std_logic_vector(15 DOWNTO 0);
SIGNAL \fsm1|Selector29~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fsm1|Selector2~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fsm1|Selector29~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \productFPGA[0]~output_o\ : std_logic;
SIGNAL \productFPGA[1]~output_o\ : std_logic;
SIGNAL \productFPGA[2]~output_o\ : std_logic;
SIGNAL \productFPGA[3]~output_o\ : std_logic;
SIGNAL \productFPGA[4]~output_o\ : std_logic;
SIGNAL \productFPGA[5]~output_o\ : std_logic;
SIGNAL \productFPGA[6]~output_o\ : std_logic;
SIGNAL \productFPGA[7]~output_o\ : std_logic;
SIGNAL \productFPGA[8]~output_o\ : std_logic;
SIGNAL \productFPGA[9]~output_o\ : std_logic;
SIGNAL \productFPGA[10]~output_o\ : std_logic;
SIGNAL \productFPGA[11]~output_o\ : std_logic;
SIGNAL \productFPGA[12]~output_o\ : std_logic;
SIGNAL \productFPGA[13]~output_o\ : std_logic;
SIGNAL \productFPGA[14]~output_o\ : std_logic;
SIGNAL \productFPGA[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \fsm1|state.s0~feeder_combout\ : std_logic;
SIGNAL \fsm1|state.s0~q\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \fsm1|Selector29~0_combout\ : std_logic;
SIGNAL \fsm1|Selector29~0clkctrl_outclk\ : std_logic;
SIGNAL \fsm1|ns.s3_506~combout\ : std_logic;
SIGNAL \fsm1|state.s3~q\ : std_logic;
SIGNAL \fsm1|ns.s1_521~combout\ : std_logic;
SIGNAL \fsm1|state.s1~q\ : std_logic;
SIGNAL \fsm1|Selector19~0_combout\ : std_logic;
SIGNAL \fsm1|ns.s2_515~combout\ : std_logic;
SIGNAL \fsm1|state.s2~q\ : std_logic;
SIGNAL \fsm1|Selector2~0_combout\ : std_logic;
SIGNAL \fsm1|Selector2~0clkctrl_outclk\ : std_logic;
SIGNAL \fsm1|signedbit~combout\ : std_logic;
SIGNAL \fsm1|prodIntermed[15]~7_combout\ : std_logic;
SIGNAL \fsm1|prodIntermed[14]~6_combout\ : std_logic;
SIGNAL \fsm1|prodIntermed[13]~5_combout\ : std_logic;
SIGNAL \fsm1|prodIntermed[12]~4_combout\ : std_logic;
SIGNAL \fsm1|prodIntermed[11]~3_combout\ : std_logic;
SIGNAL \fsm1|prodIntermed[10]~2_combout\ : std_logic;
SIGNAL \fsm1|prodIntermed[9]~1_combout\ : std_logic;
SIGNAL \fsm1|prodIntermed[8]~0_combout\ : std_logic;
SIGNAL \fsm1|Selector28~0_combout\ : std_logic;
SIGNAL \fsm1|Selector29~1_combout\ : std_logic;
SIGNAL \fsm1|Selector29~1clkctrl_outclk\ : std_logic;
SIGNAL \fsm1|Selector27~0_combout\ : std_logic;
SIGNAL \fsm1|Selector26~0_combout\ : std_logic;
SIGNAL \fsm1|Selector25~0_combout\ : std_logic;
SIGNAL \fsm1|Selector24~0_combout\ : std_logic;
SIGNAL \fsm1|Selector23~0_combout\ : std_logic;
SIGNAL \fsm1|Selector22~0_combout\ : std_logic;
SIGNAL \fsm1|Selector21~0_combout\ : std_logic;
SIGNAL \fsm1|prodIntermed\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \fsm1|productShift\ : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_start <= start;
ww_clk <= clk;
productFPGA <= ww_productFPGA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\fsm1|Selector29~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fsm1|Selector29~0_combout\);

\fsm1|Selector2~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fsm1|Selector2~0_combout\);

\fsm1|Selector29~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fsm1|Selector29~1_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X60_Y73_N9
\productFPGA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm1|prodIntermed\(0),
	devoe => ww_devoe,
	o => \productFPGA[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\productFPGA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm1|prodIntermed\(1),
	devoe => ww_devoe,
	o => \productFPGA[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\productFPGA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm1|prodIntermed\(2),
	devoe => ww_devoe,
	o => \productFPGA[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\productFPGA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm1|prodIntermed\(3),
	devoe => ww_devoe,
	o => \productFPGA[3]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\productFPGA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm1|prodIntermed\(4),
	devoe => ww_devoe,
	o => \productFPGA[4]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\productFPGA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm1|prodIntermed\(5),
	devoe => ww_devoe,
	o => \productFPGA[5]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\productFPGA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm1|prodIntermed\(6),
	devoe => ww_devoe,
	o => \productFPGA[6]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\productFPGA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm1|prodIntermed\(7),
	devoe => ww_devoe,
	o => \productFPGA[7]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\productFPGA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm1|prodIntermed\(8),
	devoe => ww_devoe,
	o => \productFPGA[8]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\productFPGA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm1|prodIntermed\(9),
	devoe => ww_devoe,
	o => \productFPGA[9]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\productFPGA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm1|prodIntermed\(10),
	devoe => ww_devoe,
	o => \productFPGA[10]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\productFPGA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm1|prodIntermed\(11),
	devoe => ww_devoe,
	o => \productFPGA[11]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\productFPGA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm1|prodIntermed\(12),
	devoe => ww_devoe,
	o => \productFPGA[12]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\productFPGA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm1|prodIntermed\(13),
	devoe => ww_devoe,
	o => \productFPGA[13]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\productFPGA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm1|prodIntermed\(14),
	devoe => ww_devoe,
	o => \productFPGA[14]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\productFPGA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm1|prodIntermed\(15),
	devoe => ww_devoe,
	o => \productFPGA[15]~output_o\);

-- Location: IOIBUF_X58_Y73_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X56_Y72_N0
\fsm1|state.s0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|state.s0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fsm1|state.s0~feeder_combout\);

-- Location: FF_X56_Y72_N1
\fsm1|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \fsm1|state.s0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|state.s0~q\);

-- Location: IOIBUF_X58_Y73_N15
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X57_Y72_N2
\fsm1|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|Selector29~0_combout\ = (\fsm1|state.s0~q\) # (\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm1|state.s0~q\,
	datad => \start~input_o\,
	combout => \fsm1|Selector29~0_combout\);

-- Location: CLKCTRL_G10
\fsm1|Selector29~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fsm1|Selector29~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fsm1|Selector29~0clkctrl_outclk\);

-- Location: LCCOMB_X57_Y72_N28
\fsm1|ns.s3_506\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|ns.s3_506~combout\ = (GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & ((\fsm1|Selector2~0_combout\))) # (!GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & (\fsm1|ns.s3_506~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|ns.s3_506~combout\,
	datac => \fsm1|Selector29~0clkctrl_outclk\,
	datad => \fsm1|Selector2~0_combout\,
	combout => \fsm1|ns.s3_506~combout\);

-- Location: FF_X57_Y72_N29
\fsm1|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \fsm1|ns.s3_506~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|state.s3~q\);

-- Location: LCCOMB_X57_Y72_N18
\fsm1|ns.s1_521\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|ns.s1_521~combout\ = (!\fsm1|state.s0~q\ & ((\start~input_o\) # (\fsm1|ns.s1_521~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|state.s0~q\,
	datac => \start~input_o\,
	datad => \fsm1|ns.s1_521~combout\,
	combout => \fsm1|ns.s1_521~combout\);

-- Location: FF_X57_Y72_N19
\fsm1|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \fsm1|ns.s1_521~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|state.s1~q\);

-- Location: LCCOMB_X57_Y72_N6
\fsm1|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|Selector19~0_combout\ = (\fsm1|prodIntermed\(0) & ((\fsm1|state.s3~q\) # (\fsm1|state.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|state.s3~q\,
	datac => \fsm1|state.s1~q\,
	datad => \fsm1|prodIntermed\(0),
	combout => \fsm1|Selector19~0_combout\);

-- Location: LCCOMB_X57_Y72_N10
\fsm1|ns.s2_515\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|ns.s2_515~combout\ = (GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & ((\fsm1|Selector19~0_combout\))) # (!GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & (\fsm1|ns.s2_515~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|ns.s2_515~combout\,
	datac => \fsm1|Selector29~0clkctrl_outclk\,
	datad => \fsm1|Selector19~0_combout\,
	combout => \fsm1|ns.s2_515~combout\);

-- Location: FF_X57_Y72_N11
\fsm1|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \fsm1|ns.s2_515~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|state.s2~q\);

-- Location: LCCOMB_X57_Y72_N20
\fsm1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|Selector2~0_combout\ = (\fsm1|state.s2~q\) # ((!\fsm1|prodIntermed\(0) & ((\fsm1|state.s1~q\) # (\fsm1|state.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|state.s2~q\,
	datab => \fsm1|state.s1~q\,
	datac => \fsm1|prodIntermed\(0),
	datad => \fsm1|state.s3~q\,
	combout => \fsm1|Selector2~0_combout\);

-- Location: CLKCTRL_G13
\fsm1|Selector2~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fsm1|Selector2~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fsm1|Selector2~0clkctrl_outclk\);

-- Location: LCCOMB_X54_Y72_N8
\fsm1|signedbit\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|signedbit~combout\ = (GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & ((\fsm1|productShift\(15)))) # (!GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & (\fsm1|signedbit~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|signedbit~combout\,
	datac => \fsm1|productShift\(15),
	datad => \fsm1|Selector2~0clkctrl_outclk\,
	combout => \fsm1|signedbit~combout\);

-- Location: LCCOMB_X54_Y72_N30
\fsm1|productShift[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|productShift\(15) = (GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & ((\fsm1|signedbit~combout\))) # (!GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & (\fsm1|productShift\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|productShift\(15),
	datac => \fsm1|signedbit~combout\,
	datad => \fsm1|Selector2~0clkctrl_outclk\,
	combout => \fsm1|productShift\(15));

-- Location: LCCOMB_X54_Y72_N14
\fsm1|prodIntermed[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed[15]~7_combout\ = (\fsm1|productShift\(15) & \fsm1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|productShift\(15),
	datad => \fsm1|state.s0~q\,
	combout => \fsm1|prodIntermed[15]~7_combout\);

-- Location: LCCOMB_X54_Y72_N18
\fsm1|prodIntermed[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed\(15) = (GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & (\fsm1|prodIntermed[15]~7_combout\)) # (!GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & ((\fsm1|prodIntermed\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|prodIntermed[15]~7_combout\,
	datac => \fsm1|prodIntermed\(15),
	datad => \fsm1|Selector29~0clkctrl_outclk\,
	combout => \fsm1|prodIntermed\(15));

-- Location: LCCOMB_X54_Y72_N20
\fsm1|productShift[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|productShift\(14) = (GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & ((\fsm1|prodIntermed\(15)))) # (!GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & (\fsm1|productShift\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|productShift\(14),
	datac => \fsm1|Selector2~0clkctrl_outclk\,
	datad => \fsm1|prodIntermed\(15),
	combout => \fsm1|productShift\(14));

-- Location: LCCOMB_X54_Y72_N12
\fsm1|prodIntermed[14]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed[14]~6_combout\ = (\fsm1|productShift\(14) & \fsm1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|productShift\(14),
	datab => \fsm1|state.s0~q\,
	combout => \fsm1|prodIntermed[14]~6_combout\);

-- Location: LCCOMB_X54_Y72_N16
\fsm1|prodIntermed[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed\(14) = (GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & (\fsm1|prodIntermed[14]~6_combout\)) # (!GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & ((\fsm1|prodIntermed\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|prodIntermed[14]~6_combout\,
	datab => \fsm1|prodIntermed\(14),
	datad => \fsm1|Selector29~0clkctrl_outclk\,
	combout => \fsm1|prodIntermed\(14));

-- Location: LCCOMB_X54_Y72_N26
\fsm1|productShift[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|productShift\(13) = (GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & ((\fsm1|prodIntermed\(14)))) # (!GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & (\fsm1|productShift\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|productShift\(13),
	datac => \fsm1|Selector2~0clkctrl_outclk\,
	datad => \fsm1|prodIntermed\(14),
	combout => \fsm1|productShift\(13));

-- Location: LCCOMB_X54_Y72_N6
\fsm1|prodIntermed[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed[13]~5_combout\ = (\fsm1|productShift\(13) & \fsm1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|productShift\(13),
	datab => \fsm1|state.s0~q\,
	combout => \fsm1|prodIntermed[13]~5_combout\);

-- Location: LCCOMB_X54_Y72_N10
\fsm1|prodIntermed[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed\(13) = (GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & ((\fsm1|prodIntermed[13]~5_combout\))) # (!GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & (\fsm1|prodIntermed\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|prodIntermed\(13),
	datac => \fsm1|prodIntermed[13]~5_combout\,
	datad => \fsm1|Selector29~0clkctrl_outclk\,
	combout => \fsm1|prodIntermed\(13));

-- Location: LCCOMB_X54_Y72_N4
\fsm1|productShift[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|productShift\(12) = (GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & ((\fsm1|prodIntermed\(13)))) # (!GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & (\fsm1|productShift\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|productShift\(12),
	datac => \fsm1|Selector2~0clkctrl_outclk\,
	datad => \fsm1|prodIntermed\(13),
	combout => \fsm1|productShift\(12));

-- Location: LCCOMB_X54_Y72_N24
\fsm1|prodIntermed[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed[12]~4_combout\ = (\fsm1|state.s0~q\ & \fsm1|productShift\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|state.s0~q\,
	datac => \fsm1|productShift\(12),
	combout => \fsm1|prodIntermed[12]~4_combout\);

-- Location: LCCOMB_X54_Y72_N28
\fsm1|prodIntermed[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed\(12) = (GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & ((\fsm1|prodIntermed[12]~4_combout\))) # (!GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & (\fsm1|prodIntermed\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|prodIntermed\(12),
	datac => \fsm1|prodIntermed[12]~4_combout\,
	datad => \fsm1|Selector29~0clkctrl_outclk\,
	combout => \fsm1|prodIntermed\(12));

-- Location: LCCOMB_X55_Y72_N10
\fsm1|productShift[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|productShift\(11) = (GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & ((\fsm1|prodIntermed\(12)))) # (!GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & (\fsm1|productShift\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|productShift\(11),
	datac => \fsm1|Selector2~0clkctrl_outclk\,
	datad => \fsm1|prodIntermed\(12),
	combout => \fsm1|productShift\(11));

-- Location: LCCOMB_X55_Y72_N26
\fsm1|prodIntermed[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed[11]~3_combout\ = (\fsm1|state.s0~q\ & \fsm1|productShift\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|state.s0~q\,
	datac => \fsm1|productShift\(11),
	combout => \fsm1|prodIntermed[11]~3_combout\);

-- Location: LCCOMB_X55_Y72_N6
\fsm1|prodIntermed[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed\(11) = (GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & ((\fsm1|prodIntermed[11]~3_combout\))) # (!GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & (\fsm1|prodIntermed\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|prodIntermed\(11),
	datac => \fsm1|prodIntermed[11]~3_combout\,
	datad => \fsm1|Selector29~0clkctrl_outclk\,
	combout => \fsm1|prodIntermed\(11));

-- Location: LCCOMB_X55_Y72_N24
\fsm1|productShift[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|productShift\(10) = (GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & ((\fsm1|prodIntermed\(11)))) # (!GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & (\fsm1|productShift\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|productShift\(10),
	datac => \fsm1|Selector2~0clkctrl_outclk\,
	datad => \fsm1|prodIntermed\(11),
	combout => \fsm1|productShift\(10));

-- Location: LCCOMB_X55_Y72_N20
\fsm1|prodIntermed[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed[10]~2_combout\ = (\fsm1|productShift\(10)) # (!\fsm1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|productShift\(10),
	datad => \fsm1|state.s0~q\,
	combout => \fsm1|prodIntermed[10]~2_combout\);

-- Location: LCCOMB_X55_Y72_N16
\fsm1|prodIntermed[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed\(10) = (GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & (\fsm1|prodIntermed[10]~2_combout\)) # (!GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & ((\fsm1|prodIntermed\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|prodIntermed[10]~2_combout\,
	datab => \fsm1|prodIntermed\(10),
	datad => \fsm1|Selector29~0clkctrl_outclk\,
	combout => \fsm1|prodIntermed\(10));

-- Location: LCCOMB_X55_Y72_N2
\fsm1|productShift[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|productShift\(9) = (GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & ((\fsm1|prodIntermed\(10)))) # (!GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & (\fsm1|productShift\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|productShift\(9),
	datac => \fsm1|Selector2~0clkctrl_outclk\,
	datad => \fsm1|prodIntermed\(10),
	combout => \fsm1|productShift\(9));

-- Location: LCCOMB_X55_Y72_N22
\fsm1|prodIntermed[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed[9]~1_combout\ = (\fsm1|state.s0~q\ & \fsm1|productShift\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|state.s0~q\,
	datac => \fsm1|productShift\(9),
	combout => \fsm1|prodIntermed[9]~1_combout\);

-- Location: LCCOMB_X55_Y72_N18
\fsm1|prodIntermed[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed\(9) = (GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & ((\fsm1|prodIntermed[9]~1_combout\))) # (!GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & (\fsm1|prodIntermed\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|prodIntermed\(9),
	datac => \fsm1|prodIntermed[9]~1_combout\,
	datad => \fsm1|Selector29~0clkctrl_outclk\,
	combout => \fsm1|prodIntermed\(9));

-- Location: LCCOMB_X55_Y72_N12
\fsm1|productShift[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|productShift\(8) = (GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & ((\fsm1|prodIntermed\(9)))) # (!GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & (\fsm1|productShift\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|productShift\(8),
	datac => \fsm1|Selector2~0clkctrl_outclk\,
	datad => \fsm1|prodIntermed\(9),
	combout => \fsm1|productShift\(8));

-- Location: LCCOMB_X55_Y72_N28
\fsm1|prodIntermed[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed[8]~0_combout\ = (\fsm1|productShift\(8)) # (!\fsm1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|productShift\(8),
	datad => \fsm1|state.s0~q\,
	combout => \fsm1|prodIntermed[8]~0_combout\);

-- Location: LCCOMB_X55_Y72_N8
\fsm1|prodIntermed[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed\(8) = (GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & (\fsm1|prodIntermed[8]~0_combout\)) # (!GLOBAL(\fsm1|Selector29~0clkctrl_outclk\) & ((\fsm1|prodIntermed\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|prodIntermed[8]~0_combout\,
	datac => \fsm1|prodIntermed\(8),
	datad => \fsm1|Selector29~0clkctrl_outclk\,
	combout => \fsm1|prodIntermed\(8));

-- Location: LCCOMB_X56_Y72_N16
\fsm1|productShift[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|productShift\(7) = (GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & ((\fsm1|prodIntermed\(8)))) # (!GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & (\fsm1|productShift\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|productShift\(7),
	datac => \fsm1|Selector2~0clkctrl_outclk\,
	datad => \fsm1|prodIntermed\(8),
	combout => \fsm1|productShift\(7));

-- Location: LCCOMB_X56_Y72_N18
\fsm1|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|Selector28~0_combout\ = (\fsm1|productShift\(7) & \fsm1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|productShift\(7),
	datad => \fsm1|state.s0~q\,
	combout => \fsm1|Selector28~0_combout\);

-- Location: LCCOMB_X57_Y72_N12
\fsm1|Selector29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|Selector29~1_combout\ = (\fsm1|Selector29~0_combout\ & (((!\fsm1|state.s3~q\ & !\fsm1|state.s1~q\)) # (!\fsm1|prodIntermed\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|prodIntermed\(0),
	datab => \fsm1|state.s3~q\,
	datac => \fsm1|state.s1~q\,
	datad => \fsm1|Selector29~0_combout\,
	combout => \fsm1|Selector29~1_combout\);

-- Location: CLKCTRL_G11
\fsm1|Selector29~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fsm1|Selector29~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fsm1|Selector29~1clkctrl_outclk\);

-- Location: LCCOMB_X56_Y72_N4
\fsm1|prodIntermed[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed\(7) = (GLOBAL(\fsm1|Selector29~1clkctrl_outclk\) & ((\fsm1|Selector28~0_combout\))) # (!GLOBAL(\fsm1|Selector29~1clkctrl_outclk\) & (\fsm1|prodIntermed\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|prodIntermed\(7),
	datac => \fsm1|Selector28~0_combout\,
	datad => \fsm1|Selector29~1clkctrl_outclk\,
	combout => \fsm1|prodIntermed\(7));

-- Location: LCCOMB_X56_Y72_N12
\fsm1|productShift[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|productShift\(6) = (GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & ((\fsm1|prodIntermed\(7)))) # (!GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & (\fsm1|productShift\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|productShift\(6),
	datac => \fsm1|prodIntermed\(7),
	datad => \fsm1|Selector2~0clkctrl_outclk\,
	combout => \fsm1|productShift\(6));

-- Location: LCCOMB_X56_Y72_N24
\fsm1|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|Selector27~0_combout\ = (\fsm1|productShift\(6) & \fsm1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|productShift\(6),
	datad => \fsm1|state.s0~q\,
	combout => \fsm1|Selector27~0_combout\);

-- Location: LCCOMB_X56_Y72_N26
\fsm1|prodIntermed[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed\(6) = (GLOBAL(\fsm1|Selector29~1clkctrl_outclk\) & (\fsm1|Selector27~0_combout\)) # (!GLOBAL(\fsm1|Selector29~1clkctrl_outclk\) & ((\fsm1|prodIntermed\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|Selector27~0_combout\,
	datac => \fsm1|prodIntermed\(6),
	datad => \fsm1|Selector29~1clkctrl_outclk\,
	combout => \fsm1|prodIntermed\(6));

-- Location: LCCOMB_X56_Y72_N20
\fsm1|productShift[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|productShift\(5) = (GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & ((\fsm1|prodIntermed\(6)))) # (!GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & (\fsm1|productShift\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|productShift\(5),
	datac => \fsm1|prodIntermed\(6),
	datad => \fsm1|Selector2~0clkctrl_outclk\,
	combout => \fsm1|productShift\(5));

-- Location: LCCOMB_X56_Y72_N28
\fsm1|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|Selector26~0_combout\ = (\fsm1|productShift\(5) & \fsm1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm1|productShift\(5),
	datad => \fsm1|state.s0~q\,
	combout => \fsm1|Selector26~0_combout\);

-- Location: LCCOMB_X56_Y72_N22
\fsm1|prodIntermed[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed\(5) = (GLOBAL(\fsm1|Selector29~1clkctrl_outclk\) & (\fsm1|Selector26~0_combout\)) # (!GLOBAL(\fsm1|Selector29~1clkctrl_outclk\) & ((\fsm1|prodIntermed\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|Selector26~0_combout\,
	datac => \fsm1|prodIntermed\(5),
	datad => \fsm1|Selector29~1clkctrl_outclk\,
	combout => \fsm1|prodIntermed\(5));

-- Location: LCCOMB_X56_Y72_N30
\fsm1|productShift[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|productShift\(4) = (GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & ((\fsm1|prodIntermed\(5)))) # (!GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & (\fsm1|productShift\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|productShift\(4),
	datac => \fsm1|prodIntermed\(5),
	datad => \fsm1|Selector2~0clkctrl_outclk\,
	combout => \fsm1|productShift\(4));

-- Location: LCCOMB_X56_Y72_N2
\fsm1|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|Selector25~0_combout\ = (\fsm1|productShift\(4) & \fsm1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|productShift\(4),
	datad => \fsm1|state.s0~q\,
	combout => \fsm1|Selector25~0_combout\);

-- Location: LCCOMB_X56_Y72_N8
\fsm1|prodIntermed[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed\(4) = (GLOBAL(\fsm1|Selector29~1clkctrl_outclk\) & (\fsm1|Selector25~0_combout\)) # (!GLOBAL(\fsm1|Selector29~1clkctrl_outclk\) & ((\fsm1|prodIntermed\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|Selector25~0_combout\,
	datac => \fsm1|prodIntermed\(4),
	datad => \fsm1|Selector29~1clkctrl_outclk\,
	combout => \fsm1|prodIntermed\(4));

-- Location: LCCOMB_X56_Y72_N6
\fsm1|productShift[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|productShift\(3) = (GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & ((\fsm1|prodIntermed\(4)))) # (!GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & (\fsm1|productShift\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|productShift\(3),
	datac => \fsm1|prodIntermed\(4),
	datad => \fsm1|Selector2~0clkctrl_outclk\,
	combout => \fsm1|productShift\(3));

-- Location: LCCOMB_X56_Y72_N10
\fsm1|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|Selector24~0_combout\ = (\fsm1|productShift\(3) & \fsm1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|productShift\(3),
	datad => \fsm1|state.s0~q\,
	combout => \fsm1|Selector24~0_combout\);

-- Location: LCCOMB_X56_Y72_N14
\fsm1|prodIntermed[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed\(3) = (GLOBAL(\fsm1|Selector29~1clkctrl_outclk\) & (\fsm1|Selector24~0_combout\)) # (!GLOBAL(\fsm1|Selector29~1clkctrl_outclk\) & ((\fsm1|prodIntermed\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|Selector24~0_combout\,
	datac => \fsm1|prodIntermed\(3),
	datad => \fsm1|Selector29~1clkctrl_outclk\,
	combout => \fsm1|prodIntermed\(3));

-- Location: LCCOMB_X57_Y72_N16
\fsm1|productShift[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|productShift\(2) = (GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & ((\fsm1|prodIntermed\(3)))) # (!GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & (\fsm1|productShift\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|productShift\(2),
	datac => \fsm1|Selector2~0clkctrl_outclk\,
	datad => \fsm1|prodIntermed\(3),
	combout => \fsm1|productShift\(2));

-- Location: LCCOMB_X57_Y72_N8
\fsm1|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|Selector23~0_combout\ = (\fsm1|state.s0~q\ & \fsm1|productShift\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|state.s0~q\,
	datad => \fsm1|productShift\(2),
	combout => \fsm1|Selector23~0_combout\);

-- Location: LCCOMB_X57_Y72_N4
\fsm1|prodIntermed[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed\(2) = (GLOBAL(\fsm1|Selector29~1clkctrl_outclk\) & ((\fsm1|Selector23~0_combout\))) # (!GLOBAL(\fsm1|Selector29~1clkctrl_outclk\) & (\fsm1|prodIntermed\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|prodIntermed\(2),
	datac => \fsm1|Selector23~0_combout\,
	datad => \fsm1|Selector29~1clkctrl_outclk\,
	combout => \fsm1|prodIntermed\(2));

-- Location: LCCOMB_X57_Y72_N22
\fsm1|productShift[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|productShift\(1) = (GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & ((\fsm1|prodIntermed\(2)))) # (!GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & (\fsm1|productShift\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|productShift\(1),
	datab => \fsm1|Selector2~0clkctrl_outclk\,
	datac => \fsm1|prodIntermed\(2),
	combout => \fsm1|productShift\(1));

-- Location: LCCOMB_X57_Y72_N30
\fsm1|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|Selector22~0_combout\ = (\fsm1|productShift\(1) & \fsm1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|productShift\(1),
	datad => \fsm1|state.s0~q\,
	combout => \fsm1|Selector22~0_combout\);

-- Location: LCCOMB_X57_Y72_N14
\fsm1|prodIntermed[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed\(1) = (GLOBAL(\fsm1|Selector29~1clkctrl_outclk\) & ((\fsm1|Selector22~0_combout\))) # (!GLOBAL(\fsm1|Selector29~1clkctrl_outclk\) & (\fsm1|prodIntermed\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|prodIntermed\(1),
	datac => \fsm1|Selector22~0_combout\,
	datad => \fsm1|Selector29~1clkctrl_outclk\,
	combout => \fsm1|prodIntermed\(1));

-- Location: LCCOMB_X57_Y72_N24
\fsm1|productShift[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|productShift\(0) = (GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & (\fsm1|prodIntermed\(1))) # (!GLOBAL(\fsm1|Selector2~0clkctrl_outclk\) & ((\fsm1|productShift\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|Selector2~0clkctrl_outclk\,
	datac => \fsm1|prodIntermed\(1),
	datad => \fsm1|productShift\(0),
	combout => \fsm1|productShift\(0));

-- Location: LCCOMB_X57_Y72_N0
\fsm1|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|Selector21~0_combout\ = (\fsm1|state.s0~q\ & \fsm1|productShift\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|state.s0~q\,
	datab => \fsm1|productShift\(0),
	combout => \fsm1|Selector21~0_combout\);

-- Location: LCCOMB_X57_Y72_N26
\fsm1|prodIntermed[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm1|prodIntermed\(0) = (GLOBAL(\fsm1|Selector29~1clkctrl_outclk\) & ((\fsm1|Selector21~0_combout\))) # (!GLOBAL(\fsm1|Selector29~1clkctrl_outclk\) & (\fsm1|prodIntermed\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|prodIntermed\(0),
	datac => \fsm1|Selector21~0_combout\,
	datad => \fsm1|Selector29~1clkctrl_outclk\,
	combout => \fsm1|prodIntermed\(0));

ww_productFPGA(0) <= \productFPGA[0]~output_o\;

ww_productFPGA(1) <= \productFPGA[1]~output_o\;

ww_productFPGA(2) <= \productFPGA[2]~output_o\;

ww_productFPGA(3) <= \productFPGA[3]~output_o\;

ww_productFPGA(4) <= \productFPGA[4]~output_o\;

ww_productFPGA(5) <= \productFPGA[5]~output_o\;

ww_productFPGA(6) <= \productFPGA[6]~output_o\;

ww_productFPGA(7) <= \productFPGA[7]~output_o\;

ww_productFPGA(8) <= \productFPGA[8]~output_o\;

ww_productFPGA(9) <= \productFPGA[9]~output_o\;

ww_productFPGA(10) <= \productFPGA[10]~output_o\;

ww_productFPGA(11) <= \productFPGA[11]~output_o\;

ww_productFPGA(12) <= \productFPGA[12]~output_o\;

ww_productFPGA(13) <= \productFPGA[13]~output_o\;

ww_productFPGA(14) <= \productFPGA[14]~output_o\;

ww_productFPGA(15) <= \productFPGA[15]~output_o\;
END structure;


