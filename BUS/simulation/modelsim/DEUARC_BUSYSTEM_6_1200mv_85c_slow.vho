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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "04/12/2019 00:29:41"

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

ENTITY 	DEUARC_BUSYSTEM IS
    PORT (
	OUTREG : OUT std_logic_vector(3 DOWNTO 0);
	SECLR : IN std_logic_vector(3 DOWNTO 0);
	SELD : IN std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic;
	SEINR : IN std_logic_vector(3 DOWNTO 0);
	RESULT : OUT std_logic_vector(3 DOWNTO 0);
	INPREG_DATA : IN std_logic_vector(3 DOWNTO 0);
	M : IN std_logic;
	WRITE : IN std_logic;
	SEMUX : IN std_logic_vector(2 DOWNTO 0)
	);
END DEUARC_BUSYSTEM;

-- Design Ports Information
-- OUTREG[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTREG[2]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTREG[1]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTREG[0]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[3]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPREG_DATA[3]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPREG_DATA[2]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPREG_DATA[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPREG_DATA[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEMUX[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEMUX[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEMUX[0]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SECLR[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SECLR[1]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SECLR[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SECLR[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SELD[2]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SELD[1]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SELD[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SELD[3]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEINR[2]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEINR[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEINR[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEINR[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DEUARC_BUSYSTEM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OUTREG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SECLR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SELD : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_SEINR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RESULT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_INPREG_DATA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_M : std_logic;
SIGNAL ww_WRITE : std_logic;
SIGNAL ww_SEMUX : std_logic_vector(2 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INPREG_DATA[3]~input_o\ : std_logic;
SIGNAL \INPREG_DATA[2]~input_o\ : std_logic;
SIGNAL \INPREG_DATA[1]~input_o\ : std_logic;
SIGNAL \INPREG_DATA[0]~input_o\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \WRITE~input_o\ : std_logic;
SIGNAL \SEMUX[2]~input_o\ : std_logic;
SIGNAL \SEMUX[1]~input_o\ : std_logic;
SIGNAL \SEMUX[0]~input_o\ : std_logic;
SIGNAL \OUTREG[3]~output_o\ : std_logic;
SIGNAL \OUTREG[2]~output_o\ : std_logic;
SIGNAL \OUTREG[1]~output_o\ : std_logic;
SIGNAL \OUTREG[0]~output_o\ : std_logic;
SIGNAL \RESULT[3]~output_o\ : std_logic;
SIGNAL \RESULT[2]~output_o\ : std_logic;
SIGNAL \RESULT[1]~output_o\ : std_logic;
SIGNAL \RESULT[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \SECLR[0]~input_o\ : std_logic;
SIGNAL \SECLR[3]~input_o\ : std_logic;
SIGNAL \SECLR[2]~input_o\ : std_logic;
SIGNAL \SECLR[1]~input_o\ : std_logic;
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\ : std_logic;
SIGNAL \SELD[2]~input_o\ : std_logic;
SIGNAL \SELD[3]~input_o\ : std_logic;
SIGNAL \SELD[1]~input_o\ : std_logic;
SIGNAL \SELD[0]~input_o\ : std_logic;
SIGNAL \inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\ : std_logic;
SIGNAL \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\ : std_logic;
SIGNAL \SEINR[1]~input_o\ : std_logic;
SIGNAL \SEINR[3]~input_o\ : std_logic;
SIGNAL \SEINR[2]~input_o\ : std_logic;
SIGNAL \SEINR[0]~input_o\ : std_logic;
SIGNAL \inst1|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\ : std_logic;
SIGNAL \inst14|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);

BEGIN

OUTREG <= ww_OUTREG;
ww_SECLR <= SECLR;
ww_SELD <= SELD;
ww_CLK <= CLK;
ww_SEINR <= SEINR;
RESULT <= ww_RESULT;
ww_INPREG_DATA <= INPREG_DATA;
ww_M <= M;
ww_WRITE <= WRITE;
ww_SEMUX <= SEMUX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X0_Y3_N9
\OUTREG[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \OUTREG[3]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\OUTREG[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \OUTREG[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\OUTREG[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \OUTREG[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\OUTREG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \OUTREG[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N2
\RESULT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT[3]~output_o\);

-- Location: IOOBUF_X11_Y29_N9
\RESULT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\RESULT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT[1]~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\RESULT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT[0]~output_o\);

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

-- Location: LCCOMB_X1_Y5_N6
\inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X1_Y5_N22
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

-- Location: IOIBUF_X0_Y5_N22
\SECLR[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SECLR(0),
	o => \SECLR[0]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\SECLR[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SECLR(3),
	o => \SECLR[3]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\SECLR[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SECLR(2),
	o => \SECLR[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\SECLR[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SECLR(1),
	o => \SECLR[1]~input_o\);

-- Location: LCCOMB_X1_Y5_N4
\inst2|LPM_DECODE_component|auto_generated|w_anode81w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\ = (\SECLR[0]~input_o\ & (!\SECLR[3]~input_o\ & (\SECLR[2]~input_o\ & \SECLR[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SECLR[0]~input_o\,
	datab => \SECLR[3]~input_o\,
	datac => \SECLR[2]~input_o\,
	datad => \SECLR[1]~input_o\,
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\);

-- Location: IOIBUF_X0_Y6_N8
\SELD[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SELD(2),
	o => \SELD[2]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\SELD[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SELD(3),
	o => \SELD[3]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\SELD[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SELD(1),
	o => \SELD[1]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\SELD[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SELD(0),
	o => \SELD[0]~input_o\);

-- Location: LCCOMB_X1_Y6_N8
\inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\ = (\SELD[2]~input_o\ & (!\SELD[3]~input_o\ & (\SELD[1]~input_o\ & \SELD[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SELD[2]~input_o\,
	datab => \SELD[3]~input_o\,
	datac => \SELD[1]~input_o\,
	datad => \SELD[0]~input_o\,
	combout => \inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\);

-- Location: LCCOMB_X1_Y5_N26
\inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\ = (\inst2|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\) # (\inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\,
	datad => \inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\,
	combout => \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\);

-- Location: IOIBUF_X0_Y4_N8
\SEINR[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEINR(1),
	o => \SEINR[1]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\SEINR[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEINR(3),
	o => \SEINR[3]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\SEINR[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEINR(2),
	o => \SEINR[2]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\SEINR[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEINR(0),
	o => \SEINR[0]~input_o\);

-- Location: LCCOMB_X1_Y4_N0
\inst1|LPM_DECODE_component|auto_generated|w_anode81w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\ = (\SEINR[1]~input_o\ & (!\SEINR[3]~input_o\ & (\SEINR[2]~input_o\ & \SEINR[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEINR[1]~input_o\,
	datab => \SEINR[3]~input_o\,
	datac => \SEINR[2]~input_o\,
	datad => \SEINR[0]~input_o\,
	combout => \inst1|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\);

-- Location: LCCOMB_X1_Y5_N0
\inst14|LPM_COUNTER_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\inst1|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\) # ((\inst2|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\) # 
-- (\inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\,
	datac => \inst2|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\,
	datad => \inst|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\,
	combout => \inst14|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X1_Y5_N7
\inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\,
	ena => \inst14|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X1_Y5_N8
\inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X1_Y5_N9
\inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\,
	ena => \inst14|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X1_Y5_N10
\inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X1_Y5_N11
\inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\,
	ena => \inst14|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X1_Y5_N12
\inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ $ (\inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	cin => \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\);

-- Location: FF_X1_Y5_N13
\inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~0_combout\,
	ena => \inst14|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: IOIBUF_X37_Y29_N8
\INPREG_DATA[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPREG_DATA(3),
	o => \INPREG_DATA[3]~input_o\);

-- Location: IOIBUF_X41_Y22_N22
\INPREG_DATA[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPREG_DATA(2),
	o => \INPREG_DATA[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\INPREG_DATA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPREG_DATA(1),
	o => \INPREG_DATA[1]~input_o\);

-- Location: IOIBUF_X30_Y29_N1
\INPREG_DATA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPREG_DATA(0),
	o => \INPREG_DATA[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\M~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: IOIBUF_X41_Y3_N22
\WRITE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE,
	o => \WRITE~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\SEMUX[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEMUX(2),
	o => \SEMUX[2]~input_o\);

-- Location: IOIBUF_X28_Y29_N29
\SEMUX[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEMUX(1),
	o => \SEMUX[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\SEMUX[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEMUX(0),
	o => \SEMUX[0]~input_o\);

ww_OUTREG(3) <= \OUTREG[3]~output_o\;

ww_OUTREG(2) <= \OUTREG[2]~output_o\;

ww_OUTREG(1) <= \OUTREG[1]~output_o\;

ww_OUTREG(0) <= \OUTREG[0]~output_o\;

ww_RESULT(3) <= \RESULT[3]~output_o\;

ww_RESULT(2) <= \RESULT[2]~output_o\;

ww_RESULT(1) <= \RESULT[1]~output_o\;

ww_RESULT(0) <= \RESULT[0]~output_o\;
END structure;


