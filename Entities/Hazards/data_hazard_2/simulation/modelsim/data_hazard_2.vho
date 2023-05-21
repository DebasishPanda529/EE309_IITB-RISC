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

-- DATE "05/06/2023 19:45:28"

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

ENTITY 	data_hazard_2 IS
    PORT (
	instr_EX : IN std_logic_vector(15 DOWNTO 0);
	instr_MA : IN std_logic_vector(15 DOWNTO 0);
	mux4_control_1 : OUT std_logic;
	mux5_control_1 : OUT std_logic
	);
END data_hazard_2;

-- Design Ports Information
-- instr_EX[0]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_EX[1]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_EX[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_EX[6]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_EX[7]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_EX[8]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA[0]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA[1]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA[2]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA[3]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA[4]	=>  Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA[5]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux4_control_1	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux5_control_1	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_EX[14]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_EX[12]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_EX[15]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA[14]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA[15]	=>  Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA[12]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA[13]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_EX[13]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_EX[3]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_EX[4]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA[10]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA[9]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_EX[5]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA[11]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_EX[10]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_EX[9]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_EX[11]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA[7]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA[6]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA[8]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF data_hazard_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_instr_EX : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_instr_MA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_mux4_control_1 : std_logic;
SIGNAL ww_mux5_control_1 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \instr_EX[0]~input_o\ : std_logic;
SIGNAL \instr_EX[1]~input_o\ : std_logic;
SIGNAL \instr_EX[2]~input_o\ : std_logic;
SIGNAL \instr_EX[6]~input_o\ : std_logic;
SIGNAL \instr_EX[7]~input_o\ : std_logic;
SIGNAL \instr_EX[8]~input_o\ : std_logic;
SIGNAL \instr_MA[0]~input_o\ : std_logic;
SIGNAL \instr_MA[1]~input_o\ : std_logic;
SIGNAL \instr_MA[2]~input_o\ : std_logic;
SIGNAL \instr_MA[3]~input_o\ : std_logic;
SIGNAL \instr_MA[4]~input_o\ : std_logic;
SIGNAL \instr_MA[5]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \mux4_control_1~output_o\ : std_logic;
SIGNAL \mux5_control_1~output_o\ : std_logic;
SIGNAL \instr_MA[11]~input_o\ : std_logic;
SIGNAL \instr_EX[11]~input_o\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \instr_EX[12]~input_o\ : std_logic;
SIGNAL \instr_EX[14]~input_o\ : std_logic;
SIGNAL \instr_MA[15]~input_o\ : std_logic;
SIGNAL \instr_MA[14]~input_o\ : std_logic;
SIGNAL \instr_EX[15]~input_o\ : std_logic;
SIGNAL \hazard_proc~0_combout\ : std_logic;
SIGNAL \instr_MA[12]~input_o\ : std_logic;
SIGNAL \instr_MA[13]~input_o\ : std_logic;
SIGNAL \instr_EX[13]~input_o\ : std_logic;
SIGNAL \hazard_proc~1_combout\ : std_logic;
SIGNAL \mux4_control_1~2_combout\ : std_logic;
SIGNAL \instr_MA[9]~input_o\ : std_logic;
SIGNAL \instr_MA[10]~input_o\ : std_logic;
SIGNAL \instr_EX[9]~input_o\ : std_logic;
SIGNAL \instr_EX[10]~input_o\ : std_logic;
SIGNAL \mux4_control_1~3_combout\ : std_logic;
SIGNAL \hazard_proc~2_combout\ : std_logic;
SIGNAL \hazard_proc~3_combout\ : std_logic;
SIGNAL \instr_EX[5]~input_o\ : std_logic;
SIGNAL \instr_EX[4]~input_o\ : std_logic;
SIGNAL \instr_EX[3]~input_o\ : std_logic;
SIGNAL \mux4_control_1~0_combout\ : std_logic;
SIGNAL \mux4_control_1~1_combout\ : std_logic;
SIGNAL \mux4_control_1~4_combout\ : std_logic;
SIGNAL \instr_MA[8]~input_o\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \instr_MA[7]~input_o\ : std_logic;
SIGNAL \instr_MA[6]~input_o\ : std_logic;
SIGNAL \mux5_control_1~2_combout\ : std_logic;
SIGNAL \mux5_control_1~0_combout\ : std_logic;
SIGNAL \mux5_control_1~1_combout\ : std_logic;
SIGNAL \mux5_control_1~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_instr_EX <= instr_EX;
ww_instr_MA <= instr_MA;
mux4_control_1 <= ww_mux4_control_1;
mux5_control_1 <= ww_mux5_control_1;
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

-- Location: IOOBUF_X25_Y27_N23
\mux4_control_1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4_control_1~4_combout\,
	devoe => ww_devoe,
	o => \mux4_control_1~output_o\);

-- Location: IOOBUF_X25_Y26_N23
\mux5_control_1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux5_control_1~3_combout\,
	devoe => ww_devoe,
	o => \mux5_control_1~output_o\);

-- Location: IOIBUF_X12_Y21_N29
\instr_MA[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA(11),
	o => \instr_MA[11]~input_o\);

-- Location: IOIBUF_X14_Y21_N1
\instr_EX[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_EX(11),
	o => \instr_EX[11]~input_o\);

-- Location: LCCOMB_X13_Y20_N6
\Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = \instr_MA[11]~input_o\ $ (\instr_EX[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_MA[11]~input_o\,
	datad => \instr_EX[11]~input_o\,
	combout => \Equal8~0_combout\);

-- Location: IOIBUF_X14_Y21_N29
\instr_EX[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_EX(12),
	o => \instr_EX[12]~input_o\);

-- Location: IOIBUF_X12_Y21_N1
\instr_EX[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_EX(14),
	o => \instr_EX[14]~input_o\);

-- Location: IOIBUF_X0_Y19_N22
\instr_MA[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA(15),
	o => \instr_MA[15]~input_o\);

-- Location: IOIBUF_X8_Y21_N15
\instr_MA[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA(14),
	o => \instr_MA[14]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\instr_EX[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_EX(15),
	o => \instr_EX[15]~input_o\);

-- Location: LCCOMB_X9_Y20_N0
\hazard_proc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hazard_proc~0_combout\ = (!\instr_MA[15]~input_o\ & (!\instr_MA[14]~input_o\ & !\instr_EX[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_MA[15]~input_o\,
	datac => \instr_MA[14]~input_o\,
	datad => \instr_EX[15]~input_o\,
	combout => \hazard_proc~0_combout\);

-- Location: IOIBUF_X10_Y21_N1
\instr_MA[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA(12),
	o => \instr_MA[12]~input_o\);

-- Location: IOIBUF_X25_Y28_N22
\instr_MA[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA(13),
	o => \instr_MA[13]~input_o\);

-- Location: IOIBUF_X14_Y21_N22
\instr_EX[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_EX(13),
	o => \instr_EX[13]~input_o\);

-- Location: LCCOMB_X13_Y20_N0
\hazard_proc~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hazard_proc~1_combout\ = (\hazard_proc~0_combout\ & (!\instr_EX[13]~input_o\ & ((!\instr_MA[13]~input_o\) # (!\instr_MA[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazard_proc~0_combout\,
	datab => \instr_MA[12]~input_o\,
	datac => \instr_MA[13]~input_o\,
	datad => \instr_EX[13]~input_o\,
	combout => \hazard_proc~1_combout\);

-- Location: LCCOMB_X13_Y20_N2
\mux4_control_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux4_control_1~2_combout\ = (!\instr_EX[12]~input_o\ & (\instr_EX[14]~input_o\ & \hazard_proc~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_EX[12]~input_o\,
	datac => \instr_EX[14]~input_o\,
	datad => \hazard_proc~1_combout\,
	combout => \mux4_control_1~2_combout\);

-- Location: IOIBUF_X25_Y29_N22
\instr_MA[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA(9),
	o => \instr_MA[9]~input_o\);

-- Location: IOIBUF_X25_Y26_N15
\instr_MA[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA(10),
	o => \instr_MA[10]~input_o\);

-- Location: IOIBUF_X19_Y21_N22
\instr_EX[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_EX(9),
	o => \instr_EX[9]~input_o\);

-- Location: IOIBUF_X25_Y28_N15
\instr_EX[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_EX(10),
	o => \instr_EX[10]~input_o\);

-- Location: LCCOMB_X13_Y20_N20
\mux4_control_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux4_control_1~3_combout\ = (\instr_MA[9]~input_o\ & (\instr_EX[9]~input_o\ & (\instr_MA[10]~input_o\ $ (!\instr_EX[10]~input_o\)))) # (!\instr_MA[9]~input_o\ & (!\instr_EX[9]~input_o\ & (\instr_MA[10]~input_o\ $ (!\instr_EX[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_MA[9]~input_o\,
	datab => \instr_MA[10]~input_o\,
	datac => \instr_EX[9]~input_o\,
	datad => \instr_EX[10]~input_o\,
	combout => \mux4_control_1~3_combout\);

-- Location: LCCOMB_X13_Y20_N18
\hazard_proc~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hazard_proc~2_combout\ = (\hazard_proc~0_combout\ & (\instr_MA[12]~input_o\ & (!\instr_MA[13]~input_o\ & \instr_EX[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazard_proc~0_combout\,
	datab => \instr_MA[12]~input_o\,
	datac => \instr_MA[13]~input_o\,
	datad => \instr_EX[13]~input_o\,
	combout => \hazard_proc~2_combout\);

-- Location: LCCOMB_X13_Y20_N12
\hazard_proc~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hazard_proc~3_combout\ = (!\instr_EX[14]~input_o\ & ((\instr_EX[12]~input_o\ & ((\hazard_proc~1_combout\))) # (!\instr_EX[12]~input_o\ & (\hazard_proc~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_EX[12]~input_o\,
	datab => \hazard_proc~2_combout\,
	datac => \instr_EX[14]~input_o\,
	datad => \hazard_proc~1_combout\,
	combout => \hazard_proc~3_combout\);

-- Location: IOIBUF_X14_Y0_N8
\instr_EX[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_EX(5),
	o => \instr_EX[5]~input_o\);

-- Location: IOIBUF_X25_Y27_N15
\instr_EX[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_EX(4),
	o => \instr_EX[4]~input_o\);

-- Location: IOIBUF_X8_Y21_N22
\instr_EX[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_EX(3),
	o => \instr_EX[3]~input_o\);

-- Location: LCCOMB_X13_Y20_N22
\mux4_control_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux4_control_1~0_combout\ = (\instr_MA[9]~input_o\ & (\instr_EX[3]~input_o\ & (\instr_EX[4]~input_o\ $ (!\instr_MA[10]~input_o\)))) # (!\instr_MA[9]~input_o\ & (!\instr_EX[3]~input_o\ & (\instr_EX[4]~input_o\ $ (!\instr_MA[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_MA[9]~input_o\,
	datab => \instr_EX[4]~input_o\,
	datac => \instr_MA[10]~input_o\,
	datad => \instr_EX[3]~input_o\,
	combout => \mux4_control_1~0_combout\);

-- Location: LCCOMB_X13_Y20_N16
\mux4_control_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux4_control_1~1_combout\ = (\hazard_proc~3_combout\ & (\mux4_control_1~0_combout\ & (\instr_EX[5]~input_o\ $ (!\instr_MA[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazard_proc~3_combout\,
	datab => \instr_EX[5]~input_o\,
	datac => \mux4_control_1~0_combout\,
	datad => \instr_MA[11]~input_o\,
	combout => \mux4_control_1~1_combout\);

-- Location: LCCOMB_X13_Y20_N24
\mux4_control_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux4_control_1~4_combout\ = (\mux4_control_1~1_combout\) # ((!\Equal8~0_combout\ & (\mux4_control_1~2_combout\ & \mux4_control_1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \mux4_control_1~2_combout\,
	datac => \mux4_control_1~3_combout\,
	datad => \mux4_control_1~1_combout\,
	combout => \mux4_control_1~4_combout\);

-- Location: IOIBUF_X16_Y21_N15
\instr_MA[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA(8),
	o => \instr_MA[8]~input_o\);

-- Location: LCCOMB_X13_Y20_N8
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = \instr_MA[8]~input_o\ $ (\instr_EX[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_MA[8]~input_o\,
	datac => \instr_EX[5]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: IOIBUF_X12_Y21_N8
\instr_MA[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA(7),
	o => \instr_MA[7]~input_o\);

-- Location: IOIBUF_X19_Y21_N29
\instr_MA[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA(6),
	o => \instr_MA[6]~input_o\);

-- Location: LCCOMB_X13_Y20_N30
\mux5_control_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux5_control_1~2_combout\ = (\instr_EX[3]~input_o\ & (\instr_MA[6]~input_o\ & (\instr_MA[7]~input_o\ $ (!\instr_EX[4]~input_o\)))) # (!\instr_EX[3]~input_o\ & (!\instr_MA[6]~input_o\ & (\instr_MA[7]~input_o\ $ (!\instr_EX[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_EX[3]~input_o\,
	datab => \instr_MA[7]~input_o\,
	datac => \instr_EX[4]~input_o\,
	datad => \instr_MA[6]~input_o\,
	combout => \mux5_control_1~2_combout\);

-- Location: LCCOMB_X13_Y20_N10
\mux5_control_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux5_control_1~0_combout\ = (\instr_EX[10]~input_o\ & (\instr_MA[7]~input_o\ & (\instr_EX[9]~input_o\ $ (!\instr_MA[6]~input_o\)))) # (!\instr_EX[10]~input_o\ & (!\instr_MA[7]~input_o\ & (\instr_EX[9]~input_o\ $ (!\instr_MA[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_EX[10]~input_o\,
	datab => \instr_MA[7]~input_o\,
	datac => \instr_EX[9]~input_o\,
	datad => \instr_MA[6]~input_o\,
	combout => \mux5_control_1~0_combout\);

-- Location: LCCOMB_X13_Y20_N28
\mux5_control_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux5_control_1~1_combout\ = (\mux5_control_1~0_combout\ & (\mux4_control_1~2_combout\ & (\instr_EX[11]~input_o\ $ (!\instr_MA[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5_control_1~0_combout\,
	datab => \instr_EX[11]~input_o\,
	datac => \instr_MA[8]~input_o\,
	datad => \mux4_control_1~2_combout\,
	combout => \mux5_control_1~1_combout\);

-- Location: LCCOMB_X13_Y20_N26
\mux5_control_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux5_control_1~3_combout\ = (\hazard_proc~3_combout\ & (!\Equal3~0_combout\ & (\mux5_control_1~2_combout\))) # (!\hazard_proc~3_combout\ & (((\mux5_control_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazard_proc~3_combout\,
	datab => \Equal3~0_combout\,
	datac => \mux5_control_1~2_combout\,
	datad => \mux5_control_1~1_combout\,
	combout => \mux5_control_1~3_combout\);

-- Location: IOIBUF_X60_Y10_N15
\instr_EX[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_EX(0),
	o => \instr_EX[0]~input_o\);

-- Location: IOIBUF_X28_Y36_N8
\instr_EX[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_EX(1),
	o => \instr_EX[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\instr_EX[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_EX(2),
	o => \instr_EX[2]~input_o\);

-- Location: IOIBUF_X60_Y14_N15
\instr_EX[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_EX(6),
	o => \instr_EX[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\instr_EX[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_EX(7),
	o => \instr_EX[7]~input_o\);

-- Location: IOIBUF_X38_Y36_N15
\instr_EX[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_EX(8),
	o => \instr_EX[8]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\instr_MA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA(0),
	o => \instr_MA[0]~input_o\);

-- Location: IOIBUF_X60_Y10_N23
\instr_MA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA(1),
	o => \instr_MA[1]~input_o\);

-- Location: IOIBUF_X60_Y8_N1
\instr_MA[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA(2),
	o => \instr_MA[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\instr_MA[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA(3),
	o => \instr_MA[3]~input_o\);

-- Location: IOIBUF_X60_Y22_N23
\instr_MA[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA(4),
	o => \instr_MA[4]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\instr_MA[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA(5),
	o => \instr_MA[5]~input_o\);

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

ww_mux4_control_1 <= \mux4_control_1~output_o\;

ww_mux5_control_1 <= \mux5_control_1~output_o\;
END structure;


