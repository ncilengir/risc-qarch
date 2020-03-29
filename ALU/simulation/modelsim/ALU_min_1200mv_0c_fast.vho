-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/24/2019 23:19:42"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	V : OUT std_logic;
	RX0 : IN std_logic_vector(3 DOWNTO 0);
	RX1 : IN std_logic_vector(3 DOWNTO 0);
	SELRES : OUT std_logic_vector(3 DOWNTO 0);
	ALUSEL : IN std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic
	);
END ALU;

-- Design Ports Information
-- V	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SELRES[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SELRES[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SELRES[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SELRES[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSEL[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX0[3]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX1[3]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX1[2]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX0[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX1[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX0[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX1[0]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX0[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSEL[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSEL[2]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSEL[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_RX0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RX1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SELRES : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ALUSEL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL \ALUSEL[3]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \V~output_o\ : std_logic;
SIGNAL \SELRES[3]~output_o\ : std_logic;
SIGNAL \SELRES[2]~output_o\ : std_logic;
SIGNAL \SELRES[1]~output_o\ : std_logic;
SIGNAL \SELRES[0]~output_o\ : std_logic;
SIGNAL \RX1[3]~input_o\ : std_logic;
SIGNAL \RX0[3]~input_o\ : std_logic;
SIGNAL \RX1[2]~input_o\ : std_logic;
SIGNAL \RX0[2]~input_o\ : std_logic;
SIGNAL \RX0[1]~input_o\ : std_logic;
SIGNAL \RX1[1]~input_o\ : std_logic;
SIGNAL \RX1[0]~input_o\ : std_logic;
SIGNAL \RX0[0]~input_o\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result_int[1]~1_cout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result_int[2]~3\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result_int[3]~5\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result_int[4]~7\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result_int[5]~8_combout\ : std_logic;
SIGNAL \OR3~combout\ : std_logic;
SIGNAL \ALUSEL[2]~input_o\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \ALUSEL[0]~input_o\ : std_logic;
SIGNAL \ALUSEL[1]~input_o\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[2]~0_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[2]~6_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[2]~5_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[2]~7_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[2]~8_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ : std_logic;
SIGNAL \inst7|LPM_ADD_SUB_component|auto_generated|result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[1]~11_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[1]~10_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[1]~12_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[1]~13_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[0]~16_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[0]~17_combout\ : std_logic;

BEGIN

V <= ww_V;
ww_RX0 <= RX0;
ww_RX1 <= RX1;
SELRES <= ww_SELRES;
ww_ALUSEL <= ALUSEL;
ww_CLK <= CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y3_N9
\V~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OR3~combout\,
	devoe => ww_devoe,
	o => \V~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\SELRES[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	devoe => ww_devoe,
	o => \SELRES[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\SELRES[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	devoe => ww_devoe,
	o => \SELRES[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\SELRES[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_MUX_component|auto_generated|result_node[1]~14_combout\,
	devoe => ww_devoe,
	o => \SELRES[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\SELRES[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_MUX_component|auto_generated|result_node[0]~17_combout\,
	devoe => ww_devoe,
	o => \SELRES[0]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\RX1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX1(3),
	o => \RX1[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\RX0[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX0(3),
	o => \RX0[3]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\RX1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX1(2),
	o => \RX1[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N29
\RX0[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX0(2),
	o => \RX0[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\RX0[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX0(1),
	o => \RX0[1]~input_o\);

-- Location: IOIBUF_X3_Y29_N22
\RX1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX1(1),
	o => \RX1[1]~input_o\);

-- Location: IOIBUF_X0_Y2_N22
\RX1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX1(0),
	o => \RX1[0]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\RX0[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX0(0),
	o => \RX0[0]~input_o\);

-- Location: LCCOMB_X1_Y6_N0
\inst7|LPM_ADD_SUB_component|auto_generated|result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result_int[1]~1_cout\ = CARRY((\RX1[0]~input_o\) # (\RX0[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX1[0]~input_o\,
	datab => \RX0[0]~input_o\,
	datad => VCC,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result_int[1]~1_cout\);

-- Location: LCCOMB_X1_Y6_N2
\inst7|LPM_ADD_SUB_component|auto_generated|result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result_int[2]~2_combout\ = (\RX0[1]~input_o\ & ((\RX1[1]~input_o\ & (\inst7|LPM_ADD_SUB_component|auto_generated|result_int[1]~1_cout\ & VCC)) # (!\RX1[1]~input_o\ & 
-- (!\inst7|LPM_ADD_SUB_component|auto_generated|result_int[1]~1_cout\)))) # (!\RX0[1]~input_o\ & ((\RX1[1]~input_o\ & (!\inst7|LPM_ADD_SUB_component|auto_generated|result_int[1]~1_cout\)) # (!\RX1[1]~input_o\ & 
-- ((\inst7|LPM_ADD_SUB_component|auto_generated|result_int[1]~1_cout\) # (GND)))))
-- \inst7|LPM_ADD_SUB_component|auto_generated|result_int[2]~3\ = CARRY((\RX0[1]~input_o\ & (!\RX1[1]~input_o\ & !\inst7|LPM_ADD_SUB_component|auto_generated|result_int[1]~1_cout\)) # (!\RX0[1]~input_o\ & 
-- ((!\inst7|LPM_ADD_SUB_component|auto_generated|result_int[1]~1_cout\) # (!\RX1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX0[1]~input_o\,
	datab => \RX1[1]~input_o\,
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result_int[1]~1_cout\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result_int[2]~2_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result_int[2]~3\);

-- Location: LCCOMB_X1_Y6_N4
\inst7|LPM_ADD_SUB_component|auto_generated|result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result_int[3]~4_combout\ = ((\RX1[2]~input_o\ $ (\RX0[2]~input_o\ $ (!\inst7|LPM_ADD_SUB_component|auto_generated|result_int[2]~3\)))) # (GND)
-- \inst7|LPM_ADD_SUB_component|auto_generated|result_int[3]~5\ = CARRY((\RX1[2]~input_o\ & ((\RX0[2]~input_o\) # (!\inst7|LPM_ADD_SUB_component|auto_generated|result_int[2]~3\))) # (!\RX1[2]~input_o\ & (\RX0[2]~input_o\ & 
-- !\inst7|LPM_ADD_SUB_component|auto_generated|result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX1[2]~input_o\,
	datab => \RX0[2]~input_o\,
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result_int[2]~3\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result_int[3]~4_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result_int[3]~5\);

-- Location: LCCOMB_X1_Y6_N6
\inst7|LPM_ADD_SUB_component|auto_generated|result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result_int[4]~6_combout\ = (\RX1[3]~input_o\ & ((\RX0[3]~input_o\ & (\inst7|LPM_ADD_SUB_component|auto_generated|result_int[3]~5\ & VCC)) # (!\RX0[3]~input_o\ & 
-- (!\inst7|LPM_ADD_SUB_component|auto_generated|result_int[3]~5\)))) # (!\RX1[3]~input_o\ & ((\RX0[3]~input_o\ & (!\inst7|LPM_ADD_SUB_component|auto_generated|result_int[3]~5\)) # (!\RX0[3]~input_o\ & 
-- ((\inst7|LPM_ADD_SUB_component|auto_generated|result_int[3]~5\) # (GND)))))
-- \inst7|LPM_ADD_SUB_component|auto_generated|result_int[4]~7\ = CARRY((\RX1[3]~input_o\ & (!\RX0[3]~input_o\ & !\inst7|LPM_ADD_SUB_component|auto_generated|result_int[3]~5\)) # (!\RX1[3]~input_o\ & 
-- ((!\inst7|LPM_ADD_SUB_component|auto_generated|result_int[3]~5\) # (!\RX0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX1[3]~input_o\,
	datab => \RX0[3]~input_o\,
	datad => VCC,
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result_int[3]~5\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result_int[4]~6_combout\,
	cout => \inst7|LPM_ADD_SUB_component|auto_generated|result_int[4]~7\);

-- Location: LCCOMB_X1_Y6_N8
\inst7|LPM_ADD_SUB_component|auto_generated|result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_ADD_SUB_component|auto_generated|result_int[5]~8_combout\ = !\inst7|LPM_ADD_SUB_component|auto_generated|result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|LPM_ADD_SUB_component|auto_generated|result_int[4]~7\,
	combout => \inst7|LPM_ADD_SUB_component|auto_generated|result_int[5]~8_combout\);

-- Location: LCCOMB_X4_Y2_N0
OR3 : cycloneiii_lcell_comb
-- Equation(s):
-- \OR3~combout\ = (\inst7|LPM_ADD_SUB_component|auto_generated|result_int[5]~8_combout\) # (\RX0[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|LPM_ADD_SUB_component|auto_generated|result_int[5]~8_combout\,
	datad => \RX0[3]~input_o\,
	combout => \OR3~combout\);

-- Location: IOIBUF_X0_Y8_N1
\ALUSEL[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUSEL(2),
	o => \ALUSEL[2]~input_o\);

-- Location: LCCOMB_X1_Y6_N30
\inst|LPM_MUX_component|auto_generated|result_node[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[3]~2_combout\ = (\ALUSEL[2]~input_o\ & (((\RX0[2]~input_o\)))) # (!\ALUSEL[2]~input_o\ & (\RX1[3]~input_o\ & (\RX0[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX1[3]~input_o\,
	datab => \ALUSEL[2]~input_o\,
	datac => \RX0[3]~input_o\,
	datad => \RX0[2]~input_o\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[3]~2_combout\);

-- Location: IOIBUF_X0_Y4_N15
\ALUSEL[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUSEL(0),
	o => \ALUSEL[0]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\ALUSEL[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUSEL(1),
	o => \ALUSEL[1]~input_o\);

-- Location: LCCOMB_X1_Y6_N28
\inst|LPM_MUX_component|auto_generated|result_node[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ = (\ALUSEL[2]~input_o\ & (((\RX0[2]~input_o\)))) # (!\ALUSEL[2]~input_o\ & (\RX1[3]~input_o\ $ ((\RX0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX1[3]~input_o\,
	datab => \ALUSEL[2]~input_o\,
	datac => \RX0[3]~input_o\,
	datad => \RX0[2]~input_o\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X1_Y6_N24
\inst|LPM_MUX_component|auto_generated|result_node[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ = (\inst|LPM_MUX_component|auto_generated|result_node[3]~2_combout\ & ((\ALUSEL[0]~input_o\ & (!\ALUSEL[1]~input_o\)) # (!\ALUSEL[0]~input_o\ & (\ALUSEL[1]~input_o\ & 
-- !\inst|LPM_MUX_component|auto_generated|result_node[3]~1_combout\)))) # (!\inst|LPM_MUX_component|auto_generated|result_node[3]~2_combout\ & (((\ALUSEL[1]~input_o\ & \inst|LPM_MUX_component|auto_generated|result_node[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_MUX_component|auto_generated|result_node[3]~2_combout\,
	datab => \ALUSEL[0]~input_o\,
	datac => \ALUSEL[1]~input_o\,
	datad => \inst|LPM_MUX_component|auto_generated|result_node[3]~1_combout\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X1_Y6_N10
\inst|LPM_MUX_component|auto_generated|result_node[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[2]~0_combout\ = (!\ALUSEL[0]~input_o\ & (!\ALUSEL[1]~input_o\ & !\ALUSEL[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUSEL[0]~input_o\,
	datac => \ALUSEL[1]~input_o\,
	datad => \ALUSEL[2]~input_o\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[2]~0_combout\);

-- Location: LCCOMB_X1_Y6_N26
\inst|LPM_MUX_component|auto_generated|result_node[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ = (\inst|LPM_MUX_component|auto_generated|result_node[3]~3_combout\) # ((\inst7|LPM_ADD_SUB_component|auto_generated|result_int[4]~6_combout\ & 
-- \inst|LPM_MUX_component|auto_generated|result_node[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_MUX_component|auto_generated|result_node[3]~3_combout\,
	datac => \inst7|LPM_ADD_SUB_component|auto_generated|result_int[4]~6_combout\,
	datad => \inst|LPM_MUX_component|auto_generated|result_node[2]~0_combout\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[3]~4_combout\);

-- Location: LCCOMB_X1_Y6_N14
\inst|LPM_MUX_component|auto_generated|result_node[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[2]~6_combout\ = (\ALUSEL[0]~input_o\ & ((\RX0[1]~input_o\))) # (!\ALUSEL[0]~input_o\ & (\RX0[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUSEL[0]~input_o\,
	datac => \RX0[3]~input_o\,
	datad => \RX0[1]~input_o\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[2]~6_combout\);

-- Location: LCCOMB_X1_Y6_N20
\inst|LPM_MUX_component|auto_generated|result_node[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[2]~5_combout\ = (\RX0[2]~input_o\ & (\ALUSEL[1]~input_o\ $ (((\RX1[2]~input_o\ & \ALUSEL[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX1[2]~input_o\,
	datab => \ALUSEL[0]~input_o\,
	datac => \ALUSEL[1]~input_o\,
	datad => \RX0[2]~input_o\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[2]~5_combout\);

-- Location: LCCOMB_X1_Y6_N16
\inst|LPM_MUX_component|auto_generated|result_node[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[2]~7_combout\ = (\ALUSEL[2]~input_o\ & (!\ALUSEL[1]~input_o\ & (\inst|LPM_MUX_component|auto_generated|result_node[2]~6_combout\))) # (!\ALUSEL[2]~input_o\ & 
-- (((\inst|LPM_MUX_component|auto_generated|result_node[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUSEL[1]~input_o\,
	datab => \ALUSEL[2]~input_o\,
	datac => \inst|LPM_MUX_component|auto_generated|result_node[2]~6_combout\,
	datad => \inst|LPM_MUX_component|auto_generated|result_node[2]~5_combout\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[2]~7_combout\);

-- Location: LCCOMB_X1_Y6_N18
\inst|LPM_MUX_component|auto_generated|result_node[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[2]~8_combout\ = (\RX1[2]~input_o\ & (!\ALUSEL[2]~input_o\ & (\ALUSEL[1]~input_o\ & !\RX0[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX1[2]~input_o\,
	datab => \ALUSEL[2]~input_o\,
	datac => \ALUSEL[1]~input_o\,
	datad => \RX0[2]~input_o\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[2]~8_combout\);

-- Location: LCCOMB_X1_Y6_N12
\inst|LPM_MUX_component|auto_generated|result_node[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ = (\inst|LPM_MUX_component|auto_generated|result_node[2]~7_combout\) # ((\inst|LPM_MUX_component|auto_generated|result_node[2]~8_combout\) # 
-- ((\inst|LPM_MUX_component|auto_generated|result_node[2]~0_combout\ & \inst7|LPM_ADD_SUB_component|auto_generated|result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_MUX_component|auto_generated|result_node[2]~0_combout\,
	datab => \inst|LPM_MUX_component|auto_generated|result_node[2]~7_combout\,
	datac => \inst7|LPM_ADD_SUB_component|auto_generated|result_int[3]~4_combout\,
	datad => \inst|LPM_MUX_component|auto_generated|result_node[2]~8_combout\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[2]~9_combout\);

-- Location: LCCOMB_X1_Y6_N22
\inst|LPM_MUX_component|auto_generated|result_node[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[1]~11_combout\ = (\ALUSEL[0]~input_o\ & (\RX0[0]~input_o\)) # (!\ALUSEL[0]~input_o\ & ((\RX0[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUSEL[0]~input_o\,
	datac => \RX0[0]~input_o\,
	datad => \RX0[2]~input_o\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[1]~11_combout\);

-- Location: LCCOMB_X2_Y10_N24
\inst|LPM_MUX_component|auto_generated|result_node[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[1]~10_combout\ = (\RX0[1]~input_o\ & (\ALUSEL[1]~input_o\ $ (((\ALUSEL[0]~input_o\ & \RX1[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX0[1]~input_o\,
	datab => \ALUSEL[1]~input_o\,
	datac => \ALUSEL[0]~input_o\,
	datad => \RX1[1]~input_o\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[1]~10_combout\);

-- Location: LCCOMB_X2_Y10_N26
\inst|LPM_MUX_component|auto_generated|result_node[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[1]~12_combout\ = (\ALUSEL[2]~input_o\ & (!\ALUSEL[1]~input_o\ & (\inst|LPM_MUX_component|auto_generated|result_node[1]~11_combout\))) # (!\ALUSEL[2]~input_o\ & 
-- (((\inst|LPM_MUX_component|auto_generated|result_node[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUSEL[2]~input_o\,
	datab => \ALUSEL[1]~input_o\,
	datac => \inst|LPM_MUX_component|auto_generated|result_node[1]~11_combout\,
	datad => \inst|LPM_MUX_component|auto_generated|result_node[1]~10_combout\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[1]~12_combout\);

-- Location: LCCOMB_X2_Y10_N12
\inst|LPM_MUX_component|auto_generated|result_node[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[1]~13_combout\ = (!\ALUSEL[2]~input_o\ & (\ALUSEL[1]~input_o\ & (!\RX0[1]~input_o\ & \RX1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUSEL[2]~input_o\,
	datab => \ALUSEL[1]~input_o\,
	datac => \RX0[1]~input_o\,
	datad => \RX1[1]~input_o\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[1]~13_combout\);

-- Location: LCCOMB_X2_Y10_N22
\inst|LPM_MUX_component|auto_generated|result_node[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ = (\inst|LPM_MUX_component|auto_generated|result_node[1]~12_combout\) # ((\inst|LPM_MUX_component|auto_generated|result_node[1]~13_combout\) # 
-- ((\inst|LPM_MUX_component|auto_generated|result_node[2]~0_combout\ & \inst7|LPM_ADD_SUB_component|auto_generated|result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_MUX_component|auto_generated|result_node[2]~0_combout\,
	datab => \inst7|LPM_ADD_SUB_component|auto_generated|result_int[2]~2_combout\,
	datac => \inst|LPM_MUX_component|auto_generated|result_node[1]~12_combout\,
	datad => \inst|LPM_MUX_component|auto_generated|result_node[1]~13_combout\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[1]~14_combout\);

-- Location: LCCOMB_X2_Y10_N0
\inst|LPM_MUX_component|auto_generated|result_node[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ = (\RX1[0]~input_o\ & ((\RX0[0]~input_o\ & (\ALUSEL[0]~input_o\ $ (\ALUSEL[1]~input_o\))) # (!\RX0[0]~input_o\ & ((\ALUSEL[1]~input_o\) # (!\ALUSEL[0]~input_o\))))) # (!\RX1[0]~input_o\ & 
-- (\RX0[0]~input_o\ & ((\ALUSEL[1]~input_o\) # (!\ALUSEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX1[0]~input_o\,
	datab => \RX0[0]~input_o\,
	datac => \ALUSEL[0]~input_o\,
	datad => \ALUSEL[1]~input_o\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[0]~15_combout\);

-- Location: LCCOMB_X2_Y10_N2
\inst|LPM_MUX_component|auto_generated|result_node[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[0]~16_combout\ = (\ALUSEL[0]~input_o\) # (\ALUSEL[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUSEL[0]~input_o\,
	datad => \ALUSEL[1]~input_o\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[0]~16_combout\);

-- Location: LCCOMB_X2_Y10_N20
\inst|LPM_MUX_component|auto_generated|result_node[0]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[0]~17_combout\ = (\ALUSEL[2]~input_o\ & (((\RX0[1]~input_o\ & !\inst|LPM_MUX_component|auto_generated|result_node[0]~16_combout\)))) # (!\ALUSEL[2]~input_o\ & 
-- (\inst|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ $ (((!\inst|LPM_MUX_component|auto_generated|result_node[0]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUSEL[2]~input_o\,
	datab => \inst|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	datac => \RX0[1]~input_o\,
	datad => \inst|LPM_MUX_component|auto_generated|result_node[0]~16_combout\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[0]~17_combout\);

-- Location: IOIBUF_X0_Y2_N8
\ALUSEL[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUSEL(3),
	o => \ALUSEL[3]~input_o\);

-- Location: IOIBUF_X41_Y12_N8
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

ww_V <= \V~output_o\;

ww_SELRES(3) <= \SELRES[3]~output_o\;

ww_SELRES(2) <= \SELRES[2]~output_o\;

ww_SELRES(1) <= \SELRES[1]~output_o\;

ww_SELRES(0) <= \SELRES[0]~output_o\;
END structure;


