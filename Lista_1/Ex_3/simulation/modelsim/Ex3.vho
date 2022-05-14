-- Copyright (C) 2021  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "05/14/2022 15:09:06"

-- 
-- Device: Altera 10M02DCU324A6G Package UFBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_J7,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_J8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_H3,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_H8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Ex3 IS
    PORT (
	i_A : IN std_logic_vector(0 TO 7);
	i_B : IN std_logic_vector(0 TO 7);
	o_S : OUT std_logic_vector(0 TO 7);
	o_Crr : OUT std_logic
	);
END Ex3;

-- Design Ports Information
-- o_S[7]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[6]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[5]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[4]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[3]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[0]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Crr	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[6]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[6]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[5]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[5]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[4]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[4]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[3]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[2]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[2]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[0]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[1]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[7]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[7]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Ex3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_A : std_logic_vector(0 TO 7);
SIGNAL ww_i_B : std_logic_vector(0 TO 7);
SIGNAL ww_o_S : std_logic_vector(0 TO 7);
SIGNAL ww_o_Crr : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \o_S[7]~output_o\ : std_logic;
SIGNAL \o_S[6]~output_o\ : std_logic;
SIGNAL \o_S[5]~output_o\ : std_logic;
SIGNAL \o_S[4]~output_o\ : std_logic;
SIGNAL \o_S[3]~output_o\ : std_logic;
SIGNAL \o_S[2]~output_o\ : std_logic;
SIGNAL \o_S[1]~output_o\ : std_logic;
SIGNAL \o_S[0]~output_o\ : std_logic;
SIGNAL \o_Crr~output_o\ : std_logic;
SIGNAL \i_A[3]~input_o\ : std_logic;
SIGNAL \i_B[2]~input_o\ : std_logic;
SIGNAL \i_A[0]~input_o\ : std_logic;
SIGNAL \i_B[1]~input_o\ : std_logic;
SIGNAL \i_B[0]~input_o\ : std_logic;
SIGNAL \i_A[1]~input_o\ : std_logic;
SIGNAL \U02|o_Crr~0_combout\ : std_logic;
SIGNAL \i_A[2]~input_o\ : std_logic;
SIGNAL \U03|o_Crr~0_combout\ : std_logic;
SIGNAL \i_B[3]~input_o\ : std_logic;
SIGNAL \U04|o_Crr~0_combout\ : std_logic;
SIGNAL \i_A[4]~input_o\ : std_logic;
SIGNAL \i_B[4]~input_o\ : std_logic;
SIGNAL \U05|o_Crr~0_combout\ : std_logic;
SIGNAL \i_A[5]~input_o\ : std_logic;
SIGNAL \i_B[5]~input_o\ : std_logic;
SIGNAL \U06|o_Crr~0_combout\ : std_logic;
SIGNAL \i_B[6]~input_o\ : std_logic;
SIGNAL \i_A[6]~input_o\ : std_logic;
SIGNAL \U07|o_Crr~0_combout\ : std_logic;
SIGNAL \i_B[7]~input_o\ : std_logic;
SIGNAL \i_A[7]~input_o\ : std_logic;
SIGNAL \U08|o_S~combout\ : std_logic;
SIGNAL \U07|o_S~combout\ : std_logic;
SIGNAL \U06|o_S~combout\ : std_logic;
SIGNAL \U05|o_S~combout\ : std_logic;
SIGNAL \U04|o_S~combout\ : std_logic;
SIGNAL \U03|o_S~0_combout\ : std_logic;
SIGNAL \U02|o_S~0_combout\ : std_logic;
SIGNAL \U01|w_S1~combout\ : std_logic;
SIGNAL \U08|o_Crr~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_A <= i_A;
ww_i_B <= i_B;
o_S <= ww_o_S;
o_Crr <= ww_o_Crr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X14_Y13_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X10_Y11_N2
\o_S[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U08|o_S~combout\,
	devoe => ww_devoe,
	o => \o_S[7]~output_o\);

-- Location: IOOBUF_X16_Y17_N16
\o_S[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U07|o_S~combout\,
	devoe => ww_devoe,
	o => \o_S[6]~output_o\);

-- Location: IOOBUF_X10_Y10_N9
\o_S[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U06|o_S~combout\,
	devoe => ww_devoe,
	o => \o_S[5]~output_o\);

-- Location: IOOBUF_X10_Y14_N2
\o_S[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U05|o_S~combout\,
	devoe => ww_devoe,
	o => \o_S[4]~output_o\);

-- Location: IOOBUF_X18_Y12_N2
\o_S[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U04|o_S~combout\,
	devoe => ww_devoe,
	o => \o_S[3]~output_o\);

-- Location: IOOBUF_X18_Y10_N16
\o_S[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U03|o_S~0_combout\,
	devoe => ww_devoe,
	o => \o_S[2]~output_o\);

-- Location: IOOBUF_X18_Y12_N16
\o_S[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U02|o_S~0_combout\,
	devoe => ww_devoe,
	o => \o_S[1]~output_o\);

-- Location: IOOBUF_X18_Y10_N2
\o_S[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U01|w_S1~combout\,
	devoe => ww_devoe,
	o => \o_S[0]~output_o\);

-- Location: IOOBUF_X18_Y10_N9
\o_Crr~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U08|o_Crr~0_combout\,
	devoe => ww_devoe,
	o => \o_Crr~output_o\);

-- Location: IOIBUF_X18_Y11_N15
\i_A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(3),
	o => \i_A[3]~input_o\);

-- Location: IOIBUF_X10_Y11_N15
\i_B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(2),
	o => \i_B[2]~input_o\);

-- Location: IOIBUF_X18_Y4_N22
\i_A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(0),
	o => \i_A[0]~input_o\);

-- Location: IOIBUF_X18_Y9_N1
\i_B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(1),
	o => \i_B[1]~input_o\);

-- Location: IOIBUF_X18_Y9_N8
\i_B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(0),
	o => \i_B[0]~input_o\);

-- Location: IOIBUF_X18_Y9_N15
\i_A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(1),
	o => \i_A[1]~input_o\);

-- Location: LCCOMB_X17_Y9_N24
\U02|o_Crr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U02|o_Crr~0_combout\ = (\i_B[1]~input_o\ & ((\i_A[1]~input_o\) # ((\i_A[0]~input_o\ & \i_B[0]~input_o\)))) # (!\i_B[1]~input_o\ & (\i_A[0]~input_o\ & (\i_B[0]~input_o\ & \i_A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A[0]~input_o\,
	datab => \i_B[1]~input_o\,
	datac => \i_B[0]~input_o\,
	datad => \i_A[1]~input_o\,
	combout => \U02|o_Crr~0_combout\);

-- Location: IOIBUF_X18_Y10_N22
\i_A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(2),
	o => \i_A[2]~input_o\);

-- Location: LCCOMB_X17_Y9_N18
\U03|o_Crr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U03|o_Crr~0_combout\ = (\i_B[2]~input_o\ & ((\U02|o_Crr~0_combout\) # (\i_A[2]~input_o\))) # (!\i_B[2]~input_o\ & (\U02|o_Crr~0_combout\ & \i_A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B[2]~input_o\,
	datab => \U02|o_Crr~0_combout\,
	datac => \i_A[2]~input_o\,
	combout => \U03|o_Crr~0_combout\);

-- Location: IOIBUF_X18_Y6_N22
\i_B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(3),
	o => \i_B[3]~input_o\);

-- Location: LCCOMB_X17_Y9_N20
\U04|o_Crr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U04|o_Crr~0_combout\ = (\i_A[3]~input_o\ & ((\U03|o_Crr~0_combout\) # (\i_B[3]~input_o\))) # (!\i_A[3]~input_o\ & (\U03|o_Crr~0_combout\ & \i_B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A[3]~input_o\,
	datab => \U03|o_Crr~0_combout\,
	datad => \i_B[3]~input_o\,
	combout => \U04|o_Crr~0_combout\);

-- Location: IOIBUF_X18_Y8_N15
\i_A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(4),
	o => \i_A[4]~input_o\);

-- Location: IOIBUF_X18_Y9_N22
\i_B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(4),
	o => \i_B[4]~input_o\);

-- Location: LCCOMB_X17_Y9_N6
\U05|o_Crr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U05|o_Crr~0_combout\ = (\U04|o_Crr~0_combout\ & ((\i_A[4]~input_o\) # (\i_B[4]~input_o\))) # (!\U04|o_Crr~0_combout\ & (\i_A[4]~input_o\ & \i_B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U04|o_Crr~0_combout\,
	datac => \i_A[4]~input_o\,
	datad => \i_B[4]~input_o\,
	combout => \U05|o_Crr~0_combout\);

-- Location: IOIBUF_X18_Y5_N22
\i_A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(5),
	o => \i_A[5]~input_o\);

-- Location: IOIBUF_X18_Y14_N1
\i_B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(5),
	o => \i_B[5]~input_o\);

-- Location: LCCOMB_X17_Y9_N8
\U06|o_Crr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|o_Crr~0_combout\ = (\U05|o_Crr~0_combout\ & ((\i_A[5]~input_o\) # (\i_B[5]~input_o\))) # (!\U05|o_Crr~0_combout\ & (\i_A[5]~input_o\ & \i_B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U05|o_Crr~0_combout\,
	datac => \i_A[5]~input_o\,
	datad => \i_B[5]~input_o\,
	combout => \U06|o_Crr~0_combout\);

-- Location: IOIBUF_X18_Y6_N15
\i_B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(6),
	o => \i_B[6]~input_o\);

-- Location: IOIBUF_X18_Y13_N8
\i_A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(6),
	o => \i_A[6]~input_o\);

-- Location: LCCOMB_X17_Y9_N10
\U07|o_Crr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|o_Crr~0_combout\ = (\U06|o_Crr~0_combout\ & ((\i_B[6]~input_o\) # (\i_A[6]~input_o\))) # (!\U06|o_Crr~0_combout\ & (\i_B[6]~input_o\ & \i_A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|o_Crr~0_combout\,
	datac => \i_B[6]~input_o\,
	datad => \i_A[6]~input_o\,
	combout => \U07|o_Crr~0_combout\);

-- Location: IOIBUF_X18_Y8_N1
\i_B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(7),
	o => \i_B[7]~input_o\);

-- Location: IOIBUF_X18_Y13_N22
\i_A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(7),
	o => \i_A[7]~input_o\);

-- Location: LCCOMB_X17_Y9_N12
\U08|o_S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U08|o_S~combout\ = \U07|o_Crr~0_combout\ $ (\i_B[7]~input_o\ $ (\i_A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U07|o_Crr~0_combout\,
	datac => \i_B[7]~input_o\,
	datad => \i_A[7]~input_o\,
	combout => \U08|o_S~combout\);

-- Location: LCCOMB_X17_Y9_N30
\U07|o_S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U07|o_S~combout\ = \U06|o_Crr~0_combout\ $ (\i_B[6]~input_o\ $ (\i_A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U06|o_Crr~0_combout\,
	datac => \i_B[6]~input_o\,
	datad => \i_A[6]~input_o\,
	combout => \U07|o_S~combout\);

-- Location: LCCOMB_X17_Y9_N0
\U06|o_S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U06|o_S~combout\ = \U05|o_Crr~0_combout\ $ (\i_A[5]~input_o\ $ (\i_B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U05|o_Crr~0_combout\,
	datac => \i_A[5]~input_o\,
	datad => \i_B[5]~input_o\,
	combout => \U06|o_S~combout\);

-- Location: LCCOMB_X17_Y9_N2
\U05|o_S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U05|o_S~combout\ = \U04|o_Crr~0_combout\ $ (\i_A[4]~input_o\ $ (\i_B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U04|o_Crr~0_combout\,
	datac => \i_A[4]~input_o\,
	datad => \i_B[4]~input_o\,
	combout => \U05|o_S~combout\);

-- Location: LCCOMB_X17_Y9_N28
\U04|o_S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U04|o_S~combout\ = \i_A[3]~input_o\ $ (\U03|o_Crr~0_combout\ $ (\i_B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A[3]~input_o\,
	datab => \U03|o_Crr~0_combout\,
	datad => \i_B[3]~input_o\,
	combout => \U04|o_S~combout\);

-- Location: LCCOMB_X17_Y9_N22
\U03|o_S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U03|o_S~0_combout\ = \i_B[2]~input_o\ $ (\U02|o_Crr~0_combout\ $ (\i_A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B[2]~input_o\,
	datab => \U02|o_Crr~0_combout\,
	datac => \i_A[2]~input_o\,
	combout => \U03|o_S~0_combout\);

-- Location: LCCOMB_X17_Y9_N16
\U02|o_S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U02|o_S~0_combout\ = \i_B[1]~input_o\ $ (\i_A[1]~input_o\ $ (((\i_A[0]~input_o\ & \i_B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A[0]~input_o\,
	datab => \i_B[1]~input_o\,
	datac => \i_B[0]~input_o\,
	datad => \i_A[1]~input_o\,
	combout => \U02|o_S~0_combout\);

-- Location: LCCOMB_X17_Y9_N26
\U01|w_S1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U01|w_S1~combout\ = \i_B[0]~input_o\ $ (\i_A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_B[0]~input_o\,
	datac => \i_A[0]~input_o\,
	combout => \U01|w_S1~combout\);

-- Location: LCCOMB_X17_Y9_N4
\U08|o_Crr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U08|o_Crr~0_combout\ = (\U07|o_Crr~0_combout\ & ((\i_B[7]~input_o\) # (\i_A[7]~input_o\))) # (!\U07|o_Crr~0_combout\ & (\i_B[7]~input_o\ & \i_A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U07|o_Crr~0_combout\,
	datac => \i_B[7]~input_o\,
	datad => \i_A[7]~input_o\,
	combout => \U08|o_Crr~0_combout\);

-- Location: UNVM_X0_Y8_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

ww_o_S(7) <= \o_S[7]~output_o\;

ww_o_S(6) <= \o_S[6]~output_o\;

ww_o_S(5) <= \o_S[5]~output_o\;

ww_o_S(4) <= \o_S[4]~output_o\;

ww_o_S(3) <= \o_S[3]~output_o\;

ww_o_S(2) <= \o_S[2]~output_o\;

ww_o_S(1) <= \o_S[1]~output_o\;

ww_o_S(0) <= \o_S[0]~output_o\;

ww_o_Crr <= \o_Crr~output_o\;
END structure;


