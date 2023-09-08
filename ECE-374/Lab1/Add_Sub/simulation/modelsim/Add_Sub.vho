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

-- DATE "08/29/2023 16:15:35"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Add_Sub IS
    PORT (
	X : IN std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0)
	);
END Add_Sub;

-- Design Ports Information
-- S[0]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Add_Sub IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \FAO1|S~0_combout\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \FAO1|Co~0_combout\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \FAO1|Co~1_combout\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \FAO2|S~combout\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \FAO2|Co~0_combout\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \FAO3|S~0_combout\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \FAO3|Co~0_combout\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \FAO4|S~0_combout\ : std_logic;
SIGNAL z : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_X <= X;
ww_Y <= Y;
ww_Cin <= Cin;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y27_N16
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FAO1|S~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FAO2|S~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FAO3|S~0_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FAO4|S~0_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOIBUF_X0_Y32_N15
\Y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: IOIBUF_X0_Y32_N22
\X[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: LCCOMB_X1_Y29_N16
\FAO1|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FAO1|S~0_combout\ = \Y[0]~input_o\ $ (\X[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datad => \X[0]~input_o\,
	combout => \FAO1|S~0_combout\);

-- Location: IOIBUF_X0_Y27_N22
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X1_Y29_N12
\FAO1|Co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FAO1|Co~0_combout\ = (\X[0]~input_o\ & (\Y[0]~input_o\ $ (\Cin~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \X[0]~input_o\,
	combout => \FAO1|Co~0_combout\);

-- Location: IOIBUF_X0_Y29_N22
\X[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: LCCOMB_X1_Y29_N22
\FAO1|Co~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FAO1|Co~1_combout\ = (\Cin~input_o\ & ((\X[0]~input_o\) # (!\Y[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \X[0]~input_o\,
	combout => \FAO1|Co~1_combout\);

-- Location: IOIBUF_X0_Y30_N8
\Y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: LCCOMB_X1_Y29_N10
\z[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- z(1) = \Y[1]~input_o\ $ (\Cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[1]~input_o\,
	datac => \Cin~input_o\,
	combout => z(1));

-- Location: LCCOMB_X1_Y29_N8
\FAO2|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \FAO2|S~combout\ = \X[1]~input_o\ $ (z(1) $ (((\FAO1|Co~0_combout\) # (\FAO1|Co~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FAO1|Co~0_combout\,
	datab => \X[1]~input_o\,
	datac => \FAO1|Co~1_combout\,
	datad => z(1),
	combout => \FAO2|S~combout\);

-- Location: IOIBUF_X0_Y29_N15
\X[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: LCCOMB_X1_Y29_N26
\FAO2|Co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FAO2|Co~0_combout\ = (\X[1]~input_o\ & ((\FAO1|Co~0_combout\) # ((\FAO1|Co~1_combout\) # (z(1))))) # (!\X[1]~input_o\ & (z(1) & ((\FAO1|Co~0_combout\) # (\FAO1|Co~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FAO1|Co~0_combout\,
	datab => \X[1]~input_o\,
	datac => \FAO1|Co~1_combout\,
	datad => z(1),
	combout => \FAO2|Co~0_combout\);

-- Location: IOIBUF_X0_Y30_N1
\Y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: LCCOMB_X1_Y29_N28
\FAO3|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FAO3|S~0_combout\ = \X[2]~input_o\ $ (\Cin~input_o\ $ (\FAO2|Co~0_combout\ $ (\Y[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \Cin~input_o\,
	datac => \FAO2|Co~0_combout\,
	datad => \Y[2]~input_o\,
	combout => \FAO3|S~0_combout\);

-- Location: IOIBUF_X0_Y28_N15
\Y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: LCCOMB_X1_Y29_N30
\FAO3|Co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FAO3|Co~0_combout\ = (\X[2]~input_o\ & ((\FAO2|Co~0_combout\) # (\Cin~input_o\ $ (\Y[2]~input_o\)))) # (!\X[2]~input_o\ & (\FAO2|Co~0_combout\ & (\Cin~input_o\ $ (\Y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \Cin~input_o\,
	datac => \FAO2|Co~0_combout\,
	datad => \Y[2]~input_o\,
	combout => \FAO3|Co~0_combout\);

-- Location: IOIBUF_X0_Y31_N15
\X[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: LCCOMB_X1_Y28_N16
\FAO4|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FAO4|S~0_combout\ = \Cin~input_o\ $ (\Y[3]~input_o\ $ (\FAO3|Co~0_combout\ $ (\X[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \Y[3]~input_o\,
	datac => \FAO3|Co~0_combout\,
	datad => \X[3]~input_o\,
	combout => \FAO4|S~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;
END structure;


