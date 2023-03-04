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

-- DATE "03/23/2022 10:50:38"

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

ENTITY 	Lab7Q2 IS
    PORT (
	i : IN std_logic_vector(7 DOWNTO 0);
	o : OUT std_logic_vector(2 DOWNTO 0)
	);
END Lab7Q2;

-- Design Ports Information
-- i[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab7Q2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o : std_logic_vector(2 DOWNTO 0);
SIGNAL \i[7]~input_o\ : std_logic;
SIGNAL \o[0]~output_o\ : std_logic;
SIGNAL \o[1]~output_o\ : std_logic;
SIGNAL \o[2]~output_o\ : std_logic;
SIGNAL \i[1]~input_o\ : std_logic;
SIGNAL \i[6]~input_o\ : std_logic;
SIGNAL \i[5]~input_o\ : std_logic;
SIGNAL \i[4]~input_o\ : std_logic;
SIGNAL \i[3]~input_o\ : std_logic;
SIGNAL \o~0_combout\ : std_logic;
SIGNAL \i[2]~input_o\ : std_logic;
SIGNAL \i[0]~input_o\ : std_logic;
SIGNAL \o~1_combout\ : std_logic;
SIGNAL \o~2_combout\ : std_logic;
SIGNAL \o~3_combout\ : std_logic;
SIGNAL \o~4_combout\ : std_logic;
SIGNAL \ALT_INV_o~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i <= i;
o <= ww_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_o~4_combout\ <= NOT \o~4_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o~1_combout\,
	devoe => ww_devoe,
	o => \o[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o~3_combout\,
	devoe => ww_devoe,
	o => \o[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o~4_combout\,
	devoe => ww_devoe,
	o => \o[2]~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\i[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(1),
	o => \i[1]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\i[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(6),
	o => \i[6]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\i[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(5),
	o => \i[5]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\i[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(4),
	o => \i[4]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\i[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(3),
	o => \i[3]~input_o\);

-- Location: LCCOMB_X114_Y17_N24
\o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o~0_combout\ = (!\i[3]~input_o\ & ((\i[4]~input_o\) # ((\i[6]~input_o\ & !\i[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[6]~input_o\,
	datab => \i[5]~input_o\,
	datac => \i[4]~input_o\,
	datad => \i[3]~input_o\,
	combout => \o~0_combout\);

-- Location: IOIBUF_X115_Y15_N8
\i[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(2),
	o => \i[2]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\i[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(0),
	o => \i[0]~input_o\);

-- Location: LCCOMB_X114_Y17_N10
\o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \o~1_combout\ = (!\i[0]~input_o\ & ((\i[1]~input_o\) # ((!\o~0_combout\ & !\i[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[1]~input_o\,
	datab => \o~0_combout\,
	datac => \i[2]~input_o\,
	datad => \i[0]~input_o\,
	combout => \o~1_combout\);

-- Location: LCCOMB_X114_Y17_N12
\o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \o~2_combout\ = (\i[3]~input_o\) # ((\i[2]~input_o\) # ((!\i[4]~input_o\ & !\i[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[3]~input_o\,
	datab => \i[2]~input_o\,
	datac => \i[4]~input_o\,
	datad => \i[5]~input_o\,
	combout => \o~2_combout\);

-- Location: LCCOMB_X114_Y17_N6
\o~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \o~3_combout\ = (\o~2_combout\ & (!\i[0]~input_o\ & !\i[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o~2_combout\,
	datab => \i[0]~input_o\,
	datad => \i[1]~input_o\,
	combout => \o~3_combout\);

-- Location: LCCOMB_X114_Y17_N16
\o~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \o~4_combout\ = (\i[1]~input_o\) # ((\i[0]~input_o\) # ((\i[2]~input_o\) # (\i[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[1]~input_o\,
	datab => \i[0]~input_o\,
	datac => \i[2]~input_o\,
	datad => \i[3]~input_o\,
	combout => \o~4_combout\);

-- Location: IOIBUF_X115_Y15_N1
\i[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(7),
	o => \i[7]~input_o\);

ww_o(0) <= \o[0]~output_o\;

ww_o(1) <= \o[1]~output_o\;

ww_o(2) <= \o[2]~output_o\;
END structure;


