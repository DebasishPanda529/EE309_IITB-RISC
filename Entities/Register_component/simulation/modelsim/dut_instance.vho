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

-- DATE "04/30/2023 11:31:35"

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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	register_component IS
    PORT (
	reg_in : IN std_logic_vector(15 DOWNTO 0);
	CLK : IN std_logic;
	RST : IN std_logic;
	write_enable : IN std_logic;
	reg_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END register_component;

-- Design Ports Information
-- reg_out[0]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[1]	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[2]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[3]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[4]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[5]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[6]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[7]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[8]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[9]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[10]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[11]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[12]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[13]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[14]	=>  Location: PIN_48,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[15]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in[0]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_enable	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in[1]	=>  Location: PIN_61,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in[2]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in[4]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in[5]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in[6]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in[7]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in[8]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in[9]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in[10]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in[11]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in[12]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in[13]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in[14]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in[15]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF register_component IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reg_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_write_enable : std_logic;
SIGNAL ww_reg_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \write_enable~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \reg_out[0]~output_o\ : std_logic;
SIGNAL \reg_out[1]~output_o\ : std_logic;
SIGNAL \reg_out[2]~output_o\ : std_logic;
SIGNAL \reg_out[3]~output_o\ : std_logic;
SIGNAL \reg_out[4]~output_o\ : std_logic;
SIGNAL \reg_out[5]~output_o\ : std_logic;
SIGNAL \reg_out[6]~output_o\ : std_logic;
SIGNAL \reg_out[7]~output_o\ : std_logic;
SIGNAL \reg_out[8]~output_o\ : std_logic;
SIGNAL \reg_out[9]~output_o\ : std_logic;
SIGNAL \reg_out[10]~output_o\ : std_logic;
SIGNAL \reg_out[11]~output_o\ : std_logic;
SIGNAL \reg_out[12]~output_o\ : std_logic;
SIGNAL \reg_out[13]~output_o\ : std_logic;
SIGNAL \reg_out[14]~output_o\ : std_logic;
SIGNAL \reg_out[15]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \reg_in[0]~input_o\ : std_logic;
SIGNAL \write_enable~input_o\ : std_logic;
SIGNAL \write_enable~inputclkctrl_outclk\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \reg_out[0]~reg0_q\ : std_logic;
SIGNAL \reg_in[1]~input_o\ : std_logic;
SIGNAL \reg_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \reg_out[1]~reg0_q\ : std_logic;
SIGNAL \reg_in[2]~input_o\ : std_logic;
SIGNAL \reg_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \reg_out[2]~reg0_q\ : std_logic;
SIGNAL \reg_in[3]~input_o\ : std_logic;
SIGNAL \reg_out[3]~reg0_q\ : std_logic;
SIGNAL \reg_in[4]~input_o\ : std_logic;
SIGNAL \reg_out[4]~reg0_q\ : std_logic;
SIGNAL \reg_in[5]~input_o\ : std_logic;
SIGNAL \reg_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \reg_out[5]~reg0_q\ : std_logic;
SIGNAL \reg_in[6]~input_o\ : std_logic;
SIGNAL \reg_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \reg_out[6]~reg0_q\ : std_logic;
SIGNAL \reg_in[7]~input_o\ : std_logic;
SIGNAL \reg_out[7]~reg0_q\ : std_logic;
SIGNAL \reg_in[8]~input_o\ : std_logic;
SIGNAL \reg_out[8]~reg0feeder_combout\ : std_logic;
SIGNAL \reg_out[8]~reg0_q\ : std_logic;
SIGNAL \reg_in[9]~input_o\ : std_logic;
SIGNAL \reg_out[9]~reg0_q\ : std_logic;
SIGNAL \reg_in[10]~input_o\ : std_logic;
SIGNAL \reg_out[10]~reg0_q\ : std_logic;
SIGNAL \reg_in[11]~input_o\ : std_logic;
SIGNAL \reg_out[11]~reg0feeder_combout\ : std_logic;
SIGNAL \reg_out[11]~reg0_q\ : std_logic;
SIGNAL \reg_in[12]~input_o\ : std_logic;
SIGNAL \reg_out[12]~reg0_q\ : std_logic;
SIGNAL \reg_in[13]~input_o\ : std_logic;
SIGNAL \reg_out[13]~reg0_q\ : std_logic;
SIGNAL \reg_in[14]~input_o\ : std_logic;
SIGNAL \reg_out[14]~reg0_q\ : std_logic;
SIGNAL \reg_in[15]~input_o\ : std_logic;
SIGNAL \reg_out[15]~reg0feeder_combout\ : std_logic;
SIGNAL \reg_out[15]~reg0_q\ : std_logic;
SIGNAL reg_data : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reg_in <= reg_in;
ww_CLK <= CLK;
ww_RST <= RST;
ww_write_enable <= write_enable;
reg_out <= ww_reg_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\write_enable~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \write_enable~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_CLK~inputclkctrl_outclk\ <= NOT \CLK~inputclkctrl_outclk\;
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
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

-- Location: IOOBUF_X60_Y2_N23
\reg_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[0]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\reg_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[1]~output_o\);

-- Location: IOOBUF_X12_Y21_N2
\reg_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[2]~output_o\);

-- Location: IOOBUF_X6_Y0_N30
\reg_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[3]~output_o\);

-- Location: IOOBUF_X60_Y2_N2
\reg_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[4]~output_o\);

-- Location: IOOBUF_X25_Y29_N23
\reg_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[5]~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\reg_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[6]~output_o\);

-- Location: IOOBUF_X60_Y15_N16
\reg_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[7]~output_o\);

-- Location: IOOBUF_X8_Y0_N16
\reg_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[8]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[8]~output_o\);

-- Location: IOOBUF_X28_Y36_N9
\reg_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[9]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[9]~output_o\);

-- Location: IOOBUF_X8_Y21_N16
\reg_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[10]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[10]~output_o\);

-- Location: IOOBUF_X25_Y26_N16
\reg_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[11]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[11]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\reg_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[12]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[12]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\reg_out[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[13]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[13]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\reg_out[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[14]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[14]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\reg_out[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[15]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[15]~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: IOIBUF_X60_Y2_N8
\reg_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in(0),
	o => \reg_in[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\write_enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_enable,
	o => \write_enable~input_o\);

-- Location: CLKCTRL_G4
\write_enable~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \write_enable~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \write_enable~inputclkctrl_outclk\);

-- Location: LCCOMB_X58_Y2_N14
\reg_data[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_data(0) = (GLOBAL(\write_enable~inputclkctrl_outclk\) & (\reg_in[0]~input_o\)) # (!GLOBAL(\write_enable~inputclkctrl_outclk\) & ((reg_data(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in[0]~input_o\,
	datac => reg_data(0),
	datad => \write_enable~inputclkctrl_outclk\,
	combout => reg_data(0));

-- Location: IOIBUF_X0_Y13_N15
\RST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G2
\RST~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X58_Y2_N29
\reg_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => reg_data(0),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[0]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N29
\reg_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in(1),
	o => \reg_in[1]~input_o\);

-- Location: LCCOMB_X36_Y1_N30
\reg_data[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_data(1) = (GLOBAL(\write_enable~inputclkctrl_outclk\) & (\reg_in[1]~input_o\)) # (!GLOBAL(\write_enable~inputclkctrl_outclk\) & ((reg_data(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in[1]~input_o\,
	datac => reg_data(1),
	datad => \write_enable~inputclkctrl_outclk\,
	combout => reg_data(1));

-- Location: LCCOMB_X36_Y1_N28
\reg_out[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_out[1]~reg0feeder_combout\ = reg_data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_data(1),
	combout => \reg_out[1]~reg0feeder_combout\);

-- Location: FF_X36_Y1_N29
\reg_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \reg_out[1]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[1]~reg0_q\);

-- Location: IOIBUF_X14_Y21_N1
\reg_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in(2),
	o => \reg_in[2]~input_o\);

-- Location: LCCOMB_X13_Y20_N30
\reg_data[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_data(2) = (GLOBAL(\write_enable~inputclkctrl_outclk\) & (\reg_in[2]~input_o\)) # (!GLOBAL(\write_enable~inputclkctrl_outclk\) & ((reg_data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in[2]~input_o\,
	datac => reg_data(2),
	datad => \write_enable~inputclkctrl_outclk\,
	combout => reg_data(2));

-- Location: LCCOMB_X13_Y20_N28
\reg_out[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_out[2]~reg0feeder_combout\ = reg_data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_data(2),
	combout => \reg_out[2]~reg0feeder_combout\);

-- Location: FF_X13_Y20_N29
\reg_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \reg_out[2]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[2]~reg0_q\);

-- Location: IOIBUF_X6_Y0_N1
\reg_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in(3),
	o => \reg_in[3]~input_o\);

-- Location: LCCOMB_X6_Y1_N14
\reg_data[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_data(3) = (GLOBAL(\write_enable~inputclkctrl_outclk\) & (\reg_in[3]~input_o\)) # (!GLOBAL(\write_enable~inputclkctrl_outclk\) & ((reg_data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in[3]~input_o\,
	datac => reg_data(3),
	datad => \write_enable~inputclkctrl_outclk\,
	combout => reg_data(3));

-- Location: FF_X6_Y1_N13
\reg_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => reg_data(3),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[3]~reg0_q\);

-- Location: IOIBUF_X60_Y2_N15
\reg_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in(4),
	o => \reg_in[4]~input_o\);

-- Location: LCCOMB_X59_Y2_N14
\reg_data[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_data(4) = (GLOBAL(\write_enable~inputclkctrl_outclk\) & (\reg_in[4]~input_o\)) # (!GLOBAL(\write_enable~inputclkctrl_outclk\) & ((reg_data(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in[4]~input_o\,
	datac => reg_data(4),
	datad => \write_enable~inputclkctrl_outclk\,
	combout => reg_data(4));

-- Location: FF_X59_Y2_N17
\reg_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => reg_data(4),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[4]~reg0_q\);

-- Location: IOIBUF_X25_Y29_N15
\reg_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in(5),
	o => \reg_in[5]~input_o\);

-- Location: LCCOMB_X26_Y33_N30
\reg_data[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_data(5) = (GLOBAL(\write_enable~inputclkctrl_outclk\) & (\reg_in[5]~input_o\)) # (!GLOBAL(\write_enable~inputclkctrl_outclk\) & ((reg_data(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in[5]~input_o\,
	datac => reg_data(5),
	datad => \write_enable~inputclkctrl_outclk\,
	combout => reg_data(5));

-- Location: LCCOMB_X26_Y33_N28
\reg_out[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_out[5]~reg0feeder_combout\ = reg_data(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_data(5),
	combout => \reg_out[5]~reg0feeder_combout\);

-- Location: FF_X26_Y33_N29
\reg_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \reg_out[5]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[5]~reg0_q\);

-- Location: IOIBUF_X12_Y21_N8
\reg_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in(6),
	o => \reg_in[6]~input_o\);

-- Location: LCCOMB_X11_Y20_N30
\reg_data[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_data(6) = (GLOBAL(\write_enable~inputclkctrl_outclk\) & (\reg_in[6]~input_o\)) # (!GLOBAL(\write_enable~inputclkctrl_outclk\) & ((reg_data(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in[6]~input_o\,
	datac => reg_data(6),
	datad => \write_enable~inputclkctrl_outclk\,
	combout => reg_data(6));

-- Location: LCCOMB_X11_Y20_N28
\reg_out[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_out[6]~reg0feeder_combout\ = reg_data(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_data(6),
	combout => \reg_out[6]~reg0feeder_combout\);

-- Location: FF_X11_Y20_N29
\reg_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \reg_out[6]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[6]~reg0_q\);

-- Location: IOIBUF_X60_Y15_N22
\reg_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in(7),
	o => \reg_in[7]~input_o\);

-- Location: LCCOMB_X59_Y15_N14
\reg_data[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_data(7) = (GLOBAL(\write_enable~inputclkctrl_outclk\) & (\reg_in[7]~input_o\)) # (!GLOBAL(\write_enable~inputclkctrl_outclk\) & ((reg_data(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in[7]~input_o\,
	datac => reg_data(7),
	datad => \write_enable~inputclkctrl_outclk\,
	combout => reg_data(7));

-- Location: FF_X59_Y15_N17
\reg_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => reg_data(7),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[7]~reg0_q\);

-- Location: IOIBUF_X8_Y0_N8
\reg_in[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in(8),
	o => \reg_in[8]~input_o\);

-- Location: LCCOMB_X8_Y1_N30
\reg_data[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_data(8) = (GLOBAL(\write_enable~inputclkctrl_outclk\) & (\reg_in[8]~input_o\)) # (!GLOBAL(\write_enable~inputclkctrl_outclk\) & ((reg_data(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in[8]~input_o\,
	datac => reg_data(8),
	datad => \write_enable~inputclkctrl_outclk\,
	combout => reg_data(8));

-- Location: LCCOMB_X8_Y1_N28
\reg_out[8]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_out[8]~reg0feeder_combout\ = reg_data(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_data(8),
	combout => \reg_out[8]~reg0feeder_combout\);

-- Location: FF_X8_Y1_N29
\reg_out[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \reg_out[8]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[8]~reg0_q\);

-- Location: IOIBUF_X28_Y36_N1
\reg_in[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in(9),
	o => \reg_in[9]~input_o\);

-- Location: LCCOMB_X28_Y33_N14
\reg_data[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_data(9) = (GLOBAL(\write_enable~inputclkctrl_outclk\) & (\reg_in[9]~input_o\)) # (!GLOBAL(\write_enable~inputclkctrl_outclk\) & ((reg_data(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in[9]~input_o\,
	datac => reg_data(9),
	datad => \write_enable~inputclkctrl_outclk\,
	combout => reg_data(9));

-- Location: FF_X28_Y33_N5
\reg_out[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => reg_data(9),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[9]~reg0_q\);

-- Location: IOIBUF_X8_Y21_N22
\reg_in[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in(10),
	o => \reg_in[10]~input_o\);

-- Location: LCCOMB_X8_Y20_N14
\reg_data[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_data(10) = (GLOBAL(\write_enable~inputclkctrl_outclk\) & (\reg_in[10]~input_o\)) # (!GLOBAL(\write_enable~inputclkctrl_outclk\) & ((reg_data(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in[10]~input_o\,
	datac => reg_data(10),
	datad => \write_enable~inputclkctrl_outclk\,
	combout => reg_data(10));

-- Location: FF_X8_Y20_N25
\reg_out[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => reg_data(10),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[10]~reg0_q\);

-- Location: IOIBUF_X25_Y26_N22
\reg_in[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in(11),
	o => \reg_in[11]~input_o\);

-- Location: LCCOMB_X26_Y26_N30
\reg_data[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_data(11) = (GLOBAL(\write_enable~inputclkctrl_outclk\) & (\reg_in[11]~input_o\)) # (!GLOBAL(\write_enable~inputclkctrl_outclk\) & ((reg_data(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in[11]~input_o\,
	datac => reg_data(11),
	datad => \write_enable~inputclkctrl_outclk\,
	combout => reg_data(11));

-- Location: LCCOMB_X26_Y26_N28
\reg_out[11]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_out[11]~reg0feeder_combout\ = reg_data(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_data(11),
	combout => \reg_out[11]~reg0feeder_combout\);

-- Location: FF_X26_Y26_N29
\reg_out[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \reg_out[11]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[11]~reg0_q\);

-- Location: IOIBUF_X6_Y0_N8
\reg_in[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in(12),
	o => \reg_in[12]~input_o\);

-- Location: LCCOMB_X4_Y1_N14
\reg_data[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_data(12) = (GLOBAL(\write_enable~inputclkctrl_outclk\) & (\reg_in[12]~input_o\)) # (!GLOBAL(\write_enable~inputclkctrl_outclk\) & ((reg_data(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in[12]~input_o\,
	datac => reg_data(12),
	datad => \write_enable~inputclkctrl_outclk\,
	combout => reg_data(12));

-- Location: FF_X4_Y1_N29
\reg_out[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => reg_data(12),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[12]~reg0_q\);

-- Location: IOIBUF_X21_Y0_N29
\reg_in[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in(13),
	o => \reg_in[13]~input_o\);

-- Location: LCCOMB_X21_Y1_N14
\reg_data[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_data(13) = (GLOBAL(\write_enable~inputclkctrl_outclk\) & (\reg_in[13]~input_o\)) # (!GLOBAL(\write_enable~inputclkctrl_outclk\) & ((reg_data(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in[13]~input_o\,
	datac => reg_data(13),
	datad => \write_enable~inputclkctrl_outclk\,
	combout => reg_data(13));

-- Location: FF_X21_Y1_N29
\reg_out[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => reg_data(13),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[13]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N8
\reg_in[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in(14),
	o => \reg_in[14]~input_o\);

-- Location: LCCOMB_X16_Y1_N14
\reg_data[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_data(14) = (GLOBAL(\write_enable~inputclkctrl_outclk\) & (\reg_in[14]~input_o\)) # (!GLOBAL(\write_enable~inputclkctrl_outclk\) & ((reg_data(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in[14]~input_o\,
	datac => reg_data(14),
	datad => \write_enable~inputclkctrl_outclk\,
	combout => reg_data(14));

-- Location: FF_X16_Y1_N13
\reg_out[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => reg_data(14),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[14]~reg0_q\);

-- Location: IOIBUF_X40_Y0_N22
\reg_in[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in(15),
	o => \reg_in[15]~input_o\);

-- Location: LCCOMB_X40_Y1_N30
\reg_data[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reg_data(15) = (GLOBAL(\write_enable~inputclkctrl_outclk\) & (\reg_in[15]~input_o\)) # (!GLOBAL(\write_enable~inputclkctrl_outclk\) & ((reg_data(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in[15]~input_o\,
	datac => reg_data(15),
	datad => \write_enable~inputclkctrl_outclk\,
	combout => reg_data(15));

-- Location: LCCOMB_X40_Y1_N24
\reg_out[15]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_out[15]~reg0feeder_combout\ = reg_data(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_data(15),
	combout => \reg_out[15]~reg0feeder_combout\);

-- Location: FF_X40_Y1_N25
\reg_out[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \reg_out[15]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[15]~reg0_q\);

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

ww_reg_out(0) <= \reg_out[0]~output_o\;

ww_reg_out(1) <= \reg_out[1]~output_o\;

ww_reg_out(2) <= \reg_out[2]~output_o\;

ww_reg_out(3) <= \reg_out[3]~output_o\;

ww_reg_out(4) <= \reg_out[4]~output_o\;

ww_reg_out(5) <= \reg_out[5]~output_o\;

ww_reg_out(6) <= \reg_out[6]~output_o\;

ww_reg_out(7) <= \reg_out[7]~output_o\;

ww_reg_out(8) <= \reg_out[8]~output_o\;

ww_reg_out(9) <= \reg_out[9]~output_o\;

ww_reg_out(10) <= \reg_out[10]~output_o\;

ww_reg_out(11) <= \reg_out[11]~output_o\;

ww_reg_out(12) <= \reg_out[12]~output_o\;

ww_reg_out(13) <= \reg_out[13]~output_o\;

ww_reg_out(14) <= \reg_out[14]~output_o\;

ww_reg_out(15) <= \reg_out[15]~output_o\;
END structure;


