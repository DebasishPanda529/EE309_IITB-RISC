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

-- DATE "05/06/2023 19:16:07"

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

ENTITY 	pipe_reg5 IS
    PORT (
	rf_a3_5 : IN std_logic_vector(2 DOWNTO 0);
	CLK : IN std_logic;
	RST : IN std_logic;
	pipe_reg5_enable : IN std_logic;
	mux8_out_1 : IN std_logic_vector(15 DOWNTO 0);
	instr_MA_2 : IN std_logic_vector(15 DOWNTO 0);
	rf_a3_6 : OUT std_logic_vector(2 DOWNTO 0);
	rf_d3_out : OUT std_logic_vector(15 DOWNTO 0);
	instr_WB_1 : OUT std_logic_vector(15 DOWNTO 0)
	);
END pipe_reg5;

-- Design Ports Information
-- RST	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_a3_6[0]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_a3_6[1]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_a3_6[2]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_d3_out[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_d3_out[1]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_d3_out[2]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_d3_out[3]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_d3_out[4]	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_d3_out[5]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_d3_out[6]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_d3_out[7]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_d3_out[8]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_d3_out[9]	=>  Location: PIN_48,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_d3_out[10]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_d3_out[11]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_d3_out[12]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_d3_out[13]	=>  Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_d3_out[14]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_d3_out[15]	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_WB_1[0]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_WB_1[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_WB_1[2]	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_WB_1[3]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_WB_1[4]	=>  Location: PIN_97,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_WB_1[5]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_WB_1[6]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_WB_1[7]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_WB_1[8]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_WB_1[9]	=>  Location: PIN_21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_WB_1[10]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_WB_1[11]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_WB_1[12]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_WB_1[13]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_WB_1[14]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_WB_1[15]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_a3_5[0]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pipe_reg5_enable	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_a3_5[1]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_a3_5[2]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux8_out_1[0]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux8_out_1[1]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux8_out_1[2]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux8_out_1[3]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux8_out_1[4]	=>  Location: PIN_61,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux8_out_1[5]	=>  Location: PIN_78,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux8_out_1[6]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux8_out_1[7]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux8_out_1[8]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux8_out_1[9]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux8_out_1[10]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux8_out_1[11]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux8_out_1[12]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux8_out_1[13]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux8_out_1[14]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux8_out_1[15]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA_2[0]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA_2[1]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA_2[2]	=>  Location: PIN_27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA_2[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA_2[4]	=>  Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA_2[5]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA_2[6]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA_2[7]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA_2[8]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA_2[9]	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA_2[10]	=>  Location: PIN_81,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA_2[11]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA_2[12]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA_2[13]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA_2[14]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_MA_2[15]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pipe_reg5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rf_a3_5 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_pipe_reg5_enable : std_logic;
SIGNAL ww_mux8_out_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_instr_MA_2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rf_a3_6 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rf_d3_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_instr_WB_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pipe_reg5_enable~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \rf_a3_6[0]~output_o\ : std_logic;
SIGNAL \rf_a3_6[1]~output_o\ : std_logic;
SIGNAL \rf_a3_6[2]~output_o\ : std_logic;
SIGNAL \rf_d3_out[0]~output_o\ : std_logic;
SIGNAL \rf_d3_out[1]~output_o\ : std_logic;
SIGNAL \rf_d3_out[2]~output_o\ : std_logic;
SIGNAL \rf_d3_out[3]~output_o\ : std_logic;
SIGNAL \rf_d3_out[4]~output_o\ : std_logic;
SIGNAL \rf_d3_out[5]~output_o\ : std_logic;
SIGNAL \rf_d3_out[6]~output_o\ : std_logic;
SIGNAL \rf_d3_out[7]~output_o\ : std_logic;
SIGNAL \rf_d3_out[8]~output_o\ : std_logic;
SIGNAL \rf_d3_out[9]~output_o\ : std_logic;
SIGNAL \rf_d3_out[10]~output_o\ : std_logic;
SIGNAL \rf_d3_out[11]~output_o\ : std_logic;
SIGNAL \rf_d3_out[12]~output_o\ : std_logic;
SIGNAL \rf_d3_out[13]~output_o\ : std_logic;
SIGNAL \rf_d3_out[14]~output_o\ : std_logic;
SIGNAL \rf_d3_out[15]~output_o\ : std_logic;
SIGNAL \instr_WB_1[0]~output_o\ : std_logic;
SIGNAL \instr_WB_1[1]~output_o\ : std_logic;
SIGNAL \instr_WB_1[2]~output_o\ : std_logic;
SIGNAL \instr_WB_1[3]~output_o\ : std_logic;
SIGNAL \instr_WB_1[4]~output_o\ : std_logic;
SIGNAL \instr_WB_1[5]~output_o\ : std_logic;
SIGNAL \instr_WB_1[6]~output_o\ : std_logic;
SIGNAL \instr_WB_1[7]~output_o\ : std_logic;
SIGNAL \instr_WB_1[8]~output_o\ : std_logic;
SIGNAL \instr_WB_1[9]~output_o\ : std_logic;
SIGNAL \instr_WB_1[10]~output_o\ : std_logic;
SIGNAL \instr_WB_1[11]~output_o\ : std_logic;
SIGNAL \instr_WB_1[12]~output_o\ : std_logic;
SIGNAL \instr_WB_1[13]~output_o\ : std_logic;
SIGNAL \instr_WB_1[14]~output_o\ : std_logic;
SIGNAL \instr_WB_1[15]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \rf_a3_5[0]~input_o\ : std_logic;
SIGNAL \pipe_reg5_enable~input_o\ : std_logic;
SIGNAL \pipe_reg5_enable~inputclkctrl_outclk\ : std_logic;
SIGNAL \rf_a3_6[0]~reg0_q\ : std_logic;
SIGNAL \rf_a3_5[1]~input_o\ : std_logic;
SIGNAL \rf_a3_6[1]~reg0_q\ : std_logic;
SIGNAL \rf_a3_5[2]~input_o\ : std_logic;
SIGNAL \rf_a3_6[2]~reg0_q\ : std_logic;
SIGNAL \mux8_out_1[0]~input_o\ : std_logic;
SIGNAL \rf_d3_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \rf_d3_out[0]~reg0_q\ : std_logic;
SIGNAL \mux8_out_1[1]~input_o\ : std_logic;
SIGNAL \rf_d3_out[1]~reg0_q\ : std_logic;
SIGNAL \mux8_out_1[2]~input_o\ : std_logic;
SIGNAL \rf_d3_out[2]~reg0_q\ : std_logic;
SIGNAL \mux8_out_1[3]~input_o\ : std_logic;
SIGNAL \rf_d3_out[3]~reg0_q\ : std_logic;
SIGNAL \mux8_out_1[4]~input_o\ : std_logic;
SIGNAL \rf_d3_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \rf_d3_out[4]~reg0_q\ : std_logic;
SIGNAL \mux8_out_1[5]~input_o\ : std_logic;
SIGNAL \rf_d3_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \rf_d3_out[5]~reg0_q\ : std_logic;
SIGNAL \mux8_out_1[6]~input_o\ : std_logic;
SIGNAL \rf_d3_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \rf_d3_out[6]~reg0_q\ : std_logic;
SIGNAL \mux8_out_1[7]~input_o\ : std_logic;
SIGNAL \rf_d3_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \rf_d3_out[7]~reg0_q\ : std_logic;
SIGNAL \mux8_out_1[8]~input_o\ : std_logic;
SIGNAL \rf_d3_out[8]~reg0_q\ : std_logic;
SIGNAL \mux8_out_1[9]~input_o\ : std_logic;
SIGNAL \rf_d3_out[9]~reg0_q\ : std_logic;
SIGNAL \mux8_out_1[10]~input_o\ : std_logic;
SIGNAL \rf_d3_out[10]~reg0feeder_combout\ : std_logic;
SIGNAL \rf_d3_out[10]~reg0_q\ : std_logic;
SIGNAL \mux8_out_1[11]~input_o\ : std_logic;
SIGNAL \rf_d3_out[11]~reg0_q\ : std_logic;
SIGNAL \mux8_out_1[12]~input_o\ : std_logic;
SIGNAL \rf_d3_out[12]~reg0feeder_combout\ : std_logic;
SIGNAL \rf_d3_out[12]~reg0_q\ : std_logic;
SIGNAL \mux8_out_1[13]~input_o\ : std_logic;
SIGNAL \rf_d3_out[13]~reg0feeder_combout\ : std_logic;
SIGNAL \rf_d3_out[13]~reg0_q\ : std_logic;
SIGNAL \mux8_out_1[14]~input_o\ : std_logic;
SIGNAL \rf_d3_out[14]~reg0_q\ : std_logic;
SIGNAL \mux8_out_1[15]~input_o\ : std_logic;
SIGNAL \rf_d3_out[15]~reg0_q\ : std_logic;
SIGNAL \instr_MA_2[0]~input_o\ : std_logic;
SIGNAL \instr_WB_1[0]~reg0_q\ : std_logic;
SIGNAL \instr_MA_2[1]~input_o\ : std_logic;
SIGNAL \instr_WB_1[1]~reg0feeder_combout\ : std_logic;
SIGNAL \instr_WB_1[1]~reg0_q\ : std_logic;
SIGNAL \instr_MA_2[2]~input_o\ : std_logic;
SIGNAL \instr_WB_1[2]~reg0_q\ : std_logic;
SIGNAL \instr_MA_2[3]~input_o\ : std_logic;
SIGNAL \instr_WB_1[3]~reg0_q\ : std_logic;
SIGNAL \instr_MA_2[4]~input_o\ : std_logic;
SIGNAL \instr_WB_1[4]~reg0_q\ : std_logic;
SIGNAL \instr_MA_2[5]~input_o\ : std_logic;
SIGNAL \instr_WB_1[5]~reg0_q\ : std_logic;
SIGNAL \instr_MA_2[6]~input_o\ : std_logic;
SIGNAL \instr_WB_1[6]~reg0_q\ : std_logic;
SIGNAL \instr_MA_2[7]~input_o\ : std_logic;
SIGNAL \instr_WB_1[7]~reg0_q\ : std_logic;
SIGNAL \instr_MA_2[8]~input_o\ : std_logic;
SIGNAL \instr_WB_1[8]~reg0_q\ : std_logic;
SIGNAL \instr_MA_2[9]~input_o\ : std_logic;
SIGNAL \instr_WB_1[9]~reg0_q\ : std_logic;
SIGNAL \instr_MA_2[10]~input_o\ : std_logic;
SIGNAL \instr_WB_1[10]~reg0_q\ : std_logic;
SIGNAL \instr_MA_2[11]~input_o\ : std_logic;
SIGNAL \instr_WB_1[11]~reg0_q\ : std_logic;
SIGNAL \instr_MA_2[12]~input_o\ : std_logic;
SIGNAL \instr_WB_1[12]~reg0_q\ : std_logic;
SIGNAL \instr_MA_2[13]~input_o\ : std_logic;
SIGNAL \instr_WB_1[13]~reg0_q\ : std_logic;
SIGNAL \instr_MA_2[14]~input_o\ : std_logic;
SIGNAL \instr_WB_1[14]~reg0_q\ : std_logic;
SIGNAL \instr_MA_2[15]~input_o\ : std_logic;
SIGNAL \instr_WB_1[15]~reg0_q\ : std_logic;
SIGNAL rf_a3 : std_logic_vector(2 DOWNTO 0);
SIGNAL rf_d3 : std_logic_vector(15 DOWNTO 0);
SIGNAL instr : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_CLK~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rf_a3_5 <= rf_a3_5;
ww_CLK <= CLK;
ww_RST <= RST;
ww_pipe_reg5_enable <= pipe_reg5_enable;
ww_mux8_out_1 <= mux8_out_1;
ww_instr_MA_2 <= instr_MA_2;
rf_a3_6 <= ww_rf_a3_6;
rf_d3_out <= ww_rf_d3_out;
instr_WB_1 <= ww_instr_WB_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\pipe_reg5_enable~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pipe_reg5_enable~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_CLK~inputclkctrl_outclk\ <= NOT \CLK~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y25_N16
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

-- Location: IOOBUF_X60_Y14_N16
\rf_a3_6[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_a3_6[0]~reg0_q\,
	devoe => ww_devoe,
	o => \rf_a3_6[0]~output_o\);

-- Location: IOOBUF_X60_Y13_N23
\rf_a3_6[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_a3_6[1]~reg0_q\,
	devoe => ww_devoe,
	o => \rf_a3_6[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\rf_a3_6[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_a3_6[2]~reg0_q\,
	devoe => ww_devoe,
	o => \rf_a3_6[2]~output_o\);

-- Location: IOOBUF_X60_Y10_N9
\rf_d3_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_d3_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \rf_d3_out[0]~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\rf_d3_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_d3_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \rf_d3_out[1]~output_o\);

-- Location: IOOBUF_X40_Y36_N30
\rf_d3_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_d3_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \rf_d3_out[2]~output_o\);

-- Location: IOOBUF_X12_Y21_N30
\rf_d3_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_d3_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \rf_d3_out[3]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\rf_d3_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_d3_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \rf_d3_out[4]~output_o\);

-- Location: IOOBUF_X60_Y8_N2
\rf_d3_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_d3_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \rf_d3_out[5]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\rf_d3_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_d3_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \rf_d3_out[6]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\rf_d3_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_d3_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \rf_d3_out[7]~output_o\);

-- Location: IOOBUF_X19_Y21_N23
\rf_d3_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_d3_out[8]~reg0_q\,
	devoe => ww_devoe,
	o => \rf_d3_out[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\rf_d3_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_d3_out[9]~reg0_q\,
	devoe => ww_devoe,
	o => \rf_d3_out[9]~output_o\);

-- Location: IOOBUF_X60_Y2_N23
\rf_d3_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_d3_out[10]~reg0_q\,
	devoe => ww_devoe,
	o => \rf_d3_out[10]~output_o\);

-- Location: IOOBUF_X58_Y36_N9
\rf_d3_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_d3_out[11]~reg0_q\,
	devoe => ww_devoe,
	o => \rf_d3_out[11]~output_o\);

-- Location: IOOBUF_X8_Y0_N16
\rf_d3_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_d3_out[12]~reg0_q\,
	devoe => ww_devoe,
	o => \rf_d3_out[12]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\rf_d3_out[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_d3_out[13]~reg0_q\,
	devoe => ww_devoe,
	o => \rf_d3_out[13]~output_o\);

-- Location: IOOBUF_X8_Y21_N16
\rf_d3_out[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_d3_out[14]~reg0_q\,
	devoe => ww_devoe,
	o => \rf_d3_out[14]~output_o\);

-- Location: IOOBUF_X60_Y23_N2
\rf_d3_out[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rf_d3_out[15]~reg0_q\,
	devoe => ww_devoe,
	o => \rf_d3_out[15]~output_o\);

-- Location: IOOBUF_X28_Y36_N9
\instr_WB_1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_WB_1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_WB_1[0]~output_o\);

-- Location: IOOBUF_X14_Y21_N23
\instr_WB_1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_WB_1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_WB_1[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\instr_WB_1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_WB_1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_WB_1[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\instr_WB_1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_WB_1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_WB_1[3]~output_o\);

-- Location: IOOBUF_X60_Y22_N9
\instr_WB_1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_WB_1[4]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_WB_1[4]~output_o\);

-- Location: IOOBUF_X60_Y2_N2
\instr_WB_1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_WB_1[5]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_WB_1[5]~output_o\);

-- Location: IOOBUF_X25_Y29_N16
\instr_WB_1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_WB_1[6]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_WB_1[6]~output_o\);

-- Location: IOOBUF_X60_Y15_N16
\instr_WB_1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_WB_1[7]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_WB_1[7]~output_o\);

-- Location: IOOBUF_X14_Y21_N30
\instr_WB_1[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_WB_1[8]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_WB_1[8]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\instr_WB_1[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_WB_1[9]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_WB_1[9]~output_o\);

-- Location: IOOBUF_X60_Y8_N23
\instr_WB_1[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_WB_1[10]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_WB_1[10]~output_o\);

-- Location: IOOBUF_X60_Y10_N24
\instr_WB_1[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_WB_1[11]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_WB_1[11]~output_o\);

-- Location: IOOBUF_X25_Y26_N16
\instr_WB_1[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_WB_1[12]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_WB_1[12]~output_o\);

-- Location: IOOBUF_X60_Y22_N16
\instr_WB_1[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_WB_1[13]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_WB_1[13]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\instr_WB_1[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_WB_1[14]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_WB_1[14]~output_o\);

-- Location: IOOBUF_X25_Y28_N16
\instr_WB_1[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr_WB_1[15]~reg0_q\,
	devoe => ww_devoe,
	o => \instr_WB_1[15]~output_o\);

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

-- Location: IOIBUF_X60_Y14_N22
\rf_a3_5[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rf_a3_5(0),
	o => \rf_a3_5[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\pipe_reg5_enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pipe_reg5_enable,
	o => \pipe_reg5_enable~input_o\);

-- Location: CLKCTRL_G4
\pipe_reg5_enable~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pipe_reg5_enable~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pipe_reg5_enable~inputclkctrl_outclk\);

-- Location: LCCOMB_X59_Y14_N14
\rf_a3[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- rf_a3(0) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\rf_a3_5[0]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((rf_a3(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a3_5[0]~input_o\,
	datac => rf_a3(0),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => rf_a3(0));

-- Location: FF_X59_Y14_N17
\rf_a3_6[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => rf_a3(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_a3_6[0]~reg0_q\);

-- Location: IOIBUF_X60_Y13_N15
\rf_a3_5[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rf_a3_5(1),
	o => \rf_a3_5[1]~input_o\);

-- Location: LCCOMB_X58_Y12_N14
\rf_a3[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- rf_a3(1) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\rf_a3_5[1]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((rf_a3(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_a3_5[1]~input_o\,
	datac => rf_a3(1),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => rf_a3(1));

-- Location: FF_X58_Y12_N1
\rf_a3_6[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => rf_a3(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_a3_6[1]~reg0_q\);

-- Location: IOIBUF_X14_Y0_N1
\rf_a3_5[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rf_a3_5(2),
	o => \rf_a3_5[2]~input_o\);

-- Location: LCCOMB_X14_Y1_N14
\rf_a3[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- rf_a3(2) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\rf_a3_5[2]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((rf_a3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_a3_5[2]~input_o\,
	datac => rf_a3(2),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => rf_a3(2));

-- Location: FF_X14_Y1_N25
\rf_a3_6[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => rf_a3(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_a3_6[2]~reg0_q\);

-- Location: IOIBUF_X60_Y10_N15
\mux8_out_1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux8_out_1(0),
	o => \mux8_out_1[0]~input_o\);

-- Location: LCCOMB_X57_Y12_N30
\rf_d3[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- rf_d3(0) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\mux8_out_1[0]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((rf_d3(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_out_1[0]~input_o\,
	datac => rf_d3(0),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => rf_d3(0));

-- Location: LCCOMB_X57_Y12_N28
\rf_d3_out[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf_d3_out[0]~reg0feeder_combout\ = rf_d3(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => rf_d3(0),
	combout => \rf_d3_out[0]~reg0feeder_combout\);

-- Location: FF_X57_Y12_N29
\rf_d3_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \rf_d3_out[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_d3_out[0]~reg0_q\);

-- Location: IOIBUF_X6_Y0_N29
\mux8_out_1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux8_out_1(1),
	o => \mux8_out_1[1]~input_o\);

-- Location: LCCOMB_X6_Y1_N14
\rf_d3[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- rf_d3(1) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\mux8_out_1[1]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((rf_d3(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux8_out_1[1]~input_o\,
	datac => rf_d3(1),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => rf_d3(1));

-- Location: FF_X6_Y1_N25
\rf_d3_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => rf_d3(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_d3_out[1]~reg0_q\);

-- Location: IOIBUF_X40_Y36_N15
\mux8_out_1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux8_out_1(2),
	o => \mux8_out_1[2]~input_o\);

-- Location: LCCOMB_X40_Y35_N30
\rf_d3[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- rf_d3(2) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\mux8_out_1[2]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((rf_d3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_out_1[2]~input_o\,
	datac => rf_d3(2),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => rf_d3(2));

-- Location: FF_X40_Y35_N29
\rf_d3_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => rf_d3(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_d3_out[2]~reg0_q\);

-- Location: IOIBUF_X12_Y21_N8
\mux8_out_1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux8_out_1(3),
	o => \mux8_out_1[3]~input_o\);

-- Location: LCCOMB_X12_Y20_N14
\rf_d3[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- rf_d3(3) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\mux8_out_1[3]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((rf_d3(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_out_1[3]~input_o\,
	datac => rf_d3(3),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => rf_d3(3));

-- Location: FF_X12_Y20_N29
\rf_d3_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => rf_d3(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_d3_out[3]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N29
\mux8_out_1[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux8_out_1(4),
	o => \mux8_out_1[4]~input_o\);

-- Location: LCCOMB_X36_Y1_N30
\rf_d3[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- rf_d3(4) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\mux8_out_1[4]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((rf_d3(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_out_1[4]~input_o\,
	datac => rf_d3(4),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => rf_d3(4));

-- Location: LCCOMB_X36_Y1_N28
\rf_d3_out[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf_d3_out[4]~reg0feeder_combout\ = rf_d3(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rf_d3(4),
	combout => \rf_d3_out[4]~reg0feeder_combout\);

-- Location: FF_X36_Y1_N29
\rf_d3_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \rf_d3_out[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_d3_out[4]~reg0_q\);

-- Location: IOIBUF_X60_Y8_N8
\mux8_out_1[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux8_out_1(5),
	o => \mux8_out_1[5]~input_o\);

-- Location: LCCOMB_X58_Y8_N30
\rf_d3[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- rf_d3(5) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\mux8_out_1[5]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((rf_d3(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux8_out_1[5]~input_o\,
	datac => rf_d3(5),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => rf_d3(5));

-- Location: LCCOMB_X58_Y8_N28
\rf_d3_out[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf_d3_out[5]~reg0feeder_combout\ = rf_d3(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => rf_d3(5),
	combout => \rf_d3_out[5]~reg0feeder_combout\);

-- Location: FF_X58_Y8_N29
\rf_d3_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \rf_d3_out[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_d3_out[5]~reg0_q\);

-- Location: IOIBUF_X40_Y0_N22
\mux8_out_1[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux8_out_1(6),
	o => \mux8_out_1[6]~input_o\);

-- Location: LCCOMB_X40_Y1_N30
\rf_d3[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- rf_d3(6) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\mux8_out_1[6]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((rf_d3(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux8_out_1[6]~input_o\,
	datac => rf_d3(6),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => rf_d3(6));

-- Location: LCCOMB_X40_Y1_N24
\rf_d3_out[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf_d3_out[6]~reg0feeder_combout\ = rf_d3(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rf_d3(6),
	combout => \rf_d3_out[6]~reg0feeder_combout\);

-- Location: FF_X40_Y1_N25
\rf_d3_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \rf_d3_out[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_d3_out[6]~reg0_q\);

-- Location: IOIBUF_X12_Y21_N1
\mux8_out_1[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux8_out_1(7),
	o => \mux8_out_1[7]~input_o\);

-- Location: LCCOMB_X11_Y20_N30
\rf_d3[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- rf_d3(7) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\mux8_out_1[7]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((rf_d3(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux8_out_1[7]~input_o\,
	datac => rf_d3(7),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => rf_d3(7));

-- Location: LCCOMB_X11_Y20_N28
\rf_d3_out[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf_d3_out[7]~reg0feeder_combout\ = rf_d3(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => rf_d3(7),
	combout => \rf_d3_out[7]~reg0feeder_combout\);

-- Location: FF_X11_Y20_N29
\rf_d3_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \rf_d3_out[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_d3_out[7]~reg0_q\);

-- Location: IOIBUF_X19_Y21_N29
\mux8_out_1[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux8_out_1(8),
	o => \mux8_out_1[8]~input_o\);

-- Location: LCCOMB_X19_Y20_N14
\rf_d3[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- rf_d3(8) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\mux8_out_1[8]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((rf_d3(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_out_1[8]~input_o\,
	datac => rf_d3(8),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => rf_d3(8));

-- Location: FF_X19_Y20_N21
\rf_d3_out[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => rf_d3(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_d3_out[8]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N8
\mux8_out_1[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux8_out_1(9),
	o => \mux8_out_1[9]~input_o\);

-- Location: LCCOMB_X16_Y1_N14
\rf_d3[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- rf_d3(9) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\mux8_out_1[9]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((rf_d3(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux8_out_1[9]~input_o\,
	datac => rf_d3(9),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => rf_d3(9));

-- Location: FF_X16_Y1_N13
\rf_d3_out[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => rf_d3(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_d3_out[9]~reg0_q\);

-- Location: IOIBUF_X60_Y2_N15
\mux8_out_1[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux8_out_1(10),
	o => \mux8_out_1[10]~input_o\);

-- Location: LCCOMB_X59_Y2_N30
\rf_d3[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- rf_d3(10) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\mux8_out_1[10]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((rf_d3(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_out_1[10]~input_o\,
	datac => rf_d3(10),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => rf_d3(10));

-- Location: LCCOMB_X59_Y2_N28
\rf_d3_out[10]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf_d3_out[10]~reg0feeder_combout\ = rf_d3(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => rf_d3(10),
	combout => \rf_d3_out[10]~reg0feeder_combout\);

-- Location: FF_X59_Y2_N29
\rf_d3_out[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \rf_d3_out[10]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_d3_out[10]~reg0_q\);

-- Location: IOIBUF_X58_Y36_N1
\mux8_out_1[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux8_out_1(11),
	o => \mux8_out_1[11]~input_o\);

-- Location: LCCOMB_X58_Y35_N30
\rf_d3[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- rf_d3(11) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\mux8_out_1[11]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((rf_d3(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux8_out_1[11]~input_o\,
	datac => rf_d3(11),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => rf_d3(11));

-- Location: FF_X58_Y35_N29
\rf_d3_out[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => rf_d3(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_d3_out[11]~reg0_q\);

-- Location: IOIBUF_X8_Y0_N8
\mux8_out_1[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux8_out_1(12),
	o => \mux8_out_1[12]~input_o\);

-- Location: LCCOMB_X9_Y1_N30
\rf_d3[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- rf_d3(12) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\mux8_out_1[12]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((rf_d3(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux8_out_1[12]~input_o\,
	datac => rf_d3(12),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => rf_d3(12));

-- Location: LCCOMB_X9_Y1_N28
\rf_d3_out[12]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf_d3_out[12]~reg0feeder_combout\ = rf_d3(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => rf_d3(12),
	combout => \rf_d3_out[12]~reg0feeder_combout\);

-- Location: FF_X9_Y1_N29
\rf_d3_out[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \rf_d3_out[12]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_d3_out[12]~reg0_q\);

-- Location: IOIBUF_X0_Y18_N1
\mux8_out_1[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux8_out_1(13),
	o => \mux8_out_1[13]~input_o\);

-- Location: LCCOMB_X1_Y20_N30
\rf_d3[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- rf_d3(13) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\mux8_out_1[13]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((rf_d3(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux8_out_1[13]~input_o\,
	datac => rf_d3(13),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => rf_d3(13));

-- Location: LCCOMB_X1_Y20_N28
\rf_d3_out[13]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf_d3_out[13]~reg0feeder_combout\ = rf_d3(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => rf_d3(13),
	combout => \rf_d3_out[13]~reg0feeder_combout\);

-- Location: FF_X1_Y20_N29
\rf_d3_out[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \rf_d3_out[13]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_d3_out[13]~reg0_q\);

-- Location: IOIBUF_X8_Y21_N22
\mux8_out_1[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux8_out_1(14),
	o => \mux8_out_1[14]~input_o\);

-- Location: LCCOMB_X8_Y20_N14
\rf_d3[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- rf_d3(14) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\mux8_out_1[14]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((rf_d3(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_out_1[14]~input_o\,
	datac => rf_d3(14),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => rf_d3(14));

-- Location: FF_X8_Y20_N25
\rf_d3_out[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => rf_d3(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_d3_out[14]~reg0_q\);

-- Location: IOIBUF_X60_Y23_N15
\mux8_out_1[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux8_out_1(15),
	o => \mux8_out_1[15]~input_o\);

-- Location: LCCOMB_X58_Y22_N14
\rf_d3[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- rf_d3(15) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\mux8_out_1[15]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((rf_d3(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_out_1[15]~input_o\,
	datac => rf_d3(15),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => rf_d3(15));

-- Location: FF_X58_Y22_N1
\rf_d3_out[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => rf_d3(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_d3_out[15]~reg0_q\);

-- Location: IOIBUF_X28_Y36_N1
\instr_MA_2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA_2(0),
	o => \instr_MA_2[0]~input_o\);

-- Location: LCCOMB_X28_Y35_N30
\instr[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- instr(0) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\instr_MA_2[0]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((instr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_MA_2[0]~input_o\,
	datac => instr(0),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => instr(0));

-- Location: FF_X28_Y35_N29
\instr_WB_1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => instr(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_WB_1[0]~reg0_q\);

-- Location: IOIBUF_X14_Y21_N1
\instr_MA_2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA_2(1),
	o => \instr_MA_2[1]~input_o\);

-- Location: LCCOMB_X13_Y20_N30
\instr[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- instr(1) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\instr_MA_2[1]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((instr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_MA_2[1]~input_o\,
	datac => instr(1),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => instr(1));

-- Location: LCCOMB_X13_Y20_N28
\instr_WB_1[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_WB_1[1]~reg0feeder_combout\ = instr(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => instr(1),
	combout => \instr_WB_1[1]~reg0feeder_combout\);

-- Location: FF_X13_Y20_N29
\instr_WB_1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \instr_WB_1[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_WB_1[1]~reg0_q\);

-- Location: IOIBUF_X0_Y13_N22
\instr_MA_2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA_2(2),
	o => \instr_MA_2[2]~input_o\);

-- Location: LCCOMB_X1_Y13_N26
\instr[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- instr(2) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\instr_MA_2[2]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((instr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_MA_2[2]~input_o\,
	datac => instr(2),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => instr(2));

-- Location: FF_X1_Y13_N17
\instr_WB_1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => instr(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_WB_1[2]~reg0_q\);

-- Location: IOIBUF_X24_Y0_N29
\instr_MA_2[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA_2(3),
	o => \instr_MA_2[3]~input_o\);

-- Location: LCCOMB_X24_Y1_N30
\instr[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- instr(3) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\instr_MA_2[3]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((instr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_MA_2[3]~input_o\,
	datac => instr(3),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => instr(3));

-- Location: FF_X24_Y1_N29
\instr_WB_1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => instr(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_WB_1[3]~reg0_q\);

-- Location: IOIBUF_X60_Y22_N23
\instr_MA_2[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA_2(4),
	o => \instr_MA_2[4]~input_o\);

-- Location: LCCOMB_X59_Y22_N14
\instr[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- instr(4) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\instr_MA_2[4]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((instr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_MA_2[4]~input_o\,
	datac => instr(4),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => instr(4));

-- Location: FF_X59_Y22_N17
\instr_WB_1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => instr(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_WB_1[4]~reg0_q\);

-- Location: IOIBUF_X60_Y2_N8
\instr_MA_2[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA_2(5),
	o => \instr_MA_2[5]~input_o\);

-- Location: LCCOMB_X58_Y2_N14
\instr[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- instr(5) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\instr_MA_2[5]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((instr(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_MA_2[5]~input_o\,
	datac => instr(5),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => instr(5));

-- Location: FF_X58_Y2_N29
\instr_WB_1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => instr(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_WB_1[5]~reg0_q\);

-- Location: IOIBUF_X25_Y27_N22
\instr_MA_2[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA_2(6),
	o => \instr_MA_2[6]~input_o\);

-- Location: LCCOMB_X28_Y28_N14
\instr[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- instr(6) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\instr_MA_2[6]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((instr(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_MA_2[6]~input_o\,
	datac => instr(6),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => instr(6));

-- Location: FF_X28_Y28_N1
\instr_WB_1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => instr(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_WB_1[6]~reg0_q\);

-- Location: IOIBUF_X60_Y15_N22
\instr_MA_2[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA_2(7),
	o => \instr_MA_2[7]~input_o\);

-- Location: LCCOMB_X58_Y14_N14
\instr[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- instr(7) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\instr_MA_2[7]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((instr(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_MA_2[7]~input_o\,
	datac => instr(7),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => instr(7));

-- Location: FF_X58_Y14_N1
\instr_WB_1[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => instr(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_WB_1[7]~reg0_q\);

-- Location: IOIBUF_X10_Y21_N15
\instr_MA_2[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA_2(8),
	o => \instr_MA_2[8]~input_o\);

-- Location: LCCOMB_X10_Y20_N14
\instr[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- instr(8) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\instr_MA_2[8]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((instr(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_MA_2[8]~input_o\,
	datac => instr(8),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => instr(8));

-- Location: FF_X10_Y20_N25
\instr_WB_1[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => instr(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_WB_1[8]~reg0_q\);

-- Location: IOIBUF_X0_Y16_N22
\instr_MA_2[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA_2(9),
	o => \instr_MA_2[9]~input_o\);

-- Location: LCCOMB_X1_Y16_N26
\instr[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- instr(9) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\instr_MA_2[9]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((instr(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_MA_2[9]~input_o\,
	datac => instr(9),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => instr(9));

-- Location: FF_X1_Y16_N17
\instr_WB_1[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => instr(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_WB_1[9]~reg0_q\);

-- Location: IOIBUF_X60_Y8_N15
\instr_MA_2[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA_2(10),
	o => \instr_MA_2[10]~input_o\);

-- Location: LCCOMB_X59_Y8_N22
\instr[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- instr(10) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\instr_MA_2[10]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((instr(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_MA_2[10]~input_o\,
	datac => instr(10),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => instr(10));

-- Location: FF_X59_Y8_N17
\instr_WB_1[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => instr(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_WB_1[10]~reg0_q\);

-- Location: IOIBUF_X60_Y10_N1
\instr_MA_2[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA_2(11),
	o => \instr_MA_2[11]~input_o\);

-- Location: LCCOMB_X59_Y12_N14
\instr[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- instr(11) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\instr_MA_2[11]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((instr(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_MA_2[11]~input_o\,
	datac => instr(11),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => instr(11));

-- Location: FF_X59_Y12_N29
\instr_WB_1[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => instr(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_WB_1[11]~reg0_q\);

-- Location: IOIBUF_X25_Y26_N22
\instr_MA_2[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA_2(12),
	o => \instr_MA_2[12]~input_o\);

-- Location: LCCOMB_X26_Y26_N30
\instr[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- instr(12) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\instr_MA_2[12]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((instr(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_MA_2[12]~input_o\,
	datac => instr(12),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => instr(12));

-- Location: FF_X26_Y26_N29
\instr_WB_1[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => instr(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_WB_1[12]~reg0_q\);

-- Location: IOIBUF_X60_Y23_N8
\instr_MA_2[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA_2(13),
	o => \instr_MA_2[13]~input_o\);

-- Location: LCCOMB_X57_Y22_N14
\instr[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- instr(13) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\instr_MA_2[13]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((instr(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_MA_2[13]~input_o\,
	datac => instr(13),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => instr(13));

-- Location: FF_X57_Y22_N29
\instr_WB_1[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => instr(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_WB_1[13]~reg0_q\);

-- Location: IOIBUF_X21_Y0_N1
\instr_MA_2[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA_2(14),
	o => \instr_MA_2[14]~input_o\);

-- Location: LCCOMB_X21_Y1_N14
\instr[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- instr(14) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\instr_MA_2[14]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((instr(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_MA_2[14]~input_o\,
	datac => instr(14),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => instr(14));

-- Location: FF_X21_Y1_N29
\instr_WB_1[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => instr(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_WB_1[14]~reg0_q\);

-- Location: IOIBUF_X25_Y28_N22
\instr_MA_2[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_MA_2(15),
	o => \instr_MA_2[15]~input_o\);

-- Location: LCCOMB_X26_Y28_N30
\instr[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- instr(15) = (GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & (\instr_MA_2[15]~input_o\)) # (!GLOBAL(\pipe_reg5_enable~inputclkctrl_outclk\) & ((instr(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_MA_2[15]~input_o\,
	datac => instr(15),
	datad => \pipe_reg5_enable~inputclkctrl_outclk\,
	combout => instr(15));

-- Location: FF_X26_Y28_N29
\instr_WB_1[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => instr(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instr_WB_1[15]~reg0_q\);

-- Location: IOIBUF_X25_Y29_N22
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

ww_rf_a3_6(0) <= \rf_a3_6[0]~output_o\;

ww_rf_a3_6(1) <= \rf_a3_6[1]~output_o\;

ww_rf_a3_6(2) <= \rf_a3_6[2]~output_o\;

ww_rf_d3_out(0) <= \rf_d3_out[0]~output_o\;

ww_rf_d3_out(1) <= \rf_d3_out[1]~output_o\;

ww_rf_d3_out(2) <= \rf_d3_out[2]~output_o\;

ww_rf_d3_out(3) <= \rf_d3_out[3]~output_o\;

ww_rf_d3_out(4) <= \rf_d3_out[4]~output_o\;

ww_rf_d3_out(5) <= \rf_d3_out[5]~output_o\;

ww_rf_d3_out(6) <= \rf_d3_out[6]~output_o\;

ww_rf_d3_out(7) <= \rf_d3_out[7]~output_o\;

ww_rf_d3_out(8) <= \rf_d3_out[8]~output_o\;

ww_rf_d3_out(9) <= \rf_d3_out[9]~output_o\;

ww_rf_d3_out(10) <= \rf_d3_out[10]~output_o\;

ww_rf_d3_out(11) <= \rf_d3_out[11]~output_o\;

ww_rf_d3_out(12) <= \rf_d3_out[12]~output_o\;

ww_rf_d3_out(13) <= \rf_d3_out[13]~output_o\;

ww_rf_d3_out(14) <= \rf_d3_out[14]~output_o\;

ww_rf_d3_out(15) <= \rf_d3_out[15]~output_o\;

ww_instr_WB_1(0) <= \instr_WB_1[0]~output_o\;

ww_instr_WB_1(1) <= \instr_WB_1[1]~output_o\;

ww_instr_WB_1(2) <= \instr_WB_1[2]~output_o\;

ww_instr_WB_1(3) <= \instr_WB_1[3]~output_o\;

ww_instr_WB_1(4) <= \instr_WB_1[4]~output_o\;

ww_instr_WB_1(5) <= \instr_WB_1[5]~output_o\;

ww_instr_WB_1(6) <= \instr_WB_1[6]~output_o\;

ww_instr_WB_1(7) <= \instr_WB_1[7]~output_o\;

ww_instr_WB_1(8) <= \instr_WB_1[8]~output_o\;

ww_instr_WB_1(9) <= \instr_WB_1[9]~output_o\;

ww_instr_WB_1(10) <= \instr_WB_1[10]~output_o\;

ww_instr_WB_1(11) <= \instr_WB_1[11]~output_o\;

ww_instr_WB_1(12) <= \instr_WB_1[12]~output_o\;

ww_instr_WB_1(13) <= \instr_WB_1[13]~output_o\;

ww_instr_WB_1(14) <= \instr_WB_1[14]~output_o\;

ww_instr_WB_1(15) <= \instr_WB_1[15]~output_o\;
END structure;


