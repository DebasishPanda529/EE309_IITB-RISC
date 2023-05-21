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

-- DATE "05/05/2023 13:08:29"

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

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(37 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(18 DOWNTO 0)
	);
END DUT;

-- Design Ports Information
-- output_vector[0]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[1]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[3]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[4]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[5]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[6]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[7]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[8]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[9]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[10]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[11]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[12]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[13]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[14]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[15]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[16]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[17]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[18]	=>  Location: PIN_61,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[6]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[22]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[4]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[8]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[24]	=>  Location: PIN_97,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[7]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[23]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[5]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[10]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[26]	=>  Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[12]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[28]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[14]	=>  Location: PIN_48,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[30]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[16]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[32]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[21]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[37]	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[18]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[34]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[20]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[36]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[9]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[25]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[11]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[27]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[13]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[29]	=>  Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[15]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[31]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[17]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[33]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[19]	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[35]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[0]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[3]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[2]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(37 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(18 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \add_instance|C0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \output_vector[0]~output_o\ : std_logic;
SIGNAL \output_vector[1]~output_o\ : std_logic;
SIGNAL \output_vector[2]~output_o\ : std_logic;
SIGNAL \output_vector[3]~output_o\ : std_logic;
SIGNAL \output_vector[4]~output_o\ : std_logic;
SIGNAL \output_vector[5]~output_o\ : std_logic;
SIGNAL \output_vector[6]~output_o\ : std_logic;
SIGNAL \output_vector[7]~output_o\ : std_logic;
SIGNAL \output_vector[8]~output_o\ : std_logic;
SIGNAL \output_vector[9]~output_o\ : std_logic;
SIGNAL \output_vector[10]~output_o\ : std_logic;
SIGNAL \output_vector[11]~output_o\ : std_logic;
SIGNAL \output_vector[12]~output_o\ : std_logic;
SIGNAL \output_vector[13]~output_o\ : std_logic;
SIGNAL \output_vector[14]~output_o\ : std_logic;
SIGNAL \output_vector[15]~output_o\ : std_logic;
SIGNAL \output_vector[16]~output_o\ : std_logic;
SIGNAL \output_vector[17]~output_o\ : std_logic;
SIGNAL \output_vector[18]~output_o\ : std_logic;
SIGNAL \input_vector[0]~input_o\ : std_logic;
SIGNAL \input_vector[3]~input_o\ : std_logic;
SIGNAL \input_vector[21]~input_o\ : std_logic;
SIGNAL \input_vector[37]~input_o\ : std_logic;
SIGNAL \add_instance|Z~3_combout\ : std_logic;
SIGNAL \input_vector[12]~input_o\ : std_logic;
SIGNAL \input_vector[28]~input_o\ : std_logic;
SIGNAL \add_instance|ALU1_C~18_combout\ : std_logic;
SIGNAL \input_vector[16]~input_o\ : std_logic;
SIGNAL \input_vector[32]~input_o\ : std_logic;
SIGNAL \add_instance|ALU1_C~20_combout\ : std_logic;
SIGNAL \input_vector[14]~input_o\ : std_logic;
SIGNAL \input_vector[30]~input_o\ : std_logic;
SIGNAL \add_instance|ALU1_C~19_combout\ : std_logic;
SIGNAL \input_vector[10]~input_o\ : std_logic;
SIGNAL \input_vector[26]~input_o\ : std_logic;
SIGNAL \add_instance|ALU1_C~17_combout\ : std_logic;
SIGNAL \add_instance|Z~2_combout\ : std_logic;
SIGNAL \input_vector[4]~input_o\ : std_logic;
SIGNAL \input_vector[23]~input_o\ : std_logic;
SIGNAL \input_vector[5]~input_o\ : std_logic;
SIGNAL \input_vector[24]~input_o\ : std_logic;
SIGNAL \input_vector[8]~input_o\ : std_logic;
SIGNAL \add_instance|ALU1_C~16_combout\ : std_logic;
SIGNAL \input_vector[7]~input_o\ : std_logic;
SIGNAL \add_instance|Z~0_combout\ : std_logic;
SIGNAL \input_vector[22]~input_o\ : std_logic;
SIGNAL \input_vector[6]~input_o\ : std_logic;
SIGNAL \add_instance|Z~1_combout\ : std_logic;
SIGNAL \input_vector[27]~input_o\ : std_logic;
SIGNAL \input_vector[9]~input_o\ : std_logic;
SIGNAL \input_vector[11]~input_o\ : std_logic;
SIGNAL \input_vector[25]~input_o\ : std_logic;
SIGNAL \add_instance|Z~5_combout\ : std_logic;
SIGNAL \input_vector[20]~input_o\ : std_logic;
SIGNAL \input_vector[36]~input_o\ : std_logic;
SIGNAL \input_vector[18]~input_o\ : std_logic;
SIGNAL \input_vector[34]~input_o\ : std_logic;
SIGNAL \add_instance|Z~4_combout\ : std_logic;
SIGNAL \input_vector[33]~input_o\ : std_logic;
SIGNAL \input_vector[17]~input_o\ : std_logic;
SIGNAL \input_vector[19]~input_o\ : std_logic;
SIGNAL \input_vector[35]~input_o\ : std_logic;
SIGNAL \add_instance|Z~7_combout\ : std_logic;
SIGNAL \input_vector[29]~input_o\ : std_logic;
SIGNAL \input_vector[31]~input_o\ : std_logic;
SIGNAL \input_vector[13]~input_o\ : std_logic;
SIGNAL \input_vector[15]~input_o\ : std_logic;
SIGNAL \add_instance|Z~6_combout\ : std_logic;
SIGNAL \add_instance|Z~8_combout\ : std_logic;
SIGNAL \add_instance|Z~9_combout\ : std_logic;
SIGNAL \add_instance|Equal0~0_combout\ : std_logic;
SIGNAL \add_instance|Z~10_combout\ : std_logic;
SIGNAL \add_instance|C0~0_combout\ : std_logic;
SIGNAL \add_instance|C0~0clkctrl_outclk\ : std_logic;
SIGNAL \add_instance|Z~combout\ : std_logic;
SIGNAL \input_vector[2]~input_o\ : std_logic;
SIGNAL \add_instance|C~0_combout\ : std_logic;
SIGNAL \input_vector[1]~input_o\ : std_logic;
SIGNAL \add_instance|ALU1_C~21_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C~22_combout\ : std_logic;
SIGNAL \add_instance|carry~0_combout\ : std_logic;
SIGNAL \add_instance|carry~1_combout\ : std_logic;
SIGNAL \add_instance|carry~2_combout\ : std_logic;
SIGNAL \add_instance|carry~3_combout\ : std_logic;
SIGNAL \add_instance|carry~4_combout\ : std_logic;
SIGNAL \add_instance|carry~5_combout\ : std_logic;
SIGNAL \add_instance|carry~6_combout\ : std_logic;
SIGNAL \add_instance|carry~7_combout\ : std_logic;
SIGNAL \add_instance|carry~8_combout\ : std_logic;
SIGNAL \add_instance|carry~9_combout\ : std_logic;
SIGNAL \add_instance|carry~10_combout\ : std_logic;
SIGNAL \add_instance|carry~11_combout\ : std_logic;
SIGNAL \add_instance|carry~12_combout\ : std_logic;
SIGNAL \add_instance|carry~13_combout\ : std_logic;
SIGNAL \add_instance|carry~14_combout\ : std_logic;
SIGNAL \add_instance|C~1_combout\ : std_logic;
SIGNAL \add_instance|C~combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[0]~23_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[1]~53_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[1]~54_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[2]~24_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[2]~25_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[3]~44_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[3]~26_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[4]~27_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[4]~28_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[5]~45_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[5]~29_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[6]~30_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[6]~31_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[7]~46_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[7]~32_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[8]~33_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[8]~34_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[9]~47_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[9]~35_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[10]~36_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[10]~37_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[11]~48_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[11]~38_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[12]~39_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[12]~40_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[13]~51_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[13]~52_combout\ : std_logic;
SIGNAL \add_instance|dummy~0_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[14]~41_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[14]~42_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[14]~43_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[15]~49_combout\ : std_logic;
SIGNAL \add_instance|ALU1_C[15]~50_combout\ : std_logic;
SIGNAL \add_instance|Z0~5_combout\ : std_logic;
SIGNAL \add_instance|Z0~6_combout\ : std_logic;
SIGNAL \add_instance|Z0~7_combout\ : std_logic;
SIGNAL \add_instance|Z0~8_combout\ : std_logic;
SIGNAL \add_instance|Z0~9_combout\ : std_logic;
SIGNAL \add_instance|Z0~0_combout\ : std_logic;
SIGNAL \add_instance|Z0~3_combout\ : std_logic;
SIGNAL \add_instance|Z0~1_combout\ : std_logic;
SIGNAL \add_instance|Z0~2_combout\ : std_logic;
SIGNAL \add_instance|Z0~4_combout\ : std_logic;
SIGNAL \add_instance|Z0~10_combout\ : std_logic;
SIGNAL \add_instance|Z0~combout\ : std_logic;
SIGNAL \add_instance|ALU1_C\ : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\add_instance|C0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \add_instance|C0~0_combout\);
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

-- Location: IOOBUF_X14_Y21_N2
\output_vector[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Z~combout\,
	devoe => ww_devoe,
	o => \output_vector[0]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\output_vector[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|C~combout\,
	devoe => ww_devoe,
	o => \output_vector[1]~output_o\);

-- Location: IOOBUF_X60_Y13_N16
\output_vector[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|ALU1_C\(0),
	devoe => ww_devoe,
	o => \output_vector[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\output_vector[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|ALU1_C\(1),
	devoe => ww_devoe,
	o => \output_vector[3]~output_o\);

-- Location: IOOBUF_X60_Y23_N16
\output_vector[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|ALU1_C\(2),
	devoe => ww_devoe,
	o => \output_vector[4]~output_o\);

-- Location: IOOBUF_X58_Y36_N2
\output_vector[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|ALU1_C\(3),
	devoe => ww_devoe,
	o => \output_vector[5]~output_o\);

-- Location: IOOBUF_X8_Y21_N23
\output_vector[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|ALU1_C\(4),
	devoe => ww_devoe,
	o => \output_vector[6]~output_o\);

-- Location: IOOBUF_X60_Y22_N16
\output_vector[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|ALU1_C\(5),
	devoe => ww_devoe,
	o => \output_vector[7]~output_o\);

-- Location: IOOBUF_X60_Y13_N23
\output_vector[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|ALU1_C\(6),
	devoe => ww_devoe,
	o => \output_vector[8]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\output_vector[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|ALU1_C\(7),
	devoe => ww_devoe,
	o => \output_vector[9]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\output_vector[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|ALU1_C\(8),
	devoe => ww_devoe,
	o => \output_vector[10]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\output_vector[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|ALU1_C\(9),
	devoe => ww_devoe,
	o => \output_vector[11]~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\output_vector[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|ALU1_C\(10),
	devoe => ww_devoe,
	o => \output_vector[12]~output_o\);

-- Location: IOOBUF_X60_Y31_N23
\output_vector[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|ALU1_C\(11),
	devoe => ww_devoe,
	o => \output_vector[13]~output_o\);

-- Location: IOOBUF_X25_Y28_N23
\output_vector[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|ALU1_C\(12),
	devoe => ww_devoe,
	o => \output_vector[14]~output_o\);

-- Location: IOOBUF_X60_Y15_N23
\output_vector[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|ALU1_C\(13),
	devoe => ww_devoe,
	o => \output_vector[15]~output_o\);

-- Location: IOOBUF_X40_Y36_N30
\output_vector[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|ALU1_C\(14),
	devoe => ww_devoe,
	o => \output_vector[16]~output_o\);

-- Location: IOOBUF_X60_Y14_N23
\output_vector[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|ALU1_C\(15),
	devoe => ww_devoe,
	o => \output_vector[17]~output_o\);

-- Location: IOOBUF_X36_Y0_N30
\output_vector[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Z0~combout\,
	devoe => ww_devoe,
	o => \output_vector[18]~output_o\);

-- Location: IOIBUF_X19_Y0_N22
\input_vector[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(0),
	o => \input_vector[0]~input_o\);

-- Location: IOIBUF_X25_Y29_N22
\input_vector[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(3),
	o => \input_vector[3]~input_o\);

-- Location: IOIBUF_X28_Y36_N1
\input_vector[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(21),
	o => \input_vector[21]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\input_vector[37]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(37),
	o => \input_vector[37]~input_o\);

-- Location: LCCOMB_X27_Y27_N20
\add_instance|Z~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z~3_combout\ = (\input_vector[21]~input_o\ & \input_vector[37]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_vector[21]~input_o\,
	datad => \input_vector[37]~input_o\,
	combout => \add_instance|Z~3_combout\);

-- Location: IOIBUF_X21_Y0_N29
\input_vector[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(12),
	o => \input_vector[12]~input_o\);

-- Location: IOIBUF_X60_Y15_N15
\input_vector[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(28),
	o => \input_vector[28]~input_o\);

-- Location: LCCOMB_X26_Y24_N12
\add_instance|ALU1_C~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C~18_combout\ = (\input_vector[12]~input_o\ & \input_vector[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_vector[12]~input_o\,
	datad => \input_vector[28]~input_o\,
	combout => \add_instance|ALU1_C~18_combout\);

-- Location: IOIBUF_X12_Y21_N8
\input_vector[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(16),
	o => \input_vector[16]~input_o\);

-- Location: IOIBUF_X60_Y10_N23
\input_vector[32]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(32),
	o => \input_vector[32]~input_o\);

-- Location: LCCOMB_X26_Y23_N16
\add_instance|ALU1_C~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C~20_combout\ = (\input_vector[16]~input_o\ & \input_vector[32]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_vector[16]~input_o\,
	datad => \input_vector[32]~input_o\,
	combout => \add_instance|ALU1_C~20_combout\);

-- Location: IOIBUF_X16_Y0_N29
\input_vector[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(14),
	o => \input_vector[14]~input_o\);

-- Location: IOIBUF_X12_Y21_N29
\input_vector[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(30),
	o => \input_vector[30]~input_o\);

-- Location: LCCOMB_X26_Y24_N22
\add_instance|ALU1_C~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C~19_combout\ = (\input_vector[14]~input_o\ & \input_vector[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_vector[14]~input_o\,
	datad => \input_vector[30]~input_o\,
	combout => \add_instance|ALU1_C~19_combout\);

-- Location: IOIBUF_X16_Y21_N15
\input_vector[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(10),
	o => \input_vector[10]~input_o\);

-- Location: IOIBUF_X60_Y22_N23
\input_vector[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(26),
	o => \input_vector[26]~input_o\);

-- Location: LCCOMB_X27_Y25_N30
\add_instance|ALU1_C~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C~17_combout\ = (\input_vector[10]~input_o\ & \input_vector[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_vector[10]~input_o\,
	datad => \input_vector[26]~input_o\,
	combout => \add_instance|ALU1_C~17_combout\);

-- Location: LCCOMB_X26_Y24_N16
\add_instance|Z~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z~2_combout\ = (\add_instance|ALU1_C~18_combout\ & (\add_instance|ALU1_C~20_combout\ & (\add_instance|ALU1_C~19_combout\ & \add_instance|ALU1_C~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU1_C~18_combout\,
	datab => \add_instance|ALU1_C~20_combout\,
	datac => \add_instance|ALU1_C~19_combout\,
	datad => \add_instance|ALU1_C~17_combout\,
	combout => \add_instance|Z~2_combout\);

-- Location: IOIBUF_X25_Y27_N22
\input_vector[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(4),
	o => \input_vector[4]~input_o\);

-- Location: IOIBUF_X19_Y21_N29
\input_vector[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(23),
	o => \input_vector[23]~input_o\);

-- Location: IOIBUF_X25_Y26_N15
\input_vector[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(5),
	o => \input_vector[5]~input_o\);

-- Location: IOIBUF_X60_Y22_N8
\input_vector[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(24),
	o => \input_vector[24]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\input_vector[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(8),
	o => \input_vector[8]~input_o\);

-- Location: LCCOMB_X27_Y25_N12
\add_instance|ALU1_C~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C~16_combout\ = (\input_vector[24]~input_o\ & \input_vector[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_vector[24]~input_o\,
	datad => \input_vector[8]~input_o\,
	combout => \add_instance|ALU1_C~16_combout\);

-- Location: IOIBUF_X60_Y14_N15
\input_vector[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(7),
	o => \input_vector[7]~input_o\);

-- Location: LCCOMB_X26_Y25_N24
\add_instance|Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z~0_combout\ = (\input_vector[23]~input_o\ & (!\input_vector[5]~input_o\ & (\add_instance|ALU1_C~16_combout\ & \input_vector[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[23]~input_o\,
	datab => \input_vector[5]~input_o\,
	datac => \add_instance|ALU1_C~16_combout\,
	datad => \input_vector[7]~input_o\,
	combout => \add_instance|Z~0_combout\);

-- Location: IOIBUF_X38_Y36_N15
\input_vector[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(22),
	o => \input_vector[22]~input_o\);

-- Location: IOIBUF_X19_Y21_N22
\input_vector[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(6),
	o => \input_vector[6]~input_o\);

-- Location: LCCOMB_X26_Y25_N22
\add_instance|Z~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z~1_combout\ = (\input_vector[4]~input_o\ & (\add_instance|Z~0_combout\ & (\input_vector[22]~input_o\ & \input_vector[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[4]~input_o\,
	datab => \add_instance|Z~0_combout\,
	datac => \input_vector[22]~input_o\,
	datad => \input_vector[6]~input_o\,
	combout => \add_instance|Z~1_combout\);

-- Location: IOIBUF_X12_Y21_N1
\input_vector[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(27),
	o => \input_vector[27]~input_o\);

-- Location: IOIBUF_X58_Y36_N8
\input_vector[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(9),
	o => \input_vector[9]~input_o\);

-- Location: IOIBUF_X28_Y36_N8
\input_vector[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(11),
	o => \input_vector[11]~input_o\);

-- Location: IOIBUF_X60_Y10_N8
\input_vector[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(25),
	o => \input_vector[25]~input_o\);

-- Location: LCCOMB_X27_Y25_N0
\add_instance|Z~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z~5_combout\ = (\input_vector[27]~input_o\ & (\input_vector[9]~input_o\ & (\input_vector[11]~input_o\ & \input_vector[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[27]~input_o\,
	datab => \input_vector[9]~input_o\,
	datac => \input_vector[11]~input_o\,
	datad => \input_vector[25]~input_o\,
	combout => \add_instance|Z~5_combout\);

-- Location: IOIBUF_X25_Y27_N15
\input_vector[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(20),
	o => \input_vector[20]~input_o\);

-- Location: IOIBUF_X25_Y29_N15
\input_vector[36]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(36),
	o => \input_vector[36]~input_o\);

-- Location: IOIBUF_X25_Y28_N15
\input_vector[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(18),
	o => \input_vector[18]~input_o\);

-- Location: IOIBUF_X40_Y36_N15
\input_vector[34]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(34),
	o => \input_vector[34]~input_o\);

-- Location: LCCOMB_X26_Y27_N8
\add_instance|Z~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z~4_combout\ = (\input_vector[20]~input_o\ & (\input_vector[36]~input_o\ & (\input_vector[18]~input_o\ & \input_vector[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[20]~input_o\,
	datab => \input_vector[36]~input_o\,
	datac => \input_vector[18]~input_o\,
	datad => \input_vector[34]~input_o\,
	combout => \add_instance|Z~4_combout\);

-- Location: IOIBUF_X25_Y26_N22
\input_vector[33]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(33),
	o => \input_vector[33]~input_o\);

-- Location: IOIBUF_X0_Y15_N15
\input_vector[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(17),
	o => \input_vector[17]~input_o\);

-- Location: IOIBUF_X60_Y23_N1
\input_vector[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(19),
	o => \input_vector[19]~input_o\);

-- Location: IOIBUF_X60_Y31_N15
\input_vector[35]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(35),
	o => \input_vector[35]~input_o\);

-- Location: LCCOMB_X26_Y27_N22
\add_instance|Z~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z~7_combout\ = (\input_vector[33]~input_o\ & (\input_vector[17]~input_o\ & (\input_vector[19]~input_o\ & \input_vector[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[33]~input_o\,
	datab => \input_vector[17]~input_o\,
	datac => \input_vector[19]~input_o\,
	datad => \input_vector[35]~input_o\,
	combout => \add_instance|Z~7_combout\);

-- Location: IOIBUF_X0_Y19_N22
\input_vector[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(29),
	o => \input_vector[29]~input_o\);

-- Location: IOIBUF_X14_Y21_N22
\input_vector[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(31),
	o => \input_vector[31]~input_o\);

-- Location: IOIBUF_X8_Y21_N15
\input_vector[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(13),
	o => \input_vector[13]~input_o\);

-- Location: IOIBUF_X14_Y21_N29
\input_vector[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(15),
	o => \input_vector[15]~input_o\);

-- Location: LCCOMB_X26_Y24_N10
\add_instance|Z~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z~6_combout\ = (\input_vector[29]~input_o\ & (\input_vector[31]~input_o\ & (\input_vector[13]~input_o\ & \input_vector[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[29]~input_o\,
	datab => \input_vector[31]~input_o\,
	datac => \input_vector[13]~input_o\,
	datad => \input_vector[15]~input_o\,
	combout => \add_instance|Z~6_combout\);

-- Location: LCCOMB_X27_Y26_N4
\add_instance|Z~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z~8_combout\ = (\add_instance|Z~5_combout\ & (\add_instance|Z~4_combout\ & (\add_instance|Z~7_combout\ & \add_instance|Z~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Z~5_combout\,
	datab => \add_instance|Z~4_combout\,
	datac => \add_instance|Z~7_combout\,
	datad => \add_instance|Z~6_combout\,
	combout => \add_instance|Z~8_combout\);

-- Location: LCCOMB_X26_Y25_N16
\add_instance|Z~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z~9_combout\ = (\add_instance|Z~3_combout\ & (\add_instance|Z~2_combout\ & (\add_instance|Z~1_combout\ & \add_instance|Z~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Z~3_combout\,
	datab => \add_instance|Z~2_combout\,
	datac => \add_instance|Z~1_combout\,
	datad => \add_instance|Z~8_combout\,
	combout => \add_instance|Z~9_combout\);

-- Location: LCCOMB_X26_Y27_N24
\add_instance|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Equal0~0_combout\ = (\input_vector[4]~input_o\ & !\input_vector[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_vector[4]~input_o\,
	datad => \input_vector[5]~input_o\,
	combout => \add_instance|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y25_N6
\add_instance|Z~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z~10_combout\ = (\add_instance|Z~9_combout\) # ((!\add_instance|Equal0~0_combout\ & ((\input_vector[0]~input_o\) # (\input_vector[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[0]~input_o\,
	datab => \input_vector[3]~input_o\,
	datac => \add_instance|Z~9_combout\,
	datad => \add_instance|Equal0~0_combout\,
	combout => \add_instance|Z~10_combout\);

-- Location: LCCOMB_X26_Y28_N16
\add_instance|C0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|C0~0_combout\ = (!\input_vector[4]~input_o\) # (!\input_vector[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_vector[5]~input_o\,
	datad => \input_vector[4]~input_o\,
	combout => \add_instance|C0~0_combout\);

-- Location: CLKCTRL_G13
\add_instance|C0~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \add_instance|C0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \add_instance|C0~0clkctrl_outclk\);

-- Location: LCCOMB_X26_Y25_N14
\add_instance|Z\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z~combout\ = (GLOBAL(\add_instance|C0~0clkctrl_outclk\) & (\add_instance|Z~10_combout\)) # (!GLOBAL(\add_instance|C0~0clkctrl_outclk\) & ((\add_instance|Z~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Z~10_combout\,
	datac => \add_instance|Z~combout\,
	datad => \add_instance|C0~0clkctrl_outclk\,
	combout => \add_instance|Z~combout\);

-- Location: IOIBUF_X60_Y23_N22
\input_vector[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(2),
	o => \input_vector[2]~input_o\);

-- Location: LCCOMB_X28_Y27_N28
\add_instance|C~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|C~0_combout\ = (\input_vector[2]~input_o\ & (!\input_vector[5]~input_o\ & !\input_vector[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_vector[2]~input_o\,
	datac => \input_vector[5]~input_o\,
	datad => \input_vector[4]~input_o\,
	combout => \add_instance|C~0_combout\);

-- Location: IOIBUF_X60_Y23_N8
\input_vector[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(1),
	o => \input_vector[1]~input_o\);

-- Location: LCCOMB_X27_Y27_N10
\add_instance|ALU1_C~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C~21_combout\ = (\input_vector[20]~input_o\ & \input_vector[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_vector[20]~input_o\,
	datad => \input_vector[36]~input_o\,
	combout => \add_instance|ALU1_C~21_combout\);

-- Location: LCCOMB_X26_Y28_N30
\add_instance|ALU1_C~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C~22_combout\ = (\input_vector[18]~input_o\ & \input_vector[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[18]~input_o\,
	datad => \input_vector[34]~input_o\,
	combout => \add_instance|ALU1_C~22_combout\);

-- Location: LCCOMB_X26_Y25_N20
\add_instance|carry~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|carry~0_combout\ = (\input_vector[23]~input_o\ & ((\input_vector[7]~input_o\) # ((\input_vector[6]~input_o\ & \input_vector[22]~input_o\)))) # (!\input_vector[23]~input_o\ & (\input_vector[6]~input_o\ & (\input_vector[22]~input_o\ & 
-- \input_vector[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[6]~input_o\,
	datab => \input_vector[23]~input_o\,
	datac => \input_vector[22]~input_o\,
	datad => \input_vector[7]~input_o\,
	combout => \add_instance|carry~0_combout\);

-- Location: LCCOMB_X27_Y25_N26
\add_instance|carry~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|carry~1_combout\ = (\add_instance|carry~0_combout\ & ((\input_vector[24]~input_o\) # (\input_vector[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~0_combout\,
	datac => \input_vector[24]~input_o\,
	datad => \input_vector[8]~input_o\,
	combout => \add_instance|carry~1_combout\);

-- Location: LCCOMB_X27_Y25_N28
\add_instance|carry~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|carry~2_combout\ = (\input_vector[9]~input_o\ & ((\add_instance|ALU1_C~16_combout\) # ((\add_instance|carry~1_combout\) # (\input_vector[25]~input_o\)))) # (!\input_vector[9]~input_o\ & (\input_vector[25]~input_o\ & 
-- ((\add_instance|ALU1_C~16_combout\) # (\add_instance|carry~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU1_C~16_combout\,
	datab => \input_vector[9]~input_o\,
	datac => \add_instance|carry~1_combout\,
	datad => \input_vector[25]~input_o\,
	combout => \add_instance|carry~2_combout\);

-- Location: LCCOMB_X27_Y25_N10
\add_instance|carry~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|carry~3_combout\ = (\add_instance|carry~2_combout\ & ((\input_vector[26]~input_o\) # (\input_vector[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[26]~input_o\,
	datab => \input_vector[10]~input_o\,
	datad => \add_instance|carry~2_combout\,
	combout => \add_instance|carry~3_combout\);

-- Location: LCCOMB_X27_Y25_N24
\add_instance|carry~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|carry~4_combout\ = (\input_vector[27]~input_o\ & ((\input_vector[11]~input_o\) # ((\add_instance|ALU1_C~17_combout\) # (\add_instance|carry~3_combout\)))) # (!\input_vector[27]~input_o\ & (\input_vector[11]~input_o\ & 
-- ((\add_instance|ALU1_C~17_combout\) # (\add_instance|carry~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[27]~input_o\,
	datab => \input_vector[11]~input_o\,
	datac => \add_instance|ALU1_C~17_combout\,
	datad => \add_instance|carry~3_combout\,
	combout => \add_instance|carry~4_combout\);

-- Location: LCCOMB_X26_Y24_N4
\add_instance|carry~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|carry~5_combout\ = (\add_instance|carry~4_combout\ & ((\input_vector[12]~input_o\) # (\input_vector[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~4_combout\,
	datac => \input_vector[12]~input_o\,
	datad => \input_vector[28]~input_o\,
	combout => \add_instance|carry~5_combout\);

-- Location: LCCOMB_X26_Y24_N18
\add_instance|carry~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|carry~6_combout\ = (\input_vector[29]~input_o\ & ((\add_instance|carry~5_combout\) # ((\input_vector[13]~input_o\) # (\add_instance|ALU1_C~18_combout\)))) # (!\input_vector[29]~input_o\ & (\input_vector[13]~input_o\ & 
-- ((\add_instance|carry~5_combout\) # (\add_instance|ALU1_C~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[29]~input_o\,
	datab => \add_instance|carry~5_combout\,
	datac => \input_vector[13]~input_o\,
	datad => \add_instance|ALU1_C~18_combout\,
	combout => \add_instance|carry~6_combout\);

-- Location: LCCOMB_X26_Y24_N8
\add_instance|carry~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|carry~7_combout\ = (\add_instance|carry~6_combout\ & ((\input_vector[30]~input_o\) # (\input_vector[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_vector[30]~input_o\,
	datac => \input_vector[14]~input_o\,
	datad => \add_instance|carry~6_combout\,
	combout => \add_instance|carry~7_combout\);

-- Location: LCCOMB_X26_Y24_N30
\add_instance|carry~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|carry~8_combout\ = (\input_vector[31]~input_o\ & ((\add_instance|ALU1_C~19_combout\) # ((\add_instance|carry~7_combout\) # (\input_vector[15]~input_o\)))) # (!\input_vector[31]~input_o\ & (\input_vector[15]~input_o\ & 
-- ((\add_instance|ALU1_C~19_combout\) # (\add_instance|carry~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU1_C~19_combout\,
	datab => \add_instance|carry~7_combout\,
	datac => \input_vector[31]~input_o\,
	datad => \input_vector[15]~input_o\,
	combout => \add_instance|carry~8_combout\);

-- Location: LCCOMB_X27_Y24_N20
\add_instance|carry~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|carry~9_combout\ = (\add_instance|carry~8_combout\ & ((\input_vector[16]~input_o\) # (\input_vector[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \add_instance|carry~8_combout\,
	datad => \input_vector[32]~input_o\,
	combout => \add_instance|carry~9_combout\);

-- Location: LCCOMB_X26_Y27_N10
\add_instance|carry~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|carry~10_combout\ = (\input_vector[33]~input_o\ & ((\input_vector[17]~input_o\) # ((\add_instance|ALU1_C~20_combout\) # (\add_instance|carry~9_combout\)))) # (!\input_vector[33]~input_o\ & (\input_vector[17]~input_o\ & 
-- ((\add_instance|ALU1_C~20_combout\) # (\add_instance|carry~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[33]~input_o\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|ALU1_C~20_combout\,
	datad => \add_instance|carry~9_combout\,
	combout => \add_instance|carry~10_combout\);

-- Location: LCCOMB_X26_Y27_N16
\add_instance|carry~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|carry~11_combout\ = (\add_instance|carry~10_combout\ & ((\input_vector[18]~input_o\) # (\input_vector[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~10_combout\,
	datac => \input_vector[18]~input_o\,
	datad => \input_vector[34]~input_o\,
	combout => \add_instance|carry~11_combout\);

-- Location: LCCOMB_X26_Y27_N14
\add_instance|carry~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|carry~12_combout\ = (\input_vector[35]~input_o\ & ((\add_instance|ALU1_C~22_combout\) # ((\input_vector[19]~input_o\) # (\add_instance|carry~11_combout\)))) # (!\input_vector[35]~input_o\ & (\input_vector[19]~input_o\ & 
-- ((\add_instance|ALU1_C~22_combout\) # (\add_instance|carry~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU1_C~22_combout\,
	datab => \input_vector[35]~input_o\,
	datac => \input_vector[19]~input_o\,
	datad => \add_instance|carry~11_combout\,
	combout => \add_instance|carry~12_combout\);

-- Location: LCCOMB_X27_Y27_N0
\add_instance|carry~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|carry~13_combout\ = (\add_instance|carry~12_combout\ & ((\input_vector[36]~input_o\) # (\input_vector[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_vector[36]~input_o\,
	datac => \input_vector[20]~input_o\,
	datad => \add_instance|carry~12_combout\,
	combout => \add_instance|carry~13_combout\);

-- Location: LCCOMB_X27_Y27_N22
\add_instance|carry~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|carry~14_combout\ = (\input_vector[21]~input_o\ & ((\add_instance|ALU1_C~21_combout\) # ((\add_instance|carry~13_combout\) # (\input_vector[37]~input_o\)))) # (!\input_vector[21]~input_o\ & (\input_vector[37]~input_o\ & 
-- ((\add_instance|ALU1_C~21_combout\) # (\add_instance|carry~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU1_C~21_combout\,
	datab => \add_instance|carry~13_combout\,
	datac => \input_vector[21]~input_o\,
	datad => \input_vector[37]~input_o\,
	combout => \add_instance|carry~14_combout\);

-- Location: LCCOMB_X28_Y27_N2
\add_instance|C~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|C~1_combout\ = (\add_instance|C~0_combout\ & ((\add_instance|carry~14_combout\))) # (!\add_instance|C~0_combout\ & (\input_vector[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|C~0_combout\,
	datac => \input_vector[1]~input_o\,
	datad => \add_instance|carry~14_combout\,
	combout => \add_instance|C~1_combout\);

-- Location: LCCOMB_X28_Y27_N12
\add_instance|C\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|C~combout\ = (GLOBAL(\add_instance|C0~0clkctrl_outclk\) & (\add_instance|C~1_combout\)) # (!GLOBAL(\add_instance|C0~0clkctrl_outclk\) & ((\add_instance|C~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|C~1_combout\,
	datac => \add_instance|C0~0clkctrl_outclk\,
	datad => \add_instance|C~combout\,
	combout => \add_instance|C~combout\);

-- Location: LCCOMB_X26_Y25_N2
\add_instance|ALU1_C[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[0]~23_combout\ = (\input_vector[22]~input_o\ & (((!\input_vector[6]~input_o\)))) # (!\input_vector[22]~input_o\ & ((\input_vector[6]~input_o\) # ((!\input_vector[5]~input_o\ & \input_vector[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[22]~input_o\,
	datab => \input_vector[5]~input_o\,
	datac => \input_vector[6]~input_o\,
	datad => \input_vector[4]~input_o\,
	combout => \add_instance|ALU1_C[0]~23_combout\);

-- Location: LCCOMB_X26_Y25_N4
\add_instance|ALU1_C[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C\(0) = (GLOBAL(\add_instance|C0~0clkctrl_outclk\) & ((\add_instance|ALU1_C[0]~23_combout\))) # (!GLOBAL(\add_instance|C0~0clkctrl_outclk\) & (\add_instance|ALU1_C\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU1_C\(0),
	datac => \add_instance|C0~0clkctrl_outclk\,
	datad => \add_instance|ALU1_C[0]~23_combout\,
	combout => \add_instance|ALU1_C\(0));

-- Location: LCCOMB_X26_Y25_N10
\add_instance|ALU1_C[1]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[1]~53_combout\ = (!\input_vector[5]~input_o\ & ((\input_vector[4]~input_o\) # ((\input_vector[22]~input_o\ & \input_vector[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[22]~input_o\,
	datab => \input_vector[6]~input_o\,
	datac => \input_vector[4]~input_o\,
	datad => \input_vector[5]~input_o\,
	combout => \add_instance|ALU1_C[1]~53_combout\);

-- Location: LCCOMB_X26_Y25_N8
\add_instance|ALU1_C[1]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[1]~54_combout\ = (\input_vector[23]~input_o\ & (\input_vector[7]~input_o\ $ (((\input_vector[4]~input_o\) # (!\add_instance|ALU1_C[1]~53_combout\))))) # (!\input_vector[23]~input_o\ & ((\input_vector[7]~input_o\ & 
-- ((\input_vector[4]~input_o\) # (!\add_instance|ALU1_C[1]~53_combout\))) # (!\input_vector[7]~input_o\ & (\add_instance|ALU1_C[1]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[23]~input_o\,
	datab => \input_vector[7]~input_o\,
	datac => \add_instance|ALU1_C[1]~53_combout\,
	datad => \input_vector[4]~input_o\,
	combout => \add_instance|ALU1_C[1]~54_combout\);

-- Location: LCCOMB_X26_Y25_N30
\add_instance|ALU1_C[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C\(1) = (GLOBAL(\add_instance|C0~0clkctrl_outclk\) & ((\add_instance|ALU1_C[1]~54_combout\))) # (!GLOBAL(\add_instance|C0~0clkctrl_outclk\) & (\add_instance|ALU1_C\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU1_C\(1),
	datac => \add_instance|C0~0clkctrl_outclk\,
	datad => \add_instance|ALU1_C[1]~54_combout\,
	combout => \add_instance|ALU1_C\(1));

-- Location: LCCOMB_X27_Y27_N24
\add_instance|ALU1_C[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[2]~24_combout\ = (\add_instance|Equal0~0_combout\ & (((!\input_vector[8]~input_o\)) # (!\input_vector[24]~input_o\))) # (!\add_instance|Equal0~0_combout\ & (\input_vector[24]~input_o\ $ (\input_vector[8]~input_o\ $ 
-- (\add_instance|carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[24]~input_o\,
	datab => \input_vector[8]~input_o\,
	datac => \add_instance|carry~0_combout\,
	datad => \add_instance|Equal0~0_combout\,
	combout => \add_instance|ALU1_C[2]~24_combout\);

-- Location: LCCOMB_X27_Y27_N2
\add_instance|ALU1_C[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[2]~25_combout\ = (\input_vector[5]~input_o\ & ((\input_vector[8]~input_o\ $ (\input_vector[24]~input_o\)))) # (!\input_vector[5]~input_o\ & (\add_instance|ALU1_C[2]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU1_C[2]~24_combout\,
	datab => \input_vector[5]~input_o\,
	datac => \input_vector[8]~input_o\,
	datad => \input_vector[24]~input_o\,
	combout => \add_instance|ALU1_C[2]~25_combout\);

-- Location: LCCOMB_X27_Y27_N14
\add_instance|ALU1_C[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C\(2) = (GLOBAL(\add_instance|C0~0clkctrl_outclk\) & ((\add_instance|ALU1_C[2]~25_combout\))) # (!GLOBAL(\add_instance|C0~0clkctrl_outclk\) & (\add_instance|ALU1_C\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU1_C\(2),
	datac => \add_instance|ALU1_C[2]~25_combout\,
	datad => \add_instance|C0~0clkctrl_outclk\,
	combout => \add_instance|ALU1_C\(2));

-- Location: LCCOMB_X27_Y25_N8
\add_instance|ALU1_C[3]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[3]~44_combout\ = (!\input_vector[5]~input_o\ & (!\input_vector[4]~input_o\ & ((\add_instance|carry~1_combout\) # (\add_instance|ALU1_C~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[5]~input_o\,
	datab => \input_vector[4]~input_o\,
	datac => \add_instance|carry~1_combout\,
	datad => \add_instance|ALU1_C~16_combout\,
	combout => \add_instance|ALU1_C[3]~44_combout\);

-- Location: LCCOMB_X27_Y25_N2
\add_instance|ALU1_C[3]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[3]~26_combout\ = (\add_instance|ALU1_C[3]~44_combout\ & (\input_vector[9]~input_o\ $ (\add_instance|Equal0~0_combout\ $ (!\input_vector[25]~input_o\)))) # (!\add_instance|ALU1_C[3]~44_combout\ & ((\input_vector[9]~input_o\ & 
-- ((!\input_vector[25]~input_o\))) # (!\input_vector[9]~input_o\ & ((\add_instance|Equal0~0_combout\) # (\input_vector[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU1_C[3]~44_combout\,
	datab => \input_vector[9]~input_o\,
	datac => \add_instance|Equal0~0_combout\,
	datad => \input_vector[25]~input_o\,
	combout => \add_instance|ALU1_C[3]~26_combout\);

-- Location: LCCOMB_X27_Y25_N4
\add_instance|ALU1_C[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C\(3) = (GLOBAL(\add_instance|C0~0clkctrl_outclk\) & ((\add_instance|ALU1_C[3]~26_combout\))) # (!GLOBAL(\add_instance|C0~0clkctrl_outclk\) & (\add_instance|ALU1_C\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU1_C\(3),
	datac => \add_instance|ALU1_C[3]~26_combout\,
	datad => \add_instance|C0~0clkctrl_outclk\,
	combout => \add_instance|ALU1_C\(3));

-- Location: LCCOMB_X27_Y24_N22
\add_instance|ALU1_C[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[4]~27_combout\ = (\add_instance|Equal0~0_combout\ & (((!\input_vector[10]~input_o\)) # (!\input_vector[26]~input_o\))) # (!\add_instance|Equal0~0_combout\ & (\input_vector[26]~input_o\ $ (\input_vector[10]~input_o\ $ 
-- (\add_instance|carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[26]~input_o\,
	datab => \input_vector[10]~input_o\,
	datac => \add_instance|Equal0~0_combout\,
	datad => \add_instance|carry~2_combout\,
	combout => \add_instance|ALU1_C[4]~27_combout\);

-- Location: LCCOMB_X27_Y24_N8
\add_instance|ALU1_C[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[4]~28_combout\ = (\input_vector[5]~input_o\ & (\input_vector[26]~input_o\ $ ((\input_vector[10]~input_o\)))) # (!\input_vector[5]~input_o\ & (((\add_instance|ALU1_C[4]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[26]~input_o\,
	datab => \input_vector[10]~input_o\,
	datac => \add_instance|ALU1_C[4]~27_combout\,
	datad => \input_vector[5]~input_o\,
	combout => \add_instance|ALU1_C[4]~28_combout\);

-- Location: LCCOMB_X27_Y24_N30
\add_instance|ALU1_C[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C\(4) = (GLOBAL(\add_instance|C0~0clkctrl_outclk\) & ((\add_instance|ALU1_C[4]~28_combout\))) # (!GLOBAL(\add_instance|C0~0clkctrl_outclk\) & (\add_instance|ALU1_C\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU1_C\(4),
	datac => \add_instance|ALU1_C[4]~28_combout\,
	datad => \add_instance|C0~0clkctrl_outclk\,
	combout => \add_instance|ALU1_C\(4));

-- Location: LCCOMB_X27_Y25_N6
\add_instance|ALU1_C[5]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[5]~45_combout\ = (!\input_vector[5]~input_o\ & (!\input_vector[4]~input_o\ & ((\add_instance|ALU1_C~17_combout\) # (\add_instance|carry~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[5]~input_o\,
	datab => \input_vector[4]~input_o\,
	datac => \add_instance|ALU1_C~17_combout\,
	datad => \add_instance|carry~3_combout\,
	combout => \add_instance|ALU1_C[5]~45_combout\);

-- Location: LCCOMB_X27_Y25_N20
\add_instance|ALU1_C[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[5]~29_combout\ = (\add_instance|Equal0~0_combout\ & ((\input_vector[27]~input_o\ & (!\input_vector[11]~input_o\)) # (!\input_vector[27]~input_o\ & ((\input_vector[11]~input_o\) # (!\add_instance|ALU1_C[5]~45_combout\))))) # 
-- (!\add_instance|Equal0~0_combout\ & (\input_vector[27]~input_o\ $ (\input_vector[11]~input_o\ $ (\add_instance|ALU1_C[5]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[27]~input_o\,
	datab => \input_vector[11]~input_o\,
	datac => \add_instance|Equal0~0_combout\,
	datad => \add_instance|ALU1_C[5]~45_combout\,
	combout => \add_instance|ALU1_C[5]~29_combout\);

-- Location: LCCOMB_X27_Y25_N14
\add_instance|ALU1_C[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C\(5) = (GLOBAL(\add_instance|C0~0clkctrl_outclk\) & (\add_instance|ALU1_C[5]~29_combout\)) # (!GLOBAL(\add_instance|C0~0clkctrl_outclk\) & ((\add_instance|ALU1_C\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU1_C[5]~29_combout\,
	datac => \add_instance|ALU1_C\(5),
	datad => \add_instance|C0~0clkctrl_outclk\,
	combout => \add_instance|ALU1_C\(5));

-- Location: LCCOMB_X27_Y24_N6
\add_instance|ALU1_C[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[6]~30_combout\ = (\add_instance|Equal0~0_combout\ & (((!\input_vector[28]~input_o\)) # (!\input_vector[12]~input_o\))) # (!\add_instance|Equal0~0_combout\ & (\input_vector[12]~input_o\ $ (\input_vector[28]~input_o\ $ 
-- (\add_instance|carry~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[12]~input_o\,
	datab => \input_vector[28]~input_o\,
	datac => \add_instance|Equal0~0_combout\,
	datad => \add_instance|carry~4_combout\,
	combout => \add_instance|ALU1_C[6]~30_combout\);

-- Location: LCCOMB_X27_Y24_N4
\add_instance|ALU1_C[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[6]~31_combout\ = (\input_vector[5]~input_o\ & (\input_vector[12]~input_o\ $ ((\input_vector[28]~input_o\)))) # (!\input_vector[5]~input_o\ & (((\add_instance|ALU1_C[6]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[12]~input_o\,
	datab => \input_vector[28]~input_o\,
	datac => \add_instance|ALU1_C[6]~30_combout\,
	datad => \input_vector[5]~input_o\,
	combout => \add_instance|ALU1_C[6]~31_combout\);

-- Location: LCCOMB_X27_Y24_N24
\add_instance|ALU1_C[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C\(6) = (GLOBAL(\add_instance|C0~0clkctrl_outclk\) & ((\add_instance|ALU1_C[6]~31_combout\))) # (!GLOBAL(\add_instance|C0~0clkctrl_outclk\) & (\add_instance|ALU1_C\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU1_C\(6),
	datac => \add_instance|ALU1_C[6]~31_combout\,
	datad => \add_instance|C0~0clkctrl_outclk\,
	combout => \add_instance|ALU1_C\(6));

-- Location: LCCOMB_X26_Y24_N28
\add_instance|ALU1_C[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[7]~46_combout\ = (!\input_vector[5]~input_o\ & (!\input_vector[4]~input_o\ & ((\add_instance|ALU1_C~18_combout\) # (\add_instance|carry~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU1_C~18_combout\,
	datab => \add_instance|carry~5_combout\,
	datac => \input_vector[5]~input_o\,
	datad => \input_vector[4]~input_o\,
	combout => \add_instance|ALU1_C[7]~46_combout\);

-- Location: LCCOMB_X26_Y24_N0
\add_instance|ALU1_C[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[7]~32_combout\ = (\add_instance|ALU1_C[7]~46_combout\ & (\input_vector[29]~input_o\ $ (\input_vector[13]~input_o\ $ (!\add_instance|Equal0~0_combout\)))) # (!\add_instance|ALU1_C[7]~46_combout\ & ((\input_vector[29]~input_o\ & 
-- (!\input_vector[13]~input_o\)) # (!\input_vector[29]~input_o\ & ((\input_vector[13]~input_o\) # (\add_instance|Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[29]~input_o\,
	datab => \add_instance|ALU1_C[7]~46_combout\,
	datac => \input_vector[13]~input_o\,
	datad => \add_instance|Equal0~0_combout\,
	combout => \add_instance|ALU1_C[7]~32_combout\);

-- Location: LCCOMB_X26_Y24_N20
\add_instance|ALU1_C[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C\(7) = (GLOBAL(\add_instance|C0~0clkctrl_outclk\) & ((\add_instance|ALU1_C[7]~32_combout\))) # (!GLOBAL(\add_instance|C0~0clkctrl_outclk\) & (\add_instance|ALU1_C\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU1_C\(7),
	datac => \add_instance|ALU1_C[7]~32_combout\,
	datad => \add_instance|C0~0clkctrl_outclk\,
	combout => \add_instance|ALU1_C\(7));

-- Location: LCCOMB_X27_Y24_N10
\add_instance|ALU1_C[8]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[8]~33_combout\ = (\add_instance|Equal0~0_combout\ & (((!\input_vector[14]~input_o\) # (!\input_vector[30]~input_o\)))) # (!\add_instance|Equal0~0_combout\ & (\add_instance|carry~6_combout\ $ (\input_vector[30]~input_o\ $ 
-- (\input_vector[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~6_combout\,
	datab => \input_vector[30]~input_o\,
	datac => \add_instance|Equal0~0_combout\,
	datad => \input_vector[14]~input_o\,
	combout => \add_instance|ALU1_C[8]~33_combout\);

-- Location: LCCOMB_X27_Y24_N12
\add_instance|ALU1_C[8]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[8]~34_combout\ = (\input_vector[5]~input_o\ & (\input_vector[30]~input_o\ $ ((\input_vector[14]~input_o\)))) # (!\input_vector[5]~input_o\ & (((\add_instance|ALU1_C[8]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[30]~input_o\,
	datab => \input_vector[14]~input_o\,
	datac => \add_instance|ALU1_C[8]~33_combout\,
	datad => \input_vector[5]~input_o\,
	combout => \add_instance|ALU1_C[8]~34_combout\);

-- Location: LCCOMB_X27_Y24_N26
\add_instance|ALU1_C[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C\(8) = (GLOBAL(\add_instance|C0~0clkctrl_outclk\) & ((\add_instance|ALU1_C[8]~34_combout\))) # (!GLOBAL(\add_instance|C0~0clkctrl_outclk\) & (\add_instance|ALU1_C\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU1_C\(8),
	datac => \add_instance|ALU1_C[8]~34_combout\,
	datad => \add_instance|C0~0clkctrl_outclk\,
	combout => \add_instance|ALU1_C\(8));

-- Location: LCCOMB_X26_Y24_N6
\add_instance|ALU1_C[9]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[9]~47_combout\ = (!\input_vector[5]~input_o\ & (!\input_vector[4]~input_o\ & ((\add_instance|ALU1_C~19_combout\) # (\add_instance|carry~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU1_C~19_combout\,
	datab => \add_instance|carry~7_combout\,
	datac => \input_vector[5]~input_o\,
	datad => \input_vector[4]~input_o\,
	combout => \add_instance|ALU1_C[9]~47_combout\);

-- Location: LCCOMB_X26_Y24_N2
\add_instance|ALU1_C[9]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[9]~35_combout\ = (\add_instance|ALU1_C[9]~47_combout\ & (\input_vector[15]~input_o\ $ (\input_vector[31]~input_o\ $ (!\add_instance|Equal0~0_combout\)))) # (!\add_instance|ALU1_C[9]~47_combout\ & ((\input_vector[15]~input_o\ & 
-- (!\input_vector[31]~input_o\)) # (!\input_vector[15]~input_o\ & ((\input_vector[31]~input_o\) # (\add_instance|Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[15]~input_o\,
	datab => \input_vector[31]~input_o\,
	datac => \add_instance|ALU1_C[9]~47_combout\,
	datad => \add_instance|Equal0~0_combout\,
	combout => \add_instance|ALU1_C[9]~35_combout\);

-- Location: LCCOMB_X26_Y24_N14
\add_instance|ALU1_C[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C\(9) = (GLOBAL(\add_instance|C0~0clkctrl_outclk\) & (\add_instance|ALU1_C[9]~35_combout\)) # (!GLOBAL(\add_instance|C0~0clkctrl_outclk\) & ((\add_instance|ALU1_C\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU1_C[9]~35_combout\,
	datac => \add_instance|ALU1_C\(9),
	datad => \add_instance|C0~0clkctrl_outclk\,
	combout => \add_instance|ALU1_C\(9));

-- Location: LCCOMB_X27_Y24_N14
\add_instance|ALU1_C[10]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[10]~36_combout\ = (\add_instance|Equal0~0_combout\ & (((!\input_vector[16]~input_o\)) # (!\input_vector[32]~input_o\))) # (!\add_instance|Equal0~0_combout\ & (\input_vector[32]~input_o\ $ (\add_instance|carry~8_combout\ $ 
-- (\input_vector[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[32]~input_o\,
	datab => \add_instance|carry~8_combout\,
	datac => \add_instance|Equal0~0_combout\,
	datad => \input_vector[16]~input_o\,
	combout => \add_instance|ALU1_C[10]~36_combout\);

-- Location: LCCOMB_X27_Y24_N28
\add_instance|ALU1_C[10]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[10]~37_combout\ = (\input_vector[5]~input_o\ & (\input_vector[16]~input_o\ $ (((\input_vector[32]~input_o\))))) # (!\input_vector[5]~input_o\ & (((\add_instance|ALU1_C[10]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \input_vector[5]~input_o\,
	datac => \add_instance|ALU1_C[10]~36_combout\,
	datad => \input_vector[32]~input_o\,
	combout => \add_instance|ALU1_C[10]~37_combout\);

-- Location: LCCOMB_X27_Y24_N16
\add_instance|ALU1_C[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C\(10) = (GLOBAL(\add_instance|C0~0clkctrl_outclk\) & ((\add_instance|ALU1_C[10]~37_combout\))) # (!GLOBAL(\add_instance|C0~0clkctrl_outclk\) & (\add_instance|ALU1_C\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU1_C\(10),
	datac => \add_instance|ALU1_C[10]~37_combout\,
	datad => \add_instance|C0~0clkctrl_outclk\,
	combout => \add_instance|ALU1_C\(10));

-- Location: LCCOMB_X26_Y27_N12
\add_instance|ALU1_C[11]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[11]~48_combout\ = (!\input_vector[5]~input_o\ & (!\input_vector[4]~input_o\ & ((\add_instance|carry~9_combout\) # (\add_instance|ALU1_C~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[5]~input_o\,
	datab => \add_instance|carry~9_combout\,
	datac => \add_instance|ALU1_C~20_combout\,
	datad => \input_vector[4]~input_o\,
	combout => \add_instance|ALU1_C[11]~48_combout\);

-- Location: LCCOMB_X26_Y27_N0
\add_instance|ALU1_C[11]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[11]~38_combout\ = (\add_instance|Equal0~0_combout\ & ((\input_vector[33]~input_o\ & (!\input_vector[17]~input_o\)) # (!\input_vector[33]~input_o\ & ((\input_vector[17]~input_o\) # (!\add_instance|ALU1_C[11]~48_combout\))))) # 
-- (!\add_instance|Equal0~0_combout\ & (\input_vector[33]~input_o\ $ (\input_vector[17]~input_o\ $ (\add_instance|ALU1_C[11]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[33]~input_o\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|Equal0~0_combout\,
	datad => \add_instance|ALU1_C[11]~48_combout\,
	combout => \add_instance|ALU1_C[11]~38_combout\);

-- Location: LCCOMB_X26_Y27_N26
\add_instance|ALU1_C[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C\(11) = (GLOBAL(\add_instance|C0~0clkctrl_outclk\) & ((\add_instance|ALU1_C[11]~38_combout\))) # (!GLOBAL(\add_instance|C0~0clkctrl_outclk\) & (\add_instance|ALU1_C\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU1_C\(11),
	datac => \add_instance|C0~0clkctrl_outclk\,
	datad => \add_instance|ALU1_C[11]~38_combout\,
	combout => \add_instance|ALU1_C\(11));

-- Location: LCCOMB_X26_Y27_N6
\add_instance|ALU1_C[12]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[12]~39_combout\ = (\add_instance|Equal0~0_combout\ & (((!\input_vector[34]~input_o\)) # (!\input_vector[18]~input_o\))) # (!\add_instance|Equal0~0_combout\ & (\input_vector[18]~input_o\ $ (\input_vector[34]~input_o\ $ 
-- (\add_instance|carry~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[18]~input_o\,
	datab => \input_vector[34]~input_o\,
	datac => \add_instance|Equal0~0_combout\,
	datad => \add_instance|carry~10_combout\,
	combout => \add_instance|ALU1_C[12]~39_combout\);

-- Location: LCCOMB_X26_Y27_N20
\add_instance|ALU1_C[12]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[12]~40_combout\ = (\input_vector[5]~input_o\ & ((\input_vector[18]~input_o\ $ (\input_vector[34]~input_o\)))) # (!\input_vector[5]~input_o\ & (\add_instance|ALU1_C[12]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU1_C[12]~39_combout\,
	datab => \input_vector[5]~input_o\,
	datac => \input_vector[18]~input_o\,
	datad => \input_vector[34]~input_o\,
	combout => \add_instance|ALU1_C[12]~40_combout\);

-- Location: LCCOMB_X26_Y27_N4
\add_instance|ALU1_C[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C\(12) = (GLOBAL(\add_instance|C0~0clkctrl_outclk\) & ((\add_instance|ALU1_C[12]~40_combout\))) # (!GLOBAL(\add_instance|C0~0clkctrl_outclk\) & (\add_instance|ALU1_C\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU1_C\(12),
	datac => \add_instance|ALU1_C[12]~40_combout\,
	datad => \add_instance|C0~0clkctrl_outclk\,
	combout => \add_instance|ALU1_C\(12));

-- Location: LCCOMB_X26_Y27_N2
\add_instance|ALU1_C[13]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[13]~51_combout\ = (!\input_vector[5]~input_o\ & ((\add_instance|ALU1_C~22_combout\) # ((\input_vector[4]~input_o\) # (\add_instance|carry~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU1_C~22_combout\,
	datab => \input_vector[5]~input_o\,
	datac => \input_vector[4]~input_o\,
	datad => \add_instance|carry~11_combout\,
	combout => \add_instance|ALU1_C[13]~51_combout\);

-- Location: LCCOMB_X26_Y27_N28
\add_instance|ALU1_C[13]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[13]~52_combout\ = (\input_vector[19]~input_o\ & (\input_vector[35]~input_o\ $ (((\input_vector[4]~input_o\) # (!\add_instance|ALU1_C[13]~51_combout\))))) # (!\input_vector[19]~input_o\ & ((\input_vector[35]~input_o\ & 
-- ((\input_vector[4]~input_o\) # (!\add_instance|ALU1_C[13]~51_combout\))) # (!\input_vector[35]~input_o\ & ((\add_instance|ALU1_C[13]~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[35]~input_o\,
	datac => \input_vector[4]~input_o\,
	datad => \add_instance|ALU1_C[13]~51_combout\,
	combout => \add_instance|ALU1_C[13]~52_combout\);

-- Location: LCCOMB_X26_Y27_N18
\add_instance|ALU1_C[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C\(13) = (GLOBAL(\add_instance|C0~0clkctrl_outclk\) & ((\add_instance|ALU1_C[13]~52_combout\))) # (!GLOBAL(\add_instance|C0~0clkctrl_outclk\) & (\add_instance|ALU1_C\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU1_C\(13),
	datac => \add_instance|ALU1_C[13]~52_combout\,
	datad => \add_instance|C0~0clkctrl_outclk\,
	combout => \add_instance|ALU1_C\(13));

-- Location: LCCOMB_X27_Y27_N12
\add_instance|dummy~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|dummy~0_combout\ = \input_vector[20]~input_o\ $ (\input_vector[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_vector[20]~input_o\,
	datad => \input_vector[36]~input_o\,
	combout => \add_instance|dummy~0_combout\);

-- Location: LCCOMB_X27_Y27_N30
\add_instance|ALU1_C[14]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[14]~41_combout\ = (\add_instance|dummy~0_combout\ & ((\input_vector[5]~input_o\) # ((!\add_instance|carry~12_combout\ & !\input_vector[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|dummy~0_combout\,
	datab => \add_instance|carry~12_combout\,
	datac => \input_vector[5]~input_o\,
	datad => \input_vector[4]~input_o\,
	combout => \add_instance|ALU1_C[14]~41_combout\);

-- Location: LCCOMB_X27_Y27_N16
\add_instance|ALU1_C[14]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[14]~42_combout\ = (\add_instance|Equal0~0_combout\ & (((!\add_instance|ALU1_C~21_combout\)))) # (!\add_instance|Equal0~0_combout\ & (!\add_instance|dummy~0_combout\ & (\add_instance|carry~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|dummy~0_combout\,
	datab => \add_instance|carry~12_combout\,
	datac => \add_instance|Equal0~0_combout\,
	datad => \add_instance|ALU1_C~21_combout\,
	combout => \add_instance|ALU1_C[14]~42_combout\);

-- Location: LCCOMB_X27_Y27_N18
\add_instance|ALU1_C[14]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[14]~43_combout\ = (\add_instance|ALU1_C[14]~41_combout\) # ((\add_instance|ALU1_C[14]~42_combout\ & !\input_vector[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU1_C[14]~41_combout\,
	datac => \add_instance|ALU1_C[14]~42_combout\,
	datad => \input_vector[5]~input_o\,
	combout => \add_instance|ALU1_C[14]~43_combout\);

-- Location: LCCOMB_X27_Y27_N8
\add_instance|ALU1_C[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C\(14) = (GLOBAL(\add_instance|C0~0clkctrl_outclk\) & (\add_instance|ALU1_C[14]~43_combout\)) # (!GLOBAL(\add_instance|C0~0clkctrl_outclk\) & ((\add_instance|ALU1_C\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU1_C[14]~43_combout\,
	datac => \add_instance|ALU1_C\(14),
	datad => \add_instance|C0~0clkctrl_outclk\,
	combout => \add_instance|ALU1_C\(14));

-- Location: LCCOMB_X27_Y27_N26
\add_instance|ALU1_C[15]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[15]~49_combout\ = (!\input_vector[5]~input_o\ & ((\add_instance|ALU1_C~21_combout\) # ((\add_instance|carry~13_combout\) # (\input_vector[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU1_C~21_combout\,
	datab => \add_instance|carry~13_combout\,
	datac => \input_vector[5]~input_o\,
	datad => \input_vector[4]~input_o\,
	combout => \add_instance|ALU1_C[15]~49_combout\);

-- Location: LCCOMB_X27_Y27_N4
\add_instance|ALU1_C[15]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C[15]~50_combout\ = (\add_instance|ALU1_C[15]~49_combout\ & ((\input_vector[37]~input_o\ & (\input_vector[21]~input_o\ $ (\input_vector[4]~input_o\))) # (!\input_vector[37]~input_o\ & ((\input_vector[4]~input_o\) # 
-- (!\input_vector[21]~input_o\))))) # (!\add_instance|ALU1_C[15]~49_combout\ & (\input_vector[37]~input_o\ $ ((\input_vector[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU1_C[15]~49_combout\,
	datab => \input_vector[37]~input_o\,
	datac => \input_vector[21]~input_o\,
	datad => \input_vector[4]~input_o\,
	combout => \add_instance|ALU1_C[15]~50_combout\);

-- Location: LCCOMB_X27_Y27_N6
\add_instance|ALU1_C[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|ALU1_C\(15) = (GLOBAL(\add_instance|C0~0clkctrl_outclk\) & ((\add_instance|ALU1_C[15]~50_combout\))) # (!GLOBAL(\add_instance|C0~0clkctrl_outclk\) & (\add_instance|ALU1_C\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU1_C\(15),
	datac => \add_instance|ALU1_C[15]~50_combout\,
	datad => \add_instance|C0~0clkctrl_outclk\,
	combout => \add_instance|ALU1_C\(15));

-- Location: LCCOMB_X26_Y24_N26
\add_instance|Z0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z0~5_combout\ = (\input_vector[15]~input_o\ & (\input_vector[31]~input_o\ & (\input_vector[14]~input_o\ $ (!\input_vector[30]~input_o\)))) # (!\input_vector[15]~input_o\ & (!\input_vector[31]~input_o\ & (\input_vector[14]~input_o\ $ 
-- (!\input_vector[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[15]~input_o\,
	datab => \input_vector[31]~input_o\,
	datac => \input_vector[14]~input_o\,
	datad => \input_vector[30]~input_o\,
	combout => \add_instance|Z0~5_combout\);

-- Location: LCCOMB_X26_Y23_N10
\add_instance|Z0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z0~6_combout\ = (\input_vector[33]~input_o\ & (\input_vector[17]~input_o\ & (\input_vector[16]~input_o\ $ (!\input_vector[32]~input_o\)))) # (!\input_vector[33]~input_o\ & (!\input_vector[17]~input_o\ & (\input_vector[16]~input_o\ $ 
-- (!\input_vector[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[33]~input_o\,
	datab => \input_vector[16]~input_o\,
	datac => \input_vector[17]~input_o\,
	datad => \input_vector[32]~input_o\,
	combout => \add_instance|Z0~6_combout\);

-- Location: LCCOMB_X26_Y27_N30
\add_instance|Z0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z0~7_combout\ = (\input_vector[19]~input_o\ & (\input_vector[35]~input_o\ & (\input_vector[34]~input_o\ $ (!\input_vector[18]~input_o\)))) # (!\input_vector[19]~input_o\ & (!\input_vector[35]~input_o\ & (\input_vector[34]~input_o\ $ 
-- (!\input_vector[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[34]~input_o\,
	datac => \input_vector[18]~input_o\,
	datad => \input_vector[35]~input_o\,
	combout => \add_instance|Z0~7_combout\);

-- Location: LCCOMB_X27_Y27_N28
\add_instance|Z0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z0~8_combout\ = (\input_vector[20]~input_o\ & (\input_vector[36]~input_o\ & (\input_vector[21]~input_o\ $ (!\input_vector[37]~input_o\)))) # (!\input_vector[20]~input_o\ & (!\input_vector[36]~input_o\ & (\input_vector[21]~input_o\ $ 
-- (!\input_vector[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[20]~input_o\,
	datab => \input_vector[36]~input_o\,
	datac => \input_vector[21]~input_o\,
	datad => \input_vector[37]~input_o\,
	combout => \add_instance|Z0~8_combout\);

-- Location: LCCOMB_X26_Y25_N26
\add_instance|Z0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z0~9_combout\ = (\add_instance|Z0~5_combout\ & (\add_instance|Z0~6_combout\ & (\add_instance|Z0~7_combout\ & \add_instance|Z0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Z0~5_combout\,
	datab => \add_instance|Z0~6_combout\,
	datac => \add_instance|Z0~7_combout\,
	datad => \add_instance|Z0~8_combout\,
	combout => \add_instance|Z0~9_combout\);

-- Location: LCCOMB_X26_Y25_N12
\add_instance|Z0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z0~0_combout\ = (\input_vector[6]~input_o\ & (\input_vector[22]~input_o\ & (\input_vector[23]~input_o\ $ (!\input_vector[7]~input_o\)))) # (!\input_vector[6]~input_o\ & (!\input_vector[22]~input_o\ & (\input_vector[23]~input_o\ $ 
-- (!\input_vector[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[6]~input_o\,
	datab => \input_vector[23]~input_o\,
	datac => \input_vector[22]~input_o\,
	datad => \input_vector[7]~input_o\,
	combout => \add_instance|Z0~0_combout\);

-- Location: LCCOMB_X26_Y24_N24
\add_instance|Z0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z0~3_combout\ = (\input_vector[29]~input_o\ & (\input_vector[13]~input_o\ & (\input_vector[12]~input_o\ $ (!\input_vector[28]~input_o\)))) # (!\input_vector[29]~input_o\ & (!\input_vector[13]~input_o\ & (\input_vector[12]~input_o\ $ 
-- (!\input_vector[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[29]~input_o\,
	datab => \input_vector[12]~input_o\,
	datac => \input_vector[13]~input_o\,
	datad => \input_vector[28]~input_o\,
	combout => \add_instance|Z0~3_combout\);

-- Location: LCCOMB_X27_Y25_N22
\add_instance|Z0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z0~1_combout\ = (\input_vector[8]~input_o\ & (\input_vector[24]~input_o\ & (\input_vector[9]~input_o\ $ (!\input_vector[25]~input_o\)))) # (!\input_vector[8]~input_o\ & (!\input_vector[24]~input_o\ & (\input_vector[9]~input_o\ $ 
-- (!\input_vector[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[8]~input_o\,
	datab => \input_vector[9]~input_o\,
	datac => \input_vector[24]~input_o\,
	datad => \input_vector[25]~input_o\,
	combout => \add_instance|Z0~1_combout\);

-- Location: LCCOMB_X27_Y25_N16
\add_instance|Z0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z0~2_combout\ = (\input_vector[27]~input_o\ & (\input_vector[11]~input_o\ & (\input_vector[10]~input_o\ $ (!\input_vector[26]~input_o\)))) # (!\input_vector[27]~input_o\ & (!\input_vector[11]~input_o\ & (\input_vector[10]~input_o\ $ 
-- (!\input_vector[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[27]~input_o\,
	datab => \input_vector[10]~input_o\,
	datac => \input_vector[11]~input_o\,
	datad => \input_vector[26]~input_o\,
	combout => \add_instance|Z0~2_combout\);

-- Location: LCCOMB_X27_Y25_N18
\add_instance|Z0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z0~4_combout\ = (\add_instance|Z0~0_combout\ & (\add_instance|Z0~3_combout\ & (\add_instance|Z0~1_combout\ & \add_instance|Z0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Z0~0_combout\,
	datab => \add_instance|Z0~3_combout\,
	datac => \add_instance|Z0~1_combout\,
	datad => \add_instance|Z0~2_combout\,
	combout => \add_instance|Z0~4_combout\);

-- Location: LCCOMB_X26_Y25_N28
\add_instance|Z0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z0~10_combout\ = (\input_vector[0]~input_o\) # ((\input_vector[5]~input_o\ & (\add_instance|Z0~9_combout\ & \add_instance|Z0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[0]~input_o\,
	datab => \input_vector[5]~input_o\,
	datac => \add_instance|Z0~9_combout\,
	datad => \add_instance|Z0~4_combout\,
	combout => \add_instance|Z0~10_combout\);

-- Location: LCCOMB_X30_Y25_N4
\add_instance|Z0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_instance|Z0~combout\ = (GLOBAL(\add_instance|C0~0clkctrl_outclk\) & (\add_instance|Z0~10_combout\)) # (!GLOBAL(\add_instance|C0~0clkctrl_outclk\) & ((\add_instance|Z0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Z0~10_combout\,
	datac => \add_instance|Z0~combout\,
	datad => \add_instance|C0~0clkctrl_outclk\,
	combout => \add_instance|Z0~combout\);

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

ww_output_vector(0) <= \output_vector[0]~output_o\;

ww_output_vector(1) <= \output_vector[1]~output_o\;

ww_output_vector(2) <= \output_vector[2]~output_o\;

ww_output_vector(3) <= \output_vector[3]~output_o\;

ww_output_vector(4) <= \output_vector[4]~output_o\;

ww_output_vector(5) <= \output_vector[5]~output_o\;

ww_output_vector(6) <= \output_vector[6]~output_o\;

ww_output_vector(7) <= \output_vector[7]~output_o\;

ww_output_vector(8) <= \output_vector[8]~output_o\;

ww_output_vector(9) <= \output_vector[9]~output_o\;

ww_output_vector(10) <= \output_vector[10]~output_o\;

ww_output_vector(11) <= \output_vector[11]~output_o\;

ww_output_vector(12) <= \output_vector[12]~output_o\;

ww_output_vector(13) <= \output_vector[13]~output_o\;

ww_output_vector(14) <= \output_vector[14]~output_o\;

ww_output_vector(15) <= \output_vector[15]~output_o\;

ww_output_vector(16) <= \output_vector[16]~output_o\;

ww_output_vector(17) <= \output_vector[17]~output_o\;

ww_output_vector(18) <= \output_vector[18]~output_o\;
END structure;


