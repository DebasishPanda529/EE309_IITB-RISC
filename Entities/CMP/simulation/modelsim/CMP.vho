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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/02/2023 10:45:10"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


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

ENTITY 	CMP IS
    PORT (
	cmp_data_in : IN std_logic_vector(15 DOWNTO 0);
	cmp_enable : IN std_logic;
	cmp_data_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END CMP;

-- Design Ports Information
-- cmp_data_out[0]	=>  Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_out[1]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_out[2]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_out[3]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_out[4]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_out[5]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_out[6]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_out[7]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_out[8]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_out[9]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_out[10]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_out[11]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_out[12]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_out[13]	=>  Location: PIN_97,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_out[14]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_out[15]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_in[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_enable	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_in[1]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_in[2]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_in[3]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_in[4]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_in[5]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_in[6]	=>  Location: PIN_78,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_in[7]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_in[8]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_in[9]	=>  Location: PIN_81,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_in[10]	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_in[11]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_in[12]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_in[13]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_in[14]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_data_in[15]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CMP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cmp_data_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_cmp_enable : std_logic;
SIGNAL ww_cmp_data_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \cmp_data_out[0]~output_o\ : std_logic;
SIGNAL \cmp_data_out[1]~output_o\ : std_logic;
SIGNAL \cmp_data_out[2]~output_o\ : std_logic;
SIGNAL \cmp_data_out[3]~output_o\ : std_logic;
SIGNAL \cmp_data_out[4]~output_o\ : std_logic;
SIGNAL \cmp_data_out[5]~output_o\ : std_logic;
SIGNAL \cmp_data_out[6]~output_o\ : std_logic;
SIGNAL \cmp_data_out[7]~output_o\ : std_logic;
SIGNAL \cmp_data_out[8]~output_o\ : std_logic;
SIGNAL \cmp_data_out[9]~output_o\ : std_logic;
SIGNAL \cmp_data_out[10]~output_o\ : std_logic;
SIGNAL \cmp_data_out[11]~output_o\ : std_logic;
SIGNAL \cmp_data_out[12]~output_o\ : std_logic;
SIGNAL \cmp_data_out[13]~output_o\ : std_logic;
SIGNAL \cmp_data_out[14]~output_o\ : std_logic;
SIGNAL \cmp_data_out[15]~output_o\ : std_logic;
SIGNAL \cmp_enable~input_o\ : std_logic;
SIGNAL \cmp_data_in[0]~input_o\ : std_logic;
SIGNAL \cmp_data_out~0_combout\ : std_logic;
SIGNAL \cmp_data_in[1]~input_o\ : std_logic;
SIGNAL \cmp_data_out~1_combout\ : std_logic;
SIGNAL \cmp_data_in[2]~input_o\ : std_logic;
SIGNAL \cmp_data_out~2_combout\ : std_logic;
SIGNAL \cmp_data_in[3]~input_o\ : std_logic;
SIGNAL \cmp_data_out~3_combout\ : std_logic;
SIGNAL \cmp_data_in[4]~input_o\ : std_logic;
SIGNAL \cmp_data_out~4_combout\ : std_logic;
SIGNAL \cmp_data_in[5]~input_o\ : std_logic;
SIGNAL \cmp_data_out~5_combout\ : std_logic;
SIGNAL \cmp_data_in[6]~input_o\ : std_logic;
SIGNAL \cmp_data_out~6_combout\ : std_logic;
SIGNAL \cmp_data_in[7]~input_o\ : std_logic;
SIGNAL \cmp_data_out~7_combout\ : std_logic;
SIGNAL \cmp_data_in[8]~input_o\ : std_logic;
SIGNAL \cmp_data_out~8_combout\ : std_logic;
SIGNAL \cmp_data_in[9]~input_o\ : std_logic;
SIGNAL \cmp_data_out~9_combout\ : std_logic;
SIGNAL \cmp_data_in[10]~input_o\ : std_logic;
SIGNAL \cmp_data_out~10_combout\ : std_logic;
SIGNAL \cmp_data_in[11]~input_o\ : std_logic;
SIGNAL \cmp_data_out~11_combout\ : std_logic;
SIGNAL \cmp_data_in[12]~input_o\ : std_logic;
SIGNAL \cmp_data_out~12_combout\ : std_logic;
SIGNAL \cmp_data_in[13]~input_o\ : std_logic;
SIGNAL \cmp_data_out~13_combout\ : std_logic;
SIGNAL \cmp_data_in[14]~input_o\ : std_logic;
SIGNAL \cmp_data_out~14_combout\ : std_logic;
SIGNAL \cmp_data_in[15]~input_o\ : std_logic;
SIGNAL \cmp_data_out~15_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_cmp_data_in <= cmp_data_in;
ww_cmp_enable <= cmp_enable;
cmp_data_out <= ww_cmp_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y23_N24
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

-- Location: IOOBUF_X60_Y22_N24
\cmp_data_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmp_data_out~0_combout\,
	devoe => ww_devoe,
	o => \cmp_data_out[0]~output_o\);

-- Location: IOOBUF_X60_Y15_N16
\cmp_data_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmp_data_out~1_combout\,
	devoe => ww_devoe,
	o => \cmp_data_out[1]~output_o\);

-- Location: IOOBUF_X60_Y23_N23
\cmp_data_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmp_data_out~2_combout\,
	devoe => ww_devoe,
	o => \cmp_data_out[2]~output_o\);

-- Location: IOOBUF_X53_Y0_N2
\cmp_data_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmp_data_out~3_combout\,
	devoe => ww_devoe,
	o => \cmp_data_out[3]~output_o\);

-- Location: IOOBUF_X60_Y14_N16
\cmp_data_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmp_data_out~4_combout\,
	devoe => ww_devoe,
	o => \cmp_data_out[4]~output_o\);

-- Location: IOOBUF_X19_Y21_N30
\cmp_data_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmp_data_out~5_combout\,
	devoe => ww_devoe,
	o => \cmp_data_out[5]~output_o\);

-- Location: IOOBUF_X60_Y13_N16
\cmp_data_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmp_data_out~6_combout\,
	devoe => ww_devoe,
	o => \cmp_data_out[6]~output_o\);

-- Location: IOOBUF_X60_Y8_N2
\cmp_data_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmp_data_out~7_combout\,
	devoe => ww_devoe,
	o => \cmp_data_out[7]~output_o\);

-- Location: IOOBUF_X60_Y10_N9
\cmp_data_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmp_data_out~8_combout\,
	devoe => ww_devoe,
	o => \cmp_data_out[8]~output_o\);

-- Location: IOOBUF_X60_Y10_N24
\cmp_data_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmp_data_out~9_combout\,
	devoe => ww_devoe,
	o => \cmp_data_out[9]~output_o\);

-- Location: IOOBUF_X60_Y23_N16
\cmp_data_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmp_data_out~10_combout\,
	devoe => ww_devoe,
	o => \cmp_data_out[10]~output_o\);

-- Location: IOOBUF_X60_Y15_N23
\cmp_data_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmp_data_out~11_combout\,
	devoe => ww_devoe,
	o => \cmp_data_out[11]~output_o\);

-- Location: IOOBUF_X60_Y10_N2
\cmp_data_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmp_data_out~12_combout\,
	devoe => ww_devoe,
	o => \cmp_data_out[12]~output_o\);

-- Location: IOOBUF_X60_Y22_N9
\cmp_data_out[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmp_data_out~13_combout\,
	devoe => ww_devoe,
	o => \cmp_data_out[13]~output_o\);

-- Location: IOOBUF_X60_Y31_N23
\cmp_data_out[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmp_data_out~14_combout\,
	devoe => ww_devoe,
	o => \cmp_data_out[14]~output_o\);

-- Location: IOOBUF_X60_Y31_N16
\cmp_data_out[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmp_data_out~15_combout\,
	devoe => ww_devoe,
	o => \cmp_data_out[15]~output_o\);

-- Location: IOIBUF_X25_Y27_N22
\cmp_enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_enable,
	o => \cmp_enable~input_o\);

-- Location: IOIBUF_X19_Y21_N22
\cmp_data_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_data_in(0),
	o => \cmp_data_in[0]~input_o\);

-- Location: LCCOMB_X42_Y19_N8
\cmp_data_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_data_out~0_combout\ = \cmp_enable~input_o\ $ (\cmp_data_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmp_enable~input_o\,
	datad => \cmp_data_in[0]~input_o\,
	combout => \cmp_data_out~0_combout\);

-- Location: IOIBUF_X60_Y2_N22
\cmp_data_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_data_in(1),
	o => \cmp_data_in[1]~input_o\);

-- Location: LCCOMB_X59_Y13_N16
\cmp_data_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_data_out~1_combout\ = \cmp_enable~input_o\ $ (\cmp_data_in[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_enable~input_o\,
	datac => \cmp_data_in[1]~input_o\,
	combout => \cmp_data_out~1_combout\);

-- Location: IOIBUF_X60_Y23_N8
\cmp_data_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_data_in(2),
	o => \cmp_data_in[2]~input_o\);

-- Location: LCCOMB_X59_Y23_N16
\cmp_data_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_data_out~2_combout\ = \cmp_enable~input_o\ $ (\cmp_data_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_enable~input_o\,
	datad => \cmp_data_in[2]~input_o\,
	combout => \cmp_data_out~2_combout\);

-- Location: IOIBUF_X60_Y2_N15
\cmp_data_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_data_in(3),
	o => \cmp_data_in[3]~input_o\);

-- Location: LCCOMB_X59_Y13_N26
\cmp_data_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_data_out~3_combout\ = \cmp_enable~input_o\ $ (\cmp_data_in[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_enable~input_o\,
	datad => \cmp_data_in[3]~input_o\,
	combout => \cmp_data_out~3_combout\);

-- Location: IOIBUF_X60_Y2_N8
\cmp_data_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_data_in(4),
	o => \cmp_data_in[4]~input_o\);

-- Location: LCCOMB_X59_Y13_N4
\cmp_data_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_data_out~4_combout\ = \cmp_enable~input_o\ $ (\cmp_data_in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_enable~input_o\,
	datac => \cmp_data_in[4]~input_o\,
	combout => \cmp_data_out~4_combout\);

-- Location: IOIBUF_X38_Y36_N15
\cmp_data_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_data_in(5),
	o => \cmp_data_in[5]~input_o\);

-- Location: LCCOMB_X37_Y21_N8
\cmp_data_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_data_out~5_combout\ = \cmp_enable~input_o\ $ (\cmp_data_in[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_enable~input_o\,
	datad => \cmp_data_in[5]~input_o\,
	combout => \cmp_data_out~5_combout\);

-- Location: IOIBUF_X60_Y8_N8
\cmp_data_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_data_in(6),
	o => \cmp_data_in[6]~input_o\);

-- Location: LCCOMB_X59_Y13_N14
\cmp_data_out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_data_out~6_combout\ = \cmp_enable~input_o\ $ (\cmp_data_in[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_enable~input_o\,
	datac => \cmp_data_in[6]~input_o\,
	combout => \cmp_data_out~6_combout\);

-- Location: IOIBUF_X60_Y2_N1
\cmp_data_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_data_in(7),
	o => \cmp_data_in[7]~input_o\);

-- Location: LCCOMB_X59_Y13_N0
\cmp_data_out~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_data_out~7_combout\ = \cmp_enable~input_o\ $ (\cmp_data_in[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_enable~input_o\,
	datac => \cmp_data_in[7]~input_o\,
	combout => \cmp_data_out~7_combout\);

-- Location: IOIBUF_X60_Y10_N15
\cmp_data_in[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_data_in(8),
	o => \cmp_data_in[8]~input_o\);

-- Location: LCCOMB_X59_Y13_N18
\cmp_data_out~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_data_out~8_combout\ = \cmp_enable~input_o\ $ (\cmp_data_in[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_enable~input_o\,
	datad => \cmp_data_in[8]~input_o\,
	combout => \cmp_data_out~8_combout\);

-- Location: IOIBUF_X60_Y8_N15
\cmp_data_in[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_data_in(9),
	o => \cmp_data_in[9]~input_o\);

-- Location: LCCOMB_X59_Y13_N20
\cmp_data_out~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_data_out~9_combout\ = \cmp_enable~input_o\ $ (\cmp_data_in[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_enable~input_o\,
	datac => \cmp_data_in[9]~input_o\,
	combout => \cmp_data_out~9_combout\);

-- Location: IOIBUF_X60_Y23_N1
\cmp_data_in[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_data_in(10),
	o => \cmp_data_in[10]~input_o\);

-- Location: LCCOMB_X59_Y23_N2
\cmp_data_out~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_data_out~10_combout\ = \cmp_enable~input_o\ $ (\cmp_data_in[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_enable~input_o\,
	datad => \cmp_data_in[10]~input_o\,
	combout => \cmp_data_out~10_combout\);

-- Location: IOIBUF_X60_Y14_N22
\cmp_data_in[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_data_in(11),
	o => \cmp_data_in[11]~input_o\);

-- Location: LCCOMB_X59_Y13_N22
\cmp_data_out~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_data_out~11_combout\ = \cmp_enable~input_o\ $ (\cmp_data_in[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_enable~input_o\,
	datad => \cmp_data_in[11]~input_o\,
	combout => \cmp_data_out~11_combout\);

-- Location: IOIBUF_X60_Y8_N22
\cmp_data_in[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_data_in(12),
	o => \cmp_data_in[12]~input_o\);

-- Location: LCCOMB_X59_Y13_N8
\cmp_data_out~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_data_out~12_combout\ = \cmp_enable~input_o\ $ (\cmp_data_in[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_enable~input_o\,
	datad => \cmp_data_in[12]~input_o\,
	combout => \cmp_data_out~12_combout\);

-- Location: IOIBUF_X60_Y22_N15
\cmp_data_in[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_data_in(13),
	o => \cmp_data_in[13]~input_o\);

-- Location: LCCOMB_X59_Y22_N16
\cmp_data_out~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_data_out~13_combout\ = \cmp_enable~input_o\ $ (\cmp_data_in[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmp_enable~input_o\,
	datad => \cmp_data_in[13]~input_o\,
	combout => \cmp_data_out~13_combout\);

-- Location: IOIBUF_X60_Y13_N22
\cmp_data_in[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_data_in(14),
	o => \cmp_data_in[14]~input_o\);

-- Location: LCCOMB_X59_Y13_N10
\cmp_data_out~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_data_out~14_combout\ = \cmp_enable~input_o\ $ (\cmp_data_in[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_enable~input_o\,
	datad => \cmp_data_in[14]~input_o\,
	combout => \cmp_data_out~14_combout\);

-- Location: IOIBUF_X58_Y36_N1
\cmp_data_in[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_data_in(15),
	o => \cmp_data_in[15]~input_o\);

-- Location: LCCOMB_X59_Y32_N8
\cmp_data_out~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_data_out~15_combout\ = \cmp_data_in[15]~input_o\ $ (\cmp_enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_data_in[15]~input_o\,
	datac => \cmp_enable~input_o\,
	combout => \cmp_data_out~15_combout\);

-- Location: UNVM_X0_Y22_N40
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
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y34_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X25_Y33_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_cmp_data_out(0) <= \cmp_data_out[0]~output_o\;

ww_cmp_data_out(1) <= \cmp_data_out[1]~output_o\;

ww_cmp_data_out(2) <= \cmp_data_out[2]~output_o\;

ww_cmp_data_out(3) <= \cmp_data_out[3]~output_o\;

ww_cmp_data_out(4) <= \cmp_data_out[4]~output_o\;

ww_cmp_data_out(5) <= \cmp_data_out[5]~output_o\;

ww_cmp_data_out(6) <= \cmp_data_out[6]~output_o\;

ww_cmp_data_out(7) <= \cmp_data_out[7]~output_o\;

ww_cmp_data_out(8) <= \cmp_data_out[8]~output_o\;

ww_cmp_data_out(9) <= \cmp_data_out[9]~output_o\;

ww_cmp_data_out(10) <= \cmp_data_out[10]~output_o\;

ww_cmp_data_out(11) <= \cmp_data_out[11]~output_o\;

ww_cmp_data_out(12) <= \cmp_data_out[12]~output_o\;

ww_cmp_data_out(13) <= \cmp_data_out[13]~output_o\;

ww_cmp_data_out(14) <= \cmp_data_out[14]~output_o\;

ww_cmp_data_out(15) <= \cmp_data_out[15]~output_o\;
END structure;


