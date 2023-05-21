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

-- DATE "05/03/2023 00:54:08"

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

ENTITY 	pipe_reg2 IS
    PORT (
	alu2_outp : IN std_logic_vector(15 DOWNTO 0);
	mem1_outp : IN std_logic_vector(15 DOWNTO 0);
	CLK : IN std_logic;
	RST : IN std_logic;
	pipe_reg2_enable : IN std_logic;
	ID_inp : OUT std_logic_vector(15 DOWNTO 0);
	alu2_outp_1 : OUT std_logic_vector(15 DOWNTO 0)
	);
END pipe_reg2;

-- Design Ports Information
-- pipe_reg2_enable	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_inp[0]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_inp[1]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_inp[2]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_inp[3]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_inp[4]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_inp[5]	=>  Location: PIN_97,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_inp[6]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_inp[7]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_inp[8]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_inp[9]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_inp[10]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_inp[11]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_inp[12]	=>  Location: PIN_21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_inp[13]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_inp[14]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_inp[15]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[0]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[2]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[3]	=>  Location: PIN_27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[4]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[5]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[6]	=>  Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[7]	=>  Location: PIN_48,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[8]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[9]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[10]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[11]	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[12]	=>  Location: PIN_78,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[13]	=>  Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[14]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[15]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[0]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[1]	=>  Location: PIN_61,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[2]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[3]	=>  Location: PIN_81,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[4]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[5]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[6]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[7]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[8]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[9]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[10]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[11]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[12]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[13]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[14]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[15]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[0]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[1]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[2]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[3]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[4]	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[5]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[6]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[7]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[8]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[9]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[10]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[11]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[12]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[13]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[14]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[15]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pipe_reg2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_alu2_outp : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_mem1_outp : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_pipe_reg2_enable : std_logic;
SIGNAL ww_ID_inp : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_alu2_outp_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pipe_reg2_enable~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \ID_inp[0]~output_o\ : std_logic;
SIGNAL \ID_inp[1]~output_o\ : std_logic;
SIGNAL \ID_inp[2]~output_o\ : std_logic;
SIGNAL \ID_inp[3]~output_o\ : std_logic;
SIGNAL \ID_inp[4]~output_o\ : std_logic;
SIGNAL \ID_inp[5]~output_o\ : std_logic;
SIGNAL \ID_inp[6]~output_o\ : std_logic;
SIGNAL \ID_inp[7]~output_o\ : std_logic;
SIGNAL \ID_inp[8]~output_o\ : std_logic;
SIGNAL \ID_inp[9]~output_o\ : std_logic;
SIGNAL \ID_inp[10]~output_o\ : std_logic;
SIGNAL \ID_inp[11]~output_o\ : std_logic;
SIGNAL \ID_inp[12]~output_o\ : std_logic;
SIGNAL \ID_inp[13]~output_o\ : std_logic;
SIGNAL \ID_inp[14]~output_o\ : std_logic;
SIGNAL \ID_inp[15]~output_o\ : std_logic;
SIGNAL \alu2_outp_1[0]~output_o\ : std_logic;
SIGNAL \alu2_outp_1[1]~output_o\ : std_logic;
SIGNAL \alu2_outp_1[2]~output_o\ : std_logic;
SIGNAL \alu2_outp_1[3]~output_o\ : std_logic;
SIGNAL \alu2_outp_1[4]~output_o\ : std_logic;
SIGNAL \alu2_outp_1[5]~output_o\ : std_logic;
SIGNAL \alu2_outp_1[6]~output_o\ : std_logic;
SIGNAL \alu2_outp_1[7]~output_o\ : std_logic;
SIGNAL \alu2_outp_1[8]~output_o\ : std_logic;
SIGNAL \alu2_outp_1[9]~output_o\ : std_logic;
SIGNAL \alu2_outp_1[10]~output_o\ : std_logic;
SIGNAL \alu2_outp_1[11]~output_o\ : std_logic;
SIGNAL \alu2_outp_1[12]~output_o\ : std_logic;
SIGNAL \alu2_outp_1[13]~output_o\ : std_logic;
SIGNAL \alu2_outp_1[14]~output_o\ : std_logic;
SIGNAL \alu2_outp_1[15]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \mem1_outp[0]~input_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \ID_inp[0]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[1]~input_o\ : std_logic;
SIGNAL \ID_inp[1]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_inp[1]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[2]~input_o\ : std_logic;
SIGNAL \ID_inp[2]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_inp[2]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[3]~input_o\ : std_logic;
SIGNAL \ID_inp[3]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_inp[3]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[4]~input_o\ : std_logic;
SIGNAL \ID_inp[4]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_inp[4]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[5]~input_o\ : std_logic;
SIGNAL \ID_inp[5]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_inp[5]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[6]~input_o\ : std_logic;
SIGNAL \ID_inp[6]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[7]~input_o\ : std_logic;
SIGNAL \ID_inp[7]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_inp[7]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[8]~input_o\ : std_logic;
SIGNAL \ID_inp[8]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_inp[8]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[9]~input_o\ : std_logic;
SIGNAL \ID_inp[9]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[10]~input_o\ : std_logic;
SIGNAL \ID_inp[10]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[11]~input_o\ : std_logic;
SIGNAL \ID_inp[11]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[12]~input_o\ : std_logic;
SIGNAL \ID_inp[12]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_inp[12]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[13]~input_o\ : std_logic;
SIGNAL \ID_inp[13]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_inp[13]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[14]~input_o\ : std_logic;
SIGNAL \ID_inp[14]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_inp[14]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[15]~input_o\ : std_logic;
SIGNAL \ID_inp[15]~reg0feeder_combout\ : std_logic;
SIGNAL \ID_inp[15]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[0]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[0]~reg0feeder_combout\ : std_logic;
SIGNAL \alu2_outp_1[0]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[1]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[1]~reg0feeder_combout\ : std_logic;
SIGNAL \alu2_outp_1[1]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[2]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[2]~reg0feeder_combout\ : std_logic;
SIGNAL \alu2_outp_1[2]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[3]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[3]~reg0feeder_combout\ : std_logic;
SIGNAL \alu2_outp_1[3]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[4]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[4]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[5]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[5]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[6]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[6]~reg0feeder_combout\ : std_logic;
SIGNAL \alu2_outp_1[6]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[7]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[7]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[8]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[8]~reg0feeder_combout\ : std_logic;
SIGNAL \alu2_outp_1[8]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[9]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[9]~reg0feeder_combout\ : std_logic;
SIGNAL \alu2_outp_1[9]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[10]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[10]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[11]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[11]~reg0feeder_combout\ : std_logic;
SIGNAL \alu2_outp_1[11]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[12]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[12]~reg0feeder_combout\ : std_logic;
SIGNAL \alu2_outp_1[12]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[13]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[13]~reg0feeder_combout\ : std_logic;
SIGNAL \alu2_outp_1[13]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[14]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[14]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[15]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[15]~reg0feeder_combout\ : std_logic;
SIGNAL \alu2_outp_1[15]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_alu2_outp <= alu2_outp;
ww_mem1_outp <= mem1_outp;
ww_CLK <= CLK;
ww_RST <= RST;
ww_pipe_reg2_enable <= pipe_reg2_enable;
ID_inp <= ww_ID_inp;
alu2_outp_1 <= ww_alu2_outp_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_CLK~inputclkctrl_outclk\ <= NOT \CLK~inputclkctrl_outclk\;
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y32_N16
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

-- Location: IOOBUF_X6_Y0_N9
\ID_inp[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_inp[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ID_inp[0]~output_o\);

-- Location: IOOBUF_X12_Y21_N9
\ID_inp[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_inp[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ID_inp[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\ID_inp[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_inp[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ID_inp[2]~output_o\);

-- Location: IOOBUF_X60_Y13_N16
\ID_inp[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_inp[3]~reg0_q\,
	devoe => ww_devoe,
	o => \ID_inp[3]~output_o\);

-- Location: IOOBUF_X60_Y10_N2
\ID_inp[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_inp[4]~reg0_q\,
	devoe => ww_devoe,
	o => \ID_inp[4]~output_o\);

-- Location: IOOBUF_X60_Y22_N9
\ID_inp[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_inp[5]~reg0_q\,
	devoe => ww_devoe,
	o => \ID_inp[5]~output_o\);

-- Location: IOOBUF_X25_Y26_N23
\ID_inp[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_inp[6]~reg0_q\,
	devoe => ww_devoe,
	o => \ID_inp[6]~output_o\);

-- Location: IOOBUF_X38_Y36_N16
\ID_inp[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_inp[7]~reg0_q\,
	devoe => ww_devoe,
	o => \ID_inp[7]~output_o\);

-- Location: IOOBUF_X28_Y36_N9
\ID_inp[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_inp[8]~reg0_q\,
	devoe => ww_devoe,
	o => \ID_inp[8]~output_o\);

-- Location: IOOBUF_X12_Y21_N2
\ID_inp[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_inp[9]~reg0_q\,
	devoe => ww_devoe,
	o => \ID_inp[9]~output_o\);

-- Location: IOOBUF_X60_Y10_N24
\ID_inp[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_inp[10]~reg0_q\,
	devoe => ww_devoe,
	o => \ID_inp[10]~output_o\);

-- Location: IOOBUF_X8_Y0_N16
\ID_inp[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_inp[11]~reg0_q\,
	devoe => ww_devoe,
	o => \ID_inp[11]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\ID_inp[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_inp[12]~reg0_q\,
	devoe => ww_devoe,
	o => \ID_inp[12]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\ID_inp[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_inp[13]~reg0_q\,
	devoe => ww_devoe,
	o => \ID_inp[13]~output_o\);

-- Location: IOOBUF_X14_Y21_N30
\ID_inp[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_inp[14]~reg0_q\,
	devoe => ww_devoe,
	o => \ID_inp[14]~output_o\);

-- Location: IOOBUF_X60_Y31_N16
\ID_inp[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_inp[15]~reg0_q\,
	devoe => ww_devoe,
	o => \ID_inp[15]~output_o\);

-- Location: IOOBUF_X25_Y29_N23
\alu2_outp_1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_outp_1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \alu2_outp_1[0]~output_o\);

-- Location: IOOBUF_X14_Y21_N23
\alu2_outp_1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_outp_1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \alu2_outp_1[1]~output_o\);

-- Location: IOOBUF_X25_Y27_N23
\alu2_outp_1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_outp_1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \alu2_outp_1[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\alu2_outp_1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_outp_1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \alu2_outp_1[3]~output_o\);

-- Location: IOOBUF_X28_Y36_N2
\alu2_outp_1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_outp_1[4]~reg0_q\,
	devoe => ww_devoe,
	o => \alu2_outp_1[4]~output_o\);

-- Location: IOOBUF_X25_Y28_N23
\alu2_outp_1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_outp_1[5]~reg0_q\,
	devoe => ww_devoe,
	o => \alu2_outp_1[5]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\alu2_outp_1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_outp_1[6]~reg0_q\,
	devoe => ww_devoe,
	o => \alu2_outp_1[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\alu2_outp_1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_outp_1[7]~reg0_q\,
	devoe => ww_devoe,
	o => \alu2_outp_1[7]~output_o\);

-- Location: IOOBUF_X6_Y0_N30
\alu2_outp_1[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_outp_1[8]~reg0_q\,
	devoe => ww_devoe,
	o => \alu2_outp_1[8]~output_o\);

-- Location: IOOBUF_X25_Y26_N16
\alu2_outp_1[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_outp_1[9]~reg0_q\,
	devoe => ww_devoe,
	o => \alu2_outp_1[9]~output_o\);

-- Location: IOOBUF_X8_Y21_N23
\alu2_outp_1[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_outp_1[10]~reg0_q\,
	devoe => ww_devoe,
	o => \alu2_outp_1[10]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\alu2_outp_1[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_outp_1[11]~reg0_q\,
	devoe => ww_devoe,
	o => \alu2_outp_1[11]~output_o\);

-- Location: IOOBUF_X60_Y8_N9
\alu2_outp_1[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_outp_1[12]~reg0_q\,
	devoe => ww_devoe,
	o => \alu2_outp_1[12]~output_o\);

-- Location: IOOBUF_X60_Y22_N24
\alu2_outp_1[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_outp_1[13]~reg0_q\,
	devoe => ww_devoe,
	o => \alu2_outp_1[13]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\alu2_outp_1[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_outp_1[14]~reg0_q\,
	devoe => ww_devoe,
	o => \alu2_outp_1[14]~output_o\);

-- Location: IOOBUF_X60_Y8_N23
\alu2_outp_1[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_outp_1[15]~reg0_q\,
	devoe => ww_devoe,
	o => \alu2_outp_1[15]~output_o\);

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

-- Location: IOIBUF_X0_Y3_N15
\mem1_outp[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem1_outp(0),
	o => \mem1_outp[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
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

-- Location: CLKCTRL_G4
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

-- Location: FF_X1_Y2_N1
\ID_inp[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \mem1_outp[0]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_inp[0]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N29
\mem1_outp[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem1_outp(1),
	o => \mem1_outp[1]~input_o\);

-- Location: LCCOMB_X35_Y16_N0
\ID_inp[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ID_inp[1]~reg0feeder_combout\ = \mem1_outp[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem1_outp[1]~input_o\,
	combout => \ID_inp[1]~reg0feeder_combout\);

-- Location: FF_X35_Y16_N1
\ID_inp[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \ID_inp[1]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_inp[1]~reg0_q\);

-- Location: IOIBUF_X24_Y0_N1
\mem1_outp[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem1_outp(2),
	o => \mem1_outp[2]~input_o\);

-- Location: LCCOMB_X24_Y1_N24
\ID_inp[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ID_inp[2]~reg0feeder_combout\ = \mem1_outp[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem1_outp[2]~input_o\,
	combout => \ID_inp[2]~reg0feeder_combout\);

-- Location: FF_X24_Y1_N25
\ID_inp[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \ID_inp[2]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_inp[2]~reg0_q\);

-- Location: IOIBUF_X60_Y8_N15
\mem1_outp[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem1_outp(3),
	o => \mem1_outp[3]~input_o\);

-- Location: LCCOMB_X59_Y11_N24
\ID_inp[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ID_inp[3]~reg0feeder_combout\ = \mem1_outp[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem1_outp[3]~input_o\,
	combout => \ID_inp[3]~reg0feeder_combout\);

-- Location: FF_X59_Y11_N25
\ID_inp[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \ID_inp[3]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_inp[3]~reg0_q\);

-- Location: IOIBUF_X60_Y10_N8
\mem1_outp[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem1_outp(4),
	o => \mem1_outp[4]~input_o\);

-- Location: LCCOMB_X59_Y10_N16
\ID_inp[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ID_inp[4]~reg0feeder_combout\ = \mem1_outp[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem1_outp[4]~input_o\,
	combout => \ID_inp[4]~reg0feeder_combout\);

-- Location: FF_X59_Y10_N17
\ID_inp[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \ID_inp[4]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_inp[4]~reg0_q\);

-- Location: IOIBUF_X60_Y22_N15
\mem1_outp[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem1_outp(5),
	o => \mem1_outp[5]~input_o\);

-- Location: LCCOMB_X59_Y22_N16
\ID_inp[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ID_inp[5]~reg0feeder_combout\ = \mem1_outp[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem1_outp[5]~input_o\,
	combout => \ID_inp[5]~reg0feeder_combout\);

-- Location: FF_X59_Y22_N17
\ID_inp[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \ID_inp[5]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_inp[5]~reg0_q\);

-- Location: IOIBUF_X60_Y23_N15
\mem1_outp[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem1_outp(6),
	o => \mem1_outp[6]~input_o\);

-- Location: FF_X41_Y26_N9
\ID_inp[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \mem1_outp[6]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_inp[6]~reg0_q\);

-- Location: IOIBUF_X40_Y36_N29
\mem1_outp[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem1_outp(7),
	o => \mem1_outp[7]~input_o\);

-- Location: LCCOMB_X39_Y35_N24
\ID_inp[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ID_inp[7]~reg0feeder_combout\ = \mem1_outp[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem1_outp[7]~input_o\,
	combout => \ID_inp[7]~reg0feeder_combout\);

-- Location: FF_X39_Y35_N25
\ID_inp[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \ID_inp[7]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_inp[7]~reg0_q\);

-- Location: IOIBUF_X40_Y36_N15
\mem1_outp[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem1_outp(8),
	o => \mem1_outp[8]~input_o\);

-- Location: LCCOMB_X34_Y32_N0
\ID_inp[8]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ID_inp[8]~reg0feeder_combout\ = \mem1_outp[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem1_outp[8]~input_o\,
	combout => \ID_inp[8]~reg0feeder_combout\);

-- Location: FF_X34_Y32_N1
\ID_inp[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \ID_inp[8]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_inp[8]~reg0_q\);

-- Location: IOIBUF_X16_Y21_N15
\mem1_outp[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem1_outp(9),
	o => \mem1_outp[9]~input_o\);

-- Location: FF_X13_Y20_N1
\ID_inp[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \mem1_outp[9]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_inp[9]~reg0_q\);

-- Location: IOIBUF_X60_Y13_N22
\mem1_outp[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem1_outp(10),
	o => \mem1_outp[10]~input_o\);

-- Location: FF_X59_Y10_N3
\ID_inp[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \mem1_outp[10]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_inp[10]~reg0_q\);

-- Location: IOIBUF_X14_Y0_N1
\mem1_outp[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem1_outp(11),
	o => \mem1_outp[11]~input_o\);

-- Location: FF_X14_Y1_N25
\ID_inp[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \mem1_outp[11]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_inp[11]~reg0_q\);

-- Location: IOIBUF_X10_Y21_N1
\mem1_outp[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem1_outp(12),
	o => \mem1_outp[12]~input_o\);

-- Location: LCCOMB_X11_Y16_N8
\ID_inp[12]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ID_inp[12]~reg0feeder_combout\ = \mem1_outp[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem1_outp[12]~input_o\,
	combout => \ID_inp[12]~reg0feeder_combout\);

-- Location: FF_X11_Y16_N9
\ID_inp[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \ID_inp[12]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_inp[12]~reg0_q\);

-- Location: IOIBUF_X0_Y15_N22
\mem1_outp[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem1_outp(13),
	o => \mem1_outp[13]~input_o\);

-- Location: LCCOMB_X1_Y15_N16
\ID_inp[13]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ID_inp[13]~reg0feeder_combout\ = \mem1_outp[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem1_outp[13]~input_o\,
	combout => \ID_inp[13]~reg0feeder_combout\);

-- Location: FF_X1_Y15_N17
\ID_inp[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \ID_inp[13]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_inp[13]~reg0_q\);

-- Location: IOIBUF_X14_Y0_N8
\mem1_outp[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem1_outp(14),
	o => \mem1_outp[14]~input_o\);

-- Location: LCCOMB_X14_Y14_N16
\ID_inp[14]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ID_inp[14]~reg0feeder_combout\ = \mem1_outp[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem1_outp[14]~input_o\,
	combout => \ID_inp[14]~reg0feeder_combout\);

-- Location: FF_X14_Y14_N17
\ID_inp[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \ID_inp[14]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_inp[14]~reg0_q\);

-- Location: IOIBUF_X60_Y31_N22
\mem1_outp[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem1_outp(15),
	o => \mem1_outp[15]~input_o\);

-- Location: LCCOMB_X59_Y30_N0
\ID_inp[15]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ID_inp[15]~reg0feeder_combout\ = \mem1_outp[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem1_outp[15]~input_o\,
	combout => \ID_inp[15]~reg0feeder_combout\);

-- Location: FF_X59_Y30_N1
\ID_inp[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \ID_inp[15]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_inp[15]~reg0_q\);

-- Location: IOIBUF_X25_Y29_N15
\alu2_outp[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_outp(0),
	o => \alu2_outp[0]~input_o\);

-- Location: LCCOMB_X28_Y32_N16
\alu2_outp_1[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[0]~reg0feeder_combout\ = \alu2_outp[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu2_outp[0]~input_o\,
	combout => \alu2_outp_1[0]~reg0feeder_combout\);

-- Location: FF_X28_Y32_N17
\alu2_outp_1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \alu2_outp_1[0]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[0]~reg0_q\);

-- Location: IOIBUF_X19_Y21_N22
\alu2_outp[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_outp(1),
	o => \alu2_outp[1]~input_o\);

-- Location: LCCOMB_X22_Y19_N8
\alu2_outp_1[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[1]~reg0feeder_combout\ = \alu2_outp[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu2_outp[1]~input_o\,
	combout => \alu2_outp_1[1]~reg0feeder_combout\);

-- Location: FF_X22_Y19_N9
\alu2_outp_1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \alu2_outp_1[1]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[1]~reg0_q\);

-- Location: IOIBUF_X60_Y23_N22
\alu2_outp[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_outp(2),
	o => \alu2_outp[2]~input_o\);

-- Location: LCCOMB_X59_Y30_N2
\alu2_outp_1[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[2]~reg0feeder_combout\ = \alu2_outp[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu2_outp[2]~input_o\,
	combout => \alu2_outp_1[2]~reg0feeder_combout\);

-- Location: FF_X59_Y30_N3
\alu2_outp_1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \alu2_outp_1[2]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[2]~reg0_q\);

-- Location: IOIBUF_X0_Y18_N1
\alu2_outp[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_outp(3),
	o => \alu2_outp[3]~input_o\);

-- Location: LCCOMB_X4_Y15_N8
\alu2_outp_1[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[3]~reg0feeder_combout\ = \alu2_outp[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu2_outp[3]~input_o\,
	combout => \alu2_outp_1[3]~reg0feeder_combout\);

-- Location: FF_X4_Y15_N9
\alu2_outp_1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \alu2_outp_1[3]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[3]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N8
\alu2_outp[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_outp(4),
	o => \alu2_outp[4]~input_o\);

-- Location: FF_X36_Y1_N9
\alu2_outp_1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \alu2_outp[4]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[4]~reg0_q\);

-- Location: IOIBUF_X25_Y28_N15
\alu2_outp[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_outp(5),
	o => \alu2_outp[5]~input_o\);

-- Location: FF_X27_Y28_N9
\alu2_outp_1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \alu2_outp[5]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[5]~reg0_q\);

-- Location: IOIBUF_X10_Y21_N15
\alu2_outp[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_outp(6),
	o => \alu2_outp[6]~input_o\);

-- Location: LCCOMB_X6_Y20_N16
\alu2_outp_1[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[6]~reg0feeder_combout\ = \alu2_outp[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu2_outp[6]~input_o\,
	combout => \alu2_outp_1[6]~reg0feeder_combout\);

-- Location: FF_X6_Y20_N17
\alu2_outp_1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \alu2_outp_1[6]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[6]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N15
\alu2_outp[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_outp(7),
	o => \alu2_outp[7]~input_o\);

-- Location: FF_X16_Y1_N25
\alu2_outp_1[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \alu2_outp[7]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[7]~reg0_q\);

-- Location: IOIBUF_X3_Y0_N1
\alu2_outp[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_outp(8),
	o => \alu2_outp[8]~input_o\);

-- Location: LCCOMB_X3_Y2_N24
\alu2_outp_1[8]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[8]~reg0feeder_combout\ = \alu2_outp[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu2_outp[8]~input_o\,
	combout => \alu2_outp_1[8]~reg0feeder_combout\);

-- Location: FF_X3_Y2_N25
\alu2_outp_1[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \alu2_outp_1[8]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[8]~reg0_q\);

-- Location: IOIBUF_X14_Y21_N1
\alu2_outp[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_outp(9),
	o => \alu2_outp[9]~input_o\);

-- Location: LCCOMB_X25_Y19_N0
\alu2_outp_1[9]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[9]~reg0feeder_combout\ = \alu2_outp[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu2_outp[9]~input_o\,
	combout => \alu2_outp_1[9]~reg0feeder_combout\);

-- Location: FF_X25_Y19_N1
\alu2_outp_1[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \alu2_outp_1[9]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[9]~reg0_q\);

-- Location: IOIBUF_X8_Y21_N15
\alu2_outp[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_outp(10),
	o => \alu2_outp[10]~input_o\);

-- Location: FF_X8_Y20_N25
\alu2_outp_1[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \alu2_outp[10]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[10]~reg0_q\);

-- Location: IOIBUF_X0_Y3_N22
\alu2_outp[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_outp(11),
	o => \alu2_outp[11]~input_o\);

-- Location: LCCOMB_X2_Y15_N0
\alu2_outp_1[11]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[11]~reg0feeder_combout\ = \alu2_outp[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu2_outp[11]~input_o\,
	combout => \alu2_outp_1[11]~reg0feeder_combout\);

-- Location: FF_X2_Y15_N1
\alu2_outp_1[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \alu2_outp_1[11]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[11]~reg0_q\);

-- Location: IOIBUF_X60_Y8_N1
\alu2_outp[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_outp(12),
	o => \alu2_outp[12]~input_o\);

-- Location: LCCOMB_X59_Y8_N16
\alu2_outp_1[12]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[12]~reg0feeder_combout\ = \alu2_outp[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu2_outp[12]~input_o\,
	combout => \alu2_outp_1[12]~reg0feeder_combout\);

-- Location: FF_X59_Y8_N17
\alu2_outp_1[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \alu2_outp_1[12]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[12]~reg0_q\);

-- Location: IOIBUF_X19_Y21_N29
\alu2_outp[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_outp(13),
	o => \alu2_outp[13]~input_o\);

-- Location: LCCOMB_X31_Y22_N0
\alu2_outp_1[13]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[13]~reg0feeder_combout\ = \alu2_outp[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu2_outp[13]~input_o\,
	combout => \alu2_outp_1[13]~reg0feeder_combout\);

-- Location: FF_X31_Y22_N1
\alu2_outp_1[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \alu2_outp_1[13]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[13]~reg0_q\);

-- Location: IOIBUF_X40_Y0_N29
\alu2_outp[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_outp(14),
	o => \alu2_outp[14]~input_o\);

-- Location: FF_X39_Y2_N1
\alu2_outp_1[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \alu2_outp[14]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[14]~reg0_q\);

-- Location: IOIBUF_X60_Y10_N15
\alu2_outp[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_outp(15),
	o => \alu2_outp[15]~input_o\);

-- Location: LCCOMB_X58_Y10_N24
\alu2_outp_1[15]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[15]~reg0feeder_combout\ = \alu2_outp[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu2_outp[15]~input_o\,
	combout => \alu2_outp_1[15]~reg0feeder_combout\);

-- Location: FF_X58_Y10_N25
\alu2_outp_1[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \alu2_outp_1[15]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[15]~reg0_q\);

-- Location: IOIBUF_X24_Y0_N8
\pipe_reg2_enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pipe_reg2_enable,
	o => \pipe_reg2_enable~input_o\);

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

ww_ID_inp(0) <= \ID_inp[0]~output_o\;

ww_ID_inp(1) <= \ID_inp[1]~output_o\;

ww_ID_inp(2) <= \ID_inp[2]~output_o\;

ww_ID_inp(3) <= \ID_inp[3]~output_o\;

ww_ID_inp(4) <= \ID_inp[4]~output_o\;

ww_ID_inp(5) <= \ID_inp[5]~output_o\;

ww_ID_inp(6) <= \ID_inp[6]~output_o\;

ww_ID_inp(7) <= \ID_inp[7]~output_o\;

ww_ID_inp(8) <= \ID_inp[8]~output_o\;

ww_ID_inp(9) <= \ID_inp[9]~output_o\;

ww_ID_inp(10) <= \ID_inp[10]~output_o\;

ww_ID_inp(11) <= \ID_inp[11]~output_o\;

ww_ID_inp(12) <= \ID_inp[12]~output_o\;

ww_ID_inp(13) <= \ID_inp[13]~output_o\;

ww_ID_inp(14) <= \ID_inp[14]~output_o\;

ww_ID_inp(15) <= \ID_inp[15]~output_o\;

ww_alu2_outp_1(0) <= \alu2_outp_1[0]~output_o\;

ww_alu2_outp_1(1) <= \alu2_outp_1[1]~output_o\;

ww_alu2_outp_1(2) <= \alu2_outp_1[2]~output_o\;

ww_alu2_outp_1(3) <= \alu2_outp_1[3]~output_o\;

ww_alu2_outp_1(4) <= \alu2_outp_1[4]~output_o\;

ww_alu2_outp_1(5) <= \alu2_outp_1[5]~output_o\;

ww_alu2_outp_1(6) <= \alu2_outp_1[6]~output_o\;

ww_alu2_outp_1(7) <= \alu2_outp_1[7]~output_o\;

ww_alu2_outp_1(8) <= \alu2_outp_1[8]~output_o\;

ww_alu2_outp_1(9) <= \alu2_outp_1[9]~output_o\;

ww_alu2_outp_1(10) <= \alu2_outp_1[10]~output_o\;

ww_alu2_outp_1(11) <= \alu2_outp_1[11]~output_o\;

ww_alu2_outp_1(12) <= \alu2_outp_1[12]~output_o\;

ww_alu2_outp_1(13) <= \alu2_outp_1[13]~output_o\;

ww_alu2_outp_1(14) <= \alu2_outp_1[14]~output_o\;

ww_alu2_outp_1(15) <= \alu2_outp_1[15]~output_o\;
END structure;


