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

-- DATE "05/15/2019 04:33:56"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ControlUnit IS
    PORT (
	ALU_SEL : OUT std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic;
	IR : IN std_logic_vector(10 DOWNTO 0);
	BUS_SEL13 : OUT std_logic;
	V : IN std_logic;
	BUS_SEL12 : OUT std_logic;
	BUS_SEL11 : OUT std_logic;
	BUS_SEL10 : OUT std_logic;
	LOADSEL : OUT std_logic_vector(3 DOWNTO 0)
	);
END ControlUnit;

-- Design Ports Information
-- ALU_SEL[3]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SEL[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SEL[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SEL[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_SEL13	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_SEL12	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_SEL11	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_SEL10	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOADSEL[3]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOADSEL[2]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOADSEL[1]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOADSEL[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[10]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[5]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[8]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[7]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[9]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[6]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ControlUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ALU_SEL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_IR : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_BUS_SEL13 : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_BUS_SEL12 : std_logic;
SIGNAL ww_BUS_SEL11 : std_logic;
SIGNAL ww_BUS_SEL10 : std_logic;
SIGNAL ww_LOADSEL : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IR[3]~input_o\ : std_logic;
SIGNAL \IR[2]~input_o\ : std_logic;
SIGNAL \IR[1]~input_o\ : std_logic;
SIGNAL \IR[0]~input_o\ : std_logic;
SIGNAL \ALU_SEL[3]~output_o\ : std_logic;
SIGNAL \ALU_SEL[2]~output_o\ : std_logic;
SIGNAL \ALU_SEL[1]~output_o\ : std_logic;
SIGNAL \ALU_SEL[0]~output_o\ : std_logic;
SIGNAL \BUS_SEL13~output_o\ : std_logic;
SIGNAL \BUS_SEL12~output_o\ : std_logic;
SIGNAL \BUS_SEL11~output_o\ : std_logic;
SIGNAL \BUS_SEL10~output_o\ : std_logic;
SIGNAL \LOADSEL[3]~output_o\ : std_logic;
SIGNAL \LOADSEL[2]~output_o\ : std_logic;
SIGNAL \LOADSEL[1]~output_o\ : std_logic;
SIGNAL \LOADSEL[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \IR[7]~input_o\ : std_logic;
SIGNAL \IR[8]~input_o\ : std_logic;
SIGNAL \IR[6]~input_o\ : std_logic;
SIGNAL \IR[9]~input_o\ : std_logic;
SIGNAL \inst|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\ : std_logic;
SIGNAL \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\ : std_logic;
SIGNAL \inst|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\ : std_logic;
SIGNAL \inst101~0_combout\ : std_logic;
SIGNAL \inst|LPM_DECODE_component|auto_generated|w_anode152w[3]~0_combout\ : std_logic;
SIGNAL \inst|LPM_DECODE_component|auto_generated|w_anode162w[3]~0_combout\ : std_logic;
SIGNAL \inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\ : std_logic;
SIGNAL \inst98~0_combout\ : std_logic;
SIGNAL \inst|LPM_DECODE_component|auto_generated|w_anode31w[3]~0_combout\ : std_logic;
SIGNAL \inst|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ : std_logic;
SIGNAL \inst|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\ : std_logic;
SIGNAL \inst|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\ : std_logic;
SIGNAL \inst|LPM_DECODE_component|auto_generated|w_anode112w[3]~0_combout\ : std_logic;
SIGNAL \inst|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\ : std_logic;
SIGNAL \inst98~1_combout\ : std_logic;
SIGNAL \inst|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\ : std_logic;
SIGNAL \inst|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\ : std_logic;
SIGNAL \inst|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\ : std_logic;
SIGNAL \inst98~2_combout\ : std_logic;
SIGNAL \inst98~3_combout\ : std_logic;
SIGNAL \inst98~4_combout\ : std_logic;
SIGNAL \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\ : std_logic;
SIGNAL \inst13|9~combout\ : std_logic;
SIGNAL \inst13|8~0_combout\ : std_logic;
SIGNAL \inst13|8~1_combout\ : std_logic;
SIGNAL \inst13|7~0_combout\ : std_logic;
SIGNAL \inst13|7~1_combout\ : std_logic;
SIGNAL \IR[10]~input_o\ : std_logic;
SIGNAL \inst118|68~combout\ : std_logic;
SIGNAL \inst100~0_combout\ : std_logic;
SIGNAL \IR[4]~input_o\ : std_logic;
SIGNAL \IR[5]~input_o\ : std_logic;
SIGNAL \inst40~0_combout\ : std_logic;
SIGNAL \inst105~0_combout\ : std_logic;
SIGNAL \V~input_o\ : std_logic;
SIGNAL \inst93~0_combout\ : std_logic;
SIGNAL \inst118|7~0_combout\ : std_logic;
SIGNAL \inst118|9~0_combout\ : std_logic;
SIGNAL \inst109~0_combout\ : std_logic;
SIGNAL \inst118|8~0_combout\ : std_logic;
SIGNAL \inst110~0_combout\ : std_logic;
SIGNAL \inst118|8~1_combout\ : std_logic;
SIGNAL \inst118|8~2_combout\ : std_logic;
SIGNAL \inst118|7~3_combout\ : std_logic;
SIGNAL \inst118|7~4_combout\ : std_logic;
SIGNAL \inst118|7~1_combout\ : std_logic;
SIGNAL \inst118|7~2_combout\ : std_logic;
SIGNAL \inst118|7~5_combout\ : std_logic;
SIGNAL \inst24|68~combout\ : std_logic;
SIGNAL \inst24|9~0_combout\ : std_logic;
SIGNAL \inst24|9~1_combout\ : std_logic;
SIGNAL \inst24|8~0_combout\ : std_logic;
SIGNAL \inst24|8~1_combout\ : std_logic;
SIGNAL \inst24|7~0_combout\ : std_logic;
SIGNAL \inst|LPM_DECODE_component|auto_generated|w_anode4w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|LPM_DECODE_component|auto_generated|dffe1a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ALU_SEL <= ww_ALU_SEL;
ww_CLK <= CLK;
ww_IR <= IR;
BUS_SEL13 <= ww_BUS_SEL13;
ww_V <= V;
BUS_SEL12 <= ww_BUS_SEL12;
BUS_SEL11 <= ww_BUS_SEL11;
BUS_SEL10 <= ww_BUS_SEL10;
LOADSEL <= ww_LOADSEL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X30_Y0_N9
\ALU_SEL[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_SEL[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\ALU_SEL[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|9~combout\,
	devoe => ww_devoe,
	o => \ALU_SEL[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\ALU_SEL[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|8~1_combout\,
	devoe => ww_devoe,
	o => \ALU_SEL[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\ALU_SEL[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|7~1_combout\,
	devoe => ww_devoe,
	o => \ALU_SEL[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\BUS_SEL13~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst118|68~combout\,
	devoe => ww_devoe,
	o => \BUS_SEL13~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\BUS_SEL12~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst118|9~0_combout\,
	devoe => ww_devoe,
	o => \BUS_SEL12~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\BUS_SEL11~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst118|8~2_combout\,
	devoe => ww_devoe,
	o => \BUS_SEL11~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\BUS_SEL10~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst118|7~5_combout\,
	devoe => ww_devoe,
	o => \BUS_SEL10~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\LOADSEL[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|68~combout\,
	devoe => ww_devoe,
	o => \LOADSEL[3]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\LOADSEL[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|9~1_combout\,
	devoe => ww_devoe,
	o => \LOADSEL[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\LOADSEL[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|8~1_combout\,
	devoe => ww_devoe,
	o => \LOADSEL[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\LOADSEL[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|7~0_combout\,
	devoe => ww_devoe,
	o => \LOADSEL[0]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y8_N8
\IR[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(7),
	o => \IR[7]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\IR[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(8),
	o => \IR[8]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\IR[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(6),
	o => \IR[6]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\IR[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(9),
	o => \IR[9]~input_o\);

-- Location: LCCOMB_X3_Y8_N30
\inst|LPM_DECODE_component|auto_generated|w_anode51w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\ = (!\IR[7]~input_o\ & (\IR[8]~input_o\ & (!\IR[6]~input_o\ & !\IR[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[7]~input_o\,
	datab => \IR[8]~input_o\,
	datac => \IR[6]~input_o\,
	datad => \IR[9]~input_o\,
	combout => \inst|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\);

-- Location: LCCOMB_X2_Y8_N8
\inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X1_Y8_N26
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X2_Y8_N28
\inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\ = (!\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\);

-- Location: LCCOMB_X2_Y8_N30
\inst|LPM_DECODE_component|auto_generated|w_anode132w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\ = (\IR[9]~input_o\ & (!\IR[6]~input_o\ & (\IR[8]~input_o\ & !\IR[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[9]~input_o\,
	datab => \IR[6]~input_o\,
	datac => \IR[8]~input_o\,
	datad => \IR[7]~input_o\,
	combout => \inst|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\);

-- Location: FF_X2_Y8_N31
\inst|LPM_DECODE_component|auto_generated|dffe1a[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\,
	ena => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_DECODE_component|auto_generated|dffe1a\(12));

-- Location: LCCOMB_X2_Y8_N20
\inst101~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst101~0_combout\ = (\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst|LPM_DECODE_component|auto_generated|dffe1a\(12) & 
-- !\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|LPM_DECODE_component|auto_generated|dffe1a\(12),
	datad => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst101~0_combout\);

-- Location: LCCOMB_X3_Y8_N18
\inst|LPM_DECODE_component|auto_generated|w_anode152w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_DECODE_component|auto_generated|w_anode152w[3]~0_combout\ = (\IR[7]~input_o\ & (\IR[8]~input_o\ & (!\IR[6]~input_o\ & \IR[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[7]~input_o\,
	datab => \IR[8]~input_o\,
	datac => \IR[6]~input_o\,
	datad => \IR[9]~input_o\,
	combout => \inst|LPM_DECODE_component|auto_generated|w_anode152w[3]~0_combout\);

-- Location: FF_X3_Y8_N19
\inst|LPM_DECODE_component|auto_generated|dffe1a[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_DECODE_component|auto_generated|w_anode152w[3]~0_combout\,
	ena => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_DECODE_component|auto_generated|dffe1a\(14));

-- Location: LCCOMB_X3_Y8_N8
\inst|LPM_DECODE_component|auto_generated|w_anode162w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_DECODE_component|auto_generated|w_anode162w[3]~0_combout\ = (\IR[7]~input_o\ & (\IR[8]~input_o\ & (\IR[6]~input_o\ & \IR[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[7]~input_o\,
	datab => \IR[8]~input_o\,
	datac => \IR[6]~input_o\,
	datad => \IR[9]~input_o\,
	combout => \inst|LPM_DECODE_component|auto_generated|w_anode162w[3]~0_combout\);

-- Location: FF_X3_Y8_N1
\inst|LPM_DECODE_component|auto_generated|dffe1a[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|LPM_DECODE_component|auto_generated|w_anode162w[3]~0_combout\,
	sload => VCC,
	ena => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_DECODE_component|auto_generated|dffe1a\(15));

-- Location: LCCOMB_X3_Y8_N12
\inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\ = (!\IR[7]~input_o\ & (\IR[8]~input_o\ & (\IR[6]~input_o\ & !\IR[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[7]~input_o\,
	datab => \IR[8]~input_o\,
	datac => \IR[6]~input_o\,
	datad => \IR[9]~input_o\,
	combout => \inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\);

-- Location: FF_X3_Y8_N13
\inst|LPM_DECODE_component|auto_generated|dffe1a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\,
	ena => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_DECODE_component|auto_generated|dffe1a\(5));

-- Location: LCCOMB_X3_Y8_N0
\inst98~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst98~0_combout\ = (\inst|LPM_DECODE_component|auto_generated|dffe1a\(4)) # ((\inst|LPM_DECODE_component|auto_generated|dffe1a\(14)) # ((\inst|LPM_DECODE_component|auto_generated|dffe1a\(15)) # (\inst|LPM_DECODE_component|auto_generated|dffe1a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_DECODE_component|auto_generated|dffe1a\(4),
	datab => \inst|LPM_DECODE_component|auto_generated|dffe1a\(14),
	datac => \inst|LPM_DECODE_component|auto_generated|dffe1a\(15),
	datad => \inst|LPM_DECODE_component|auto_generated|dffe1a\(5),
	combout => \inst98~0_combout\);

-- Location: LCCOMB_X2_Y8_N2
\inst|LPM_DECODE_component|auto_generated|w_anode31w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_DECODE_component|auto_generated|w_anode31w[3]~0_combout\ = (!\IR[9]~input_o\ & (!\IR[6]~input_o\ & (!\IR[8]~input_o\ & \IR[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[9]~input_o\,
	datab => \IR[6]~input_o\,
	datac => \IR[8]~input_o\,
	datad => \IR[7]~input_o\,
	combout => \inst|LPM_DECODE_component|auto_generated|w_anode31w[3]~0_combout\);

-- Location: FF_X2_Y8_N3
\inst|LPM_DECODE_component|auto_generated|dffe1a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_DECODE_component|auto_generated|w_anode31w[3]~0_combout\,
	ena => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_DECODE_component|auto_generated|dffe1a\(2));

-- Location: LCCOMB_X2_Y8_N4
\inst|LPM_DECODE_component|auto_generated|w_anode41w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ = (!\IR[9]~input_o\ & (\IR[6]~input_o\ & (!\IR[8]~input_o\ & \IR[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[9]~input_o\,
	datab => \IR[6]~input_o\,
	datac => \IR[8]~input_o\,
	datad => \IR[7]~input_o\,
	combout => \inst|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\);

-- Location: FF_X2_Y8_N5
\inst|LPM_DECODE_component|auto_generated|dffe1a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	ena => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_DECODE_component|auto_generated|dffe1a\(3));

-- Location: LCCOMB_X1_Y8_N30
\inst|LPM_DECODE_component|auto_generated|w_anode102w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\ = (\IR[6]~input_o\ & (!\IR[8]~input_o\ & (!\IR[7]~input_o\ & \IR[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[6]~input_o\,
	datab => \IR[8]~input_o\,
	datac => \IR[7]~input_o\,
	datad => \IR[9]~input_o\,
	combout => \inst|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\);

-- Location: FF_X1_Y8_N31
\inst|LPM_DECODE_component|auto_generated|dffe1a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\,
	ena => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_DECODE_component|auto_generated|dffe1a\(9));

-- Location: LCCOMB_X1_Y8_N24
\inst|LPM_DECODE_component|auto_generated|w_anode122w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\ = (\IR[6]~input_o\ & (!\IR[8]~input_o\ & (\IR[7]~input_o\ & \IR[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[6]~input_o\,
	datab => \IR[8]~input_o\,
	datac => \IR[7]~input_o\,
	datad => \IR[9]~input_o\,
	combout => \inst|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\);

-- Location: FF_X1_Y8_N25
\inst|LPM_DECODE_component|auto_generated|dffe1a[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\,
	ena => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_DECODE_component|auto_generated|dffe1a\(11));

-- Location: LCCOMB_X1_Y8_N8
\inst|LPM_DECODE_component|auto_generated|w_anode112w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_DECODE_component|auto_generated|w_anode112w[3]~0_combout\ = (!\IR[6]~input_o\ & (!\IR[8]~input_o\ & (\IR[7]~input_o\ & \IR[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[6]~input_o\,
	datab => \IR[8]~input_o\,
	datac => \IR[7]~input_o\,
	datad => \IR[9]~input_o\,
	combout => \inst|LPM_DECODE_component|auto_generated|w_anode112w[3]~0_combout\);

-- Location: FF_X1_Y8_N7
\inst|LPM_DECODE_component|auto_generated|dffe1a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|LPM_DECODE_component|auto_generated|w_anode112w[3]~0_combout\,
	sload => VCC,
	ena => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_DECODE_component|auto_generated|dffe1a\(10));

-- Location: LCCOMB_X1_Y8_N18
\inst|LPM_DECODE_component|auto_generated|w_anode142w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\ = (\IR[6]~input_o\ & (\IR[8]~input_o\ & (!\IR[7]~input_o\ & \IR[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[6]~input_o\,
	datab => \IR[8]~input_o\,
	datac => \IR[7]~input_o\,
	datad => \IR[9]~input_o\,
	combout => \inst|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\);

-- Location: FF_X1_Y8_N19
\inst|LPM_DECODE_component|auto_generated|dffe1a[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\,
	ena => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_DECODE_component|auto_generated|dffe1a\(13));

-- Location: LCCOMB_X1_Y8_N6
\inst98~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst98~1_combout\ = (\inst|LPM_DECODE_component|auto_generated|dffe1a\(9)) # ((\inst|LPM_DECODE_component|auto_generated|dffe1a\(11)) # ((\inst|LPM_DECODE_component|auto_generated|dffe1a\(10)) # (\inst|LPM_DECODE_component|auto_generated|dffe1a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_DECODE_component|auto_generated|dffe1a\(9),
	datab => \inst|LPM_DECODE_component|auto_generated|dffe1a\(11),
	datac => \inst|LPM_DECODE_component|auto_generated|dffe1a\(10),
	datad => \inst|LPM_DECODE_component|auto_generated|dffe1a\(13),
	combout => \inst98~1_combout\);

-- Location: LCCOMB_X3_Y8_N10
\inst|LPM_DECODE_component|auto_generated|w_anode21w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\ = (!\IR[7]~input_o\ & (!\IR[8]~input_o\ & (\IR[6]~input_o\ & !\IR[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[7]~input_o\,
	datab => \IR[8]~input_o\,
	datac => \IR[6]~input_o\,
	datad => \IR[9]~input_o\,
	combout => \inst|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\);

-- Location: FF_X3_Y8_N11
\inst|LPM_DECODE_component|auto_generated|dffe1a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\,
	ena => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_DECODE_component|auto_generated|dffe1a\(1));

-- Location: LCCOMB_X3_Y8_N24
\inst|LPM_DECODE_component|auto_generated|w_anode71w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\ = (\IR[7]~input_o\ & (\IR[8]~input_o\ & (!\IR[6]~input_o\ & !\IR[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[7]~input_o\,
	datab => \IR[8]~input_o\,
	datac => \IR[6]~input_o\,
	datad => \IR[9]~input_o\,
	combout => \inst|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\);

-- Location: FF_X3_Y8_N25
\inst|LPM_DECODE_component|auto_generated|dffe1a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\,
	ena => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_DECODE_component|auto_generated|dffe1a\(6));

-- Location: LCCOMB_X3_Y8_N22
\inst|LPM_DECODE_component|auto_generated|w_anode4w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_DECODE_component|auto_generated|w_anode4w\(3) = (!\IR[7]~input_o\ & (!\IR[8]~input_o\ & (!\IR[6]~input_o\ & !\IR[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[7]~input_o\,
	datab => \IR[8]~input_o\,
	datac => \IR[6]~input_o\,
	datad => \IR[9]~input_o\,
	combout => \inst|LPM_DECODE_component|auto_generated|w_anode4w\(3));

-- Location: FF_X3_Y8_N3
\inst|LPM_DECODE_component|auto_generated|dffe1a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|LPM_DECODE_component|auto_generated|w_anode4w\(3),
	sload => VCC,
	ena => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_DECODE_component|auto_generated|dffe1a\(0));

-- Location: LCCOMB_X3_Y8_N20
\inst|LPM_DECODE_component|auto_generated|w_anode91w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\ = (!\IR[7]~input_o\ & (!\IR[8]~input_o\ & (!\IR[6]~input_o\ & \IR[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[7]~input_o\,
	datab => \IR[8]~input_o\,
	datac => \IR[6]~input_o\,
	datad => \IR[9]~input_o\,
	combout => \inst|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\);

-- Location: FF_X3_Y8_N21
\inst|LPM_DECODE_component|auto_generated|dffe1a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\,
	ena => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_DECODE_component|auto_generated|dffe1a\(8));

-- Location: LCCOMB_X3_Y8_N2
\inst98~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst98~2_combout\ = (\inst|LPM_DECODE_component|auto_generated|dffe1a\(1)) # ((\inst|LPM_DECODE_component|auto_generated|dffe1a\(6)) # ((\inst|LPM_DECODE_component|auto_generated|dffe1a\(0)) # (\inst|LPM_DECODE_component|auto_generated|dffe1a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_DECODE_component|auto_generated|dffe1a\(1),
	datab => \inst|LPM_DECODE_component|auto_generated|dffe1a\(6),
	datac => \inst|LPM_DECODE_component|auto_generated|dffe1a\(0),
	datad => \inst|LPM_DECODE_component|auto_generated|dffe1a\(8),
	combout => \inst98~2_combout\);

-- Location: LCCOMB_X2_Y8_N24
\inst98~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst98~3_combout\ = (\inst|LPM_DECODE_component|auto_generated|dffe1a\(2)) # ((\inst|LPM_DECODE_component|auto_generated|dffe1a\(3)) # ((\inst98~1_combout\) # (\inst98~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_DECODE_component|auto_generated|dffe1a\(2),
	datab => \inst|LPM_DECODE_component|auto_generated|dffe1a\(3),
	datac => \inst98~1_combout\,
	datad => \inst98~2_combout\,
	combout => \inst98~3_combout\);

-- Location: LCCOMB_X2_Y8_N26
\inst98~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst98~4_combout\ = (\inst101~0_combout\) # ((\inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\ & ((\inst98~0_combout\) # (\inst98~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\,
	datab => \inst101~0_combout\,
	datac => \inst98~0_combout\,
	datad => \inst98~3_combout\,
	combout => \inst98~4_combout\);

-- Location: FF_X2_Y8_N9
\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \inst98~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X2_Y8_N10
\inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X2_Y8_N11
\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \inst98~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X2_Y8_N12
\inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (!\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	cin => \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\);

-- Location: FF_X2_Y8_N13
\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1212|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \inst98~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X2_Y8_N6
\inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\ = (!\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\);

-- Location: FF_X3_Y8_N31
\inst|LPM_DECODE_component|auto_generated|dffe1a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\,
	ena => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_DECODE_component|auto_generated|dffe1a\(4));

-- Location: LCCOMB_X2_Y8_N22
\inst13|9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|9~combout\ = (\inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\ & ((\inst|LPM_DECODE_component|auto_generated|dffe1a\(4)) # ((\inst|LPM_DECODE_component|auto_generated|dffe1a\(6)) # 
-- (\inst|LPM_DECODE_component|auto_generated|dffe1a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_DECODE_component|auto_generated|dffe1a\(4),
	datab => \inst|LPM_DECODE_component|auto_generated|dffe1a\(6),
	datac => \inst|LPM_DECODE_component|auto_generated|dffe1a\(5),
	datad => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\,
	combout => \inst13|9~combout\);

-- Location: LCCOMB_X2_Y8_N14
\inst13|8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|8~0_combout\ = (!\inst|LPM_DECODE_component|auto_generated|dffe1a\(5) & ((\inst|LPM_DECODE_component|auto_generated|dffe1a\(3)) # (\inst|LPM_DECODE_component|auto_generated|dffe1a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_DECODE_component|auto_generated|dffe1a\(3),
	datac => \inst|LPM_DECODE_component|auto_generated|dffe1a\(5),
	datad => \inst|LPM_DECODE_component|auto_generated|dffe1a\(2),
	combout => \inst13|8~0_combout\);

-- Location: LCCOMB_X2_Y8_N16
\inst13|8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|8~1_combout\ = (\inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\ & ((\inst|LPM_DECODE_component|auto_generated|dffe1a\(6)) # ((!\inst|LPM_DECODE_component|auto_generated|dffe1a\(4) & \inst13|8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_DECODE_component|auto_generated|dffe1a\(4),
	datab => \inst|LPM_DECODE_component|auto_generated|dffe1a\(6),
	datac => \inst13|8~0_combout\,
	datad => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\,
	combout => \inst13|8~1_combout\);

-- Location: LCCOMB_X2_Y8_N18
\inst13|7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|7~0_combout\ = (!\inst|LPM_DECODE_component|auto_generated|dffe1a\(4) & ((\inst|LPM_DECODE_component|auto_generated|dffe1a\(3)) # ((\inst|LPM_DECODE_component|auto_generated|dffe1a\(1) & !\inst|LPM_DECODE_component|auto_generated|dffe1a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_DECODE_component|auto_generated|dffe1a\(4),
	datab => \inst|LPM_DECODE_component|auto_generated|dffe1a\(3),
	datac => \inst|LPM_DECODE_component|auto_generated|dffe1a\(1),
	datad => \inst|LPM_DECODE_component|auto_generated|dffe1a\(2),
	combout => \inst13|7~0_combout\);

-- Location: LCCOMB_X2_Y8_N0
\inst13|7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|7~1_combout\ = (\inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\ & (!\inst|LPM_DECODE_component|auto_generated|dffe1a\(6) & ((\inst13|7~0_combout\) # (\inst|LPM_DECODE_component|auto_generated|dffe1a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\,
	datab => \inst13|7~0_combout\,
	datac => \inst|LPM_DECODE_component|auto_generated|dffe1a\(5),
	datad => \inst|LPM_DECODE_component|auto_generated|dffe1a\(6),
	combout => \inst13|7~1_combout\);

-- Location: IOIBUF_X0_Y7_N22
\IR[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(10),
	o => \IR[10]~input_o\);

-- Location: LCCOMB_X1_Y7_N12
\inst118|68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|68~combout\ = (\inst101~0_combout\) # ((!\IR[10]~input_o\ & (\inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\ & \inst|LPM_DECODE_component|auto_generated|dffe1a\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[10]~input_o\,
	datab => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\,
	datac => \inst|LPM_DECODE_component|auto_generated|dffe1a\(11),
	datad => \inst101~0_combout\,
	combout => \inst118|68~combout\);

-- Location: LCCOMB_X1_Y7_N20
\inst100~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst100~0_combout\ = (\IR[10]~input_o\ & (\inst|LPM_DECODE_component|auto_generated|dffe1a\(8) & \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[10]~input_o\,
	datac => \inst|LPM_DECODE_component|auto_generated|dffe1a\(8),
	datad => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\,
	combout => \inst100~0_combout\);

-- Location: IOIBUF_X0_Y10_N22
\IR[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(4),
	o => \IR[4]~input_o\);

-- Location: IOIBUF_X0_Y10_N8
\IR[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(5),
	o => \IR[5]~input_o\);

-- Location: LCCOMB_X1_Y8_N28
\inst40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst40~0_combout\ = (\inst|LPM_DECODE_component|auto_generated|dffe1a\(9) & (\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- !\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_DECODE_component|auto_generated|dffe1a\(9),
	datab => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst40~0_combout\);

-- Location: LCCOMB_X1_Y7_N10
\inst105~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst105~0_combout\ = (\IR[4]~input_o\ & (\IR[5]~input_o\ & \inst40~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[4]~input_o\,
	datab => \IR[5]~input_o\,
	datac => \inst40~0_combout\,
	combout => \inst105~0_combout\);

-- Location: IOIBUF_X0_Y7_N15
\V~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V,
	o => \V~input_o\);

-- Location: LCCOMB_X1_Y7_N18
\inst93~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst93~0_combout\ = (\inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\ & (\inst|LPM_DECODE_component|auto_generated|dffe1a\(14) & ((\V~input_o\) # (!\IR[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V~input_o\,
	datab => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\,
	datac => \inst|LPM_DECODE_component|auto_generated|dffe1a\(14),
	datad => \IR[10]~input_o\,
	combout => \inst93~0_combout\);

-- Location: LCCOMB_X1_Y7_N24
\inst118|7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|7~0_combout\ = (!\inst93~0_combout\ & ((\IR[4]~input_o\) # ((!\inst40~0_combout\) # (!\IR[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[4]~input_o\,
	datab => \IR[5]~input_o\,
	datac => \inst40~0_combout\,
	datad => \inst93~0_combout\,
	combout => \inst118|7~0_combout\);

-- Location: LCCOMB_X1_Y7_N2
\inst118|9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|9~0_combout\ = (!\inst118|68~combout\ & ((\inst100~0_combout\) # ((\inst105~0_combout\) # (!\inst118|7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst118|68~combout\,
	datab => \inst100~0_combout\,
	datac => \inst105~0_combout\,
	datad => \inst118|7~0_combout\,
	combout => \inst118|9~0_combout\);

-- Location: LCCOMB_X1_Y8_N14
\inst109~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst109~0_combout\ = (\inst|LPM_DECODE_component|auto_generated|dffe1a\(13)) # ((\inst|LPM_DECODE_component|auto_generated|dffe1a\(9) & !\IR[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_DECODE_component|auto_generated|dffe1a\(9),
	datab => \IR[4]~input_o\,
	datac => \inst|LPM_DECODE_component|auto_generated|dffe1a\(13),
	combout => \inst109~0_combout\);

-- Location: LCCOMB_X1_Y7_N4
\inst118|8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|8~0_combout\ = (\IR[5]~input_o\ & (\inst40~0_combout\)) # (!\IR[5]~input_o\ & ((\inst109~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40~0_combout\,
	datab => \IR[5]~input_o\,
	datac => \inst109~0_combout\,
	combout => \inst118|8~0_combout\);

-- Location: LCCOMB_X1_Y8_N4
\inst110~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst110~0_combout\ = (\IR[5]~input_o\ & (((\inst|LPM_DECODE_component|auto_generated|dffe1a\(13))))) # (!\IR[5]~input_o\ & (\inst|LPM_DECODE_component|auto_generated|dffe1a\(9) & (\IR[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_DECODE_component|auto_generated|dffe1a\(9),
	datab => \IR[4]~input_o\,
	datac => \inst|LPM_DECODE_component|auto_generated|dffe1a\(13),
	datad => \IR[5]~input_o\,
	combout => \inst110~0_combout\);

-- Location: LCCOMB_X1_Y7_N26
\inst118|8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|8~1_combout\ = (\inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\ & ((\inst118|8~0_combout\ & ((!\IR[5]~input_o\))) # (!\inst118|8~0_combout\ & (\inst110~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst118|8~0_combout\,
	datab => \inst110~0_combout\,
	datac => \IR[5]~input_o\,
	datad => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\,
	combout => \inst118|8~1_combout\);

-- Location: LCCOMB_X1_Y7_N16
\inst118|8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|8~2_combout\ = (\inst100~0_combout\) # ((!\inst118|68~combout\ & ((\inst93~0_combout\) # (\inst118|8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst118|68~combout\,
	datab => \inst93~0_combout\,
	datac => \inst118|8~1_combout\,
	datad => \inst100~0_combout\,
	combout => \inst118|8~2_combout\);

-- Location: LCCOMB_X1_Y7_N30
\inst118|7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|7~3_combout\ = (\inst|LPM_DECODE_component|auto_generated|dffe1a\(12) & (\inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\ & ((\IR[5]~input_o\) # (!\inst109~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst109~0_combout\,
	datab => \IR[5]~input_o\,
	datac => \inst|LPM_DECODE_component|auto_generated|dffe1a\(12),
	datad => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\,
	combout => \inst118|7~3_combout\);

-- Location: LCCOMB_X1_Y7_N8
\inst118|7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|7~4_combout\ = (\inst118|7~3_combout\) # ((!\inst118|68~combout\ & (\inst110~0_combout\ & \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst118|68~combout\,
	datab => \inst110~0_combout\,
	datac => \inst118|7~3_combout\,
	datad => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\,
	combout => \inst118|7~4_combout\);

-- Location: LCCOMB_X1_Y7_N22
\inst118|7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|7~1_combout\ = (\inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\ & ((\IR[10]~input_o\ & ((\inst|LPM_DECODE_component|auto_generated|dffe1a\(8)))) # (!\IR[10]~input_o\ & (\inst|LPM_DECODE_component|auto_generated|dffe1a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_DECODE_component|auto_generated|dffe1a\(11),
	datab => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\,
	datac => \inst|LPM_DECODE_component|auto_generated|dffe1a\(8),
	datad => \IR[10]~input_o\,
	combout => \inst118|7~1_combout\);

-- Location: LCCOMB_X1_Y7_N28
\inst118|7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|7~2_combout\ = (\inst118|7~1_combout\) # ((\inst105~0_combout\ & (!\inst93~0_combout\ & !\inst118|68~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst105~0_combout\,
	datab => \inst93~0_combout\,
	datac => \inst118|7~1_combout\,
	datad => \inst118|68~combout\,
	combout => \inst118|7~2_combout\);

-- Location: LCCOMB_X1_Y7_N14
\inst118|7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|7~5_combout\ = (\inst118|7~2_combout\) # ((\inst118|7~0_combout\ & \inst118|7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst118|7~0_combout\,
	datac => \inst118|7~4_combout\,
	datad => \inst118|7~2_combout\,
	combout => \inst118|7~5_combout\);

-- Location: LCCOMB_X1_Y8_N12
\inst24|68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst24|68~combout\ = (!\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst|LPM_DECODE_component|auto_generated|dffe1a\(9) & 
-- \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((!\inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_DECODE_component|auto_generated|dffe1a\(9),
	datab => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst1212|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst24|68~combout\);

-- Location: LCCOMB_X1_Y7_N0
\inst24|9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst24|9~0_combout\ = (\IR[10]~input_o\ & (\inst|LPM_DECODE_component|auto_generated|dffe1a\(11) & \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[10]~input_o\,
	datac => \inst|LPM_DECODE_component|auto_generated|dffe1a\(11),
	datad => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~0_combout\,
	combout => \inst24|9~0_combout\);

-- Location: LCCOMB_X1_Y8_N22
\inst24|9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst24|9~1_combout\ = (!\inst24|68~combout\ & ((\IR[5]~input_o\) # ((\IR[4]~input_o\) # (\inst24|9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|68~combout\,
	datab => \IR[5]~input_o\,
	datac => \IR[4]~input_o\,
	datad => \inst24|9~0_combout\,
	combout => \inst24|9~1_combout\);

-- Location: LCCOMB_X1_Y8_N16
\inst24|8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst24|8~0_combout\ = (!\inst24|68~combout\ & ((\inst24|9~0_combout\) # (\IR[5]~input_o\ $ (!\IR[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|68~combout\,
	datab => \IR[5]~input_o\,
	datac => \IR[4]~input_o\,
	datad => \inst24|9~0_combout\,
	combout => \inst24|8~0_combout\);

-- Location: LCCOMB_X1_Y8_N2
\inst24|8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst24|8~1_combout\ = (\inst24|8~0_combout\) # ((\inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\ & (\IR[5]~input_o\ $ (!\IR[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_DECODE_component|auto_generated|w_anode19w[2]~1_combout\,
	datab => \IR[5]~input_o\,
	datac => \IR[4]~input_o\,
	datad => \inst24|8~0_combout\,
	combout => \inst24|8~1_combout\);

-- Location: LCCOMB_X1_Y8_N20
\inst24|7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst24|7~0_combout\ = (\inst40~0_combout\) # ((!\inst24|68~combout\ & ((\inst24|9~0_combout\) # (!\IR[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|68~combout\,
	datab => \inst24|9~0_combout\,
	datac => \IR[4]~input_o\,
	datad => \inst40~0_combout\,
	combout => \inst24|7~0_combout\);

-- Location: IOIBUF_X23_Y29_N22
\IR[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(3),
	o => \IR[3]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\IR[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(2),
	o => \IR[2]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\IR[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(1),
	o => \IR[1]~input_o\);

-- Location: IOIBUF_X26_Y29_N8
\IR[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(0),
	o => \IR[0]~input_o\);

ww_ALU_SEL(3) <= \ALU_SEL[3]~output_o\;

ww_ALU_SEL(2) <= \ALU_SEL[2]~output_o\;

ww_ALU_SEL(1) <= \ALU_SEL[1]~output_o\;

ww_ALU_SEL(0) <= \ALU_SEL[0]~output_o\;

ww_BUS_SEL13 <= \BUS_SEL13~output_o\;

ww_BUS_SEL12 <= \BUS_SEL12~output_o\;

ww_BUS_SEL11 <= \BUS_SEL11~output_o\;

ww_BUS_SEL10 <= \BUS_SEL10~output_o\;

ww_LOADSEL(3) <= \LOADSEL[3]~output_o\;

ww_LOADSEL(2) <= \LOADSEL[2]~output_o\;

ww_LOADSEL(1) <= \LOADSEL[1]~output_o\;

ww_LOADSEL(0) <= \LOADSEL[0]~output_o\;
END structure;


