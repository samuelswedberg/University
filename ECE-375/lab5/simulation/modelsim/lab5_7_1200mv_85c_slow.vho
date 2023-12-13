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

-- DATE "11/27/2023 12:45:28"

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

ENTITY 	lab5 IS
    PORT (
	m : IN std_logic_vector(5 DOWNTO 0);
	r : IN std_logic_vector(5 DOWNTO 0);
	result : BUFFER std_logic_vector(11 DOWNTO 0)
	);
END lab5;

-- Design Ports Information
-- result[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[2]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[3]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[4]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[5]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_m : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_r : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(11 DOWNTO 0);
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \r[2]~input_o\ : std_logic;
SIGNAL \r[0]~input_o\ : std_logic;
SIGNAL \r[1]~input_o\ : std_logic;
SIGNAL \r[3]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \r[4]~input_o\ : std_logic;
SIGNAL \m[1]~input_o\ : std_logic;
SIGNAL \m[3]~input_o\ : std_logic;
SIGNAL \m[2]~input_o\ : std_logic;
SIGNAL \m[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \m[5]~input_o\ : std_logic;
SIGNAL \m[4]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \r[5]~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \p~0_combout\ : std_logic;
SIGNAL \p~1_combout\ : std_logic;
SIGNAL \p~3_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \p~2_combout\ : std_logic;
SIGNAL \p~4_combout\ : std_logic;
SIGNAL \p~7_combout\ : std_logic;
SIGNAL \p~5_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \p~6_combout\ : std_logic;
SIGNAL \p~8_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \p~9_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \p~10_combout\ : std_logic;
SIGNAL \p~11_combout\ : std_logic;
SIGNAL \p~12_combout\ : std_logic;
SIGNAL \p~15_combout\ : std_logic;
SIGNAL \p~13_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~9_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~5_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \p~14_combout\ : std_logic;
SIGNAL \p~16_combout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \p~17_combout\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~19_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~13_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~9_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add7~5_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add9~3_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \p~18_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add1~20\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~17_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~13_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~9_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~5_combout\ : std_logic;
SIGNAL \Add9~7_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add1~24\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~31_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~21_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~17_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add7~13_combout\ : std_logic;
SIGNAL \Add9~6\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add3~25_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~21_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Add7~17_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~11_combout\ : std_logic;
SIGNAL \Add9~13_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \Add5~25_combout\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Add7~21_combout\ : std_logic;
SIGNAL \Add9~12\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~22_combout\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add7~24_combout\ : std_logic;
SIGNAL \Add7~25_combout\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~17_combout\ : std_logic;
SIGNAL \Add9~19_combout\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Add9~18\ : std_logic;
SIGNAL \Add9~21_combout\ : std_logic;
SIGNAL \Add9~23_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_m <= m;
ww_r <= r;
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
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p~0_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p~4_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p~8_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p~12_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p~16_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add9~4_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add9~7_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add9~10_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add9~13_combout\,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add9~16_combout\,
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add9~19_combout\,
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add9~23_combout\,
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOIBUF_X115_Y10_N8
\r[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(2),
	o => \r[2]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\r[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(0),
	o => \r[0]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\r[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(1),
	o => \r[1]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\r[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(3),
	o => \r[3]~input_o\);

-- Location: LCCOMB_X114_Y14_N10
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\r[2]~input_o\ & (!\r[0]~input_o\ & (!\r[1]~input_o\ & !\r[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[2]~input_o\,
	datab => \r[0]~input_o\,
	datac => \r[1]~input_o\,
	datad => \r[3]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X115_Y13_N1
\r[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(4),
	o => \r[4]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\m[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(1),
	o => \m[1]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\m[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(3),
	o => \m[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\m[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(2),
	o => \m[2]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\m[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(0),
	o => \m[0]~input_o\);

-- Location: LCCOMB_X114_Y13_N0
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\m[1]~input_o\ & (!\m[3]~input_o\ & (!\m[2]~input_o\ & !\m[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[1]~input_o\,
	datab => \m[3]~input_o\,
	datac => \m[2]~input_o\,
	datad => \m[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X115_Y11_N8
\m[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(5),
	o => \m[5]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\m[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(4),
	o => \m[4]~input_o\);

-- Location: LCCOMB_X114_Y14_N8
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (!\m[5]~input_o\ & !\m[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \m[5]~input_o\,
	datad => \m[4]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X115_Y14_N8
\r[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(5),
	o => \r[5]~input_o\);

-- Location: LCCOMB_X110_Y14_N8
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\Equal0~1_combout\) # ((\Equal1~0_combout\ & (!\r[4]~input_o\ & !\r[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \r[4]~input_o\,
	datac => \Equal0~1_combout\,
	datad => \r[5]~input_o\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X112_Y13_N16
\p~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~0_combout\ = (!\process_0~0_combout\ & (\m[0]~input_o\ & \r[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~0_combout\,
	datac => \m[0]~input_o\,
	datad => \r[0]~input_o\,
	combout => \p~0_combout\);

-- Location: LCCOMB_X114_Y13_N2
\p~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~1_combout\ = (\r[0]~input_o\ & (\m[1]~input_o\ $ (\m[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[1]~input_o\,
	datab => \r[0]~input_o\,
	datad => \m[0]~input_o\,
	combout => \p~1_combout\);

-- Location: LCCOMB_X112_Y13_N2
\p~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~3_combout\ = \r[0]~input_o\ $ (\r[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r[0]~input_o\,
	datac => \r[1]~input_o\,
	combout => \p~3_combout\);

-- Location: LCCOMB_X113_Y13_N16
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\p~1_combout\ & (\m[0]~input_o\ $ (VCC))) # (!\p~1_combout\ & (\m[0]~input_o\ & VCC))
-- \Add2~1\ = CARRY((\p~1_combout\ & \m[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p~1_combout\,
	datab => \m[0]~input_o\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X114_Y13_N4
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\p~1_combout\ & (\m[0]~input_o\ $ (VCC))) # (!\p~1_combout\ & (\m[0]~input_o\ & VCC))
-- \Add1~7\ = CARRY((\p~1_combout\ & \m[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p~1_combout\,
	datab => \m[0]~input_o\,
	datad => VCC,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X113_Y13_N8
\p~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~2_combout\ = (\r[0]~input_o\ & (((!\r[1]~input_o\ & \Add1~6_combout\)))) # (!\r[0]~input_o\ & (\Add2~0_combout\ & (\r[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[0]~input_o\,
	datab => \Add2~0_combout\,
	datac => \r[1]~input_o\,
	datad => \Add1~6_combout\,
	combout => \p~2_combout\);

-- Location: LCCOMB_X112_Y13_N28
\p~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~4_combout\ = (!\process_0~0_combout\ & ((\p~2_combout\) # ((\p~1_combout\ & !\p~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p~1_combout\,
	datab => \p~3_combout\,
	datac => \p~2_combout\,
	datad => \process_0~0_combout\,
	combout => \p~4_combout\);

-- Location: LCCOMB_X112_Y13_N10
\p~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~7_combout\ = \r[1]~input_o\ $ (\r[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r[1]~input_o\,
	datad => \r[2]~input_o\,
	combout => \p~7_combout\);

-- Location: LCCOMB_X114_Y13_N26
\p~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~5_combout\ = (\r[0]~input_o\ & (\m[2]~input_o\ $ (((\m[1]~input_o\) # (\m[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[1]~input_o\,
	datab => \r[0]~input_o\,
	datac => \m[2]~input_o\,
	datad => \m[0]~input_o\,
	combout => \p~5_combout\);

-- Location: LCCOMB_X114_Y13_N6
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\m[1]~input_o\ & ((\p~5_combout\ & (\Add1~7\ & VCC)) # (!\p~5_combout\ & (!\Add1~7\)))) # (!\m[1]~input_o\ & ((\p~5_combout\ & (!\Add1~7\)) # (!\p~5_combout\ & ((\Add1~7\) # (GND)))))
-- \Add1~9\ = CARRY((\m[1]~input_o\ & (!\p~5_combout\ & !\Add1~7\)) # (!\m[1]~input_o\ & ((!\Add1~7\) # (!\p~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m[1]~input_o\,
	datab => \p~5_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X114_Y13_N20
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \m[1]~input_o\ $ (\m[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[1]~input_o\,
	datad => \m[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X113_Y13_N18
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\p~5_combout\ & ((\Add0~0_combout\ & (\Add2~1\ & VCC)) # (!\Add0~0_combout\ & (!\Add2~1\)))) # (!\p~5_combout\ & ((\Add0~0_combout\ & (!\Add2~1\)) # (!\Add0~0_combout\ & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((\p~5_combout\ & (!\Add0~0_combout\ & !\Add2~1\)) # (!\p~5_combout\ & ((!\Add2~1\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p~5_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X113_Y13_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\r[0]~input_o\ & (\Add1~8_combout\ & (!\r[1]~input_o\))) # (!\r[0]~input_o\ & (((\r[1]~input_o\ & \Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[0]~input_o\,
	datab => \Add1~8_combout\,
	datac => \r[1]~input_o\,
	datad => \Add2~2_combout\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X112_Y13_N14
\Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (\Add1~10_combout\) # ((\p~5_combout\ & (\r[1]~input_o\ $ (!\r[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \p~5_combout\,
	datac => \r[1]~input_o\,
	datad => \r[0]~input_o\,
	combout => \Add1~11_combout\);

-- Location: LCCOMB_X111_Y13_N2
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\m[0]~input_o\ & (\Add1~11_combout\ $ (VCC))) # (!\m[0]~input_o\ & (\Add1~11_combout\ & VCC))
-- \Add3~1\ = CARRY((\m[0]~input_o\ & \Add1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \Add1~11_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X111_Y13_N16
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\m[0]~input_o\ & (\Add1~11_combout\ $ (VCC))) # (!\m[0]~input_o\ & (\Add1~11_combout\ & VCC))
-- \Add4~1\ = CARRY((\m[0]~input_o\ & \Add1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \Add1~11_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X112_Y13_N8
\p~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~6_combout\ = (\r[1]~input_o\ & (\Add3~0_combout\ & ((!\r[2]~input_o\)))) # (!\r[1]~input_o\ & (((\Add4~0_combout\ & \r[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \r[1]~input_o\,
	datac => \Add4~0_combout\,
	datad => \r[2]~input_o\,
	combout => \p~6_combout\);

-- Location: LCCOMB_X112_Y13_N12
\p~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~8_combout\ = (!\process_0~0_combout\ & ((\p~6_combout\) # ((!\p~7_combout\ & \Add1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p~7_combout\,
	datab => \process_0~0_combout\,
	datac => \p~6_combout\,
	datad => \Add1~11_combout\,
	combout => \p~8_combout\);

-- Location: LCCOMB_X110_Y14_N2
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \m[3]~input_o\ $ (((\m[1]~input_o\) # ((\m[2]~input_o\) # (\m[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[1]~input_o\,
	datab => \m[2]~input_o\,
	datac => \m[3]~input_o\,
	datad => \m[0]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X113_Y13_N12
\p~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~9_combout\ = (\r[0]~input_o\ & \Add0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r[0]~input_o\,
	datad => \Add0~1_combout\,
	combout => \p~9_combout\);

-- Location: LCCOMB_X114_Y13_N8
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\m[2]~input_o\ $ (\p~9_combout\ $ (!\Add1~9\)))) # (GND)
-- \Add1~13\ = CARRY((\m[2]~input_o\ & ((\p~9_combout\) # (!\Add1~9\))) # (!\m[2]~input_o\ & (\p~9_combout\ & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m[2]~input_o\,
	datab => \p~9_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X110_Y14_N4
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \m[2]~input_o\ $ (((\m[1]~input_o\) # (\m[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m[2]~input_o\,
	datac => \m[1]~input_o\,
	datad => \m[0]~input_o\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X113_Y13_N20
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\p~9_combout\ $ (\Add0~2_combout\ $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\p~9_combout\ & ((\Add0~2_combout\) # (!\Add2~3\))) # (!\p~9_combout\ & (\Add0~2_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p~9_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X113_Y13_N6
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\r[0]~input_o\ & (\Add1~12_combout\ & (!\r[1]~input_o\))) # (!\r[0]~input_o\ & (((\r[1]~input_o\ & \Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[0]~input_o\,
	datab => \Add1~12_combout\,
	datac => \r[1]~input_o\,
	datad => \Add2~4_combout\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X112_Y13_N22
\Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~29_combout\ = (\Add1~14_combout\) # ((\Add0~1_combout\ & (\r[0]~input_o\ & \r[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \r[0]~input_o\,
	datac => \r[1]~input_o\,
	datad => \Add1~14_combout\,
	combout => \Add1~29_combout\);

-- Location: LCCOMB_X111_Y13_N4
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Add1~29_combout\ & ((\m[1]~input_o\ & (\Add3~1\ & VCC)) # (!\m[1]~input_o\ & (!\Add3~1\)))) # (!\Add1~29_combout\ & ((\m[1]~input_o\ & (!\Add3~1\)) # (!\m[1]~input_o\ & ((\Add3~1\) # (GND)))))
-- \Add3~3\ = CARRY((\Add1~29_combout\ & (!\m[1]~input_o\ & !\Add3~1\)) # (!\Add1~29_combout\ & ((!\Add3~1\) # (!\m[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~29_combout\,
	datab => \m[1]~input_o\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X111_Y13_N18
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Add1~29_combout\ & ((\Add0~0_combout\ & (\Add4~1\ & VCC)) # (!\Add0~0_combout\ & (!\Add4~1\)))) # (!\Add1~29_combout\ & ((\Add0~0_combout\ & (!\Add4~1\)) # (!\Add0~0_combout\ & ((\Add4~1\) # (GND)))))
-- \Add4~3\ = CARRY((\Add1~29_combout\ & (!\Add0~0_combout\ & !\Add4~1\)) # (!\Add1~29_combout\ & ((!\Add4~1\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~29_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X111_Y13_N0
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\r[2]~input_o\ & (((!\r[1]~input_o\ & \Add4~2_combout\)))) # (!\r[2]~input_o\ & (\Add3~2_combout\ & (\r[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[2]~input_o\,
	datab => \Add3~2_combout\,
	datac => \r[1]~input_o\,
	datad => \Add4~2_combout\,
	combout => \Add3~4_combout\);

-- Location: LCCOMB_X112_Y13_N30
\Add3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~5_combout\ = (\Add3~4_combout\) # ((\Add1~29_combout\ & (\r[1]~input_o\ $ (!\r[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~29_combout\,
	datab => \r[1]~input_o\,
	datac => \Add3~4_combout\,
	datad => \r[2]~input_o\,
	combout => \Add3~5_combout\);

-- Location: LCCOMB_X113_Y14_N4
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (\m[0]~input_o\ & (\Add3~5_combout\ $ (VCC))) # (!\m[0]~input_o\ & (\Add3~5_combout\ & VCC))
-- \Add6~1\ = CARRY((\m[0]~input_o\ & \Add3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \Add3~5_combout\,
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X113_Y14_N18
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\m[0]~input_o\ & (\Add3~5_combout\ $ (VCC))) # (!\m[0]~input_o\ & (\Add3~5_combout\ & VCC))
-- \Add5~1\ = CARRY((\m[0]~input_o\ & \Add3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \Add3~5_combout\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X112_Y14_N8
\p~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~10_combout\ = (\r[3]~input_o\ & (\Add6~0_combout\ & (!\r[2]~input_o\))) # (!\r[3]~input_o\ & (((\r[2]~input_o\ & \Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \Add6~0_combout\,
	datac => \r[2]~input_o\,
	datad => \Add5~0_combout\,
	combout => \p~10_combout\);

-- Location: LCCOMB_X112_Y13_N24
\p~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~11_combout\ = \r[3]~input_o\ $ (\r[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r[3]~input_o\,
	datad => \r[2]~input_o\,
	combout => \p~11_combout\);

-- Location: LCCOMB_X112_Y13_N26
\p~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~12_combout\ = (!\process_0~0_combout\ & ((\p~10_combout\) # ((!\p~11_combout\ & \Add3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p~10_combout\,
	datab => \p~11_combout\,
	datac => \Add3~5_combout\,
	datad => \process_0~0_combout\,
	combout => \p~12_combout\);

-- Location: LCCOMB_X110_Y14_N6
\p~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~15_combout\ = \r[3]~input_o\ $ (\r[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r[3]~input_o\,
	datac => \r[4]~input_o\,
	combout => \p~15_combout\);

-- Location: LCCOMB_X114_Y13_N22
\p~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~13_combout\ = (\r[0]~input_o\ & (\Equal0~0_combout\ $ (!\m[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \m[4]~input_o\,
	datad => \r[0]~input_o\,
	combout => \p~13_combout\);

-- Location: LCCOMB_X114_Y13_N10
\Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (\p~13_combout\ & ((\m[3]~input_o\ & (\Add1~13\ & VCC)) # (!\m[3]~input_o\ & (!\Add1~13\)))) # (!\p~13_combout\ & ((\m[3]~input_o\ & (!\Add1~13\)) # (!\m[3]~input_o\ & ((\Add1~13\) # (GND)))))
-- \Add1~16\ = CARRY((\p~13_combout\ & (!\m[3]~input_o\ & !\Add1~13\)) # (!\p~13_combout\ & ((!\Add1~13\) # (!\m[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p~13_combout\,
	datab => \m[3]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~15_combout\,
	cout => \Add1~16\);

-- Location: LCCOMB_X113_Y13_N22
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\p~13_combout\ & ((\Add0~1_combout\ & (\Add2~5\ & VCC)) # (!\Add0~1_combout\ & (!\Add2~5\)))) # (!\p~13_combout\ & ((\Add0~1_combout\ & (!\Add2~5\)) # (!\Add0~1_combout\ & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((\p~13_combout\ & (!\Add0~1_combout\ & !\Add2~5\)) # (!\p~13_combout\ & ((!\Add2~5\) # (!\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p~13_combout\,
	datab => \Add0~1_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X113_Y13_N0
\Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (\r[0]~input_o\ & (\Add1~15_combout\ & (!\r[1]~input_o\))) # (!\r[0]~input_o\ & (((\r[1]~input_o\ & \Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[0]~input_o\,
	datab => \Add1~15_combout\,
	datac => \r[1]~input_o\,
	datad => \Add2~6_combout\,
	combout => \Add1~17_combout\);

-- Location: LCCOMB_X112_Y13_N20
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\Add1~17_combout\) # ((\p~13_combout\ & (\r[1]~input_o\ $ (!\r[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p~13_combout\,
	datab => \Add1~17_combout\,
	datac => \r[1]~input_o\,
	datad => \r[0]~input_o\,
	combout => \Add1~18_combout\);

-- Location: LCCOMB_X111_Y13_N6
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = ((\Add1~18_combout\ $ (\m[2]~input_o\ $ (!\Add3~3\)))) # (GND)
-- \Add3~7\ = CARRY((\Add1~18_combout\ & ((\m[2]~input_o\) # (!\Add3~3\))) # (!\Add1~18_combout\ & (\m[2]~input_o\ & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \m[2]~input_o\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X111_Y13_N20
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((\Add1~18_combout\ $ (\Add0~2_combout\ $ (!\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((\Add1~18_combout\ & ((\Add0~2_combout\) # (!\Add4~3\))) # (!\Add1~18_combout\ & (\Add0~2_combout\ & !\Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X112_Y13_N6
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\r[1]~input_o\ & (\Add3~6_combout\ & ((!\r[2]~input_o\)))) # (!\r[1]~input_o\ & (((\Add4~4_combout\ & \r[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add4~4_combout\,
	datac => \r[1]~input_o\,
	datad => \r[2]~input_o\,
	combout => \Add3~8_combout\);

-- Location: LCCOMB_X112_Y13_N0
\Add3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~9_combout\ = (\Add3~8_combout\) # ((\Add1~18_combout\ & (\r[1]~input_o\ $ (!\r[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Add1~18_combout\,
	datac => \r[1]~input_o\,
	datad => \r[2]~input_o\,
	combout => \Add3~9_combout\);

-- Location: LCCOMB_X113_Y14_N6
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\Add3~9_combout\ & ((\Add0~0_combout\ & (\Add6~1\ & VCC)) # (!\Add0~0_combout\ & (!\Add6~1\)))) # (!\Add3~9_combout\ & ((\Add0~0_combout\ & (!\Add6~1\)) # (!\Add0~0_combout\ & ((\Add6~1\) # (GND)))))
-- \Add6~3\ = CARRY((\Add3~9_combout\ & (!\Add0~0_combout\ & !\Add6~1\)) # (!\Add3~9_combout\ & ((!\Add6~1\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~9_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X113_Y14_N20
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\Add3~9_combout\ & ((\m[1]~input_o\ & (\Add5~1\ & VCC)) # (!\m[1]~input_o\ & (!\Add5~1\)))) # (!\Add3~9_combout\ & ((\m[1]~input_o\ & (!\Add5~1\)) # (!\m[1]~input_o\ & ((\Add5~1\) # (GND)))))
-- \Add5~3\ = CARRY((\Add3~9_combout\ & (!\m[1]~input_o\ & !\Add5~1\)) # (!\Add3~9_combout\ & ((!\Add5~1\) # (!\m[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~9_combout\,
	datab => \m[1]~input_o\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X113_Y14_N0
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\r[3]~input_o\ & (\Add6~2_combout\ & ((!\r[2]~input_o\)))) # (!\r[3]~input_o\ & (((\Add5~2_combout\ & \r[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => \r[3]~input_o\,
	datac => \Add5~2_combout\,
	datad => \r[2]~input_o\,
	combout => \Add5~4_combout\);

-- Location: LCCOMB_X112_Y14_N18
\Add5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~5_combout\ = (\Add5~4_combout\) # ((\Add3~9_combout\ & (\r[3]~input_o\ $ (!\r[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \Add5~4_combout\,
	datac => \r[2]~input_o\,
	datad => \Add3~9_combout\,
	combout => \Add5~5_combout\);

-- Location: LCCOMB_X111_Y14_N18
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (\m[0]~input_o\ & (\Add5~5_combout\ $ (VCC))) # (!\m[0]~input_o\ & (\Add5~5_combout\ & VCC))
-- \Add7~1\ = CARRY((\m[0]~input_o\ & \Add5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \Add5~5_combout\,
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X111_Y14_N4
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = (\m[0]~input_o\ & (\Add5~5_combout\ $ (VCC))) # (!\m[0]~input_o\ & (\Add5~5_combout\ & VCC))
-- \Add8~1\ = CARRY((\m[0]~input_o\ & \Add5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \Add5~5_combout\,
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X111_Y14_N0
\p~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~14_combout\ = (\r[3]~input_o\ & (\Add7~0_combout\ & ((!\r[4]~input_o\)))) # (!\r[3]~input_o\ & (((\Add8~0_combout\ & \r[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \Add7~0_combout\,
	datac => \Add8~0_combout\,
	datad => \r[4]~input_o\,
	combout => \p~14_combout\);

-- Location: LCCOMB_X110_Y14_N24
\p~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~16_combout\ = (!\process_0~0_combout\ & ((\p~14_combout\) # ((!\p~15_combout\ & \Add5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p~15_combout\,
	datab => \p~14_combout\,
	datac => \process_0~0_combout\,
	datad => \Add5~5_combout\,
	combout => \p~16_combout\);

-- Location: LCCOMB_X109_Y14_N10
\Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (!\Equal0~1_combout\ & (\r[4]~input_o\ $ (\r[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \r[4]~input_o\,
	datad => \r[5]~input_o\,
	combout => \Add9~2_combout\);

-- Location: LCCOMB_X114_Y13_N24
\p~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~17_combout\ = (\r[0]~input_o\ & (\m[5]~input_o\ $ (((\m[4]~input_o\) # (!\Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[4]~input_o\,
	datab => \r[0]~input_o\,
	datac => \m[5]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \p~17_combout\);

-- Location: LCCOMB_X114_Y13_N12
\Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~19_combout\ = ((\m[4]~input_o\ $ (\p~17_combout\ $ (!\Add1~16\)))) # (GND)
-- \Add1~20\ = CARRY((\m[4]~input_o\ & ((\p~17_combout\) # (!\Add1~16\))) # (!\m[4]~input_o\ & (\p~17_combout\ & !\Add1~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m[4]~input_o\,
	datab => \p~17_combout\,
	datad => VCC,
	cin => \Add1~16\,
	combout => \Add1~19_combout\,
	cout => \Add1~20\);

-- Location: LCCOMB_X114_Y14_N20
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = \Equal0~0_combout\ $ (!\m[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datad => \m[4]~input_o\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X113_Y13_N24
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\Add0~3_combout\ $ (\p~17_combout\ $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\Add0~3_combout\ & ((\p~17_combout\) # (!\Add2~7\))) # (!\Add0~3_combout\ & (\p~17_combout\ & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \p~17_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X113_Y13_N2
\Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (\r[0]~input_o\ & (\Add1~19_combout\ & (!\r[1]~input_o\))) # (!\r[0]~input_o\ & (((\r[1]~input_o\ & \Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[0]~input_o\,
	datab => \Add1~19_combout\,
	datac => \r[1]~input_o\,
	datad => \Add2~8_combout\,
	combout => \Add1~21_combout\);

-- Location: LCCOMB_X113_Y13_N4
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\Add1~21_combout\) # ((\p~17_combout\ & (\r[0]~input_o\ $ (!\r[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[0]~input_o\,
	datab => \p~17_combout\,
	datac => \r[1]~input_o\,
	datad => \Add1~21_combout\,
	combout => \Add1~22_combout\);

-- Location: LCCOMB_X111_Y13_N8
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\m[3]~input_o\ & ((\Add1~22_combout\ & (\Add3~7\ & VCC)) # (!\Add1~22_combout\ & (!\Add3~7\)))) # (!\m[3]~input_o\ & ((\Add1~22_combout\ & (!\Add3~7\)) # (!\Add1~22_combout\ & ((\Add3~7\) # (GND)))))
-- \Add3~11\ = CARRY((\m[3]~input_o\ & (!\Add1~22_combout\ & !\Add3~7\)) # (!\m[3]~input_o\ & ((!\Add3~7\) # (!\Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m[3]~input_o\,
	datab => \Add1~22_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X111_Y13_N22
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\Add0~1_combout\ & ((\Add1~22_combout\ & (\Add4~5\ & VCC)) # (!\Add1~22_combout\ & (!\Add4~5\)))) # (!\Add0~1_combout\ & ((\Add1~22_combout\ & (!\Add4~5\)) # (!\Add1~22_combout\ & ((\Add4~5\) # (GND)))))
-- \Add4~7\ = CARRY((\Add0~1_combout\ & (!\Add1~22_combout\ & !\Add4~5\)) # (!\Add0~1_combout\ & ((!\Add4~5\) # (!\Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \Add1~22_combout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X112_Y13_N18
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\r[1]~input_o\ & (\Add3~10_combout\ & ((!\r[2]~input_o\)))) # (!\r[1]~input_o\ & (((\Add4~6_combout\ & \r[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \Add4~6_combout\,
	datac => \r[1]~input_o\,
	datad => \r[2]~input_o\,
	combout => \Add3~12_combout\);

-- Location: LCCOMB_X112_Y13_N4
\Add3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~13_combout\ = (\Add3~12_combout\) # ((\Add1~22_combout\ & (\r[2]~input_o\ $ (!\r[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[2]~input_o\,
	datab => \Add1~22_combout\,
	datac => \r[1]~input_o\,
	datad => \Add3~12_combout\,
	combout => \Add3~13_combout\);

-- Location: LCCOMB_X113_Y14_N22
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = ((\Add3~13_combout\ $ (\m[2]~input_o\ $ (!\Add5~3\)))) # (GND)
-- \Add5~7\ = CARRY((\Add3~13_combout\ & ((\m[2]~input_o\) # (!\Add5~3\))) # (!\Add3~13_combout\ & (\m[2]~input_o\ & !\Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~13_combout\,
	datab => \m[2]~input_o\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X113_Y14_N8
\Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = ((\Add0~2_combout\ $ (\Add3~13_combout\ $ (!\Add6~3\)))) # (GND)
-- \Add6~5\ = CARRY((\Add0~2_combout\ & ((\Add3~13_combout\) # (!\Add6~3\))) # (!\Add0~2_combout\ & (\Add3~13_combout\ & !\Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add3~13_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X113_Y14_N2
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (\r[3]~input_o\ & (((\Add6~4_combout\ & !\r[2]~input_o\)))) # (!\r[3]~input_o\ & (\Add5~6_combout\ & ((\r[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~6_combout\,
	datab => \r[3]~input_o\,
	datac => \Add6~4_combout\,
	datad => \r[2]~input_o\,
	combout => \Add5~8_combout\);

-- Location: LCCOMB_X112_Y14_N20
\Add5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~9_combout\ = (\Add5~8_combout\) # ((\Add3~13_combout\ & (\r[2]~input_o\ $ (!\r[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~13_combout\,
	datab => \r[2]~input_o\,
	datac => \r[3]~input_o\,
	datad => \Add5~8_combout\,
	combout => \Add5~9_combout\);

-- Location: LCCOMB_X111_Y14_N6
\Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\Add5~9_combout\ & ((\Add0~0_combout\ & (\Add8~1\ & VCC)) # (!\Add0~0_combout\ & (!\Add8~1\)))) # (!\Add5~9_combout\ & ((\Add0~0_combout\ & (!\Add8~1\)) # (!\Add0~0_combout\ & ((\Add8~1\) # (GND)))))
-- \Add8~3\ = CARRY((\Add5~9_combout\ & (!\Add0~0_combout\ & !\Add8~1\)) # (!\Add5~9_combout\ & ((!\Add8~1\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~9_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X111_Y14_N20
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\Add5~9_combout\ & ((\m[1]~input_o\ & (\Add7~1\ & VCC)) # (!\m[1]~input_o\ & (!\Add7~1\)))) # (!\Add5~9_combout\ & ((\m[1]~input_o\ & (!\Add7~1\)) # (!\m[1]~input_o\ & ((\Add7~1\) # (GND)))))
-- \Add7~3\ = CARRY((\Add5~9_combout\ & (!\m[1]~input_o\ & !\Add7~1\)) # (!\Add5~9_combout\ & ((!\Add7~1\) # (!\m[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~9_combout\,
	datab => \m[1]~input_o\,
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X111_Y14_N2
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (\r[3]~input_o\ & (((\Add7~2_combout\ & !\r[4]~input_o\)))) # (!\r[3]~input_o\ & (\Add8~2_combout\ & ((\r[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datab => \Add7~2_combout\,
	datac => \r[3]~input_o\,
	datad => \r[4]~input_o\,
	combout => \Add7~4_combout\);

-- Location: LCCOMB_X112_Y14_N6
\Add7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~5_combout\ = (\Add7~4_combout\) # ((\Add5~9_combout\ & (\r[3]~input_o\ $ (!\r[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \Add5~9_combout\,
	datac => \r[4]~input_o\,
	datad => \Add7~4_combout\,
	combout => \Add7~5_combout\);

-- Location: LCCOMB_X109_Y14_N16
\Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (\r[4]~input_o\ & !\r[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r[4]~input_o\,
	datad => \r[5]~input_o\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X110_Y14_N10
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = \m[0]~input_o\ $ (((!\r[5]~input_o\ & \r[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[5]~input_o\,
	datac => \r[4]~input_o\,
	datad => \m[0]~input_o\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X110_Y14_N12
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Equal10~0_combout\ & (!\Add0~4_combout\ & VCC)) # (!\Equal10~0_combout\ & (\Add0~4_combout\ $ (GND)))
-- \Add0~6\ = CARRY((!\Equal10~0_combout\ & !\Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X109_Y14_N18
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = (\Add7~5_combout\ & (\Add0~5_combout\ $ (VCC))) # (!\Add7~5_combout\ & (\Add0~5_combout\ & VCC))
-- \Add9~1\ = CARRY((\Add7~5_combout\ & \Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~5_combout\,
	datab => \Add0~5_combout\,
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X110_Y14_N0
\Add9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~3_combout\ = (!\Equal0~1_combout\ & ((\r[4]~input_o\ & ((\r[5]~input_o\))) # (!\r[4]~input_o\ & (!\Equal1~0_combout\ & !\r[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \r[4]~input_o\,
	datac => \Equal0~1_combout\,
	datad => \r[5]~input_o\,
	combout => \Add9~3_combout\);

-- Location: LCCOMB_X109_Y14_N4
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (\Add9~2_combout\ & ((\Add9~0_combout\) # ((\Add9~3_combout\ & \Add7~5_combout\)))) # (!\Add9~2_combout\ & (((\Add9~3_combout\ & \Add7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => \Add9~0_combout\,
	datac => \Add9~3_combout\,
	datad => \Add7~5_combout\,
	combout => \Add9~4_combout\);

-- Location: LCCOMB_X110_Y14_N14
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\Add0~6\ & (\m[1]~input_o\ $ ((\Equal10~0_combout\)))) # (!\Add0~6\ & ((\m[1]~input_o\ $ (!\Equal10~0_combout\)) # (GND)))
-- \Add0~9\ = CARRY((\m[1]~input_o\ $ (\Equal10~0_combout\)) # (!\Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m[1]~input_o\,
	datab => \Equal10~0_combout\,
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X113_Y13_N30
\p~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~18_combout\ = (\m[5]~input_o\) # (!\r[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[5]~input_o\,
	datac => \r[0]~input_o\,
	combout => \p~18_combout\);

-- Location: LCCOMB_X114_Y14_N14
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = \m[5]~input_o\ $ (((\m[4]~input_o\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \m[5]~input_o\,
	datad => \m[4]~input_o\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X113_Y13_N26
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\p~18_combout\ & ((\Add0~7_combout\ & (!\Add2~9\)) # (!\Add0~7_combout\ & ((\Add2~9\) # (GND))))) # (!\p~18_combout\ & ((\Add0~7_combout\ & (\Add2~9\ & VCC)) # (!\Add0~7_combout\ & (!\Add2~9\))))
-- \Add2~11\ = CARRY((\p~18_combout\ & ((!\Add2~9\) # (!\Add0~7_combout\))) # (!\p~18_combout\ & (!\Add0~7_combout\ & !\Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p~18_combout\,
	datab => \Add0~7_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X114_Y13_N14
\Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (\p~18_combout\ & ((\m[5]~input_o\ & (!\Add1~20\)) # (!\m[5]~input_o\ & ((\Add1~20\) # (GND))))) # (!\p~18_combout\ & ((\m[5]~input_o\ & (\Add1~20\ & VCC)) # (!\m[5]~input_o\ & (!\Add1~20\))))
-- \Add1~24\ = CARRY((\p~18_combout\ & ((!\Add1~20\) # (!\m[5]~input_o\))) # (!\p~18_combout\ & (!\m[5]~input_o\ & !\Add1~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p~18_combout\,
	datab => \m[5]~input_o\,
	datad => VCC,
	cin => \Add1~20\,
	combout => \Add1~23_combout\,
	cout => \Add1~24\);

-- Location: LCCOMB_X114_Y13_N18
\Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~25_combout\ = (\r[0]~input_o\ & (((\Add1~23_combout\ & !\r[1]~input_o\)))) # (!\r[0]~input_o\ & (\Add2~10_combout\ & ((\r[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \r[0]~input_o\,
	datac => \Add1~23_combout\,
	datad => \r[1]~input_o\,
	combout => \Add1~25_combout\);

-- Location: LCCOMB_X114_Y13_N28
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\Add1~25_combout\) # ((\r[1]~input_o\ & (\r[0]~input_o\ & !\m[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[1]~input_o\,
	datab => \r[0]~input_o\,
	datac => \m[5]~input_o\,
	datad => \Add1~25_combout\,
	combout => \Add1~30_combout\);

-- Location: LCCOMB_X111_Y13_N24
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = ((\Add1~30_combout\ $ (\Add0~3_combout\ $ (!\Add4~7\)))) # (GND)
-- \Add4~9\ = CARRY((\Add1~30_combout\ & ((\Add0~3_combout\) # (!\Add4~7\))) # (!\Add1~30_combout\ & (\Add0~3_combout\ & !\Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \Add0~3_combout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X111_Y13_N10
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = ((\Add1~30_combout\ $ (\m[4]~input_o\ $ (!\Add3~11\)))) # (GND)
-- \Add3~15\ = CARRY((\Add1~30_combout\ & ((\m[4]~input_o\) # (!\Add3~11\))) # (!\Add1~30_combout\ & (\m[4]~input_o\ & !\Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \m[4]~input_o\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X110_Y13_N0
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (\r[1]~input_o\ & (((\Add3~14_combout\ & !\r[2]~input_o\)))) # (!\r[1]~input_o\ & (\Add4~8_combout\ & ((\r[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~8_combout\,
	datab => \Add3~14_combout\,
	datac => \r[1]~input_o\,
	datad => \r[2]~input_o\,
	combout => \Add3~16_combout\);

-- Location: LCCOMB_X114_Y14_N24
\Add3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~17_combout\ = (\Add3~16_combout\) # ((\Add1~30_combout\ & (\r[1]~input_o\ $ (!\r[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \r[1]~input_o\,
	datac => \Add3~16_combout\,
	datad => \r[2]~input_o\,
	combout => \Add3~17_combout\);

-- Location: LCCOMB_X113_Y14_N10
\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\Add0~1_combout\ & ((\Add3~17_combout\ & (\Add6~5\ & VCC)) # (!\Add3~17_combout\ & (!\Add6~5\)))) # (!\Add0~1_combout\ & ((\Add3~17_combout\ & (!\Add6~5\)) # (!\Add3~17_combout\ & ((\Add6~5\) # (GND)))))
-- \Add6~7\ = CARRY((\Add0~1_combout\ & (!\Add3~17_combout\ & !\Add6~5\)) # (!\Add0~1_combout\ & ((!\Add6~5\) # (!\Add3~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \Add3~17_combout\,
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X113_Y14_N24
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\m[3]~input_o\ & ((\Add3~17_combout\ & (\Add5~7\ & VCC)) # (!\Add3~17_combout\ & (!\Add5~7\)))) # (!\m[3]~input_o\ & ((\Add3~17_combout\ & (!\Add5~7\)) # (!\Add3~17_combout\ & ((\Add5~7\) # (GND)))))
-- \Add5~11\ = CARRY((\m[3]~input_o\ & (!\Add3~17_combout\ & !\Add5~7\)) # (!\m[3]~input_o\ & ((!\Add5~7\) # (!\Add3~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m[3]~input_o\,
	datab => \Add3~17_combout\,
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X114_Y14_N26
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (\r[3]~input_o\ & (\Add6~6_combout\ & ((!\r[2]~input_o\)))) # (!\r[3]~input_o\ & (((\Add5~10_combout\ & \r[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => \r[3]~input_o\,
	datac => \Add5~10_combout\,
	datad => \r[2]~input_o\,
	combout => \Add5~12_combout\);

-- Location: LCCOMB_X114_Y14_N28
\Add5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~13_combout\ = (\Add5~12_combout\) # ((\Add3~17_combout\ & (\r[2]~input_o\ $ (!\r[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[2]~input_o\,
	datab => \Add3~17_combout\,
	datac => \Add5~12_combout\,
	datad => \r[3]~input_o\,
	combout => \Add5~13_combout\);

-- Location: LCCOMB_X111_Y14_N22
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = ((\m[2]~input_o\ $ (\Add5~13_combout\ $ (!\Add7~3\)))) # (GND)
-- \Add7~7\ = CARRY((\m[2]~input_o\ & ((\Add5~13_combout\) # (!\Add7~3\))) # (!\m[2]~input_o\ & (\Add5~13_combout\ & !\Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m[2]~input_o\,
	datab => \Add5~13_combout\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X111_Y14_N8
\Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = ((\Add5~13_combout\ $ (\Add0~2_combout\ $ (!\Add8~3\)))) # (GND)
-- \Add8~5\ = CARRY((\Add5~13_combout\ & ((\Add0~2_combout\) # (!\Add8~3\))) # (!\Add5~13_combout\ & (\Add0~2_combout\ & !\Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~13_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X110_Y14_N26
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (\r[4]~input_o\ & (((\Add8~4_combout\ & !\r[3]~input_o\)))) # (!\r[4]~input_o\ & (\Add7~6_combout\ & ((\r[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => \Add8~4_combout\,
	datac => \r[4]~input_o\,
	datad => \r[3]~input_o\,
	combout => \Add7~8_combout\);

-- Location: LCCOMB_X110_Y14_N28
\Add7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~9_combout\ = (\Add7~8_combout\) # ((\Add5~13_combout\ & (\r[3]~input_o\ $ (!\r[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => \r[3]~input_o\,
	datac => \r[4]~input_o\,
	datad => \Add5~13_combout\,
	combout => \Add7~9_combout\);

-- Location: LCCOMB_X109_Y14_N20
\Add9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~5_combout\ = (\Add0~8_combout\ & ((\Add7~9_combout\ & (\Add9~1\ & VCC)) # (!\Add7~9_combout\ & (!\Add9~1\)))) # (!\Add0~8_combout\ & ((\Add7~9_combout\ & (!\Add9~1\)) # (!\Add7~9_combout\ & ((\Add9~1\) # (GND)))))
-- \Add9~6\ = CARRY((\Add0~8_combout\ & (!\Add7~9_combout\ & !\Add9~1\)) # (!\Add0~8_combout\ & ((!\Add9~1\) # (!\Add7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add7~9_combout\,
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~5_combout\,
	cout => \Add9~6\);

-- Location: LCCOMB_X109_Y14_N14
\Add9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~7_combout\ = (\Add9~2_combout\ & ((\Add9~5_combout\) # ((\Add9~3_combout\ & \Add7~9_combout\)))) # (!\Add9~2_combout\ & (((\Add9~3_combout\ & \Add7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => \Add9~5_combout\,
	datac => \Add9~3_combout\,
	datad => \Add7~9_combout\,
	combout => \Add9~7_combout\);

-- Location: LCCOMB_X110_Y14_N16
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Add0~9\ & ((\Equal10~0_combout\ $ (!\m[2]~input_o\)))) # (!\Add0~9\ & (\Equal10~0_combout\ $ (\m[2]~input_o\ $ (GND))))
-- \Add0~11\ = CARRY((!\Add0~9\ & (\Equal10~0_combout\ $ (!\m[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \m[2]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X113_Y13_N28
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = \m[5]~input_o\ $ (\Add2~11\ $ (!\p~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m[5]~input_o\,
	datad => \p~18_combout\,
	cin => \Add2~11\,
	combout => \Add2~12_combout\);

-- Location: LCCOMB_X114_Y13_N16
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = \p~18_combout\ $ (\m[5]~input_o\ $ (\Add1~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p~18_combout\,
	datab => \m[5]~input_o\,
	cin => \Add1~24\,
	combout => \Add1~26_combout\);

-- Location: LCCOMB_X113_Y13_N14
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\r[1]~input_o\ & (\Add2~12_combout\ & (!\r[0]~input_o\))) # (!\r[1]~input_o\ & (((\r[0]~input_o\ & \Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[1]~input_o\,
	datab => \Add2~12_combout\,
	datac => \r[0]~input_o\,
	datad => \Add1~26_combout\,
	combout => \Add1~28_combout\);

-- Location: LCCOMB_X114_Y14_N30
\Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~31_combout\ = (\Add1~28_combout\) # ((\r[1]~input_o\ & (!\m[5]~input_o\ & \r[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datab => \r[1]~input_o\,
	datac => \m[5]~input_o\,
	datad => \r[0]~input_o\,
	combout => \Add1~31_combout\);

-- Location: LCCOMB_X111_Y13_N26
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\Add1~31_combout\ & ((\Add0~7_combout\ & (\Add4~9\ & VCC)) # (!\Add0~7_combout\ & (!\Add4~9\)))) # (!\Add1~31_combout\ & ((\Add0~7_combout\ & (!\Add4~9\)) # (!\Add0~7_combout\ & ((\Add4~9\) # (GND)))))
-- \Add4~11\ = CARRY((\Add1~31_combout\ & (!\Add0~7_combout\ & !\Add4~9\)) # (!\Add1~31_combout\ & ((!\Add4~9\) # (!\Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~31_combout\,
	datab => \Add0~7_combout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X111_Y13_N12
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (\Add1~31_combout\ & ((\m[5]~input_o\ & (\Add3~15\ & VCC)) # (!\m[5]~input_o\ & (!\Add3~15\)))) # (!\Add1~31_combout\ & ((\m[5]~input_o\ & (!\Add3~15\)) # (!\m[5]~input_o\ & ((\Add3~15\) # (GND)))))
-- \Add3~19\ = CARRY((\Add1~31_combout\ & (!\m[5]~input_o\ & !\Add3~15\)) # (!\Add1~31_combout\ & ((!\Add3~15\) # (!\m[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~31_combout\,
	datab => \m[5]~input_o\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X110_Y13_N2
\Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (\r[1]~input_o\ & (((\Add3~18_combout\ & !\r[2]~input_o\)))) # (!\r[1]~input_o\ & (\Add4~10_combout\ & ((\r[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \Add3~18_combout\,
	datac => \r[1]~input_o\,
	datad => \r[2]~input_o\,
	combout => \Add3~20_combout\);

-- Location: LCCOMB_X114_Y14_N6
\Add3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~21_combout\ = (\Add3~20_combout\) # ((\Add1~31_combout\ & (\r[1]~input_o\ $ (!\r[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~31_combout\,
	datab => \r[1]~input_o\,
	datac => \Add3~20_combout\,
	datad => \r[2]~input_o\,
	combout => \Add3~21_combout\);

-- Location: LCCOMB_X113_Y14_N12
\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = ((\Add3~21_combout\ $ (\Add0~3_combout\ $ (!\Add6~7\)))) # (GND)
-- \Add6~9\ = CARRY((\Add3~21_combout\ & ((\Add0~3_combout\) # (!\Add6~7\))) # (!\Add3~21_combout\ & (\Add0~3_combout\ & !\Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~21_combout\,
	datab => \Add0~3_combout\,
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X113_Y14_N26
\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = ((\Add3~21_combout\ $ (\m[4]~input_o\ $ (!\Add5~11\)))) # (GND)
-- \Add5~15\ = CARRY((\Add3~21_combout\ & ((\m[4]~input_o\) # (!\Add5~11\))) # (!\Add3~21_combout\ & (\m[4]~input_o\ & !\Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~21_combout\,
	datab => \m[4]~input_o\,
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X114_Y14_N0
\Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (\r[3]~input_o\ & (\Add6~8_combout\ & ((!\r[2]~input_o\)))) # (!\r[3]~input_o\ & (((\Add5~14_combout\ & \r[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~8_combout\,
	datab => \r[3]~input_o\,
	datac => \Add5~14_combout\,
	datad => \r[2]~input_o\,
	combout => \Add5~16_combout\);

-- Location: LCCOMB_X114_Y14_N2
\Add5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~17_combout\ = (\Add5~16_combout\) # ((\Add3~21_combout\ & (\r[3]~input_o\ $ (!\r[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~21_combout\,
	datab => \r[3]~input_o\,
	datac => \Add5~16_combout\,
	datad => \r[2]~input_o\,
	combout => \Add5~17_combout\);

-- Location: LCCOMB_X111_Y14_N24
\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (\Add5~17_combout\ & ((\m[3]~input_o\ & (\Add7~7\ & VCC)) # (!\m[3]~input_o\ & (!\Add7~7\)))) # (!\Add5~17_combout\ & ((\m[3]~input_o\ & (!\Add7~7\)) # (!\m[3]~input_o\ & ((\Add7~7\) # (GND)))))
-- \Add7~11\ = CARRY((\Add5~17_combout\ & (!\m[3]~input_o\ & !\Add7~7\)) # (!\Add5~17_combout\ & ((!\Add7~7\) # (!\m[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~17_combout\,
	datab => \m[3]~input_o\,
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X111_Y14_N10
\Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\Add0~1_combout\ & ((\Add5~17_combout\ & (\Add8~5\ & VCC)) # (!\Add5~17_combout\ & (!\Add8~5\)))) # (!\Add0~1_combout\ & ((\Add5~17_combout\ & (!\Add8~5\)) # (!\Add5~17_combout\ & ((\Add8~5\) # (GND)))))
-- \Add8~7\ = CARRY((\Add0~1_combout\ & (!\Add5~17_combout\ & !\Add8~5\)) # (!\Add0~1_combout\ & ((!\Add8~5\) # (!\Add5~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \Add5~17_combout\,
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X112_Y14_N16
\Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (\r[3]~input_o\ & (\Add7~10_combout\ & (!\r[4]~input_o\))) # (!\r[3]~input_o\ & (((\r[4]~input_o\ & \Add8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \Add7~10_combout\,
	datac => \r[4]~input_o\,
	datad => \Add8~6_combout\,
	combout => \Add7~12_combout\);

-- Location: LCCOMB_X112_Y14_N26
\Add7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~13_combout\ = (\Add7~12_combout\) # ((\Add5~17_combout\ & (\r[3]~input_o\ $ (!\r[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \Add7~12_combout\,
	datac => \r[4]~input_o\,
	datad => \Add5~17_combout\,
	combout => \Add7~13_combout\);

-- Location: LCCOMB_X109_Y14_N22
\Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = ((\Add0~10_combout\ $ (\Add7~13_combout\ $ (!\Add9~6\)))) # (GND)
-- \Add9~9\ = CARRY((\Add0~10_combout\ & ((\Add7~13_combout\) # (!\Add9~6\))) # (!\Add0~10_combout\ & (\Add7~13_combout\ & !\Add9~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add7~13_combout\,
	datad => VCC,
	cin => \Add9~6\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X109_Y14_N8
\Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\Add9~2_combout\ & ((\Add9~8_combout\) # ((\Add9~3_combout\ & \Add7~13_combout\)))) # (!\Add9~2_combout\ & (\Add9~3_combout\ & ((\Add7~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => \Add9~3_combout\,
	datac => \Add9~8_combout\,
	datad => \Add7~13_combout\,
	combout => \Add9~10_combout\);

-- Location: LCCOMB_X111_Y13_N14
\Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = \Add1~31_combout\ $ (\Add3~19\ $ (!\m[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~31_combout\,
	datad => \m[5]~input_o\,
	cin => \Add3~19\,
	combout => \Add3~22_combout\);

-- Location: LCCOMB_X111_Y13_N28
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = \Add1~31_combout\ $ (\Add4~11\ $ (\m[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~31_combout\,
	datad => \m[5]~input_o\,
	cin => \Add4~11\,
	combout => \Add4~12_combout\);

-- Location: LCCOMB_X111_Y13_N30
\Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (\r[2]~input_o\ & (((!\r[1]~input_o\ & \Add4~12_combout\)))) # (!\r[2]~input_o\ & (\Add3~22_combout\ & (\r[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[2]~input_o\,
	datab => \Add3~22_combout\,
	datac => \r[1]~input_o\,
	datad => \Add4~12_combout\,
	combout => \Add3~24_combout\);

-- Location: LCCOMB_X114_Y14_N4
\Add3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~25_combout\ = (\Add3~24_combout\) # ((\Add1~31_combout\ & (\r[1]~input_o\ $ (!\r[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~24_combout\,
	datab => \r[1]~input_o\,
	datac => \Add1~31_combout\,
	datad => \r[2]~input_o\,
	combout => \Add3~25_combout\);

-- Location: LCCOMB_X113_Y14_N14
\Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (\Add3~25_combout\ & ((\Add0~7_combout\ & (\Add6~9\ & VCC)) # (!\Add0~7_combout\ & (!\Add6~9\)))) # (!\Add3~25_combout\ & ((\Add0~7_combout\ & (!\Add6~9\)) # (!\Add0~7_combout\ & ((\Add6~9\) # (GND)))))
-- \Add6~11\ = CARRY((\Add3~25_combout\ & (!\Add0~7_combout\ & !\Add6~9\)) # (!\Add3~25_combout\ & ((!\Add6~9\) # (!\Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~25_combout\,
	datab => \Add0~7_combout\,
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X113_Y14_N28
\Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (\Add3~25_combout\ & ((\m[5]~input_o\ & (\Add5~15\ & VCC)) # (!\m[5]~input_o\ & (!\Add5~15\)))) # (!\Add3~25_combout\ & ((\m[5]~input_o\ & (!\Add5~15\)) # (!\m[5]~input_o\ & ((\Add5~15\) # (GND)))))
-- \Add5~19\ = CARRY((\Add3~25_combout\ & (!\m[5]~input_o\ & !\Add5~15\)) # (!\Add3~25_combout\ & ((!\Add5~15\) # (!\m[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~25_combout\,
	datab => \m[5]~input_o\,
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X112_Y14_N28
\Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (\r[3]~input_o\ & (\Add6~10_combout\ & (!\r[2]~input_o\))) # (!\r[3]~input_o\ & (((\r[2]~input_o\ & \Add5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \Add6~10_combout\,
	datac => \r[2]~input_o\,
	datad => \Add5~18_combout\,
	combout => \Add5~20_combout\);

-- Location: LCCOMB_X112_Y14_N30
\Add5~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~21_combout\ = (\Add5~20_combout\) # ((\Add3~25_combout\ & (\r[3]~input_o\ $ (!\r[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \Add5~20_combout\,
	datac => \r[2]~input_o\,
	datad => \Add3~25_combout\,
	combout => \Add5~21_combout\);

-- Location: LCCOMB_X111_Y14_N26
\Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = ((\Add5~21_combout\ $ (\m[4]~input_o\ $ (!\Add7~11\)))) # (GND)
-- \Add7~15\ = CARRY((\Add5~21_combout\ & ((\m[4]~input_o\) # (!\Add7~11\))) # (!\Add5~21_combout\ & (\m[4]~input_o\ & !\Add7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~21_combout\,
	datab => \m[4]~input_o\,
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X111_Y14_N12
\Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = ((\Add5~21_combout\ $ (\Add0~3_combout\ $ (!\Add8~7\)))) # (GND)
-- \Add8~9\ = CARRY((\Add5~21_combout\ & ((\Add0~3_combout\) # (!\Add8~7\))) # (!\Add5~21_combout\ & (\Add0~3_combout\ & !\Add8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~21_combout\,
	datab => \Add0~3_combout\,
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X112_Y14_N24
\Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (\r[4]~input_o\ & (((!\r[3]~input_o\ & \Add8~8_combout\)))) # (!\r[4]~input_o\ & (\Add7~14_combout\ & (\r[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~14_combout\,
	datab => \r[4]~input_o\,
	datac => \r[3]~input_o\,
	datad => \Add8~8_combout\,
	combout => \Add7~16_combout\);

-- Location: LCCOMB_X112_Y14_N10
\Add7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~17_combout\ = (\Add7~16_combout\) # ((\Add5~21_combout\ & (\r[3]~input_o\ $ (!\r[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \Add7~16_combout\,
	datac => \r[4]~input_o\,
	datad => \Add5~21_combout\,
	combout => \Add7~17_combout\);

-- Location: LCCOMB_X110_Y14_N18
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\Add0~11\ & (\Equal10~0_combout\ $ ((\m[3]~input_o\)))) # (!\Add0~11\ & ((\Equal10~0_combout\ $ (!\m[3]~input_o\)) # (GND)))
-- \Add0~13\ = CARRY((\Equal10~0_combout\ $ (\m[3]~input_o\)) # (!\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \m[3]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X109_Y14_N24
\Add9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~11_combout\ = (\Add7~17_combout\ & ((\Add0~12_combout\ & (\Add9~9\ & VCC)) # (!\Add0~12_combout\ & (!\Add9~9\)))) # (!\Add7~17_combout\ & ((\Add0~12_combout\ & (!\Add9~9\)) # (!\Add0~12_combout\ & ((\Add9~9\) # (GND)))))
-- \Add9~12\ = CARRY((\Add7~17_combout\ & (!\Add0~12_combout\ & !\Add9~9\)) # (!\Add7~17_combout\ & ((!\Add9~9\) # (!\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~17_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~11_combout\,
	cout => \Add9~12\);

-- Location: LCCOMB_X109_Y14_N2
\Add9~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~13_combout\ = (\Add9~2_combout\ & ((\Add9~11_combout\) # ((\Add9~3_combout\ & \Add7~17_combout\)))) # (!\Add9~2_combout\ & (((\Add9~3_combout\ & \Add7~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => \Add9~11_combout\,
	datac => \Add9~3_combout\,
	datad => \Add7~17_combout\,
	combout => \Add9~13_combout\);

-- Location: LCCOMB_X110_Y14_N20
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Add0~13\ & ((\Equal10~0_combout\ $ (!\m[4]~input_o\)))) # (!\Add0~13\ & (\Equal10~0_combout\ $ (\m[4]~input_o\ $ (GND))))
-- \Add0~15\ = CARRY((!\Add0~13\ & (\Equal10~0_combout\ $ (!\m[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \m[4]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X113_Y14_N16
\Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = \Add3~25_combout\ $ (\m[5]~input_o\ $ (\Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~25_combout\,
	datab => \m[5]~input_o\,
	cin => \Add6~11\,
	combout => \Add6~12_combout\);

-- Location: LCCOMB_X113_Y14_N30
\Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = \Add3~25_combout\ $ (\m[5]~input_o\ $ (!\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~25_combout\,
	datab => \m[5]~input_o\,
	cin => \Add5~19\,
	combout => \Add5~22_combout\);

-- Location: LCCOMB_X112_Y14_N4
\Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (\r[3]~input_o\ & (\Add6~12_combout\ & (!\r[2]~input_o\))) # (!\r[3]~input_o\ & (((\r[2]~input_o\ & \Add5~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \Add6~12_combout\,
	datac => \r[2]~input_o\,
	datad => \Add5~22_combout\,
	combout => \Add5~24_combout\);

-- Location: LCCOMB_X112_Y14_N14
\Add5~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~25_combout\ = (\Add5~24_combout\) # ((\Add3~25_combout\ & (\r[3]~input_o\ $ (!\r[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \Add5~24_combout\,
	datac => \r[2]~input_o\,
	datad => \Add3~25_combout\,
	combout => \Add5~25_combout\);

-- Location: LCCOMB_X111_Y14_N28
\Add7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (\m[5]~input_o\ & ((\Add5~25_combout\ & (\Add7~15\ & VCC)) # (!\Add5~25_combout\ & (!\Add7~15\)))) # (!\m[5]~input_o\ & ((\Add5~25_combout\ & (!\Add7~15\)) # (!\Add5~25_combout\ & ((\Add7~15\) # (GND)))))
-- \Add7~19\ = CARRY((\m[5]~input_o\ & (!\Add5~25_combout\ & !\Add7~15\)) # (!\m[5]~input_o\ & ((!\Add7~15\) # (!\Add5~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m[5]~input_o\,
	datab => \Add5~25_combout\,
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~18_combout\,
	cout => \Add7~19\);

-- Location: LCCOMB_X111_Y14_N14
\Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (\Add0~7_combout\ & ((\Add5~25_combout\ & (\Add8~9\ & VCC)) # (!\Add5~25_combout\ & (!\Add8~9\)))) # (!\Add0~7_combout\ & ((\Add5~25_combout\ & (!\Add8~9\)) # (!\Add5~25_combout\ & ((\Add8~9\) # (GND)))))
-- \Add8~11\ = CARRY((\Add0~7_combout\ & (!\Add5~25_combout\ & !\Add8~9\)) # (!\Add0~7_combout\ & ((!\Add8~9\) # (!\Add5~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \Add5~25_combout\,
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X112_Y14_N0
\Add7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = (\r[3]~input_o\ & (\Add7~18_combout\ & (!\r[4]~input_o\))) # (!\r[3]~input_o\ & (((\r[4]~input_o\ & \Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \Add7~18_combout\,
	datac => \r[4]~input_o\,
	datad => \Add8~10_combout\,
	combout => \Add7~20_combout\);

-- Location: LCCOMB_X112_Y14_N2
\Add7~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~21_combout\ = (\Add7~20_combout\) # ((\Add5~25_combout\ & (\r[3]~input_o\ $ (!\r[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \Add5~25_combout\,
	datac => \r[4]~input_o\,
	datad => \Add7~20_combout\,
	combout => \Add7~21_combout\);

-- Location: LCCOMB_X109_Y14_N26
\Add9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = ((\Add0~14_combout\ $ (\Add7~21_combout\ $ (!\Add9~12\)))) # (GND)
-- \Add9~15\ = CARRY((\Add0~14_combout\ & ((\Add7~21_combout\) # (!\Add9~12\))) # (!\Add0~14_combout\ & (\Add7~21_combout\ & !\Add9~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add7~21_combout\,
	datad => VCC,
	cin => \Add9~12\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X109_Y14_N12
\Add9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = (\Add9~14_combout\ & ((\Add9~2_combout\) # ((\Add9~3_combout\ & \Add7~21_combout\)))) # (!\Add9~14_combout\ & (\Add9~3_combout\ & (\Add7~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~14_combout\,
	datab => \Add9~3_combout\,
	datac => \Add7~21_combout\,
	datad => \Add9~2_combout\,
	combout => \Add9~16_combout\);

-- Location: LCCOMB_X110_Y14_N22
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = \Equal10~0_combout\ $ (\m[5]~input_o\ $ (!\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \m[5]~input_o\,
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X111_Y14_N30
\Add7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = \m[5]~input_o\ $ (\Add5~25_combout\ $ (!\Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m[5]~input_o\,
	datab => \Add5~25_combout\,
	cin => \Add7~19\,
	combout => \Add7~22_combout\);

-- Location: LCCOMB_X111_Y14_N16
\Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = \m[5]~input_o\ $ (\Add5~25_combout\ $ (\Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m[5]~input_o\,
	datab => \Add5~25_combout\,
	cin => \Add8~11\,
	combout => \Add8~12_combout\);

-- Location: LCCOMB_X112_Y14_N12
\Add7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~24_combout\ = (\r[3]~input_o\ & (\Add7~22_combout\ & (!\r[4]~input_o\))) # (!\r[3]~input_o\ & (((\r[4]~input_o\ & \Add8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \Add7~22_combout\,
	datac => \r[4]~input_o\,
	datad => \Add8~12_combout\,
	combout => \Add7~24_combout\);

-- Location: LCCOMB_X112_Y14_N22
\Add7~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~25_combout\ = (\Add7~24_combout\) # ((\Add5~25_combout\ & (\r[3]~input_o\ $ (!\r[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \r[4]~input_o\,
	datac => \Add5~25_combout\,
	datad => \Add7~24_combout\,
	combout => \Add7~25_combout\);

-- Location: LCCOMB_X109_Y14_N28
\Add9~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~17_combout\ = (\Add0~16_combout\ & ((\Add7~25_combout\ & (\Add9~15\ & VCC)) # (!\Add7~25_combout\ & (!\Add9~15\)))) # (!\Add0~16_combout\ & ((\Add7~25_combout\ & (!\Add9~15\)) # (!\Add7~25_combout\ & ((\Add9~15\) # (GND)))))
-- \Add9~18\ = CARRY((\Add0~16_combout\ & (!\Add7~25_combout\ & !\Add9~15\)) # (!\Add0~16_combout\ & ((!\Add9~15\) # (!\Add7~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add7~25_combout\,
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~17_combout\,
	cout => \Add9~18\);

-- Location: LCCOMB_X109_Y14_N6
\Add9~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~19_combout\ = (\Add9~2_combout\ & ((\Add9~17_combout\) # ((\Add9~3_combout\ & \Add7~25_combout\)))) # (!\Add9~2_combout\ & (((\Add9~3_combout\ & \Add7~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => \Add9~17_combout\,
	datac => \Add9~3_combout\,
	datad => \Add7~25_combout\,
	combout => \Add9~19_combout\);

-- Location: LCCOMB_X110_Y14_N30
\Add9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = \m[5]~input_o\ $ (((\r[4]~input_o\ & !\r[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r[4]~input_o\,
	datac => \m[5]~input_o\,
	datad => \r[5]~input_o\,
	combout => \Add9~20_combout\);

-- Location: LCCOMB_X109_Y14_N30
\Add9~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~21_combout\ = \Add9~20_combout\ $ (\Add9~18\ $ (\Add7~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~20_combout\,
	datad => \Add7~25_combout\,
	cin => \Add9~18\,
	combout => \Add9~21_combout\);

-- Location: LCCOMB_X109_Y14_N0
\Add9~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~23_combout\ = (\Add9~2_combout\ & ((\Add9~21_combout\) # ((\Add9~3_combout\ & \Add7~25_combout\)))) # (!\Add9~2_combout\ & (\Add9~3_combout\ & ((\Add7~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => \Add9~3_combout\,
	datac => \Add9~21_combout\,
	datad => \Add7~25_combout\,
	combout => \Add9~23_combout\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;
END structure;


