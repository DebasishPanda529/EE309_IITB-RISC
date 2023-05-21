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

-- DATE "05/06/2023 20:50:29"

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

ENTITY 	instr_fetch IS
    PORT (
	alu3_outp : IN std_logic_vector(15 DOWNTO 0);
	PC_WR : IN std_logic;
	mux9 : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	alu2_out : OUT std_logic_vector(15 DOWNTO 0);
	mem1_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END instr_fetch;

-- Design Ports Information
-- alu2_out[0]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out[1]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out[2]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out[3]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out[4]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out[5]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out[6]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out[7]	=>  Location: PIN_78,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out[8]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out[9]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out[10]	=>  Location: PIN_97,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out[11]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out[12]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out[13]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out[14]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out[15]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_out[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_out[1]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_out[2]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_out[3]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_out[4]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_out[5]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_out[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_out[7]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_out[8]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_out[9]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_out[10]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_out[11]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_out[12]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_out[13]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_out[14]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_out[15]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu3_outp[0]	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux9	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_WR	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu3_outp[1]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu3_outp[2]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu3_outp[3]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu3_outp[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu3_outp[5]	=>  Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu3_outp[6]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu3_outp[7]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu3_outp[8]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu3_outp[9]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu3_outp[10]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu3_outp[11]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu3_outp[12]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu3_outp[13]	=>  Location: PIN_81,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu3_outp[14]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu3_outp[15]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF instr_fetch IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_alu3_outp : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_PC_WR : std_logic;
SIGNAL ww_mux9 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_alu2_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_mem1_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PC_WR~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \alu2_out[0]~output_o\ : std_logic;
SIGNAL \alu2_out[1]~output_o\ : std_logic;
SIGNAL \alu2_out[2]~output_o\ : std_logic;
SIGNAL \alu2_out[3]~output_o\ : std_logic;
SIGNAL \alu2_out[4]~output_o\ : std_logic;
SIGNAL \alu2_out[5]~output_o\ : std_logic;
SIGNAL \alu2_out[6]~output_o\ : std_logic;
SIGNAL \alu2_out[7]~output_o\ : std_logic;
SIGNAL \alu2_out[8]~output_o\ : std_logic;
SIGNAL \alu2_out[9]~output_o\ : std_logic;
SIGNAL \alu2_out[10]~output_o\ : std_logic;
SIGNAL \alu2_out[11]~output_o\ : std_logic;
SIGNAL \alu2_out[12]~output_o\ : std_logic;
SIGNAL \alu2_out[13]~output_o\ : std_logic;
SIGNAL \alu2_out[14]~output_o\ : std_logic;
SIGNAL \alu2_out[15]~output_o\ : std_logic;
SIGNAL \mem1_out[0]~output_o\ : std_logic;
SIGNAL \mem1_out[1]~output_o\ : std_logic;
SIGNAL \mem1_out[2]~output_o\ : std_logic;
SIGNAL \mem1_out[3]~output_o\ : std_logic;
SIGNAL \mem1_out[4]~output_o\ : std_logic;
SIGNAL \mem1_out[5]~output_o\ : std_logic;
SIGNAL \mem1_out[6]~output_o\ : std_logic;
SIGNAL \mem1_out[7]~output_o\ : std_logic;
SIGNAL \mem1_out[8]~output_o\ : std_logic;
SIGNAL \mem1_out[9]~output_o\ : std_logic;
SIGNAL \mem1_out[10]~output_o\ : std_logic;
SIGNAL \mem1_out[11]~output_o\ : std_logic;
SIGNAL \mem1_out[12]~output_o\ : std_logic;
SIGNAL \mem1_out[13]~output_o\ : std_logic;
SIGNAL \mem1_out[14]~output_o\ : std_logic;
SIGNAL \mem1_out[15]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \mux9~input_o\ : std_logic;
SIGNAL \alu3_outp[0]~input_o\ : std_logic;
SIGNAL \pc_inp[0]~0_combout\ : std_logic;
SIGNAL \PC_WR~input_o\ : std_logic;
SIGNAL \PC_WR~inputclkctrl_outclk\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \alu3_outp[1]~input_o\ : std_logic;
SIGNAL \pc_inp[1]~1_combout\ : std_logic;
SIGNAL \alu3_outp[2]~input_o\ : std_logic;
SIGNAL \pc_inp[2]~2_combout\ : std_logic;
SIGNAL \alu3_outp[3]~input_o\ : std_logic;
SIGNAL \pc_inp[3]~3_combout\ : std_logic;
SIGNAL \alu3_outp[4]~input_o\ : std_logic;
SIGNAL \pc_inp[4]~4_combout\ : std_logic;
SIGNAL \pc_instance|pc_out[4]~feeder_combout\ : std_logic;
SIGNAL \alu2_instance|carry~0_combout\ : std_logic;
SIGNAL \alu3_outp[5]~input_o\ : std_logic;
SIGNAL \pc_inp[5]~5_combout\ : std_logic;
SIGNAL \alu3_outp[6]~input_o\ : std_logic;
SIGNAL \pc_inp[6]~6_combout\ : std_logic;
SIGNAL \alu3_outp[7]~input_o\ : std_logic;
SIGNAL \pc_inp[7]~7_combout\ : std_logic;
SIGNAL \alu3_outp[8]~input_o\ : std_logic;
SIGNAL \alu2_instance|carry~1_combout\ : std_logic;
SIGNAL \pc_inp[8]~8_combout\ : std_logic;
SIGNAL \alu3_outp[9]~input_o\ : std_logic;
SIGNAL \pc_inp[9]~9_combout\ : std_logic;
SIGNAL \pc_instance|pc_out[9]~feeder_combout\ : std_logic;
SIGNAL \alu3_outp[10]~input_o\ : std_logic;
SIGNAL \pc_inp[10]~10_combout\ : std_logic;
SIGNAL \alu2_instance|carry~2_combout\ : std_logic;
SIGNAL \alu2_instance|carry~3_combout\ : std_logic;
SIGNAL \alu3_outp[11]~input_o\ : std_logic;
SIGNAL \pc_inp[11]~11_combout\ : std_logic;
SIGNAL \pc_instance|pc_out[11]~feeder_combout\ : std_logic;
SIGNAL \alu3_outp[12]~input_o\ : std_logic;
SIGNAL \pc_inp[12]~12_combout\ : std_logic;
SIGNAL \alu3_outp[13]~input_o\ : std_logic;
SIGNAL \pc_inp[13]~13_combout\ : std_logic;
SIGNAL \alu3_outp[14]~input_o\ : std_logic;
SIGNAL \alu2_instance|carry~4_combout\ : std_logic;
SIGNAL \pc_inp[14]~14_combout\ : std_logic;
SIGNAL \alu3_outp[15]~input_o\ : std_logic;
SIGNAL \pc_inp[15]~15_combout\ : std_logic;
SIGNAL \pc_instance|pc_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \alu2_instance|ALU2_C\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pc_instance|pc_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pc_instance|ALT_INV_pc_out\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \ALT_INV_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_alu3_outp <= alu3_outp;
ww_PC_WR <= PC_WR;
ww_mux9 <= mux9;
ww_CLK <= CLK;
ww_RST <= RST;
alu2_out <= ww_alu2_out;
mem1_out <= ww_mem1_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\PC_WR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PC_WR~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\pc_instance|ALT_INV_pc_out\(1) <= NOT \pc_instance|pc_out\(1);
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

-- Location: IOOBUF_X40_Y0_N2
\alu2_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_instance|pc_out\(0),
	devoe => ww_devoe,
	o => \alu2_out[0]~output_o\);

-- Location: IOOBUF_X60_Y10_N2
\alu2_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_instance|ALT_INV_pc_out\(1),
	devoe => ww_devoe,
	o => \alu2_out[1]~output_o\);

-- Location: IOOBUF_X60_Y31_N23
\alu2_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_instance|ALU2_C\(2),
	devoe => ww_devoe,
	o => \alu2_out[2]~output_o\);

-- Location: IOOBUF_X60_Y23_N9
\alu2_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_instance|ALU2_C\(3),
	devoe => ww_devoe,
	o => \alu2_out[3]~output_o\);

-- Location: IOOBUF_X60_Y10_N16
\alu2_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_instance|ALU2_C\(4),
	devoe => ww_devoe,
	o => \alu2_out[4]~output_o\);

-- Location: IOOBUF_X60_Y22_N16
\alu2_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_instance|ALU2_C\(5),
	devoe => ww_devoe,
	o => \alu2_out[5]~output_o\);

-- Location: IOOBUF_X60_Y13_N16
\alu2_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_instance|ALU2_C\(6),
	devoe => ww_devoe,
	o => \alu2_out[6]~output_o\);

-- Location: IOOBUF_X60_Y8_N9
\alu2_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_instance|ALU2_C\(7),
	devoe => ww_devoe,
	o => \alu2_out[7]~output_o\);

-- Location: IOOBUF_X60_Y23_N23
\alu2_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_instance|ALU2_C\(8),
	devoe => ww_devoe,
	o => \alu2_out[8]~output_o\);

-- Location: IOOBUF_X60_Y2_N16
\alu2_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_instance|ALU2_C\(9),
	devoe => ww_devoe,
	o => \alu2_out[9]~output_o\);

-- Location: IOOBUF_X60_Y22_N9
\alu2_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_instance|ALU2_C\(10),
	devoe => ww_devoe,
	o => \alu2_out[10]~output_o\);

-- Location: IOOBUF_X60_Y10_N9
\alu2_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_instance|ALU2_C\(11),
	devoe => ww_devoe,
	o => \alu2_out[11]~output_o\);

-- Location: IOOBUF_X60_Y8_N2
\alu2_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_instance|ALU2_C\(12),
	devoe => ww_devoe,
	o => \alu2_out[12]~output_o\);

-- Location: IOOBUF_X60_Y13_N23
\alu2_out[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_instance|ALU2_C\(13),
	devoe => ww_devoe,
	o => \alu2_out[13]~output_o\);

-- Location: IOOBUF_X60_Y15_N23
\alu2_out[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_instance|ALU2_C\(14),
	devoe => ww_devoe,
	o => \alu2_out[14]~output_o\);

-- Location: IOOBUF_X60_Y2_N23
\alu2_out[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_instance|ALU2_C\(15),
	devoe => ww_devoe,
	o => \alu2_out[15]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\mem1_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem1_out[0]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\mem1_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem1_out[1]~output_o\);

-- Location: IOOBUF_X25_Y26_N23
\mem1_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem1_out[2]~output_o\);

-- Location: IOOBUF_X25_Y29_N23
\mem1_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem1_out[3]~output_o\);

-- Location: IOOBUF_X0_Y3_N23
\mem1_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem1_out[4]~output_o\);

-- Location: IOOBUF_X40_Y36_N30
\mem1_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem1_out[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\mem1_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem1_out[6]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\mem1_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem1_out[7]~output_o\);

-- Location: IOOBUF_X25_Y27_N16
\mem1_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem1_out[8]~output_o\);

-- Location: IOOBUF_X14_Y21_N2
\mem1_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem1_out[9]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\mem1_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem1_out[10]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\mem1_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem1_out[11]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\mem1_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem1_out[12]~output_o\);

-- Location: IOOBUF_X28_Y36_N9
\mem1_out[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem1_out[13]~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\mem1_out[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem1_out[14]~output_o\);

-- Location: IOOBUF_X12_Y21_N2
\mem1_out[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem1_out[15]~output_o\);

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

-- Location: IOIBUF_X60_Y14_N15
\mux9~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux9,
	o => \mux9~input_o\);

-- Location: IOIBUF_X60_Y23_N1
\alu3_outp[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu3_outp(0),
	o => \alu3_outp[0]~input_o\);

-- Location: LCCOMB_X56_Y15_N12
\pc_inp[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_inp[0]~0_combout\ = (\mux9~input_o\ & ((\alu3_outp[0]~input_o\))) # (!\mux9~input_o\ & (\pc_instance|pc_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_instance|pc_out\(0),
	datac => \mux9~input_o\,
	datad => \alu3_outp[0]~input_o\,
	combout => \pc_inp[0]~0_combout\);

-- Location: IOIBUF_X0_Y11_N22
\PC_WR~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_WR,
	o => \PC_WR~input_o\);

-- Location: CLKCTRL_G4
\PC_WR~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PC_WR~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PC_WR~inputclkctrl_outclk\);

-- Location: LCCOMB_X56_Y15_N26
\pc_instance|pc_data[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|pc_data\(0) = (GLOBAL(\PC_WR~inputclkctrl_outclk\) & (\pc_inp[0]~0_combout\)) # (!GLOBAL(\PC_WR~inputclkctrl_outclk\) & ((\pc_instance|pc_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inp[0]~0_combout\,
	datac => \pc_instance|pc_data\(0),
	datad => \PC_WR~inputclkctrl_outclk\,
	combout => \pc_instance|pc_data\(0));

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

-- Location: FF_X56_Y15_N1
\pc_instance|pc_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \pc_instance|pc_data\(0),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc_out\(0));

-- Location: IOIBUF_X53_Y0_N8
\alu3_outp[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu3_outp(1),
	o => \alu3_outp[1]~input_o\);

-- Location: LCCOMB_X56_Y15_N22
\pc_inp[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_inp[1]~1_combout\ = (\mux9~input_o\ & ((\alu3_outp[1]~input_o\))) # (!\mux9~input_o\ & (!\pc_instance|pc_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|pc_out\(1),
	datab => \mux9~input_o\,
	datad => \alu3_outp[1]~input_o\,
	combout => \pc_inp[1]~1_combout\);

-- Location: LCCOMB_X56_Y15_N4
\pc_instance|pc_data[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|pc_data\(1) = (GLOBAL(\PC_WR~inputclkctrl_outclk\) & ((\pc_inp[1]~1_combout\))) # (!GLOBAL(\PC_WR~inputclkctrl_outclk\) & (\pc_instance|pc_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_instance|pc_data\(1),
	datac => \pc_inp[1]~1_combout\,
	datad => \PC_WR~inputclkctrl_outclk\,
	combout => \pc_instance|pc_data\(1));

-- Location: FF_X56_Y15_N31
\pc_instance|pc_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \pc_instance|pc_data\(1),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc_out\(1));

-- Location: IOIBUF_X40_Y0_N22
\alu3_outp[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu3_outp(2),
	o => \alu3_outp[2]~input_o\);

-- Location: LCCOMB_X56_Y15_N30
\pc_inp[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_inp[2]~2_combout\ = (\mux9~input_o\ & (((\alu3_outp[2]~input_o\)))) # (!\mux9~input_o\ & (\pc_instance|pc_out\(2) $ ((\pc_instance|pc_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|pc_out\(2),
	datab => \mux9~input_o\,
	datac => \pc_instance|pc_out\(1),
	datad => \alu3_outp[2]~input_o\,
	combout => \pc_inp[2]~2_combout\);

-- Location: LCCOMB_X56_Y15_N14
\pc_instance|pc_data[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|pc_data\(2) = (GLOBAL(\PC_WR~inputclkctrl_outclk\) & ((\pc_inp[2]~2_combout\))) # (!GLOBAL(\PC_WR~inputclkctrl_outclk\) & (\pc_instance|pc_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_instance|pc_data\(2),
	datac => \pc_inp[2]~2_combout\,
	datad => \PC_WR~inputclkctrl_outclk\,
	combout => \pc_instance|pc_data\(2));

-- Location: FF_X56_Y15_N17
\pc_instance|pc_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \pc_instance|pc_data\(2),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc_out\(2));

-- Location: LCCOMB_X56_Y15_N16
\alu2_instance|ALU2_C[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_instance|ALU2_C\(2) = \pc_instance|pc_out\(2) $ (\pc_instance|pc_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc_instance|pc_out\(2),
	datad => \pc_instance|pc_out\(1),
	combout => \alu2_instance|ALU2_C\(2));

-- Location: IOIBUF_X53_Y0_N1
\alu3_outp[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu3_outp(3),
	o => \alu3_outp[3]~input_o\);

-- Location: LCCOMB_X56_Y15_N10
\pc_inp[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_inp[3]~3_combout\ = (\mux9~input_o\ & ((\alu3_outp[3]~input_o\))) # (!\mux9~input_o\ & (\alu2_instance|ALU2_C\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux9~input_o\,
	datab => \alu2_instance|ALU2_C\(3),
	datac => \alu3_outp[3]~input_o\,
	combout => \pc_inp[3]~3_combout\);

-- Location: LCCOMB_X56_Y15_N8
\pc_instance|pc_data[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|pc_data\(3) = (GLOBAL(\PC_WR~inputclkctrl_outclk\) & (\pc_inp[3]~3_combout\)) # (!GLOBAL(\PC_WR~inputclkctrl_outclk\) & ((\pc_instance|pc_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inp[3]~3_combout\,
	datac => \pc_instance|pc_data\(3),
	datad => \PC_WR~inputclkctrl_outclk\,
	combout => \pc_instance|pc_data\(3));

-- Location: FF_X56_Y15_N23
\pc_instance|pc_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \pc_instance|pc_data\(3),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc_out\(3));

-- Location: LCCOMB_X56_Y15_N28
\alu2_instance|ALU2_C[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_instance|ALU2_C\(3) = \pc_instance|pc_out\(3) $ (((\pc_instance|pc_out\(1) & \pc_instance|pc_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|pc_out\(1),
	datac => \pc_instance|pc_out\(2),
	datad => \pc_instance|pc_out\(3),
	combout => \alu2_instance|ALU2_C\(3));

-- Location: IOIBUF_X19_Y21_N29
\alu3_outp[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu3_outp(4),
	o => \alu3_outp[4]~input_o\);

-- Location: LCCOMB_X56_Y15_N24
\pc_inp[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_inp[4]~4_combout\ = (\mux9~input_o\ & ((\alu3_outp[4]~input_o\))) # (!\mux9~input_o\ & (\alu2_instance|ALU2_C\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux9~input_o\,
	datab => \alu2_instance|ALU2_C\(4),
	datac => \alu3_outp[4]~input_o\,
	combout => \pc_inp[4]~4_combout\);

-- Location: LCCOMB_X56_Y15_N18
\pc_instance|pc_data[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|pc_data\(4) = (GLOBAL(\PC_WR~inputclkctrl_outclk\) & (\pc_inp[4]~4_combout\)) # (!GLOBAL(\PC_WR~inputclkctrl_outclk\) & ((\pc_instance|pc_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_inp[4]~4_combout\,
	datac => \pc_instance|pc_data\(4),
	datad => \PC_WR~inputclkctrl_outclk\,
	combout => \pc_instance|pc_data\(4));

-- Location: LCCOMB_X56_Y15_N6
\pc_instance|pc_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|pc_out[4]~feeder_combout\ = \pc_instance|pc_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_instance|pc_data\(4),
	combout => \pc_instance|pc_out[4]~feeder_combout\);

-- Location: FF_X56_Y15_N7
\pc_instance|pc_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \pc_instance|pc_out[4]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc_out\(4));

-- Location: LCCOMB_X56_Y15_N20
\alu2_instance|ALU2_C[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_instance|ALU2_C\(4) = \pc_instance|pc_out\(4) $ (((\pc_instance|pc_out\(3) & (\pc_instance|pc_out\(1) & \pc_instance|pc_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|pc_out\(3),
	datab => \pc_instance|pc_out\(1),
	datac => \pc_instance|pc_out\(2),
	datad => \pc_instance|pc_out\(4),
	combout => \alu2_instance|ALU2_C\(4));

-- Location: LCCOMB_X56_Y15_N2
\alu2_instance|carry~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_instance|carry~0_combout\ = (\pc_instance|pc_out\(1) & (\pc_instance|pc_out\(2) & (\pc_instance|pc_out\(3) & \pc_instance|pc_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|pc_out\(1),
	datab => \pc_instance|pc_out\(2),
	datac => \pc_instance|pc_out\(3),
	datad => \pc_instance|pc_out\(4),
	combout => \alu2_instance|carry~0_combout\);

-- Location: IOIBUF_X60_Y22_N23
\alu3_outp[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu3_outp(5),
	o => \alu3_outp[5]~input_o\);

-- Location: LCCOMB_X57_Y15_N0
\pc_inp[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_inp[5]~5_combout\ = (\mux9~input_o\ & (\alu3_outp[5]~input_o\)) # (!\mux9~input_o\ & ((\pc_instance|pc_out\(5) $ (\alu2_instance|carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux9~input_o\,
	datab => \alu3_outp[5]~input_o\,
	datac => \pc_instance|pc_out\(5),
	datad => \alu2_instance|carry~0_combout\,
	combout => \pc_inp[5]~5_combout\);

-- Location: LCCOMB_X57_Y15_N14
\pc_instance|pc_data[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|pc_data\(5) = (GLOBAL(\PC_WR~inputclkctrl_outclk\) & (\pc_inp[5]~5_combout\)) # (!GLOBAL(\PC_WR~inputclkctrl_outclk\) & ((\pc_instance|pc_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inp[5]~5_combout\,
	datac => \pc_instance|pc_data\(5),
	datad => \PC_WR~inputclkctrl_outclk\,
	combout => \pc_instance|pc_data\(5));

-- Location: FF_X57_Y15_N1
\pc_instance|pc_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \pc_instance|pc_data\(5),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc_out\(5));

-- Location: LCCOMB_X56_Y15_N0
\alu2_instance|ALU2_C[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_instance|ALU2_C\(5) = \alu2_instance|carry~0_combout\ $ (\pc_instance|pc_out\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu2_instance|carry~0_combout\,
	datad => \pc_instance|pc_out\(5),
	combout => \alu2_instance|ALU2_C\(5));

-- Location: IOIBUF_X60_Y23_N15
\alu3_outp[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu3_outp(6),
	o => \alu3_outp[6]~input_o\);

-- Location: LCCOMB_X57_Y15_N18
\pc_inp[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_inp[6]~6_combout\ = (\mux9~input_o\ & ((\alu3_outp[6]~input_o\))) # (!\mux9~input_o\ & (\alu2_instance|ALU2_C\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux9~input_o\,
	datab => \alu2_instance|ALU2_C\(6),
	datad => \alu3_outp[6]~input_o\,
	combout => \pc_inp[6]~6_combout\);

-- Location: LCCOMB_X57_Y15_N8
\pc_instance|pc_data[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|pc_data\(6) = (GLOBAL(\PC_WR~inputclkctrl_outclk\) & ((\pc_inp[6]~6_combout\))) # (!GLOBAL(\PC_WR~inputclkctrl_outclk\) & (\pc_instance|pc_data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_instance|pc_data\(6),
	datac => \pc_inp[6]~6_combout\,
	datad => \PC_WR~inputclkctrl_outclk\,
	combout => \pc_instance|pc_data\(6));

-- Location: FF_X57_Y15_N11
\pc_instance|pc_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \pc_instance|pc_data\(6),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc_out\(6));

-- Location: LCCOMB_X57_Y15_N28
\alu2_instance|ALU2_C[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_instance|ALU2_C\(6) = \pc_instance|pc_out\(6) $ (((\pc_instance|pc_out\(5) & \alu2_instance|carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|pc_out\(6),
	datab => \pc_instance|pc_out\(5),
	datad => \alu2_instance|carry~0_combout\,
	combout => \alu2_instance|ALU2_C\(6));

-- Location: IOIBUF_X60_Y31_N15
\alu3_outp[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu3_outp(7),
	o => \alu3_outp[7]~input_o\);

-- Location: LCCOMB_X57_Y15_N26
\pc_inp[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_inp[7]~7_combout\ = (\mux9~input_o\ & (\alu3_outp[7]~input_o\)) # (!\mux9~input_o\ & ((\alu2_instance|ALU2_C\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux9~input_o\,
	datab => \alu3_outp[7]~input_o\,
	datad => \alu2_instance|ALU2_C\(7),
	combout => \pc_inp[7]~7_combout\);

-- Location: LCCOMB_X57_Y15_N22
\pc_instance|pc_data[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|pc_data\(7) = (GLOBAL(\PC_WR~inputclkctrl_outclk\) & ((\pc_inp[7]~7_combout\))) # (!GLOBAL(\PC_WR~inputclkctrl_outclk\) & (\pc_instance|pc_data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|pc_data\(7),
	datac => \PC_WR~inputclkctrl_outclk\,
	datad => \pc_inp[7]~7_combout\,
	combout => \pc_instance|pc_data\(7));

-- Location: FF_X57_Y15_N19
\pc_instance|pc_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \pc_instance|pc_data\(7),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc_out\(7));

-- Location: LCCOMB_X57_Y15_N10
\alu2_instance|ALU2_C[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_instance|ALU2_C\(7) = \pc_instance|pc_out\(7) $ (((\pc_instance|pc_out\(5) & (\pc_instance|pc_out\(6) & \alu2_instance|carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|pc_out\(7),
	datab => \pc_instance|pc_out\(5),
	datac => \pc_instance|pc_out\(6),
	datad => \alu2_instance|carry~0_combout\,
	combout => \alu2_instance|ALU2_C\(7));

-- Location: IOIBUF_X60_Y8_N22
\alu3_outp[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu3_outp(8),
	o => \alu3_outp[8]~input_o\);

-- Location: LCCOMB_X57_Y15_N16
\alu2_instance|carry~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_instance|carry~1_combout\ = (\pc_instance|pc_out\(7) & (\pc_instance|pc_out\(5) & (\pc_instance|pc_out\(6) & \alu2_instance|carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|pc_out\(7),
	datab => \pc_instance|pc_out\(5),
	datac => \pc_instance|pc_out\(6),
	datad => \alu2_instance|carry~0_combout\,
	combout => \alu2_instance|carry~1_combout\);

-- Location: LCCOMB_X57_Y15_N6
\pc_inp[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_inp[8]~8_combout\ = (\mux9~input_o\ & (\alu3_outp[8]~input_o\)) # (!\mux9~input_o\ & ((\pc_instance|pc_out\(8) $ (\alu2_instance|carry~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux9~input_o\,
	datab => \alu3_outp[8]~input_o\,
	datac => \pc_instance|pc_out\(8),
	datad => \alu2_instance|carry~1_combout\,
	combout => \pc_inp[8]~8_combout\);

-- Location: LCCOMB_X57_Y15_N4
\pc_instance|pc_data[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|pc_data\(8) = (GLOBAL(\PC_WR~inputclkctrl_outclk\) & (\pc_inp[8]~8_combout\)) # (!GLOBAL(\PC_WR~inputclkctrl_outclk\) & ((\pc_instance|pc_data\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inp[8]~8_combout\,
	datac => \pc_instance|pc_data\(8),
	datad => \PC_WR~inputclkctrl_outclk\,
	combout => \pc_instance|pc_data\(8));

-- Location: FF_X57_Y15_N27
\pc_instance|pc_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \pc_instance|pc_data\(8),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc_out\(8));

-- Location: LCCOMB_X59_Y15_N24
\alu2_instance|ALU2_C[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_instance|ALU2_C\(8) = \pc_instance|pc_out\(8) $ (\alu2_instance|carry~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc_instance|pc_out\(8),
	datad => \alu2_instance|carry~1_combout\,
	combout => \alu2_instance|ALU2_C\(8));

-- Location: IOIBUF_X60_Y15_N15
\alu3_outp[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu3_outp(9),
	o => \alu3_outp[9]~input_o\);

-- Location: LCCOMB_X59_Y15_N8
\pc_inp[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_inp[9]~9_combout\ = (\mux9~input_o\ & (\alu3_outp[9]~input_o\)) # (!\mux9~input_o\ & ((\alu2_instance|ALU2_C\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux9~input_o\,
	datac => \alu3_outp[9]~input_o\,
	datad => \alu2_instance|ALU2_C\(9),
	combout => \pc_inp[9]~9_combout\);

-- Location: LCCOMB_X59_Y15_N26
\pc_instance|pc_data[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|pc_data\(9) = (GLOBAL(\PC_WR~inputclkctrl_outclk\) & ((\pc_inp[9]~9_combout\))) # (!GLOBAL(\PC_WR~inputclkctrl_outclk\) & (\pc_instance|pc_data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|pc_data\(9),
	datac => \pc_inp[9]~9_combout\,
	datad => \PC_WR~inputclkctrl_outclk\,
	combout => \pc_instance|pc_data\(9));

-- Location: LCCOMB_X59_Y15_N22
\pc_instance|pc_out[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|pc_out[9]~feeder_combout\ = \pc_instance|pc_data\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc_instance|pc_data\(9),
	combout => \pc_instance|pc_out[9]~feeder_combout\);

-- Location: FF_X59_Y15_N23
\pc_instance|pc_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \pc_instance|pc_out[9]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc_out\(9));

-- Location: LCCOMB_X59_Y15_N16
\alu2_instance|ALU2_C[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_instance|ALU2_C\(9) = \pc_instance|pc_out\(9) $ (((\pc_instance|pc_out\(8) & \alu2_instance|carry~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|pc_out\(9),
	datac => \pc_instance|pc_out\(8),
	datad => \alu2_instance|carry~1_combout\,
	combout => \alu2_instance|ALU2_C\(9));

-- Location: IOIBUF_X60_Y14_N22
\alu3_outp[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu3_outp(10),
	o => \alu3_outp[10]~input_o\);

-- Location: LCCOMB_X57_Y15_N20
\pc_inp[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_inp[10]~10_combout\ = (\mux9~input_o\ & (\alu3_outp[10]~input_o\)) # (!\mux9~input_o\ & ((\alu2_instance|ALU2_C\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux9~input_o\,
	datac => \alu3_outp[10]~input_o\,
	datad => \alu2_instance|ALU2_C\(10),
	combout => \pc_inp[10]~10_combout\);

-- Location: LCCOMB_X57_Y15_N30
\pc_instance|pc_data[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|pc_data\(10) = (GLOBAL(\PC_WR~inputclkctrl_outclk\) & ((\pc_inp[10]~10_combout\))) # (!GLOBAL(\PC_WR~inputclkctrl_outclk\) & (\pc_instance|pc_data\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|pc_data\(10),
	datac => \PC_WR~inputclkctrl_outclk\,
	datad => \pc_inp[10]~10_combout\,
	combout => \pc_instance|pc_data\(10));

-- Location: FF_X57_Y15_N29
\pc_instance|pc_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \pc_instance|pc_data\(10),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc_out\(10));

-- Location: LCCOMB_X57_Y15_N24
\alu2_instance|ALU2_C[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_instance|ALU2_C\(10) = \pc_instance|pc_out\(10) $ (((\pc_instance|pc_out\(9) & (\pc_instance|pc_out\(8) & \alu2_instance|carry~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|pc_out\(9),
	datab => \pc_instance|pc_out\(10),
	datac => \pc_instance|pc_out\(8),
	datad => \alu2_instance|carry~1_combout\,
	combout => \alu2_instance|ALU2_C\(10));

-- Location: LCCOMB_X57_Y15_N2
\alu2_instance|carry~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_instance|carry~2_combout\ = (\pc_instance|pc_out\(6) & (\pc_instance|pc_out\(5) & (\pc_instance|pc_out\(10) & \pc_instance|pc_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|pc_out\(6),
	datab => \pc_instance|pc_out\(5),
	datac => \pc_instance|pc_out\(10),
	datad => \pc_instance|pc_out\(7),
	combout => \alu2_instance|carry~2_combout\);

-- Location: LCCOMB_X57_Y15_N12
\alu2_instance|carry~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_instance|carry~3_combout\ = (\pc_instance|pc_out\(9) & (\alu2_instance|carry~2_combout\ & (\pc_instance|pc_out\(8) & \alu2_instance|carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|pc_out\(9),
	datab => \alu2_instance|carry~2_combout\,
	datac => \pc_instance|pc_out\(8),
	datad => \alu2_instance|carry~0_combout\,
	combout => \alu2_instance|carry~3_combout\);

-- Location: IOIBUF_X60_Y2_N1
\alu3_outp[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu3_outp(11),
	o => \alu3_outp[11]~input_o\);

-- Location: LCCOMB_X58_Y15_N14
\pc_inp[11]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_inp[11]~11_combout\ = (\mux9~input_o\ & (\alu3_outp[11]~input_o\)) # (!\mux9~input_o\ & ((\pc_instance|pc_out\(11) $ (\alu2_instance|carry~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu3_outp[11]~input_o\,
	datab => \pc_instance|pc_out\(11),
	datac => \mux9~input_o\,
	datad => \alu2_instance|carry~3_combout\,
	combout => \pc_inp[11]~11_combout\);

-- Location: LCCOMB_X58_Y15_N26
\pc_instance|pc_data[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|pc_data\(11) = (GLOBAL(\PC_WR~inputclkctrl_outclk\) & ((\pc_inp[11]~11_combout\))) # (!GLOBAL(\PC_WR~inputclkctrl_outclk\) & (\pc_instance|pc_data\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|pc_data\(11),
	datac => \pc_inp[11]~11_combout\,
	datad => \PC_WR~inputclkctrl_outclk\,
	combout => \pc_instance|pc_data\(11));

-- Location: LCCOMB_X58_Y15_N12
\pc_instance|pc_out[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|pc_out[11]~feeder_combout\ = \pc_instance|pc_data\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc_instance|pc_data\(11),
	combout => \pc_instance|pc_out[11]~feeder_combout\);

-- Location: FF_X58_Y15_N13
\pc_instance|pc_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \pc_instance|pc_out[11]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc_out\(11));

-- Location: LCCOMB_X58_Y15_N2
\alu2_instance|ALU2_C[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_instance|ALU2_C\(11) = \alu2_instance|carry~3_combout\ $ (\pc_instance|pc_out\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu2_instance|carry~3_combout\,
	datab => \pc_instance|pc_out\(11),
	combout => \alu2_instance|ALU2_C\(11));

-- Location: IOIBUF_X58_Y36_N1
\alu3_outp[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu3_outp(12),
	o => \alu3_outp[12]~input_o\);

-- Location: LCCOMB_X58_Y15_N16
\pc_inp[12]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_inp[12]~12_combout\ = (\mux9~input_o\ & (\alu3_outp[12]~input_o\)) # (!\mux9~input_o\ & ((\alu2_instance|ALU2_C\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux9~input_o\,
	datac => \alu3_outp[12]~input_o\,
	datad => \alu2_instance|ALU2_C\(12),
	combout => \pc_inp[12]~12_combout\);

-- Location: LCCOMB_X58_Y15_N4
\pc_instance|pc_data[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|pc_data\(12) = (GLOBAL(\PC_WR~inputclkctrl_outclk\) & ((\pc_inp[12]~12_combout\))) # (!GLOBAL(\PC_WR~inputclkctrl_outclk\) & (\pc_instance|pc_data\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_instance|pc_data\(12),
	datac => \PC_WR~inputclkctrl_outclk\,
	datad => \pc_inp[12]~12_combout\,
	combout => \pc_instance|pc_data\(12));

-- Location: FF_X58_Y15_N3
\pc_instance|pc_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \pc_instance|pc_data\(12),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc_out\(12));

-- Location: LCCOMB_X58_Y15_N20
\alu2_instance|ALU2_C[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_instance|ALU2_C\(12) = \pc_instance|pc_out\(12) $ (((\pc_instance|pc_out\(11) & \alu2_instance|carry~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_instance|pc_out\(11),
	datac => \pc_instance|pc_out\(12),
	datad => \alu2_instance|carry~3_combout\,
	combout => \alu2_instance|ALU2_C\(12));

-- Location: IOIBUF_X60_Y8_N15
\alu3_outp[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu3_outp(13),
	o => \alu3_outp[13]~input_o\);

-- Location: LCCOMB_X58_Y15_N10
\pc_inp[13]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_inp[13]~13_combout\ = (\mux9~input_o\ & (\alu3_outp[13]~input_o\)) # (!\mux9~input_o\ & ((\alu2_instance|ALU2_C\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu3_outp[13]~input_o\,
	datab => \mux9~input_o\,
	datad => \alu2_instance|ALU2_C\(13),
	combout => \pc_inp[13]~13_combout\);

-- Location: LCCOMB_X58_Y15_N30
\pc_instance|pc_data[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|pc_data\(13) = (GLOBAL(\PC_WR~inputclkctrl_outclk\) & (\pc_inp[13]~13_combout\)) # (!GLOBAL(\PC_WR~inputclkctrl_outclk\) & ((\pc_instance|pc_data\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inp[13]~13_combout\,
	datac => \pc_instance|pc_data\(13),
	datad => \PC_WR~inputclkctrl_outclk\,
	combout => \pc_instance|pc_data\(13));

-- Location: FF_X58_Y15_N7
\pc_instance|pc_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \pc_instance|pc_data\(13),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc_out\(13));

-- Location: LCCOMB_X58_Y15_N0
\alu2_instance|ALU2_C[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_instance|ALU2_C\(13) = \pc_instance|pc_out\(13) $ (((\pc_instance|pc_out\(12) & (\pc_instance|pc_out\(11) & \alu2_instance|carry~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|pc_out\(12),
	datab => \pc_instance|pc_out\(11),
	datac => \pc_instance|pc_out\(13),
	datad => \alu2_instance|carry~3_combout\,
	combout => \alu2_instance|ALU2_C\(13));

-- Location: IOIBUF_X60_Y10_N23
\alu3_outp[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu3_outp(14),
	o => \alu3_outp[14]~input_o\);

-- Location: LCCOMB_X58_Y15_N6
\alu2_instance|carry~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_instance|carry~4_combout\ = (\pc_instance|pc_out\(11) & (\pc_instance|pc_out\(12) & (\pc_instance|pc_out\(13) & \alu2_instance|carry~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|pc_out\(11),
	datab => \pc_instance|pc_out\(12),
	datac => \pc_instance|pc_out\(13),
	datad => \alu2_instance|carry~3_combout\,
	combout => \alu2_instance|carry~4_combout\);

-- Location: LCCOMB_X58_Y15_N18
\pc_inp[14]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_inp[14]~14_combout\ = (\mux9~input_o\ & (\alu3_outp[14]~input_o\)) # (!\mux9~input_o\ & ((\pc_instance|pc_out\(14) $ (\alu2_instance|carry~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu3_outp[14]~input_o\,
	datab => \mux9~input_o\,
	datac => \pc_instance|pc_out\(14),
	datad => \alu2_instance|carry~4_combout\,
	combout => \pc_inp[14]~14_combout\);

-- Location: LCCOMB_X58_Y15_N8
\pc_instance|pc_data[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|pc_data\(14) = (GLOBAL(\PC_WR~inputclkctrl_outclk\) & ((\pc_inp[14]~14_combout\))) # (!GLOBAL(\PC_WR~inputclkctrl_outclk\) & (\pc_instance|pc_data\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_instance|pc_data\(14),
	datac => \PC_WR~inputclkctrl_outclk\,
	datad => \pc_inp[14]~14_combout\,
	combout => \pc_instance|pc_data\(14));

-- Location: FF_X58_Y15_N19
\pc_instance|pc_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \pc_instance|pc_data\(14),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc_out\(14));

-- Location: LCCOMB_X59_Y15_N14
\alu2_instance|ALU2_C[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_instance|ALU2_C\(14) = \pc_instance|pc_out\(14) $ (\alu2_instance|carry~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_instance|pc_out\(14),
	datac => \alu2_instance|carry~4_combout\,
	combout => \alu2_instance|ALU2_C\(14));

-- Location: IOIBUF_X60_Y2_N8
\alu3_outp[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu3_outp(15),
	o => \alu3_outp[15]~input_o\);

-- Location: LCCOMB_X58_Y15_N24
\pc_inp[15]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_inp[15]~15_combout\ = (\mux9~input_o\ & (\alu3_outp[15]~input_o\)) # (!\mux9~input_o\ & ((\alu2_instance|ALU2_C\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux9~input_o\,
	datac => \alu3_outp[15]~input_o\,
	datad => \alu2_instance|ALU2_C\(15),
	combout => \pc_inp[15]~15_combout\);

-- Location: LCCOMB_X58_Y15_N22
\pc_instance|pc_data[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|pc_data\(15) = (GLOBAL(\PC_WR~inputclkctrl_outclk\) & (\pc_inp[15]~15_combout\)) # (!GLOBAL(\PC_WR~inputclkctrl_outclk\) & ((\pc_instance|pc_data\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_inp[15]~15_combout\,
	datac => \pc_instance|pc_data\(15),
	datad => \PC_WR~inputclkctrl_outclk\,
	combout => \pc_instance|pc_data\(15));

-- Location: FF_X58_Y15_N29
\pc_instance|pc_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \pc_instance|pc_data\(15),
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc_out\(15));

-- Location: LCCOMB_X58_Y15_N28
\alu2_instance|ALU2_C[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_instance|ALU2_C\(15) = \pc_instance|pc_out\(15) $ (((\pc_instance|pc_out\(14) & \alu2_instance|carry~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|pc_out\(14),
	datac => \pc_instance|pc_out\(15),
	datad => \alu2_instance|carry~4_combout\,
	combout => \alu2_instance|ALU2_C\(15));

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

ww_alu2_out(0) <= \alu2_out[0]~output_o\;

ww_alu2_out(1) <= \alu2_out[1]~output_o\;

ww_alu2_out(2) <= \alu2_out[2]~output_o\;

ww_alu2_out(3) <= \alu2_out[3]~output_o\;

ww_alu2_out(4) <= \alu2_out[4]~output_o\;

ww_alu2_out(5) <= \alu2_out[5]~output_o\;

ww_alu2_out(6) <= \alu2_out[6]~output_o\;

ww_alu2_out(7) <= \alu2_out[7]~output_o\;

ww_alu2_out(8) <= \alu2_out[8]~output_o\;

ww_alu2_out(9) <= \alu2_out[9]~output_o\;

ww_alu2_out(10) <= \alu2_out[10]~output_o\;

ww_alu2_out(11) <= \alu2_out[11]~output_o\;

ww_alu2_out(12) <= \alu2_out[12]~output_o\;

ww_alu2_out(13) <= \alu2_out[13]~output_o\;

ww_alu2_out(14) <= \alu2_out[14]~output_o\;

ww_alu2_out(15) <= \alu2_out[15]~output_o\;

ww_mem1_out(0) <= \mem1_out[0]~output_o\;

ww_mem1_out(1) <= \mem1_out[1]~output_o\;

ww_mem1_out(2) <= \mem1_out[2]~output_o\;

ww_mem1_out(3) <= \mem1_out[3]~output_o\;

ww_mem1_out(4) <= \mem1_out[4]~output_o\;

ww_mem1_out(5) <= \mem1_out[5]~output_o\;

ww_mem1_out(6) <= \mem1_out[6]~output_o\;

ww_mem1_out(7) <= \mem1_out[7]~output_o\;

ww_mem1_out(8) <= \mem1_out[8]~output_o\;

ww_mem1_out(9) <= \mem1_out[9]~output_o\;

ww_mem1_out(10) <= \mem1_out[10]~output_o\;

ww_mem1_out(11) <= \mem1_out[11]~output_o\;

ww_mem1_out(12) <= \mem1_out[12]~output_o\;

ww_mem1_out(13) <= \mem1_out[13]~output_o\;

ww_mem1_out(14) <= \mem1_out[14]~output_o\;

ww_mem1_out(15) <= \mem1_out[15]~output_o\;
END structure;


