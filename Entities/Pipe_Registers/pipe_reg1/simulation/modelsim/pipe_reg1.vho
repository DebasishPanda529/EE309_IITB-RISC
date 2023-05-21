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

-- DATE "05/05/2023 00:34:20"

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

ENTITY 	pipe_reg1 IS
    PORT (
	alu2_outp : IN std_logic_vector(15 DOWNTO 0);
	mem1_outp : IN std_logic_vector(15 DOWNTO 0);
	CLK : IN std_logic;
	RST : IN std_logic;
	pipe_reg1_enable : IN std_logic;
	instr_ID_1 : OUT std_logic_vector(15 DOWNTO 0);
	alu2_outp_1 : OUT std_logic_vector(15 DOWNTO 0)
	);
END pipe_reg1;

-- Design Ports Information
-- instr_ID_1[0]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_ID_1[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_ID_1[2]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_ID_1[3]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_ID_1[4]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_ID_1[5]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_ID_1[6]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_ID_1[7]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_ID_1[8]	=>  Location: PIN_61,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_ID_1[9]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_ID_1[10]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_ID_1[11]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_ID_1[12]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_ID_1[13]	=>  Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_ID_1[14]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_ID_1[15]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[0]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[1]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[2]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[3]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[4]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[5]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[6]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[7]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[8]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[9]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[10]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[11]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[12]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[13]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[14]	=>  Location: PIN_48,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp_1[15]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[0]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pipe_reg1_enable	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[1]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[2]	=>  Location: PIN_78,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[3]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[4]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[5]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[6]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[7]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[8]	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[9]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[10]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[11]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[12]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[13]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[14]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem1_outp[15]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[1]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[2]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[3]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[4]	=>  Location: PIN_27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[5]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[6]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[7]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[8]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[9]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[10]	=>  Location: PIN_81,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[11]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[12]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[13]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[14]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_outp[15]	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pipe_reg1 IS
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
SIGNAL ww_pipe_reg1_enable : std_logic;
SIGNAL ww_instr_ID_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_alu2_outp_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pipe_reg1_enable~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \instr_ID_1[0]~output_o\ : std_logic;
SIGNAL \instr_ID_1[1]~output_o\ : std_logic;
SIGNAL \instr_ID_1[2]~output_o\ : std_logic;
SIGNAL \instr_ID_1[3]~output_o\ : std_logic;
SIGNAL \instr_ID_1[4]~output_o\ : std_logic;
SIGNAL \instr_ID_1[5]~output_o\ : std_logic;
SIGNAL \instr_ID_1[6]~output_o\ : std_logic;
SIGNAL \instr_ID_1[7]~output_o\ : std_logic;
SIGNAL \instr_ID_1[8]~output_o\ : std_logic;
SIGNAL \instr_ID_1[9]~output_o\ : std_logic;
SIGNAL \instr_ID_1[10]~output_o\ : std_logic;
SIGNAL \instr_ID_1[11]~output_o\ : std_logic;
SIGNAL \instr_ID_1[12]~output_o\ : std_logic;
SIGNAL \instr_ID_1[13]~output_o\ : std_logic;
SIGNAL \instr_ID_1[14]~output_o\ : std_logic;
SIGNAL \instr_ID_1[15]~output_o\ : std_logic;
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
SIGNAL \pipe_reg1_enable~input_o\ : std_logic;
SIGNAL \pipe_reg1_enable~inputclkctrl_outclk\ : std_logic;
SIGNAL \instr_ID_1[0]~reg0feeder_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \instr_ID_1[0]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[1]~input_o\ : std_logic;
SIGNAL \instr_ID_1[1]~reg0feeder_combout\ : std_logic;
SIGNAL \instr_ID_1[1]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[2]~input_o\ : std_logic;
SIGNAL \instr_ID_1[2]~reg0feeder_combout\ : std_logic;
SIGNAL \instr_ID_1[2]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[3]~input_o\ : std_logic;
SIGNAL \instr_ID_1[3]~reg0feeder_combout\ : std_logic;
SIGNAL \instr_ID_1[3]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[4]~input_o\ : std_logic;
SIGNAL \instr_ID_1[4]~reg0feeder_combout\ : std_logic;
SIGNAL \instr_ID_1[4]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[5]~input_o\ : std_logic;
SIGNAL \instr_ID_1[5]~reg0feeder_combout\ : std_logic;
SIGNAL \instr_ID_1[5]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[6]~input_o\ : std_logic;
SIGNAL \instr_ID_1[6]~reg0feeder_combout\ : std_logic;
SIGNAL \instr_ID_1[6]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[7]~input_o\ : std_logic;
SIGNAL \instr_ID_1[7]~reg0feeder_combout\ : std_logic;
SIGNAL \instr_ID_1[7]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[8]~input_o\ : std_logic;
SIGNAL \instr_ID_1[8]~reg0feeder_combout\ : std_logic;
SIGNAL \instr_ID_1[8]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[9]~input_o\ : std_logic;
SIGNAL \instr_ID_1[9]~reg0feeder_combout\ : std_logic;
SIGNAL \instr_ID_1[9]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[10]~input_o\ : std_logic;
SIGNAL \instr_ID_1[10]~reg0feeder_combout\ : std_logic;
SIGNAL \instr_ID_1[10]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[11]~input_o\ : std_logic;
SIGNAL \instr_ID_1[11]~reg0feeder_combout\ : std_logic;
SIGNAL \instr_ID_1[11]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[12]~input_o\ : std_logic;
SIGNAL \instr_ID_1[12]~reg0feeder_combout\ : std_logic;
SIGNAL \instr_ID_1[12]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[13]~input_o\ : std_logic;
SIGNAL \instr_ID_1[13]~reg0feeder_combout\ : std_logic;
SIGNAL \instr_ID_1[13]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[14]~input_o\ : std_logic;
SIGNAL \instr_ID_1[14]~reg0feeder_combout\ : std_logic;
SIGNAL \instr_ID_1[14]~reg0_q\ : std_logic;
SIGNAL \mem1_outp[15]~input_o\ : std_logic;
SIGNAL \instr_ID_1[15]~reg0feeder_combout\ : std_logic;
SIGNAL \instr_ID_1[15]~reg0_q\ : std_logic;
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
SIGNAL \alu2_outp_1[4]~reg0feeder_combout\ : std_logic;
SIGNAL \alu2_outp_1[4]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[5]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[5]~reg0feeder_combout\ : std_logic;
SIGNAL \alu2_outp_1[5]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[6]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[6]~reg0feeder_combout\ : std_logic;
SIGNAL \alu2_outp_1[6]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[7]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[7]~reg0feeder_combout\ : std_logic;
SIGNAL \alu2_outp_1[7]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[8]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[8]~reg0feeder_combout\ : std_logic;
SIGNAL \alu2_outp_1[8]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[9]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[9]~reg0feeder_combout\ : std_logic;
SIGNAL \alu2_outp_1[9]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[10]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[10]~reg0feeder_combout\ : std_logic;
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
SIGNAL \alu2_outp_1[14]~reg0feeder_combout\ : std_logic;
SIGNAL \alu2_outp_1[14]~reg0_q\ : std_logic;
SIGNAL \alu2_outp[15]~input_o\ : std_logic;
SIGNAL \alu2_outp_1[15]~reg0feeder_combout\ : std_logic;
SIGNAL \alu2_outp_1[15]~reg0_q\ : std_logic;
SIGNAL mem1_data : std_logic_vector(15 DOWNTO 0);
SIGNAL alu2_data : std_logic_vector(15 DOWNTO 0);
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
ww_pipe_reg1_enable <= pipe_reg1_enable;
instr_ID_1 <= ww_instr_ID_1;
alu2_outp_1 <= ww_alu2_outp_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\pipe_reg1_enable~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pipe_reg1_enable~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_CLK~inputclkctrl_outclk\ <= NOT \CLK~inputclkctrl_outclk\;
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y34_N4
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

-- Location: IOOBUF_X8_Y21_N16
\instr_ID_1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_ID_1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_ID_1[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\instr_ID_1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_ID_1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_ID_1[1]~output_o\);

-- Location: IOOBUF_X60_Y8_N2
\instr_ID_1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_ID_1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_ID_1[2]~output_o\);

-- Location: IOOBUF_X12_Y21_N30
\instr_ID_1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_ID_1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_ID_1[3]~output_o\);

-- Location: IOOBUF_X0_Y3_N16
\instr_ID_1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_ID_1[4]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_ID_1[4]~output_o\);

-- Location: IOOBUF_X60_Y15_N16
\instr_ID_1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_ID_1[5]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_ID_1[5]~output_o\);

-- Location: IOOBUF_X60_Y15_N23
\instr_ID_1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_ID_1[6]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_ID_1[6]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\instr_ID_1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_ID_1[7]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_ID_1[7]~output_o\);

-- Location: IOOBUF_X36_Y0_N30
\instr_ID_1[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_ID_1[8]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_ID_1[8]~output_o\);

-- Location: IOOBUF_X38_Y36_N16
\instr_ID_1[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_ID_1[9]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_ID_1[9]~output_o\);

-- Location: IOOBUF_X60_Y2_N16
\instr_ID_1[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_ID_1[10]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_ID_1[10]~output_o\);

-- Location: IOOBUF_X28_Y36_N9
\instr_ID_1[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_ID_1[11]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_ID_1[11]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\instr_ID_1[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_ID_1[12]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_ID_1[12]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\instr_ID_1[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_ID_1[13]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_ID_1[13]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\instr_ID_1[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_ID_1[14]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_ID_1[14]~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\instr_ID_1[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_ID_1[15]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_ID_1[15]~output_o\);

-- Location: IOOBUF_X60_Y8_N23
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

-- Location: IOOBUF_X25_Y29_N16
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

-- Location: IOOBUF_X16_Y21_N16
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

-- Location: IOOBUF_X3_Y0_N2
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

-- Location: IOOBUF_X0_Y15_N16
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

-- Location: IOOBUF_X60_Y23_N16
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

-- Location: IOOBUF_X60_Y14_N23
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

-- Location: IOOBUF_X12_Y21_N9
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

-- Location: IOOBUF_X60_Y13_N16
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

-- Location: IOOBUF_X8_Y0_N9
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

-- Location: IOOBUF_X60_Y10_N16
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

-- Location: IOOBUF_X14_Y0_N9
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

-- Location: IOOBUF_X24_Y0_N9
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

-- Location: IOOBUF_X25_Y28_N23
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

-- Location: IOOBUF_X16_Y0_N30
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

-- Location: IOOBUF_X60_Y23_N23
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

-- Location: IOIBUF_X8_Y21_N22
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
\pipe_reg1_enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pipe_reg1_enable,
	o => \pipe_reg1_enable~input_o\);

-- Location: CLKCTRL_G4
\pipe_reg1_enable~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pipe_reg1_enable~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pipe_reg1_enable~inputclkctrl_outclk\);

-- Location: LCCOMB_X8_Y19_N22
\mem1_data[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mem1_data(0) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\mem1_outp[0]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((mem1_data(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem1_outp[0]~input_o\,
	datac => mem1_data(0),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => mem1_data(0));

-- Location: LCCOMB_X8_Y19_N24
\instr_ID_1[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_ID_1[0]~reg0feeder_combout\ = mem1_data(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mem1_data(0),
	combout => \instr_ID_1[0]~reg0feeder_combout\);

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

-- Location: FF_X8_Y19_N25
\instr_ID_1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \instr_ID_1[0]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_ID_1[0]~reg0_q\);

-- Location: IOIBUF_X21_Y0_N1
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

-- Location: LCCOMB_X17_Y1_N22
\mem1_data[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mem1_data(1) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\mem1_outp[1]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((mem1_data(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem1_outp[1]~input_o\,
	datac => mem1_data(1),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => mem1_data(1));

-- Location: LCCOMB_X17_Y1_N24
\instr_ID_1[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_ID_1[1]~reg0feeder_combout\ = mem1_data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mem1_data(1),
	combout => \instr_ID_1[1]~reg0feeder_combout\);

-- Location: FF_X17_Y1_N25
\instr_ID_1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \instr_ID_1[1]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_ID_1[1]~reg0_q\);

-- Location: IOIBUF_X60_Y8_N8
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

-- Location: LCCOMB_X57_Y9_N30
\mem1_data[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mem1_data(2) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\mem1_outp[2]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((mem1_data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem1_outp[2]~input_o\,
	datac => mem1_data(2),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => mem1_data(2));

-- Location: LCCOMB_X57_Y9_N20
\instr_ID_1[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_ID_1[2]~reg0feeder_combout\ = mem1_data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mem1_data(2),
	combout => \instr_ID_1[2]~reg0feeder_combout\);

-- Location: FF_X57_Y9_N21
\instr_ID_1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \instr_ID_1[2]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_ID_1[2]~reg0_q\);

-- Location: IOIBUF_X12_Y21_N1
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

-- Location: LCCOMB_X12_Y19_N30
\mem1_data[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mem1_data(3) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\mem1_outp[3]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((mem1_data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem1_outp[3]~input_o\,
	datac => mem1_data(3),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => mem1_data(3));

-- Location: LCCOMB_X12_Y19_N28
\instr_ID_1[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_ID_1[3]~reg0feeder_combout\ = mem1_data(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mem1_data(3),
	combout => \instr_ID_1[3]~reg0feeder_combout\);

-- Location: FF_X12_Y19_N29
\instr_ID_1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \instr_ID_1[3]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_ID_1[3]~reg0_q\);

-- Location: IOIBUF_X0_Y3_N22
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

-- Location: LCCOMB_X1_Y3_N22
\mem1_data[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mem1_data(4) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\mem1_outp[4]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((mem1_data(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem1_outp[4]~input_o\,
	datac => mem1_data(4),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => mem1_data(4));

-- Location: LCCOMB_X1_Y3_N28
\instr_ID_1[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_ID_1[4]~reg0feeder_combout\ = mem1_data(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mem1_data(4),
	combout => \instr_ID_1[4]~reg0feeder_combout\);

-- Location: FF_X1_Y3_N29
\instr_ID_1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \instr_ID_1[4]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_ID_1[4]~reg0_q\);

-- Location: IOIBUF_X60_Y14_N15
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

-- Location: LCCOMB_X54_Y12_N22
\mem1_data[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mem1_data(5) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\mem1_outp[5]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((mem1_data(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem1_outp[5]~input_o\,
	datac => mem1_data(5),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => mem1_data(5));

-- Location: LCCOMB_X54_Y12_N28
\instr_ID_1[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_ID_1[5]~reg0feeder_combout\ = mem1_data(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mem1_data(5),
	combout => \instr_ID_1[5]~reg0feeder_combout\);

-- Location: FF_X54_Y12_N29
\instr_ID_1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \instr_ID_1[5]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_ID_1[5]~reg0_q\);

-- Location: IOIBUF_X60_Y10_N23
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

-- Location: LCCOMB_X57_Y12_N30
\mem1_data[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mem1_data(6) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\mem1_outp[6]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((mem1_data(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem1_outp[6]~input_o\,
	datac => mem1_data(6),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => mem1_data(6));

-- Location: LCCOMB_X57_Y12_N20
\instr_ID_1[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_ID_1[6]~reg0feeder_combout\ = mem1_data(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mem1_data(6),
	combout => \instr_ID_1[6]~reg0feeder_combout\);

-- Location: FF_X57_Y12_N21
\instr_ID_1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \instr_ID_1[6]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_ID_1[6]~reg0_q\);

-- Location: IOIBUF_X21_Y0_N29
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

-- Location: LCCOMB_X21_Y1_N22
\mem1_data[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mem1_data(7) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\mem1_outp[7]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((mem1_data(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem1_outp[7]~input_o\,
	datac => mem1_data(7),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => mem1_data(7));

-- Location: LCCOMB_X21_Y1_N28
\instr_ID_1[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_ID_1[7]~reg0feeder_combout\ = mem1_data(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mem1_data(7),
	combout => \instr_ID_1[7]~reg0feeder_combout\);

-- Location: FF_X21_Y1_N29
\instr_ID_1[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \instr_ID_1[7]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_ID_1[7]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N8
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

-- Location: LCCOMB_X36_Y1_N22
\mem1_data[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mem1_data(8) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\mem1_outp[8]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((mem1_data(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem1_outp[8]~input_o\,
	datac => mem1_data(8),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => mem1_data(8));

-- Location: LCCOMB_X36_Y1_N20
\instr_ID_1[8]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_ID_1[8]~reg0feeder_combout\ = mem1_data(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem1_data(8),
	combout => \instr_ID_1[8]~reg0feeder_combout\);

-- Location: FF_X36_Y1_N21
\instr_ID_1[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \instr_ID_1[8]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_ID_1[8]~reg0_q\);

-- Location: IOIBUF_X40_Y36_N29
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

-- Location: LCCOMB_X39_Y35_N30
\mem1_data[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mem1_data(9) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\mem1_outp[9]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((mem1_data(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem1_outp[9]~input_o\,
	datac => mem1_data(9),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => mem1_data(9));

-- Location: LCCOMB_X39_Y35_N28
\instr_ID_1[9]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_ID_1[9]~reg0feeder_combout\ = mem1_data(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem1_data(9),
	combout => \instr_ID_1[9]~reg0feeder_combout\);

-- Location: FF_X39_Y35_N29
\instr_ID_1[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \instr_ID_1[9]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_ID_1[9]~reg0_q\);

-- Location: IOIBUF_X60_Y2_N22
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

-- Location: LCCOMB_X59_Y2_N22
\mem1_data[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mem1_data(10) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\mem1_outp[10]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((mem1_data(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem1_outp[10]~input_o\,
	datac => mem1_data(10),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => mem1_data(10));

-- Location: LCCOMB_X59_Y2_N28
\instr_ID_1[10]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_ID_1[10]~reg0feeder_combout\ = mem1_data(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mem1_data(10),
	combout => \instr_ID_1[10]~reg0feeder_combout\);

-- Location: FF_X59_Y2_N29
\instr_ID_1[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \instr_ID_1[10]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_ID_1[10]~reg0_q\);

-- Location: IOIBUF_X28_Y36_N1
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

-- Location: LCCOMB_X29_Y35_N30
\mem1_data[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mem1_data(11) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\mem1_outp[11]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((mem1_data(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem1_outp[11]~input_o\,
	datac => mem1_data(11),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => mem1_data(11));

-- Location: LCCOMB_X29_Y35_N28
\instr_ID_1[11]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_ID_1[11]~reg0feeder_combout\ = mem1_data(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem1_data(11),
	combout => \instr_ID_1[11]~reg0feeder_combout\);

-- Location: FF_X29_Y35_N29
\instr_ID_1[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \instr_ID_1[11]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_ID_1[11]~reg0_q\);

-- Location: IOIBUF_X0_Y10_N1
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

-- Location: LCCOMB_X2_Y13_N22
\mem1_data[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mem1_data(12) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\mem1_outp[12]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((mem1_data(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem1_outp[12]~input_o\,
	datac => mem1_data(12),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => mem1_data(12));

-- Location: LCCOMB_X2_Y13_N24
\instr_ID_1[12]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_ID_1[12]~reg0feeder_combout\ = mem1_data(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mem1_data(12),
	combout => \instr_ID_1[12]~reg0feeder_combout\);

-- Location: FF_X2_Y13_N25
\instr_ID_1[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \instr_ID_1[12]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_ID_1[12]~reg0_q\);

-- Location: IOIBUF_X0_Y18_N1
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

-- Location: LCCOMB_X1_Y19_N22
\mem1_data[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mem1_data(13) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\mem1_outp[13]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((mem1_data(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem1_outp[13]~input_o\,
	datac => mem1_data(13),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => mem1_data(13));

-- Location: LCCOMB_X1_Y19_N28
\instr_ID_1[13]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_ID_1[13]~reg0feeder_combout\ = mem1_data(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mem1_data(13),
	combout => \instr_ID_1[13]~reg0feeder_combout\);

-- Location: FF_X1_Y19_N29
\instr_ID_1[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \instr_ID_1[13]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_ID_1[13]~reg0_q\);

-- Location: IOIBUF_X40_Y0_N29
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

-- Location: LCCOMB_X40_Y1_N22
\mem1_data[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mem1_data(14) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\mem1_outp[14]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((mem1_data(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem1_outp[14]~input_o\,
	datac => mem1_data(14),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => mem1_data(14));

-- Location: LCCOMB_X40_Y1_N24
\instr_ID_1[14]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_ID_1[14]~reg0feeder_combout\ = mem1_data(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem1_data(14),
	combout => \instr_ID_1[14]~reg0feeder_combout\);

-- Location: FF_X40_Y1_N25
\instr_ID_1[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \instr_ID_1[14]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_ID_1[14]~reg0_q\);

-- Location: IOIBUF_X10_Y21_N1
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

-- Location: LCCOMB_X11_Y19_N30
\mem1_data[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mem1_data(15) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\mem1_outp[15]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((mem1_data(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem1_outp[15]~input_o\,
	datac => mem1_data(15),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => mem1_data(15));

-- Location: LCCOMB_X11_Y19_N28
\instr_ID_1[15]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_ID_1[15]~reg0feeder_combout\ = mem1_data(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mem1_data(15),
	combout => \instr_ID_1[15]~reg0feeder_combout\);

-- Location: FF_X11_Y19_N29
\instr_ID_1[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \instr_ID_1[15]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_ID_1[15]~reg0_q\);

-- Location: IOIBUF_X60_Y10_N8
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

-- Location: LCCOMB_X59_Y9_N30
\alu2_data[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- alu2_data(0) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\alu2_outp[0]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((alu2_data(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu2_outp[0]~input_o\,
	datac => alu2_data(0),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => alu2_data(0));

-- Location: LCCOMB_X59_Y9_N20
\alu2_outp_1[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[0]~reg0feeder_combout\ = alu2_data(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => alu2_data(0),
	combout => \alu2_outp_1[0]~reg0feeder_combout\);

-- Location: FF_X59_Y9_N21
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

-- Location: IOIBUF_X25_Y29_N22
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

-- Location: LCCOMB_X27_Y28_N22
\alu2_data[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- alu2_data(1) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\alu2_outp[1]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((alu2_data(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu2_outp[1]~input_o\,
	datac => alu2_data(1),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => alu2_data(1));

-- Location: LCCOMB_X27_Y28_N0
\alu2_outp_1[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[1]~reg0feeder_combout\ = alu2_data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => alu2_data(1),
	combout => \alu2_outp_1[1]~reg0feeder_combout\);

-- Location: FF_X27_Y28_N1
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

-- Location: IOIBUF_X14_Y21_N1
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

-- Location: LCCOMB_X17_Y20_N30
\alu2_data[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- alu2_data(2) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\alu2_outp[2]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((alu2_data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu2_outp[2]~input_o\,
	datac => alu2_data(2),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => alu2_data(2));

-- Location: LCCOMB_X17_Y20_N28
\alu2_outp_1[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[2]~reg0feeder_combout\ = alu2_data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => alu2_data(2),
	combout => \alu2_outp_1[2]~reg0feeder_combout\);

-- Location: FF_X17_Y20_N29
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

-- Location: IOIBUF_X6_Y0_N8
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

-- Location: LCCOMB_X4_Y3_N30
\alu2_data[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- alu2_data(3) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\alu2_outp[3]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((alu2_data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu2_outp[3]~input_o\,
	datac => alu2_data(3),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => alu2_data(3));

-- Location: LCCOMB_X4_Y3_N20
\alu2_outp_1[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[3]~reg0feeder_combout\ = alu2_data(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => alu2_data(3),
	combout => \alu2_outp_1[3]~reg0feeder_combout\);

-- Location: FF_X4_Y3_N21
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

-- Location: IOIBUF_X0_Y13_N22
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

-- Location: LCCOMB_X1_Y13_N30
\alu2_data[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- alu2_data(4) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\alu2_outp[4]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((alu2_data(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu2_outp[4]~input_o\,
	datac => alu2_data(4),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => alu2_data(4));

-- Location: LCCOMB_X1_Y13_N20
\alu2_outp_1[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[4]~reg0feeder_combout\ = alu2_data(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => alu2_data(4),
	combout => \alu2_outp_1[4]~reg0feeder_combout\);

-- Location: FF_X1_Y13_N21
\alu2_outp_1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \alu2_outp_1[4]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[4]~reg0_q\);

-- Location: IOIBUF_X60_Y23_N8
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

-- Location: LCCOMB_X59_Y23_N22
\alu2_data[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- alu2_data(5) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\alu2_outp[5]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((alu2_data(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu2_outp[5]~input_o\,
	datac => alu2_data(5),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => alu2_data(5));

-- Location: LCCOMB_X59_Y23_N28
\alu2_outp_1[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[5]~reg0feeder_combout\ = alu2_data(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => alu2_data(5),
	combout => \alu2_outp_1[5]~reg0feeder_combout\);

-- Location: FF_X59_Y23_N29
\alu2_outp_1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \alu2_outp_1[5]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[5]~reg0_q\);

-- Location: IOIBUF_X60_Y13_N22
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

-- Location: LCCOMB_X59_Y12_N22
\alu2_data[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- alu2_data(6) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\alu2_outp[6]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((alu2_data(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu2_outp[6]~input_o\,
	datac => alu2_data(6),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => alu2_data(6));

-- Location: LCCOMB_X59_Y12_N24
\alu2_outp_1[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[6]~reg0feeder_combout\ = alu2_data(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => alu2_data(6),
	combout => \alu2_outp_1[6]~reg0feeder_combout\);

-- Location: FF_X59_Y12_N25
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

-- Location: IOIBUF_X14_Y21_N22
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

-- Location: LCCOMB_X13_Y19_N22
\alu2_data[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- alu2_data(7) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\alu2_outp[7]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((alu2_data(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu2_outp[7]~input_o\,
	datac => alu2_data(7),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => alu2_data(7));

-- Location: LCCOMB_X13_Y19_N24
\alu2_outp_1[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[7]~reg0feeder_combout\ = alu2_data(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => alu2_data(7),
	combout => \alu2_outp_1[7]~reg0feeder_combout\);

-- Location: FF_X13_Y19_N25
\alu2_outp_1[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \alu2_outp_1[7]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[7]~reg0_q\);

-- Location: IOIBUF_X60_Y10_N1
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

-- Location: LCCOMB_X58_Y12_N22
\alu2_data[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- alu2_data(8) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\alu2_outp[8]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((alu2_data(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu2_outp[8]~input_o\,
	datac => alu2_data(8),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => alu2_data(8));

-- Location: LCCOMB_X58_Y12_N0
\alu2_outp_1[8]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[8]~reg0feeder_combout\ = alu2_data(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => alu2_data(8),
	combout => \alu2_outp_1[8]~reg0feeder_combout\);

-- Location: FF_X58_Y12_N1
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

-- Location: IOIBUF_X14_Y0_N1
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

-- Location: LCCOMB_X14_Y1_N26
\alu2_data[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- alu2_data(9) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\alu2_outp[9]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((alu2_data(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu2_outp[9]~input_o\,
	datac => alu2_data(9),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => alu2_data(9));

-- Location: LCCOMB_X14_Y1_N24
\alu2_outp_1[9]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[9]~reg0feeder_combout\ = alu2_data(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => alu2_data(9),
	combout => \alu2_outp_1[9]~reg0feeder_combout\);

-- Location: FF_X14_Y1_N25
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

-- Location: IOIBUF_X60_Y8_N15
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

-- Location: LCCOMB_X58_Y9_N22
\alu2_data[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- alu2_data(10) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\alu2_outp[10]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((alu2_data(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu2_outp[10]~input_o\,
	datac => alu2_data(10),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => alu2_data(10));

-- Location: LCCOMB_X58_Y9_N0
\alu2_outp_1[10]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[10]~reg0feeder_combout\ = alu2_data(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => alu2_data(10),
	combout => \alu2_outp_1[10]~reg0feeder_combout\);

-- Location: FF_X58_Y9_N1
\alu2_outp_1[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \alu2_outp_1[10]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[10]~reg0_q\);

-- Location: IOIBUF_X19_Y0_N22
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

-- Location: LCCOMB_X15_Y1_N22
\alu2_data[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- alu2_data(11) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\alu2_outp[11]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((alu2_data(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu2_outp[11]~input_o\,
	datac => alu2_data(11),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => alu2_data(11));

-- Location: LCCOMB_X15_Y1_N28
\alu2_outp_1[11]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[11]~reg0feeder_combout\ = alu2_data(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => alu2_data(11),
	combout => \alu2_outp_1[11]~reg0feeder_combout\);

-- Location: FF_X15_Y1_N29
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

-- Location: IOIBUF_X24_Y0_N29
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

-- Location: LCCOMB_X24_Y1_N22
\alu2_data[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- alu2_data(12) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\alu2_outp[12]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((alu2_data(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu2_outp[12]~input_o\,
	datac => alu2_data(12),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => alu2_data(12));

-- Location: LCCOMB_X24_Y1_N24
\alu2_outp_1[12]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[12]~reg0feeder_combout\ = alu2_data(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => alu2_data(12),
	combout => \alu2_outp_1[12]~reg0feeder_combout\);

-- Location: FF_X24_Y1_N25
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

-- Location: IOIBUF_X25_Y28_N15
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

-- Location: LCCOMB_X26_Y28_N26
\alu2_data[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- alu2_data(13) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\alu2_outp[13]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((alu2_data(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu2_outp[13]~input_o\,
	datac => alu2_data(13),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => alu2_data(13));

-- Location: LCCOMB_X26_Y28_N20
\alu2_outp_1[13]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[13]~reg0feeder_combout\ = alu2_data(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => alu2_data(13),
	combout => \alu2_outp_1[13]~reg0feeder_combout\);

-- Location: FF_X26_Y28_N21
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

-- Location: IOIBUF_X16_Y0_N15
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

-- Location: LCCOMB_X16_Y1_N22
\alu2_data[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- alu2_data(14) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\alu2_outp[14]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((alu2_data(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu2_outp[14]~input_o\,
	datac => alu2_data(14),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => alu2_data(14));

-- Location: LCCOMB_X16_Y1_N28
\alu2_outp_1[14]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[14]~reg0feeder_combout\ = alu2_data(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => alu2_data(14),
	combout => \alu2_outp_1[14]~reg0feeder_combout\);

-- Location: FF_X16_Y1_N29
\alu2_outp_1[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \alu2_outp_1[14]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu2_outp_1[14]~reg0_q\);

-- Location: IOIBUF_X60_Y23_N1
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

-- Location: LCCOMB_X58_Y23_N22
\alu2_data[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- alu2_data(15) = (GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & (\alu2_outp[15]~input_o\)) # (!GLOBAL(\pipe_reg1_enable~inputclkctrl_outclk\) & ((alu2_data(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu2_outp[15]~input_o\,
	datac => alu2_data(15),
	datad => \pipe_reg1_enable~inputclkctrl_outclk\,
	combout => alu2_data(15));

-- Location: LCCOMB_X58_Y23_N20
\alu2_outp_1[15]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu2_outp_1[15]~reg0feeder_combout\ = alu2_data(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => alu2_data(15),
	combout => \alu2_outp_1[15]~reg0feeder_combout\);

-- Location: FF_X58_Y23_N21
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

ww_instr_ID_1(0) <= \instr_ID_1[0]~output_o\;

ww_instr_ID_1(1) <= \instr_ID_1[1]~output_o\;

ww_instr_ID_1(2) <= \instr_ID_1[2]~output_o\;

ww_instr_ID_1(3) <= \instr_ID_1[3]~output_o\;

ww_instr_ID_1(4) <= \instr_ID_1[4]~output_o\;

ww_instr_ID_1(5) <= \instr_ID_1[5]~output_o\;

ww_instr_ID_1(6) <= \instr_ID_1[6]~output_o\;

ww_instr_ID_1(7) <= \instr_ID_1[7]~output_o\;

ww_instr_ID_1(8) <= \instr_ID_1[8]~output_o\;

ww_instr_ID_1(9) <= \instr_ID_1[9]~output_o\;

ww_instr_ID_1(10) <= \instr_ID_1[10]~output_o\;

ww_instr_ID_1(11) <= \instr_ID_1[11]~output_o\;

ww_instr_ID_1(12) <= \instr_ID_1[12]~output_o\;

ww_instr_ID_1(13) <= \instr_ID_1[13]~output_o\;

ww_instr_ID_1(14) <= \instr_ID_1[14]~output_o\;

ww_instr_ID_1(15) <= \instr_ID_1[15]~output_o\;

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


