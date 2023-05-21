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

-- DATE "05/05/2023 00:18:48"

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

ENTITY 	Instr_Decode IS
    PORT (
	ID_in : IN std_logic_vector(15 DOWNTO 0);
	alu2_in : IN std_logic_vector(15 DOWNTO 0);
	ID_out1 : OUT std_logic_vector(2 DOWNTO 0);
	ID_out2 : OUT std_logic_vector(2 DOWNTO 0);
	ID_out3 : OUT std_logic_vector(2 DOWNTO 0);
	ID_out4 : OUT std_logic_vector(5 DOWNTO 0);
	ID_out5 : OUT std_logic_vector(8 DOWNTO 0);
	ID_in_1 : OUT std_logic_vector(15 DOWNTO 0);
	alu2_out_1 : OUT std_logic_vector(15 DOWNTO 0)
	);
END Instr_Decode;

-- Design Ports Information
-- ID_out1[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out1[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out1[2]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out2[0]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out2[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out2[2]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out3[0]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out3[1]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out3[2]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out4[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out4[1]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out4[2]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out4[3]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out4[4]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out4[5]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out5[0]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out5[1]	=>  Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out5[2]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out5[3]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out5[4]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out5[5]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out5[6]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out5[7]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_out5[8]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in_1[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in_1[1]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in_1[2]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in_1[3]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in_1[4]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in_1[5]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in_1[6]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in_1[7]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in_1[8]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in_1[9]	=>  Location: PIN_27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in_1[10]	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in_1[11]	=>  Location: PIN_61,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in_1[12]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in_1[13]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in_1[14]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in_1[15]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out_1[0]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out_1[1]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out_1[2]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out_1[3]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out_1[4]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out_1[5]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out_1[6]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out_1[7]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out_1[8]	=>  Location: PIN_21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out_1[9]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out_1[10]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out_1[11]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out_1[12]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out_1[13]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out_1[14]	=>  Location: PIN_81,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_out_1[15]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in[9]	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in[10]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in[11]	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in[6]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in[7]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in[8]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in[3]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in[4]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in[5]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in[1]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in[2]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in[12]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in[13]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in[14]	=>  Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_in[15]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_in[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_in[1]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_in[2]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_in[3]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_in[4]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_in[5]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_in[6]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_in[7]	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_in[8]	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_in[9]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_in[10]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_in[11]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_in[12]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_in[13]	=>  Location: PIN_97,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_in[14]	=>  Location: PIN_78,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu2_in[15]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Instr_Decode IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ID_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_alu2_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ID_out1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ID_out2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ID_out3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ID_out4 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ID_out5 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_ID_in_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_alu2_out_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \ID_out1[0]~output_o\ : std_logic;
SIGNAL \ID_out1[1]~output_o\ : std_logic;
SIGNAL \ID_out1[2]~output_o\ : std_logic;
SIGNAL \ID_out2[0]~output_o\ : std_logic;
SIGNAL \ID_out2[1]~output_o\ : std_logic;
SIGNAL \ID_out2[2]~output_o\ : std_logic;
SIGNAL \ID_out3[0]~output_o\ : std_logic;
SIGNAL \ID_out3[1]~output_o\ : std_logic;
SIGNAL \ID_out3[2]~output_o\ : std_logic;
SIGNAL \ID_out4[0]~output_o\ : std_logic;
SIGNAL \ID_out4[1]~output_o\ : std_logic;
SIGNAL \ID_out4[2]~output_o\ : std_logic;
SIGNAL \ID_out4[3]~output_o\ : std_logic;
SIGNAL \ID_out4[4]~output_o\ : std_logic;
SIGNAL \ID_out4[5]~output_o\ : std_logic;
SIGNAL \ID_out5[0]~output_o\ : std_logic;
SIGNAL \ID_out5[1]~output_o\ : std_logic;
SIGNAL \ID_out5[2]~output_o\ : std_logic;
SIGNAL \ID_out5[3]~output_o\ : std_logic;
SIGNAL \ID_out5[4]~output_o\ : std_logic;
SIGNAL \ID_out5[5]~output_o\ : std_logic;
SIGNAL \ID_out5[6]~output_o\ : std_logic;
SIGNAL \ID_out5[7]~output_o\ : std_logic;
SIGNAL \ID_out5[8]~output_o\ : std_logic;
SIGNAL \ID_in_1[0]~output_o\ : std_logic;
SIGNAL \ID_in_1[1]~output_o\ : std_logic;
SIGNAL \ID_in_1[2]~output_o\ : std_logic;
SIGNAL \ID_in_1[3]~output_o\ : std_logic;
SIGNAL \ID_in_1[4]~output_o\ : std_logic;
SIGNAL \ID_in_1[5]~output_o\ : std_logic;
SIGNAL \ID_in_1[6]~output_o\ : std_logic;
SIGNAL \ID_in_1[7]~output_o\ : std_logic;
SIGNAL \ID_in_1[8]~output_o\ : std_logic;
SIGNAL \ID_in_1[9]~output_o\ : std_logic;
SIGNAL \ID_in_1[10]~output_o\ : std_logic;
SIGNAL \ID_in_1[11]~output_o\ : std_logic;
SIGNAL \ID_in_1[12]~output_o\ : std_logic;
SIGNAL \ID_in_1[13]~output_o\ : std_logic;
SIGNAL \ID_in_1[14]~output_o\ : std_logic;
SIGNAL \ID_in_1[15]~output_o\ : std_logic;
SIGNAL \alu2_out_1[0]~output_o\ : std_logic;
SIGNAL \alu2_out_1[1]~output_o\ : std_logic;
SIGNAL \alu2_out_1[2]~output_o\ : std_logic;
SIGNAL \alu2_out_1[3]~output_o\ : std_logic;
SIGNAL \alu2_out_1[4]~output_o\ : std_logic;
SIGNAL \alu2_out_1[5]~output_o\ : std_logic;
SIGNAL \alu2_out_1[6]~output_o\ : std_logic;
SIGNAL \alu2_out_1[7]~output_o\ : std_logic;
SIGNAL \alu2_out_1[8]~output_o\ : std_logic;
SIGNAL \alu2_out_1[9]~output_o\ : std_logic;
SIGNAL \alu2_out_1[10]~output_o\ : std_logic;
SIGNAL \alu2_out_1[11]~output_o\ : std_logic;
SIGNAL \alu2_out_1[12]~output_o\ : std_logic;
SIGNAL \alu2_out_1[13]~output_o\ : std_logic;
SIGNAL \alu2_out_1[14]~output_o\ : std_logic;
SIGNAL \alu2_out_1[15]~output_o\ : std_logic;
SIGNAL \ID_in[9]~input_o\ : std_logic;
SIGNAL \ID_in[10]~input_o\ : std_logic;
SIGNAL \ID_in[11]~input_o\ : std_logic;
SIGNAL \ID_in[6]~input_o\ : std_logic;
SIGNAL \ID_in[7]~input_o\ : std_logic;
SIGNAL \ID_in[8]~input_o\ : std_logic;
SIGNAL \ID_in[3]~input_o\ : std_logic;
SIGNAL \ID_in[4]~input_o\ : std_logic;
SIGNAL \ID_in[5]~input_o\ : std_logic;
SIGNAL \ID_in[0]~input_o\ : std_logic;
SIGNAL \ID_in[1]~input_o\ : std_logic;
SIGNAL \ID_in[2]~input_o\ : std_logic;
SIGNAL \ID_in[12]~input_o\ : std_logic;
SIGNAL \ID_in[13]~input_o\ : std_logic;
SIGNAL \ID_in[14]~input_o\ : std_logic;
SIGNAL \ID_in[15]~input_o\ : std_logic;
SIGNAL \alu2_in[0]~input_o\ : std_logic;
SIGNAL \alu2_in[1]~input_o\ : std_logic;
SIGNAL \alu2_in[2]~input_o\ : std_logic;
SIGNAL \alu2_in[3]~input_o\ : std_logic;
SIGNAL \alu2_in[4]~input_o\ : std_logic;
SIGNAL \alu2_in[5]~input_o\ : std_logic;
SIGNAL \alu2_in[6]~input_o\ : std_logic;
SIGNAL \alu2_in[7]~input_o\ : std_logic;
SIGNAL \alu2_in[8]~input_o\ : std_logic;
SIGNAL \alu2_in[9]~input_o\ : std_logic;
SIGNAL \alu2_in[10]~input_o\ : std_logic;
SIGNAL \alu2_in[11]~input_o\ : std_logic;
SIGNAL \alu2_in[12]~input_o\ : std_logic;
SIGNAL \alu2_in[13]~input_o\ : std_logic;
SIGNAL \alu2_in[14]~input_o\ : std_logic;
SIGNAL \alu2_in[15]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ID_in <= ID_in;
ww_alu2_in <= alu2_in;
ID_out1 <= ww_ID_out1;
ID_out2 <= ww_ID_out2;
ID_out3 <= ww_ID_out3;
ID_out4 <= ww_ID_out4;
ID_out5 <= ww_ID_out5;
ID_in_1 <= ww_ID_in_1;
alu2_out_1 <= ww_alu2_out_1;
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

-- Location: LCCOMB_X26_Y31_N8
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

-- Location: IOOBUF_X0_Y11_N16
\ID_out1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[9]~input_o\,
	devoe => ww_devoe,
	o => \ID_out1[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\ID_out1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[10]~input_o\,
	devoe => ww_devoe,
	o => \ID_out1[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\ID_out1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[11]~input_o\,
	devoe => ww_devoe,
	o => \ID_out1[2]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\ID_out2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[6]~input_o\,
	devoe => ww_devoe,
	o => \ID_out2[0]~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\ID_out2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[7]~input_o\,
	devoe => ww_devoe,
	o => \ID_out2[1]~output_o\);

-- Location: IOOBUF_X16_Y21_N16
\ID_out2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[8]~input_o\,
	devoe => ww_devoe,
	o => \ID_out2[2]~output_o\);

-- Location: IOOBUF_X25_Y28_N23
\ID_out3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[3]~input_o\,
	devoe => ww_devoe,
	o => \ID_out3[0]~output_o\);

-- Location: IOOBUF_X6_Y0_N9
\ID_out3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[4]~input_o\,
	devoe => ww_devoe,
	o => \ID_out3[1]~output_o\);

-- Location: IOOBUF_X60_Y31_N16
\ID_out3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[5]~input_o\,
	devoe => ww_devoe,
	o => \ID_out3[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\ID_out4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[0]~input_o\,
	devoe => ww_devoe,
	o => \ID_out4[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N2
\ID_out4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[1]~input_o\,
	devoe => ww_devoe,
	o => \ID_out4[1]~output_o\);

-- Location: IOOBUF_X60_Y2_N16
\ID_out4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[2]~input_o\,
	devoe => ww_devoe,
	o => \ID_out4[2]~output_o\);

-- Location: IOOBUF_X25_Y29_N23
\ID_out4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[3]~input_o\,
	devoe => ww_devoe,
	o => \ID_out4[3]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\ID_out4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[4]~input_o\,
	devoe => ww_devoe,
	o => \ID_out4[4]~output_o\);

-- Location: IOOBUF_X58_Y36_N2
\ID_out4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[5]~input_o\,
	devoe => ww_devoe,
	o => \ID_out4[5]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\ID_out5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[0]~input_o\,
	devoe => ww_devoe,
	o => \ID_out5[0]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\ID_out5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[1]~input_o\,
	devoe => ww_devoe,
	o => \ID_out5[1]~output_o\);

-- Location: IOOBUF_X60_Y2_N2
\ID_out5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[2]~input_o\,
	devoe => ww_devoe,
	o => \ID_out5[2]~output_o\);

-- Location: IOOBUF_X25_Y27_N16
\ID_out5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[3]~input_o\,
	devoe => ww_devoe,
	o => \ID_out5[3]~output_o\);

-- Location: IOOBUF_X8_Y0_N16
\ID_out5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[4]~input_o\,
	devoe => ww_devoe,
	o => \ID_out5[4]~output_o\);

-- Location: IOOBUF_X60_Y23_N9
\ID_out5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[5]~input_o\,
	devoe => ww_devoe,
	o => \ID_out5[5]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\ID_out5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[6]~input_o\,
	devoe => ww_devoe,
	o => \ID_out5[6]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\ID_out5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[7]~input_o\,
	devoe => ww_devoe,
	o => \ID_out5[7]~output_o\);

-- Location: IOOBUF_X19_Y21_N23
\ID_out5[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[8]~input_o\,
	devoe => ww_devoe,
	o => \ID_out5[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\ID_in_1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[0]~input_o\,
	devoe => ww_devoe,
	o => \ID_in_1[0]~output_o\);

-- Location: IOOBUF_X8_Y21_N23
\ID_in_1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[1]~input_o\,
	devoe => ww_devoe,
	o => \ID_in_1[1]~output_o\);

-- Location: IOOBUF_X60_Y2_N23
\ID_in_1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[2]~input_o\,
	devoe => ww_devoe,
	o => \ID_in_1[2]~output_o\);

-- Location: IOOBUF_X25_Y28_N16
\ID_in_1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[3]~input_o\,
	devoe => ww_devoe,
	o => \ID_in_1[3]~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\ID_in_1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[4]~input_o\,
	devoe => ww_devoe,
	o => \ID_in_1[4]~output_o\);

-- Location: IOOBUF_X58_Y36_N9
\ID_in_1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[5]~input_o\,
	devoe => ww_devoe,
	o => \ID_in_1[5]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\ID_in_1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[6]~input_o\,
	devoe => ww_devoe,
	o => \ID_in_1[6]~output_o\);

-- Location: IOOBUF_X12_Y21_N30
\ID_in_1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[7]~input_o\,
	devoe => ww_devoe,
	o => \ID_in_1[7]~output_o\);

-- Location: IOOBUF_X25_Y27_N23
\ID_in_1[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[8]~input_o\,
	devoe => ww_devoe,
	o => \ID_in_1[8]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\ID_in_1[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[9]~input_o\,
	devoe => ww_devoe,
	o => \ID_in_1[9]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\ID_in_1[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[10]~input_o\,
	devoe => ww_devoe,
	o => \ID_in_1[10]~output_o\);

-- Location: IOOBUF_X36_Y0_N30
\ID_in_1[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[11]~input_o\,
	devoe => ww_devoe,
	o => \ID_in_1[11]~output_o\);

-- Location: IOOBUF_X60_Y13_N16
\ID_in_1[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[12]~input_o\,
	devoe => ww_devoe,
	o => \ID_in_1[12]~output_o\);

-- Location: IOOBUF_X0_Y3_N23
\ID_in_1[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[13]~input_o\,
	devoe => ww_devoe,
	o => \ID_in_1[13]~output_o\);

-- Location: IOOBUF_X60_Y22_N16
\ID_in_1[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[14]~input_o\,
	devoe => ww_devoe,
	o => \ID_in_1[14]~output_o\);

-- Location: IOOBUF_X53_Y0_N2
\ID_in_1[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_in[15]~input_o\,
	devoe => ww_devoe,
	o => \ID_in_1[15]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\alu2_out_1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_in[0]~input_o\,
	devoe => ww_devoe,
	o => \alu2_out_1[0]~output_o\);

-- Location: IOOBUF_X25_Y26_N16
\alu2_out_1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_in[1]~input_o\,
	devoe => ww_devoe,
	o => \alu2_out_1[1]~output_o\);

-- Location: IOOBUF_X40_Y36_N30
\alu2_out_1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_in[2]~input_o\,
	devoe => ww_devoe,
	o => \alu2_out_1[2]~output_o\);

-- Location: IOOBUF_X12_Y21_N2
\alu2_out_1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_in[3]~input_o\,
	devoe => ww_devoe,
	o => \alu2_out_1[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\alu2_out_1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_in[4]~input_o\,
	devoe => ww_devoe,
	o => \alu2_out_1[4]~output_o\);

-- Location: IOOBUF_X28_Y36_N2
\alu2_out_1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_in[5]~input_o\,
	devoe => ww_devoe,
	o => \alu2_out_1[5]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\alu2_out_1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_in[6]~input_o\,
	devoe => ww_devoe,
	o => \alu2_out_1[6]~output_o\);

-- Location: IOOBUF_X60_Y23_N16
\alu2_out_1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_in[7]~input_o\,
	devoe => ww_devoe,
	o => \alu2_out_1[7]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\alu2_out_1[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_in[8]~input_o\,
	devoe => ww_devoe,
	o => \alu2_out_1[8]~output_o\);

-- Location: IOOBUF_X60_Y10_N16
\alu2_out_1[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_in[9]~input_o\,
	devoe => ww_devoe,
	o => \alu2_out_1[9]~output_o\);

-- Location: IOOBUF_X60_Y15_N16
\alu2_out_1[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_in[10]~input_o\,
	devoe => ww_devoe,
	o => \alu2_out_1[10]~output_o\);

-- Location: IOOBUF_X60_Y14_N23
\alu2_out_1[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_in[11]~input_o\,
	devoe => ww_devoe,
	o => \alu2_out_1[11]~output_o\);

-- Location: IOOBUF_X14_Y21_N23
\alu2_out_1[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_in[12]~input_o\,
	devoe => ww_devoe,
	o => \alu2_out_1[12]~output_o\);

-- Location: IOOBUF_X60_Y23_N23
\alu2_out_1[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_in[13]~input_o\,
	devoe => ww_devoe,
	o => \alu2_out_1[13]~output_o\);

-- Location: IOOBUF_X60_Y8_N16
\alu2_out_1[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_in[14]~input_o\,
	devoe => ww_devoe,
	o => \alu2_out_1[14]~output_o\);

-- Location: IOOBUF_X60_Y8_N23
\alu2_out_1[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2_in[15]~input_o\,
	devoe => ww_devoe,
	o => \alu2_out_1[15]~output_o\);

-- Location: IOIBUF_X0_Y13_N15
\ID_in[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_in(9),
	o => \ID_in[9]~input_o\);

-- Location: IOIBUF_X0_Y3_N15
\ID_in[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_in(10),
	o => \ID_in[10]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\ID_in[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_in(11),
	o => \ID_in[11]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\ID_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_in(6),
	o => \ID_in[6]~input_o\);

-- Location: IOIBUF_X12_Y21_N8
\ID_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_in(7),
	o => \ID_in[7]~input_o\);

-- Location: IOIBUF_X19_Y21_N29
\ID_in[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_in(8),
	o => \ID_in[8]~input_o\);

-- Location: IOIBUF_X25_Y29_N15
\ID_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_in(3),
	o => \ID_in[3]~input_o\);

-- Location: IOIBUF_X6_Y0_N29
\ID_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_in(4),
	o => \ID_in[4]~input_o\);

-- Location: IOIBUF_X60_Y31_N22
\ID_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_in(5),
	o => \ID_in[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\ID_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_in(0),
	o => \ID_in[0]~input_o\);

-- Location: IOIBUF_X8_Y21_N15
\ID_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_in(1),
	o => \ID_in[1]~input_o\);

-- Location: IOIBUF_X60_Y2_N8
\ID_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_in(2),
	o => \ID_in[2]~input_o\);

-- Location: IOIBUF_X60_Y13_N22
\ID_in[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_in(12),
	o => \ID_in[12]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\ID_in[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_in(13),
	o => \ID_in[13]~input_o\);

-- Location: IOIBUF_X60_Y22_N23
\ID_in[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_in(14),
	o => \ID_in[14]~input_o\);

-- Location: IOIBUF_X53_Y0_N8
\ID_in[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_in(15),
	o => \ID_in[15]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\alu2_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_in(0),
	o => \alu2_in[0]~input_o\);

-- Location: IOIBUF_X25_Y26_N22
\alu2_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_in(1),
	o => \alu2_in[1]~input_o\);

-- Location: IOIBUF_X40_Y36_N15
\alu2_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_in(2),
	o => \alu2_in[2]~input_o\);

-- Location: IOIBUF_X14_Y21_N29
\alu2_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_in(3),
	o => \alu2_in[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\alu2_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_in(4),
	o => \alu2_in[4]~input_o\);

-- Location: IOIBUF_X28_Y36_N8
\alu2_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_in(5),
	o => \alu2_in[5]~input_o\);

-- Location: IOIBUF_X0_Y15_N15
\alu2_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_in(6),
	o => \alu2_in[6]~input_o\);

-- Location: IOIBUF_X60_Y23_N1
\alu2_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_in(7),
	o => \alu2_in[7]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\alu2_in[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_in(8),
	o => \alu2_in[8]~input_o\);

-- Location: IOIBUF_X60_Y10_N23
\alu2_in[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_in(9),
	o => \alu2_in[9]~input_o\);

-- Location: IOIBUF_X60_Y15_N22
\alu2_in[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_in(10),
	o => \alu2_in[10]~input_o\);

-- Location: IOIBUF_X60_Y14_N15
\alu2_in[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_in(11),
	o => \alu2_in[11]~input_o\);

-- Location: IOIBUF_X14_Y21_N1
\alu2_in[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_in(12),
	o => \alu2_in[12]~input_o\);

-- Location: IOIBUF_X60_Y22_N8
\alu2_in[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_in(13),
	o => \alu2_in[13]~input_o\);

-- Location: IOIBUF_X60_Y8_N8
\alu2_in[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_in(14),
	o => \alu2_in[14]~input_o\);

-- Location: IOIBUF_X60_Y8_N1
\alu2_in[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu2_in(15),
	o => \alu2_in[15]~input_o\);

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

ww_ID_out1(0) <= \ID_out1[0]~output_o\;

ww_ID_out1(1) <= \ID_out1[1]~output_o\;

ww_ID_out1(2) <= \ID_out1[2]~output_o\;

ww_ID_out2(0) <= \ID_out2[0]~output_o\;

ww_ID_out2(1) <= \ID_out2[1]~output_o\;

ww_ID_out2(2) <= \ID_out2[2]~output_o\;

ww_ID_out3(0) <= \ID_out3[0]~output_o\;

ww_ID_out3(1) <= \ID_out3[1]~output_o\;

ww_ID_out3(2) <= \ID_out3[2]~output_o\;

ww_ID_out4(0) <= \ID_out4[0]~output_o\;

ww_ID_out4(1) <= \ID_out4[1]~output_o\;

ww_ID_out4(2) <= \ID_out4[2]~output_o\;

ww_ID_out4(3) <= \ID_out4[3]~output_o\;

ww_ID_out4(4) <= \ID_out4[4]~output_o\;

ww_ID_out4(5) <= \ID_out4[5]~output_o\;

ww_ID_out5(0) <= \ID_out5[0]~output_o\;

ww_ID_out5(1) <= \ID_out5[1]~output_o\;

ww_ID_out5(2) <= \ID_out5[2]~output_o\;

ww_ID_out5(3) <= \ID_out5[3]~output_o\;

ww_ID_out5(4) <= \ID_out5[4]~output_o\;

ww_ID_out5(5) <= \ID_out5[5]~output_o\;

ww_ID_out5(6) <= \ID_out5[6]~output_o\;

ww_ID_out5(7) <= \ID_out5[7]~output_o\;

ww_ID_out5(8) <= \ID_out5[8]~output_o\;

ww_ID_in_1(0) <= \ID_in_1[0]~output_o\;

ww_ID_in_1(1) <= \ID_in_1[1]~output_o\;

ww_ID_in_1(2) <= \ID_in_1[2]~output_o\;

ww_ID_in_1(3) <= \ID_in_1[3]~output_o\;

ww_ID_in_1(4) <= \ID_in_1[4]~output_o\;

ww_ID_in_1(5) <= \ID_in_1[5]~output_o\;

ww_ID_in_1(6) <= \ID_in_1[6]~output_o\;

ww_ID_in_1(7) <= \ID_in_1[7]~output_o\;

ww_ID_in_1(8) <= \ID_in_1[8]~output_o\;

ww_ID_in_1(9) <= \ID_in_1[9]~output_o\;

ww_ID_in_1(10) <= \ID_in_1[10]~output_o\;

ww_ID_in_1(11) <= \ID_in_1[11]~output_o\;

ww_ID_in_1(12) <= \ID_in_1[12]~output_o\;

ww_ID_in_1(13) <= \ID_in_1[13]~output_o\;

ww_ID_in_1(14) <= \ID_in_1[14]~output_o\;

ww_ID_in_1(15) <= \ID_in_1[15]~output_o\;

ww_alu2_out_1(0) <= \alu2_out_1[0]~output_o\;

ww_alu2_out_1(1) <= \alu2_out_1[1]~output_o\;

ww_alu2_out_1(2) <= \alu2_out_1[2]~output_o\;

ww_alu2_out_1(3) <= \alu2_out_1[3]~output_o\;

ww_alu2_out_1(4) <= \alu2_out_1[4]~output_o\;

ww_alu2_out_1(5) <= \alu2_out_1[5]~output_o\;

ww_alu2_out_1(6) <= \alu2_out_1[6]~output_o\;

ww_alu2_out_1(7) <= \alu2_out_1[7]~output_o\;

ww_alu2_out_1(8) <= \alu2_out_1[8]~output_o\;

ww_alu2_out_1(9) <= \alu2_out_1[9]~output_o\;

ww_alu2_out_1(10) <= \alu2_out_1[10]~output_o\;

ww_alu2_out_1(11) <= \alu2_out_1[11]~output_o\;

ww_alu2_out_1(12) <= \alu2_out_1[12]~output_o\;

ww_alu2_out_1(13) <= \alu2_out_1[13]~output_o\;

ww_alu2_out_1(14) <= \alu2_out_1[14]~output_o\;

ww_alu2_out_1(15) <= \alu2_out_1[15]~output_o\;
END structure;


