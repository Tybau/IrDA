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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "03/07/2018 14:04:24"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	IrDA IS
    PORT (
	CLK : IN std_logic;
	rst : IN std_logic;
	Address_in : IN std_logic_vector(4 DOWNTO 0);
	Cmd_in : IN std_logic_vector(5 DOWNTO 0);
	Go : IN std_logic;
	Address_out : OUT std_logic_vector(4 DOWNTO 0);
	Cmd_out : OUT std_logic_vector(5 DOWNTO 0);
	error_sig : OUT std_logic;
	toggle : OUT std_logic;
	go_out : OUT std_logic;
	enable : OUT std_logic;
	Tx_out : OUT std_logic
	);
END IrDA;

-- Design Ports Information
-- Address_out[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[4]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd_out[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd_out[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd_out[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd_out[3]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd_out[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd_out[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- error_sig	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toggle	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- go_out	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx_out	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Go	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_in[3]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_in[4]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_in[2]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd_in[5]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_in[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd_in[4]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_in[1]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd_in[1]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd_in[2]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd_in[0]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd_in[3]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF IrDA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_Address_in : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Cmd_in : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Go : std_logic;
SIGNAL ww_Address_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Cmd_out : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_error_sig : std_logic;
SIGNAL ww_toggle : std_logic;
SIGNAL ww_go_out : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_Tx_out : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder|decoder|Add0~14_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~24_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~26_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~28_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~36_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~46_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~52_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~56_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~2_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~8_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~14_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~16_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~26_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~36_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~50_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~52_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~54_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~60_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~6_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~16_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~18_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~22_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~26_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~42_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~16_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~22_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~26_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~30_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~38_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~54_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~12_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~1_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~3_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~5_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~7_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~9_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~11_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~12_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~13\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~14_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~15\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~16_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~17\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~18_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~19\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~20_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~21\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~22_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~23\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~24_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~25\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~26_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~27\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~28_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~29\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~30_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~31\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~32_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~33\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~34_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~35\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~36_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~37\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~38_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~39\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~40_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~41\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~42_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~43\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~44_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~45\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~46_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~47\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~48_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~49\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~50_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~51\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~52_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~53\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~54_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~55\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~56_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~57\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~58_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~59\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~60_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~30_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~42_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~54_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~12_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~18_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~24_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~36_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~52_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~56_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~59\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~60_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~26_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~32_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~34_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~36_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~52_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~56_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~6_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~8_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~26_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~30_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~38_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~44_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~53\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~54_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~55\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~56_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~57\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~58_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~59\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~60_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~61\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~62_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|enable~q\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~2_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~6_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~2_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~4_combout\ : std_logic;
SIGNAL \decoder|decoder|data~8_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~7_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~8_combout\ : std_logic;
SIGNAL \decoder|decoder|data~16_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~9_combout\ : std_logic;
SIGNAL \decoder|decoder|data~18_combout\ : std_logic;
SIGNAL \decoder|decoder|EF.State_Begin~q\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~11_combout\ : std_logic;
SIGNAL \decoder|decoder|data~22_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector5~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|tick_bit~q\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~1_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector5~1_combout\ : std_logic;
SIGNAL \decoder|demanchester|State.suit11~q\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~8_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~73_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~75_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~78_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~83_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~87_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~88_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~89_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~94_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector4~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~7_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector3~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~7_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~8_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[30]~4_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[27]~7_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[25]~9_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[18]~16_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[7]~27_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~3_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|toggle~q\ : std_logic;
SIGNAL \decoder|demanchester|Selector7~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~6_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~3_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|toggle~0_combout\ : std_logic;
SIGNAL \decoder|deburst|EP.E3~q\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~5_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~9_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~1_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~3_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~7_combout\ : std_logic;
SIGNAL \decoder|deburst|EP.E2~q\ : std_logic;
SIGNAL \decoder|tick_gen|stburst~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst~3_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst~5_combout\ : std_logic;
SIGNAL \decoder|deburst|EP.E1~q\ : std_logic;
SIGNAL \decoder|deburst|EP~10_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector2~2_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|reg[11]~1_combout\ : std_logic;
SIGNAL \Address_in[0]~input_o\ : std_logic;
SIGNAL \decoder|deburst|EP.E3~feeder_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|reg[6]~feeder_combout\ : std_logic;
SIGNAL \Address_out[0]~output_o\ : std_logic;
SIGNAL \Address_out[1]~output_o\ : std_logic;
SIGNAL \Address_out[2]~output_o\ : std_logic;
SIGNAL \Address_out[3]~output_o\ : std_logic;
SIGNAL \Address_out[4]~output_o\ : std_logic;
SIGNAL \Cmd_out[0]~output_o\ : std_logic;
SIGNAL \Cmd_out[1]~output_o\ : std_logic;
SIGNAL \Cmd_out[2]~output_o\ : std_logic;
SIGNAL \Cmd_out[3]~output_o\ : std_logic;
SIGNAL \Cmd_out[4]~output_o\ : std_logic;
SIGNAL \Cmd_out[5]~output_o\ : std_logic;
SIGNAL \error_sig~output_o\ : std_logic;
SIGNAL \toggle~output_o\ : std_logic;
SIGNAL \go_out~output_o\ : std_logic;
SIGNAL \enable~output_o\ : std_logic;
SIGNAL \Tx_out~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~0_combout\ : std_logic;
SIGNAL \Go~input_o\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~40_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~13\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~14_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~11_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~15\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~16_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~17\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~18_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~19\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~21\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~23\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~24_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~25\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~27\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~28_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~22_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~9_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~20_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~7_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~1_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~3_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~5_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~7_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~9\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~11\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~12_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~29\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~30_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~31\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~33\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~35\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~37\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~38_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~39\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~41\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~42_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~43\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~44_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~45\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~46_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~47\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~48_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~49\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~50_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~51\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~53\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~54_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~55\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~57\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~58_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~59\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~60_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~9_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|tick_trame~q\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector2~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector2~1_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \encoder|MAE_emission|EF.State_Init~q\ : std_logic;
SIGNAL \encoder|MAE_emission|i[0]~2_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[1]~31_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~1\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~3\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~4_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector37~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~5\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~6_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector36~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector3~1_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|EF.State_Send~q\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector39~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~9_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~7\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~9\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~10_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[5]~29_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[4]~30_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~11\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~12_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[6]~28_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~8_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~10_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector8~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[26]~8_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[13]~21_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~13\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~15\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~17\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~19\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~20_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[10]~24_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~21\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~23\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~25\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~27\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~29\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~30_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[15]~19_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~31\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~33\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~35\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~37\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~38_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[19]~15_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~39\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~40_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[20]~14_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~41\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~42_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[21]~13_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~43\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~45\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~46_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[23]~11_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~47\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~48_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[24]~10_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~49\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~51\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~53\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~55\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~56_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[28]~6_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~57\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~58_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[29]~5_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~59\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~61\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~62_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[31]~3_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~44_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[22]~12_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~2_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~32_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[16]~18_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~34_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[17]~17_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~3_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~4_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|process_0~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[0]~32_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~22_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[11]~23_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~18_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[9]~25_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[8]~26_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~6_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~24_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[12]~22_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~28_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[14]~20_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~5_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~7_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector4~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector4~1_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector4~2_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|EF.State_Close~q\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector0~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|EF.State_Begin~q\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector1~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|EF.State_Clear~q\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector7~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|clear~q\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~1\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~3\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~5\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~7\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~9\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~11\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~13\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~15\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~17\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~18_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~19\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~20_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~21\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~23\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~24_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~25\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~26_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~27\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~28_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~29\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~31\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~32_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~33\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~34_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~35\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~36_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~37\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~39\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~40_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~41\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~43\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~45\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~46_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~47\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~48_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~49\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~50_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~51\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~52_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~53\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~55\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~56_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~57\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~58_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~59\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~60_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~61\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~62_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~14_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~16_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~22_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~9_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~44_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~38_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~7_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|tick_manch~q\ : std_logic;
SIGNAL \encoder|ManchesterGenerator|manch~0_combout\ : std_logic;
SIGNAL \encoder|ManchesterGenerator|manch~q\ : std_logic;
SIGNAL \encoder|BurstGenerator|state[0]~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~1\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst[1]~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~3\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~9_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~5\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~7\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~9\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~11\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~12_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~13\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~14_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~15\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~17\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~18_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~19\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~20_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~21\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~23\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~24_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~25\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~27\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~28_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~29\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~31\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~32_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~33\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~34_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~35\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~36_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~37\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~39\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~40_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~41\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~43\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~45\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~46_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~47\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~48_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~49\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~50_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~51\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~52_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~44_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~42_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~53\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~55\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~56_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~57\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~59\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~60_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~58_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~61\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~62_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|tick_burst~q\ : std_logic;
SIGNAL \encoder|BurstGenerator|state~0_combout\ : std_logic;
SIGNAL \encoder|BurstGenerator|Out_burst~0_combout\ : std_logic;
SIGNAL \encoder|BurstGenerator|Out_burst~1_combout\ : std_logic;
SIGNAL \encoder|BurstGenerator|Out_burst~q\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector6~0_combout\ : std_logic;
SIGNAL \Address_in[3]~input_o\ : std_logic;
SIGNAL \encoder|MAE_emission|reg[11]~0_combout\ : std_logic;
SIGNAL \Address_in[4]~input_o\ : std_logic;
SIGNAL \encoder|MAE_emission|reg[10]~feeder_combout\ : std_logic;
SIGNAL \Address_in[2]~input_o\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~1_combout\ : std_logic;
SIGNAL \Cmd_in[1]~input_o\ : std_logic;
SIGNAL \encoder|MAE_emission|reg[1]~feeder_combout\ : std_logic;
SIGNAL \Cmd_in[3]~input_o\ : std_logic;
SIGNAL \Cmd_in[2]~input_o\ : std_logic;
SIGNAL \Cmd_in[0]~input_o\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~4_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~5_combout\ : std_logic;
SIGNAL \Cmd_in[5]~input_o\ : std_logic;
SIGNAL \encoder|MAE_emission|reg[5]~feeder_combout\ : std_logic;
SIGNAL \Address_in[1]~input_o\ : std_logic;
SIGNAL \Cmd_in[4]~input_o\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~2_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~3_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~6_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~7_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector6~1_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|out_trame~q\ : std_logic;
SIGNAL \encoder|Tx~0_combout\ : std_logic;
SIGNAL \decoder|deburst|Selector0~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~1\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst[1]~10_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~3\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~5\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~7\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~9\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~11\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~12_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst~1_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~13\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~14_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~15\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~17\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~18_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~19\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~20_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~21\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~23\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~24_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~25\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~27\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~28_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~29\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~31\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~32_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~33\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~34_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~35\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~36_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~3_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~37\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~39\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~40_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~41\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~43\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~45\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~46_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~47\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~48_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~49\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~50_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~51\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~52_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~1_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~42_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~10_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~8_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~16_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~22_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~6_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~7_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~10_combout\ : std_logic;
SIGNAL \decoder|tick_gen|tick_burst~feeder_combout\ : std_logic;
SIGNAL \decoder|tick_gen|tick_burst~q\ : std_logic;
SIGNAL \decoder|deburst|EP.E0~q\ : std_logic;
SIGNAL \decoder|deburst|trame_deburst~0_combout\ : std_logic;
SIGNAL \decoder|deburst|trame_deburst~q\ : std_logic;
SIGNAL \decoder|demanchester|Selector3~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~1\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~3\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~5\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~7\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~8_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~9\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~11\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~12_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~10_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~1_cout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~3_cout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~5_cout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~7_cout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~9_cout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~11_cout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~13\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~14_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~15\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~16_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~17\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~19\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~20_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~21\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~22_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~23\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~25\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~26_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~27\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~28_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~29\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~30_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~31\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~32_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~33\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~34_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~35\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~37\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~38_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~39\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~41\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~43\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~44_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~45\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~46_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~47\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~48_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~49\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~50_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~51\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~53\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~54_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~1_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~55\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~57\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~58_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~5_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~42_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~40_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~3_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~7_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~1_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~8_combout\ : std_logic;
SIGNAL \decoder|tick_gen|tick_manch~q\ : std_logic;
SIGNAL \decoder|demanchester|State.valid1~q\ : std_logic;
SIGNAL \decoder|demanchester|Selector1~0_combout\ : std_logic;
SIGNAL \decoder|demanchester|State.Start~q\ : std_logic;
SIGNAL \decoder|demanchester|Selector6~0_combout\ : std_logic;
SIGNAL \decoder|demanchester|State.suit10~q\ : std_logic;
SIGNAL \decoder|demanchester|Selector2~0_combout\ : std_logic;
SIGNAL \decoder|demanchester|State.valid0~q\ : std_logic;
SIGNAL \decoder|demanchester|Selector5~0_combout\ : std_logic;
SIGNAL \decoder|demanchester|State.suit01~q\ : std_logic;
SIGNAL \decoder|demanchester|Selector0~0_combout\ : std_logic;
SIGNAL \decoder|demanchester|Selector0~1_combout\ : std_logic;
SIGNAL \decoder|demanchester|State.Init~q\ : std_logic;
SIGNAL \decoder|demanchester|Selector4~0_combout\ : std_logic;
SIGNAL \decoder|demanchester|State.suit00~q\ : std_logic;
SIGNAL \decoder|demanchester|WideOr0~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~44_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~5_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~32_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~38_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~6_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~30_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~28_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~1_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~7_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~9_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~13\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~14_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~15\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~17\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~19\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~20_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~21\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~23\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~24_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~25\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~27\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~29\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~31\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~33\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~34_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~35\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~36_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~37\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~39\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~40_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~41\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~43\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~45\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~46_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~47\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~48_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~49\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~50_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~51\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~52_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~53\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~54_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~3_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~55\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~56_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~57\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~59\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~60_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~61\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~62_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~58_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~10_combout\ : std_logic;
SIGNAL \decoder|tick_gen|tick_bit~q\ : std_logic;
SIGNAL \decoder|decoder|Selector12~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector3~0_combout\ : std_logic;
SIGNAL \decoder|decoder|EF~14_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector4~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector4~2_combout\ : std_logic;
SIGNAL \decoder|decoder|EF.State_Extract~q\ : std_logic;
SIGNAL \decoder|decoder|Add0~1\ : std_logic;
SIGNAL \decoder|decoder|Add0~4\ : std_logic;
SIGNAL \decoder|decoder|Add0~7\ : std_logic;
SIGNAL \decoder|decoder|Add0~9_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~11_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector7~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~20_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~91_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~18_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~92_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~16_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~93_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~7_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~12_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~95_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~3_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~5_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~8_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~32_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~85_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~5_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~9_combout\ : std_logic;
SIGNAL \decoder|decoder|i[0]~0_combout\ : std_logic;
SIGNAL \decoder|decoder|i[0]~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~10\ : std_logic;
SIGNAL \decoder|decoder|Add0~13\ : std_logic;
SIGNAL \decoder|decoder|Add0~15\ : std_logic;
SIGNAL \decoder|decoder|Add0~17\ : std_logic;
SIGNAL \decoder|decoder|Add0~19\ : std_logic;
SIGNAL \decoder|decoder|Add0~21\ : std_logic;
SIGNAL \decoder|decoder|Add0~22_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~90_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~23\ : std_logic;
SIGNAL \decoder|decoder|Add0~25\ : std_logic;
SIGNAL \decoder|decoder|Add0~27\ : std_logic;
SIGNAL \decoder|decoder|Add0~29\ : std_logic;
SIGNAL \decoder|decoder|Add0~30_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~86_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~31\ : std_logic;
SIGNAL \decoder|decoder|Add0~33\ : std_logic;
SIGNAL \decoder|decoder|Add0~34_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~84_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~35\ : std_logic;
SIGNAL \decoder|decoder|Add0~37\ : std_logic;
SIGNAL \decoder|decoder|Add0~39\ : std_logic;
SIGNAL \decoder|decoder|Add0~41\ : std_logic;
SIGNAL \decoder|decoder|Add0~42_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~80_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~43\ : std_logic;
SIGNAL \decoder|decoder|Add0~44_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~79_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~45\ : std_logic;
SIGNAL \decoder|decoder|Add0~47\ : std_logic;
SIGNAL \decoder|decoder|Add0~48_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~77_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~49\ : std_logic;
SIGNAL \decoder|decoder|Add0~50_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~76_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~51\ : std_logic;
SIGNAL \decoder|decoder|Add0~53\ : std_logic;
SIGNAL \decoder|decoder|Add0~54_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~74_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~55\ : std_logic;
SIGNAL \decoder|decoder|Add0~57\ : std_logic;
SIGNAL \decoder|decoder|Add0~59\ : std_logic;
SIGNAL \decoder|decoder|Add0~60_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~71_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~58_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~72_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~38_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~82_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~40_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~81_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~3_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~61\ : std_logic;
SIGNAL \decoder|decoder|Add0~62_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~70_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~63\ : std_logic;
SIGNAL \decoder|decoder|Add0~64_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~69_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~65\ : std_logic;
SIGNAL \decoder|decoder|Add0~66_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~68_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~2_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~4_combout\ : std_logic;
SIGNAL \decoder|decoder|process_0~0_combout\ : std_logic;
SIGNAL \decoder|decoder|data~0_combout\ : std_logic;
SIGNAL \decoder|decoder|data~1_combout\ : std_logic;
SIGNAL \decoder|decoder|data~2_combout\ : std_logic;
SIGNAL \decoder|decoder|data~3_combout\ : std_logic;
SIGNAL \decoder|decoder|data~4_combout\ : std_logic;
SIGNAL \decoder|decoder|data~5_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~6_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~8_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~3_combout\ : std_logic;
SIGNAL \decoder|decoder|data~6_combout\ : std_logic;
SIGNAL \decoder|decoder|data~7_combout\ : std_logic;
SIGNAL \decoder|decoder|data~9_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~5_combout\ : std_logic;
SIGNAL \decoder|decoder|data~10_combout\ : std_logic;
SIGNAL \decoder|decoder|data~11_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~6_combout\ : std_logic;
SIGNAL \decoder|decoder|data~12_combout\ : std_logic;
SIGNAL \decoder|decoder|data~13_combout\ : std_logic;
SIGNAL \decoder|decoder|data~14_combout\ : std_logic;
SIGNAL \decoder|decoder|data~15_combout\ : std_logic;
SIGNAL \decoder|decoder|data~17_combout\ : std_logic;
SIGNAL \decoder|decoder|data~19_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~10_combout\ : std_logic;
SIGNAL \decoder|decoder|data~20_combout\ : std_logic;
SIGNAL \decoder|decoder|data~21_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector3~1_combout\ : std_logic;
SIGNAL \decoder|decoder|EF.State_Init~q\ : std_logic;
SIGNAL \decoder|decoder|Selector6~3_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~10_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector3~2_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector6~2_combout\ : std_logic;
SIGNAL \decoder|decoder|EF.State_Error~q\ : std_logic;
SIGNAL \decoder|decoder|Selector1~0_combout\ : std_logic;
SIGNAL \decoder|decoder|error_sig~q\ : std_logic;
SIGNAL \decoder|decoder|data~23_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector5~4_combout\ : std_logic;
SIGNAL \decoder|decoder|EF.State_Send~q\ : std_logic;
SIGNAL \decoder|decoder|Selector0~0_combout\ : std_logic;
SIGNAL \decoder|decoder|enable~q\ : std_logic;
SIGNAL \decoder|tick_gen|stbit\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \decoder|tick_gen|stmanch\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \decoder|tick_gen|stburst\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \encoder|BurstGenerator|state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \encoder|TickGenerator|sttrame\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \encoder|TickGenerator|stmanch\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \encoder|TickGenerator|stburst\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \encoder|TickGenerator|stbit\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \encoder|MAE_emission|reg\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \encoder|MAE_emission|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \decoder|decoder|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \decoder|decoder|data\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \encoder|MAE_emission|ALT_INV_clear~q\ : std_logic;
SIGNAL \decoder|decoder|ALT_INV_EF.State_Extract~q\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_rst <= rst;
ww_Address_in <= Address_in;
ww_Cmd_in <= Cmd_in;
ww_Go <= Go;
Address_out <= ww_Address_out;
Cmd_out <= ww_Cmd_out;
error_sig <= ww_error_sig;
toggle <= ww_toggle;
go_out <= ww_go_out;
enable <= ww_enable;
Tx_out <= ww_Tx_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\encoder|MAE_emission|ALT_INV_clear~q\ <= NOT \encoder|MAE_emission|clear~q\;
\decoder|decoder|ALT_INV_EF.State_Extract~q\ <= NOT \decoder|decoder|EF.State_Extract~q\;

-- Location: LCCOMB_X76_Y67_N10
\decoder|decoder|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~14_combout\ = (\decoder|decoder|i\(5) & (\decoder|decoder|Add0~13\ & VCC)) # (!\decoder|decoder|i\(5) & (!\decoder|decoder|Add0~13\))
-- \decoder|decoder|Add0~15\ = CARRY((!\decoder|decoder|i\(5) & !\decoder|decoder|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(5),
	datad => VCC,
	cin => \decoder|decoder|Add0~13\,
	combout => \decoder|decoder|Add0~14_combout\,
	cout => \decoder|decoder|Add0~15\);

-- Location: LCCOMB_X76_Y67_N20
\decoder|decoder|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~24_combout\ = (\decoder|decoder|i\(10) & ((GND) # (!\decoder|decoder|Add0~23\))) # (!\decoder|decoder|i\(10) & (\decoder|decoder|Add0~23\ $ (GND)))
-- \decoder|decoder|Add0~25\ = CARRY((\decoder|decoder|i\(10)) # (!\decoder|decoder|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(10),
	datad => VCC,
	cin => \decoder|decoder|Add0~23\,
	combout => \decoder|decoder|Add0~24_combout\,
	cout => \decoder|decoder|Add0~25\);

-- Location: LCCOMB_X76_Y67_N22
\decoder|decoder|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~26_combout\ = (\decoder|decoder|i\(11) & (\decoder|decoder|Add0~25\ & VCC)) # (!\decoder|decoder|i\(11) & (!\decoder|decoder|Add0~25\))
-- \decoder|decoder|Add0~27\ = CARRY((!\decoder|decoder|i\(11) & !\decoder|decoder|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(11),
	datad => VCC,
	cin => \decoder|decoder|Add0~25\,
	combout => \decoder|decoder|Add0~26_combout\,
	cout => \decoder|decoder|Add0~27\);

-- Location: LCCOMB_X76_Y67_N24
\decoder|decoder|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~28_combout\ = (\decoder|decoder|i\(12) & ((GND) # (!\decoder|decoder|Add0~27\))) # (!\decoder|decoder|i\(12) & (\decoder|decoder|Add0~27\ $ (GND)))
-- \decoder|decoder|Add0~29\ = CARRY((\decoder|decoder|i\(12)) # (!\decoder|decoder|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(12),
	datad => VCC,
	cin => \decoder|decoder|Add0~27\,
	combout => \decoder|decoder|Add0~28_combout\,
	cout => \decoder|decoder|Add0~29\);

-- Location: LCCOMB_X76_Y66_N0
\decoder|decoder|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~36_combout\ = (\decoder|decoder|i\(16) & ((GND) # (!\decoder|decoder|Add0~35\))) # (!\decoder|decoder|i\(16) & (\decoder|decoder|Add0~35\ $ (GND)))
-- \decoder|decoder|Add0~37\ = CARRY((\decoder|decoder|i\(16)) # (!\decoder|decoder|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(16),
	datad => VCC,
	cin => \decoder|decoder|Add0~35\,
	combout => \decoder|decoder|Add0~36_combout\,
	cout => \decoder|decoder|Add0~37\);

-- Location: LCCOMB_X76_Y66_N10
\decoder|decoder|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~46_combout\ = (\decoder|decoder|i\(21) & (\decoder|decoder|Add0~45\ & VCC)) # (!\decoder|decoder|i\(21) & (!\decoder|decoder|Add0~45\))
-- \decoder|decoder|Add0~47\ = CARRY((!\decoder|decoder|i\(21) & !\decoder|decoder|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(21),
	datad => VCC,
	cin => \decoder|decoder|Add0~45\,
	combout => \decoder|decoder|Add0~46_combout\,
	cout => \decoder|decoder|Add0~47\);

-- Location: LCCOMB_X76_Y66_N16
\decoder|decoder|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~52_combout\ = (\decoder|decoder|i\(24) & ((GND) # (!\decoder|decoder|Add0~51\))) # (!\decoder|decoder|i\(24) & (\decoder|decoder|Add0~51\ $ (GND)))
-- \decoder|decoder|Add0~53\ = CARRY((\decoder|decoder|i\(24)) # (!\decoder|decoder|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(24),
	datad => VCC,
	cin => \decoder|decoder|Add0~51\,
	combout => \decoder|decoder|Add0~52_combout\,
	cout => \decoder|decoder|Add0~53\);

-- Location: LCCOMB_X76_Y66_N20
\decoder|decoder|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~56_combout\ = (\decoder|decoder|i\(26) & ((GND) # (!\decoder|decoder|Add0~55\))) # (!\decoder|decoder|i\(26) & (\decoder|decoder|Add0~55\ $ (GND)))
-- \decoder|decoder|Add0~57\ = CARRY((\decoder|decoder|i\(26)) # (!\decoder|decoder|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(26),
	datad => VCC,
	cin => \decoder|decoder|Add0~55\,
	combout => \decoder|decoder|Add0~56_combout\,
	cout => \decoder|decoder|Add0~57\);

-- Location: LCCOMB_X101_Y33_N2
\encoder|MAE_emission|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~2_combout\ = (\encoder|MAE_emission|i\(1) & (\encoder|MAE_emission|Add0~1\ & VCC)) # (!\encoder|MAE_emission|i\(1) & (!\encoder|MAE_emission|Add0~1\))
-- \encoder|MAE_emission|Add0~3\ = CARRY((!\encoder|MAE_emission|i\(1) & !\encoder|MAE_emission|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(1),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~1\,
	combout => \encoder|MAE_emission|Add0~2_combout\,
	cout => \encoder|MAE_emission|Add0~3\);

-- Location: LCCOMB_X101_Y33_N8
\encoder|MAE_emission|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~8_combout\ = (\encoder|MAE_emission|i\(4) & ((GND) # (!\encoder|MAE_emission|Add0~7\))) # (!\encoder|MAE_emission|i\(4) & (\encoder|MAE_emission|Add0~7\ $ (GND)))
-- \encoder|MAE_emission|Add0~9\ = CARRY((\encoder|MAE_emission|i\(4)) # (!\encoder|MAE_emission|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(4),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~7\,
	combout => \encoder|MAE_emission|Add0~8_combout\,
	cout => \encoder|MAE_emission|Add0~9\);

-- Location: LCCOMB_X101_Y33_N14
\encoder|MAE_emission|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~14_combout\ = (\encoder|MAE_emission|i\(7) & (\encoder|MAE_emission|Add0~13\ & VCC)) # (!\encoder|MAE_emission|i\(7) & (!\encoder|MAE_emission|Add0~13\))
-- \encoder|MAE_emission|Add0~15\ = CARRY((!\encoder|MAE_emission|i\(7) & !\encoder|MAE_emission|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(7),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~13\,
	combout => \encoder|MAE_emission|Add0~14_combout\,
	cout => \encoder|MAE_emission|Add0~15\);

-- Location: LCCOMB_X101_Y33_N16
\encoder|MAE_emission|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~16_combout\ = (\encoder|MAE_emission|i\(8) & ((GND) # (!\encoder|MAE_emission|Add0~15\))) # (!\encoder|MAE_emission|i\(8) & (\encoder|MAE_emission|Add0~15\ $ (GND)))
-- \encoder|MAE_emission|Add0~17\ = CARRY((\encoder|MAE_emission|i\(8)) # (!\encoder|MAE_emission|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(8),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~15\,
	combout => \encoder|MAE_emission|Add0~16_combout\,
	cout => \encoder|MAE_emission|Add0~17\);

-- Location: LCCOMB_X101_Y33_N26
\encoder|MAE_emission|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~26_combout\ = (\encoder|MAE_emission|i\(13) & (\encoder|MAE_emission|Add0~25\ & VCC)) # (!\encoder|MAE_emission|i\(13) & (!\encoder|MAE_emission|Add0~25\))
-- \encoder|MAE_emission|Add0~27\ = CARRY((!\encoder|MAE_emission|i\(13) & !\encoder|MAE_emission|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(13),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~25\,
	combout => \encoder|MAE_emission|Add0~26_combout\,
	cout => \encoder|MAE_emission|Add0~27\);

-- Location: LCCOMB_X101_Y32_N4
\encoder|MAE_emission|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~36_combout\ = (\encoder|MAE_emission|i\(18) & ((GND) # (!\encoder|MAE_emission|Add0~35\))) # (!\encoder|MAE_emission|i\(18) & (\encoder|MAE_emission|Add0~35\ $ (GND)))
-- \encoder|MAE_emission|Add0~37\ = CARRY((\encoder|MAE_emission|i\(18)) # (!\encoder|MAE_emission|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(18),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~35\,
	combout => \encoder|MAE_emission|Add0~36_combout\,
	cout => \encoder|MAE_emission|Add0~37\);

-- Location: LCCOMB_X101_Y32_N18
\encoder|MAE_emission|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~50_combout\ = (\encoder|MAE_emission|i\(25) & (\encoder|MAE_emission|Add0~49\ & VCC)) # (!\encoder|MAE_emission|i\(25) & (!\encoder|MAE_emission|Add0~49\))
-- \encoder|MAE_emission|Add0~51\ = CARRY((!\encoder|MAE_emission|i\(25) & !\encoder|MAE_emission|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(25),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~49\,
	combout => \encoder|MAE_emission|Add0~50_combout\,
	cout => \encoder|MAE_emission|Add0~51\);

-- Location: LCCOMB_X101_Y32_N20
\encoder|MAE_emission|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~52_combout\ = (\encoder|MAE_emission|i\(26) & ((GND) # (!\encoder|MAE_emission|Add0~51\))) # (!\encoder|MAE_emission|i\(26) & (\encoder|MAE_emission|Add0~51\ $ (GND)))
-- \encoder|MAE_emission|Add0~53\ = CARRY((\encoder|MAE_emission|i\(26)) # (!\encoder|MAE_emission|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(26),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~51\,
	combout => \encoder|MAE_emission|Add0~52_combout\,
	cout => \encoder|MAE_emission|Add0~53\);

-- Location: LCCOMB_X101_Y32_N22
\encoder|MAE_emission|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~54_combout\ = (\encoder|MAE_emission|i\(27) & (\encoder|MAE_emission|Add0~53\ & VCC)) # (!\encoder|MAE_emission|i\(27) & (!\encoder|MAE_emission|Add0~53\))
-- \encoder|MAE_emission|Add0~55\ = CARRY((!\encoder|MAE_emission|i\(27) & !\encoder|MAE_emission|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(27),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~53\,
	combout => \encoder|MAE_emission|Add0~54_combout\,
	cout => \encoder|MAE_emission|Add0~55\);

-- Location: LCCOMB_X101_Y32_N28
\encoder|MAE_emission|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~60_combout\ = (\encoder|MAE_emission|i\(30) & ((GND) # (!\encoder|MAE_emission|Add0~59\))) # (!\encoder|MAE_emission|i\(30) & (\encoder|MAE_emission|Add0~59\ $ (GND)))
-- \encoder|MAE_emission|Add0~61\ = CARRY((\encoder|MAE_emission|i\(30)) # (!\encoder|MAE_emission|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(30),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~59\,
	combout => \encoder|MAE_emission|Add0~60_combout\,
	cout => \encoder|MAE_emission|Add0~61\);

-- Location: LCCOMB_X76_Y62_N6
\decoder|tick_gen|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~6_combout\ = (\decoder|tick_gen|stbit\(3) & (!\decoder|tick_gen|Add2~5\)) # (!\decoder|tick_gen|stbit\(3) & ((\decoder|tick_gen|Add2~5\) # (GND)))
-- \decoder|tick_gen|Add2~7\ = CARRY((!\decoder|tick_gen|Add2~5\) # (!\decoder|tick_gen|stbit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(3),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~5\,
	combout => \decoder|tick_gen|Add2~6_combout\,
	cout => \decoder|tick_gen|Add2~7\);

-- Location: LCCOMB_X76_Y62_N16
\decoder|tick_gen|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~16_combout\ = (\decoder|tick_gen|stbit\(8) & (!\decoder|tick_gen|Add2~15\ & VCC)) # (!\decoder|tick_gen|stbit\(8) & (\decoder|tick_gen|Add2~15\ $ (GND)))
-- \decoder|tick_gen|Add2~17\ = CARRY((!\decoder|tick_gen|stbit\(8) & !\decoder|tick_gen|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(8),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~15\,
	combout => \decoder|tick_gen|Add2~16_combout\,
	cout => \decoder|tick_gen|Add2~17\);

-- Location: LCCOMB_X76_Y62_N18
\decoder|tick_gen|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~18_combout\ = (\decoder|tick_gen|stbit\(9) & ((\decoder|tick_gen|Add2~17\) # (GND))) # (!\decoder|tick_gen|stbit\(9) & (!\decoder|tick_gen|Add2~17\))
-- \decoder|tick_gen|Add2~19\ = CARRY((\decoder|tick_gen|stbit\(9)) # (!\decoder|tick_gen|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(9),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~17\,
	combout => \decoder|tick_gen|Add2~18_combout\,
	cout => \decoder|tick_gen|Add2~19\);

-- Location: LCCOMB_X76_Y62_N22
\decoder|tick_gen|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~22_combout\ = (\decoder|tick_gen|stbit\(11) & ((\decoder|tick_gen|Add2~21\) # (GND))) # (!\decoder|tick_gen|stbit\(11) & (!\decoder|tick_gen|Add2~21\))
-- \decoder|tick_gen|Add2~23\ = CARRY((\decoder|tick_gen|stbit\(11)) # (!\decoder|tick_gen|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(11),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~21\,
	combout => \decoder|tick_gen|Add2~22_combout\,
	cout => \decoder|tick_gen|Add2~23\);

-- Location: LCCOMB_X76_Y62_N26
\decoder|tick_gen|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~26_combout\ = (\decoder|tick_gen|stbit\(13) & (!\decoder|tick_gen|Add2~25\)) # (!\decoder|tick_gen|stbit\(13) & ((\decoder|tick_gen|Add2~25\) # (GND)))
-- \decoder|tick_gen|Add2~27\ = CARRY((!\decoder|tick_gen|Add2~25\) # (!\decoder|tick_gen|stbit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(13),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~25\,
	combout => \decoder|tick_gen|Add2~26_combout\,
	cout => \decoder|tick_gen|Add2~27\);

-- Location: LCCOMB_X76_Y61_N10
\decoder|tick_gen|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~42_combout\ = (\decoder|tick_gen|stbit\(21) & (!\decoder|tick_gen|Add2~41\)) # (!\decoder|tick_gen|stbit\(21) & ((\decoder|tick_gen|Add2~41\) # (GND)))
-- \decoder|tick_gen|Add2~43\ = CARRY((!\decoder|tick_gen|Add2~41\) # (!\decoder|tick_gen|stbit\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(21),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~41\,
	combout => \decoder|tick_gen|Add2~42_combout\,
	cout => \decoder|tick_gen|Add2~43\);

-- Location: LCCOMB_X91_Y38_N6
\encoder|TickGenerator|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~6_combout\ = (\encoder|TickGenerator|stburst\(3) & ((\encoder|TickGenerator|Add0~5\) # (GND))) # (!\encoder|TickGenerator|stburst\(3) & (!\encoder|TickGenerator|Add0~5\))
-- \encoder|TickGenerator|Add0~7\ = CARRY((\encoder|TickGenerator|stburst\(3)) # (!\encoder|TickGenerator|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(3),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~5\,
	combout => \encoder|TickGenerator|Add0~6_combout\,
	cout => \encoder|TickGenerator|Add0~7\);

-- Location: LCCOMB_X91_Y38_N16
\encoder|TickGenerator|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~16_combout\ = (\encoder|TickGenerator|stburst\(8) & (!\encoder|TickGenerator|Add0~15\ & VCC)) # (!\encoder|TickGenerator|stburst\(8) & (\encoder|TickGenerator|Add0~15\ $ (GND)))
-- \encoder|TickGenerator|Add0~17\ = CARRY((!\encoder|TickGenerator|stburst\(8) & !\encoder|TickGenerator|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(8),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~15\,
	combout => \encoder|TickGenerator|Add0~16_combout\,
	cout => \encoder|TickGenerator|Add0~17\);

-- Location: LCCOMB_X91_Y38_N22
\encoder|TickGenerator|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~22_combout\ = (\encoder|TickGenerator|stburst\(11) & (!\encoder|TickGenerator|Add0~21\)) # (!\encoder|TickGenerator|stburst\(11) & ((\encoder|TickGenerator|Add0~21\) # (GND)))
-- \encoder|TickGenerator|Add0~23\ = CARRY((!\encoder|TickGenerator|Add0~21\) # (!\encoder|TickGenerator|stburst\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(11),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~21\,
	combout => \encoder|TickGenerator|Add0~22_combout\,
	cout => \encoder|TickGenerator|Add0~23\);

-- Location: LCCOMB_X91_Y38_N26
\encoder|TickGenerator|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~26_combout\ = (\encoder|TickGenerator|stburst\(13) & (!\encoder|TickGenerator|Add0~25\)) # (!\encoder|TickGenerator|stburst\(13) & ((\encoder|TickGenerator|Add0~25\) # (GND)))
-- \encoder|TickGenerator|Add0~27\ = CARRY((!\encoder|TickGenerator|Add0~25\) # (!\encoder|TickGenerator|stburst\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(13),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~25\,
	combout => \encoder|TickGenerator|Add0~26_combout\,
	cout => \encoder|TickGenerator|Add0~27\);

-- Location: LCCOMB_X91_Y38_N30
\encoder|TickGenerator|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~30_combout\ = (\encoder|TickGenerator|stburst\(15) & (!\encoder|TickGenerator|Add0~29\)) # (!\encoder|TickGenerator|stburst\(15) & ((\encoder|TickGenerator|Add0~29\) # (GND)))
-- \encoder|TickGenerator|Add0~31\ = CARRY((!\encoder|TickGenerator|Add0~29\) # (!\encoder|TickGenerator|stburst\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(15),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~29\,
	combout => \encoder|TickGenerator|Add0~30_combout\,
	cout => \encoder|TickGenerator|Add0~31\);

-- Location: LCCOMB_X91_Y37_N6
\encoder|TickGenerator|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~38_combout\ = (\encoder|TickGenerator|stburst\(19) & (!\encoder|TickGenerator|Add0~37\)) # (!\encoder|TickGenerator|stburst\(19) & ((\encoder|TickGenerator|Add0~37\) # (GND)))
-- \encoder|TickGenerator|Add0~39\ = CARRY((!\encoder|TickGenerator|Add0~37\) # (!\encoder|TickGenerator|stburst\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(19),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~37\,
	combout => \encoder|TickGenerator|Add0~38_combout\,
	cout => \encoder|TickGenerator|Add0~39\);

-- Location: LCCOMB_X91_Y37_N22
\encoder|TickGenerator|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~54_combout\ = (\encoder|TickGenerator|stburst\(27) & (!\encoder|TickGenerator|Add0~53\)) # (!\encoder|TickGenerator|stburst\(27) & ((\encoder|TickGenerator|Add0~53\) # (GND)))
-- \encoder|TickGenerator|Add0~55\ = CARRY((!\encoder|TickGenerator|Add0~53\) # (!\encoder|TickGenerator|stburst\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(27),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~53\,
	combout => \encoder|TickGenerator|Add0~54_combout\,
	cout => \encoder|TickGenerator|Add0~55\);

-- Location: LCCOMB_X92_Y36_N10
\encoder|TickGenerator|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~10_combout\ = (\encoder|TickGenerator|stmanch\(5) & (!\encoder|TickGenerator|Add1~9\)) # (!\encoder|TickGenerator|stmanch\(5) & ((\encoder|TickGenerator|Add1~9\) # (GND)))
-- \encoder|TickGenerator|Add1~11\ = CARRY((!\encoder|TickGenerator|Add1~9\) # (!\encoder|TickGenerator|stmanch\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(5),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~9\,
	combout => \encoder|TickGenerator|Add1~10_combout\,
	cout => \encoder|TickGenerator|Add1~11\);

-- Location: LCCOMB_X92_Y36_N12
\encoder|TickGenerator|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~12_combout\ = (\encoder|TickGenerator|stmanch\(6) & (\encoder|TickGenerator|Add1~11\ $ (GND))) # (!\encoder|TickGenerator|stmanch\(6) & (!\encoder|TickGenerator|Add1~11\ & VCC))
-- \encoder|TickGenerator|Add1~13\ = CARRY((\encoder|TickGenerator|stmanch\(6) & !\encoder|TickGenerator|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(6),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~11\,
	combout => \encoder|TickGenerator|Add1~12_combout\,
	cout => \encoder|TickGenerator|Add1~13\);

-- Location: LCCOMB_X91_Y35_N2
\encoder|TickGenerator|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~1_cout\ = CARRY((\encoder|TickGenerator|stmanch\(1) & \encoder|TickGenerator|stmanch\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(1),
	datab => \encoder|TickGenerator|stmanch\(0),
	datad => VCC,
	cout => \encoder|TickGenerator|Add2~1_cout\);

-- Location: LCCOMB_X91_Y35_N4
\encoder|TickGenerator|Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~3_cout\ = CARRY((!\encoder|TickGenerator|Add2~1_cout\) # (!\encoder|TickGenerator|stmanch\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(2),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~1_cout\,
	cout => \encoder|TickGenerator|Add2~3_cout\);

-- Location: LCCOMB_X91_Y35_N6
\encoder|TickGenerator|Add2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~5_cout\ = CARRY((\encoder|TickGenerator|stmanch\(3) & !\encoder|TickGenerator|Add2~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(3),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~3_cout\,
	cout => \encoder|TickGenerator|Add2~5_cout\);

-- Location: LCCOMB_X91_Y35_N8
\encoder|TickGenerator|Add2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~7_cout\ = CARRY((!\encoder|TickGenerator|Add2~5_cout\) # (!\encoder|TickGenerator|stmanch\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(4),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~5_cout\,
	cout => \encoder|TickGenerator|Add2~7_cout\);

-- Location: LCCOMB_X91_Y35_N10
\encoder|TickGenerator|Add2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~9_cout\ = CARRY((\encoder|TickGenerator|stmanch\(5) & !\encoder|TickGenerator|Add2~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(5),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~7_cout\,
	cout => \encoder|TickGenerator|Add2~9_cout\);

-- Location: LCCOMB_X91_Y35_N12
\encoder|TickGenerator|Add2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~11_cout\ = CARRY((!\encoder|TickGenerator|Add2~9_cout\) # (!\encoder|TickGenerator|stmanch\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(6),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~9_cout\,
	cout => \encoder|TickGenerator|Add2~11_cout\);

-- Location: LCCOMB_X91_Y35_N14
\encoder|TickGenerator|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~12_combout\ = (\encoder|TickGenerator|stbit\(7) & (\encoder|TickGenerator|Add2~11_cout\ $ (GND))) # (!\encoder|TickGenerator|stbit\(7) & (!\encoder|TickGenerator|Add2~11_cout\ & VCC))
-- \encoder|TickGenerator|Add2~13\ = CARRY((\encoder|TickGenerator|stbit\(7) & !\encoder|TickGenerator|Add2~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(7),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~11_cout\,
	combout => \encoder|TickGenerator|Add2~12_combout\,
	cout => \encoder|TickGenerator|Add2~13\);

-- Location: LCCOMB_X91_Y35_N16
\encoder|TickGenerator|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~14_combout\ = (\encoder|TickGenerator|stbit\(8) & ((\encoder|TickGenerator|Add2~13\) # (GND))) # (!\encoder|TickGenerator|stbit\(8) & (!\encoder|TickGenerator|Add2~13\))
-- \encoder|TickGenerator|Add2~15\ = CARRY((\encoder|TickGenerator|stbit\(8)) # (!\encoder|TickGenerator|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(8),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~13\,
	combout => \encoder|TickGenerator|Add2~14_combout\,
	cout => \encoder|TickGenerator|Add2~15\);

-- Location: LCCOMB_X91_Y35_N18
\encoder|TickGenerator|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~16_combout\ = (\encoder|TickGenerator|stbit\(9) & (!\encoder|TickGenerator|Add2~15\ & VCC)) # (!\encoder|TickGenerator|stbit\(9) & (\encoder|TickGenerator|Add2~15\ $ (GND)))
-- \encoder|TickGenerator|Add2~17\ = CARRY((!\encoder|TickGenerator|stbit\(9) & !\encoder|TickGenerator|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(9),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~15\,
	combout => \encoder|TickGenerator|Add2~16_combout\,
	cout => \encoder|TickGenerator|Add2~17\);

-- Location: LCCOMB_X91_Y35_N20
\encoder|TickGenerator|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~18_combout\ = (\encoder|TickGenerator|stbit\(10) & (!\encoder|TickGenerator|Add2~17\)) # (!\encoder|TickGenerator|stbit\(10) & ((\encoder|TickGenerator|Add2~17\) # (GND)))
-- \encoder|TickGenerator|Add2~19\ = CARRY((!\encoder|TickGenerator|Add2~17\) # (!\encoder|TickGenerator|stbit\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(10),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~17\,
	combout => \encoder|TickGenerator|Add2~18_combout\,
	cout => \encoder|TickGenerator|Add2~19\);

-- Location: LCCOMB_X91_Y35_N22
\encoder|TickGenerator|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~20_combout\ = (\encoder|TickGenerator|stbit\(11) & (!\encoder|TickGenerator|Add2~19\ & VCC)) # (!\encoder|TickGenerator|stbit\(11) & (\encoder|TickGenerator|Add2~19\ $ (GND)))
-- \encoder|TickGenerator|Add2~21\ = CARRY((!\encoder|TickGenerator|stbit\(11) & !\encoder|TickGenerator|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(11),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~19\,
	combout => \encoder|TickGenerator|Add2~20_combout\,
	cout => \encoder|TickGenerator|Add2~21\);

-- Location: LCCOMB_X91_Y35_N24
\encoder|TickGenerator|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~22_combout\ = (\encoder|TickGenerator|stbit\(12) & ((\encoder|TickGenerator|Add2~21\) # (GND))) # (!\encoder|TickGenerator|stbit\(12) & (!\encoder|TickGenerator|Add2~21\))
-- \encoder|TickGenerator|Add2~23\ = CARRY((\encoder|TickGenerator|stbit\(12)) # (!\encoder|TickGenerator|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(12),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~21\,
	combout => \encoder|TickGenerator|Add2~22_combout\,
	cout => \encoder|TickGenerator|Add2~23\);

-- Location: LCCOMB_X91_Y35_N26
\encoder|TickGenerator|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~24_combout\ = (\encoder|TickGenerator|stbit\(13) & (\encoder|TickGenerator|Add2~23\ $ (GND))) # (!\encoder|TickGenerator|stbit\(13) & (!\encoder|TickGenerator|Add2~23\ & VCC))
-- \encoder|TickGenerator|Add2~25\ = CARRY((\encoder|TickGenerator|stbit\(13) & !\encoder|TickGenerator|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(13),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~23\,
	combout => \encoder|TickGenerator|Add2~24_combout\,
	cout => \encoder|TickGenerator|Add2~25\);

-- Location: LCCOMB_X91_Y35_N28
\encoder|TickGenerator|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~26_combout\ = (\encoder|TickGenerator|stbit\(14) & ((\encoder|TickGenerator|Add2~25\) # (GND))) # (!\encoder|TickGenerator|stbit\(14) & (!\encoder|TickGenerator|Add2~25\))
-- \encoder|TickGenerator|Add2~27\ = CARRY((\encoder|TickGenerator|stbit\(14)) # (!\encoder|TickGenerator|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(14),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~25\,
	combout => \encoder|TickGenerator|Add2~26_combout\,
	cout => \encoder|TickGenerator|Add2~27\);

-- Location: LCCOMB_X91_Y35_N30
\encoder|TickGenerator|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~28_combout\ = (\encoder|TickGenerator|stbit\(15) & (\encoder|TickGenerator|Add2~27\ $ (GND))) # (!\encoder|TickGenerator|stbit\(15) & (!\encoder|TickGenerator|Add2~27\ & VCC))
-- \encoder|TickGenerator|Add2~29\ = CARRY((\encoder|TickGenerator|stbit\(15) & !\encoder|TickGenerator|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(15),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~27\,
	combout => \encoder|TickGenerator|Add2~28_combout\,
	cout => \encoder|TickGenerator|Add2~29\);

-- Location: LCCOMB_X91_Y34_N0
\encoder|TickGenerator|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~30_combout\ = (\encoder|TickGenerator|stbit\(16) & ((\encoder|TickGenerator|Add2~29\) # (GND))) # (!\encoder|TickGenerator|stbit\(16) & (!\encoder|TickGenerator|Add2~29\))
-- \encoder|TickGenerator|Add2~31\ = CARRY((\encoder|TickGenerator|stbit\(16)) # (!\encoder|TickGenerator|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(16),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~29\,
	combout => \encoder|TickGenerator|Add2~30_combout\,
	cout => \encoder|TickGenerator|Add2~31\);

-- Location: LCCOMB_X91_Y34_N2
\encoder|TickGenerator|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~32_combout\ = (\encoder|TickGenerator|stbit\(17) & (\encoder|TickGenerator|Add2~31\ $ (GND))) # (!\encoder|TickGenerator|stbit\(17) & (!\encoder|TickGenerator|Add2~31\ & VCC))
-- \encoder|TickGenerator|Add2~33\ = CARRY((\encoder|TickGenerator|stbit\(17) & !\encoder|TickGenerator|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(17),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~31\,
	combout => \encoder|TickGenerator|Add2~32_combout\,
	cout => \encoder|TickGenerator|Add2~33\);

-- Location: LCCOMB_X91_Y34_N4
\encoder|TickGenerator|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~34_combout\ = (\encoder|TickGenerator|stbit\(18) & (!\encoder|TickGenerator|Add2~33\)) # (!\encoder|TickGenerator|stbit\(18) & ((\encoder|TickGenerator|Add2~33\) # (GND)))
-- \encoder|TickGenerator|Add2~35\ = CARRY((!\encoder|TickGenerator|Add2~33\) # (!\encoder|TickGenerator|stbit\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(18),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~33\,
	combout => \encoder|TickGenerator|Add2~34_combout\,
	cout => \encoder|TickGenerator|Add2~35\);

-- Location: LCCOMB_X91_Y34_N6
\encoder|TickGenerator|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~36_combout\ = (\encoder|TickGenerator|stbit\(19) & (\encoder|TickGenerator|Add2~35\ $ (GND))) # (!\encoder|TickGenerator|stbit\(19) & (!\encoder|TickGenerator|Add2~35\ & VCC))
-- \encoder|TickGenerator|Add2~37\ = CARRY((\encoder|TickGenerator|stbit\(19) & !\encoder|TickGenerator|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(19),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~35\,
	combout => \encoder|TickGenerator|Add2~36_combout\,
	cout => \encoder|TickGenerator|Add2~37\);

-- Location: LCCOMB_X91_Y34_N8
\encoder|TickGenerator|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~38_combout\ = (\encoder|TickGenerator|stbit\(20) & (!\encoder|TickGenerator|Add2~37\)) # (!\encoder|TickGenerator|stbit\(20) & ((\encoder|TickGenerator|Add2~37\) # (GND)))
-- \encoder|TickGenerator|Add2~39\ = CARRY((!\encoder|TickGenerator|Add2~37\) # (!\encoder|TickGenerator|stbit\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(20),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~37\,
	combout => \encoder|TickGenerator|Add2~38_combout\,
	cout => \encoder|TickGenerator|Add2~39\);

-- Location: LCCOMB_X91_Y34_N10
\encoder|TickGenerator|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~40_combout\ = (\encoder|TickGenerator|stbit\(21) & (\encoder|TickGenerator|Add2~39\ $ (GND))) # (!\encoder|TickGenerator|stbit\(21) & (!\encoder|TickGenerator|Add2~39\ & VCC))
-- \encoder|TickGenerator|Add2~41\ = CARRY((\encoder|TickGenerator|stbit\(21) & !\encoder|TickGenerator|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(21),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~39\,
	combout => \encoder|TickGenerator|Add2~40_combout\,
	cout => \encoder|TickGenerator|Add2~41\);

-- Location: LCCOMB_X91_Y34_N12
\encoder|TickGenerator|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~42_combout\ = (\encoder|TickGenerator|stbit\(22) & (!\encoder|TickGenerator|Add2~41\)) # (!\encoder|TickGenerator|stbit\(22) & ((\encoder|TickGenerator|Add2~41\) # (GND)))
-- \encoder|TickGenerator|Add2~43\ = CARRY((!\encoder|TickGenerator|Add2~41\) # (!\encoder|TickGenerator|stbit\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(22),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~41\,
	combout => \encoder|TickGenerator|Add2~42_combout\,
	cout => \encoder|TickGenerator|Add2~43\);

-- Location: LCCOMB_X91_Y34_N14
\encoder|TickGenerator|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~44_combout\ = (\encoder|TickGenerator|stbit\(23) & (\encoder|TickGenerator|Add2~43\ $ (GND))) # (!\encoder|TickGenerator|stbit\(23) & (!\encoder|TickGenerator|Add2~43\ & VCC))
-- \encoder|TickGenerator|Add2~45\ = CARRY((\encoder|TickGenerator|stbit\(23) & !\encoder|TickGenerator|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(23),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~43\,
	combout => \encoder|TickGenerator|Add2~44_combout\,
	cout => \encoder|TickGenerator|Add2~45\);

-- Location: LCCOMB_X91_Y34_N16
\encoder|TickGenerator|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~46_combout\ = (\encoder|TickGenerator|stbit\(24) & (!\encoder|TickGenerator|Add2~45\)) # (!\encoder|TickGenerator|stbit\(24) & ((\encoder|TickGenerator|Add2~45\) # (GND)))
-- \encoder|TickGenerator|Add2~47\ = CARRY((!\encoder|TickGenerator|Add2~45\) # (!\encoder|TickGenerator|stbit\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(24),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~45\,
	combout => \encoder|TickGenerator|Add2~46_combout\,
	cout => \encoder|TickGenerator|Add2~47\);

-- Location: LCCOMB_X91_Y34_N18
\encoder|TickGenerator|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~48_combout\ = (\encoder|TickGenerator|stbit\(25) & (\encoder|TickGenerator|Add2~47\ $ (GND))) # (!\encoder|TickGenerator|stbit\(25) & (!\encoder|TickGenerator|Add2~47\ & VCC))
-- \encoder|TickGenerator|Add2~49\ = CARRY((\encoder|TickGenerator|stbit\(25) & !\encoder|TickGenerator|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(25),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~47\,
	combout => \encoder|TickGenerator|Add2~48_combout\,
	cout => \encoder|TickGenerator|Add2~49\);

-- Location: LCCOMB_X91_Y34_N20
\encoder|TickGenerator|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~50_combout\ = (\encoder|TickGenerator|stbit\(26) & (!\encoder|TickGenerator|Add2~49\)) # (!\encoder|TickGenerator|stbit\(26) & ((\encoder|TickGenerator|Add2~49\) # (GND)))
-- \encoder|TickGenerator|Add2~51\ = CARRY((!\encoder|TickGenerator|Add2~49\) # (!\encoder|TickGenerator|stbit\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(26),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~49\,
	combout => \encoder|TickGenerator|Add2~50_combout\,
	cout => \encoder|TickGenerator|Add2~51\);

-- Location: LCCOMB_X91_Y34_N22
\encoder|TickGenerator|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~52_combout\ = (\encoder|TickGenerator|stbit\(27) & (\encoder|TickGenerator|Add2~51\ $ (GND))) # (!\encoder|TickGenerator|stbit\(27) & (!\encoder|TickGenerator|Add2~51\ & VCC))
-- \encoder|TickGenerator|Add2~53\ = CARRY((\encoder|TickGenerator|stbit\(27) & !\encoder|TickGenerator|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(27),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~51\,
	combout => \encoder|TickGenerator|Add2~52_combout\,
	cout => \encoder|TickGenerator|Add2~53\);

-- Location: LCCOMB_X91_Y34_N24
\encoder|TickGenerator|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~54_combout\ = (\encoder|TickGenerator|stbit\(28) & (!\encoder|TickGenerator|Add2~53\)) # (!\encoder|TickGenerator|stbit\(28) & ((\encoder|TickGenerator|Add2~53\) # (GND)))
-- \encoder|TickGenerator|Add2~55\ = CARRY((!\encoder|TickGenerator|Add2~53\) # (!\encoder|TickGenerator|stbit\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(28),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~53\,
	combout => \encoder|TickGenerator|Add2~54_combout\,
	cout => \encoder|TickGenerator|Add2~55\);

-- Location: LCCOMB_X91_Y34_N26
\encoder|TickGenerator|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~56_combout\ = (\encoder|TickGenerator|stbit\(29) & (\encoder|TickGenerator|Add2~55\ $ (GND))) # (!\encoder|TickGenerator|stbit\(29) & (!\encoder|TickGenerator|Add2~55\ & VCC))
-- \encoder|TickGenerator|Add2~57\ = CARRY((\encoder|TickGenerator|stbit\(29) & !\encoder|TickGenerator|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(29),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~55\,
	combout => \encoder|TickGenerator|Add2~56_combout\,
	cout => \encoder|TickGenerator|Add2~57\);

-- Location: LCCOMB_X91_Y34_N28
\encoder|TickGenerator|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~58_combout\ = (\encoder|TickGenerator|stbit\(30) & (!\encoder|TickGenerator|Add2~57\)) # (!\encoder|TickGenerator|stbit\(30) & ((\encoder|TickGenerator|Add2~57\) # (GND)))
-- \encoder|TickGenerator|Add2~59\ = CARRY((!\encoder|TickGenerator|Add2~57\) # (!\encoder|TickGenerator|stbit\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(30),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~57\,
	combout => \encoder|TickGenerator|Add2~58_combout\,
	cout => \encoder|TickGenerator|Add2~59\);

-- Location: LCCOMB_X91_Y34_N30
\encoder|TickGenerator|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~60_combout\ = \encoder|TickGenerator|stbit\(31) $ (!\encoder|TickGenerator|Add2~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(31),
	cin => \encoder|TickGenerator|Add2~59\,
	combout => \encoder|TickGenerator|Add2~60_combout\);

-- Location: LCCOMB_X92_Y36_N30
\encoder|TickGenerator|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~30_combout\ = (\encoder|TickGenerator|stmanch\(15) & ((\encoder|TickGenerator|Add1~29\) # (GND))) # (!\encoder|TickGenerator|stmanch\(15) & (!\encoder|TickGenerator|Add1~29\))
-- \encoder|TickGenerator|Add1~31\ = CARRY((\encoder|TickGenerator|stmanch\(15)) # (!\encoder|TickGenerator|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(15),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~29\,
	combout => \encoder|TickGenerator|Add1~30_combout\,
	cout => \encoder|TickGenerator|Add1~31\);

-- Location: LCCOMB_X92_Y35_N10
\encoder|TickGenerator|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~42_combout\ = (\encoder|TickGenerator|stmanch\(21) & (!\encoder|TickGenerator|Add1~41\)) # (!\encoder|TickGenerator|stmanch\(21) & ((\encoder|TickGenerator|Add1~41\) # (GND)))
-- \encoder|TickGenerator|Add1~43\ = CARRY((!\encoder|TickGenerator|Add1~41\) # (!\encoder|TickGenerator|stmanch\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(21),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~41\,
	combout => \encoder|TickGenerator|Add1~42_combout\,
	cout => \encoder|TickGenerator|Add1~43\);

-- Location: LCCOMB_X92_Y35_N22
\encoder|TickGenerator|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~54_combout\ = (\encoder|TickGenerator|stmanch\(27) & (!\encoder|TickGenerator|Add1~53\)) # (!\encoder|TickGenerator|stmanch\(27) & ((\encoder|TickGenerator|Add1~53\) # (GND)))
-- \encoder|TickGenerator|Add1~55\ = CARRY((!\encoder|TickGenerator|Add1~53\) # (!\encoder|TickGenerator|stmanch\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(27),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~53\,
	combout => \encoder|TickGenerator|Add1~54_combout\,
	cout => \encoder|TickGenerator|Add1~55\);

-- Location: LCCOMB_X75_Y62_N14
\decoder|tick_gen|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~12_combout\ = (\decoder|tick_gen|stmanch\(7) & (!\decoder|tick_gen|Add1~11_cout\ & VCC)) # (!\decoder|tick_gen|stmanch\(7) & (\decoder|tick_gen|Add1~11_cout\ $ (GND)))
-- \decoder|tick_gen|Add1~13\ = CARRY((!\decoder|tick_gen|stmanch\(7) & !\decoder|tick_gen|Add1~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(7),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~11_cout\,
	combout => \decoder|tick_gen|Add1~12_combout\,
	cout => \decoder|tick_gen|Add1~13\);

-- Location: LCCOMB_X75_Y62_N20
\decoder|tick_gen|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~18_combout\ = (\decoder|tick_gen|stmanch\(10) & ((\decoder|tick_gen|Add1~17\) # (GND))) # (!\decoder|tick_gen|stmanch\(10) & (!\decoder|tick_gen|Add1~17\))
-- \decoder|tick_gen|Add1~19\ = CARRY((\decoder|tick_gen|stmanch\(10)) # (!\decoder|tick_gen|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(10),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~17\,
	combout => \decoder|tick_gen|Add1~18_combout\,
	cout => \decoder|tick_gen|Add1~19\);

-- Location: LCCOMB_X75_Y62_N26
\decoder|tick_gen|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~24_combout\ = (\decoder|tick_gen|stmanch\(13) & (!\decoder|tick_gen|Add1~23\ & VCC)) # (!\decoder|tick_gen|stmanch\(13) & (\decoder|tick_gen|Add1~23\ $ (GND)))
-- \decoder|tick_gen|Add1~25\ = CARRY((!\decoder|tick_gen|stmanch\(13) & !\decoder|tick_gen|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(13),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~23\,
	combout => \decoder|tick_gen|Add1~24_combout\,
	cout => \decoder|tick_gen|Add1~25\);

-- Location: LCCOMB_X75_Y61_N6
\decoder|tick_gen|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~36_combout\ = (\decoder|tick_gen|stmanch\(19) & (\decoder|tick_gen|Add1~35\ $ (GND))) # (!\decoder|tick_gen|stmanch\(19) & (!\decoder|tick_gen|Add1~35\ & VCC))
-- \decoder|tick_gen|Add1~37\ = CARRY((\decoder|tick_gen|stmanch\(19) & !\decoder|tick_gen|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(19),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~35\,
	combout => \decoder|tick_gen|Add1~36_combout\,
	cout => \decoder|tick_gen|Add1~37\);

-- Location: LCCOMB_X75_Y61_N22
\decoder|tick_gen|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~52_combout\ = (\decoder|tick_gen|stmanch\(27) & (\decoder|tick_gen|Add1~51\ $ (GND))) # (!\decoder|tick_gen|stmanch\(27) & (!\decoder|tick_gen|Add1~51\ & VCC))
-- \decoder|tick_gen|Add1~53\ = CARRY((\decoder|tick_gen|stmanch\(27) & !\decoder|tick_gen|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(27),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~51\,
	combout => \decoder|tick_gen|Add1~52_combout\,
	cout => \decoder|tick_gen|Add1~53\);

-- Location: LCCOMB_X75_Y61_N26
\decoder|tick_gen|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~56_combout\ = (\decoder|tick_gen|stmanch\(29) & (\decoder|tick_gen|Add1~55\ $ (GND))) # (!\decoder|tick_gen|stmanch\(29) & (!\decoder|tick_gen|Add1~55\ & VCC))
-- \decoder|tick_gen|Add1~57\ = CARRY((\decoder|tick_gen|stmanch\(29) & !\decoder|tick_gen|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(29),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~55\,
	combout => \decoder|tick_gen|Add1~56_combout\,
	cout => \decoder|tick_gen|Add1~57\);

-- Location: LCCOMB_X75_Y61_N28
\decoder|tick_gen|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~58_combout\ = (\decoder|tick_gen|stmanch\(30) & (!\decoder|tick_gen|Add1~57\)) # (!\decoder|tick_gen|stmanch\(30) & ((\decoder|tick_gen|Add1~57\) # (GND)))
-- \decoder|tick_gen|Add1~59\ = CARRY((!\decoder|tick_gen|Add1~57\) # (!\decoder|tick_gen|stmanch\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(30),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~57\,
	combout => \decoder|tick_gen|Add1~58_combout\,
	cout => \decoder|tick_gen|Add1~59\);

-- Location: LCCOMB_X75_Y61_N30
\decoder|tick_gen|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~60_combout\ = \decoder|tick_gen|stmanch\(31) $ (!\decoder|tick_gen|Add1~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(31),
	cin => \decoder|tick_gen|Add1~59\,
	combout => \decoder|tick_gen|Add1~60_combout\);

-- Location: LCCOMB_X90_Y36_N10
\encoder|TickGenerator|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~8_combout\ = (\encoder|TickGenerator|sttrame\(5) & (!\encoder|TickGenerator|Add3~7_cout\ & VCC)) # (!\encoder|TickGenerator|sttrame\(5) & (\encoder|TickGenerator|Add3~7_cout\ $ (GND)))
-- \encoder|TickGenerator|Add3~9\ = CARRY((!\encoder|TickGenerator|sttrame\(5) & !\encoder|TickGenerator|Add3~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(5),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~7_cout\,
	combout => \encoder|TickGenerator|Add3~8_combout\,
	cout => \encoder|TickGenerator|Add3~9\);

-- Location: LCCOMB_X90_Y36_N28
\encoder|TickGenerator|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~26_combout\ = (\encoder|TickGenerator|sttrame\(14) & ((\encoder|TickGenerator|Add3~25\) # (GND))) # (!\encoder|TickGenerator|sttrame\(14) & (!\encoder|TickGenerator|Add3~25\))
-- \encoder|TickGenerator|Add3~27\ = CARRY((\encoder|TickGenerator|sttrame\(14)) # (!\encoder|TickGenerator|Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(14),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~25\,
	combout => \encoder|TickGenerator|Add3~26_combout\,
	cout => \encoder|TickGenerator|Add3~27\);

-- Location: LCCOMB_X90_Y35_N2
\encoder|TickGenerator|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~32_combout\ = (\encoder|TickGenerator|sttrame\(17) & (!\encoder|TickGenerator|Add3~31\ & VCC)) # (!\encoder|TickGenerator|sttrame\(17) & (\encoder|TickGenerator|Add3~31\ $ (GND)))
-- \encoder|TickGenerator|Add3~33\ = CARRY((!\encoder|TickGenerator|sttrame\(17) & !\encoder|TickGenerator|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(17),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~31\,
	combout => \encoder|TickGenerator|Add3~32_combout\,
	cout => \encoder|TickGenerator|Add3~33\);

-- Location: LCCOMB_X90_Y35_N4
\encoder|TickGenerator|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~34_combout\ = (\encoder|TickGenerator|sttrame\(18) & ((\encoder|TickGenerator|Add3~33\) # (GND))) # (!\encoder|TickGenerator|sttrame\(18) & (!\encoder|TickGenerator|Add3~33\))
-- \encoder|TickGenerator|Add3~35\ = CARRY((\encoder|TickGenerator|sttrame\(18)) # (!\encoder|TickGenerator|Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(18),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~33\,
	combout => \encoder|TickGenerator|Add3~34_combout\,
	cout => \encoder|TickGenerator|Add3~35\);

-- Location: LCCOMB_X90_Y35_N6
\encoder|TickGenerator|Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~36_combout\ = (\encoder|TickGenerator|sttrame\(19) & (\encoder|TickGenerator|Add3~35\ $ (GND))) # (!\encoder|TickGenerator|sttrame\(19) & (!\encoder|TickGenerator|Add3~35\ & VCC))
-- \encoder|TickGenerator|Add3~37\ = CARRY((\encoder|TickGenerator|sttrame\(19) & !\encoder|TickGenerator|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(19),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~35\,
	combout => \encoder|TickGenerator|Add3~36_combout\,
	cout => \encoder|TickGenerator|Add3~37\);

-- Location: LCCOMB_X90_Y35_N22
\encoder|TickGenerator|Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~52_combout\ = (\encoder|TickGenerator|sttrame\(27) & (\encoder|TickGenerator|Add3~51\ $ (GND))) # (!\encoder|TickGenerator|sttrame\(27) & (!\encoder|TickGenerator|Add3~51\ & VCC))
-- \encoder|TickGenerator|Add3~53\ = CARRY((\encoder|TickGenerator|sttrame\(27) & !\encoder|TickGenerator|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(27),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~51\,
	combout => \encoder|TickGenerator|Add3~52_combout\,
	cout => \encoder|TickGenerator|Add3~53\);

-- Location: LCCOMB_X90_Y35_N26
\encoder|TickGenerator|Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~56_combout\ = (\encoder|TickGenerator|sttrame\(29) & (\encoder|TickGenerator|Add3~55\ $ (GND))) # (!\encoder|TickGenerator|sttrame\(29) & (!\encoder|TickGenerator|Add3~55\ & VCC))
-- \encoder|TickGenerator|Add3~57\ = CARRY((\encoder|TickGenerator|sttrame\(29) & !\encoder|TickGenerator|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(29),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~55\,
	combout => \encoder|TickGenerator|Add3~56_combout\,
	cout => \encoder|TickGenerator|Add3~57\);

-- Location: LCCOMB_X80_Y29_N0
\decoder|tick_gen|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~0_combout\ = \decoder|tick_gen|stburst\(0) $ (GND)
-- \decoder|tick_gen|Add0~1\ = CARRY(!\decoder|tick_gen|stburst\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(0),
	datad => VCC,
	combout => \decoder|tick_gen|Add0~0_combout\,
	cout => \decoder|tick_gen|Add0~1\);

-- Location: LCCOMB_X80_Y29_N6
\decoder|tick_gen|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~6_combout\ = (\decoder|tick_gen|stburst\(3) & ((\decoder|tick_gen|Add0~5\) # (GND))) # (!\decoder|tick_gen|stburst\(3) & (!\decoder|tick_gen|Add0~5\))
-- \decoder|tick_gen|Add0~7\ = CARRY((\decoder|tick_gen|stburst\(3)) # (!\decoder|tick_gen|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(3),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~5\,
	combout => \decoder|tick_gen|Add0~6_combout\,
	cout => \decoder|tick_gen|Add0~7\);

-- Location: LCCOMB_X80_Y29_N8
\decoder|tick_gen|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~8_combout\ = (\decoder|tick_gen|stburst\(4) & (!\decoder|tick_gen|Add0~7\ & VCC)) # (!\decoder|tick_gen|stburst\(4) & (\decoder|tick_gen|Add0~7\ $ (GND)))
-- \decoder|tick_gen|Add0~9\ = CARRY((!\decoder|tick_gen|stburst\(4) & !\decoder|tick_gen|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(4),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~7\,
	combout => \decoder|tick_gen|Add0~8_combout\,
	cout => \decoder|tick_gen|Add0~9\);

-- Location: LCCOMB_X80_Y29_N26
\decoder|tick_gen|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~26_combout\ = (\decoder|tick_gen|stburst\(13) & (!\decoder|tick_gen|Add0~25\)) # (!\decoder|tick_gen|stburst\(13) & ((\decoder|tick_gen|Add0~25\) # (GND)))
-- \decoder|tick_gen|Add0~27\ = CARRY((!\decoder|tick_gen|Add0~25\) # (!\decoder|tick_gen|stburst\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(13),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~25\,
	combout => \decoder|tick_gen|Add0~26_combout\,
	cout => \decoder|tick_gen|Add0~27\);

-- Location: LCCOMB_X80_Y29_N30
\decoder|tick_gen|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~30_combout\ = (\decoder|tick_gen|stburst\(15) & (!\decoder|tick_gen|Add0~29\)) # (!\decoder|tick_gen|stburst\(15) & ((\decoder|tick_gen|Add0~29\) # (GND)))
-- \decoder|tick_gen|Add0~31\ = CARRY((!\decoder|tick_gen|Add0~29\) # (!\decoder|tick_gen|stburst\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(15),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~29\,
	combout => \decoder|tick_gen|Add0~30_combout\,
	cout => \decoder|tick_gen|Add0~31\);

-- Location: LCCOMB_X80_Y28_N6
\decoder|tick_gen|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~38_combout\ = (\decoder|tick_gen|stburst\(19) & (!\decoder|tick_gen|Add0~37\)) # (!\decoder|tick_gen|stburst\(19) & ((\decoder|tick_gen|Add0~37\) # (GND)))
-- \decoder|tick_gen|Add0~39\ = CARRY((!\decoder|tick_gen|Add0~37\) # (!\decoder|tick_gen|stburst\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(19),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~37\,
	combout => \decoder|tick_gen|Add0~38_combout\,
	cout => \decoder|tick_gen|Add0~39\);

-- Location: LCCOMB_X80_Y28_N12
\decoder|tick_gen|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~44_combout\ = (\decoder|tick_gen|stburst\(22) & (\decoder|tick_gen|Add0~43\ $ (GND))) # (!\decoder|tick_gen|stburst\(22) & (!\decoder|tick_gen|Add0~43\ & VCC))
-- \decoder|tick_gen|Add0~45\ = CARRY((\decoder|tick_gen|stburst\(22) & !\decoder|tick_gen|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(22),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~43\,
	combout => \decoder|tick_gen|Add0~44_combout\,
	cout => \decoder|tick_gen|Add0~45\);

-- Location: LCCOMB_X80_Y28_N20
\decoder|tick_gen|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~52_combout\ = (\decoder|tick_gen|stburst\(26) & (\decoder|tick_gen|Add0~51\ $ (GND))) # (!\decoder|tick_gen|stburst\(26) & (!\decoder|tick_gen|Add0~51\ & VCC))
-- \decoder|tick_gen|Add0~53\ = CARRY((\decoder|tick_gen|stburst\(26) & !\decoder|tick_gen|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(26),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~51\,
	combout => \decoder|tick_gen|Add0~52_combout\,
	cout => \decoder|tick_gen|Add0~53\);

-- Location: LCCOMB_X80_Y28_N22
\decoder|tick_gen|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~54_combout\ = (\decoder|tick_gen|stburst\(27) & (!\decoder|tick_gen|Add0~53\)) # (!\decoder|tick_gen|stburst\(27) & ((\decoder|tick_gen|Add0~53\) # (GND)))
-- \decoder|tick_gen|Add0~55\ = CARRY((!\decoder|tick_gen|Add0~53\) # (!\decoder|tick_gen|stburst\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(27),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~53\,
	combout => \decoder|tick_gen|Add0~54_combout\,
	cout => \decoder|tick_gen|Add0~55\);

-- Location: LCCOMB_X80_Y28_N24
\decoder|tick_gen|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~56_combout\ = (\decoder|tick_gen|stburst\(28) & (\decoder|tick_gen|Add0~55\ $ (GND))) # (!\decoder|tick_gen|stburst\(28) & (!\decoder|tick_gen|Add0~55\ & VCC))
-- \decoder|tick_gen|Add0~57\ = CARRY((\decoder|tick_gen|stburst\(28) & !\decoder|tick_gen|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(28),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~55\,
	combout => \decoder|tick_gen|Add0~56_combout\,
	cout => \decoder|tick_gen|Add0~57\);

-- Location: LCCOMB_X80_Y28_N26
\decoder|tick_gen|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~58_combout\ = (\decoder|tick_gen|stburst\(29) & (!\decoder|tick_gen|Add0~57\)) # (!\decoder|tick_gen|stburst\(29) & ((\decoder|tick_gen|Add0~57\) # (GND)))
-- \decoder|tick_gen|Add0~59\ = CARRY((!\decoder|tick_gen|Add0~57\) # (!\decoder|tick_gen|stburst\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(29),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~57\,
	combout => \decoder|tick_gen|Add0~58_combout\,
	cout => \decoder|tick_gen|Add0~59\);

-- Location: LCCOMB_X80_Y28_N28
\decoder|tick_gen|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~60_combout\ = (\decoder|tick_gen|stburst\(30) & (\decoder|tick_gen|Add0~59\ $ (GND))) # (!\decoder|tick_gen|stburst\(30) & (!\decoder|tick_gen|Add0~59\ & VCC))
-- \decoder|tick_gen|Add0~61\ = CARRY((\decoder|tick_gen|stburst\(30) & !\decoder|tick_gen|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(30),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~59\,
	combout => \decoder|tick_gen|Add0~60_combout\,
	cout => \decoder|tick_gen|Add0~61\);

-- Location: LCCOMB_X80_Y28_N30
\decoder|tick_gen|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~62_combout\ = \decoder|tick_gen|stburst\(31) $ (\decoder|tick_gen|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(31),
	cin => \decoder|tick_gen|Add0~61\,
	combout => \decoder|tick_gen|Add0~62_combout\);

-- Location: FF_X99_Y33_N5
\encoder|MAE_emission|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|Selector5~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|enable~q\);

-- Location: LCCOMB_X72_Y66_N6
\decoder|decoder|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~0_combout\ = (\decoder|decoder|i\(2) & (\decoder|decoder|i\(0) & (!\decoder|decoder|i\(3) & \decoder|decoder|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(2),
	datab => \decoder|decoder|i\(0),
	datac => \decoder|decoder|i\(3),
	datad => \decoder|decoder|i\(1),
	combout => \decoder|decoder|Decoder0~0_combout\);

-- Location: FF_X75_Y66_N13
\decoder|decoder|i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~73_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(26));

-- Location: FF_X75_Y66_N15
\decoder|decoder|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~75_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(24));

-- Location: FF_X75_Y66_N17
\decoder|decoder|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~78_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(21));

-- Location: LCCOMB_X75_Y66_N22
\decoder|decoder|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~2_combout\ = (((!\decoder|decoder|i\(21)) # (!\decoder|decoder|i\(24))) # (!\decoder|decoder|i\(23))) # (!\decoder|decoder|i\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(22),
	datab => \decoder|decoder|i\(23),
	datac => \decoder|decoder|i\(24),
	datad => \decoder|decoder|i\(21),
	combout => \decoder|decoder|Equal0~2_combout\);

-- Location: FF_X75_Y67_N7
\decoder|decoder|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~83_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(16));

-- Location: FF_X75_Y67_N13
\decoder|decoder|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~87_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(12));

-- Location: FF_X75_Y67_N3
\decoder|decoder|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~88_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(11));

-- Location: FF_X75_Y67_N1
\decoder|decoder|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~89_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(10));

-- Location: LCCOMB_X75_Y67_N4
\decoder|decoder|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~6_combout\ = (((!\decoder|decoder|i\(10)) # (!\decoder|decoder|i\(9))) # (!\decoder|decoder|i\(11))) # (!\decoder|decoder|i\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(12),
	datab => \decoder|decoder|i\(11),
	datac => \decoder|decoder|i\(9),
	datad => \decoder|decoder|i\(10),
	combout => \decoder|decoder|Equal0~6_combout\);

-- Location: FF_X74_Y67_N13
\decoder|decoder|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~94_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(5));

-- Location: LCCOMB_X72_Y66_N26
\decoder|decoder|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~1_combout\ = (\decoder|decoder|i\(2) & (!\decoder|decoder|i\(0) & (!\decoder|decoder|i\(3) & \decoder|decoder|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(2),
	datab => \decoder|decoder|i\(0),
	datac => \decoder|decoder|i\(3),
	datad => \decoder|decoder|i\(1),
	combout => \decoder|decoder|Decoder0~1_combout\);

-- Location: LCCOMB_X77_Y66_N26
\decoder|decoder|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~2_combout\ = (!\decoder|decoder|i\(1) & (!\decoder|decoder|i\(2) & (\decoder|decoder|i\(0) & \decoder|decoder|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(1),
	datab => \decoder|decoder|i\(2),
	datac => \decoder|decoder|i\(0),
	datad => \decoder|decoder|i\(3),
	combout => \decoder|decoder|Decoder0~2_combout\);

-- Location: LCCOMB_X72_Y66_N10
\decoder|decoder|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~4_combout\ = (!\decoder|decoder|i\(2) & (\decoder|decoder|i\(0) & (\decoder|decoder|i\(3) & \decoder|decoder|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(2),
	datab => \decoder|decoder|i\(0),
	datac => \decoder|decoder|i\(3),
	datad => \decoder|decoder|i\(1),
	combout => \decoder|decoder|Decoder0~4_combout\);

-- Location: LCCOMB_X73_Y66_N30
\decoder|decoder|data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~8_combout\ = (\decoder|decoder|Decoder0~4_combout\ & ((\decoder|tick_gen|tick_bit~q\ & ((\decoder|demanchester|WideOr0~0_combout\))) # (!\decoder|tick_gen|tick_bit~q\ & (\decoder|decoder|data\(10))))) # 
-- (!\decoder|decoder|Decoder0~4_combout\ & (\decoder|decoder|data\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~4_combout\,
	datab => \decoder|decoder|data\(10),
	datac => \decoder|tick_gen|tick_bit~q\,
	datad => \decoder|demanchester|WideOr0~0_combout\,
	combout => \decoder|decoder|data~8_combout\);

-- Location: LCCOMB_X74_Y66_N4
\decoder|decoder|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~7_combout\ = (!\decoder|decoder|i\(2) & (!\decoder|decoder|i\(3) & (\decoder|decoder|i\(0) & \decoder|decoder|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(2),
	datab => \decoder|decoder|i\(3),
	datac => \decoder|decoder|i\(0),
	datad => \decoder|decoder|i\(1),
	combout => \decoder|decoder|Decoder0~7_combout\);

-- Location: LCCOMB_X74_Y66_N6
\decoder|decoder|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~8_combout\ = (!\decoder|decoder|i\(2) & (!\decoder|decoder|i\(3) & (!\decoder|decoder|i\(0) & \decoder|decoder|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(2),
	datab => \decoder|decoder|i\(3),
	datac => \decoder|decoder|i\(0),
	datad => \decoder|decoder|i\(1),
	combout => \decoder|decoder|Decoder0~8_combout\);

-- Location: LCCOMB_X73_Y66_N10
\decoder|decoder|data~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~16_combout\ = (\decoder|tick_gen|tick_bit~q\ & ((\decoder|decoder|Decoder0~8_combout\ & (\decoder|demanchester|WideOr0~0_combout\)) # (!\decoder|decoder|Decoder0~8_combout\ & ((\decoder|decoder|data\(3)))))) # 
-- (!\decoder|tick_gen|tick_bit~q\ & (((\decoder|decoder|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|tick_bit~q\,
	datab => \decoder|demanchester|WideOr0~0_combout\,
	datac => \decoder|decoder|data\(3),
	datad => \decoder|decoder|Decoder0~8_combout\,
	combout => \decoder|decoder|data~16_combout\);

-- Location: LCCOMB_X72_Y66_N12
\decoder|decoder|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~9_combout\ = (\decoder|decoder|i\(2) & (\decoder|decoder|i\(0) & (!\decoder|decoder|i\(3) & !\decoder|decoder|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(2),
	datab => \decoder|decoder|i\(0),
	datac => \decoder|decoder|i\(3),
	datad => \decoder|decoder|i\(1),
	combout => \decoder|decoder|Decoder0~9_combout\);

-- Location: LCCOMB_X72_Y66_N30
\decoder|decoder|data~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~18_combout\ = (\decoder|decoder|Decoder0~9_combout\ & ((\decoder|tick_gen|tick_bit~q\ & ((\decoder|demanchester|WideOr0~0_combout\))) # (!\decoder|tick_gen|tick_bit~q\ & (\decoder|decoder|data\(4))))) # 
-- (!\decoder|decoder|Decoder0~9_combout\ & (\decoder|decoder|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~9_combout\,
	datab => \decoder|decoder|data\(4),
	datac => \decoder|demanchester|WideOr0~0_combout\,
	datad => \decoder|tick_gen|tick_bit~q\,
	combout => \decoder|decoder|data~18_combout\);

-- Location: FF_X74_Y66_N27
\decoder|decoder|EF.State_Begin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Selector2~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|EF.State_Begin~q\);

-- Location: LCCOMB_X72_Y66_N4
\decoder|decoder|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~11_combout\ = (!\decoder|decoder|i\(2) & (!\decoder|decoder|i\(0) & (\decoder|decoder|i\(3) & \decoder|decoder|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(2),
	datab => \decoder|decoder|i\(0),
	datac => \decoder|decoder|i\(3),
	datad => \decoder|decoder|i\(1),
	combout => \decoder|decoder|Decoder0~11_combout\);

-- Location: LCCOMB_X72_Y66_N22
\decoder|decoder|data~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~22_combout\ = (\decoder|decoder|Decoder0~11_combout\ & ((\decoder|tick_gen|tick_bit~q\ & (\decoder|demanchester|WideOr0~0_combout\)) # (!\decoder|tick_gen|tick_bit~q\ & ((\decoder|decoder|data\(11)))))) # 
-- (!\decoder|decoder|Decoder0~11_combout\ & (((\decoder|decoder|data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|WideOr0~0_combout\,
	datab => \decoder|decoder|data\(11),
	datac => \decoder|decoder|Decoder0~11_combout\,
	datad => \decoder|tick_gen|tick_bit~q\,
	combout => \decoder|decoder|data~22_combout\);

-- Location: LCCOMB_X99_Y33_N8
\encoder|MAE_emission|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector5~0_combout\ = (\encoder|MAE_emission|enable~q\ & ((\encoder|MAE_emission|EF.State_Send~q\) # ((\encoder|MAE_emission|EF.State_Init~q\) # (\encoder|MAE_emission|EF.State_Clear~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Send~q\,
	datab => \encoder|MAE_emission|EF.State_Init~q\,
	datac => \encoder|MAE_emission|enable~q\,
	datad => \encoder|MAE_emission|EF.State_Clear~q\,
	combout => \encoder|MAE_emission|Selector5~0_combout\);

-- Location: FF_X92_Y36_N21
\encoder|TickGenerator|tick_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \encoder|TickGenerator|Equal2~8_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|tick_bit~q\);

-- Location: FF_X100_Y32_N7
\encoder|MAE_emission|i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[30]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(30));

-- Location: FF_X100_Y33_N13
\encoder|MAE_emission|i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[27]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(27));

-- Location: FF_X100_Y33_N25
\encoder|MAE_emission|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[25]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(25));

-- Location: LCCOMB_X100_Y33_N4
\encoder|MAE_emission|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~1_combout\ = (\encoder|MAE_emission|i\(26) & (\encoder|MAE_emission|i\(25) & (\encoder|MAE_emission|i\(24) & \encoder|MAE_emission|i\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(26),
	datab => \encoder|MAE_emission|i\(25),
	datac => \encoder|MAE_emission|i\(24),
	datad => \encoder|MAE_emission|i\(27),
	combout => \encoder|MAE_emission|Equal0~1_combout\);

-- Location: FF_X100_Y32_N11
\encoder|MAE_emission|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[18]~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(18));

-- Location: FF_X100_Y33_N11
\encoder|MAE_emission|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[7]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(7));

-- Location: LCCOMB_X99_Y33_N4
\encoder|MAE_emission|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector5~1_combout\ = (\encoder|MAE_emission|Selector5~0_combout\) # ((\encoder|MAE_emission|process_0~0_combout\ & \encoder|MAE_emission|EF.State_Send~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|Selector5~0_combout\,
	datad => \encoder|MAE_emission|EF.State_Send~q\,
	combout => \encoder|MAE_emission|Selector5~1_combout\);

-- Location: FF_X107_Y33_N23
\encoder|MAE_emission|reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|reg[11]~1_combout\,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|reg\(11));

-- Location: FF_X107_Y33_N31
\encoder|MAE_emission|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|reg[6]~feeder_combout\,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|reg\(6));

-- Location: FF_X74_Y61_N13
\decoder|demanchester|State.suit11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|demanchester|Selector7~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \decoder|tick_gen|tick_manch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|demanchester|State.suit11~q\);

-- Location: FF_X76_Y62_N7
\decoder|tick_gen|stbit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(3));

-- Location: FF_X76_Y61_N11
\decoder|tick_gen|stbit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(21));

-- Location: FF_X76_Y62_N27
\decoder|tick_gen|stbit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(13));

-- Location: FF_X77_Y62_N21
\decoder|tick_gen|stbit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stbit~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(11));

-- Location: FF_X77_Y62_N7
\decoder|tick_gen|stbit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stbit~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(9));

-- Location: FF_X77_Y62_N5
\decoder|tick_gen|stbit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stbit~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(8));

-- Location: LCCOMB_X77_Y62_N22
\decoder|tick_gen|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~8_combout\ = (!\decoder|tick_gen|stbit\(9) & (!\decoder|tick_gen|stbit\(11) & (!\decoder|tick_gen|stbit\(8) & !\decoder|tick_gen|stbit\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(9),
	datab => \decoder|tick_gen|stbit\(11),
	datac => \decoder|tick_gen|stbit\(8),
	datad => \decoder|tick_gen|stbit\(10),
	combout => \decoder|tick_gen|Equal2~8_combout\);

-- Location: LCCOMB_X75_Y66_N12
\decoder|decoder|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~73_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datac => \decoder|decoder|Add0~56_combout\,
	combout => \decoder|decoder|Add0~73_combout\);

-- Location: LCCOMB_X75_Y66_N14
\decoder|decoder|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~75_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~52_combout\,
	combout => \decoder|decoder|Add0~75_combout\);

-- Location: LCCOMB_X75_Y66_N16
\decoder|decoder|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~78_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datac => \decoder|decoder|Add0~46_combout\,
	combout => \decoder|decoder|Add0~78_combout\);

-- Location: LCCOMB_X75_Y67_N6
\decoder|decoder|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~83_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~36_combout\,
	combout => \decoder|decoder|Add0~83_combout\);

-- Location: LCCOMB_X75_Y67_N12
\decoder|decoder|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~87_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~28_combout\,
	combout => \decoder|decoder|Add0~87_combout\);

-- Location: LCCOMB_X75_Y67_N2
\decoder|decoder|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~88_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~26_combout\,
	combout => \decoder|decoder|Add0~88_combout\);

-- Location: LCCOMB_X75_Y67_N0
\decoder|decoder|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~89_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datac => \decoder|decoder|Add0~24_combout\,
	combout => \decoder|decoder|Add0~89_combout\);

-- Location: LCCOMB_X74_Y67_N12
\decoder|decoder|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~94_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~14_combout\,
	combout => \decoder|decoder|Add0~94_combout\);

-- Location: LCCOMB_X74_Y66_N22
\decoder|decoder|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector4~0_combout\ = (!\decoder|decoder|EF.State_Send~q\ & !\decoder|decoder|EF.State_Error~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Send~q\,
	datad => \decoder|decoder|EF.State_Error~q\,
	combout => \decoder|decoder|Selector4~0_combout\);

-- Location: FF_X91_Y37_N23
\encoder|TickGenerator|stburst[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~54_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(27));

-- Location: FF_X91_Y37_N7
\encoder|TickGenerator|stburst[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~38_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(19));

-- Location: LCCOMB_X92_Y37_N10
\encoder|TickGenerator|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~3_combout\ = (!\encoder|TickGenerator|stburst\(16) & (!\encoder|TickGenerator|stburst\(19) & (!\encoder|TickGenerator|stburst\(18) & !\encoder|TickGenerator|stburst\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(16),
	datab => \encoder|TickGenerator|stburst\(19),
	datac => \encoder|TickGenerator|stburst\(18),
	datad => \encoder|TickGenerator|stburst\(17),
	combout => \encoder|TickGenerator|Equal0~3_combout\);

-- Location: FF_X91_Y38_N31
\encoder|TickGenerator|stburst[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~30_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(15));

-- Location: LCCOMB_X92_Y38_N24
\encoder|TickGenerator|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~5_combout\ = (!\encoder|TickGenerator|stburst\(15) & !\encoder|TickGenerator|stburst\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(15),
	datad => \encoder|TickGenerator|stburst\(14),
	combout => \encoder|TickGenerator|Equal0~5_combout\);

-- Location: FF_X91_Y38_N23
\encoder|TickGenerator|stburst[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~22_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(11));

-- Location: FF_X92_Y38_N3
\encoder|TickGenerator|stburst[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stburst~0_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(8));

-- Location: LCCOMB_X92_Y38_N12
\encoder|TickGenerator|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~6_combout\ = (!\encoder|TickGenerator|stburst\(9) & (!\encoder|TickGenerator|stburst\(10) & (!\encoder|TickGenerator|stburst\(8) & !\encoder|TickGenerator|stburst\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(9),
	datab => \encoder|TickGenerator|stburst\(10),
	datac => \encoder|TickGenerator|stburst\(8),
	datad => \encoder|TickGenerator|stburst\(11),
	combout => \encoder|TickGenerator|Equal0~6_combout\);

-- Location: FF_X91_Y38_N27
\encoder|TickGenerator|stburst[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~26_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(13));

-- Location: LCCOMB_X92_Y38_N26
\encoder|TickGenerator|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~7_combout\ = (\encoder|TickGenerator|Equal0~6_combout\ & (!\encoder|TickGenerator|stburst\(12) & (!\encoder|TickGenerator|stburst\(13) & \encoder|TickGenerator|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal0~6_combout\,
	datab => \encoder|TickGenerator|stburst\(12),
	datac => \encoder|TickGenerator|stburst\(13),
	datad => \encoder|TickGenerator|Equal0~5_combout\,
	combout => \encoder|TickGenerator|Equal0~7_combout\);

-- Location: FF_X92_Y38_N7
\encoder|TickGenerator|stburst[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stburst~3_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(3));

-- Location: LCCOMB_X98_Y33_N16
\encoder|MAE_emission|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector3~0_combout\ = (\encoder|TickGenerator|tick_bit~q\ & \encoder|MAE_emission|EF.State_Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|tick_bit~q\,
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	combout => \encoder|MAE_emission|Selector3~0_combout\);

-- Location: FF_X92_Y36_N13
\encoder|TickGenerator|stmanch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~12_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(6));

-- Location: FF_X92_Y36_N11
\encoder|TickGenerator|stmanch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~10_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(5));

-- Location: LCCOMB_X89_Y36_N22
\encoder|TickGenerator|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~1_combout\ = (!\encoder|TickGenerator|stmanch\(6) & (!\encoder|TickGenerator|stmanch\(5) & (!\encoder|TickGenerator|stmanch\(0) & \encoder|TickGenerator|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(6),
	datab => \encoder|TickGenerator|stmanch\(5),
	datac => \encoder|TickGenerator|stmanch\(0),
	datad => \encoder|TickGenerator|Equal1~0_combout\,
	combout => \encoder|TickGenerator|Equal1~1_combout\);

-- Location: FF_X91_Y34_N31
\encoder|TickGenerator|stbit[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~60_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(31));

-- Location: FF_X91_Y34_N29
\encoder|TickGenerator|stbit[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~58_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(30));

-- Location: FF_X91_Y34_N27
\encoder|TickGenerator|stbit[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~56_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(29));

-- Location: FF_X91_Y34_N25
\encoder|TickGenerator|stbit[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~54_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(28));

-- Location: LCCOMB_X92_Y34_N8
\encoder|TickGenerator|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~0_combout\ = (!\encoder|TickGenerator|stbit\(28) & (!\encoder|TickGenerator|stbit\(30) & (!\encoder|TickGenerator|stbit\(29) & !\encoder|TickGenerator|stbit\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(28),
	datab => \encoder|TickGenerator|stbit\(30),
	datac => \encoder|TickGenerator|stbit\(29),
	datad => \encoder|TickGenerator|stbit\(31),
	combout => \encoder|TickGenerator|Equal2~0_combout\);

-- Location: FF_X91_Y34_N23
\encoder|TickGenerator|stbit[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~52_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(27));

-- Location: FF_X91_Y34_N21
\encoder|TickGenerator|stbit[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~50_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(26));

-- Location: FF_X91_Y34_N19
\encoder|TickGenerator|stbit[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~48_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(25));

-- Location: FF_X91_Y34_N17
\encoder|TickGenerator|stbit[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~46_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(24));

-- Location: LCCOMB_X92_Y34_N10
\encoder|TickGenerator|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~1_combout\ = (!\encoder|TickGenerator|stbit\(25) & (!\encoder|TickGenerator|stbit\(26) & (!\encoder|TickGenerator|stbit\(24) & !\encoder|TickGenerator|stbit\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(25),
	datab => \encoder|TickGenerator|stbit\(26),
	datac => \encoder|TickGenerator|stbit\(24),
	datad => \encoder|TickGenerator|stbit\(27),
	combout => \encoder|TickGenerator|Equal2~1_combout\);

-- Location: FF_X91_Y34_N15
\encoder|TickGenerator|stbit[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~44_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(23));

-- Location: FF_X91_Y34_N13
\encoder|TickGenerator|stbit[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~42_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(22));

-- Location: FF_X91_Y34_N11
\encoder|TickGenerator|stbit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~40_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(21));

-- Location: FF_X91_Y34_N9
\encoder|TickGenerator|stbit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~38_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(20));

-- Location: LCCOMB_X92_Y34_N4
\encoder|TickGenerator|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~2_combout\ = (!\encoder|TickGenerator|stbit\(23) & (!\encoder|TickGenerator|stbit\(22) & (!\encoder|TickGenerator|stbit\(21) & !\encoder|TickGenerator|stbit\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(23),
	datab => \encoder|TickGenerator|stbit\(22),
	datac => \encoder|TickGenerator|stbit\(21),
	datad => \encoder|TickGenerator|stbit\(20),
	combout => \encoder|TickGenerator|Equal2~2_combout\);

-- Location: FF_X91_Y34_N7
\encoder|TickGenerator|stbit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~36_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(19));

-- Location: FF_X91_Y34_N5
\encoder|TickGenerator|stbit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~34_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(18));

-- Location: FF_X91_Y34_N3
\encoder|TickGenerator|stbit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~32_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(17));

-- Location: FF_X92_Y34_N7
\encoder|TickGenerator|stbit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stbit~0_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(16));

-- Location: LCCOMB_X92_Y34_N28
\encoder|TickGenerator|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~3_combout\ = (!\encoder|TickGenerator|stbit\(16) & (!\encoder|TickGenerator|stbit\(19) & (!\encoder|TickGenerator|stbit\(18) & !\encoder|TickGenerator|stbit\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(16),
	datab => \encoder|TickGenerator|stbit\(19),
	datac => \encoder|TickGenerator|stbit\(18),
	datad => \encoder|TickGenerator|stbit\(17),
	combout => \encoder|TickGenerator|Equal2~3_combout\);

-- Location: FF_X91_Y35_N31
\encoder|TickGenerator|stbit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~28_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(15));

-- Location: FF_X92_Y34_N3
\encoder|TickGenerator|stbit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stbit~1_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(14));

-- Location: FF_X91_Y35_N27
\encoder|TickGenerator|stbit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~24_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(13));

-- Location: FF_X92_Y34_N13
\encoder|TickGenerator|stbit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stbit~2_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(12));

-- Location: LCCOMB_X92_Y34_N18
\encoder|TickGenerator|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~4_combout\ = (!\encoder|TickGenerator|stbit\(12) & (!\encoder|TickGenerator|stbit\(14) & (!\encoder|TickGenerator|stbit\(13) & !\encoder|TickGenerator|stbit\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(12),
	datab => \encoder|TickGenerator|stbit\(14),
	datac => \encoder|TickGenerator|stbit\(13),
	datad => \encoder|TickGenerator|stbit\(15),
	combout => \encoder|TickGenerator|Equal2~4_combout\);

-- Location: LCCOMB_X92_Y34_N20
\encoder|TickGenerator|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~5_combout\ = (\encoder|TickGenerator|Equal2~1_combout\ & (\encoder|TickGenerator|Equal2~3_combout\ & (\encoder|TickGenerator|Equal2~2_combout\ & \encoder|TickGenerator|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal2~1_combout\,
	datab => \encoder|TickGenerator|Equal2~3_combout\,
	datac => \encoder|TickGenerator|Equal2~2_combout\,
	datad => \encoder|TickGenerator|Equal2~4_combout\,
	combout => \encoder|TickGenerator|Equal2~5_combout\);

-- Location: FF_X92_Y34_N15
\encoder|TickGenerator|stbit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stbit~3_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(11));

-- Location: FF_X91_Y35_N21
\encoder|TickGenerator|stbit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~18_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(10));

-- Location: FF_X92_Y34_N1
\encoder|TickGenerator|stbit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stbit~4_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(9));

-- Location: FF_X92_Y34_N31
\encoder|TickGenerator|stbit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stbit~5_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(8));

-- Location: LCCOMB_X92_Y34_N24
\encoder|TickGenerator|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~6_combout\ = (!\encoder|TickGenerator|stbit\(10) & (!\encoder|TickGenerator|stbit\(11) & (!\encoder|TickGenerator|stbit\(8) & !\encoder|TickGenerator|stbit\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(10),
	datab => \encoder|TickGenerator|stbit\(11),
	datac => \encoder|TickGenerator|stbit\(8),
	datad => \encoder|TickGenerator|stbit\(9),
	combout => \encoder|TickGenerator|Equal2~6_combout\);

-- Location: FF_X91_Y35_N15
\encoder|TickGenerator|stbit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~12_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(7));

-- Location: LCCOMB_X92_Y34_N26
\encoder|TickGenerator|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~7_combout\ = (!\encoder|TickGenerator|stbit\(7) & \encoder|TickGenerator|Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(7),
	datad => \encoder|TickGenerator|Equal2~6_combout\,
	combout => \encoder|TickGenerator|Equal2~7_combout\);

-- Location: LCCOMB_X92_Y34_N16
\encoder|TickGenerator|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~8_combout\ = (\encoder|TickGenerator|Equal2~7_combout\ & (\encoder|TickGenerator|Equal2~5_combout\ & (\encoder|TickGenerator|Equal2~0_combout\ & \encoder|TickGenerator|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal2~7_combout\,
	datab => \encoder|TickGenerator|Equal2~5_combout\,
	datac => \encoder|TickGenerator|Equal2~0_combout\,
	datad => \encoder|TickGenerator|Equal1~1_combout\,
	combout => \encoder|TickGenerator|Equal2~8_combout\);

-- Location: LCCOMB_X100_Y32_N6
\encoder|MAE_emission|i[30]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[30]~4_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & (((\encoder|MAE_emission|Add0~60_combout\)))) # (!\encoder|MAE_emission|i[0]~2_combout\ & (!\encoder|MAE_emission|Selector8~0_combout\ & (\encoder|MAE_emission|i\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|Selector8~0_combout\,
	datac => \encoder|MAE_emission|i\(30),
	datad => \encoder|MAE_emission|Add0~60_combout\,
	combout => \encoder|MAE_emission|i[30]~4_combout\);

-- Location: LCCOMB_X100_Y33_N12
\encoder|MAE_emission|i[27]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[27]~7_combout\ = (\encoder|MAE_emission|i[0]~32_combout\ & (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~54_combout\)))) # (!\encoder|MAE_emission|i[0]~32_combout\ & ((\encoder|MAE_emission|i\(27)) # 
-- ((\encoder|MAE_emission|i[0]~2_combout\ & \encoder|MAE_emission|Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~32_combout\,
	datab => \encoder|MAE_emission|i[0]~2_combout\,
	datac => \encoder|MAE_emission|i\(27),
	datad => \encoder|MAE_emission|Add0~54_combout\,
	combout => \encoder|MAE_emission|i[27]~7_combout\);

-- Location: LCCOMB_X100_Y33_N24
\encoder|MAE_emission|i[25]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[25]~9_combout\ = (\encoder|MAE_emission|i[0]~32_combout\ & (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~50_combout\)))) # (!\encoder|MAE_emission|i[0]~32_combout\ & ((\encoder|MAE_emission|i\(25)) # 
-- ((\encoder|MAE_emission|i[0]~2_combout\ & \encoder|MAE_emission|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~32_combout\,
	datab => \encoder|MAE_emission|i[0]~2_combout\,
	datac => \encoder|MAE_emission|i\(25),
	datad => \encoder|MAE_emission|Add0~50_combout\,
	combout => \encoder|MAE_emission|i[25]~9_combout\);

-- Location: LCCOMB_X100_Y32_N10
\encoder|MAE_emission|i[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[18]~16_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~36_combout\) # ((!\encoder|MAE_emission|i[0]~32_combout\ & \encoder|MAE_emission|i\(18))))) # (!\encoder|MAE_emission|i[0]~2_combout\ & 
-- (!\encoder|MAE_emission|i[0]~32_combout\ & (\encoder|MAE_emission|i\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|i[0]~32_combout\,
	datac => \encoder|MAE_emission|i\(18),
	datad => \encoder|MAE_emission|Add0~36_combout\,
	combout => \encoder|MAE_emission|i[18]~16_combout\);

-- Location: LCCOMB_X100_Y33_N10
\encoder|MAE_emission|i[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[7]~27_combout\ = (\encoder|MAE_emission|i[0]~32_combout\ & (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~14_combout\)))) # (!\encoder|MAE_emission|i[0]~32_combout\ & ((\encoder|MAE_emission|i\(7)) # 
-- ((\encoder|MAE_emission|i[0]~2_combout\ & \encoder|MAE_emission|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~32_combout\,
	datab => \encoder|MAE_emission|i[0]~2_combout\,
	datac => \encoder|MAE_emission|i\(7),
	datad => \encoder|MAE_emission|Add0~14_combout\,
	combout => \encoder|MAE_emission|i[7]~27_combout\);

-- Location: FF_X92_Y35_N23
\encoder|TickGenerator|stmanch[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~54_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(27));

-- Location: LCCOMB_X89_Y35_N12
\encoder|TickGenerator|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~3_combout\ = (!\encoder|TickGenerator|stmanch\(27) & (!\encoder|TickGenerator|stmanch\(24) & (!\encoder|TickGenerator|stmanch\(26) & !\encoder|TickGenerator|stmanch\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(27),
	datab => \encoder|TickGenerator|stmanch\(24),
	datac => \encoder|TickGenerator|stmanch\(26),
	datad => \encoder|TickGenerator|stmanch\(25),
	combout => \encoder|TickGenerator|Equal1~3_combout\);

-- Location: FF_X92_Y35_N11
\encoder|TickGenerator|stmanch[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~42_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(21));

-- Location: FF_X91_Y36_N3
\encoder|TickGenerator|stmanch[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stmanch~0_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(15));

-- Location: FF_X99_Y33_N27
\encoder|MAE_emission|toggle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|toggle~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|toggle~q\);

-- Location: LCCOMB_X74_Y61_N12
\decoder|demanchester|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector7~0_combout\ = (!\decoder|deburst|trame_deburst~q\ & ((\decoder|demanchester|State.valid1~q\) # (\decoder|demanchester|State.Start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|demanchester|State.valid1~q\,
	datac => \decoder|demanchester|State.Start~q\,
	datad => \decoder|deburst|trame_deburst~q\,
	combout => \decoder|demanchester|Selector7~0_combout\);

-- Location: FF_X75_Y61_N27
\decoder|tick_gen|stmanch[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~56_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(29));

-- Location: FF_X75_Y61_N23
\decoder|tick_gen|stmanch[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~52_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(27));

-- Location: FF_X75_Y61_N31
\decoder|tick_gen|stmanch[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~60_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(31));

-- Location: FF_X75_Y61_N7
\decoder|tick_gen|stmanch[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(19));

-- Location: FF_X74_Y62_N27
\decoder|tick_gen|stmanch[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stmanch~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(13));

-- Location: FF_X74_Y62_N17
\decoder|tick_gen|stmanch[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stmanch~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(10));

-- Location: LCCOMB_X74_Y62_N24
\decoder|tick_gen|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~6_combout\ = (!\decoder|tick_gen|stmanch\(10) & (!\decoder|tick_gen|stmanch\(8) & (!\decoder|tick_gen|stmanch\(11) & !\decoder|tick_gen|stmanch\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(10),
	datab => \decoder|tick_gen|stmanch\(8),
	datac => \decoder|tick_gen|stmanch\(11),
	datad => \decoder|tick_gen|stmanch\(9),
	combout => \decoder|tick_gen|Equal1~6_combout\);

-- Location: FF_X74_Y62_N9
\decoder|tick_gen|stmanch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stmanch~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(7));

-- Location: LCCOMB_X77_Y62_N20
\decoder|tick_gen|stbit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~3_combout\ = ((!\decoder|tick_gen|stbit\(7) & (\decoder|tick_gen|Equal2~9_combout\ & \decoder|tick_gen|Equal2~4_combout\))) # (!\decoder|tick_gen|Add2~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(7),
	datab => \decoder|tick_gen|Equal2~9_combout\,
	datac => \decoder|tick_gen|Equal2~4_combout\,
	datad => \decoder|tick_gen|Add2~22_combout\,
	combout => \decoder|tick_gen|stbit~3_combout\);

-- Location: LCCOMB_X77_Y62_N6
\decoder|tick_gen|stbit~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~4_combout\ = ((!\decoder|tick_gen|stbit\(7) & (\decoder|tick_gen|Equal2~9_combout\ & \decoder|tick_gen|Equal2~4_combout\))) # (!\decoder|tick_gen|Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(7),
	datab => \decoder|tick_gen|Equal2~9_combout\,
	datac => \decoder|tick_gen|Equal2~4_combout\,
	datad => \decoder|tick_gen|Add2~18_combout\,
	combout => \decoder|tick_gen|stbit~4_combout\);

-- Location: LCCOMB_X77_Y62_N4
\decoder|tick_gen|stbit~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~5_combout\ = ((\decoder|tick_gen|Equal2~9_combout\ & (\decoder|tick_gen|Equal2~4_combout\ & !\decoder|tick_gen|stbit\(7)))) # (!\decoder|tick_gen|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Add2~16_combout\,
	datab => \decoder|tick_gen|Equal2~9_combout\,
	datac => \decoder|tick_gen|Equal2~4_combout\,
	datad => \decoder|tick_gen|stbit\(7),
	combout => \decoder|tick_gen|stbit~5_combout\);

-- Location: LCCOMB_X92_Y38_N2
\encoder|TickGenerator|stburst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stburst~0_combout\ = (\encoder|TickGenerator|Equal0~10_combout\) # (!\encoder|TickGenerator|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal0~10_combout\,
	datac => \encoder|TickGenerator|Add0~16_combout\,
	combout => \encoder|TickGenerator|stburst~0_combout\);

-- Location: LCCOMB_X92_Y38_N6
\encoder|TickGenerator|stburst~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stburst~3_combout\ = (\encoder|TickGenerator|Equal0~10_combout\) # (!\encoder|TickGenerator|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal0~10_combout\,
	datad => \encoder|TickGenerator|Add0~6_combout\,
	combout => \encoder|TickGenerator|stburst~3_combout\);

-- Location: FF_X90_Y35_N27
\encoder|TickGenerator|sttrame[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~56_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(29));

-- Location: FF_X90_Y35_N23
\encoder|TickGenerator|sttrame[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~52_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(27));

-- Location: LCCOMB_X89_Y35_N30
\encoder|TickGenerator|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~1_combout\ = (!\encoder|TickGenerator|sttrame\(25) & (!\encoder|TickGenerator|sttrame\(27) & (!\encoder|TickGenerator|sttrame\(26) & !\encoder|TickGenerator|sttrame\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(25),
	datab => \encoder|TickGenerator|sttrame\(27),
	datac => \encoder|TickGenerator|sttrame\(26),
	datad => \encoder|TickGenerator|sttrame\(24),
	combout => \encoder|TickGenerator|Equal3~1_combout\);

-- Location: FF_X90_Y35_N7
\encoder|TickGenerator|sttrame[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~36_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(19));

-- Location: FF_X89_Y36_N1
\encoder|TickGenerator|sttrame[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~4_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(18));

-- Location: FF_X89_Y36_N11
\encoder|TickGenerator|sttrame[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~5_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(17));

-- Location: LCCOMB_X89_Y36_N8
\encoder|TickGenerator|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~5_combout\ = (!\encoder|TickGenerator|sttrame\(17) & (!\encoder|TickGenerator|sttrame\(18) & (!\encoder|TickGenerator|sttrame\(19) & !\encoder|TickGenerator|sttrame\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(17),
	datab => \encoder|TickGenerator|sttrame\(18),
	datac => \encoder|TickGenerator|sttrame\(19),
	datad => \encoder|TickGenerator|sttrame\(16),
	combout => \encoder|TickGenerator|Equal3~5_combout\);

-- Location: FF_X89_Y36_N13
\encoder|TickGenerator|sttrame[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~7_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(14));

-- Location: LCCOMB_X92_Y34_N6
\encoder|TickGenerator|stbit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit~0_combout\ = (\encoder|TickGenerator|Equal2~8_combout\) # (!\encoder|TickGenerator|Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Add2~30_combout\,
	datad => \encoder|TickGenerator|Equal2~8_combout\,
	combout => \encoder|TickGenerator|stbit~0_combout\);

-- Location: LCCOMB_X92_Y34_N2
\encoder|TickGenerator|stbit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit~1_combout\ = (\encoder|TickGenerator|Equal2~8_combout\) # (!\encoder|TickGenerator|Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Add2~26_combout\,
	datad => \encoder|TickGenerator|Equal2~8_combout\,
	combout => \encoder|TickGenerator|stbit~1_combout\);

-- Location: LCCOMB_X92_Y34_N12
\encoder|TickGenerator|stbit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit~2_combout\ = (\encoder|TickGenerator|Equal2~8_combout\) # (!\encoder|TickGenerator|Add2~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Add2~22_combout\,
	datad => \encoder|TickGenerator|Equal2~8_combout\,
	combout => \encoder|TickGenerator|stbit~2_combout\);

-- Location: LCCOMB_X92_Y34_N14
\encoder|TickGenerator|stbit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit~3_combout\ = (\encoder|TickGenerator|Equal2~8_combout\) # (!\encoder|TickGenerator|Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Add2~20_combout\,
	datad => \encoder|TickGenerator|Equal2~8_combout\,
	combout => \encoder|TickGenerator|stbit~3_combout\);

-- Location: LCCOMB_X92_Y34_N0
\encoder|TickGenerator|stbit~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit~4_combout\ = (\encoder|TickGenerator|Equal2~8_combout\) # (!\encoder|TickGenerator|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Add2~16_combout\,
	datad => \encoder|TickGenerator|Equal2~8_combout\,
	combout => \encoder|TickGenerator|stbit~4_combout\);

-- Location: LCCOMB_X92_Y34_N30
\encoder|TickGenerator|stbit~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit~5_combout\ = (\encoder|TickGenerator|Equal2~8_combout\) # (!\encoder|TickGenerator|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Add2~14_combout\,
	datad => \encoder|TickGenerator|Equal2~8_combout\,
	combout => \encoder|TickGenerator|stbit~5_combout\);

-- Location: LCCOMB_X91_Y36_N2
\encoder|TickGenerator|stmanch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~0_combout\ = (\encoder|TickGenerator|Equal1~10_combout\) # (!\encoder|TickGenerator|Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Add1~30_combout\,
	datad => \encoder|TickGenerator|Equal1~10_combout\,
	combout => \encoder|TickGenerator|stmanch~0_combout\);

-- Location: LCCOMB_X99_Y33_N26
\encoder|MAE_emission|toggle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|toggle~0_combout\ = \encoder|MAE_emission|toggle~q\ $ (\encoder|MAE_emission|EF.State_Clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|toggle~q\,
	datad => \encoder|MAE_emission|EF.State_Clear~q\,
	combout => \encoder|MAE_emission|toggle~0_combout\);

-- Location: FF_X74_Y61_N17
\decoder|deburst|EP.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|deburst|EP.E3~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \decoder|tick_gen|tick_burst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|deburst|EP.E3~q\);

-- Location: FF_X80_Y28_N31
\decoder|tick_gen|stburst[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~62_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(31));

-- Location: FF_X80_Y28_N29
\decoder|tick_gen|stburst[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~60_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(30));

-- Location: FF_X80_Y28_N27
\decoder|tick_gen|stburst[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~58_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(29));

-- Location: FF_X80_Y28_N25
\decoder|tick_gen|stburst[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~56_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(28));

-- Location: LCCOMB_X79_Y28_N12
\decoder|tick_gen|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~0_combout\ = (!\decoder|tick_gen|stburst\(29) & (!\decoder|tick_gen|stburst\(30) & (!\decoder|tick_gen|stburst\(31) & !\decoder|tick_gen|stburst\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(29),
	datab => \decoder|tick_gen|stburst\(30),
	datac => \decoder|tick_gen|stburst\(31),
	datad => \decoder|tick_gen|stburst\(28),
	combout => \decoder|tick_gen|Equal0~0_combout\);

-- Location: FF_X80_Y28_N23
\decoder|tick_gen|stburst[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~54_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(27));

-- Location: FF_X80_Y28_N13
\decoder|tick_gen|stburst[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(22));

-- Location: FF_X80_Y28_N7
\decoder|tick_gen|stburst[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(19));

-- Location: FF_X80_Y29_N31
\decoder|tick_gen|stburst[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(15));

-- Location: FF_X80_Y29_N27
\decoder|tick_gen|stburst[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(13));

-- Location: LCCOMB_X79_Y29_N22
\decoder|tick_gen|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~5_combout\ = (!\decoder|tick_gen|stburst\(13) & (!\decoder|tick_gen|stburst\(14) & (!\decoder|tick_gen|stburst\(15) & !\decoder|tick_gen|stburst\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(13),
	datab => \decoder|tick_gen|stburst\(14),
	datac => \decoder|tick_gen|stburst\(15),
	datad => \decoder|tick_gen|stburst\(12),
	combout => \decoder|tick_gen|Equal0~5_combout\);

-- Location: FF_X79_Y29_N1
\decoder|tick_gen|stburst[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stburst~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(4));

-- Location: FF_X79_Y29_N17
\decoder|tick_gen|stburst[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stburst~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(3));

-- Location: FF_X79_Y29_N13
\decoder|tick_gen|stburst[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stburst~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(0));

-- Location: LCCOMB_X79_Y29_N10
\decoder|tick_gen|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~9_combout\ = (!\decoder|tick_gen|stburst\(2) & (!\decoder|tick_gen|stburst\(3) & (!\decoder|tick_gen|stburst\(1) & !\decoder|tick_gen|stburst\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(2),
	datab => \decoder|tick_gen|stburst\(3),
	datac => \decoder|tick_gen|stburst\(1),
	datad => \decoder|tick_gen|stburst\(0),
	combout => \decoder|tick_gen|Equal0~9_combout\);

-- Location: LCCOMB_X74_Y62_N26
\decoder|tick_gen|stmanch~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~1_combout\ = (\decoder|tick_gen|Equal1~8_combout\) # (!\decoder|tick_gen|Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|Add1~24_combout\,
	datac => \decoder|tick_gen|Equal1~8_combout\,
	combout => \decoder|tick_gen|stmanch~1_combout\);

-- Location: LCCOMB_X74_Y62_N16
\decoder|tick_gen|stmanch~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~3_combout\ = (\decoder|tick_gen|Equal1~8_combout\) # (!\decoder|tick_gen|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal1~8_combout\,
	datac => \decoder|tick_gen|Add1~18_combout\,
	combout => \decoder|tick_gen|stmanch~3_combout\);

-- Location: LCCOMB_X74_Y62_N8
\decoder|tick_gen|stmanch~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~5_combout\ = (\decoder|tick_gen|Equal1~8_combout\) # (!\decoder|tick_gen|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal1~8_combout\,
	datac => \decoder|tick_gen|Add1~12_combout\,
	combout => \decoder|tick_gen|stmanch~5_combout\);

-- Location: LCCOMB_X89_Y36_N0
\encoder|TickGenerator|sttrame~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~4_combout\ = ((\encoder|TickGenerator|Equal3~8_combout\ & (\encoder|TickGenerator|Equal3~3_combout\ & \encoder|TickGenerator|Equal3~2_combout\))) # (!\encoder|TickGenerator|Add3~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~8_combout\,
	datab => \encoder|TickGenerator|Equal3~3_combout\,
	datac => \encoder|TickGenerator|Equal3~2_combout\,
	datad => \encoder|TickGenerator|Add3~34_combout\,
	combout => \encoder|TickGenerator|sttrame~4_combout\);

-- Location: LCCOMB_X89_Y36_N10
\encoder|TickGenerator|sttrame~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~5_combout\ = ((\encoder|TickGenerator|Equal3~8_combout\ & (\encoder|TickGenerator|Equal3~3_combout\ & \encoder|TickGenerator|Equal3~2_combout\))) # (!\encoder|TickGenerator|Add3~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~8_combout\,
	datab => \encoder|TickGenerator|Equal3~3_combout\,
	datac => \encoder|TickGenerator|Equal3~2_combout\,
	datad => \encoder|TickGenerator|Add3~32_combout\,
	combout => \encoder|TickGenerator|sttrame~5_combout\);

-- Location: LCCOMB_X89_Y36_N12
\encoder|TickGenerator|sttrame~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~7_combout\ = ((\encoder|TickGenerator|Equal3~8_combout\ & (\encoder|TickGenerator|Equal3~2_combout\ & \encoder|TickGenerator|Equal3~3_combout\))) # (!\encoder|TickGenerator|Add3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~8_combout\,
	datab => \encoder|TickGenerator|Add3~26_combout\,
	datac => \encoder|TickGenerator|Equal3~2_combout\,
	datad => \encoder|TickGenerator|Equal3~3_combout\,
	combout => \encoder|TickGenerator|sttrame~7_combout\);

-- Location: FF_X74_Y61_N29
\decoder|deburst|EP.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \decoder|deburst|EP.E1~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \decoder|tick_gen|tick_burst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|deburst|EP.E2~q\);

-- Location: LCCOMB_X79_Y29_N0
\decoder|tick_gen|stburst~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stburst~2_combout\ = (\decoder|tick_gen|Equal0~10_combout\) # (!\decoder|tick_gen|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Add0~8_combout\,
	datad => \decoder|tick_gen|Equal0~10_combout\,
	combout => \decoder|tick_gen|stburst~2_combout\);

-- Location: LCCOMB_X79_Y29_N16
\decoder|tick_gen|stburst~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stburst~3_combout\ = (\decoder|tick_gen|Equal0~10_combout\) # (!\decoder|tick_gen|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|Equal0~10_combout\,
	datad => \decoder|tick_gen|Add0~6_combout\,
	combout => \decoder|tick_gen|stburst~3_combout\);

-- Location: LCCOMB_X79_Y29_N12
\decoder|tick_gen|stburst~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stburst~5_combout\ = (!\decoder|tick_gen|Add0~0_combout\ & !\decoder|tick_gen|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Add0~0_combout\,
	datad => \decoder|tick_gen|Equal0~10_combout\,
	combout => \decoder|tick_gen|stburst~5_combout\);

-- Location: FF_X74_Y61_N31
\decoder|deburst|EP.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|deburst|EP~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \decoder|tick_gen|tick_burst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|deburst|EP.E1~q\);

-- Location: LCCOMB_X74_Y61_N30
\decoder|deburst|EP~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|deburst|EP~10_combout\ = (!\decoder|deburst|EP.E0~q\ & \encoder|Tx~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|deburst|EP.E0~q\,
	datad => \encoder|Tx~0_combout\,
	combout => \decoder|deburst|EP~10_combout\);

-- Location: LCCOMB_X74_Y66_N26
\decoder|decoder|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector2~2_combout\ = (!\decoder|decoder|EF.State_Send~q\ & (!\decoder|decoder|EF.State_Error~q\ & ((\decoder|demanchester|WideOr0~0_combout\) # (\decoder|decoder|EF.State_Begin~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Send~q\,
	datab => \decoder|demanchester|WideOr0~0_combout\,
	datac => \decoder|decoder|EF.State_Begin~q\,
	datad => \decoder|decoder|EF.State_Error~q\,
	combout => \decoder|decoder|Selector2~2_combout\);

-- Location: LCCOMB_X107_Y33_N22
\encoder|MAE_emission|reg[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|reg[11]~1_combout\ = !\encoder|MAE_emission|toggle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encoder|MAE_emission|toggle~q\,
	combout => \encoder|MAE_emission|reg[11]~1_combout\);

-- Location: IOIBUF_X115_Y9_N22
\Address_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address_in(0),
	o => \Address_in[0]~input_o\);

-- Location: LCCOMB_X74_Y61_N16
\decoder|deburst|EP.E3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|deburst|EP.E3~feeder_combout\ = \decoder|deburst|EP.E2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decoder|deburst|EP.E2~q\,
	combout => \decoder|deburst|EP.E3~feeder_combout\);

-- Location: LCCOMB_X107_Y33_N30
\encoder|MAE_emission|reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|reg[6]~feeder_combout\ = \Address_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Address_in[0]~input_o\,
	combout => \encoder|MAE_emission|reg[6]~feeder_combout\);

-- Location: IOOBUF_X67_Y73_N9
\Address_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decoder|data\(6),
	devoe => ww_devoe,
	o => \Address_out[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\Address_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decoder|data\(7),
	devoe => ww_devoe,
	o => \Address_out[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\Address_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decoder|data\(8),
	devoe => ww_devoe,
	o => \Address_out[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\Address_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decoder|data\(9),
	devoe => ww_devoe,
	o => \Address_out[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\Address_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decoder|data\(10),
	devoe => ww_devoe,
	o => \Address_out[4]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\Cmd_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decoder|data\(0),
	devoe => ww_devoe,
	o => \Cmd_out[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\Cmd_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decoder|data\(1),
	devoe => ww_devoe,
	o => \Cmd_out[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\Cmd_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decoder|data\(2),
	devoe => ww_devoe,
	o => \Cmd_out[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\Cmd_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decoder|data\(3),
	devoe => ww_devoe,
	o => \Cmd_out[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\Cmd_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decoder|data\(4),
	devoe => ww_devoe,
	o => \Cmd_out[4]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\Cmd_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decoder|data\(5),
	devoe => ww_devoe,
	o => \Cmd_out[5]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\error_sig~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decoder|error_sig~q\,
	devoe => ww_devoe,
	o => \error_sig~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\toggle~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decoder|data\(11),
	devoe => ww_devoe,
	o => \toggle~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\go_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Go~input_o\,
	devoe => ww_devoe,
	o => \go_out~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\enable~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decoder|enable~q\,
	devoe => ww_devoe,
	o => \enable~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\Tx_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder|Tx~0_combout\,
	devoe => ww_devoe,
	o => \Tx_out~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X92_Y36_N0
\encoder|TickGenerator|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~0_combout\ = \encoder|TickGenerator|stmanch\(0) $ (VCC)
-- \encoder|TickGenerator|Add1~1\ = CARRY(\encoder|TickGenerator|stmanch\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(0),
	datad => VCC,
	combout => \encoder|TickGenerator|Add1~0_combout\,
	cout => \encoder|TickGenerator|Add1~1\);

-- Location: IOIBUF_X115_Y17_N1
\Go~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Go,
	o => \Go~input_o\);

-- Location: LCCOMB_X92_Y36_N6
\encoder|TickGenerator|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~6_combout\ = (\encoder|TickGenerator|stmanch\(3) & (!\encoder|TickGenerator|Add1~5\)) # (!\encoder|TickGenerator|stmanch\(3) & ((\encoder|TickGenerator|Add1~5\) # (GND)))
-- \encoder|TickGenerator|Add1~7\ = CARRY((!\encoder|TickGenerator|Add1~5\) # (!\encoder|TickGenerator|stmanch\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(3),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~5\,
	combout => \encoder|TickGenerator|Add1~6_combout\,
	cout => \encoder|TickGenerator|Add1~7\);

-- Location: FF_X92_Y36_N7
\encoder|TickGenerator|stmanch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~6_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(3));

-- Location: LCCOMB_X89_Y36_N20
\encoder|TickGenerator|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~0_combout\ = (!\encoder|TickGenerator|stmanch\(1) & (!\encoder|TickGenerator|stmanch\(3) & (!\encoder|TickGenerator|stmanch\(4) & !\encoder|TickGenerator|stmanch\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(1),
	datab => \encoder|TickGenerator|stmanch\(3),
	datac => \encoder|TickGenerator|stmanch\(4),
	datad => \encoder|TickGenerator|stmanch\(2),
	combout => \encoder|TickGenerator|Equal1~0_combout\);

-- Location: LCCOMB_X90_Y35_N10
\encoder|TickGenerator|Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~40_combout\ = (\encoder|TickGenerator|sttrame\(21) & (\encoder|TickGenerator|Add3~39\ $ (GND))) # (!\encoder|TickGenerator|sttrame\(21) & (!\encoder|TickGenerator|Add3~39\ & VCC))
-- \encoder|TickGenerator|Add3~41\ = CARRY((\encoder|TickGenerator|sttrame\(21) & !\encoder|TickGenerator|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(21),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~39\,
	combout => \encoder|TickGenerator|Add3~40_combout\,
	cout => \encoder|TickGenerator|Add3~41\);

-- Location: FF_X90_Y35_N11
\encoder|TickGenerator|sttrame[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~40_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(21));

-- Location: LCCOMB_X89_Y36_N6
\encoder|TickGenerator|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~4_combout\ = (!\encoder|TickGenerator|sttrame\(22) & (!\encoder|TickGenerator|sttrame\(20) & (!\encoder|TickGenerator|sttrame\(21) & !\encoder|TickGenerator|sttrame\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(22),
	datab => \encoder|TickGenerator|sttrame\(20),
	datac => \encoder|TickGenerator|sttrame\(21),
	datad => \encoder|TickGenerator|sttrame\(23),
	combout => \encoder|TickGenerator|Equal3~4_combout\);

-- Location: LCCOMB_X90_Y36_N14
\encoder|TickGenerator|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~12_combout\ = (\encoder|TickGenerator|sttrame\(7) & (!\encoder|TickGenerator|Add3~11\ & VCC)) # (!\encoder|TickGenerator|sttrame\(7) & (\encoder|TickGenerator|Add3~11\ $ (GND)))
-- \encoder|TickGenerator|Add3~13\ = CARRY((!\encoder|TickGenerator|sttrame\(7) & !\encoder|TickGenerator|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(7),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~11\,
	combout => \encoder|TickGenerator|Add3~12_combout\,
	cout => \encoder|TickGenerator|Add3~13\);

-- Location: LCCOMB_X90_Y36_N16
\encoder|TickGenerator|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~14_combout\ = (\encoder|TickGenerator|sttrame\(8) & ((\encoder|TickGenerator|Add3~13\) # (GND))) # (!\encoder|TickGenerator|sttrame\(8) & (!\encoder|TickGenerator|Add3~13\))
-- \encoder|TickGenerator|Add3~15\ = CARRY((\encoder|TickGenerator|sttrame\(8)) # (!\encoder|TickGenerator|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(8),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~13\,
	combout => \encoder|TickGenerator|Add3~14_combout\,
	cout => \encoder|TickGenerator|Add3~15\);

-- Location: LCCOMB_X91_Y36_N10
\encoder|TickGenerator|sttrame~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~11_combout\ = ((\encoder|TickGenerator|Equal3~8_combout\ & (\encoder|TickGenerator|Equal3~2_combout\ & \encoder|TickGenerator|Equal3~3_combout\))) # (!\encoder|TickGenerator|Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~8_combout\,
	datab => \encoder|TickGenerator|Equal3~2_combout\,
	datac => \encoder|TickGenerator|Equal3~3_combout\,
	datad => \encoder|TickGenerator|Add3~14_combout\,
	combout => \encoder|TickGenerator|sttrame~11_combout\);

-- Location: FF_X91_Y36_N11
\encoder|TickGenerator|sttrame[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~11_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(8));

-- Location: LCCOMB_X90_Y36_N18
\encoder|TickGenerator|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~16_combout\ = (\encoder|TickGenerator|sttrame\(9) & (\encoder|TickGenerator|Add3~15\ $ (GND))) # (!\encoder|TickGenerator|sttrame\(9) & (!\encoder|TickGenerator|Add3~15\ & VCC))
-- \encoder|TickGenerator|Add3~17\ = CARRY((\encoder|TickGenerator|sttrame\(9) & !\encoder|TickGenerator|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(9),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~15\,
	combout => \encoder|TickGenerator|Add3~16_combout\,
	cout => \encoder|TickGenerator|Add3~17\);

-- Location: FF_X90_Y36_N19
\encoder|TickGenerator|sttrame[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~16_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(9));

-- Location: LCCOMB_X90_Y36_N20
\encoder|TickGenerator|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~18_combout\ = (\encoder|TickGenerator|sttrame\(10) & (!\encoder|TickGenerator|Add3~17\)) # (!\encoder|TickGenerator|sttrame\(10) & ((\encoder|TickGenerator|Add3~17\) # (GND)))
-- \encoder|TickGenerator|Add3~19\ = CARRY((!\encoder|TickGenerator|Add3~17\) # (!\encoder|TickGenerator|sttrame\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(10),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~17\,
	combout => \encoder|TickGenerator|Add3~18_combout\,
	cout => \encoder|TickGenerator|Add3~19\);

-- Location: FF_X90_Y36_N21
\encoder|TickGenerator|sttrame[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~18_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(10));

-- Location: LCCOMB_X90_Y36_N22
\encoder|TickGenerator|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~20_combout\ = (\encoder|TickGenerator|sttrame\(11) & (!\encoder|TickGenerator|Add3~19\ & VCC)) # (!\encoder|TickGenerator|sttrame\(11) & (\encoder|TickGenerator|Add3~19\ $ (GND)))
-- \encoder|TickGenerator|Add3~21\ = CARRY((!\encoder|TickGenerator|sttrame\(11) & !\encoder|TickGenerator|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(11),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~19\,
	combout => \encoder|TickGenerator|Add3~20_combout\,
	cout => \encoder|TickGenerator|Add3~21\);

-- Location: LCCOMB_X90_Y36_N24
\encoder|TickGenerator|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~22_combout\ = (\encoder|TickGenerator|sttrame\(12) & ((\encoder|TickGenerator|Add3~21\) # (GND))) # (!\encoder|TickGenerator|sttrame\(12) & (!\encoder|TickGenerator|Add3~21\))
-- \encoder|TickGenerator|Add3~23\ = CARRY((\encoder|TickGenerator|sttrame\(12)) # (!\encoder|TickGenerator|Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(12),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~21\,
	combout => \encoder|TickGenerator|Add3~22_combout\,
	cout => \encoder|TickGenerator|Add3~23\);

-- Location: LCCOMB_X90_Y36_N26
\encoder|TickGenerator|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~24_combout\ = (\encoder|TickGenerator|sttrame\(13) & (!\encoder|TickGenerator|Add3~23\ & VCC)) # (!\encoder|TickGenerator|sttrame\(13) & (\encoder|TickGenerator|Add3~23\ $ (GND)))
-- \encoder|TickGenerator|Add3~25\ = CARRY((!\encoder|TickGenerator|sttrame\(13) & !\encoder|TickGenerator|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(13),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~23\,
	combout => \encoder|TickGenerator|Add3~24_combout\,
	cout => \encoder|TickGenerator|Add3~25\);

-- Location: LCCOMB_X89_Y36_N18
\encoder|TickGenerator|sttrame~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~8_combout\ = ((\encoder|TickGenerator|Equal3~8_combout\ & (\encoder|TickGenerator|Equal3~3_combout\ & \encoder|TickGenerator|Equal3~2_combout\))) # (!\encoder|TickGenerator|Add3~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~8_combout\,
	datab => \encoder|TickGenerator|Equal3~3_combout\,
	datac => \encoder|TickGenerator|Equal3~2_combout\,
	datad => \encoder|TickGenerator|Add3~24_combout\,
	combout => \encoder|TickGenerator|sttrame~8_combout\);

-- Location: FF_X89_Y36_N19
\encoder|TickGenerator|sttrame[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~8_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(13));

-- Location: LCCOMB_X90_Y36_N30
\encoder|TickGenerator|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~28_combout\ = (\encoder|TickGenerator|sttrame\(15) & (!\encoder|TickGenerator|Add3~27\ & VCC)) # (!\encoder|TickGenerator|sttrame\(15) & (\encoder|TickGenerator|Add3~27\ $ (GND)))
-- \encoder|TickGenerator|Add3~29\ = CARRY((!\encoder|TickGenerator|sttrame\(15) & !\encoder|TickGenerator|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(15),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~27\,
	combout => \encoder|TickGenerator|Add3~28_combout\,
	cout => \encoder|TickGenerator|Add3~29\);

-- Location: LCCOMB_X89_Y36_N26
\encoder|TickGenerator|sttrame~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~6_combout\ = ((\encoder|TickGenerator|Equal3~8_combout\ & (\encoder|TickGenerator|Equal3~3_combout\ & \encoder|TickGenerator|Equal3~2_combout\))) # (!\encoder|TickGenerator|Add3~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~8_combout\,
	datab => \encoder|TickGenerator|Equal3~3_combout\,
	datac => \encoder|TickGenerator|Equal3~2_combout\,
	datad => \encoder|TickGenerator|Add3~28_combout\,
	combout => \encoder|TickGenerator|sttrame~6_combout\);

-- Location: FF_X89_Y36_N27
\encoder|TickGenerator|sttrame[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~6_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(15));

-- Location: LCCOMB_X89_Y36_N16
\encoder|TickGenerator|sttrame~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~9_combout\ = ((\encoder|TickGenerator|Equal3~8_combout\ & (\encoder|TickGenerator|Equal3~3_combout\ & \encoder|TickGenerator|Equal3~2_combout\))) # (!\encoder|TickGenerator|Add3~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~8_combout\,
	datab => \encoder|TickGenerator|Equal3~3_combout\,
	datac => \encoder|TickGenerator|Equal3~2_combout\,
	datad => \encoder|TickGenerator|Add3~22_combout\,
	combout => \encoder|TickGenerator|sttrame~9_combout\);

-- Location: FF_X89_Y36_N17
\encoder|TickGenerator|sttrame[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~9_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(12));

-- Location: LCCOMB_X89_Y36_N2
\encoder|TickGenerator|Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~6_combout\ = (!\encoder|TickGenerator|sttrame\(14) & (!\encoder|TickGenerator|sttrame\(13) & (!\encoder|TickGenerator|sttrame\(15) & !\encoder|TickGenerator|sttrame\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(14),
	datab => \encoder|TickGenerator|sttrame\(13),
	datac => \encoder|TickGenerator|sttrame\(15),
	datad => \encoder|TickGenerator|sttrame\(12),
	combout => \encoder|TickGenerator|Equal3~6_combout\);

-- Location: LCCOMB_X91_Y36_N20
\encoder|TickGenerator|sttrame~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~10_combout\ = ((\encoder|TickGenerator|Equal3~8_combout\ & (\encoder|TickGenerator|Equal3~2_combout\ & \encoder|TickGenerator|Equal3~3_combout\))) # (!\encoder|TickGenerator|Add3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~8_combout\,
	datab => \encoder|TickGenerator|Equal3~2_combout\,
	datac => \encoder|TickGenerator|Equal3~3_combout\,
	datad => \encoder|TickGenerator|Add3~20_combout\,
	combout => \encoder|TickGenerator|sttrame~10_combout\);

-- Location: FF_X91_Y36_N21
\encoder|TickGenerator|sttrame[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~10_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(11));

-- Location: LCCOMB_X91_Y36_N24
\encoder|TickGenerator|Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~7_combout\ = (!\encoder|TickGenerator|sttrame\(8) & (!\encoder|TickGenerator|sttrame\(11) & (!\encoder|TickGenerator|sttrame\(9) & !\encoder|TickGenerator|sttrame\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(8),
	datab => \encoder|TickGenerator|sttrame\(11),
	datac => \encoder|TickGenerator|sttrame\(9),
	datad => \encoder|TickGenerator|sttrame\(10),
	combout => \encoder|TickGenerator|Equal3~7_combout\);

-- Location: LCCOMB_X91_Y36_N26
\encoder|TickGenerator|Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~8_combout\ = (\encoder|TickGenerator|Equal3~5_combout\ & (\encoder|TickGenerator|Equal3~4_combout\ & (\encoder|TickGenerator|Equal3~6_combout\ & \encoder|TickGenerator|Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~5_combout\,
	datab => \encoder|TickGenerator|Equal3~4_combout\,
	datac => \encoder|TickGenerator|Equal3~6_combout\,
	datad => \encoder|TickGenerator|Equal3~7_combout\,
	combout => \encoder|TickGenerator|Equal3~8_combout\);

-- Location: LCCOMB_X90_Y36_N0
\encoder|TickGenerator|sttrame~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~1_combout\ = ((\encoder|TickGenerator|Equal3~2_combout\ & (\encoder|TickGenerator|Equal3~3_combout\ & \encoder|TickGenerator|Equal3~8_combout\))) # (!\encoder|TickGenerator|Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Add3~8_combout\,
	datab => \encoder|TickGenerator|Equal3~2_combout\,
	datac => \encoder|TickGenerator|Equal3~3_combout\,
	datad => \encoder|TickGenerator|Equal3~8_combout\,
	combout => \encoder|TickGenerator|sttrame~1_combout\);

-- Location: FF_X90_Y36_N1
\encoder|TickGenerator|sttrame[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~1_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(5));

-- Location: LCCOMB_X90_Y36_N2
\encoder|TickGenerator|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~1_cout\ = CARRY((\encoder|TickGenerator|stmanch\(1) & \encoder|TickGenerator|stmanch\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(1),
	datab => \encoder|TickGenerator|stmanch\(0),
	datad => VCC,
	cout => \encoder|TickGenerator|Add3~1_cout\);

-- Location: LCCOMB_X90_Y36_N4
\encoder|TickGenerator|Add3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~3_cout\ = CARRY((!\encoder|TickGenerator|Add3~1_cout\) # (!\encoder|TickGenerator|stmanch\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(2),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~1_cout\,
	cout => \encoder|TickGenerator|Add3~3_cout\);

-- Location: LCCOMB_X90_Y36_N6
\encoder|TickGenerator|Add3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~5_cout\ = CARRY((\encoder|TickGenerator|stmanch\(3) & !\encoder|TickGenerator|Add3~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(3),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~3_cout\,
	cout => \encoder|TickGenerator|Add3~5_cout\);

-- Location: LCCOMB_X90_Y36_N8
\encoder|TickGenerator|Add3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~7_cout\ = CARRY((!\encoder|TickGenerator|Add3~5_cout\) # (!\encoder|TickGenerator|stmanch\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(4),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~5_cout\,
	cout => \encoder|TickGenerator|Add3~7_cout\);

-- Location: LCCOMB_X90_Y36_N12
\encoder|TickGenerator|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~10_combout\ = (\encoder|TickGenerator|sttrame\(6) & (!\encoder|TickGenerator|Add3~9\)) # (!\encoder|TickGenerator|sttrame\(6) & ((\encoder|TickGenerator|Add3~9\) # (GND)))
-- \encoder|TickGenerator|Add3~11\ = CARRY((!\encoder|TickGenerator|Add3~9\) # (!\encoder|TickGenerator|sttrame\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(6),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~9\,
	combout => \encoder|TickGenerator|Add3~10_combout\,
	cout => \encoder|TickGenerator|Add3~11\);

-- Location: LCCOMB_X89_Y36_N14
\encoder|TickGenerator|sttrame~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~0_combout\ = ((\encoder|TickGenerator|Equal3~8_combout\ & (\encoder|TickGenerator|Equal3~2_combout\ & \encoder|TickGenerator|Equal3~3_combout\))) # (!\encoder|TickGenerator|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~8_combout\,
	datab => \encoder|TickGenerator|Equal3~2_combout\,
	datac => \encoder|TickGenerator|Add3~12_combout\,
	datad => \encoder|TickGenerator|Equal3~3_combout\,
	combout => \encoder|TickGenerator|sttrame~0_combout\);

-- Location: FF_X89_Y36_N15
\encoder|TickGenerator|sttrame[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~0_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(7));

-- Location: FF_X90_Y36_N13
\encoder|TickGenerator|sttrame[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~10_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(6));

-- Location: LCCOMB_X89_Y36_N24
\encoder|TickGenerator|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~3_combout\ = (!\encoder|TickGenerator|sttrame\(7) & (!\encoder|TickGenerator|sttrame\(5) & !\encoder|TickGenerator|sttrame\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(7),
	datac => \encoder|TickGenerator|sttrame\(5),
	datad => \encoder|TickGenerator|sttrame\(6),
	combout => \encoder|TickGenerator|Equal3~3_combout\);

-- Location: LCCOMB_X90_Y35_N0
\encoder|TickGenerator|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~30_combout\ = (\encoder|TickGenerator|sttrame\(16) & (!\encoder|TickGenerator|Add3~29\)) # (!\encoder|TickGenerator|sttrame\(16) & ((\encoder|TickGenerator|Add3~29\) # (GND)))
-- \encoder|TickGenerator|Add3~31\ = CARRY((!\encoder|TickGenerator|Add3~29\) # (!\encoder|TickGenerator|sttrame\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(16),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~29\,
	combout => \encoder|TickGenerator|Add3~30_combout\,
	cout => \encoder|TickGenerator|Add3~31\);

-- Location: FF_X90_Y35_N1
\encoder|TickGenerator|sttrame[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~30_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(16));

-- Location: LCCOMB_X90_Y35_N8
\encoder|TickGenerator|Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~38_combout\ = (\encoder|TickGenerator|sttrame\(20) & ((\encoder|TickGenerator|Add3~37\) # (GND))) # (!\encoder|TickGenerator|sttrame\(20) & (!\encoder|TickGenerator|Add3~37\))
-- \encoder|TickGenerator|Add3~39\ = CARRY((\encoder|TickGenerator|sttrame\(20)) # (!\encoder|TickGenerator|Add3~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(20),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~37\,
	combout => \encoder|TickGenerator|Add3~38_combout\,
	cout => \encoder|TickGenerator|Add3~39\);

-- Location: LCCOMB_X89_Y36_N28
\encoder|TickGenerator|sttrame~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~3_combout\ = ((\encoder|TickGenerator|Equal3~8_combout\ & (\encoder|TickGenerator|Equal3~3_combout\ & \encoder|TickGenerator|Equal3~2_combout\))) # (!\encoder|TickGenerator|Add3~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~8_combout\,
	datab => \encoder|TickGenerator|Equal3~3_combout\,
	datac => \encoder|TickGenerator|Equal3~2_combout\,
	datad => \encoder|TickGenerator|Add3~38_combout\,
	combout => \encoder|TickGenerator|sttrame~3_combout\);

-- Location: FF_X89_Y36_N29
\encoder|TickGenerator|sttrame[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~3_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(20));

-- Location: LCCOMB_X90_Y35_N12
\encoder|TickGenerator|Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~42_combout\ = (\encoder|TickGenerator|sttrame\(22) & ((\encoder|TickGenerator|Add3~41\) # (GND))) # (!\encoder|TickGenerator|sttrame\(22) & (!\encoder|TickGenerator|Add3~41\))
-- \encoder|TickGenerator|Add3~43\ = CARRY((\encoder|TickGenerator|sttrame\(22)) # (!\encoder|TickGenerator|Add3~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(22),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~41\,
	combout => \encoder|TickGenerator|Add3~42_combout\,
	cout => \encoder|TickGenerator|Add3~43\);

-- Location: LCCOMB_X89_Y36_N30
\encoder|TickGenerator|sttrame~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~2_combout\ = ((\encoder|TickGenerator|Equal3~8_combout\ & (\encoder|TickGenerator|Equal3~2_combout\ & \encoder|TickGenerator|Equal3~3_combout\))) # (!\encoder|TickGenerator|Add3~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~8_combout\,
	datab => \encoder|TickGenerator|Equal3~2_combout\,
	datac => \encoder|TickGenerator|Add3~42_combout\,
	datad => \encoder|TickGenerator|Equal3~3_combout\,
	combout => \encoder|TickGenerator|sttrame~2_combout\);

-- Location: FF_X89_Y36_N31
\encoder|TickGenerator|sttrame[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~2_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(22));

-- Location: LCCOMB_X90_Y35_N14
\encoder|TickGenerator|Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~44_combout\ = (\encoder|TickGenerator|sttrame\(23) & (\encoder|TickGenerator|Add3~43\ $ (GND))) # (!\encoder|TickGenerator|sttrame\(23) & (!\encoder|TickGenerator|Add3~43\ & VCC))
-- \encoder|TickGenerator|Add3~45\ = CARRY((\encoder|TickGenerator|sttrame\(23) & !\encoder|TickGenerator|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(23),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~43\,
	combout => \encoder|TickGenerator|Add3~44_combout\,
	cout => \encoder|TickGenerator|Add3~45\);

-- Location: FF_X90_Y35_N15
\encoder|TickGenerator|sttrame[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~44_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(23));

-- Location: LCCOMB_X90_Y35_N16
\encoder|TickGenerator|Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~46_combout\ = (\encoder|TickGenerator|sttrame\(24) & (!\encoder|TickGenerator|Add3~45\)) # (!\encoder|TickGenerator|sttrame\(24) & ((\encoder|TickGenerator|Add3~45\) # (GND)))
-- \encoder|TickGenerator|Add3~47\ = CARRY((!\encoder|TickGenerator|Add3~45\) # (!\encoder|TickGenerator|sttrame\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(24),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~45\,
	combout => \encoder|TickGenerator|Add3~46_combout\,
	cout => \encoder|TickGenerator|Add3~47\);

-- Location: FF_X90_Y35_N17
\encoder|TickGenerator|sttrame[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~46_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(24));

-- Location: LCCOMB_X90_Y35_N18
\encoder|TickGenerator|Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~48_combout\ = (\encoder|TickGenerator|sttrame\(25) & (\encoder|TickGenerator|Add3~47\ $ (GND))) # (!\encoder|TickGenerator|sttrame\(25) & (!\encoder|TickGenerator|Add3~47\ & VCC))
-- \encoder|TickGenerator|Add3~49\ = CARRY((\encoder|TickGenerator|sttrame\(25) & !\encoder|TickGenerator|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(25),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~47\,
	combout => \encoder|TickGenerator|Add3~48_combout\,
	cout => \encoder|TickGenerator|Add3~49\);

-- Location: FF_X90_Y35_N19
\encoder|TickGenerator|sttrame[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~48_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(25));

-- Location: LCCOMB_X90_Y35_N20
\encoder|TickGenerator|Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~50_combout\ = (\encoder|TickGenerator|sttrame\(26) & (!\encoder|TickGenerator|Add3~49\)) # (!\encoder|TickGenerator|sttrame\(26) & ((\encoder|TickGenerator|Add3~49\) # (GND)))
-- \encoder|TickGenerator|Add3~51\ = CARRY((!\encoder|TickGenerator|Add3~49\) # (!\encoder|TickGenerator|sttrame\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(26),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~49\,
	combout => \encoder|TickGenerator|Add3~50_combout\,
	cout => \encoder|TickGenerator|Add3~51\);

-- Location: FF_X90_Y35_N21
\encoder|TickGenerator|sttrame[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~50_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(26));

-- Location: LCCOMB_X90_Y35_N24
\encoder|TickGenerator|Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~54_combout\ = (\encoder|TickGenerator|sttrame\(28) & (!\encoder|TickGenerator|Add3~53\)) # (!\encoder|TickGenerator|sttrame\(28) & ((\encoder|TickGenerator|Add3~53\) # (GND)))
-- \encoder|TickGenerator|Add3~55\ = CARRY((!\encoder|TickGenerator|Add3~53\) # (!\encoder|TickGenerator|sttrame\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(28),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~53\,
	combout => \encoder|TickGenerator|Add3~54_combout\,
	cout => \encoder|TickGenerator|Add3~55\);

-- Location: FF_X90_Y35_N25
\encoder|TickGenerator|sttrame[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~54_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(28));

-- Location: LCCOMB_X90_Y35_N28
\encoder|TickGenerator|Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~58_combout\ = (\encoder|TickGenerator|sttrame\(30) & (!\encoder|TickGenerator|Add3~57\)) # (!\encoder|TickGenerator|sttrame\(30) & ((\encoder|TickGenerator|Add3~57\) # (GND)))
-- \encoder|TickGenerator|Add3~59\ = CARRY((!\encoder|TickGenerator|Add3~57\) # (!\encoder|TickGenerator|sttrame\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(30),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~57\,
	combout => \encoder|TickGenerator|Add3~58_combout\,
	cout => \encoder|TickGenerator|Add3~59\);

-- Location: FF_X90_Y35_N29
\encoder|TickGenerator|sttrame[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~58_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(30));

-- Location: LCCOMB_X90_Y35_N30
\encoder|TickGenerator|Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~60_combout\ = \encoder|TickGenerator|sttrame\(31) $ (!\encoder|TickGenerator|Add3~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(31),
	cin => \encoder|TickGenerator|Add3~59\,
	combout => \encoder|TickGenerator|Add3~60_combout\);

-- Location: FF_X90_Y35_N31
\encoder|TickGenerator|sttrame[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~60_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(31));

-- Location: LCCOMB_X89_Y35_N0
\encoder|TickGenerator|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~0_combout\ = (!\encoder|TickGenerator|sttrame\(29) & (!\encoder|TickGenerator|sttrame\(30) & (!\encoder|TickGenerator|sttrame\(31) & !\encoder|TickGenerator|sttrame\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(29),
	datab => \encoder|TickGenerator|sttrame\(30),
	datac => \encoder|TickGenerator|sttrame\(31),
	datad => \encoder|TickGenerator|sttrame\(28),
	combout => \encoder|TickGenerator|Equal3~0_combout\);

-- Location: LCCOMB_X89_Y36_N4
\encoder|TickGenerator|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~2_combout\ = (\encoder|TickGenerator|Equal3~1_combout\ & (\encoder|TickGenerator|Equal1~0_combout\ & (!\encoder|TickGenerator|stmanch\(0) & \encoder|TickGenerator|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~1_combout\,
	datab => \encoder|TickGenerator|Equal1~0_combout\,
	datac => \encoder|TickGenerator|stmanch\(0),
	datad => \encoder|TickGenerator|Equal3~0_combout\,
	combout => \encoder|TickGenerator|Equal3~2_combout\);

-- Location: LCCOMB_X91_Y36_N12
\encoder|TickGenerator|Equal3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~9_combout\ = (\encoder|TickGenerator|Equal3~8_combout\ & (\encoder|TickGenerator|Equal3~2_combout\ & \encoder|TickGenerator|Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~8_combout\,
	datab => \encoder|TickGenerator|Equal3~2_combout\,
	datac => \encoder|TickGenerator|Equal3~3_combout\,
	combout => \encoder|TickGenerator|Equal3~9_combout\);

-- Location: FF_X91_Y36_N13
\encoder|TickGenerator|tick_trame\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Equal3~9_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|tick_trame~q\);

-- Location: LCCOMB_X99_Y33_N14
\encoder|MAE_emission|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector2~0_combout\ = (\encoder|MAE_emission|EF.State_Clear~q\) # ((\encoder|MAE_emission|EF.State_Close~q\ & (\Go~input_o\ & \encoder|TickGenerator|tick_trame~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Clear~q\,
	datab => \encoder|MAE_emission|EF.State_Close~q\,
	datac => \Go~input_o\,
	datad => \encoder|TickGenerator|tick_trame~q\,
	combout => \encoder|MAE_emission|Selector2~0_combout\);

-- Location: LCCOMB_X99_Y33_N30
\encoder|MAE_emission|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector2~1_combout\ = (\encoder|MAE_emission|Selector2~0_combout\) # ((!\encoder|TickGenerator|tick_bit~q\ & \encoder|MAE_emission|EF.State_Init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|tick_bit~q\,
	datab => \encoder|MAE_emission|Selector2~0_combout\,
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	combout => \encoder|MAE_emission|Selector2~1_combout\);

-- Location: IOIBUF_X115_Y14_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X99_Y33_N31
\encoder|MAE_emission|EF.State_Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|Selector2~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|EF.State_Init~q\);

-- Location: LCCOMB_X99_Y33_N6
\encoder|MAE_emission|i[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[0]~2_combout\ = (\encoder|MAE_emission|EF.State_Send~q\ & \encoder|MAE_emission|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Send~q\,
	datad => \encoder|MAE_emission|process_0~0_combout\,
	combout => \encoder|MAE_emission|i[0]~2_combout\);

-- Location: LCCOMB_X100_Y33_N6
\encoder|MAE_emission|i[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[1]~31_combout\ = (\encoder|MAE_emission|Add0~2_combout\ & ((\encoder|MAE_emission|i[0]~2_combout\) # ((\encoder|MAE_emission|i\(1) & !\encoder|MAE_emission|i[0]~32_combout\)))) # (!\encoder|MAE_emission|Add0~2_combout\ & 
-- (\encoder|MAE_emission|i\(1) & ((!\encoder|MAE_emission|i[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~2_combout\,
	datab => \encoder|MAE_emission|i\(1),
	datac => \encoder|MAE_emission|i[0]~2_combout\,
	datad => \encoder|MAE_emission|i[0]~32_combout\,
	combout => \encoder|MAE_emission|i[1]~31_combout\);

-- Location: FF_X101_Y33_N25
\encoder|MAE_emission|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \encoder|MAE_emission|i[1]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(1));

-- Location: LCCOMB_X101_Y33_N0
\encoder|MAE_emission|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~0_combout\ = \encoder|MAE_emission|i\(0) $ (GND)
-- \encoder|MAE_emission|Add0~1\ = CARRY(!\encoder|MAE_emission|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(0),
	datad => VCC,
	combout => \encoder|MAE_emission|Add0~0_combout\,
	cout => \encoder|MAE_emission|Add0~1\);

-- Location: LCCOMB_X101_Y33_N4
\encoder|MAE_emission|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~4_combout\ = (\encoder|MAE_emission|i\(2) & (\encoder|MAE_emission|Add0~3\ $ (GND))) # (!\encoder|MAE_emission|i\(2) & ((GND) # (!\encoder|MAE_emission|Add0~3\)))
-- \encoder|MAE_emission|Add0~5\ = CARRY((!\encoder|MAE_emission|Add0~3\) # (!\encoder|MAE_emission|i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(2),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~3\,
	combout => \encoder|MAE_emission|Add0~4_combout\,
	cout => \encoder|MAE_emission|Add0~5\);

-- Location: LCCOMB_X100_Y33_N20
\encoder|MAE_emission|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector37~0_combout\ = (\encoder|MAE_emission|EF.State_Send~q\ & !\encoder|MAE_emission|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Send~q\,
	datad => \encoder|MAE_emission|Add0~4_combout\,
	combout => \encoder|MAE_emission|Selector37~0_combout\);

-- Location: FF_X100_Y33_N21
\encoder|MAE_emission|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|Selector37~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \encoder|MAE_emission|i[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(2));

-- Location: LCCOMB_X101_Y33_N6
\encoder|MAE_emission|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~6_combout\ = (\encoder|MAE_emission|i\(3) & (!\encoder|MAE_emission|Add0~5\)) # (!\encoder|MAE_emission|i\(3) & (\encoder|MAE_emission|Add0~5\ & VCC))
-- \encoder|MAE_emission|Add0~7\ = CARRY((\encoder|MAE_emission|i\(3) & !\encoder|MAE_emission|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(3),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~5\,
	combout => \encoder|MAE_emission|Add0~6_combout\,
	cout => \encoder|MAE_emission|Add0~7\);

-- Location: LCCOMB_X100_Y33_N18
\encoder|MAE_emission|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector36~0_combout\ = (\encoder|MAE_emission|EF.State_Send~q\ & !\encoder|MAE_emission|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Send~q\,
	datac => \encoder|MAE_emission|Add0~6_combout\,
	combout => \encoder|MAE_emission|Selector36~0_combout\);

-- Location: FF_X100_Y33_N19
\encoder|MAE_emission|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|Selector36~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \encoder|MAE_emission|i[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(3));

-- Location: LCCOMB_X99_Y33_N12
\encoder|MAE_emission|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector3~1_combout\ = (!\encoder|MAE_emission|EF.State_Close~q\ & ((\encoder|MAE_emission|Selector3~0_combout\) # ((\encoder|MAE_emission|EF.State_Send~q\ & !\encoder|MAE_emission|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Selector3~0_combout\,
	datab => \encoder|MAE_emission|EF.State_Close~q\,
	datac => \encoder|MAE_emission|EF.State_Send~q\,
	datad => \encoder|MAE_emission|Selector4~0_combout\,
	combout => \encoder|MAE_emission|Selector3~1_combout\);

-- Location: FF_X99_Y33_N13
\encoder|MAE_emission|EF.State_Send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|Selector3~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|EF.State_Send~q\);

-- Location: LCCOMB_X100_Y33_N16
\encoder|MAE_emission|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector39~0_combout\ = (!\encoder|MAE_emission|Add0~0_combout\ & \encoder|MAE_emission|EF.State_Send~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|Add0~0_combout\,
	datad => \encoder|MAE_emission|EF.State_Send~q\,
	combout => \encoder|MAE_emission|Selector39~0_combout\);

-- Location: FF_X100_Y33_N17
\encoder|MAE_emission|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|Selector39~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \encoder|MAE_emission|i[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(0));

-- Location: LCCOMB_X100_Y33_N22
\encoder|MAE_emission|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~9_combout\ = (!\encoder|MAE_emission|i\(2) & (!\encoder|MAE_emission|i\(3) & (!\encoder|MAE_emission|i\(0) & \encoder|MAE_emission|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(2),
	datab => \encoder|MAE_emission|i\(3),
	datac => \encoder|MAE_emission|i\(0),
	datad => \encoder|MAE_emission|i\(1),
	combout => \encoder|MAE_emission|Equal0~9_combout\);

-- Location: LCCOMB_X101_Y33_N10
\encoder|MAE_emission|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~10_combout\ = (\encoder|MAE_emission|i\(5) & (\encoder|MAE_emission|Add0~9\ & VCC)) # (!\encoder|MAE_emission|i\(5) & (!\encoder|MAE_emission|Add0~9\))
-- \encoder|MAE_emission|Add0~11\ = CARRY((!\encoder|MAE_emission|i\(5) & !\encoder|MAE_emission|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(5),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~9\,
	combout => \encoder|MAE_emission|Add0~10_combout\,
	cout => \encoder|MAE_emission|Add0~11\);

-- Location: LCCOMB_X100_Y33_N14
\encoder|MAE_emission|i[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[5]~29_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~10_combout\) # ((\encoder|MAE_emission|i\(5) & !\encoder|MAE_emission|i[0]~32_combout\)))) # (!\encoder|MAE_emission|i[0]~2_combout\ & 
-- (((\encoder|MAE_emission|i\(5) & !\encoder|MAE_emission|i[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|Add0~10_combout\,
	datac => \encoder|MAE_emission|i\(5),
	datad => \encoder|MAE_emission|i[0]~32_combout\,
	combout => \encoder|MAE_emission|i[5]~29_combout\);

-- Location: FF_X100_Y33_N15
\encoder|MAE_emission|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[5]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(5));

-- Location: LCCOMB_X100_Y33_N8
\encoder|MAE_emission|i[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[4]~30_combout\ = (\encoder|MAE_emission|Add0~8_combout\ & ((\encoder|MAE_emission|i[0]~2_combout\) # ((\encoder|MAE_emission|i\(4) & !\encoder|MAE_emission|i[0]~32_combout\)))) # (!\encoder|MAE_emission|Add0~8_combout\ & 
-- (((\encoder|MAE_emission|i\(4) & !\encoder|MAE_emission|i[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~8_combout\,
	datab => \encoder|MAE_emission|i[0]~2_combout\,
	datac => \encoder|MAE_emission|i\(4),
	datad => \encoder|MAE_emission|i[0]~32_combout\,
	combout => \encoder|MAE_emission|i[4]~30_combout\);

-- Location: FF_X100_Y33_N9
\encoder|MAE_emission|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[4]~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(4));

-- Location: LCCOMB_X101_Y33_N12
\encoder|MAE_emission|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~12_combout\ = (\encoder|MAE_emission|i\(6) & ((GND) # (!\encoder|MAE_emission|Add0~11\))) # (!\encoder|MAE_emission|i\(6) & (\encoder|MAE_emission|Add0~11\ $ (GND)))
-- \encoder|MAE_emission|Add0~13\ = CARRY((\encoder|MAE_emission|i\(6)) # (!\encoder|MAE_emission|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(6),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~11\,
	combout => \encoder|MAE_emission|Add0~12_combout\,
	cout => \encoder|MAE_emission|Add0~13\);

-- Location: LCCOMB_X100_Y33_N28
\encoder|MAE_emission|i[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[6]~28_combout\ = (\encoder|MAE_emission|i[0]~32_combout\ & (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~12_combout\)))) # (!\encoder|MAE_emission|i[0]~32_combout\ & ((\encoder|MAE_emission|i\(6)) # 
-- ((\encoder|MAE_emission|i[0]~2_combout\ & \encoder|MAE_emission|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~32_combout\,
	datab => \encoder|MAE_emission|i[0]~2_combout\,
	datac => \encoder|MAE_emission|i\(6),
	datad => \encoder|MAE_emission|Add0~12_combout\,
	combout => \encoder|MAE_emission|i[6]~28_combout\);

-- Location: FF_X100_Y33_N29
\encoder|MAE_emission|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[6]~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(6));

-- Location: LCCOMB_X100_Y33_N2
\encoder|MAE_emission|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~8_combout\ = (\encoder|MAE_emission|i\(7) & (\encoder|MAE_emission|i\(5) & (\encoder|MAE_emission|i\(4) & \encoder|MAE_emission|i\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(7),
	datab => \encoder|MAE_emission|i\(5),
	datac => \encoder|MAE_emission|i\(4),
	datad => \encoder|MAE_emission|i\(6),
	combout => \encoder|MAE_emission|Equal0~8_combout\);

-- Location: LCCOMB_X100_Y33_N0
\encoder|MAE_emission|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~10_combout\ = (\encoder|MAE_emission|Equal0~9_combout\ & \encoder|MAE_emission|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|Equal0~9_combout\,
	datad => \encoder|MAE_emission|Equal0~8_combout\,
	combout => \encoder|MAE_emission|Equal0~10_combout\);

-- Location: LCCOMB_X99_Y32_N4
\encoder|MAE_emission|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector8~0_combout\ = (\encoder|MAE_emission|EF.State_Init~q\ & !\encoder|MAE_emission|EF.State_Send~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	datad => \encoder|MAE_emission|EF.State_Send~q\,
	combout => \encoder|MAE_emission|Selector8~0_combout\);

-- Location: LCCOMB_X100_Y33_N26
\encoder|MAE_emission|i[26]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[26]~8_combout\ = (\encoder|MAE_emission|Add0~52_combout\ & ((\encoder|MAE_emission|i[0]~2_combout\) # ((\encoder|MAE_emission|i\(26) & !\encoder|MAE_emission|i[0]~32_combout\)))) # (!\encoder|MAE_emission|Add0~52_combout\ & 
-- (((\encoder|MAE_emission|i\(26) & !\encoder|MAE_emission|i[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~52_combout\,
	datab => \encoder|MAE_emission|i[0]~2_combout\,
	datac => \encoder|MAE_emission|i\(26),
	datad => \encoder|MAE_emission|i[0]~32_combout\,
	combout => \encoder|MAE_emission|i[26]~8_combout\);

-- Location: FF_X100_Y33_N27
\encoder|MAE_emission|i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[26]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(26));

-- Location: LCCOMB_X102_Y33_N8
\encoder|MAE_emission|i[13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[13]~21_combout\ = (\encoder|MAE_emission|Add0~26_combout\ & ((\encoder|MAE_emission|i[0]~2_combout\) # ((!\encoder|MAE_emission|i[0]~32_combout\ & \encoder|MAE_emission|i\(13))))) # (!\encoder|MAE_emission|Add0~26_combout\ & 
-- (!\encoder|MAE_emission|i[0]~32_combout\ & (\encoder|MAE_emission|i\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~26_combout\,
	datab => \encoder|MAE_emission|i[0]~32_combout\,
	datac => \encoder|MAE_emission|i\(13),
	datad => \encoder|MAE_emission|i[0]~2_combout\,
	combout => \encoder|MAE_emission|i[13]~21_combout\);

-- Location: FF_X102_Y33_N9
\encoder|MAE_emission|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[13]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(13));

-- Location: LCCOMB_X101_Y33_N18
\encoder|MAE_emission|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~18_combout\ = (\encoder|MAE_emission|i\(9) & (\encoder|MAE_emission|Add0~17\ & VCC)) # (!\encoder|MAE_emission|i\(9) & (!\encoder|MAE_emission|Add0~17\))
-- \encoder|MAE_emission|Add0~19\ = CARRY((!\encoder|MAE_emission|i\(9) & !\encoder|MAE_emission|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(9),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~17\,
	combout => \encoder|MAE_emission|Add0~18_combout\,
	cout => \encoder|MAE_emission|Add0~19\);

-- Location: LCCOMB_X101_Y33_N20
\encoder|MAE_emission|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~20_combout\ = (\encoder|MAE_emission|i\(10) & ((GND) # (!\encoder|MAE_emission|Add0~19\))) # (!\encoder|MAE_emission|i\(10) & (\encoder|MAE_emission|Add0~19\ $ (GND)))
-- \encoder|MAE_emission|Add0~21\ = CARRY((\encoder|MAE_emission|i\(10)) # (!\encoder|MAE_emission|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(10),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~19\,
	combout => \encoder|MAE_emission|Add0~20_combout\,
	cout => \encoder|MAE_emission|Add0~21\);

-- Location: LCCOMB_X102_Y33_N0
\encoder|MAE_emission|i[10]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[10]~24_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~20_combout\) # ((!\encoder|MAE_emission|i[0]~32_combout\ & \encoder|MAE_emission|i\(10))))) # (!\encoder|MAE_emission|i[0]~2_combout\ & 
-- (!\encoder|MAE_emission|i[0]~32_combout\ & (\encoder|MAE_emission|i\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|i[0]~32_combout\,
	datac => \encoder|MAE_emission|i\(10),
	datad => \encoder|MAE_emission|Add0~20_combout\,
	combout => \encoder|MAE_emission|i[10]~24_combout\);

-- Location: FF_X102_Y33_N1
\encoder|MAE_emission|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[10]~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(10));

-- Location: LCCOMB_X101_Y33_N22
\encoder|MAE_emission|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~22_combout\ = (\encoder|MAE_emission|i\(11) & (\encoder|MAE_emission|Add0~21\ & VCC)) # (!\encoder|MAE_emission|i\(11) & (!\encoder|MAE_emission|Add0~21\))
-- \encoder|MAE_emission|Add0~23\ = CARRY((!\encoder|MAE_emission|i\(11) & !\encoder|MAE_emission|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(11),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~21\,
	combout => \encoder|MAE_emission|Add0~22_combout\,
	cout => \encoder|MAE_emission|Add0~23\);

-- Location: LCCOMB_X101_Y33_N24
\encoder|MAE_emission|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~24_combout\ = (\encoder|MAE_emission|i\(12) & ((GND) # (!\encoder|MAE_emission|Add0~23\))) # (!\encoder|MAE_emission|i\(12) & (\encoder|MAE_emission|Add0~23\ $ (GND)))
-- \encoder|MAE_emission|Add0~25\ = CARRY((\encoder|MAE_emission|i\(12)) # (!\encoder|MAE_emission|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(12),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~23\,
	combout => \encoder|MAE_emission|Add0~24_combout\,
	cout => \encoder|MAE_emission|Add0~25\);

-- Location: LCCOMB_X101_Y33_N28
\encoder|MAE_emission|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~28_combout\ = (\encoder|MAE_emission|i\(14) & ((GND) # (!\encoder|MAE_emission|Add0~27\))) # (!\encoder|MAE_emission|i\(14) & (\encoder|MAE_emission|Add0~27\ $ (GND)))
-- \encoder|MAE_emission|Add0~29\ = CARRY((\encoder|MAE_emission|i\(14)) # (!\encoder|MAE_emission|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(14),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~27\,
	combout => \encoder|MAE_emission|Add0~28_combout\,
	cout => \encoder|MAE_emission|Add0~29\);

-- Location: LCCOMB_X101_Y33_N30
\encoder|MAE_emission|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~30_combout\ = (\encoder|MAE_emission|i\(15) & (\encoder|MAE_emission|Add0~29\ & VCC)) # (!\encoder|MAE_emission|i\(15) & (!\encoder|MAE_emission|Add0~29\))
-- \encoder|MAE_emission|Add0~31\ = CARRY((!\encoder|MAE_emission|i\(15) & !\encoder|MAE_emission|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(15),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~29\,
	combout => \encoder|MAE_emission|Add0~30_combout\,
	cout => \encoder|MAE_emission|Add0~31\);

-- Location: LCCOMB_X102_Y33_N12
\encoder|MAE_emission|i[15]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[15]~19_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~30_combout\) # ((!\encoder|MAE_emission|i[0]~32_combout\ & \encoder|MAE_emission|i\(15))))) # (!\encoder|MAE_emission|i[0]~2_combout\ & 
-- (!\encoder|MAE_emission|i[0]~32_combout\ & (\encoder|MAE_emission|i\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|i[0]~32_combout\,
	datac => \encoder|MAE_emission|i\(15),
	datad => \encoder|MAE_emission|Add0~30_combout\,
	combout => \encoder|MAE_emission|i[15]~19_combout\);

-- Location: FF_X102_Y33_N13
\encoder|MAE_emission|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[15]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(15));

-- Location: LCCOMB_X101_Y32_N0
\encoder|MAE_emission|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~32_combout\ = (\encoder|MAE_emission|i\(16) & ((GND) # (!\encoder|MAE_emission|Add0~31\))) # (!\encoder|MAE_emission|i\(16) & (\encoder|MAE_emission|Add0~31\ $ (GND)))
-- \encoder|MAE_emission|Add0~33\ = CARRY((\encoder|MAE_emission|i\(16)) # (!\encoder|MAE_emission|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(16),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~31\,
	combout => \encoder|MAE_emission|Add0~32_combout\,
	cout => \encoder|MAE_emission|Add0~33\);

-- Location: LCCOMB_X101_Y32_N2
\encoder|MAE_emission|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~34_combout\ = (\encoder|MAE_emission|i\(17) & (\encoder|MAE_emission|Add0~33\ & VCC)) # (!\encoder|MAE_emission|i\(17) & (!\encoder|MAE_emission|Add0~33\))
-- \encoder|MAE_emission|Add0~35\ = CARRY((!\encoder|MAE_emission|i\(17) & !\encoder|MAE_emission|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(17),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~33\,
	combout => \encoder|MAE_emission|Add0~34_combout\,
	cout => \encoder|MAE_emission|Add0~35\);

-- Location: LCCOMB_X101_Y32_N6
\encoder|MAE_emission|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~38_combout\ = (\encoder|MAE_emission|i\(19) & (\encoder|MAE_emission|Add0~37\ & VCC)) # (!\encoder|MAE_emission|i\(19) & (!\encoder|MAE_emission|Add0~37\))
-- \encoder|MAE_emission|Add0~39\ = CARRY((!\encoder|MAE_emission|i\(19) & !\encoder|MAE_emission|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(19),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~37\,
	combout => \encoder|MAE_emission|Add0~38_combout\,
	cout => \encoder|MAE_emission|Add0~39\);

-- Location: LCCOMB_X100_Y32_N24
\encoder|MAE_emission|i[19]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[19]~15_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~38_combout\) # ((!\encoder|MAE_emission|i[0]~32_combout\ & \encoder|MAE_emission|i\(19))))) # (!\encoder|MAE_emission|i[0]~2_combout\ & 
-- (!\encoder|MAE_emission|i[0]~32_combout\ & (\encoder|MAE_emission|i\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|i[0]~32_combout\,
	datac => \encoder|MAE_emission|i\(19),
	datad => \encoder|MAE_emission|Add0~38_combout\,
	combout => \encoder|MAE_emission|i[19]~15_combout\);

-- Location: FF_X100_Y32_N25
\encoder|MAE_emission|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[19]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(19));

-- Location: LCCOMB_X101_Y32_N8
\encoder|MAE_emission|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~40_combout\ = (\encoder|MAE_emission|i\(20) & ((GND) # (!\encoder|MAE_emission|Add0~39\))) # (!\encoder|MAE_emission|i\(20) & (\encoder|MAE_emission|Add0~39\ $ (GND)))
-- \encoder|MAE_emission|Add0~41\ = CARRY((\encoder|MAE_emission|i\(20)) # (!\encoder|MAE_emission|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(20),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~39\,
	combout => \encoder|MAE_emission|Add0~40_combout\,
	cout => \encoder|MAE_emission|Add0~41\);

-- Location: LCCOMB_X100_Y32_N28
\encoder|MAE_emission|i[20]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[20]~14_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~40_combout\) # ((\encoder|MAE_emission|i\(20) & !\encoder|MAE_emission|i[0]~32_combout\)))) # (!\encoder|MAE_emission|i[0]~2_combout\ & 
-- (((\encoder|MAE_emission|i\(20) & !\encoder|MAE_emission|i[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|Add0~40_combout\,
	datac => \encoder|MAE_emission|i\(20),
	datad => \encoder|MAE_emission|i[0]~32_combout\,
	combout => \encoder|MAE_emission|i[20]~14_combout\);

-- Location: FF_X100_Y32_N29
\encoder|MAE_emission|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[20]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(20));

-- Location: LCCOMB_X101_Y32_N10
\encoder|MAE_emission|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~42_combout\ = (\encoder|MAE_emission|i\(21) & (\encoder|MAE_emission|Add0~41\ & VCC)) # (!\encoder|MAE_emission|i\(21) & (!\encoder|MAE_emission|Add0~41\))
-- \encoder|MAE_emission|Add0~43\ = CARRY((!\encoder|MAE_emission|i\(21) & !\encoder|MAE_emission|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(21),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~41\,
	combout => \encoder|MAE_emission|Add0~42_combout\,
	cout => \encoder|MAE_emission|Add0~43\);

-- Location: LCCOMB_X100_Y32_N22
\encoder|MAE_emission|i[21]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[21]~13_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~42_combout\) # ((\encoder|MAE_emission|i\(21) & !\encoder|MAE_emission|i[0]~32_combout\)))) # (!\encoder|MAE_emission|i[0]~2_combout\ & 
-- (((\encoder|MAE_emission|i\(21) & !\encoder|MAE_emission|i[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|Add0~42_combout\,
	datac => \encoder|MAE_emission|i\(21),
	datad => \encoder|MAE_emission|i[0]~32_combout\,
	combout => \encoder|MAE_emission|i[21]~13_combout\);

-- Location: FF_X100_Y32_N23
\encoder|MAE_emission|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[21]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(21));

-- Location: LCCOMB_X101_Y32_N12
\encoder|MAE_emission|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~44_combout\ = (\encoder|MAE_emission|i\(22) & ((GND) # (!\encoder|MAE_emission|Add0~43\))) # (!\encoder|MAE_emission|i\(22) & (\encoder|MAE_emission|Add0~43\ $ (GND)))
-- \encoder|MAE_emission|Add0~45\ = CARRY((\encoder|MAE_emission|i\(22)) # (!\encoder|MAE_emission|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(22),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~43\,
	combout => \encoder|MAE_emission|Add0~44_combout\,
	cout => \encoder|MAE_emission|Add0~45\);

-- Location: LCCOMB_X101_Y32_N14
\encoder|MAE_emission|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~46_combout\ = (\encoder|MAE_emission|i\(23) & (\encoder|MAE_emission|Add0~45\ & VCC)) # (!\encoder|MAE_emission|i\(23) & (!\encoder|MAE_emission|Add0~45\))
-- \encoder|MAE_emission|Add0~47\ = CARRY((!\encoder|MAE_emission|i\(23) & !\encoder|MAE_emission|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(23),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~45\,
	combout => \encoder|MAE_emission|Add0~46_combout\,
	cout => \encoder|MAE_emission|Add0~47\);

-- Location: LCCOMB_X100_Y32_N30
\encoder|MAE_emission|i[23]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[23]~11_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~46_combout\) # ((\encoder|MAE_emission|i\(23) & !\encoder|MAE_emission|i[0]~32_combout\)))) # (!\encoder|MAE_emission|i[0]~2_combout\ & 
-- (((\encoder|MAE_emission|i\(23) & !\encoder|MAE_emission|i[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|Add0~46_combout\,
	datac => \encoder|MAE_emission|i\(23),
	datad => \encoder|MAE_emission|i[0]~32_combout\,
	combout => \encoder|MAE_emission|i[23]~11_combout\);

-- Location: FF_X100_Y32_N31
\encoder|MAE_emission|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[23]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(23));

-- Location: LCCOMB_X101_Y32_N16
\encoder|MAE_emission|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~48_combout\ = (\encoder|MAE_emission|i\(24) & ((GND) # (!\encoder|MAE_emission|Add0~47\))) # (!\encoder|MAE_emission|i\(24) & (\encoder|MAE_emission|Add0~47\ $ (GND)))
-- \encoder|MAE_emission|Add0~49\ = CARRY((\encoder|MAE_emission|i\(24)) # (!\encoder|MAE_emission|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(24),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~47\,
	combout => \encoder|MAE_emission|Add0~48_combout\,
	cout => \encoder|MAE_emission|Add0~49\);

-- Location: LCCOMB_X100_Y33_N30
\encoder|MAE_emission|i[24]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[24]~10_combout\ = (\encoder|MAE_emission|i[0]~32_combout\ & (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~48_combout\)))) # (!\encoder|MAE_emission|i[0]~32_combout\ & ((\encoder|MAE_emission|i\(24)) # 
-- ((\encoder|MAE_emission|i[0]~2_combout\ & \encoder|MAE_emission|Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~32_combout\,
	datab => \encoder|MAE_emission|i[0]~2_combout\,
	datac => \encoder|MAE_emission|i\(24),
	datad => \encoder|MAE_emission|Add0~48_combout\,
	combout => \encoder|MAE_emission|i[24]~10_combout\);

-- Location: FF_X100_Y33_N31
\encoder|MAE_emission|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[24]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(24));

-- Location: LCCOMB_X101_Y32_N24
\encoder|MAE_emission|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~56_combout\ = (\encoder|MAE_emission|i\(28) & ((GND) # (!\encoder|MAE_emission|Add0~55\))) # (!\encoder|MAE_emission|i\(28) & (\encoder|MAE_emission|Add0~55\ $ (GND)))
-- \encoder|MAE_emission|Add0~57\ = CARRY((\encoder|MAE_emission|i\(28)) # (!\encoder|MAE_emission|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(28),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~55\,
	combout => \encoder|MAE_emission|Add0~56_combout\,
	cout => \encoder|MAE_emission|Add0~57\);

-- Location: LCCOMB_X100_Y32_N18
\encoder|MAE_emission|i[28]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[28]~6_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~56_combout\) # ((!\encoder|MAE_emission|i[0]~32_combout\ & \encoder|MAE_emission|i\(28))))) # (!\encoder|MAE_emission|i[0]~2_combout\ & 
-- (!\encoder|MAE_emission|i[0]~32_combout\ & (\encoder|MAE_emission|i\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|i[0]~32_combout\,
	datac => \encoder|MAE_emission|i\(28),
	datad => \encoder|MAE_emission|Add0~56_combout\,
	combout => \encoder|MAE_emission|i[28]~6_combout\);

-- Location: FF_X100_Y32_N19
\encoder|MAE_emission|i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[28]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(28));

-- Location: LCCOMB_X101_Y32_N26
\encoder|MAE_emission|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~58_combout\ = (\encoder|MAE_emission|i\(29) & (\encoder|MAE_emission|Add0~57\ & VCC)) # (!\encoder|MAE_emission|i\(29) & (!\encoder|MAE_emission|Add0~57\))
-- \encoder|MAE_emission|Add0~59\ = CARRY((!\encoder|MAE_emission|i\(29) & !\encoder|MAE_emission|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(29),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~57\,
	combout => \encoder|MAE_emission|Add0~58_combout\,
	cout => \encoder|MAE_emission|Add0~59\);

-- Location: LCCOMB_X100_Y32_N4
\encoder|MAE_emission|i[29]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[29]~5_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & (((\encoder|MAE_emission|Add0~58_combout\)))) # (!\encoder|MAE_emission|i[0]~2_combout\ & (!\encoder|MAE_emission|Selector8~0_combout\ & (\encoder|MAE_emission|i\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|Selector8~0_combout\,
	datac => \encoder|MAE_emission|i\(29),
	datad => \encoder|MAE_emission|Add0~58_combout\,
	combout => \encoder|MAE_emission|i[29]~5_combout\);

-- Location: FF_X100_Y32_N5
\encoder|MAE_emission|i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[29]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(29));

-- Location: LCCOMB_X101_Y32_N30
\encoder|MAE_emission|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~62_combout\ = \encoder|MAE_emission|Add0~61\ $ (!\encoder|MAE_emission|i\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \encoder|MAE_emission|i\(31),
	cin => \encoder|MAE_emission|Add0~61\,
	combout => \encoder|MAE_emission|Add0~62_combout\);

-- Location: LCCOMB_X100_Y32_N20
\encoder|MAE_emission|i[31]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[31]~3_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & (((\encoder|MAE_emission|Add0~62_combout\)))) # (!\encoder|MAE_emission|i[0]~2_combout\ & (!\encoder|MAE_emission|Selector8~0_combout\ & (\encoder|MAE_emission|i\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|Selector8~0_combout\,
	datac => \encoder|MAE_emission|i\(31),
	datad => \encoder|MAE_emission|Add0~62_combout\,
	combout => \encoder|MAE_emission|i[31]~3_combout\);

-- Location: FF_X100_Y32_N21
\encoder|MAE_emission|i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[31]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(31));

-- Location: LCCOMB_X100_Y32_N0
\encoder|MAE_emission|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~0_combout\ = (\encoder|MAE_emission|i\(30) & (\encoder|MAE_emission|i\(31) & (\encoder|MAE_emission|i\(29) & \encoder|MAE_emission|i\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(30),
	datab => \encoder|MAE_emission|i\(31),
	datac => \encoder|MAE_emission|i\(29),
	datad => \encoder|MAE_emission|i\(28),
	combout => \encoder|MAE_emission|Equal0~0_combout\);

-- Location: LCCOMB_X100_Y32_N8
\encoder|MAE_emission|i[22]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[22]~12_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~44_combout\) # ((\encoder|MAE_emission|i\(22) & !\encoder|MAE_emission|i[0]~32_combout\)))) # (!\encoder|MAE_emission|i[0]~2_combout\ & 
-- (((\encoder|MAE_emission|i\(22) & !\encoder|MAE_emission|i[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|Add0~44_combout\,
	datac => \encoder|MAE_emission|i\(22),
	datad => \encoder|MAE_emission|i[0]~32_combout\,
	combout => \encoder|MAE_emission|i[22]~12_combout\);

-- Location: FF_X100_Y32_N9
\encoder|MAE_emission|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[22]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(22));

-- Location: LCCOMB_X100_Y32_N14
\encoder|MAE_emission|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~2_combout\ = (\encoder|MAE_emission|i\(23) & (\encoder|MAE_emission|i\(22) & (\encoder|MAE_emission|i\(21) & \encoder|MAE_emission|i\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(23),
	datab => \encoder|MAE_emission|i\(22),
	datac => \encoder|MAE_emission|i\(21),
	datad => \encoder|MAE_emission|i\(20),
	combout => \encoder|MAE_emission|Equal0~2_combout\);

-- Location: LCCOMB_X100_Y32_N26
\encoder|MAE_emission|i[16]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[16]~18_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~32_combout\) # ((\encoder|MAE_emission|i\(16) & !\encoder|MAE_emission|i[0]~32_combout\)))) # (!\encoder|MAE_emission|i[0]~2_combout\ & 
-- (((\encoder|MAE_emission|i\(16) & !\encoder|MAE_emission|i[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|Add0~32_combout\,
	datac => \encoder|MAE_emission|i\(16),
	datad => \encoder|MAE_emission|i[0]~32_combout\,
	combout => \encoder|MAE_emission|i[16]~18_combout\);

-- Location: FF_X100_Y32_N27
\encoder|MAE_emission|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[16]~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(16));

-- Location: LCCOMB_X100_Y32_N16
\encoder|MAE_emission|i[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[17]~17_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~34_combout\) # ((!\encoder|MAE_emission|i[0]~32_combout\ & \encoder|MAE_emission|i\(17))))) # (!\encoder|MAE_emission|i[0]~2_combout\ & 
-- (!\encoder|MAE_emission|i[0]~32_combout\ & (\encoder|MAE_emission|i\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|i[0]~32_combout\,
	datac => \encoder|MAE_emission|i\(17),
	datad => \encoder|MAE_emission|Add0~34_combout\,
	combout => \encoder|MAE_emission|i[17]~17_combout\);

-- Location: FF_X100_Y32_N17
\encoder|MAE_emission|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[17]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(17));

-- Location: LCCOMB_X100_Y32_N12
\encoder|MAE_emission|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~3_combout\ = (\encoder|MAE_emission|i\(18) & (\encoder|MAE_emission|i\(19) & (\encoder|MAE_emission|i\(16) & \encoder|MAE_emission|i\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(18),
	datab => \encoder|MAE_emission|i\(19),
	datac => \encoder|MAE_emission|i\(16),
	datad => \encoder|MAE_emission|i\(17),
	combout => \encoder|MAE_emission|Equal0~3_combout\);

-- Location: LCCOMB_X99_Y33_N2
\encoder|MAE_emission|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~4_combout\ = (\encoder|MAE_emission|Equal0~1_combout\ & (\encoder|MAE_emission|Equal0~0_combout\ & (\encoder|MAE_emission|Equal0~2_combout\ & \encoder|MAE_emission|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Equal0~1_combout\,
	datab => \encoder|MAE_emission|Equal0~0_combout\,
	datac => \encoder|MAE_emission|Equal0~2_combout\,
	datad => \encoder|MAE_emission|Equal0~3_combout\,
	combout => \encoder|MAE_emission|Equal0~4_combout\);

-- Location: LCCOMB_X99_Y33_N20
\encoder|MAE_emission|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|process_0~0_combout\ = (\encoder|TickGenerator|tick_bit~q\ & (((!\encoder|MAE_emission|Equal0~4_combout\) # (!\encoder|MAE_emission|Equal0~10_combout\)) # (!\encoder|MAE_emission|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|tick_bit~q\,
	datab => \encoder|MAE_emission|Equal0~7_combout\,
	datac => \encoder|MAE_emission|Equal0~10_combout\,
	datad => \encoder|MAE_emission|Equal0~4_combout\,
	combout => \encoder|MAE_emission|process_0~0_combout\);

-- Location: LCCOMB_X99_Y33_N10
\encoder|MAE_emission|i[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[0]~32_combout\ = (\encoder|MAE_emission|EF.State_Send~q\ & ((\encoder|MAE_emission|process_0~0_combout\))) # (!\encoder|MAE_emission|EF.State_Send~q\ & (\encoder|MAE_emission|EF.State_Init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Send~q\,
	datab => \encoder|MAE_emission|EF.State_Init~q\,
	datad => \encoder|MAE_emission|process_0~0_combout\,
	combout => \encoder|MAE_emission|i[0]~32_combout\);

-- Location: LCCOMB_X102_Y33_N10
\encoder|MAE_emission|i[11]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[11]~23_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~22_combout\) # ((!\encoder|MAE_emission|i[0]~32_combout\ & \encoder|MAE_emission|i\(11))))) # (!\encoder|MAE_emission|i[0]~2_combout\ & 
-- (!\encoder|MAE_emission|i[0]~32_combout\ & (\encoder|MAE_emission|i\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|i[0]~32_combout\,
	datac => \encoder|MAE_emission|i\(11),
	datad => \encoder|MAE_emission|Add0~22_combout\,
	combout => \encoder|MAE_emission|i[11]~23_combout\);

-- Location: FF_X102_Y33_N11
\encoder|MAE_emission|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[11]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(11));

-- Location: LCCOMB_X102_Y33_N30
\encoder|MAE_emission|i[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[9]~25_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~18_combout\) # ((!\encoder|MAE_emission|i[0]~32_combout\ & \encoder|MAE_emission|i\(9))))) # (!\encoder|MAE_emission|i[0]~2_combout\ & 
-- (!\encoder|MAE_emission|i[0]~32_combout\ & (\encoder|MAE_emission|i\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|i[0]~32_combout\,
	datac => \encoder|MAE_emission|i\(9),
	datad => \encoder|MAE_emission|Add0~18_combout\,
	combout => \encoder|MAE_emission|i[9]~25_combout\);

-- Location: FF_X102_Y33_N31
\encoder|MAE_emission|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[9]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(9));

-- Location: LCCOMB_X102_Y33_N20
\encoder|MAE_emission|i[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[8]~26_combout\ = (\encoder|MAE_emission|Add0~16_combout\ & ((\encoder|MAE_emission|i[0]~2_combout\) # ((!\encoder|MAE_emission|i[0]~32_combout\ & \encoder|MAE_emission|i\(8))))) # (!\encoder|MAE_emission|Add0~16_combout\ & 
-- (!\encoder|MAE_emission|i[0]~32_combout\ & (\encoder|MAE_emission|i\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~16_combout\,
	datab => \encoder|MAE_emission|i[0]~32_combout\,
	datac => \encoder|MAE_emission|i\(8),
	datad => \encoder|MAE_emission|i[0]~2_combout\,
	combout => \encoder|MAE_emission|i[8]~26_combout\);

-- Location: FF_X102_Y33_N21
\encoder|MAE_emission|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[8]~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(8));

-- Location: LCCOMB_X102_Y33_N22
\encoder|MAE_emission|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~6_combout\ = (\encoder|MAE_emission|i\(9) & \encoder|MAE_emission|i\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|i\(9),
	datad => \encoder|MAE_emission|i\(8),
	combout => \encoder|MAE_emission|Equal0~6_combout\);

-- Location: LCCOMB_X102_Y33_N2
\encoder|MAE_emission|i[12]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[12]~22_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~24_combout\) # ((!\encoder|MAE_emission|i[0]~32_combout\ & \encoder|MAE_emission|i\(12))))) # (!\encoder|MAE_emission|i[0]~2_combout\ & 
-- (!\encoder|MAE_emission|i[0]~32_combout\ & (\encoder|MAE_emission|i\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|i[0]~32_combout\,
	datac => \encoder|MAE_emission|i\(12),
	datad => \encoder|MAE_emission|Add0~24_combout\,
	combout => \encoder|MAE_emission|i[12]~22_combout\);

-- Location: FF_X102_Y33_N3
\encoder|MAE_emission|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[12]~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(12));

-- Location: LCCOMB_X102_Y33_N6
\encoder|MAE_emission|i[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[14]~20_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Add0~28_combout\) # ((!\encoder|MAE_emission|i[0]~32_combout\ & \encoder|MAE_emission|i\(14))))) # (!\encoder|MAE_emission|i[0]~2_combout\ & 
-- (!\encoder|MAE_emission|i[0]~32_combout\ & (\encoder|MAE_emission|i\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|i[0]~32_combout\,
	datac => \encoder|MAE_emission|i\(14),
	datad => \encoder|MAE_emission|Add0~28_combout\,
	combout => \encoder|MAE_emission|i[14]~20_combout\);

-- Location: FF_X102_Y33_N7
\encoder|MAE_emission|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[14]~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(14));

-- Location: LCCOMB_X102_Y33_N28
\encoder|MAE_emission|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~5_combout\ = (\encoder|MAE_emission|i\(15) & (\encoder|MAE_emission|i\(12) & (\encoder|MAE_emission|i\(13) & \encoder|MAE_emission|i\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(15),
	datab => \encoder|MAE_emission|i\(12),
	datac => \encoder|MAE_emission|i\(13),
	datad => \encoder|MAE_emission|i\(14),
	combout => \encoder|MAE_emission|Equal0~5_combout\);

-- Location: LCCOMB_X102_Y33_N4
\encoder|MAE_emission|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~7_combout\ = (\encoder|MAE_emission|i\(10) & (\encoder|MAE_emission|i\(11) & (\encoder|MAE_emission|Equal0~6_combout\ & \encoder|MAE_emission|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(10),
	datab => \encoder|MAE_emission|i\(11),
	datac => \encoder|MAE_emission|Equal0~6_combout\,
	datad => \encoder|MAE_emission|Equal0~5_combout\,
	combout => \encoder|MAE_emission|Equal0~7_combout\);

-- Location: LCCOMB_X99_Y33_N18
\encoder|MAE_emission|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector4~0_combout\ = (\encoder|TickGenerator|tick_bit~q\ & (\encoder|MAE_emission|Equal0~7_combout\ & (\encoder|MAE_emission|Equal0~10_combout\ & \encoder|MAE_emission|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|tick_bit~q\,
	datab => \encoder|MAE_emission|Equal0~7_combout\,
	datac => \encoder|MAE_emission|Equal0~10_combout\,
	datad => \encoder|MAE_emission|Equal0~4_combout\,
	combout => \encoder|MAE_emission|Selector4~0_combout\);

-- Location: LCCOMB_X99_Y33_N0
\encoder|MAE_emission|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector4~1_combout\ = (\encoder|MAE_emission|EF.State_Close~q\ & (\Go~input_o\ & !\encoder|TickGenerator|tick_trame~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|EF.State_Close~q\,
	datac => \Go~input_o\,
	datad => \encoder|TickGenerator|tick_trame~q\,
	combout => \encoder|MAE_emission|Selector4~1_combout\);

-- Location: LCCOMB_X99_Y33_N28
\encoder|MAE_emission|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector4~2_combout\ = (\encoder|MAE_emission|Selector4~1_combout\) # ((\encoder|MAE_emission|EF.State_Send~q\ & (\encoder|MAE_emission|Selector4~0_combout\ & !\encoder|MAE_emission|EF.State_Close~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Send~q\,
	datab => \encoder|MAE_emission|Selector4~0_combout\,
	datac => \encoder|MAE_emission|EF.State_Close~q\,
	datad => \encoder|MAE_emission|Selector4~1_combout\,
	combout => \encoder|MAE_emission|Selector4~2_combout\);

-- Location: FF_X99_Y33_N29
\encoder|MAE_emission|EF.State_Close\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|Selector4~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|EF.State_Close~q\);

-- Location: LCCOMB_X94_Y36_N12
\encoder|MAE_emission|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector0~0_combout\ = (\Go~input_o\) # ((\encoder|MAE_emission|EF.State_Begin~q\ & !\encoder|MAE_emission|EF.State_Close~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Go~input_o\,
	datac => \encoder|MAE_emission|EF.State_Begin~q\,
	datad => \encoder|MAE_emission|EF.State_Close~q\,
	combout => \encoder|MAE_emission|Selector0~0_combout\);

-- Location: FF_X94_Y36_N13
\encoder|MAE_emission|EF.State_Begin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|EF.State_Begin~q\);

-- Location: LCCOMB_X94_Y36_N14
\encoder|MAE_emission|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector1~0_combout\ = (\Go~input_o\ & !\encoder|MAE_emission|EF.State_Begin~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Go~input_o\,
	datad => \encoder|MAE_emission|EF.State_Begin~q\,
	combout => \encoder|MAE_emission|Selector1~0_combout\);

-- Location: FF_X94_Y36_N15
\encoder|MAE_emission|EF.State_Clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|EF.State_Clear~q\);

-- Location: LCCOMB_X91_Y36_N22
\encoder|MAE_emission|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector7~0_combout\ = (\encoder|MAE_emission|EF.State_Clear~q\) # ((\encoder|MAE_emission|clear~q\ & ((\encoder|MAE_emission|EF.State_Close~q\) # (\encoder|MAE_emission|EF.State_Send~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Close~q\,
	datab => \encoder|MAE_emission|EF.State_Clear~q\,
	datac => \encoder|MAE_emission|clear~q\,
	datad => \encoder|MAE_emission|EF.State_Send~q\,
	combout => \encoder|MAE_emission|Selector7~0_combout\);

-- Location: FF_X91_Y36_N23
\encoder|MAE_emission|clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|Selector7~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|clear~q\);

-- Location: FF_X92_Y36_N1
\encoder|TickGenerator|stmanch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~0_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(0));

-- Location: LCCOMB_X92_Y36_N2
\encoder|TickGenerator|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~2_combout\ = (\encoder|TickGenerator|stmanch\(1) & (!\encoder|TickGenerator|Add1~1\)) # (!\encoder|TickGenerator|stmanch\(1) & ((\encoder|TickGenerator|Add1~1\) # (GND)))
-- \encoder|TickGenerator|Add1~3\ = CARRY((!\encoder|TickGenerator|Add1~1\) # (!\encoder|TickGenerator|stmanch\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(1),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~1\,
	combout => \encoder|TickGenerator|Add1~2_combout\,
	cout => \encoder|TickGenerator|Add1~3\);

-- Location: FF_X90_Y36_N7
\encoder|TickGenerator|stmanch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \encoder|TickGenerator|Add1~2_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(1));

-- Location: LCCOMB_X92_Y36_N4
\encoder|TickGenerator|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~4_combout\ = (\encoder|TickGenerator|stmanch\(2) & (\encoder|TickGenerator|Add1~3\ $ (GND))) # (!\encoder|TickGenerator|stmanch\(2) & (!\encoder|TickGenerator|Add1~3\ & VCC))
-- \encoder|TickGenerator|Add1~5\ = CARRY((\encoder|TickGenerator|stmanch\(2) & !\encoder|TickGenerator|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(2),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~3\,
	combout => \encoder|TickGenerator|Add1~4_combout\,
	cout => \encoder|TickGenerator|Add1~5\);

-- Location: FF_X92_Y36_N5
\encoder|TickGenerator|stmanch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~4_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(2));

-- Location: LCCOMB_X92_Y36_N8
\encoder|TickGenerator|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~8_combout\ = (\encoder|TickGenerator|stmanch\(4) & (\encoder|TickGenerator|Add1~7\ $ (GND))) # (!\encoder|TickGenerator|stmanch\(4) & (!\encoder|TickGenerator|Add1~7\ & VCC))
-- \encoder|TickGenerator|Add1~9\ = CARRY((\encoder|TickGenerator|stmanch\(4) & !\encoder|TickGenerator|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(4),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~7\,
	combout => \encoder|TickGenerator|Add1~8_combout\,
	cout => \encoder|TickGenerator|Add1~9\);

-- Location: FF_X92_Y36_N9
\encoder|TickGenerator|stmanch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~8_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(4));

-- Location: LCCOMB_X92_Y36_N14
\encoder|TickGenerator|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~14_combout\ = (\encoder|TickGenerator|stmanch\(7) & ((\encoder|TickGenerator|Add1~13\) # (GND))) # (!\encoder|TickGenerator|stmanch\(7) & (!\encoder|TickGenerator|Add1~13\))
-- \encoder|TickGenerator|Add1~15\ = CARRY((\encoder|TickGenerator|stmanch\(7)) # (!\encoder|TickGenerator|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(7),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~13\,
	combout => \encoder|TickGenerator|Add1~14_combout\,
	cout => \encoder|TickGenerator|Add1~15\);

-- Location: LCCOMB_X92_Y36_N16
\encoder|TickGenerator|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~16_combout\ = (\encoder|TickGenerator|stmanch\(8) & (!\encoder|TickGenerator|Add1~15\ & VCC)) # (!\encoder|TickGenerator|stmanch\(8) & (\encoder|TickGenerator|Add1~15\ $ (GND)))
-- \encoder|TickGenerator|Add1~17\ = CARRY((!\encoder|TickGenerator|stmanch\(8) & !\encoder|TickGenerator|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(8),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~15\,
	combout => \encoder|TickGenerator|Add1~16_combout\,
	cout => \encoder|TickGenerator|Add1~17\);

-- Location: LCCOMB_X92_Y36_N18
\encoder|TickGenerator|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~18_combout\ = (\encoder|TickGenerator|stmanch\(9) & (!\encoder|TickGenerator|Add1~17\)) # (!\encoder|TickGenerator|stmanch\(9) & ((\encoder|TickGenerator|Add1~17\) # (GND)))
-- \encoder|TickGenerator|Add1~19\ = CARRY((!\encoder|TickGenerator|Add1~17\) # (!\encoder|TickGenerator|stmanch\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(9),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~17\,
	combout => \encoder|TickGenerator|Add1~18_combout\,
	cout => \encoder|TickGenerator|Add1~19\);

-- Location: FF_X92_Y36_N19
\encoder|TickGenerator|stmanch[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~18_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(9));

-- Location: LCCOMB_X92_Y36_N20
\encoder|TickGenerator|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~20_combout\ = (\encoder|TickGenerator|stmanch\(10) & (!\encoder|TickGenerator|Add1~19\ & VCC)) # (!\encoder|TickGenerator|stmanch\(10) & (\encoder|TickGenerator|Add1~19\ $ (GND)))
-- \encoder|TickGenerator|Add1~21\ = CARRY((!\encoder|TickGenerator|stmanch\(10) & !\encoder|TickGenerator|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(10),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~19\,
	combout => \encoder|TickGenerator|Add1~20_combout\,
	cout => \encoder|TickGenerator|Add1~21\);

-- Location: LCCOMB_X91_Y36_N6
\encoder|TickGenerator|stmanch~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~3_combout\ = (\encoder|TickGenerator|Equal1~10_combout\) # (!\encoder|TickGenerator|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Add1~20_combout\,
	datad => \encoder|TickGenerator|Equal1~10_combout\,
	combout => \encoder|TickGenerator|stmanch~3_combout\);

-- Location: FF_X91_Y36_N7
\encoder|TickGenerator|stmanch[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stmanch~3_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(10));

-- Location: LCCOMB_X92_Y36_N22
\encoder|TickGenerator|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~22_combout\ = (\encoder|TickGenerator|stmanch\(11) & ((\encoder|TickGenerator|Add1~21\) # (GND))) # (!\encoder|TickGenerator|stmanch\(11) & (!\encoder|TickGenerator|Add1~21\))
-- \encoder|TickGenerator|Add1~23\ = CARRY((\encoder|TickGenerator|stmanch\(11)) # (!\encoder|TickGenerator|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(11),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~21\,
	combout => \encoder|TickGenerator|Add1~22_combout\,
	cout => \encoder|TickGenerator|Add1~23\);

-- Location: LCCOMB_X92_Y36_N24
\encoder|TickGenerator|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~24_combout\ = (\encoder|TickGenerator|stmanch\(12) & (\encoder|TickGenerator|Add1~23\ $ (GND))) # (!\encoder|TickGenerator|stmanch\(12) & (!\encoder|TickGenerator|Add1~23\ & VCC))
-- \encoder|TickGenerator|Add1~25\ = CARRY((\encoder|TickGenerator|stmanch\(12) & !\encoder|TickGenerator|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(12),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~23\,
	combout => \encoder|TickGenerator|Add1~24_combout\,
	cout => \encoder|TickGenerator|Add1~25\);

-- Location: FF_X92_Y36_N25
\encoder|TickGenerator|stmanch[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~24_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(12));

-- Location: LCCOMB_X92_Y36_N26
\encoder|TickGenerator|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~26_combout\ = (\encoder|TickGenerator|stmanch\(13) & ((\encoder|TickGenerator|Add1~25\) # (GND))) # (!\encoder|TickGenerator|stmanch\(13) & (!\encoder|TickGenerator|Add1~25\))
-- \encoder|TickGenerator|Add1~27\ = CARRY((\encoder|TickGenerator|stmanch\(13)) # (!\encoder|TickGenerator|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(13),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~25\,
	combout => \encoder|TickGenerator|Add1~26_combout\,
	cout => \encoder|TickGenerator|Add1~27\);

-- Location: LCCOMB_X91_Y36_N4
\encoder|TickGenerator|stmanch~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~1_combout\ = (\encoder|TickGenerator|Equal1~10_combout\) # (!\encoder|TickGenerator|Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|Add1~26_combout\,
	datad => \encoder|TickGenerator|Equal1~10_combout\,
	combout => \encoder|TickGenerator|stmanch~1_combout\);

-- Location: FF_X91_Y36_N5
\encoder|TickGenerator|stmanch[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stmanch~1_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(13));

-- Location: LCCOMB_X92_Y36_N28
\encoder|TickGenerator|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~28_combout\ = (\encoder|TickGenerator|stmanch\(14) & (\encoder|TickGenerator|Add1~27\ $ (GND))) # (!\encoder|TickGenerator|stmanch\(14) & (!\encoder|TickGenerator|Add1~27\ & VCC))
-- \encoder|TickGenerator|Add1~29\ = CARRY((\encoder|TickGenerator|stmanch\(14) & !\encoder|TickGenerator|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(14),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~27\,
	combout => \encoder|TickGenerator|Add1~28_combout\,
	cout => \encoder|TickGenerator|Add1~29\);

-- Location: FF_X92_Y36_N29
\encoder|TickGenerator|stmanch[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~28_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(14));

-- Location: LCCOMB_X92_Y35_N0
\encoder|TickGenerator|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~32_combout\ = (\encoder|TickGenerator|stmanch\(16) & (\encoder|TickGenerator|Add1~31\ $ (GND))) # (!\encoder|TickGenerator|stmanch\(16) & (!\encoder|TickGenerator|Add1~31\ & VCC))
-- \encoder|TickGenerator|Add1~33\ = CARRY((\encoder|TickGenerator|stmanch\(16) & !\encoder|TickGenerator|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(16),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~31\,
	combout => \encoder|TickGenerator|Add1~32_combout\,
	cout => \encoder|TickGenerator|Add1~33\);

-- Location: FF_X92_Y35_N1
\encoder|TickGenerator|stmanch[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~32_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(16));

-- Location: LCCOMB_X92_Y35_N2
\encoder|TickGenerator|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~34_combout\ = (\encoder|TickGenerator|stmanch\(17) & (!\encoder|TickGenerator|Add1~33\)) # (!\encoder|TickGenerator|stmanch\(17) & ((\encoder|TickGenerator|Add1~33\) # (GND)))
-- \encoder|TickGenerator|Add1~35\ = CARRY((!\encoder|TickGenerator|Add1~33\) # (!\encoder|TickGenerator|stmanch\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(17),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~33\,
	combout => \encoder|TickGenerator|Add1~34_combout\,
	cout => \encoder|TickGenerator|Add1~35\);

-- Location: FF_X92_Y35_N3
\encoder|TickGenerator|stmanch[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~34_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(17));

-- Location: LCCOMB_X92_Y35_N4
\encoder|TickGenerator|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~36_combout\ = (\encoder|TickGenerator|stmanch\(18) & (\encoder|TickGenerator|Add1~35\ $ (GND))) # (!\encoder|TickGenerator|stmanch\(18) & (!\encoder|TickGenerator|Add1~35\ & VCC))
-- \encoder|TickGenerator|Add1~37\ = CARRY((\encoder|TickGenerator|stmanch\(18) & !\encoder|TickGenerator|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(18),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~35\,
	combout => \encoder|TickGenerator|Add1~36_combout\,
	cout => \encoder|TickGenerator|Add1~37\);

-- Location: FF_X92_Y35_N5
\encoder|TickGenerator|stmanch[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~36_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(18));

-- Location: LCCOMB_X92_Y35_N6
\encoder|TickGenerator|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~38_combout\ = (\encoder|TickGenerator|stmanch\(19) & (!\encoder|TickGenerator|Add1~37\)) # (!\encoder|TickGenerator|stmanch\(19) & ((\encoder|TickGenerator|Add1~37\) # (GND)))
-- \encoder|TickGenerator|Add1~39\ = CARRY((!\encoder|TickGenerator|Add1~37\) # (!\encoder|TickGenerator|stmanch\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(19),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~37\,
	combout => \encoder|TickGenerator|Add1~38_combout\,
	cout => \encoder|TickGenerator|Add1~39\);

-- Location: LCCOMB_X92_Y35_N8
\encoder|TickGenerator|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~40_combout\ = (\encoder|TickGenerator|stmanch\(20) & (\encoder|TickGenerator|Add1~39\ $ (GND))) # (!\encoder|TickGenerator|stmanch\(20) & (!\encoder|TickGenerator|Add1~39\ & VCC))
-- \encoder|TickGenerator|Add1~41\ = CARRY((\encoder|TickGenerator|stmanch\(20) & !\encoder|TickGenerator|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(20),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~39\,
	combout => \encoder|TickGenerator|Add1~40_combout\,
	cout => \encoder|TickGenerator|Add1~41\);

-- Location: FF_X92_Y35_N9
\encoder|TickGenerator|stmanch[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~40_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(20));

-- Location: LCCOMB_X92_Y35_N12
\encoder|TickGenerator|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~44_combout\ = (\encoder|TickGenerator|stmanch\(22) & (\encoder|TickGenerator|Add1~43\ $ (GND))) # (!\encoder|TickGenerator|stmanch\(22) & (!\encoder|TickGenerator|Add1~43\ & VCC))
-- \encoder|TickGenerator|Add1~45\ = CARRY((\encoder|TickGenerator|stmanch\(22) & !\encoder|TickGenerator|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(22),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~43\,
	combout => \encoder|TickGenerator|Add1~44_combout\,
	cout => \encoder|TickGenerator|Add1~45\);

-- Location: LCCOMB_X92_Y35_N14
\encoder|TickGenerator|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~46_combout\ = (\encoder|TickGenerator|stmanch\(23) & (!\encoder|TickGenerator|Add1~45\)) # (!\encoder|TickGenerator|stmanch\(23) & ((\encoder|TickGenerator|Add1~45\) # (GND)))
-- \encoder|TickGenerator|Add1~47\ = CARRY((!\encoder|TickGenerator|Add1~45\) # (!\encoder|TickGenerator|stmanch\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(23),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~45\,
	combout => \encoder|TickGenerator|Add1~46_combout\,
	cout => \encoder|TickGenerator|Add1~47\);

-- Location: FF_X92_Y35_N15
\encoder|TickGenerator|stmanch[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~46_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(23));

-- Location: LCCOMB_X92_Y35_N16
\encoder|TickGenerator|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~48_combout\ = (\encoder|TickGenerator|stmanch\(24) & (\encoder|TickGenerator|Add1~47\ $ (GND))) # (!\encoder|TickGenerator|stmanch\(24) & (!\encoder|TickGenerator|Add1~47\ & VCC))
-- \encoder|TickGenerator|Add1~49\ = CARRY((\encoder|TickGenerator|stmanch\(24) & !\encoder|TickGenerator|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(24),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~47\,
	combout => \encoder|TickGenerator|Add1~48_combout\,
	cout => \encoder|TickGenerator|Add1~49\);

-- Location: FF_X92_Y35_N17
\encoder|TickGenerator|stmanch[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~48_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(24));

-- Location: LCCOMB_X92_Y35_N18
\encoder|TickGenerator|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~50_combout\ = (\encoder|TickGenerator|stmanch\(25) & (!\encoder|TickGenerator|Add1~49\)) # (!\encoder|TickGenerator|stmanch\(25) & ((\encoder|TickGenerator|Add1~49\) # (GND)))
-- \encoder|TickGenerator|Add1~51\ = CARRY((!\encoder|TickGenerator|Add1~49\) # (!\encoder|TickGenerator|stmanch\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(25),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~49\,
	combout => \encoder|TickGenerator|Add1~50_combout\,
	cout => \encoder|TickGenerator|Add1~51\);

-- Location: FF_X92_Y35_N19
\encoder|TickGenerator|stmanch[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~50_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(25));

-- Location: LCCOMB_X92_Y35_N20
\encoder|TickGenerator|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~52_combout\ = (\encoder|TickGenerator|stmanch\(26) & (\encoder|TickGenerator|Add1~51\ $ (GND))) # (!\encoder|TickGenerator|stmanch\(26) & (!\encoder|TickGenerator|Add1~51\ & VCC))
-- \encoder|TickGenerator|Add1~53\ = CARRY((\encoder|TickGenerator|stmanch\(26) & !\encoder|TickGenerator|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(26),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~51\,
	combout => \encoder|TickGenerator|Add1~52_combout\,
	cout => \encoder|TickGenerator|Add1~53\);

-- Location: FF_X92_Y35_N21
\encoder|TickGenerator|stmanch[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~52_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(26));

-- Location: LCCOMB_X92_Y35_N24
\encoder|TickGenerator|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~56_combout\ = (\encoder|TickGenerator|stmanch\(28) & (\encoder|TickGenerator|Add1~55\ $ (GND))) # (!\encoder|TickGenerator|stmanch\(28) & (!\encoder|TickGenerator|Add1~55\ & VCC))
-- \encoder|TickGenerator|Add1~57\ = CARRY((\encoder|TickGenerator|stmanch\(28) & !\encoder|TickGenerator|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(28),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~55\,
	combout => \encoder|TickGenerator|Add1~56_combout\,
	cout => \encoder|TickGenerator|Add1~57\);

-- Location: FF_X92_Y35_N25
\encoder|TickGenerator|stmanch[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~56_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(28));

-- Location: LCCOMB_X92_Y35_N26
\encoder|TickGenerator|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~58_combout\ = (\encoder|TickGenerator|stmanch\(29) & (!\encoder|TickGenerator|Add1~57\)) # (!\encoder|TickGenerator|stmanch\(29) & ((\encoder|TickGenerator|Add1~57\) # (GND)))
-- \encoder|TickGenerator|Add1~59\ = CARRY((!\encoder|TickGenerator|Add1~57\) # (!\encoder|TickGenerator|stmanch\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(29),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~57\,
	combout => \encoder|TickGenerator|Add1~58_combout\,
	cout => \encoder|TickGenerator|Add1~59\);

-- Location: FF_X92_Y35_N27
\encoder|TickGenerator|stmanch[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~58_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(29));

-- Location: LCCOMB_X92_Y35_N28
\encoder|TickGenerator|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~60_combout\ = (\encoder|TickGenerator|stmanch\(30) & (\encoder|TickGenerator|Add1~59\ $ (GND))) # (!\encoder|TickGenerator|stmanch\(30) & (!\encoder|TickGenerator|Add1~59\ & VCC))
-- \encoder|TickGenerator|Add1~61\ = CARRY((\encoder|TickGenerator|stmanch\(30) & !\encoder|TickGenerator|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(30),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~59\,
	combout => \encoder|TickGenerator|Add1~60_combout\,
	cout => \encoder|TickGenerator|Add1~61\);

-- Location: FF_X92_Y35_N29
\encoder|TickGenerator|stmanch[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~60_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(30));

-- Location: LCCOMB_X92_Y35_N30
\encoder|TickGenerator|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~62_combout\ = \encoder|TickGenerator|stmanch\(31) $ (\encoder|TickGenerator|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(31),
	cin => \encoder|TickGenerator|Add1~61\,
	combout => \encoder|TickGenerator|Add1~62_combout\);

-- Location: FF_X92_Y35_N31
\encoder|TickGenerator|stmanch[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~62_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(31));

-- Location: LCCOMB_X91_Y35_N0
\encoder|TickGenerator|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~2_combout\ = (!\encoder|TickGenerator|stmanch\(28) & (!\encoder|TickGenerator|stmanch\(29) & (!\encoder|TickGenerator|stmanch\(31) & !\encoder|TickGenerator|stmanch\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(28),
	datab => \encoder|TickGenerator|stmanch\(29),
	datac => \encoder|TickGenerator|stmanch\(31),
	datad => \encoder|TickGenerator|stmanch\(30),
	combout => \encoder|TickGenerator|Equal1~2_combout\);

-- Location: LCCOMB_X91_Y36_N16
\encoder|TickGenerator|stmanch~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~5_combout\ = (\encoder|TickGenerator|Equal1~10_combout\) # (!\encoder|TickGenerator|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Add1~14_combout\,
	datad => \encoder|TickGenerator|Equal1~10_combout\,
	combout => \encoder|TickGenerator|stmanch~5_combout\);

-- Location: FF_X91_Y36_N17
\encoder|TickGenerator|stmanch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stmanch~5_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(7));

-- Location: LCCOMB_X91_Y36_N0
\encoder|TickGenerator|stmanch~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~4_combout\ = (\encoder|TickGenerator|Equal1~10_combout\) # (!\encoder|TickGenerator|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Add1~16_combout\,
	datad => \encoder|TickGenerator|Equal1~10_combout\,
	combout => \encoder|TickGenerator|stmanch~4_combout\);

-- Location: FF_X91_Y36_N1
\encoder|TickGenerator|stmanch[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stmanch~4_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(8));

-- Location: LCCOMB_X91_Y36_N8
\encoder|TickGenerator|stmanch~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~2_combout\ = (\encoder|TickGenerator|Equal1~10_combout\) # (!\encoder|TickGenerator|Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|Add1~22_combout\,
	datad => \encoder|TickGenerator|Equal1~10_combout\,
	combout => \encoder|TickGenerator|stmanch~2_combout\);

-- Location: FF_X91_Y36_N9
\encoder|TickGenerator|stmanch[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stmanch~2_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(11));

-- Location: LCCOMB_X91_Y36_N18
\encoder|TickGenerator|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~8_combout\ = (!\encoder|TickGenerator|stmanch\(10) & (!\encoder|TickGenerator|stmanch\(8) & (!\encoder|TickGenerator|stmanch\(11) & !\encoder|TickGenerator|stmanch\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(10),
	datab => \encoder|TickGenerator|stmanch\(8),
	datac => \encoder|TickGenerator|stmanch\(11),
	datad => \encoder|TickGenerator|stmanch\(9),
	combout => \encoder|TickGenerator|Equal1~8_combout\);

-- Location: LCCOMB_X91_Y36_N14
\encoder|TickGenerator|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~9_combout\ = (!\encoder|TickGenerator|stmanch\(7) & \encoder|TickGenerator|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(7),
	datad => \encoder|TickGenerator|Equal1~8_combout\,
	combout => \encoder|TickGenerator|Equal1~9_combout\);

-- Location: FF_X92_Y35_N13
\encoder|TickGenerator|stmanch[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~44_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(22));

-- Location: LCCOMB_X89_Y35_N18
\encoder|TickGenerator|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~4_combout\ = (!\encoder|TickGenerator|stmanch\(21) & (!\encoder|TickGenerator|stmanch\(23) & (!\encoder|TickGenerator|stmanch\(22) & !\encoder|TickGenerator|stmanch\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(21),
	datab => \encoder|TickGenerator|stmanch\(23),
	datac => \encoder|TickGenerator|stmanch\(22),
	datad => \encoder|TickGenerator|stmanch\(20),
	combout => \encoder|TickGenerator|Equal1~4_combout\);

-- Location: LCCOMB_X91_Y36_N30
\encoder|TickGenerator|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~6_combout\ = (!\encoder|TickGenerator|stmanch\(15) & (!\encoder|TickGenerator|stmanch\(12) & (!\encoder|TickGenerator|stmanch\(13) & !\encoder|TickGenerator|stmanch\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(15),
	datab => \encoder|TickGenerator|stmanch\(12),
	datac => \encoder|TickGenerator|stmanch\(13),
	datad => \encoder|TickGenerator|stmanch\(14),
	combout => \encoder|TickGenerator|Equal1~6_combout\);

-- Location: FF_X92_Y35_N7
\encoder|TickGenerator|stmanch[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~38_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(19));

-- Location: LCCOMB_X89_Y35_N24
\encoder|TickGenerator|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~5_combout\ = (!\encoder|TickGenerator|stmanch\(16) & (!\encoder|TickGenerator|stmanch\(18) & (!\encoder|TickGenerator|stmanch\(17) & !\encoder|TickGenerator|stmanch\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(16),
	datab => \encoder|TickGenerator|stmanch\(18),
	datac => \encoder|TickGenerator|stmanch\(17),
	datad => \encoder|TickGenerator|stmanch\(19),
	combout => \encoder|TickGenerator|Equal1~5_combout\);

-- Location: LCCOMB_X89_Y35_N6
\encoder|TickGenerator|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~7_combout\ = (\encoder|TickGenerator|Equal1~3_combout\ & (\encoder|TickGenerator|Equal1~4_combout\ & (\encoder|TickGenerator|Equal1~6_combout\ & \encoder|TickGenerator|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal1~3_combout\,
	datab => \encoder|TickGenerator|Equal1~4_combout\,
	datac => \encoder|TickGenerator|Equal1~6_combout\,
	datad => \encoder|TickGenerator|Equal1~5_combout\,
	combout => \encoder|TickGenerator|Equal1~7_combout\);

-- Location: LCCOMB_X91_Y36_N28
\encoder|TickGenerator|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~10_combout\ = (\encoder|TickGenerator|Equal1~1_combout\ & (\encoder|TickGenerator|Equal1~2_combout\ & (\encoder|TickGenerator|Equal1~9_combout\ & \encoder|TickGenerator|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal1~1_combout\,
	datab => \encoder|TickGenerator|Equal1~2_combout\,
	datac => \encoder|TickGenerator|Equal1~9_combout\,
	datad => \encoder|TickGenerator|Equal1~7_combout\,
	combout => \encoder|TickGenerator|Equal1~10_combout\);

-- Location: FF_X91_Y36_N29
\encoder|TickGenerator|tick_manch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Equal1~10_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|tick_manch~q\);

-- Location: LCCOMB_X98_Y36_N2
\encoder|ManchesterGenerator|manch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|ManchesterGenerator|manch~0_combout\ = \encoder|ManchesterGenerator|manch~q\ $ (\encoder|TickGenerator|tick_manch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|ManchesterGenerator|manch~q\,
	datad => \encoder|TickGenerator|tick_manch~q\,
	combout => \encoder|ManchesterGenerator|manch~0_combout\);

-- Location: FF_X98_Y36_N3
\encoder|ManchesterGenerator|manch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|ManchesterGenerator|manch~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|ManchesterGenerator|manch~q\);

-- Location: LCCOMB_X94_Y36_N24
\encoder|BurstGenerator|state[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|BurstGenerator|state[0]~2_combout\ = !\encoder|BurstGenerator|state\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|BurstGenerator|state\(0),
	combout => \encoder|BurstGenerator|state[0]~2_combout\);

-- Location: LCCOMB_X91_Y38_N0
\encoder|TickGenerator|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~0_combout\ = \encoder|TickGenerator|stburst\(0) $ (GND)
-- \encoder|TickGenerator|Add0~1\ = CARRY(!\encoder|TickGenerator|stburst\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(0),
	datad => VCC,
	combout => \encoder|TickGenerator|Add0~0_combout\,
	cout => \encoder|TickGenerator|Add0~1\);

-- Location: LCCOMB_X92_Y38_N18
\encoder|TickGenerator|stburst~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stburst~5_combout\ = (!\encoder|TickGenerator|Equal0~10_combout\ & !\encoder|TickGenerator|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal0~10_combout\,
	datad => \encoder|TickGenerator|Add0~0_combout\,
	combout => \encoder|TickGenerator|stburst~5_combout\);

-- Location: FF_X92_Y38_N19
\encoder|TickGenerator|stburst[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stburst~5_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(0));

-- Location: LCCOMB_X91_Y38_N2
\encoder|TickGenerator|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~2_combout\ = (\encoder|TickGenerator|stburst\(1) & ((\encoder|TickGenerator|Add0~1\) # (GND))) # (!\encoder|TickGenerator|stburst\(1) & (!\encoder|TickGenerator|Add0~1\))
-- \encoder|TickGenerator|Add0~3\ = CARRY((\encoder|TickGenerator|stburst\(1)) # (!\encoder|TickGenerator|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(1),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~1\,
	combout => \encoder|TickGenerator|Add0~2_combout\,
	cout => \encoder|TickGenerator|Add0~3\);

-- Location: LCCOMB_X90_Y38_N16
\encoder|TickGenerator|stburst[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stburst[1]~10_combout\ = !\encoder|TickGenerator|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encoder|TickGenerator|Add0~2_combout\,
	combout => \encoder|TickGenerator|stburst[1]~10_combout\);

-- Location: FF_X91_Y38_N5
\encoder|TickGenerator|stburst[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \encoder|TickGenerator|stburst[1]~10_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(1));

-- Location: LCCOMB_X91_Y38_N4
\encoder|TickGenerator|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~4_combout\ = (\encoder|TickGenerator|stburst\(2) & (\encoder|TickGenerator|Add0~3\ $ (GND))) # (!\encoder|TickGenerator|stburst\(2) & (!\encoder|TickGenerator|Add0~3\ & VCC))
-- \encoder|TickGenerator|Add0~5\ = CARRY((\encoder|TickGenerator|stburst\(2) & !\encoder|TickGenerator|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(2),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~3\,
	combout => \encoder|TickGenerator|Add0~4_combout\,
	cout => \encoder|TickGenerator|Add0~5\);

-- Location: LCCOMB_X92_Y38_N4
\encoder|TickGenerator|stburst~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stburst~4_combout\ = (!\encoder|TickGenerator|Equal0~10_combout\ & \encoder|TickGenerator|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal0~10_combout\,
	datac => \encoder|TickGenerator|Add0~4_combout\,
	combout => \encoder|TickGenerator|stburst~4_combout\);

-- Location: FF_X92_Y38_N5
\encoder|TickGenerator|stburst[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stburst~4_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(2));

-- Location: LCCOMB_X92_Y38_N0
\encoder|TickGenerator|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~9_combout\ = (!\encoder|TickGenerator|stburst\(3) & (!\encoder|TickGenerator|stburst\(1) & (!\encoder|TickGenerator|stburst\(2) & !\encoder|TickGenerator|stburst\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(3),
	datab => \encoder|TickGenerator|stburst\(1),
	datac => \encoder|TickGenerator|stburst\(2),
	datad => \encoder|TickGenerator|stburst\(0),
	combout => \encoder|TickGenerator|Equal0~9_combout\);

-- Location: LCCOMB_X91_Y38_N8
\encoder|TickGenerator|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~8_combout\ = (\encoder|TickGenerator|stburst\(4) & (!\encoder|TickGenerator|Add0~7\ & VCC)) # (!\encoder|TickGenerator|stburst\(4) & (\encoder|TickGenerator|Add0~7\ $ (GND)))
-- \encoder|TickGenerator|Add0~9\ = CARRY((!\encoder|TickGenerator|stburst\(4) & !\encoder|TickGenerator|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(4),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~7\,
	combout => \encoder|TickGenerator|Add0~8_combout\,
	cout => \encoder|TickGenerator|Add0~9\);

-- Location: LCCOMB_X91_Y38_N10
\encoder|TickGenerator|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~10_combout\ = (\encoder|TickGenerator|stburst\(5) & (!\encoder|TickGenerator|Add0~9\)) # (!\encoder|TickGenerator|stburst\(5) & ((\encoder|TickGenerator|Add0~9\) # (GND)))
-- \encoder|TickGenerator|Add0~11\ = CARRY((!\encoder|TickGenerator|Add0~9\) # (!\encoder|TickGenerator|stburst\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(5),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~9\,
	combout => \encoder|TickGenerator|Add0~10_combout\,
	cout => \encoder|TickGenerator|Add0~11\);

-- Location: LCCOMB_X91_Y38_N12
\encoder|TickGenerator|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~12_combout\ = (\encoder|TickGenerator|stburst\(6) & (!\encoder|TickGenerator|Add0~11\ & VCC)) # (!\encoder|TickGenerator|stburst\(6) & (\encoder|TickGenerator|Add0~11\ $ (GND)))
-- \encoder|TickGenerator|Add0~13\ = CARRY((!\encoder|TickGenerator|stburst\(6) & !\encoder|TickGenerator|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(6),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~11\,
	combout => \encoder|TickGenerator|Add0~12_combout\,
	cout => \encoder|TickGenerator|Add0~13\);

-- Location: LCCOMB_X92_Y38_N20
\encoder|TickGenerator|stburst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stburst~1_combout\ = (\encoder|TickGenerator|Equal0~10_combout\) # (!\encoder|TickGenerator|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal0~10_combout\,
	datad => \encoder|TickGenerator|Add0~12_combout\,
	combout => \encoder|TickGenerator|stburst~1_combout\);

-- Location: FF_X92_Y38_N21
\encoder|TickGenerator|stburst[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stburst~1_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(6));

-- Location: LCCOMB_X92_Y38_N30
\encoder|TickGenerator|stburst~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stburst~2_combout\ = (\encoder|TickGenerator|Equal0~10_combout\) # (!\encoder|TickGenerator|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal0~10_combout\,
	datad => \encoder|TickGenerator|Add0~8_combout\,
	combout => \encoder|TickGenerator|stburst~2_combout\);

-- Location: FF_X92_Y38_N31
\encoder|TickGenerator|stburst[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stburst~2_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(4));

-- Location: FF_X91_Y38_N11
\encoder|TickGenerator|stburst[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~10_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(5));

-- Location: LCCOMB_X92_Y38_N8
\encoder|TickGenerator|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~8_combout\ = (!\encoder|TickGenerator|stburst\(7) & (!\encoder|TickGenerator|stburst\(6) & (!\encoder|TickGenerator|stburst\(4) & !\encoder|TickGenerator|stburst\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(7),
	datab => \encoder|TickGenerator|stburst\(6),
	datac => \encoder|TickGenerator|stburst\(4),
	datad => \encoder|TickGenerator|stburst\(5),
	combout => \encoder|TickGenerator|Equal0~8_combout\);

-- Location: LCCOMB_X91_Y38_N14
\encoder|TickGenerator|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~14_combout\ = (\encoder|TickGenerator|stburst\(7) & (!\encoder|TickGenerator|Add0~13\)) # (!\encoder|TickGenerator|stburst\(7) & ((\encoder|TickGenerator|Add0~13\) # (GND)))
-- \encoder|TickGenerator|Add0~15\ = CARRY((!\encoder|TickGenerator|Add0~13\) # (!\encoder|TickGenerator|stburst\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(7),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~13\,
	combout => \encoder|TickGenerator|Add0~14_combout\,
	cout => \encoder|TickGenerator|Add0~15\);

-- Location: FF_X91_Y38_N15
\encoder|TickGenerator|stburst[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~14_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(7));

-- Location: LCCOMB_X91_Y38_N18
\encoder|TickGenerator|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~18_combout\ = (\encoder|TickGenerator|stburst\(9) & (!\encoder|TickGenerator|Add0~17\)) # (!\encoder|TickGenerator|stburst\(9) & ((\encoder|TickGenerator|Add0~17\) # (GND)))
-- \encoder|TickGenerator|Add0~19\ = CARRY((!\encoder|TickGenerator|Add0~17\) # (!\encoder|TickGenerator|stburst\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(9),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~17\,
	combout => \encoder|TickGenerator|Add0~18_combout\,
	cout => \encoder|TickGenerator|Add0~19\);

-- Location: FF_X91_Y38_N19
\encoder|TickGenerator|stburst[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~18_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(9));

-- Location: LCCOMB_X91_Y38_N20
\encoder|TickGenerator|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~20_combout\ = (\encoder|TickGenerator|stburst\(10) & (\encoder|TickGenerator|Add0~19\ $ (GND))) # (!\encoder|TickGenerator|stburst\(10) & (!\encoder|TickGenerator|Add0~19\ & VCC))
-- \encoder|TickGenerator|Add0~21\ = CARRY((\encoder|TickGenerator|stburst\(10) & !\encoder|TickGenerator|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(10),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~19\,
	combout => \encoder|TickGenerator|Add0~20_combout\,
	cout => \encoder|TickGenerator|Add0~21\);

-- Location: FF_X91_Y38_N21
\encoder|TickGenerator|stburst[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~20_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(10));

-- Location: LCCOMB_X91_Y38_N24
\encoder|TickGenerator|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~24_combout\ = (\encoder|TickGenerator|stburst\(12) & (\encoder|TickGenerator|Add0~23\ $ (GND))) # (!\encoder|TickGenerator|stburst\(12) & (!\encoder|TickGenerator|Add0~23\ & VCC))
-- \encoder|TickGenerator|Add0~25\ = CARRY((\encoder|TickGenerator|stburst\(12) & !\encoder|TickGenerator|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(12),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~23\,
	combout => \encoder|TickGenerator|Add0~24_combout\,
	cout => \encoder|TickGenerator|Add0~25\);

-- Location: FF_X91_Y38_N25
\encoder|TickGenerator|stburst[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~24_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(12));

-- Location: LCCOMB_X91_Y38_N28
\encoder|TickGenerator|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~28_combout\ = (\encoder|TickGenerator|stburst\(14) & (\encoder|TickGenerator|Add0~27\ $ (GND))) # (!\encoder|TickGenerator|stburst\(14) & (!\encoder|TickGenerator|Add0~27\ & VCC))
-- \encoder|TickGenerator|Add0~29\ = CARRY((\encoder|TickGenerator|stburst\(14) & !\encoder|TickGenerator|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(14),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~27\,
	combout => \encoder|TickGenerator|Add0~28_combout\,
	cout => \encoder|TickGenerator|Add0~29\);

-- Location: FF_X91_Y38_N29
\encoder|TickGenerator|stburst[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~28_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(14));

-- Location: LCCOMB_X91_Y37_N0
\encoder|TickGenerator|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~32_combout\ = (\encoder|TickGenerator|stburst\(16) & (\encoder|TickGenerator|Add0~31\ $ (GND))) # (!\encoder|TickGenerator|stburst\(16) & (!\encoder|TickGenerator|Add0~31\ & VCC))
-- \encoder|TickGenerator|Add0~33\ = CARRY((\encoder|TickGenerator|stburst\(16) & !\encoder|TickGenerator|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(16),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~31\,
	combout => \encoder|TickGenerator|Add0~32_combout\,
	cout => \encoder|TickGenerator|Add0~33\);

-- Location: FF_X91_Y37_N1
\encoder|TickGenerator|stburst[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~32_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(16));

-- Location: LCCOMB_X91_Y37_N2
\encoder|TickGenerator|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~34_combout\ = (\encoder|TickGenerator|stburst\(17) & (!\encoder|TickGenerator|Add0~33\)) # (!\encoder|TickGenerator|stburst\(17) & ((\encoder|TickGenerator|Add0~33\) # (GND)))
-- \encoder|TickGenerator|Add0~35\ = CARRY((!\encoder|TickGenerator|Add0~33\) # (!\encoder|TickGenerator|stburst\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(17),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~33\,
	combout => \encoder|TickGenerator|Add0~34_combout\,
	cout => \encoder|TickGenerator|Add0~35\);

-- Location: FF_X91_Y37_N3
\encoder|TickGenerator|stburst[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~34_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(17));

-- Location: LCCOMB_X91_Y37_N4
\encoder|TickGenerator|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~36_combout\ = (\encoder|TickGenerator|stburst\(18) & (\encoder|TickGenerator|Add0~35\ $ (GND))) # (!\encoder|TickGenerator|stburst\(18) & (!\encoder|TickGenerator|Add0~35\ & VCC))
-- \encoder|TickGenerator|Add0~37\ = CARRY((\encoder|TickGenerator|stburst\(18) & !\encoder|TickGenerator|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(18),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~35\,
	combout => \encoder|TickGenerator|Add0~36_combout\,
	cout => \encoder|TickGenerator|Add0~37\);

-- Location: FF_X91_Y37_N5
\encoder|TickGenerator|stburst[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~36_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(18));

-- Location: LCCOMB_X91_Y37_N8
\encoder|TickGenerator|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~40_combout\ = (\encoder|TickGenerator|stburst\(20) & (\encoder|TickGenerator|Add0~39\ $ (GND))) # (!\encoder|TickGenerator|stburst\(20) & (!\encoder|TickGenerator|Add0~39\ & VCC))
-- \encoder|TickGenerator|Add0~41\ = CARRY((\encoder|TickGenerator|stburst\(20) & !\encoder|TickGenerator|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(20),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~39\,
	combout => \encoder|TickGenerator|Add0~40_combout\,
	cout => \encoder|TickGenerator|Add0~41\);

-- Location: FF_X91_Y37_N9
\encoder|TickGenerator|stburst[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~40_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(20));

-- Location: LCCOMB_X91_Y37_N10
\encoder|TickGenerator|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~42_combout\ = (\encoder|TickGenerator|stburst\(21) & (!\encoder|TickGenerator|Add0~41\)) # (!\encoder|TickGenerator|stburst\(21) & ((\encoder|TickGenerator|Add0~41\) # (GND)))
-- \encoder|TickGenerator|Add0~43\ = CARRY((!\encoder|TickGenerator|Add0~41\) # (!\encoder|TickGenerator|stburst\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(21),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~41\,
	combout => \encoder|TickGenerator|Add0~42_combout\,
	cout => \encoder|TickGenerator|Add0~43\);

-- Location: LCCOMB_X91_Y37_N12
\encoder|TickGenerator|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~44_combout\ = (\encoder|TickGenerator|stburst\(22) & (\encoder|TickGenerator|Add0~43\ $ (GND))) # (!\encoder|TickGenerator|stburst\(22) & (!\encoder|TickGenerator|Add0~43\ & VCC))
-- \encoder|TickGenerator|Add0~45\ = CARRY((\encoder|TickGenerator|stburst\(22) & !\encoder|TickGenerator|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(22),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~43\,
	combout => \encoder|TickGenerator|Add0~44_combout\,
	cout => \encoder|TickGenerator|Add0~45\);

-- Location: LCCOMB_X91_Y37_N14
\encoder|TickGenerator|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~46_combout\ = (\encoder|TickGenerator|stburst\(23) & (!\encoder|TickGenerator|Add0~45\)) # (!\encoder|TickGenerator|stburst\(23) & ((\encoder|TickGenerator|Add0~45\) # (GND)))
-- \encoder|TickGenerator|Add0~47\ = CARRY((!\encoder|TickGenerator|Add0~45\) # (!\encoder|TickGenerator|stburst\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(23),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~45\,
	combout => \encoder|TickGenerator|Add0~46_combout\,
	cout => \encoder|TickGenerator|Add0~47\);

-- Location: FF_X91_Y37_N15
\encoder|TickGenerator|stburst[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~46_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(23));

-- Location: LCCOMB_X91_Y37_N16
\encoder|TickGenerator|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~48_combout\ = (\encoder|TickGenerator|stburst\(24) & (\encoder|TickGenerator|Add0~47\ $ (GND))) # (!\encoder|TickGenerator|stburst\(24) & (!\encoder|TickGenerator|Add0~47\ & VCC))
-- \encoder|TickGenerator|Add0~49\ = CARRY((\encoder|TickGenerator|stburst\(24) & !\encoder|TickGenerator|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(24),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~47\,
	combout => \encoder|TickGenerator|Add0~48_combout\,
	cout => \encoder|TickGenerator|Add0~49\);

-- Location: FF_X91_Y37_N17
\encoder|TickGenerator|stburst[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~48_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(24));

-- Location: LCCOMB_X91_Y37_N18
\encoder|TickGenerator|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~50_combout\ = (\encoder|TickGenerator|stburst\(25) & (!\encoder|TickGenerator|Add0~49\)) # (!\encoder|TickGenerator|stburst\(25) & ((\encoder|TickGenerator|Add0~49\) # (GND)))
-- \encoder|TickGenerator|Add0~51\ = CARRY((!\encoder|TickGenerator|Add0~49\) # (!\encoder|TickGenerator|stburst\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(25),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~49\,
	combout => \encoder|TickGenerator|Add0~50_combout\,
	cout => \encoder|TickGenerator|Add0~51\);

-- Location: FF_X91_Y37_N19
\encoder|TickGenerator|stburst[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~50_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(25));

-- Location: LCCOMB_X91_Y37_N20
\encoder|TickGenerator|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~52_combout\ = (\encoder|TickGenerator|stburst\(26) & (\encoder|TickGenerator|Add0~51\ $ (GND))) # (!\encoder|TickGenerator|stburst\(26) & (!\encoder|TickGenerator|Add0~51\ & VCC))
-- \encoder|TickGenerator|Add0~53\ = CARRY((\encoder|TickGenerator|stburst\(26) & !\encoder|TickGenerator|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(26),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~51\,
	combout => \encoder|TickGenerator|Add0~52_combout\,
	cout => \encoder|TickGenerator|Add0~53\);

-- Location: FF_X91_Y37_N21
\encoder|TickGenerator|stburst[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~52_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(26));

-- Location: LCCOMB_X92_Y37_N2
\encoder|TickGenerator|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~1_combout\ = (!\encoder|TickGenerator|stburst\(27) & (!\encoder|TickGenerator|stburst\(26) & (!\encoder|TickGenerator|stburst\(24) & !\encoder|TickGenerator|stburst\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(27),
	datab => \encoder|TickGenerator|stburst\(26),
	datac => \encoder|TickGenerator|stburst\(24),
	datad => \encoder|TickGenerator|stburst\(25),
	combout => \encoder|TickGenerator|Equal0~1_combout\);

-- Location: FF_X91_Y37_N13
\encoder|TickGenerator|stburst[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~44_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(22));

-- Location: FF_X91_Y37_N11
\encoder|TickGenerator|stburst[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~42_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(21));

-- Location: LCCOMB_X92_Y37_N8
\encoder|TickGenerator|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~2_combout\ = (!\encoder|TickGenerator|stburst\(23) & (!\encoder|TickGenerator|stburst\(22) & (!\encoder|TickGenerator|stburst\(21) & !\encoder|TickGenerator|stburst\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(23),
	datab => \encoder|TickGenerator|stburst\(22),
	datac => \encoder|TickGenerator|stburst\(21),
	datad => \encoder|TickGenerator|stburst\(20),
	combout => \encoder|TickGenerator|Equal0~2_combout\);

-- Location: LCCOMB_X91_Y37_N24
\encoder|TickGenerator|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~56_combout\ = (\encoder|TickGenerator|stburst\(28) & (\encoder|TickGenerator|Add0~55\ $ (GND))) # (!\encoder|TickGenerator|stburst\(28) & (!\encoder|TickGenerator|Add0~55\ & VCC))
-- \encoder|TickGenerator|Add0~57\ = CARRY((\encoder|TickGenerator|stburst\(28) & !\encoder|TickGenerator|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(28),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~55\,
	combout => \encoder|TickGenerator|Add0~56_combout\,
	cout => \encoder|TickGenerator|Add0~57\);

-- Location: FF_X91_Y37_N25
\encoder|TickGenerator|stburst[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~56_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(28));

-- Location: LCCOMB_X91_Y37_N26
\encoder|TickGenerator|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~58_combout\ = (\encoder|TickGenerator|stburst\(29) & (!\encoder|TickGenerator|Add0~57\)) # (!\encoder|TickGenerator|stburst\(29) & ((\encoder|TickGenerator|Add0~57\) # (GND)))
-- \encoder|TickGenerator|Add0~59\ = CARRY((!\encoder|TickGenerator|Add0~57\) # (!\encoder|TickGenerator|stburst\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(29),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~57\,
	combout => \encoder|TickGenerator|Add0~58_combout\,
	cout => \encoder|TickGenerator|Add0~59\);

-- Location: LCCOMB_X91_Y37_N28
\encoder|TickGenerator|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~60_combout\ = (\encoder|TickGenerator|stburst\(30) & (\encoder|TickGenerator|Add0~59\ $ (GND))) # (!\encoder|TickGenerator|stburst\(30) & (!\encoder|TickGenerator|Add0~59\ & VCC))
-- \encoder|TickGenerator|Add0~61\ = CARRY((\encoder|TickGenerator|stburst\(30) & !\encoder|TickGenerator|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(30),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~59\,
	combout => \encoder|TickGenerator|Add0~60_combout\,
	cout => \encoder|TickGenerator|Add0~61\);

-- Location: FF_X91_Y37_N29
\encoder|TickGenerator|stburst[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~60_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(30));

-- Location: FF_X91_Y37_N27
\encoder|TickGenerator|stburst[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~58_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(29));

-- Location: LCCOMB_X91_Y37_N30
\encoder|TickGenerator|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~62_combout\ = \encoder|TickGenerator|stburst\(31) $ (\encoder|TickGenerator|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(31),
	cin => \encoder|TickGenerator|Add0~61\,
	combout => \encoder|TickGenerator|Add0~62_combout\);

-- Location: FF_X91_Y37_N31
\encoder|TickGenerator|stburst[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~62_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(31));

-- Location: LCCOMB_X92_Y37_N12
\encoder|TickGenerator|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~0_combout\ = (!\encoder|TickGenerator|stburst\(28) & (!\encoder|TickGenerator|stburst\(30) & (!\encoder|TickGenerator|stburst\(29) & !\encoder|TickGenerator|stburst\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(28),
	datab => \encoder|TickGenerator|stburst\(30),
	datac => \encoder|TickGenerator|stburst\(29),
	datad => \encoder|TickGenerator|stburst\(31),
	combout => \encoder|TickGenerator|Equal0~0_combout\);

-- Location: LCCOMB_X92_Y37_N0
\encoder|TickGenerator|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~4_combout\ = (\encoder|TickGenerator|Equal0~3_combout\ & (\encoder|TickGenerator|Equal0~1_combout\ & (\encoder|TickGenerator|Equal0~2_combout\ & \encoder|TickGenerator|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal0~3_combout\,
	datab => \encoder|TickGenerator|Equal0~1_combout\,
	datac => \encoder|TickGenerator|Equal0~2_combout\,
	datad => \encoder|TickGenerator|Equal0~0_combout\,
	combout => \encoder|TickGenerator|Equal0~4_combout\);

-- Location: LCCOMB_X92_Y38_N22
\encoder|TickGenerator|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~10_combout\ = (\encoder|TickGenerator|Equal0~7_combout\ & (\encoder|TickGenerator|Equal0~9_combout\ & (\encoder|TickGenerator|Equal0~8_combout\ & \encoder|TickGenerator|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal0~7_combout\,
	datab => \encoder|TickGenerator|Equal0~9_combout\,
	datac => \encoder|TickGenerator|Equal0~8_combout\,
	datad => \encoder|TickGenerator|Equal0~4_combout\,
	combout => \encoder|TickGenerator|Equal0~10_combout\);

-- Location: FF_X92_Y36_N23
\encoder|TickGenerator|tick_burst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \encoder|TickGenerator|Equal0~10_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|tick_burst~q\);

-- Location: FF_X94_Y36_N25
\encoder|BurstGenerator|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|BurstGenerator|state[0]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \encoder|TickGenerator|tick_burst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|BurstGenerator|state\(0));

-- Location: LCCOMB_X94_Y36_N0
\encoder|BurstGenerator|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|BurstGenerator|state~0_combout\ = \encoder|BurstGenerator|state\(1) $ (\encoder|BurstGenerator|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|BurstGenerator|state\(1),
	datad => \encoder|BurstGenerator|state\(0),
	combout => \encoder|BurstGenerator|state~0_combout\);

-- Location: FF_X94_Y36_N1
\encoder|BurstGenerator|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|BurstGenerator|state~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \encoder|TickGenerator|tick_burst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|BurstGenerator|state\(1));

-- Location: LCCOMB_X94_Y36_N2
\encoder|BurstGenerator|Out_burst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|BurstGenerator|Out_burst~0_combout\ = (\encoder|BurstGenerator|state\(1) & (!\rst~input_o\ & \encoder|TickGenerator|tick_burst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|BurstGenerator|state\(1),
	datac => \rst~input_o\,
	datad => \encoder|TickGenerator|tick_burst~q\,
	combout => \encoder|BurstGenerator|Out_burst~0_combout\);

-- Location: LCCOMB_X98_Y36_N8
\encoder|BurstGenerator|Out_burst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|BurstGenerator|Out_burst~1_combout\ = (\encoder|BurstGenerator|Out_burst~0_combout\ & (!\encoder|BurstGenerator|state\(0))) # (!\encoder|BurstGenerator|Out_burst~0_combout\ & ((\encoder|BurstGenerator|Out_burst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|BurstGenerator|state\(0),
	datac => \encoder|BurstGenerator|Out_burst~q\,
	datad => \encoder|BurstGenerator|Out_burst~0_combout\,
	combout => \encoder|BurstGenerator|Out_burst~1_combout\);

-- Location: FF_X98_Y36_N9
\encoder|BurstGenerator|Out_burst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|BurstGenerator|Out_burst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|BurstGenerator|Out_burst~q\);

-- Location: LCCOMB_X99_Y33_N24
\encoder|MAE_emission|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector6~0_combout\ = (\encoder|MAE_emission|EF.State_Clear~q\) # ((\encoder|MAE_emission|EF.State_Init~q\) # ((\encoder|MAE_emission|EF.State_Send~q\ & !\encoder|MAE_emission|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Clear~q\,
	datab => \encoder|MAE_emission|EF.State_Init~q\,
	datac => \encoder|MAE_emission|EF.State_Send~q\,
	datad => \encoder|MAE_emission|process_0~0_combout\,
	combout => \encoder|MAE_emission|Selector6~0_combout\);

-- Location: IOIBUF_X115_Y13_N1
\Address_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address_in(3),
	o => \Address_in[3]~input_o\);

-- Location: LCCOMB_X99_Y33_N16
\encoder|MAE_emission|reg[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|reg[11]~0_combout\ = (!\rst~input_o\ & \encoder|MAE_emission|EF.State_Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \encoder|MAE_emission|EF.State_Init~q\,
	combout => \encoder|MAE_emission|reg[11]~0_combout\);

-- Location: FF_X107_Y33_N9
\encoder|MAE_emission|reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Address_in[3]~input_o\,
	sload => VCC,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|reg\(9));

-- Location: IOIBUF_X115_Y14_N8
\Address_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address_in(4),
	o => \Address_in[4]~input_o\);

-- Location: LCCOMB_X107_Y33_N2
\encoder|MAE_emission|reg[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|reg[10]~feeder_combout\ = \Address_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Address_in[4]~input_o\,
	combout => \encoder|MAE_emission|reg[10]~feeder_combout\);

-- Location: FF_X107_Y33_N3
\encoder|MAE_emission|reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|reg[10]~feeder_combout\,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|reg\(10));

-- Location: IOIBUF_X115_Y6_N15
\Address_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address_in(2),
	o => \Address_in[2]~input_o\);

-- Location: FF_X107_Y33_N29
\encoder|MAE_emission|reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Address_in[2]~input_o\,
	sload => VCC,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|reg\(8));

-- Location: LCCOMB_X107_Y33_N28
\encoder|MAE_emission|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~0_combout\ = (\encoder|MAE_emission|i\(0) & ((\encoder|MAE_emission|i\(1) & (\encoder|MAE_emission|reg\(10))) # (!\encoder|MAE_emission|i\(1) & ((\encoder|MAE_emission|reg\(8)))))) # (!\encoder|MAE_emission|i\(0) & 
-- (((\encoder|MAE_emission|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(0),
	datab => \encoder|MAE_emission|reg\(10),
	datac => \encoder|MAE_emission|reg\(8),
	datad => \encoder|MAE_emission|i\(1),
	combout => \encoder|MAE_emission|Mux0~0_combout\);

-- Location: LCCOMB_X107_Y33_N8
\encoder|MAE_emission|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~1_combout\ = (\encoder|MAE_emission|i\(0) & (((\encoder|MAE_emission|Mux0~0_combout\)))) # (!\encoder|MAE_emission|i\(0) & ((\encoder|MAE_emission|Mux0~0_combout\ & (\encoder|MAE_emission|reg\(11))) # 
-- (!\encoder|MAE_emission|Mux0~0_combout\ & ((\encoder|MAE_emission|reg\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|reg\(11),
	datab => \encoder|MAE_emission|i\(0),
	datac => \encoder|MAE_emission|reg\(9),
	datad => \encoder|MAE_emission|Mux0~0_combout\,
	combout => \encoder|MAE_emission|Mux0~1_combout\);

-- Location: IOIBUF_X115_Y4_N22
\Cmd_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cmd_in(1),
	o => \Cmd_in[1]~input_o\);

-- Location: LCCOMB_X107_Y33_N0
\encoder|MAE_emission|reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|reg[1]~feeder_combout\ = \Cmd_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cmd_in[1]~input_o\,
	combout => \encoder|MAE_emission|reg[1]~feeder_combout\);

-- Location: FF_X107_Y33_N1
\encoder|MAE_emission|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|reg[1]~feeder_combout\,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|reg\(1));

-- Location: IOIBUF_X115_Y4_N15
\Cmd_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cmd_in(3),
	o => \Cmd_in[3]~input_o\);

-- Location: FF_X107_Y33_N15
\encoder|MAE_emission|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Cmd_in[3]~input_o\,
	sload => VCC,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|reg\(3));

-- Location: IOIBUF_X115_Y16_N8
\Cmd_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cmd_in(2),
	o => \Cmd_in[2]~input_o\);

-- Location: FF_X107_Y33_N19
\encoder|MAE_emission|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Cmd_in[2]~input_o\,
	sload => VCC,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|reg\(2));

-- Location: IOIBUF_X115_Y15_N1
\Cmd_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cmd_in(0),
	o => \Cmd_in[0]~input_o\);

-- Location: FF_X107_Y33_N17
\encoder|MAE_emission|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Cmd_in[0]~input_o\,
	sload => VCC,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|reg\(0));

-- Location: LCCOMB_X107_Y33_N16
\encoder|MAE_emission|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~4_combout\ = (\encoder|MAE_emission|i\(0) & ((\encoder|MAE_emission|i\(1) & (\encoder|MAE_emission|reg\(2))) # (!\encoder|MAE_emission|i\(1) & ((\encoder|MAE_emission|reg\(0)))))) # (!\encoder|MAE_emission|i\(0) & 
-- (((\encoder|MAE_emission|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(0),
	datab => \encoder|MAE_emission|reg\(2),
	datac => \encoder|MAE_emission|reg\(0),
	datad => \encoder|MAE_emission|i\(1),
	combout => \encoder|MAE_emission|Mux0~4_combout\);

-- Location: LCCOMB_X107_Y33_N14
\encoder|MAE_emission|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~5_combout\ = (\encoder|MAE_emission|i\(0) & (((\encoder|MAE_emission|Mux0~4_combout\)))) # (!\encoder|MAE_emission|i\(0) & ((\encoder|MAE_emission|Mux0~4_combout\ & ((\encoder|MAE_emission|reg\(3)))) # 
-- (!\encoder|MAE_emission|Mux0~4_combout\ & (\encoder|MAE_emission|reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(0),
	datab => \encoder|MAE_emission|reg\(1),
	datac => \encoder|MAE_emission|reg\(3),
	datad => \encoder|MAE_emission|Mux0~4_combout\,
	combout => \encoder|MAE_emission|Mux0~5_combout\);

-- Location: IOIBUF_X115_Y7_N15
\Cmd_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cmd_in(5),
	o => \Cmd_in[5]~input_o\);

-- Location: LCCOMB_X107_Y33_N24
\encoder|MAE_emission|reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|reg[5]~feeder_combout\ = \Cmd_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cmd_in[5]~input_o\,
	combout => \encoder|MAE_emission|reg[5]~feeder_combout\);

-- Location: FF_X107_Y33_N25
\encoder|MAE_emission|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|reg[5]~feeder_combout\,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|reg\(5));

-- Location: IOIBUF_X115_Y10_N8
\Address_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address_in(1),
	o => \Address_in[1]~input_o\);

-- Location: FF_X107_Y33_N7
\encoder|MAE_emission|reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Address_in[1]~input_o\,
	sload => VCC,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|reg\(7));

-- Location: IOIBUF_X115_Y5_N15
\Cmd_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cmd_in(4),
	o => \Cmd_in[4]~input_o\);

-- Location: FF_X107_Y33_N21
\encoder|MAE_emission|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Cmd_in[4]~input_o\,
	sload => VCC,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|reg\(4));

-- Location: LCCOMB_X107_Y33_N20
\encoder|MAE_emission|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~2_combout\ = (\encoder|MAE_emission|i\(0) & ((\encoder|MAE_emission|i\(1) & (\encoder|MAE_emission|reg\(6))) # (!\encoder|MAE_emission|i\(1) & ((\encoder|MAE_emission|reg\(4)))))) # (!\encoder|MAE_emission|i\(0) & 
-- (((\encoder|MAE_emission|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|reg\(6),
	datab => \encoder|MAE_emission|i\(0),
	datac => \encoder|MAE_emission|reg\(4),
	datad => \encoder|MAE_emission|i\(1),
	combout => \encoder|MAE_emission|Mux0~2_combout\);

-- Location: LCCOMB_X107_Y33_N6
\encoder|MAE_emission|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~3_combout\ = (\encoder|MAE_emission|i\(0) & (((\encoder|MAE_emission|Mux0~2_combout\)))) # (!\encoder|MAE_emission|i\(0) & ((\encoder|MAE_emission|Mux0~2_combout\ & ((\encoder|MAE_emission|reg\(7)))) # 
-- (!\encoder|MAE_emission|Mux0~2_combout\ & (\encoder|MAE_emission|reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(0),
	datab => \encoder|MAE_emission|reg\(5),
	datac => \encoder|MAE_emission|reg\(7),
	datad => \encoder|MAE_emission|Mux0~2_combout\,
	combout => \encoder|MAE_emission|Mux0~3_combout\);

-- Location: LCCOMB_X107_Y33_N12
\encoder|MAE_emission|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~6_combout\ = (\encoder|MAE_emission|i\(3) & ((\encoder|MAE_emission|i\(2) & (\encoder|MAE_emission|Mux0~5_combout\)) # (!\encoder|MAE_emission|i\(2) & ((\encoder|MAE_emission|Mux0~3_combout\))))) # (!\encoder|MAE_emission|i\(3) 
-- & (!\encoder|MAE_emission|i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(3),
	datab => \encoder|MAE_emission|i\(2),
	datac => \encoder|MAE_emission|Mux0~5_combout\,
	datad => \encoder|MAE_emission|Mux0~3_combout\,
	combout => \encoder|MAE_emission|Mux0~6_combout\);

-- Location: LCCOMB_X107_Y33_N10
\encoder|MAE_emission|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~7_combout\ = (\encoder|MAE_emission|i\(3) & (((\encoder|MAE_emission|Mux0~6_combout\)))) # (!\encoder|MAE_emission|i\(3) & ((\encoder|MAE_emission|Mux0~6_combout\ & (!\encoder|MAE_emission|i\(1))) # 
-- (!\encoder|MAE_emission|Mux0~6_combout\ & ((\encoder|MAE_emission|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(3),
	datab => \encoder|MAE_emission|i\(1),
	datac => \encoder|MAE_emission|Mux0~1_combout\,
	datad => \encoder|MAE_emission|Mux0~6_combout\,
	combout => \encoder|MAE_emission|Mux0~7_combout\);

-- Location: LCCOMB_X99_Y33_N22
\encoder|MAE_emission|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector6~1_combout\ = (\encoder|MAE_emission|i[0]~2_combout\ & ((\encoder|MAE_emission|Mux0~7_combout\) # ((\encoder|MAE_emission|Selector6~0_combout\ & \encoder|MAE_emission|out_trame~q\)))) # 
-- (!\encoder|MAE_emission|i[0]~2_combout\ & (\encoder|MAE_emission|Selector6~0_combout\ & (\encoder|MAE_emission|out_trame~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~2_combout\,
	datab => \encoder|MAE_emission|Selector6~0_combout\,
	datac => \encoder|MAE_emission|out_trame~q\,
	datad => \encoder|MAE_emission|Mux0~7_combout\,
	combout => \encoder|MAE_emission|Selector6~1_combout\);

-- Location: FF_X99_Y33_N23
\encoder|MAE_emission|out_trame\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|Selector6~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|out_trame~q\);

-- Location: LCCOMB_X98_Y36_N4
\encoder|Tx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|Tx~0_combout\ = (\encoder|MAE_emission|enable~q\ & (\encoder|BurstGenerator|Out_burst~q\ & (\encoder|ManchesterGenerator|manch~q\ $ (\encoder|MAE_emission|out_trame~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|enable~q\,
	datab => \encoder|ManchesterGenerator|manch~q\,
	datac => \encoder|BurstGenerator|Out_burst~q\,
	datad => \encoder|MAE_emission|out_trame~q\,
	combout => \encoder|Tx~0_combout\);

-- Location: LCCOMB_X74_Y61_N10
\decoder|deburst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|deburst|Selector0~0_combout\ = (!\decoder|deburst|EP.E3~q\ & ((\decoder|deburst|EP.E0~q\) # (\encoder|Tx~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|EP.E3~q\,
	datac => \decoder|deburst|EP.E0~q\,
	datad => \encoder|Tx~0_combout\,
	combout => \decoder|deburst|Selector0~0_combout\);

-- Location: LCCOMB_X80_Y29_N2
\decoder|tick_gen|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~2_combout\ = (\decoder|tick_gen|stburst\(1) & ((\decoder|tick_gen|Add0~1\) # (GND))) # (!\decoder|tick_gen|stburst\(1) & (!\decoder|tick_gen|Add0~1\))
-- \decoder|tick_gen|Add0~3\ = CARRY((\decoder|tick_gen|stburst\(1)) # (!\decoder|tick_gen|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(1),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~1\,
	combout => \decoder|tick_gen|Add0~2_combout\,
	cout => \decoder|tick_gen|Add0~3\);

-- Location: LCCOMB_X79_Y29_N26
\decoder|tick_gen|stburst[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stburst[1]~10_combout\ = !\decoder|tick_gen|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decoder|tick_gen|Add0~2_combout\,
	combout => \decoder|tick_gen|stburst[1]~10_combout\);

-- Location: FF_X80_Y29_N3
\decoder|tick_gen|stburst[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \decoder|tick_gen|stburst[1]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(1));

-- Location: LCCOMB_X80_Y29_N4
\decoder|tick_gen|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~4_combout\ = (\decoder|tick_gen|stburst\(2) & (\decoder|tick_gen|Add0~3\ $ (GND))) # (!\decoder|tick_gen|stburst\(2) & (!\decoder|tick_gen|Add0~3\ & VCC))
-- \decoder|tick_gen|Add0~5\ = CARRY((\decoder|tick_gen|stburst\(2) & !\decoder|tick_gen|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(2),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~3\,
	combout => \decoder|tick_gen|Add0~4_combout\,
	cout => \decoder|tick_gen|Add0~5\);

-- Location: LCCOMB_X79_Y29_N6
\decoder|tick_gen|stburst~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stburst~4_combout\ = (!\decoder|tick_gen|Equal0~10_combout\ & \decoder|tick_gen|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|Equal0~10_combout\,
	datad => \decoder|tick_gen|Add0~4_combout\,
	combout => \decoder|tick_gen|stburst~4_combout\);

-- Location: FF_X79_Y29_N7
\decoder|tick_gen|stburst[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stburst~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(2));

-- Location: LCCOMB_X80_Y29_N10
\decoder|tick_gen|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~10_combout\ = (\decoder|tick_gen|stburst\(5) & (!\decoder|tick_gen|Add0~9\)) # (!\decoder|tick_gen|stburst\(5) & ((\decoder|tick_gen|Add0~9\) # (GND)))
-- \decoder|tick_gen|Add0~11\ = CARRY((!\decoder|tick_gen|Add0~9\) # (!\decoder|tick_gen|stburst\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(5),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~9\,
	combout => \decoder|tick_gen|Add0~10_combout\,
	cout => \decoder|tick_gen|Add0~11\);

-- Location: LCCOMB_X80_Y29_N12
\decoder|tick_gen|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~12_combout\ = (\decoder|tick_gen|stburst\(6) & (!\decoder|tick_gen|Add0~11\ & VCC)) # (!\decoder|tick_gen|stburst\(6) & (\decoder|tick_gen|Add0~11\ $ (GND)))
-- \decoder|tick_gen|Add0~13\ = CARRY((!\decoder|tick_gen|stburst\(6) & !\decoder|tick_gen|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(6),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~11\,
	combout => \decoder|tick_gen|Add0~12_combout\,
	cout => \decoder|tick_gen|Add0~13\);

-- Location: LCCOMB_X79_Y29_N18
\decoder|tick_gen|stburst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stburst~1_combout\ = (\decoder|tick_gen|Equal0~10_combout\) # (!\decoder|tick_gen|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Add0~12_combout\,
	datad => \decoder|tick_gen|Equal0~10_combout\,
	combout => \decoder|tick_gen|stburst~1_combout\);

-- Location: FF_X79_Y29_N19
\decoder|tick_gen|stburst[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stburst~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(6));

-- Location: LCCOMB_X80_Y29_N14
\decoder|tick_gen|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~14_combout\ = (\decoder|tick_gen|stburst\(7) & (!\decoder|tick_gen|Add0~13\)) # (!\decoder|tick_gen|stburst\(7) & ((\decoder|tick_gen|Add0~13\) # (GND)))
-- \decoder|tick_gen|Add0~15\ = CARRY((!\decoder|tick_gen|Add0~13\) # (!\decoder|tick_gen|stburst\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(7),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~13\,
	combout => \decoder|tick_gen|Add0~14_combout\,
	cout => \decoder|tick_gen|Add0~15\);

-- Location: FF_X80_Y29_N15
\decoder|tick_gen|stburst[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(7));

-- Location: LCCOMB_X80_Y29_N16
\decoder|tick_gen|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~16_combout\ = (\decoder|tick_gen|stburst\(8) & (!\decoder|tick_gen|Add0~15\ & VCC)) # (!\decoder|tick_gen|stburst\(8) & (\decoder|tick_gen|Add0~15\ $ (GND)))
-- \decoder|tick_gen|Add0~17\ = CARRY((!\decoder|tick_gen|stburst\(8) & !\decoder|tick_gen|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(8),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~15\,
	combout => \decoder|tick_gen|Add0~16_combout\,
	cout => \decoder|tick_gen|Add0~17\);

-- Location: LCCOMB_X80_Y29_N18
\decoder|tick_gen|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~18_combout\ = (\decoder|tick_gen|stburst\(9) & (!\decoder|tick_gen|Add0~17\)) # (!\decoder|tick_gen|stburst\(9) & ((\decoder|tick_gen|Add0~17\) # (GND)))
-- \decoder|tick_gen|Add0~19\ = CARRY((!\decoder|tick_gen|Add0~17\) # (!\decoder|tick_gen|stburst\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(9),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~17\,
	combout => \decoder|tick_gen|Add0~18_combout\,
	cout => \decoder|tick_gen|Add0~19\);

-- Location: FF_X80_Y29_N19
\decoder|tick_gen|stburst[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(9));

-- Location: LCCOMB_X80_Y29_N20
\decoder|tick_gen|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~20_combout\ = (\decoder|tick_gen|stburst\(10) & (\decoder|tick_gen|Add0~19\ $ (GND))) # (!\decoder|tick_gen|stburst\(10) & (!\decoder|tick_gen|Add0~19\ & VCC))
-- \decoder|tick_gen|Add0~21\ = CARRY((\decoder|tick_gen|stburst\(10) & !\decoder|tick_gen|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(10),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~19\,
	combout => \decoder|tick_gen|Add0~20_combout\,
	cout => \decoder|tick_gen|Add0~21\);

-- Location: FF_X80_Y29_N21
\decoder|tick_gen|stburst[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(10));

-- Location: LCCOMB_X80_Y29_N22
\decoder|tick_gen|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~22_combout\ = (\decoder|tick_gen|stburst\(11) & (!\decoder|tick_gen|Add0~21\)) # (!\decoder|tick_gen|stburst\(11) & ((\decoder|tick_gen|Add0~21\) # (GND)))
-- \decoder|tick_gen|Add0~23\ = CARRY((!\decoder|tick_gen|Add0~21\) # (!\decoder|tick_gen|stburst\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(11),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~21\,
	combout => \decoder|tick_gen|Add0~22_combout\,
	cout => \decoder|tick_gen|Add0~23\);

-- Location: LCCOMB_X80_Y29_N24
\decoder|tick_gen|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~24_combout\ = (\decoder|tick_gen|stburst\(12) & (\decoder|tick_gen|Add0~23\ $ (GND))) # (!\decoder|tick_gen|stburst\(12) & (!\decoder|tick_gen|Add0~23\ & VCC))
-- \decoder|tick_gen|Add0~25\ = CARRY((\decoder|tick_gen|stburst\(12) & !\decoder|tick_gen|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(12),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~23\,
	combout => \decoder|tick_gen|Add0~24_combout\,
	cout => \decoder|tick_gen|Add0~25\);

-- Location: FF_X80_Y29_N25
\decoder|tick_gen|stburst[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(12));

-- Location: LCCOMB_X80_Y29_N28
\decoder|tick_gen|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~28_combout\ = (\decoder|tick_gen|stburst\(14) & (\decoder|tick_gen|Add0~27\ $ (GND))) # (!\decoder|tick_gen|stburst\(14) & (!\decoder|tick_gen|Add0~27\ & VCC))
-- \decoder|tick_gen|Add0~29\ = CARRY((\decoder|tick_gen|stburst\(14) & !\decoder|tick_gen|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(14),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~27\,
	combout => \decoder|tick_gen|Add0~28_combout\,
	cout => \decoder|tick_gen|Add0~29\);

-- Location: FF_X80_Y29_N29
\decoder|tick_gen|stburst[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(14));

-- Location: LCCOMB_X80_Y28_N0
\decoder|tick_gen|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~32_combout\ = (\decoder|tick_gen|stburst\(16) & (\decoder|tick_gen|Add0~31\ $ (GND))) # (!\decoder|tick_gen|stburst\(16) & (!\decoder|tick_gen|Add0~31\ & VCC))
-- \decoder|tick_gen|Add0~33\ = CARRY((\decoder|tick_gen|stburst\(16) & !\decoder|tick_gen|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(16),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~31\,
	combout => \decoder|tick_gen|Add0~32_combout\,
	cout => \decoder|tick_gen|Add0~33\);

-- Location: FF_X80_Y28_N1
\decoder|tick_gen|stburst[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(16));

-- Location: LCCOMB_X80_Y28_N2
\decoder|tick_gen|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~34_combout\ = (\decoder|tick_gen|stburst\(17) & (!\decoder|tick_gen|Add0~33\)) # (!\decoder|tick_gen|stburst\(17) & ((\decoder|tick_gen|Add0~33\) # (GND)))
-- \decoder|tick_gen|Add0~35\ = CARRY((!\decoder|tick_gen|Add0~33\) # (!\decoder|tick_gen|stburst\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(17),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~33\,
	combout => \decoder|tick_gen|Add0~34_combout\,
	cout => \decoder|tick_gen|Add0~35\);

-- Location: FF_X80_Y28_N3
\decoder|tick_gen|stburst[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(17));

-- Location: LCCOMB_X80_Y28_N4
\decoder|tick_gen|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~36_combout\ = (\decoder|tick_gen|stburst\(18) & (\decoder|tick_gen|Add0~35\ $ (GND))) # (!\decoder|tick_gen|stburst\(18) & (!\decoder|tick_gen|Add0~35\ & VCC))
-- \decoder|tick_gen|Add0~37\ = CARRY((\decoder|tick_gen|stburst\(18) & !\decoder|tick_gen|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(18),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~35\,
	combout => \decoder|tick_gen|Add0~36_combout\,
	cout => \decoder|tick_gen|Add0~37\);

-- Location: FF_X80_Y28_N5
\decoder|tick_gen|stburst[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(18));

-- Location: LCCOMB_X79_Y28_N2
\decoder|tick_gen|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~3_combout\ = (!\decoder|tick_gen|stburst\(19) & (!\decoder|tick_gen|stburst\(18) & (!\decoder|tick_gen|stburst\(16) & !\decoder|tick_gen|stburst\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(19),
	datab => \decoder|tick_gen|stburst\(18),
	datac => \decoder|tick_gen|stburst\(16),
	datad => \decoder|tick_gen|stburst\(17),
	combout => \decoder|tick_gen|Equal0~3_combout\);

-- Location: LCCOMB_X80_Y28_N8
\decoder|tick_gen|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~40_combout\ = (\decoder|tick_gen|stburst\(20) & (\decoder|tick_gen|Add0~39\ $ (GND))) # (!\decoder|tick_gen|stburst\(20) & (!\decoder|tick_gen|Add0~39\ & VCC))
-- \decoder|tick_gen|Add0~41\ = CARRY((\decoder|tick_gen|stburst\(20) & !\decoder|tick_gen|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(20),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~39\,
	combout => \decoder|tick_gen|Add0~40_combout\,
	cout => \decoder|tick_gen|Add0~41\);

-- Location: FF_X80_Y28_N9
\decoder|tick_gen|stburst[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(20));

-- Location: LCCOMB_X80_Y28_N10
\decoder|tick_gen|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~42_combout\ = (\decoder|tick_gen|stburst\(21) & (!\decoder|tick_gen|Add0~41\)) # (!\decoder|tick_gen|stburst\(21) & ((\decoder|tick_gen|Add0~41\) # (GND)))
-- \decoder|tick_gen|Add0~43\ = CARRY((!\decoder|tick_gen|Add0~41\) # (!\decoder|tick_gen|stburst\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(21),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~41\,
	combout => \decoder|tick_gen|Add0~42_combout\,
	cout => \decoder|tick_gen|Add0~43\);

-- Location: LCCOMB_X80_Y28_N14
\decoder|tick_gen|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~46_combout\ = (\decoder|tick_gen|stburst\(23) & (!\decoder|tick_gen|Add0~45\)) # (!\decoder|tick_gen|stburst\(23) & ((\decoder|tick_gen|Add0~45\) # (GND)))
-- \decoder|tick_gen|Add0~47\ = CARRY((!\decoder|tick_gen|Add0~45\) # (!\decoder|tick_gen|stburst\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(23),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~45\,
	combout => \decoder|tick_gen|Add0~46_combout\,
	cout => \decoder|tick_gen|Add0~47\);

-- Location: FF_X80_Y28_N15
\decoder|tick_gen|stburst[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(23));

-- Location: LCCOMB_X80_Y28_N16
\decoder|tick_gen|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~48_combout\ = (\decoder|tick_gen|stburst\(24) & (\decoder|tick_gen|Add0~47\ $ (GND))) # (!\decoder|tick_gen|stburst\(24) & (!\decoder|tick_gen|Add0~47\ & VCC))
-- \decoder|tick_gen|Add0~49\ = CARRY((\decoder|tick_gen|stburst\(24) & !\decoder|tick_gen|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(24),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~47\,
	combout => \decoder|tick_gen|Add0~48_combout\,
	cout => \decoder|tick_gen|Add0~49\);

-- Location: FF_X80_Y28_N17
\decoder|tick_gen|stburst[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(24));

-- Location: LCCOMB_X80_Y28_N18
\decoder|tick_gen|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~50_combout\ = (\decoder|tick_gen|stburst\(25) & (!\decoder|tick_gen|Add0~49\)) # (!\decoder|tick_gen|stburst\(25) & ((\decoder|tick_gen|Add0~49\) # (GND)))
-- \decoder|tick_gen|Add0~51\ = CARRY((!\decoder|tick_gen|Add0~49\) # (!\decoder|tick_gen|stburst\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(25),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~49\,
	combout => \decoder|tick_gen|Add0~50_combout\,
	cout => \decoder|tick_gen|Add0~51\);

-- Location: FF_X80_Y28_N19
\decoder|tick_gen|stburst[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~50_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(25));

-- Location: FF_X80_Y28_N21
\decoder|tick_gen|stburst[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~52_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(26));

-- Location: LCCOMB_X79_Y28_N22
\decoder|tick_gen|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~1_combout\ = (!\decoder|tick_gen|stburst\(27) & (!\decoder|tick_gen|stburst\(25) & (!\decoder|tick_gen|stburst\(26) & !\decoder|tick_gen|stburst\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(27),
	datab => \decoder|tick_gen|stburst\(25),
	datac => \decoder|tick_gen|stburst\(26),
	datad => \decoder|tick_gen|stburst\(24),
	combout => \decoder|tick_gen|Equal0~1_combout\);

-- Location: FF_X80_Y28_N11
\decoder|tick_gen|stburst[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(21));

-- Location: LCCOMB_X79_Y28_N16
\decoder|tick_gen|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~2_combout\ = (!\decoder|tick_gen|stburst\(22) & (!\decoder|tick_gen|stburst\(21) & (!\decoder|tick_gen|stburst\(20) & !\decoder|tick_gen|stburst\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(22),
	datab => \decoder|tick_gen|stburst\(21),
	datac => \decoder|tick_gen|stburst\(20),
	datad => \decoder|tick_gen|stburst\(23),
	combout => \decoder|tick_gen|Equal0~2_combout\);

-- Location: LCCOMB_X79_Y28_N0
\decoder|tick_gen|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~4_combout\ = (\decoder|tick_gen|Equal0~0_combout\ & (\decoder|tick_gen|Equal0~3_combout\ & (\decoder|tick_gen|Equal0~1_combout\ & \decoder|tick_gen|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal0~0_combout\,
	datab => \decoder|tick_gen|Equal0~3_combout\,
	datac => \decoder|tick_gen|Equal0~1_combout\,
	datad => \decoder|tick_gen|Equal0~2_combout\,
	combout => \decoder|tick_gen|Equal0~4_combout\);

-- Location: FF_X80_Y29_N11
\decoder|tick_gen|stburst[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(5));

-- Location: LCCOMB_X79_Y29_N14
\decoder|tick_gen|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~8_combout\ = (!\decoder|tick_gen|stburst\(4) & (!\decoder|tick_gen|stburst\(7) & (!\decoder|tick_gen|stburst\(5) & !\decoder|tick_gen|stburst\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(4),
	datab => \decoder|tick_gen|stburst\(7),
	datac => \decoder|tick_gen|stburst\(5),
	datad => \decoder|tick_gen|stburst\(6),
	combout => \decoder|tick_gen|Equal0~8_combout\);

-- Location: LCCOMB_X79_Y29_N2
\decoder|tick_gen|stburst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stburst~0_combout\ = (\decoder|tick_gen|Equal0~10_combout\) # (!\decoder|tick_gen|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|Equal0~10_combout\,
	datad => \decoder|tick_gen|Add0~16_combout\,
	combout => \decoder|tick_gen|stburst~0_combout\);

-- Location: FF_X79_Y29_N3
\decoder|tick_gen|stburst[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stburst~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(8));

-- Location: FF_X80_Y29_N23
\decoder|tick_gen|stburst[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add0~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stburst\(11));

-- Location: LCCOMB_X79_Y29_N8
\decoder|tick_gen|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~6_combout\ = (!\decoder|tick_gen|stburst\(10) & !\decoder|tick_gen|stburst\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|stburst\(10),
	datad => \decoder|tick_gen|stburst\(11),
	combout => \decoder|tick_gen|Equal0~6_combout\);

-- Location: LCCOMB_X79_Y29_N28
\decoder|tick_gen|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~7_combout\ = (\decoder|tick_gen|Equal0~5_combout\ & (!\decoder|tick_gen|stburst\(8) & (\decoder|tick_gen|Equal0~6_combout\ & !\decoder|tick_gen|stburst\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal0~5_combout\,
	datab => \decoder|tick_gen|stburst\(8),
	datac => \decoder|tick_gen|Equal0~6_combout\,
	datad => \decoder|tick_gen|stburst\(9),
	combout => \decoder|tick_gen|Equal0~7_combout\);

-- Location: LCCOMB_X79_Y29_N20
\decoder|tick_gen|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~10_combout\ = (\decoder|tick_gen|Equal0~9_combout\ & (\decoder|tick_gen|Equal0~4_combout\ & (\decoder|tick_gen|Equal0~8_combout\ & \decoder|tick_gen|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal0~9_combout\,
	datab => \decoder|tick_gen|Equal0~4_combout\,
	datac => \decoder|tick_gen|Equal0~8_combout\,
	datad => \decoder|tick_gen|Equal0~7_combout\,
	combout => \decoder|tick_gen|Equal0~10_combout\);

-- Location: LCCOMB_X79_Y29_N24
\decoder|tick_gen|tick_burst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|tick_burst~feeder_combout\ = \decoder|tick_gen|Equal0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decoder|tick_gen|Equal0~10_combout\,
	combout => \decoder|tick_gen|tick_burst~feeder_combout\);

-- Location: FF_X79_Y29_N25
\decoder|tick_gen|tick_burst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|tick_burst~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|tick_burst~q\);

-- Location: FF_X74_Y61_N11
\decoder|deburst|EP.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|deburst|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \decoder|tick_gen|tick_burst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|deburst|EP.E0~q\);

-- Location: LCCOMB_X74_Y61_N20
\decoder|deburst|trame_deburst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|deburst|trame_deburst~0_combout\ = (\decoder|deburst|EP.E0~q\) # (\encoder|Tx~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|deburst|EP.E0~q\,
	datad => \encoder|Tx~0_combout\,
	combout => \decoder|deburst|trame_deburst~0_combout\);

-- Location: FF_X74_Y61_N21
\decoder|deburst|trame_deburst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|deburst|trame_deburst~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \decoder|tick_gen|tick_burst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|deburst|trame_deburst~q\);

-- Location: LCCOMB_X74_Y61_N14
\decoder|demanchester|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector3~0_combout\ = (\decoder|deburst|trame_deburst~q\ & ((\decoder|demanchester|State.suit11~q\) # (\decoder|demanchester|State.suit01~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|State.suit11~q\,
	datac => \decoder|demanchester|State.suit01~q\,
	datad => \decoder|deburst|trame_deburst~q\,
	combout => \decoder|demanchester|Selector3~0_combout\);

-- Location: LCCOMB_X76_Y62_N0
\decoder|tick_gen|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~0_combout\ = \decoder|tick_gen|stbit\(0) $ (VCC)
-- \decoder|tick_gen|Add2~1\ = CARRY(\decoder|tick_gen|stbit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(0),
	datad => VCC,
	combout => \decoder|tick_gen|Add2~0_combout\,
	cout => \decoder|tick_gen|Add2~1\);

-- Location: FF_X76_Y62_N1
\decoder|tick_gen|stbit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(0));

-- Location: LCCOMB_X76_Y62_N2
\decoder|tick_gen|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~2_combout\ = (\decoder|tick_gen|stbit\(1) & (!\decoder|tick_gen|Add2~1\)) # (!\decoder|tick_gen|stbit\(1) & ((\decoder|tick_gen|Add2~1\) # (GND)))
-- \decoder|tick_gen|Add2~3\ = CARRY((!\decoder|tick_gen|Add2~1\) # (!\decoder|tick_gen|stbit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(1),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~1\,
	combout => \decoder|tick_gen|Add2~2_combout\,
	cout => \decoder|tick_gen|Add2~3\);

-- Location: FF_X76_Y62_N3
\decoder|tick_gen|stbit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(1));

-- Location: LCCOMB_X76_Y62_N4
\decoder|tick_gen|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~4_combout\ = (\decoder|tick_gen|stbit\(2) & (\decoder|tick_gen|Add2~3\ $ (GND))) # (!\decoder|tick_gen|stbit\(2) & (!\decoder|tick_gen|Add2~3\ & VCC))
-- \decoder|tick_gen|Add2~5\ = CARRY((\decoder|tick_gen|stbit\(2) & !\decoder|tick_gen|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(2),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~3\,
	combout => \decoder|tick_gen|Add2~4_combout\,
	cout => \decoder|tick_gen|Add2~5\);

-- Location: FF_X76_Y62_N5
\decoder|tick_gen|stbit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(2));

-- Location: LCCOMB_X76_Y62_N8
\decoder|tick_gen|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~8_combout\ = (\decoder|tick_gen|stbit\(4) & (\decoder|tick_gen|Add2~7\ $ (GND))) # (!\decoder|tick_gen|stbit\(4) & (!\decoder|tick_gen|Add2~7\ & VCC))
-- \decoder|tick_gen|Add2~9\ = CARRY((\decoder|tick_gen|stbit\(4) & !\decoder|tick_gen|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(4),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~7\,
	combout => \decoder|tick_gen|Add2~8_combout\,
	cout => \decoder|tick_gen|Add2~9\);

-- Location: FF_X76_Y62_N9
\decoder|tick_gen|stbit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(4));

-- Location: LCCOMB_X76_Y62_N10
\decoder|tick_gen|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~10_combout\ = (\decoder|tick_gen|stbit\(5) & (!\decoder|tick_gen|Add2~9\)) # (!\decoder|tick_gen|stbit\(5) & ((\decoder|tick_gen|Add2~9\) # (GND)))
-- \decoder|tick_gen|Add2~11\ = CARRY((!\decoder|tick_gen|Add2~9\) # (!\decoder|tick_gen|stbit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(5),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~9\,
	combout => \decoder|tick_gen|Add2~10_combout\,
	cout => \decoder|tick_gen|Add2~11\);

-- Location: LCCOMB_X76_Y62_N12
\decoder|tick_gen|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~12_combout\ = (\decoder|tick_gen|stbit\(6) & (\decoder|tick_gen|Add2~11\ $ (GND))) # (!\decoder|tick_gen|stbit\(6) & (!\decoder|tick_gen|Add2~11\ & VCC))
-- \decoder|tick_gen|Add2~13\ = CARRY((\decoder|tick_gen|stbit\(6) & !\decoder|tick_gen|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(6),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~11\,
	combout => \decoder|tick_gen|Add2~12_combout\,
	cout => \decoder|tick_gen|Add2~13\);

-- Location: FF_X76_Y62_N13
\decoder|tick_gen|stbit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(6));

-- Location: FF_X76_Y62_N11
\decoder|tick_gen|stbit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(5));

-- Location: LCCOMB_X75_Y62_N2
\decoder|tick_gen|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~1_cout\ = CARRY((\decoder|tick_gen|stbit\(1) & \decoder|tick_gen|stbit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(1),
	datab => \decoder|tick_gen|stbit\(0),
	datad => VCC,
	cout => \decoder|tick_gen|Add1~1_cout\);

-- Location: LCCOMB_X75_Y62_N4
\decoder|tick_gen|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~3_cout\ = CARRY((!\decoder|tick_gen|Add1~1_cout\) # (!\decoder|tick_gen|stbit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(2),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~1_cout\,
	cout => \decoder|tick_gen|Add1~3_cout\);

-- Location: LCCOMB_X75_Y62_N6
\decoder|tick_gen|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~5_cout\ = CARRY((\decoder|tick_gen|stbit\(3) & !\decoder|tick_gen|Add1~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(3),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~3_cout\,
	cout => \decoder|tick_gen|Add1~5_cout\);

-- Location: LCCOMB_X75_Y62_N8
\decoder|tick_gen|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~7_cout\ = CARRY((!\decoder|tick_gen|Add1~5_cout\) # (!\decoder|tick_gen|stbit\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(4),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~5_cout\,
	cout => \decoder|tick_gen|Add1~7_cout\);

-- Location: LCCOMB_X75_Y62_N10
\decoder|tick_gen|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~9_cout\ = CARRY((\decoder|tick_gen|stbit\(5) & !\decoder|tick_gen|Add1~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(5),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~7_cout\,
	cout => \decoder|tick_gen|Add1~9_cout\);

-- Location: LCCOMB_X75_Y62_N12
\decoder|tick_gen|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~11_cout\ = CARRY((!\decoder|tick_gen|Add1~9_cout\) # (!\decoder|tick_gen|stbit\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(6),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~9_cout\,
	cout => \decoder|tick_gen|Add1~11_cout\);

-- Location: LCCOMB_X75_Y62_N16
\decoder|tick_gen|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~14_combout\ = (\decoder|tick_gen|stmanch\(8) & ((\decoder|tick_gen|Add1~13\) # (GND))) # (!\decoder|tick_gen|stmanch\(8) & (!\decoder|tick_gen|Add1~13\))
-- \decoder|tick_gen|Add1~15\ = CARRY((\decoder|tick_gen|stmanch\(8)) # (!\decoder|tick_gen|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(8),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~13\,
	combout => \decoder|tick_gen|Add1~14_combout\,
	cout => \decoder|tick_gen|Add1~15\);

-- Location: LCCOMB_X74_Y62_N6
\decoder|tick_gen|stmanch~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~4_combout\ = (\decoder|tick_gen|Equal1~8_combout\) # (!\decoder|tick_gen|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|Add1~14_combout\,
	datac => \decoder|tick_gen|Equal1~8_combout\,
	combout => \decoder|tick_gen|stmanch~4_combout\);

-- Location: FF_X74_Y62_N7
\decoder|tick_gen|stmanch[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stmanch~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(8));

-- Location: LCCOMB_X75_Y62_N18
\decoder|tick_gen|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~16_combout\ = (\decoder|tick_gen|stmanch\(9) & (\decoder|tick_gen|Add1~15\ $ (GND))) # (!\decoder|tick_gen|stmanch\(9) & (!\decoder|tick_gen|Add1~15\ & VCC))
-- \decoder|tick_gen|Add1~17\ = CARRY((\decoder|tick_gen|stmanch\(9) & !\decoder|tick_gen|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(9),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~15\,
	combout => \decoder|tick_gen|Add1~16_combout\,
	cout => \decoder|tick_gen|Add1~17\);

-- Location: FF_X75_Y62_N19
\decoder|tick_gen|stmanch[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(9));

-- Location: LCCOMB_X75_Y62_N22
\decoder|tick_gen|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~20_combout\ = (\decoder|tick_gen|stmanch\(11) & (!\decoder|tick_gen|Add1~19\ & VCC)) # (!\decoder|tick_gen|stmanch\(11) & (\decoder|tick_gen|Add1~19\ $ (GND)))
-- \decoder|tick_gen|Add1~21\ = CARRY((!\decoder|tick_gen|stmanch\(11) & !\decoder|tick_gen|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(11),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~19\,
	combout => \decoder|tick_gen|Add1~20_combout\,
	cout => \decoder|tick_gen|Add1~21\);

-- Location: LCCOMB_X74_Y62_N22
\decoder|tick_gen|stmanch~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~2_combout\ = (\decoder|tick_gen|Equal1~8_combout\) # (!\decoder|tick_gen|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|Add1~20_combout\,
	datac => \decoder|tick_gen|Equal1~8_combout\,
	combout => \decoder|tick_gen|stmanch~2_combout\);

-- Location: FF_X74_Y62_N23
\decoder|tick_gen|stmanch[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stmanch~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(11));

-- Location: LCCOMB_X75_Y62_N24
\decoder|tick_gen|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~22_combout\ = (\decoder|tick_gen|stmanch\(12) & (!\decoder|tick_gen|Add1~21\)) # (!\decoder|tick_gen|stmanch\(12) & ((\decoder|tick_gen|Add1~21\) # (GND)))
-- \decoder|tick_gen|Add1~23\ = CARRY((!\decoder|tick_gen|Add1~21\) # (!\decoder|tick_gen|stmanch\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(12),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~21\,
	combout => \decoder|tick_gen|Add1~22_combout\,
	cout => \decoder|tick_gen|Add1~23\);

-- Location: FF_X75_Y62_N25
\decoder|tick_gen|stmanch[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(12));

-- Location: LCCOMB_X75_Y62_N28
\decoder|tick_gen|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~26_combout\ = (\decoder|tick_gen|stmanch\(14) & (!\decoder|tick_gen|Add1~25\)) # (!\decoder|tick_gen|stmanch\(14) & ((\decoder|tick_gen|Add1~25\) # (GND)))
-- \decoder|tick_gen|Add1~27\ = CARRY((!\decoder|tick_gen|Add1~25\) # (!\decoder|tick_gen|stmanch\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(14),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~25\,
	combout => \decoder|tick_gen|Add1~26_combout\,
	cout => \decoder|tick_gen|Add1~27\);

-- Location: FF_X75_Y62_N29
\decoder|tick_gen|stmanch[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(14));

-- Location: LCCOMB_X75_Y62_N30
\decoder|tick_gen|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~28_combout\ = (\decoder|tick_gen|stmanch\(15) & (!\decoder|tick_gen|Add1~27\ & VCC)) # (!\decoder|tick_gen|stmanch\(15) & (\decoder|tick_gen|Add1~27\ $ (GND)))
-- \decoder|tick_gen|Add1~29\ = CARRY((!\decoder|tick_gen|stmanch\(15) & !\decoder|tick_gen|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(15),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~27\,
	combout => \decoder|tick_gen|Add1~28_combout\,
	cout => \decoder|tick_gen|Add1~29\);

-- Location: LCCOMB_X74_Y62_N20
\decoder|tick_gen|stmanch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~0_combout\ = (\decoder|tick_gen|Equal1~8_combout\) # (!\decoder|tick_gen|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal1~8_combout\,
	datac => \decoder|tick_gen|Add1~28_combout\,
	combout => \decoder|tick_gen|stmanch~0_combout\);

-- Location: FF_X74_Y62_N21
\decoder|tick_gen|stmanch[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stmanch~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(15));

-- Location: LCCOMB_X75_Y61_N0
\decoder|tick_gen|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~30_combout\ = (\decoder|tick_gen|stmanch\(16) & (!\decoder|tick_gen|Add1~29\)) # (!\decoder|tick_gen|stmanch\(16) & ((\decoder|tick_gen|Add1~29\) # (GND)))
-- \decoder|tick_gen|Add1~31\ = CARRY((!\decoder|tick_gen|Add1~29\) # (!\decoder|tick_gen|stmanch\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(16),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~29\,
	combout => \decoder|tick_gen|Add1~30_combout\,
	cout => \decoder|tick_gen|Add1~31\);

-- Location: FF_X75_Y61_N1
\decoder|tick_gen|stmanch[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(16));

-- Location: LCCOMB_X75_Y61_N2
\decoder|tick_gen|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~32_combout\ = (\decoder|tick_gen|stmanch\(17) & (\decoder|tick_gen|Add1~31\ $ (GND))) # (!\decoder|tick_gen|stmanch\(17) & (!\decoder|tick_gen|Add1~31\ & VCC))
-- \decoder|tick_gen|Add1~33\ = CARRY((\decoder|tick_gen|stmanch\(17) & !\decoder|tick_gen|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(17),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~31\,
	combout => \decoder|tick_gen|Add1~32_combout\,
	cout => \decoder|tick_gen|Add1~33\);

-- Location: FF_X75_Y61_N3
\decoder|tick_gen|stmanch[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(17));

-- Location: LCCOMB_X75_Y61_N4
\decoder|tick_gen|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~34_combout\ = (\decoder|tick_gen|stmanch\(18) & (!\decoder|tick_gen|Add1~33\)) # (!\decoder|tick_gen|stmanch\(18) & ((\decoder|tick_gen|Add1~33\) # (GND)))
-- \decoder|tick_gen|Add1~35\ = CARRY((!\decoder|tick_gen|Add1~33\) # (!\decoder|tick_gen|stmanch\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(18),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~33\,
	combout => \decoder|tick_gen|Add1~34_combout\,
	cout => \decoder|tick_gen|Add1~35\);

-- Location: FF_X75_Y61_N5
\decoder|tick_gen|stmanch[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(18));

-- Location: LCCOMB_X75_Y61_N8
\decoder|tick_gen|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~38_combout\ = (\decoder|tick_gen|stmanch\(20) & (!\decoder|tick_gen|Add1~37\)) # (!\decoder|tick_gen|stmanch\(20) & ((\decoder|tick_gen|Add1~37\) # (GND)))
-- \decoder|tick_gen|Add1~39\ = CARRY((!\decoder|tick_gen|Add1~37\) # (!\decoder|tick_gen|stmanch\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(20),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~37\,
	combout => \decoder|tick_gen|Add1~38_combout\,
	cout => \decoder|tick_gen|Add1~39\);

-- Location: FF_X75_Y61_N9
\decoder|tick_gen|stmanch[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(20));

-- Location: LCCOMB_X75_Y61_N10
\decoder|tick_gen|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~40_combout\ = (\decoder|tick_gen|stmanch\(21) & (\decoder|tick_gen|Add1~39\ $ (GND))) # (!\decoder|tick_gen|stmanch\(21) & (!\decoder|tick_gen|Add1~39\ & VCC))
-- \decoder|tick_gen|Add1~41\ = CARRY((\decoder|tick_gen|stmanch\(21) & !\decoder|tick_gen|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(21),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~39\,
	combout => \decoder|tick_gen|Add1~40_combout\,
	cout => \decoder|tick_gen|Add1~41\);

-- Location: LCCOMB_X75_Y61_N12
\decoder|tick_gen|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~42_combout\ = (\decoder|tick_gen|stmanch\(22) & (!\decoder|tick_gen|Add1~41\)) # (!\decoder|tick_gen|stmanch\(22) & ((\decoder|tick_gen|Add1~41\) # (GND)))
-- \decoder|tick_gen|Add1~43\ = CARRY((!\decoder|tick_gen|Add1~41\) # (!\decoder|tick_gen|stmanch\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(22),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~41\,
	combout => \decoder|tick_gen|Add1~42_combout\,
	cout => \decoder|tick_gen|Add1~43\);

-- Location: LCCOMB_X75_Y61_N14
\decoder|tick_gen|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~44_combout\ = (\decoder|tick_gen|stmanch\(23) & (\decoder|tick_gen|Add1~43\ $ (GND))) # (!\decoder|tick_gen|stmanch\(23) & (!\decoder|tick_gen|Add1~43\ & VCC))
-- \decoder|tick_gen|Add1~45\ = CARRY((\decoder|tick_gen|stmanch\(23) & !\decoder|tick_gen|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(23),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~43\,
	combout => \decoder|tick_gen|Add1~44_combout\,
	cout => \decoder|tick_gen|Add1~45\);

-- Location: FF_X75_Y61_N15
\decoder|tick_gen|stmanch[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(23));

-- Location: LCCOMB_X75_Y61_N16
\decoder|tick_gen|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~46_combout\ = (\decoder|tick_gen|stmanch\(24) & (!\decoder|tick_gen|Add1~45\)) # (!\decoder|tick_gen|stmanch\(24) & ((\decoder|tick_gen|Add1~45\) # (GND)))
-- \decoder|tick_gen|Add1~47\ = CARRY((!\decoder|tick_gen|Add1~45\) # (!\decoder|tick_gen|stmanch\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(24),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~45\,
	combout => \decoder|tick_gen|Add1~46_combout\,
	cout => \decoder|tick_gen|Add1~47\);

-- Location: FF_X75_Y61_N17
\decoder|tick_gen|stmanch[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(24));

-- Location: LCCOMB_X75_Y61_N18
\decoder|tick_gen|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~48_combout\ = (\decoder|tick_gen|stmanch\(25) & (\decoder|tick_gen|Add1~47\ $ (GND))) # (!\decoder|tick_gen|stmanch\(25) & (!\decoder|tick_gen|Add1~47\ & VCC))
-- \decoder|tick_gen|Add1~49\ = CARRY((\decoder|tick_gen|stmanch\(25) & !\decoder|tick_gen|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(25),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~47\,
	combout => \decoder|tick_gen|Add1~48_combout\,
	cout => \decoder|tick_gen|Add1~49\);

-- Location: FF_X75_Y61_N19
\decoder|tick_gen|stmanch[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(25));

-- Location: LCCOMB_X75_Y61_N20
\decoder|tick_gen|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~50_combout\ = (\decoder|tick_gen|stmanch\(26) & (!\decoder|tick_gen|Add1~49\)) # (!\decoder|tick_gen|stmanch\(26) & ((\decoder|tick_gen|Add1~49\) # (GND)))
-- \decoder|tick_gen|Add1~51\ = CARRY((!\decoder|tick_gen|Add1~49\) # (!\decoder|tick_gen|stmanch\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(26),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~49\,
	combout => \decoder|tick_gen|Add1~50_combout\,
	cout => \decoder|tick_gen|Add1~51\);

-- Location: FF_X75_Y61_N21
\decoder|tick_gen|stmanch[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~50_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(26));

-- Location: LCCOMB_X75_Y61_N24
\decoder|tick_gen|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~54_combout\ = (\decoder|tick_gen|stmanch\(28) & (!\decoder|tick_gen|Add1~53\)) # (!\decoder|tick_gen|stmanch\(28) & ((\decoder|tick_gen|Add1~53\) # (GND)))
-- \decoder|tick_gen|Add1~55\ = CARRY((!\decoder|tick_gen|Add1~53\) # (!\decoder|tick_gen|stmanch\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(28),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~53\,
	combout => \decoder|tick_gen|Add1~54_combout\,
	cout => \decoder|tick_gen|Add1~55\);

-- Location: FF_X75_Y61_N25
\decoder|tick_gen|stmanch[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~54_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(28));

-- Location: LCCOMB_X74_Y61_N28
\decoder|tick_gen|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~0_combout\ = (!\decoder|tick_gen|stmanch\(29) & !\decoder|tick_gen|stmanch\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(29),
	datad => \decoder|tick_gen|stmanch\(28),
	combout => \decoder|tick_gen|Equal1~0_combout\);

-- Location: LCCOMB_X74_Y61_N26
\decoder|tick_gen|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~1_combout\ = (!\decoder|tick_gen|stmanch\(27) & (!\decoder|tick_gen|stmanch\(25) & (!\decoder|tick_gen|stmanch\(26) & !\decoder|tick_gen|stmanch\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(27),
	datab => \decoder|tick_gen|stmanch\(25),
	datac => \decoder|tick_gen|stmanch\(26),
	datad => \decoder|tick_gen|stmanch\(24),
	combout => \decoder|tick_gen|Equal1~1_combout\);

-- Location: FF_X75_Y61_N29
\decoder|tick_gen|stmanch[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~58_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(30));

-- Location: LCCOMB_X74_Y61_N8
\decoder|tick_gen|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~2_combout\ = (!\decoder|tick_gen|stmanch\(31) & (\decoder|tick_gen|Equal1~0_combout\ & (\decoder|tick_gen|Equal1~1_combout\ & !\decoder|tick_gen|stmanch\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(31),
	datab => \decoder|tick_gen|Equal1~0_combout\,
	datac => \decoder|tick_gen|Equal1~1_combout\,
	datad => \decoder|tick_gen|stmanch\(30),
	combout => \decoder|tick_gen|Equal1~2_combout\);

-- Location: LCCOMB_X74_Y62_N0
\decoder|tick_gen|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~5_combout\ = (!\decoder|tick_gen|stmanch\(13) & (!\decoder|tick_gen|stmanch\(15) & (!\decoder|tick_gen|stmanch\(12) & !\decoder|tick_gen|stmanch\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(13),
	datab => \decoder|tick_gen|stmanch\(15),
	datac => \decoder|tick_gen|stmanch\(12),
	datad => \decoder|tick_gen|stmanch\(14),
	combout => \decoder|tick_gen|Equal1~5_combout\);

-- Location: FF_X75_Y61_N13
\decoder|tick_gen|stmanch[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(22));

-- Location: FF_X75_Y61_N11
\decoder|tick_gen|stmanch[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(21));

-- Location: LCCOMB_X74_Y61_N24
\decoder|tick_gen|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~3_combout\ = (!\decoder|tick_gen|stmanch\(23) & (!\decoder|tick_gen|stmanch\(20) & (!\decoder|tick_gen|stmanch\(22) & !\decoder|tick_gen|stmanch\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(23),
	datab => \decoder|tick_gen|stmanch\(20),
	datac => \decoder|tick_gen|stmanch\(22),
	datad => \decoder|tick_gen|stmanch\(21),
	combout => \decoder|tick_gen|Equal1~3_combout\);

-- Location: LCCOMB_X74_Y61_N0
\decoder|tick_gen|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~4_combout\ = (!\decoder|tick_gen|stmanch\(19) & (!\decoder|tick_gen|stmanch\(16) & (!\decoder|tick_gen|stmanch\(17) & !\decoder|tick_gen|stmanch\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(19),
	datab => \decoder|tick_gen|stmanch\(16),
	datac => \decoder|tick_gen|stmanch\(17),
	datad => \decoder|tick_gen|stmanch\(18),
	combout => \decoder|tick_gen|Equal1~4_combout\);

-- Location: LCCOMB_X74_Y62_N14
\decoder|tick_gen|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~7_combout\ = (\decoder|tick_gen|Equal1~6_combout\ & (\decoder|tick_gen|Equal1~5_combout\ & (\decoder|tick_gen|Equal1~3_combout\ & \decoder|tick_gen|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal1~6_combout\,
	datab => \decoder|tick_gen|Equal1~5_combout\,
	datac => \decoder|tick_gen|Equal1~3_combout\,
	datad => \decoder|tick_gen|Equal1~4_combout\,
	combout => \decoder|tick_gen|Equal1~7_combout\);

-- Location: LCCOMB_X75_Y62_N0
\decoder|tick_gen|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~0_combout\ = (!\decoder|tick_gen|stbit\(3) & (!\decoder|tick_gen|stbit\(5) & (!\decoder|tick_gen|stbit\(4) & !\decoder|tick_gen|stbit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(3),
	datab => \decoder|tick_gen|stbit\(5),
	datac => \decoder|tick_gen|stbit\(4),
	datad => \decoder|tick_gen|stbit\(6),
	combout => \decoder|tick_gen|Equal2~0_combout\);

-- Location: LCCOMB_X74_Y62_N12
\decoder|tick_gen|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~1_combout\ = (!\decoder|tick_gen|stbit\(0) & (!\decoder|tick_gen|stbit\(2) & (\decoder|tick_gen|Equal2~0_combout\ & !\decoder|tick_gen|stbit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(0),
	datab => \decoder|tick_gen|stbit\(2),
	datac => \decoder|tick_gen|Equal2~0_combout\,
	datad => \decoder|tick_gen|stbit\(1),
	combout => \decoder|tick_gen|Equal2~1_combout\);

-- Location: LCCOMB_X74_Y62_N30
\decoder|tick_gen|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~8_combout\ = (!\decoder|tick_gen|stmanch\(7) & (\decoder|tick_gen|Equal1~2_combout\ & (\decoder|tick_gen|Equal1~7_combout\ & \decoder|tick_gen|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(7),
	datab => \decoder|tick_gen|Equal1~2_combout\,
	datac => \decoder|tick_gen|Equal1~7_combout\,
	datad => \decoder|tick_gen|Equal2~1_combout\,
	combout => \decoder|tick_gen|Equal1~8_combout\);

-- Location: FF_X74_Y62_N31
\decoder|tick_gen|tick_manch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Equal1~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|tick_manch~q\);

-- Location: FF_X74_Y61_N15
\decoder|demanchester|State.valid1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|demanchester|Selector3~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \decoder|tick_gen|tick_manch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|demanchester|State.valid1~q\);

-- Location: LCCOMB_X74_Y62_N18
\decoder|demanchester|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector1~0_combout\ = (!\decoder|demanchester|State.Init~q\ & \decoder|deburst|trame_deburst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|State.Init~q\,
	datad => \decoder|deburst|trame_deburst~q\,
	combout => \decoder|demanchester|Selector1~0_combout\);

-- Location: FF_X74_Y62_N19
\decoder|demanchester|State.Start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|demanchester|Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \decoder|tick_gen|tick_manch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|demanchester|State.Start~q\);

-- Location: LCCOMB_X74_Y62_N28
\decoder|demanchester|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector6~0_combout\ = (\decoder|deburst|trame_deburst~q\ & ((\decoder|demanchester|State.valid1~q\) # (\decoder|demanchester|State.Start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|trame_deburst~q\,
	datac => \decoder|demanchester|State.valid1~q\,
	datad => \decoder|demanchester|State.Start~q\,
	combout => \decoder|demanchester|Selector6~0_combout\);

-- Location: FF_X74_Y62_N29
\decoder|demanchester|State.suit10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|demanchester|Selector6~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \decoder|tick_gen|tick_manch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|demanchester|State.suit10~q\);

-- Location: LCCOMB_X74_Y61_N18
\decoder|demanchester|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector2~0_combout\ = (!\decoder|deburst|trame_deburst~q\ & ((\decoder|demanchester|State.suit00~q\) # (\decoder|demanchester|State.suit10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|State.suit00~q\,
	datab => \decoder|deburst|trame_deburst~q\,
	datad => \decoder|demanchester|State.suit10~q\,
	combout => \decoder|demanchester|Selector2~0_combout\);

-- Location: FF_X74_Y61_N19
\decoder|demanchester|State.valid0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|demanchester|Selector2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \decoder|tick_gen|tick_manch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|demanchester|State.valid0~q\);

-- Location: LCCOMB_X74_Y61_N2
\decoder|demanchester|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector5~0_combout\ = (\decoder|demanchester|State.valid0~q\ & !\decoder|deburst|trame_deburst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|demanchester|State.valid0~q\,
	datad => \decoder|deburst|trame_deburst~q\,
	combout => \decoder|demanchester|Selector5~0_combout\);

-- Location: FF_X74_Y61_N3
\decoder|demanchester|State.suit01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|demanchester|Selector5~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \decoder|tick_gen|tick_manch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|demanchester|State.suit01~q\);

-- Location: LCCOMB_X74_Y61_N22
\decoder|demanchester|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector0~0_combout\ = (!\decoder|deburst|trame_deburst~q\ & ((\decoder|demanchester|State.suit11~q\) # ((\decoder|demanchester|State.suit01~q\) # (!\decoder|demanchester|State.Init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|State.suit11~q\,
	datab => \decoder|demanchester|State.Init~q\,
	datac => \decoder|demanchester|State.suit01~q\,
	datad => \decoder|deburst|trame_deburst~q\,
	combout => \decoder|demanchester|Selector0~0_combout\);

-- Location: LCCOMB_X74_Y61_N4
\decoder|demanchester|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector0~1_combout\ = (!\decoder|demanchester|Selector0~0_combout\ & (((!\decoder|demanchester|State.suit00~q\ & !\decoder|demanchester|State.suit10~q\)) # (!\decoder|deburst|trame_deburst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|State.suit00~q\,
	datab => \decoder|deburst|trame_deburst~q\,
	datac => \decoder|demanchester|Selector0~0_combout\,
	datad => \decoder|demanchester|State.suit10~q\,
	combout => \decoder|demanchester|Selector0~1_combout\);

-- Location: FF_X74_Y61_N5
\decoder|demanchester|State.Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|demanchester|Selector0~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \decoder|tick_gen|tick_manch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|demanchester|State.Init~q\);

-- Location: LCCOMB_X74_Y61_N6
\decoder|demanchester|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector4~0_combout\ = (\decoder|demanchester|State.valid0~q\ & \decoder|deburst|trame_deburst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|demanchester|State.valid0~q\,
	datad => \decoder|deburst|trame_deburst~q\,
	combout => \decoder|demanchester|Selector4~0_combout\);

-- Location: FF_X74_Y61_N7
\decoder|demanchester|State.suit00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|demanchester|Selector4~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \decoder|tick_gen|tick_manch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|demanchester|State.suit00~q\);

-- Location: LCCOMB_X73_Y61_N0
\decoder|demanchester|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|WideOr0~0_combout\ = (!\decoder|demanchester|State.suit01~q\ & (!\decoder|demanchester|State.valid0~q\ & (\decoder|demanchester|State.Init~q\ & !\decoder|demanchester|State.suit00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|State.suit01~q\,
	datab => \decoder|demanchester|State.valid0~q\,
	datac => \decoder|demanchester|State.Init~q\,
	datad => \decoder|demanchester|State.suit00~q\,
	combout => \decoder|demanchester|WideOr0~0_combout\);

-- Location: LCCOMB_X76_Y61_N12
\decoder|tick_gen|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~44_combout\ = (\decoder|tick_gen|stbit\(22) & (\decoder|tick_gen|Add2~43\ $ (GND))) # (!\decoder|tick_gen|stbit\(22) & (!\decoder|tick_gen|Add2~43\ & VCC))
-- \decoder|tick_gen|Add2~45\ = CARRY((\decoder|tick_gen|stbit\(22) & !\decoder|tick_gen|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(22),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~43\,
	combout => \decoder|tick_gen|Add2~44_combout\,
	cout => \decoder|tick_gen|Add2~45\);

-- Location: FF_X76_Y61_N13
\decoder|tick_gen|stbit[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(22));

-- Location: LCCOMB_X77_Y61_N0
\decoder|tick_gen|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~5_combout\ = (!\decoder|tick_gen|stbit\(21) & (!\decoder|tick_gen|stbit\(22) & (!\decoder|tick_gen|stbit\(20) & !\decoder|tick_gen|stbit\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(21),
	datab => \decoder|tick_gen|stbit\(22),
	datac => \decoder|tick_gen|stbit\(20),
	datad => \decoder|tick_gen|stbit\(23),
	combout => \decoder|tick_gen|Equal2~5_combout\);

-- Location: LCCOMB_X76_Y61_N0
\decoder|tick_gen|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~32_combout\ = (\decoder|tick_gen|stbit\(16) & (!\decoder|tick_gen|Add2~31\ & VCC)) # (!\decoder|tick_gen|stbit\(16) & (\decoder|tick_gen|Add2~31\ $ (GND)))
-- \decoder|tick_gen|Add2~33\ = CARRY((!\decoder|tick_gen|stbit\(16) & !\decoder|tick_gen|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(16),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~31\,
	combout => \decoder|tick_gen|Add2~32_combout\,
	cout => \decoder|tick_gen|Add2~33\);

-- Location: LCCOMB_X77_Y62_N16
\decoder|tick_gen|stbit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~0_combout\ = ((!\decoder|tick_gen|stbit\(7) & (\decoder|tick_gen|Equal2~9_combout\ & \decoder|tick_gen|Equal2~4_combout\))) # (!\decoder|tick_gen|Add2~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(7),
	datab => \decoder|tick_gen|Equal2~9_combout\,
	datac => \decoder|tick_gen|Equal2~4_combout\,
	datad => \decoder|tick_gen|Add2~32_combout\,
	combout => \decoder|tick_gen|stbit~0_combout\);

-- Location: FF_X77_Y62_N17
\decoder|tick_gen|stbit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stbit~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(16));

-- Location: LCCOMB_X76_Y61_N6
\decoder|tick_gen|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~38_combout\ = (\decoder|tick_gen|stbit\(19) & (!\decoder|tick_gen|Add2~37\)) # (!\decoder|tick_gen|stbit\(19) & ((\decoder|tick_gen|Add2~37\) # (GND)))
-- \decoder|tick_gen|Add2~39\ = CARRY((!\decoder|tick_gen|Add2~37\) # (!\decoder|tick_gen|stbit\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(19),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~37\,
	combout => \decoder|tick_gen|Add2~38_combout\,
	cout => \decoder|tick_gen|Add2~39\);

-- Location: FF_X76_Y61_N7
\decoder|tick_gen|stbit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(19));

-- Location: LCCOMB_X77_Y61_N10
\decoder|tick_gen|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~6_combout\ = (!\decoder|tick_gen|stbit\(17) & (!\decoder|tick_gen|stbit\(18) & (!\decoder|tick_gen|stbit\(16) & !\decoder|tick_gen|stbit\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(17),
	datab => \decoder|tick_gen|stbit\(18),
	datac => \decoder|tick_gen|stbit\(16),
	datad => \decoder|tick_gen|stbit\(19),
	combout => \decoder|tick_gen|Equal2~6_combout\);

-- Location: LCCOMB_X76_Y62_N30
\decoder|tick_gen|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~30_combout\ = (\decoder|tick_gen|stbit\(15) & (!\decoder|tick_gen|Add2~29\)) # (!\decoder|tick_gen|stbit\(15) & ((\decoder|tick_gen|Add2~29\) # (GND)))
-- \decoder|tick_gen|Add2~31\ = CARRY((!\decoder|tick_gen|Add2~29\) # (!\decoder|tick_gen|stbit\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(15),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~29\,
	combout => \decoder|tick_gen|Add2~30_combout\,
	cout => \decoder|tick_gen|Add2~31\);

-- Location: FF_X76_Y62_N31
\decoder|tick_gen|stbit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(15));

-- Location: LCCOMB_X76_Y62_N28
\decoder|tick_gen|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~28_combout\ = (\decoder|tick_gen|stbit\(14) & (!\decoder|tick_gen|Add2~27\ & VCC)) # (!\decoder|tick_gen|stbit\(14) & (\decoder|tick_gen|Add2~27\ $ (GND)))
-- \decoder|tick_gen|Add2~29\ = CARRY((!\decoder|tick_gen|stbit\(14) & !\decoder|tick_gen|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(14),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~27\,
	combout => \decoder|tick_gen|Add2~28_combout\,
	cout => \decoder|tick_gen|Add2~29\);

-- Location: LCCOMB_X77_Y62_N2
\decoder|tick_gen|stbit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~1_combout\ = ((!\decoder|tick_gen|stbit\(7) & (\decoder|tick_gen|Equal2~9_combout\ & \decoder|tick_gen|Equal2~4_combout\))) # (!\decoder|tick_gen|Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(7),
	datab => \decoder|tick_gen|Equal2~9_combout\,
	datac => \decoder|tick_gen|Equal2~4_combout\,
	datad => \decoder|tick_gen|Add2~28_combout\,
	combout => \decoder|tick_gen|stbit~1_combout\);

-- Location: FF_X77_Y62_N3
\decoder|tick_gen|stbit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stbit~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(14));

-- Location: LCCOMB_X77_Y62_N10
\decoder|tick_gen|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~7_combout\ = (!\decoder|tick_gen|stbit\(13) & (!\decoder|tick_gen|stbit\(15) & (!\decoder|tick_gen|stbit\(12) & !\decoder|tick_gen|stbit\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(13),
	datab => \decoder|tick_gen|stbit\(15),
	datac => \decoder|tick_gen|stbit\(12),
	datad => \decoder|tick_gen|stbit\(14),
	combout => \decoder|tick_gen|Equal2~7_combout\);

-- Location: LCCOMB_X77_Y62_N0
\decoder|tick_gen|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~9_combout\ = (\decoder|tick_gen|Equal2~8_combout\ & (\decoder|tick_gen|Equal2~5_combout\ & (\decoder|tick_gen|Equal2~6_combout\ & \decoder|tick_gen|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal2~8_combout\,
	datab => \decoder|tick_gen|Equal2~5_combout\,
	datac => \decoder|tick_gen|Equal2~6_combout\,
	datad => \decoder|tick_gen|Equal2~7_combout\,
	combout => \decoder|tick_gen|Equal2~9_combout\);

-- Location: LCCOMB_X76_Y62_N14
\decoder|tick_gen|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~14_combout\ = (\decoder|tick_gen|stbit\(7) & (!\decoder|tick_gen|Add2~13\)) # (!\decoder|tick_gen|stbit\(7) & ((\decoder|tick_gen|Add2~13\) # (GND)))
-- \decoder|tick_gen|Add2~15\ = CARRY((!\decoder|tick_gen|Add2~13\) # (!\decoder|tick_gen|stbit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(7),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~13\,
	combout => \decoder|tick_gen|Add2~14_combout\,
	cout => \decoder|tick_gen|Add2~15\);

-- Location: FF_X76_Y62_N15
\decoder|tick_gen|stbit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(7));

-- Location: LCCOMB_X76_Y62_N20
\decoder|tick_gen|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~20_combout\ = (\decoder|tick_gen|stbit\(10) & (\decoder|tick_gen|Add2~19\ $ (GND))) # (!\decoder|tick_gen|stbit\(10) & (!\decoder|tick_gen|Add2~19\ & VCC))
-- \decoder|tick_gen|Add2~21\ = CARRY((\decoder|tick_gen|stbit\(10) & !\decoder|tick_gen|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(10),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~19\,
	combout => \decoder|tick_gen|Add2~20_combout\,
	cout => \decoder|tick_gen|Add2~21\);

-- Location: FF_X76_Y62_N21
\decoder|tick_gen|stbit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(10));

-- Location: LCCOMB_X76_Y62_N24
\decoder|tick_gen|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~24_combout\ = (\decoder|tick_gen|stbit\(12) & (!\decoder|tick_gen|Add2~23\ & VCC)) # (!\decoder|tick_gen|stbit\(12) & (\decoder|tick_gen|Add2~23\ $ (GND)))
-- \decoder|tick_gen|Add2~25\ = CARRY((!\decoder|tick_gen|stbit\(12) & !\decoder|tick_gen|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(12),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~23\,
	combout => \decoder|tick_gen|Add2~24_combout\,
	cout => \decoder|tick_gen|Add2~25\);

-- Location: LCCOMB_X77_Y62_N8
\decoder|tick_gen|stbit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~2_combout\ = ((!\decoder|tick_gen|stbit\(7) & (\decoder|tick_gen|Equal2~9_combout\ & \decoder|tick_gen|Equal2~4_combout\))) # (!\decoder|tick_gen|Add2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(7),
	datab => \decoder|tick_gen|Equal2~9_combout\,
	datac => \decoder|tick_gen|Equal2~4_combout\,
	datad => \decoder|tick_gen|Add2~24_combout\,
	combout => \decoder|tick_gen|stbit~2_combout\);

-- Location: FF_X77_Y62_N9
\decoder|tick_gen|stbit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stbit~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(12));

-- Location: LCCOMB_X76_Y61_N2
\decoder|tick_gen|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~34_combout\ = (\decoder|tick_gen|stbit\(17) & (!\decoder|tick_gen|Add2~33\)) # (!\decoder|tick_gen|stbit\(17) & ((\decoder|tick_gen|Add2~33\) # (GND)))
-- \decoder|tick_gen|Add2~35\ = CARRY((!\decoder|tick_gen|Add2~33\) # (!\decoder|tick_gen|stbit\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(17),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~33\,
	combout => \decoder|tick_gen|Add2~34_combout\,
	cout => \decoder|tick_gen|Add2~35\);

-- Location: FF_X76_Y61_N3
\decoder|tick_gen|stbit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(17));

-- Location: LCCOMB_X76_Y61_N4
\decoder|tick_gen|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~36_combout\ = (\decoder|tick_gen|stbit\(18) & (\decoder|tick_gen|Add2~35\ $ (GND))) # (!\decoder|tick_gen|stbit\(18) & (!\decoder|tick_gen|Add2~35\ & VCC))
-- \decoder|tick_gen|Add2~37\ = CARRY((\decoder|tick_gen|stbit\(18) & !\decoder|tick_gen|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(18),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~35\,
	combout => \decoder|tick_gen|Add2~36_combout\,
	cout => \decoder|tick_gen|Add2~37\);

-- Location: FF_X76_Y61_N5
\decoder|tick_gen|stbit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(18));

-- Location: LCCOMB_X76_Y61_N8
\decoder|tick_gen|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~40_combout\ = (\decoder|tick_gen|stbit\(20) & (\decoder|tick_gen|Add2~39\ $ (GND))) # (!\decoder|tick_gen|stbit\(20) & (!\decoder|tick_gen|Add2~39\ & VCC))
-- \decoder|tick_gen|Add2~41\ = CARRY((\decoder|tick_gen|stbit\(20) & !\decoder|tick_gen|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(20),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~39\,
	combout => \decoder|tick_gen|Add2~40_combout\,
	cout => \decoder|tick_gen|Add2~41\);

-- Location: FF_X76_Y61_N9
\decoder|tick_gen|stbit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(20));

-- Location: LCCOMB_X76_Y61_N14
\decoder|tick_gen|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~46_combout\ = (\decoder|tick_gen|stbit\(23) & (!\decoder|tick_gen|Add2~45\)) # (!\decoder|tick_gen|stbit\(23) & ((\decoder|tick_gen|Add2~45\) # (GND)))
-- \decoder|tick_gen|Add2~47\ = CARRY((!\decoder|tick_gen|Add2~45\) # (!\decoder|tick_gen|stbit\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(23),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~45\,
	combout => \decoder|tick_gen|Add2~46_combout\,
	cout => \decoder|tick_gen|Add2~47\);

-- Location: FF_X76_Y61_N15
\decoder|tick_gen|stbit[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(23));

-- Location: LCCOMB_X76_Y61_N16
\decoder|tick_gen|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~48_combout\ = (\decoder|tick_gen|stbit\(24) & (\decoder|tick_gen|Add2~47\ $ (GND))) # (!\decoder|tick_gen|stbit\(24) & (!\decoder|tick_gen|Add2~47\ & VCC))
-- \decoder|tick_gen|Add2~49\ = CARRY((\decoder|tick_gen|stbit\(24) & !\decoder|tick_gen|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(24),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~47\,
	combout => \decoder|tick_gen|Add2~48_combout\,
	cout => \decoder|tick_gen|Add2~49\);

-- Location: FF_X76_Y61_N17
\decoder|tick_gen|stbit[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(24));

-- Location: LCCOMB_X76_Y61_N18
\decoder|tick_gen|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~50_combout\ = (\decoder|tick_gen|stbit\(25) & (!\decoder|tick_gen|Add2~49\)) # (!\decoder|tick_gen|stbit\(25) & ((\decoder|tick_gen|Add2~49\) # (GND)))
-- \decoder|tick_gen|Add2~51\ = CARRY((!\decoder|tick_gen|Add2~49\) # (!\decoder|tick_gen|stbit\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(25),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~49\,
	combout => \decoder|tick_gen|Add2~50_combout\,
	cout => \decoder|tick_gen|Add2~51\);

-- Location: FF_X76_Y61_N19
\decoder|tick_gen|stbit[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~50_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(25));

-- Location: LCCOMB_X76_Y61_N20
\decoder|tick_gen|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~52_combout\ = (\decoder|tick_gen|stbit\(26) & (\decoder|tick_gen|Add2~51\ $ (GND))) # (!\decoder|tick_gen|stbit\(26) & (!\decoder|tick_gen|Add2~51\ & VCC))
-- \decoder|tick_gen|Add2~53\ = CARRY((\decoder|tick_gen|stbit\(26) & !\decoder|tick_gen|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(26),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~51\,
	combout => \decoder|tick_gen|Add2~52_combout\,
	cout => \decoder|tick_gen|Add2~53\);

-- Location: FF_X76_Y61_N21
\decoder|tick_gen|stbit[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~52_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(26));

-- Location: LCCOMB_X76_Y61_N22
\decoder|tick_gen|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~54_combout\ = (\decoder|tick_gen|stbit\(27) & (!\decoder|tick_gen|Add2~53\)) # (!\decoder|tick_gen|stbit\(27) & ((\decoder|tick_gen|Add2~53\) # (GND)))
-- \decoder|tick_gen|Add2~55\ = CARRY((!\decoder|tick_gen|Add2~53\) # (!\decoder|tick_gen|stbit\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(27),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~53\,
	combout => \decoder|tick_gen|Add2~54_combout\,
	cout => \decoder|tick_gen|Add2~55\);

-- Location: FF_X76_Y61_N23
\decoder|tick_gen|stbit[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~54_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(27));

-- Location: LCCOMB_X77_Y61_N22
\decoder|tick_gen|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~3_combout\ = (!\decoder|tick_gen|stbit\(26) & (!\decoder|tick_gen|stbit\(25) & (!\decoder|tick_gen|stbit\(24) & !\decoder|tick_gen|stbit\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(26),
	datab => \decoder|tick_gen|stbit\(25),
	datac => \decoder|tick_gen|stbit\(24),
	datad => \decoder|tick_gen|stbit\(27),
	combout => \decoder|tick_gen|Equal2~3_combout\);

-- Location: LCCOMB_X76_Y61_N24
\decoder|tick_gen|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~56_combout\ = (\decoder|tick_gen|stbit\(28) & (\decoder|tick_gen|Add2~55\ $ (GND))) # (!\decoder|tick_gen|stbit\(28) & (!\decoder|tick_gen|Add2~55\ & VCC))
-- \decoder|tick_gen|Add2~57\ = CARRY((\decoder|tick_gen|stbit\(28) & !\decoder|tick_gen|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(28),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~55\,
	combout => \decoder|tick_gen|Add2~56_combout\,
	cout => \decoder|tick_gen|Add2~57\);

-- Location: FF_X76_Y61_N25
\decoder|tick_gen|stbit[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~56_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(28));

-- Location: LCCOMB_X76_Y61_N26
\decoder|tick_gen|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~58_combout\ = (\decoder|tick_gen|stbit\(29) & (!\decoder|tick_gen|Add2~57\)) # (!\decoder|tick_gen|stbit\(29) & ((\decoder|tick_gen|Add2~57\) # (GND)))
-- \decoder|tick_gen|Add2~59\ = CARRY((!\decoder|tick_gen|Add2~57\) # (!\decoder|tick_gen|stbit\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(29),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~57\,
	combout => \decoder|tick_gen|Add2~58_combout\,
	cout => \decoder|tick_gen|Add2~59\);

-- Location: LCCOMB_X76_Y61_N28
\decoder|tick_gen|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~60_combout\ = (\decoder|tick_gen|stbit\(30) & (\decoder|tick_gen|Add2~59\ $ (GND))) # (!\decoder|tick_gen|stbit\(30) & (!\decoder|tick_gen|Add2~59\ & VCC))
-- \decoder|tick_gen|Add2~61\ = CARRY((\decoder|tick_gen|stbit\(30) & !\decoder|tick_gen|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(30),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~59\,
	combout => \decoder|tick_gen|Add2~60_combout\,
	cout => \decoder|tick_gen|Add2~61\);

-- Location: FF_X76_Y61_N29
\decoder|tick_gen|stbit[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~60_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(30));

-- Location: LCCOMB_X76_Y61_N30
\decoder|tick_gen|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~62_combout\ = \decoder|tick_gen|stbit\(31) $ (\decoder|tick_gen|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(31),
	cin => \decoder|tick_gen|Add2~61\,
	combout => \decoder|tick_gen|Add2~62_combout\);

-- Location: FF_X76_Y61_N31
\decoder|tick_gen|stbit[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~62_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(31));

-- Location: FF_X76_Y61_N27
\decoder|tick_gen|stbit[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~58_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(29));

-- Location: LCCOMB_X77_Y61_N12
\decoder|tick_gen|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~2_combout\ = (!\decoder|tick_gen|stbit\(30) & (!\decoder|tick_gen|stbit\(31) & (!\decoder|tick_gen|stbit\(29) & !\decoder|tick_gen|stbit\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(30),
	datab => \decoder|tick_gen|stbit\(31),
	datac => \decoder|tick_gen|stbit\(29),
	datad => \decoder|tick_gen|stbit\(28),
	combout => \decoder|tick_gen|Equal2~2_combout\);

-- Location: LCCOMB_X77_Y62_N26
\decoder|tick_gen|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~4_combout\ = (\decoder|tick_gen|Equal2~3_combout\ & (\decoder|tick_gen|Equal2~1_combout\ & \decoder|tick_gen|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|Equal2~3_combout\,
	datac => \decoder|tick_gen|Equal2~1_combout\,
	datad => \decoder|tick_gen|Equal2~2_combout\,
	combout => \decoder|tick_gen|Equal2~4_combout\);

-- Location: LCCOMB_X77_Y62_N24
\decoder|tick_gen|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~10_combout\ = (!\decoder|tick_gen|stbit\(7) & (\decoder|tick_gen|Equal2~4_combout\ & \decoder|tick_gen|Equal2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(7),
	datac => \decoder|tick_gen|Equal2~4_combout\,
	datad => \decoder|tick_gen|Equal2~9_combout\,
	combout => \decoder|tick_gen|Equal2~10_combout\);

-- Location: FF_X77_Y62_N25
\decoder|tick_gen|tick_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Equal2~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|tick_bit~q\);

-- Location: LCCOMB_X75_Y66_N30
\decoder|decoder|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector12~0_combout\ = (\decoder|decoder|EF.State_Init~q\ & \decoder|tick_gen|tick_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Init~q\,
	datad => \decoder|tick_gen|tick_bit~q\,
	combout => \decoder|decoder|Selector12~0_combout\);

-- Location: LCCOMB_X74_Y66_N12
\decoder|decoder|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector3~0_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|tick_gen|tick_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|tick_gen|tick_bit~q\,
	combout => \decoder|decoder|Selector3~0_combout\);

-- Location: LCCOMB_X74_Y66_N10
\decoder|decoder|EF~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|EF~14_combout\ = (\decoder|decoder|Selector4~0_combout\ & (!\decoder|decoder|Selector12~0_combout\ & ((!\decoder|decoder|process_0~0_combout\) # (!\decoder|decoder|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Selector4~0_combout\,
	datab => \decoder|decoder|Selector3~0_combout\,
	datac => \decoder|decoder|Selector12~0_combout\,
	datad => \decoder|decoder|process_0~0_combout\,
	combout => \decoder|decoder|EF~14_combout\);

-- Location: LCCOMB_X74_Y66_N0
\decoder|decoder|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector4~1_combout\ = (\decoder|decoder|EF.State_Extract~q\ & (\decoder|decoder|EF~14_combout\ & ((\decoder|decoder|EF.State_Begin~q\) # (!\decoder|demanchester|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Begin~q\,
	datab => \decoder|decoder|EF.State_Extract~q\,
	datac => \decoder|demanchester|WideOr0~0_combout\,
	datad => \decoder|decoder|EF~14_combout\,
	combout => \decoder|decoder|Selector4~1_combout\);

-- Location: LCCOMB_X74_Y66_N16
\decoder|decoder|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector4~2_combout\ = (\decoder|decoder|Selector4~1_combout\) # ((\decoder|decoder|Selector4~0_combout\ & (\decoder|demanchester|WideOr0~0_combout\ & \decoder|decoder|Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Selector4~0_combout\,
	datab => \decoder|demanchester|WideOr0~0_combout\,
	datac => \decoder|decoder|Selector12~0_combout\,
	datad => \decoder|decoder|Selector4~1_combout\,
	combout => \decoder|decoder|Selector4~2_combout\);

-- Location: FF_X74_Y66_N17
\decoder|decoder|EF.State_Extract\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Selector4~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|EF.State_Extract~q\);

-- Location: LCCOMB_X76_Y67_N0
\decoder|decoder|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~0_combout\ = \decoder|decoder|i\(0) $ (GND)
-- \decoder|decoder|Add0~1\ = CARRY(!\decoder|decoder|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(0),
	datad => VCC,
	combout => \decoder|decoder|Add0~0_combout\,
	cout => \decoder|decoder|Add0~1\);

-- Location: LCCOMB_X76_Y67_N2
\decoder|decoder|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~3_combout\ = (\decoder|decoder|i\(1) & (\decoder|decoder|Add0~1\ & VCC)) # (!\decoder|decoder|i\(1) & (!\decoder|decoder|Add0~1\))
-- \decoder|decoder|Add0~4\ = CARRY((!\decoder|decoder|i\(1) & !\decoder|decoder|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(1),
	datad => VCC,
	cin => \decoder|decoder|Add0~1\,
	combout => \decoder|decoder|Add0~3_combout\,
	cout => \decoder|decoder|Add0~4\);

-- Location: LCCOMB_X76_Y67_N4
\decoder|decoder|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~6_combout\ = (\decoder|decoder|i\(2) & ((GND) # (!\decoder|decoder|Add0~4\))) # (!\decoder|decoder|i\(2) & (\decoder|decoder|Add0~4\ $ (GND)))
-- \decoder|decoder|Add0~7\ = CARRY((\decoder|decoder|i\(2)) # (!\decoder|decoder|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(2),
	datad => VCC,
	cin => \decoder|decoder|Add0~4\,
	combout => \decoder|decoder|Add0~6_combout\,
	cout => \decoder|decoder|Add0~7\);

-- Location: LCCOMB_X76_Y67_N6
\decoder|decoder|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~9_combout\ = (\decoder|decoder|i\(3) & (\decoder|decoder|Add0~7\ & VCC)) # (!\decoder|decoder|i\(3) & (!\decoder|decoder|Add0~7\))
-- \decoder|decoder|Add0~10\ = CARRY((!\decoder|decoder|i\(3) & !\decoder|decoder|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(3),
	datad => VCC,
	cin => \decoder|decoder|Add0~7\,
	combout => \decoder|decoder|Add0~9_combout\,
	cout => \decoder|decoder|Add0~10\);

-- Location: LCCOMB_X75_Y67_N28
\decoder|decoder|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~11_combout\ = (\decoder|decoder|Add0~9_combout\) # (!\decoder|decoder|EF.State_Extract~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~9_combout\,
	combout => \decoder|decoder|Add0~11_combout\);

-- Location: LCCOMB_X75_Y66_N0
\decoder|decoder|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector7~0_combout\ = (\decoder|decoder|EF.State_Extract~q\) # ((\decoder|decoder|EF.State_Init~q\ & \decoder|tick_gen|tick_bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Init~q\,
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|tick_gen|tick_bit~q\,
	combout => \decoder|decoder|Selector7~0_combout\);

-- Location: LCCOMB_X76_Y67_N16
\decoder|decoder|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~20_combout\ = (\decoder|decoder|i\(8) & ((GND) # (!\decoder|decoder|Add0~19\))) # (!\decoder|decoder|i\(8) & (\decoder|decoder|Add0~19\ $ (GND)))
-- \decoder|decoder|Add0~21\ = CARRY((\decoder|decoder|i\(8)) # (!\decoder|decoder|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(8),
	datad => VCC,
	cin => \decoder|decoder|Add0~19\,
	combout => \decoder|decoder|Add0~20_combout\,
	cout => \decoder|decoder|Add0~21\);

-- Location: LCCOMB_X74_Y67_N20
\decoder|decoder|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~91_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~20_combout\,
	combout => \decoder|decoder|Add0~91_combout\);

-- Location: FF_X74_Y67_N21
\decoder|decoder|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~91_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(8));

-- Location: LCCOMB_X76_Y67_N14
\decoder|decoder|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~18_combout\ = (\decoder|decoder|i\(7) & (\decoder|decoder|Add0~17\ & VCC)) # (!\decoder|decoder|i\(7) & (!\decoder|decoder|Add0~17\))
-- \decoder|decoder|Add0~19\ = CARRY((!\decoder|decoder|i\(7) & !\decoder|decoder|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(7),
	datad => VCC,
	cin => \decoder|decoder|Add0~17\,
	combout => \decoder|decoder|Add0~18_combout\,
	cout => \decoder|decoder|Add0~19\);

-- Location: LCCOMB_X74_Y67_N26
\decoder|decoder|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~92_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~18_combout\,
	combout => \decoder|decoder|Add0~92_combout\);

-- Location: FF_X74_Y67_N27
\decoder|decoder|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~92_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(7));

-- Location: LCCOMB_X76_Y67_N12
\decoder|decoder|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~16_combout\ = (\decoder|decoder|i\(6) & ((GND) # (!\decoder|decoder|Add0~15\))) # (!\decoder|decoder|i\(6) & (\decoder|decoder|Add0~15\ $ (GND)))
-- \decoder|decoder|Add0~17\ = CARRY((\decoder|decoder|i\(6)) # (!\decoder|decoder|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(6),
	datad => VCC,
	cin => \decoder|decoder|Add0~15\,
	combout => \decoder|decoder|Add0~16_combout\,
	cout => \decoder|decoder|Add0~17\);

-- Location: LCCOMB_X75_Y67_N26
\decoder|decoder|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~93_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datac => \decoder|decoder|Add0~16_combout\,
	combout => \decoder|decoder|Add0~93_combout\);

-- Location: FF_X75_Y67_N27
\decoder|decoder|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~93_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(6));

-- Location: LCCOMB_X74_Y67_N18
\decoder|decoder|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~7_combout\ = (((!\decoder|decoder|i\(6)) # (!\decoder|decoder|i\(7))) # (!\decoder|decoder|i\(8))) # (!\decoder|decoder|i\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(5),
	datab => \decoder|decoder|i\(8),
	datac => \decoder|decoder|i\(7),
	datad => \decoder|decoder|i\(6),
	combout => \decoder|decoder|Equal0~7_combout\);

-- Location: LCCOMB_X76_Y67_N8
\decoder|decoder|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~12_combout\ = (\decoder|decoder|i\(4) & ((GND) # (!\decoder|decoder|Add0~10\))) # (!\decoder|decoder|i\(4) & (\decoder|decoder|Add0~10\ $ (GND)))
-- \decoder|decoder|Add0~13\ = CARRY((\decoder|decoder|i\(4)) # (!\decoder|decoder|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(4),
	datad => VCC,
	cin => \decoder|decoder|Add0~10\,
	combout => \decoder|decoder|Add0~12_combout\,
	cout => \decoder|decoder|Add0~13\);

-- Location: LCCOMB_X75_Y67_N16
\decoder|decoder|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~95_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datac => \decoder|decoder|Add0~12_combout\,
	combout => \decoder|decoder|Add0~95_combout\);

-- Location: FF_X75_Y67_N17
\decoder|decoder|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~95_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(4));

-- Location: LCCOMB_X75_Y67_N8
\decoder|decoder|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~5_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~3_combout\,
	combout => \decoder|decoder|Add0~5_combout\);

-- Location: FF_X75_Y67_N9
\decoder|decoder|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~5_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(1));

-- Location: LCCOMB_X75_Y67_N30
\decoder|decoder|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~8_combout\ = (((!\decoder|decoder|i\(3)) # (!\decoder|decoder|i\(1))) # (!\decoder|decoder|i\(4))) # (!\decoder|decoder|i\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(2),
	datab => \decoder|decoder|i\(4),
	datac => \decoder|decoder|i\(1),
	datad => \decoder|decoder|i\(3),
	combout => \decoder|decoder|Equal0~8_combout\);

-- Location: LCCOMB_X76_Y67_N28
\decoder|decoder|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~32_combout\ = (\decoder|decoder|i\(14) & ((GND) # (!\decoder|decoder|Add0~31\))) # (!\decoder|decoder|i\(14) & (\decoder|decoder|Add0~31\ $ (GND)))
-- \decoder|decoder|Add0~33\ = CARRY((\decoder|decoder|i\(14)) # (!\decoder|decoder|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(14),
	datad => VCC,
	cin => \decoder|decoder|Add0~31\,
	combout => \decoder|decoder|Add0~32_combout\,
	cout => \decoder|decoder|Add0~33\);

-- Location: LCCOMB_X75_Y67_N14
\decoder|decoder|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~85_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~32_combout\,
	combout => \decoder|decoder|Add0~85_combout\);

-- Location: FF_X75_Y67_N15
\decoder|decoder|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~85_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(14));

-- Location: LCCOMB_X75_Y67_N18
\decoder|decoder|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~5_combout\ = (((!\decoder|decoder|i\(15)) # (!\decoder|decoder|i\(14))) # (!\decoder|decoder|i\(13))) # (!\decoder|decoder|i\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(16),
	datab => \decoder|decoder|i\(13),
	datac => \decoder|decoder|i\(14),
	datad => \decoder|decoder|i\(15),
	combout => \decoder|decoder|Equal0~5_combout\);

-- Location: LCCOMB_X74_Y67_N28
\decoder|decoder|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~9_combout\ = (\decoder|decoder|Equal0~6_combout\) # ((\decoder|decoder|Equal0~7_combout\) # ((\decoder|decoder|Equal0~8_combout\) # (\decoder|decoder|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Equal0~6_combout\,
	datab => \decoder|decoder|Equal0~7_combout\,
	datac => \decoder|decoder|Equal0~8_combout\,
	datad => \decoder|decoder|Equal0~5_combout\,
	combout => \decoder|decoder|Equal0~9_combout\);

-- Location: LCCOMB_X75_Y66_N24
\decoder|decoder|i[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|i[0]~0_combout\ = (!\decoder|decoder|Selector12~0_combout\ & (((!\decoder|decoder|Equal0~4_combout\ & !\decoder|decoder|Equal0~9_combout\)) # (!\decoder|demanchester|State.Init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Selector12~0_combout\,
	datab => \decoder|demanchester|State.Init~q\,
	datac => \decoder|decoder|Equal0~4_combout\,
	datad => \decoder|decoder|Equal0~9_combout\,
	combout => \decoder|decoder|i[0]~0_combout\);

-- Location: LCCOMB_X75_Y66_N26
\decoder|decoder|i[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|i[0]~1_combout\ = (\decoder|tick_gen|tick_bit~q\ & (\decoder|decoder|Selector7~0_combout\ & (!\rst~input_o\ & !\decoder|decoder|i[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|tick_bit~q\,
	datab => \decoder|decoder|Selector7~0_combout\,
	datac => \rst~input_o\,
	datad => \decoder|decoder|i[0]~0_combout\,
	combout => \decoder|decoder|i[0]~1_combout\);

-- Location: FF_X75_Y67_N29
\decoder|decoder|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~11_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(3));

-- Location: LCCOMB_X76_Y67_N18
\decoder|decoder|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~22_combout\ = (\decoder|decoder|i\(9) & (\decoder|decoder|Add0~21\ & VCC)) # (!\decoder|decoder|i\(9) & (!\decoder|decoder|Add0~21\))
-- \decoder|decoder|Add0~23\ = CARRY((!\decoder|decoder|i\(9) & !\decoder|decoder|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(9),
	datad => VCC,
	cin => \decoder|decoder|Add0~21\,
	combout => \decoder|decoder|Add0~22_combout\,
	cout => \decoder|decoder|Add0~23\);

-- Location: LCCOMB_X75_Y67_N22
\decoder|decoder|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~90_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~22_combout\,
	combout => \decoder|decoder|Add0~90_combout\);

-- Location: FF_X75_Y67_N23
\decoder|decoder|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~90_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(9));

-- Location: LCCOMB_X76_Y67_N26
\decoder|decoder|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~30_combout\ = (\decoder|decoder|i\(13) & (\decoder|decoder|Add0~29\ & VCC)) # (!\decoder|decoder|i\(13) & (!\decoder|decoder|Add0~29\))
-- \decoder|decoder|Add0~31\ = CARRY((!\decoder|decoder|i\(13) & !\decoder|decoder|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(13),
	datad => VCC,
	cin => \decoder|decoder|Add0~29\,
	combout => \decoder|decoder|Add0~30_combout\,
	cout => \decoder|decoder|Add0~31\);

-- Location: LCCOMB_X75_Y67_N24
\decoder|decoder|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~86_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~30_combout\,
	combout => \decoder|decoder|Add0~86_combout\);

-- Location: FF_X75_Y67_N25
\decoder|decoder|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~86_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(13));

-- Location: LCCOMB_X76_Y67_N30
\decoder|decoder|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~34_combout\ = (\decoder|decoder|i\(15) & (\decoder|decoder|Add0~33\ & VCC)) # (!\decoder|decoder|i\(15) & (!\decoder|decoder|Add0~33\))
-- \decoder|decoder|Add0~35\ = CARRY((!\decoder|decoder|i\(15) & !\decoder|decoder|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(15),
	datad => VCC,
	cin => \decoder|decoder|Add0~33\,
	combout => \decoder|decoder|Add0~34_combout\,
	cout => \decoder|decoder|Add0~35\);

-- Location: LCCOMB_X75_Y67_N20
\decoder|decoder|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~84_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datac => \decoder|decoder|Add0~34_combout\,
	combout => \decoder|decoder|Add0~84_combout\);

-- Location: FF_X75_Y67_N21
\decoder|decoder|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~84_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(15));

-- Location: LCCOMB_X76_Y66_N2
\decoder|decoder|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~38_combout\ = (\decoder|decoder|i\(17) & (\decoder|decoder|Add0~37\ & VCC)) # (!\decoder|decoder|i\(17) & (!\decoder|decoder|Add0~37\))
-- \decoder|decoder|Add0~39\ = CARRY((!\decoder|decoder|i\(17) & !\decoder|decoder|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(17),
	datad => VCC,
	cin => \decoder|decoder|Add0~37\,
	combout => \decoder|decoder|Add0~38_combout\,
	cout => \decoder|decoder|Add0~39\);

-- Location: LCCOMB_X76_Y66_N4
\decoder|decoder|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~40_combout\ = (\decoder|decoder|i\(18) & ((GND) # (!\decoder|decoder|Add0~39\))) # (!\decoder|decoder|i\(18) & (\decoder|decoder|Add0~39\ $ (GND)))
-- \decoder|decoder|Add0~41\ = CARRY((\decoder|decoder|i\(18)) # (!\decoder|decoder|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(18),
	datad => VCC,
	cin => \decoder|decoder|Add0~39\,
	combout => \decoder|decoder|Add0~40_combout\,
	cout => \decoder|decoder|Add0~41\);

-- Location: LCCOMB_X76_Y66_N6
\decoder|decoder|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~42_combout\ = (\decoder|decoder|i\(19) & (\decoder|decoder|Add0~41\ & VCC)) # (!\decoder|decoder|i\(19) & (!\decoder|decoder|Add0~41\))
-- \decoder|decoder|Add0~43\ = CARRY((!\decoder|decoder|i\(19) & !\decoder|decoder|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(19),
	datad => VCC,
	cin => \decoder|decoder|Add0~41\,
	combout => \decoder|decoder|Add0~42_combout\,
	cout => \decoder|decoder|Add0~43\);

-- Location: LCCOMB_X77_Y66_N22
\decoder|decoder|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~80_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datac => \decoder|decoder|Add0~42_combout\,
	combout => \decoder|decoder|Add0~80_combout\);

-- Location: FF_X77_Y66_N23
\decoder|decoder|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~80_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(19));

-- Location: LCCOMB_X76_Y66_N8
\decoder|decoder|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~44_combout\ = (\decoder|decoder|i\(20) & ((GND) # (!\decoder|decoder|Add0~43\))) # (!\decoder|decoder|i\(20) & (\decoder|decoder|Add0~43\ $ (GND)))
-- \decoder|decoder|Add0~45\ = CARRY((\decoder|decoder|i\(20)) # (!\decoder|decoder|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(20),
	datad => VCC,
	cin => \decoder|decoder|Add0~43\,
	combout => \decoder|decoder|Add0~44_combout\,
	cout => \decoder|decoder|Add0~45\);

-- Location: LCCOMB_X77_Y66_N16
\decoder|decoder|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~79_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~44_combout\,
	combout => \decoder|decoder|Add0~79_combout\);

-- Location: FF_X77_Y66_N17
\decoder|decoder|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~79_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(20));

-- Location: LCCOMB_X76_Y66_N12
\decoder|decoder|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~48_combout\ = (\decoder|decoder|i\(22) & ((GND) # (!\decoder|decoder|Add0~47\))) # (!\decoder|decoder|i\(22) & (\decoder|decoder|Add0~47\ $ (GND)))
-- \decoder|decoder|Add0~49\ = CARRY((\decoder|decoder|i\(22)) # (!\decoder|decoder|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(22),
	datad => VCC,
	cin => \decoder|decoder|Add0~47\,
	combout => \decoder|decoder|Add0~48_combout\,
	cout => \decoder|decoder|Add0~49\);

-- Location: LCCOMB_X75_Y66_N6
\decoder|decoder|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~77_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datac => \decoder|decoder|Add0~48_combout\,
	combout => \decoder|decoder|Add0~77_combout\);

-- Location: FF_X75_Y66_N7
\decoder|decoder|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~77_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(22));

-- Location: LCCOMB_X76_Y66_N14
\decoder|decoder|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~50_combout\ = (\decoder|decoder|i\(23) & (\decoder|decoder|Add0~49\ & VCC)) # (!\decoder|decoder|i\(23) & (!\decoder|decoder|Add0~49\))
-- \decoder|decoder|Add0~51\ = CARRY((!\decoder|decoder|i\(23) & !\decoder|decoder|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(23),
	datad => VCC,
	cin => \decoder|decoder|Add0~49\,
	combout => \decoder|decoder|Add0~50_combout\,
	cout => \decoder|decoder|Add0~51\);

-- Location: LCCOMB_X75_Y66_N20
\decoder|decoder|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~76_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~50_combout\,
	combout => \decoder|decoder|Add0~76_combout\);

-- Location: FF_X75_Y66_N21
\decoder|decoder|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~76_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(23));

-- Location: LCCOMB_X76_Y66_N18
\decoder|decoder|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~54_combout\ = (\decoder|decoder|i\(25) & (\decoder|decoder|Add0~53\ & VCC)) # (!\decoder|decoder|i\(25) & (!\decoder|decoder|Add0~53\))
-- \decoder|decoder|Add0~55\ = CARRY((!\decoder|decoder|i\(25) & !\decoder|decoder|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(25),
	datad => VCC,
	cin => \decoder|decoder|Add0~53\,
	combout => \decoder|decoder|Add0~54_combout\,
	cout => \decoder|decoder|Add0~55\);

-- Location: LCCOMB_X75_Y66_N18
\decoder|decoder|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~74_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~54_combout\,
	combout => \decoder|decoder|Add0~74_combout\);

-- Location: FF_X75_Y66_N19
\decoder|decoder|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~74_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(25));

-- Location: LCCOMB_X76_Y66_N22
\decoder|decoder|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~58_combout\ = (\decoder|decoder|i\(27) & (\decoder|decoder|Add0~57\ & VCC)) # (!\decoder|decoder|i\(27) & (!\decoder|decoder|Add0~57\))
-- \decoder|decoder|Add0~59\ = CARRY((!\decoder|decoder|i\(27) & !\decoder|decoder|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(27),
	datad => VCC,
	cin => \decoder|decoder|Add0~57\,
	combout => \decoder|decoder|Add0~58_combout\,
	cout => \decoder|decoder|Add0~59\);

-- Location: LCCOMB_X76_Y66_N24
\decoder|decoder|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~60_combout\ = (\decoder|decoder|i\(28) & ((GND) # (!\decoder|decoder|Add0~59\))) # (!\decoder|decoder|i\(28) & (\decoder|decoder|Add0~59\ $ (GND)))
-- \decoder|decoder|Add0~61\ = CARRY((\decoder|decoder|i\(28)) # (!\decoder|decoder|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(28),
	datad => VCC,
	cin => \decoder|decoder|Add0~59\,
	combout => \decoder|decoder|Add0~60_combout\,
	cout => \decoder|decoder|Add0~61\);

-- Location: LCCOMB_X75_Y66_N4
\decoder|decoder|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~71_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~60_combout\,
	combout => \decoder|decoder|Add0~71_combout\);

-- Location: FF_X75_Y66_N5
\decoder|decoder|i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~71_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(28));

-- Location: LCCOMB_X75_Y66_N10
\decoder|decoder|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~72_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~58_combout\,
	combout => \decoder|decoder|Add0~72_combout\);

-- Location: FF_X75_Y66_N11
\decoder|decoder|i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~72_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(27));

-- Location: LCCOMB_X75_Y66_N28
\decoder|decoder|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~1_combout\ = (((!\decoder|decoder|i\(27)) # (!\decoder|decoder|i\(28))) # (!\decoder|decoder|i\(25))) # (!\decoder|decoder|i\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(26),
	datab => \decoder|decoder|i\(25),
	datac => \decoder|decoder|i\(28),
	datad => \decoder|decoder|i\(27),
	combout => \decoder|decoder|Equal0~1_combout\);

-- Location: LCCOMB_X77_Y66_N30
\decoder|decoder|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~82_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~38_combout\,
	combout => \decoder|decoder|Add0~82_combout\);

-- Location: FF_X77_Y66_N31
\decoder|decoder|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~82_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(17));

-- Location: LCCOMB_X77_Y66_N24
\decoder|decoder|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~81_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datac => \decoder|decoder|Add0~40_combout\,
	combout => \decoder|decoder|Add0~81_combout\);

-- Location: FF_X77_Y66_N25
\decoder|decoder|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~81_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(18));

-- Location: LCCOMB_X77_Y66_N28
\decoder|decoder|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~3_combout\ = (((!\decoder|decoder|i\(18)) # (!\decoder|decoder|i\(17))) # (!\decoder|decoder|i\(20))) # (!\decoder|decoder|i\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(19),
	datab => \decoder|decoder|i\(20),
	datac => \decoder|decoder|i\(17),
	datad => \decoder|decoder|i\(18),
	combout => \decoder|decoder|Equal0~3_combout\);

-- Location: LCCOMB_X76_Y66_N26
\decoder|decoder|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~62_combout\ = (\decoder|decoder|i\(29) & (\decoder|decoder|Add0~61\ & VCC)) # (!\decoder|decoder|i\(29) & (!\decoder|decoder|Add0~61\))
-- \decoder|decoder|Add0~63\ = CARRY((!\decoder|decoder|i\(29) & !\decoder|decoder|Add0~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(29),
	datad => VCC,
	cin => \decoder|decoder|Add0~61\,
	combout => \decoder|decoder|Add0~62_combout\,
	cout => \decoder|decoder|Add0~63\);

-- Location: LCCOMB_X77_Y66_N0
\decoder|decoder|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~70_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datac => \decoder|decoder|Add0~62_combout\,
	combout => \decoder|decoder|Add0~70_combout\);

-- Location: FF_X77_Y66_N1
\decoder|decoder|i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~70_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(29));

-- Location: LCCOMB_X76_Y66_N28
\decoder|decoder|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~64_combout\ = (\decoder|decoder|i\(30) & ((GND) # (!\decoder|decoder|Add0~63\))) # (!\decoder|decoder|i\(30) & (\decoder|decoder|Add0~63\ $ (GND)))
-- \decoder|decoder|Add0~65\ = CARRY((\decoder|decoder|i\(30)) # (!\decoder|decoder|Add0~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(30),
	datad => VCC,
	cin => \decoder|decoder|Add0~63\,
	combout => \decoder|decoder|Add0~64_combout\,
	cout => \decoder|decoder|Add0~65\);

-- Location: LCCOMB_X77_Y66_N10
\decoder|decoder|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~69_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~64_combout\,
	combout => \decoder|decoder|Add0~69_combout\);

-- Location: FF_X77_Y66_N11
\decoder|decoder|i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~69_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(30));

-- Location: LCCOMB_X76_Y66_N30
\decoder|decoder|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~66_combout\ = \decoder|decoder|i\(31) $ (\decoder|decoder|Add0~65\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(31),
	cin => \decoder|decoder|Add0~65\,
	combout => \decoder|decoder|Add0~66_combout\);

-- Location: LCCOMB_X77_Y66_N20
\decoder|decoder|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~68_combout\ = (!\decoder|decoder|Add0~66_combout\) # (!\decoder|decoder|EF.State_Extract~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~66_combout\,
	combout => \decoder|decoder|Add0~68_combout\);

-- Location: FF_X77_Y66_N21
\decoder|decoder|i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~68_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(31));

-- Location: LCCOMB_X77_Y67_N12
\decoder|decoder|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~2_combout\ = (!\decoder|decoder|EF.State_Extract~q\) # (!\decoder|decoder|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|Add0~0_combout\,
	datad => \decoder|decoder|EF.State_Extract~q\,
	combout => \decoder|decoder|Add0~2_combout\);

-- Location: FF_X76_Y67_N11
\decoder|decoder|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \decoder|decoder|Add0~2_combout\,
	sload => VCC,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(0));

-- Location: LCCOMB_X77_Y66_N2
\decoder|decoder|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~0_combout\ = ((\decoder|decoder|i\(31)) # ((\decoder|decoder|i\(0)) # (!\decoder|decoder|i\(29)))) # (!\decoder|decoder|i\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(30),
	datab => \decoder|decoder|i\(31),
	datac => \decoder|decoder|i\(0),
	datad => \decoder|decoder|i\(29),
	combout => \decoder|decoder|Equal0~0_combout\);

-- Location: LCCOMB_X75_Y66_N8
\decoder|decoder|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~4_combout\ = (\decoder|decoder|Equal0~2_combout\) # ((\decoder|decoder|Equal0~1_combout\) # ((\decoder|decoder|Equal0~3_combout\) # (\decoder|decoder|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Equal0~2_combout\,
	datab => \decoder|decoder|Equal0~1_combout\,
	datac => \decoder|decoder|Equal0~3_combout\,
	datad => \decoder|decoder|Equal0~0_combout\,
	combout => \decoder|decoder|Equal0~4_combout\);

-- Location: LCCOMB_X75_Y66_N2
\decoder|decoder|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|process_0~0_combout\ = ((!\decoder|decoder|Equal0~4_combout\ & !\decoder|decoder|Equal0~9_combout\)) # (!\decoder|demanchester|State.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|demanchester|State.Init~q\,
	datac => \decoder|decoder|Equal0~4_combout\,
	datad => \decoder|decoder|Equal0~9_combout\,
	combout => \decoder|decoder|process_0~0_combout\);

-- Location: LCCOMB_X72_Y66_N20
\decoder|decoder|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~0_combout\ = (\decoder|decoder|Decoder0~0_combout\ & ((\decoder|tick_gen|tick_bit~q\ & ((\decoder|demanchester|WideOr0~0_combout\))) # (!\decoder|tick_gen|tick_bit~q\ & (\decoder|decoder|data\(6))))) # 
-- (!\decoder|decoder|Decoder0~0_combout\ & (\decoder|decoder|data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~0_combout\,
	datab => \decoder|decoder|data\(6),
	datac => \decoder|demanchester|WideOr0~0_combout\,
	datad => \decoder|tick_gen|tick_bit~q\,
	combout => \decoder|decoder|data~0_combout\);

-- Location: LCCOMB_X72_Y66_N24
\decoder|decoder|data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~1_combout\ = (\decoder|decoder|data~0_combout\) # ((\decoder|decoder|process_0~0_combout\ & \decoder|decoder|data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|process_0~0_combout\,
	datac => \decoder|decoder|data\(6),
	datad => \decoder|decoder|data~0_combout\,
	combout => \decoder|decoder|data~1_combout\);

-- Location: FF_X72_Y66_N25
\decoder|decoder|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|data~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~q\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(6));

-- Location: LCCOMB_X72_Y66_N28
\decoder|decoder|data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~2_combout\ = (\decoder|decoder|Decoder0~1_combout\ & ((\decoder|tick_gen|tick_bit~q\ & ((\decoder|demanchester|WideOr0~0_combout\))) # (!\decoder|tick_gen|tick_bit~q\ & (\decoder|decoder|data\(7))))) # 
-- (!\decoder|decoder|Decoder0~1_combout\ & (\decoder|decoder|data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~1_combout\,
	datab => \decoder|decoder|data\(7),
	datac => \decoder|demanchester|WideOr0~0_combout\,
	datad => \decoder|tick_gen|tick_bit~q\,
	combout => \decoder|decoder|data~2_combout\);

-- Location: LCCOMB_X72_Y66_N18
\decoder|decoder|data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~3_combout\ = (\decoder|decoder|data~2_combout\) # ((\decoder|decoder|process_0~0_combout\ & \decoder|decoder|data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|process_0~0_combout\,
	datac => \decoder|decoder|data\(7),
	datad => \decoder|decoder|data~2_combout\,
	combout => \decoder|decoder|data~3_combout\);

-- Location: FF_X72_Y66_N19
\decoder|decoder|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|data~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~q\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(7));

-- Location: LCCOMB_X73_Y66_N18
\decoder|decoder|data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~4_combout\ = (\decoder|decoder|Decoder0~2_combout\ & ((\decoder|tick_gen|tick_bit~q\ & ((\decoder|demanchester|WideOr0~0_combout\))) # (!\decoder|tick_gen|tick_bit~q\ & (\decoder|decoder|data\(8))))) # 
-- (!\decoder|decoder|Decoder0~2_combout\ & (\decoder|decoder|data\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~2_combout\,
	datab => \decoder|decoder|data\(8),
	datac => \decoder|tick_gen|tick_bit~q\,
	datad => \decoder|demanchester|WideOr0~0_combout\,
	combout => \decoder|decoder|data~4_combout\);

-- Location: LCCOMB_X73_Y66_N0
\decoder|decoder|data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~5_combout\ = (\decoder|decoder|data~4_combout\) # ((\decoder|decoder|process_0~0_combout\ & \decoder|decoder|data\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|process_0~0_combout\,
	datac => \decoder|decoder|data\(8),
	datad => \decoder|decoder|data~4_combout\,
	combout => \decoder|decoder|data~5_combout\);

-- Location: FF_X73_Y66_N1
\decoder|decoder|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|data~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~q\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(8));

-- Location: LCCOMB_X75_Y67_N10
\decoder|decoder|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~8_combout\ = (\decoder|decoder|Add0~6_combout\) # (!\decoder|decoder|EF.State_Extract~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~6_combout\,
	combout => \decoder|decoder|Add0~8_combout\);

-- Location: FF_X75_Y67_N11
\decoder|decoder|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~8_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(2));

-- Location: LCCOMB_X77_Y66_N12
\decoder|decoder|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~3_combout\ = (!\decoder|decoder|i\(1) & (!\decoder|decoder|i\(2) & (!\decoder|decoder|i\(0) & \decoder|decoder|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(1),
	datab => \decoder|decoder|i\(2),
	datac => \decoder|decoder|i\(0),
	datad => \decoder|decoder|i\(3),
	combout => \decoder|decoder|Decoder0~3_combout\);

-- Location: LCCOMB_X73_Y66_N24
\decoder|decoder|data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~6_combout\ = (\decoder|decoder|Decoder0~3_combout\ & ((\decoder|tick_gen|tick_bit~q\ & ((\decoder|demanchester|WideOr0~0_combout\))) # (!\decoder|tick_gen|tick_bit~q\ & (\decoder|decoder|data\(9))))) # 
-- (!\decoder|decoder|Decoder0~3_combout\ & (\decoder|decoder|data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|data\(9),
	datab => \decoder|demanchester|WideOr0~0_combout\,
	datac => \decoder|decoder|Decoder0~3_combout\,
	datad => \decoder|tick_gen|tick_bit~q\,
	combout => \decoder|decoder|data~6_combout\);

-- Location: LCCOMB_X73_Y66_N6
\decoder|decoder|data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~7_combout\ = (\decoder|decoder|data~6_combout\) # ((\decoder|decoder|process_0~0_combout\ & \decoder|decoder|data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|process_0~0_combout\,
	datac => \decoder|decoder|data\(9),
	datad => \decoder|decoder|data~6_combout\,
	combout => \decoder|decoder|data~7_combout\);

-- Location: FF_X73_Y66_N7
\decoder|decoder|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|data~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~q\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(9));

-- Location: LCCOMB_X73_Y66_N16
\decoder|decoder|data~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~9_combout\ = (\decoder|decoder|data~8_combout\) # ((\decoder|decoder|process_0~0_combout\ & \decoder|decoder|data\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|data~8_combout\,
	datab => \decoder|decoder|process_0~0_combout\,
	datac => \decoder|decoder|data\(10),
	combout => \decoder|decoder|data~9_combout\);

-- Location: FF_X73_Y66_N17
\decoder|decoder|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|data~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~q\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(10));

-- Location: LCCOMB_X72_Y66_N8
\decoder|decoder|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~5_combout\ = (!\decoder|decoder|i\(2) & (\decoder|decoder|i\(0) & (!\decoder|decoder|i\(3) & !\decoder|decoder|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(2),
	datab => \decoder|decoder|i\(0),
	datac => \decoder|decoder|i\(3),
	datad => \decoder|decoder|i\(1),
	combout => \decoder|decoder|Decoder0~5_combout\);

-- Location: LCCOMB_X72_Y66_N2
\decoder|decoder|data~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~10_combout\ = (\decoder|decoder|Decoder0~5_combout\ & ((\decoder|tick_gen|tick_bit~q\ & (\decoder|demanchester|WideOr0~0_combout\)) # (!\decoder|tick_gen|tick_bit~q\ & ((\decoder|decoder|data\(0)))))) # 
-- (!\decoder|decoder|Decoder0~5_combout\ & (((\decoder|decoder|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|WideOr0~0_combout\,
	datab => \decoder|decoder|data\(0),
	datac => \decoder|decoder|Decoder0~5_combout\,
	datad => \decoder|tick_gen|tick_bit~q\,
	combout => \decoder|decoder|data~10_combout\);

-- Location: LCCOMB_X72_Y66_N16
\decoder|decoder|data~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~11_combout\ = (\decoder|decoder|data~10_combout\) # ((\decoder|decoder|process_0~0_combout\ & \decoder|decoder|data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|process_0~0_combout\,
	datac => \decoder|decoder|data\(0),
	datad => \decoder|decoder|data~10_combout\,
	combout => \decoder|decoder|data~11_combout\);

-- Location: FF_X72_Y66_N17
\decoder|decoder|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|data~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~q\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(0));

-- Location: LCCOMB_X73_Y66_N20
\decoder|decoder|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~6_combout\ = (!\decoder|decoder|i\(2) & (!\decoder|decoder|i\(1) & (!\decoder|decoder|i\(3) & !\decoder|decoder|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(2),
	datab => \decoder|decoder|i\(1),
	datac => \decoder|decoder|i\(3),
	datad => \decoder|decoder|i\(0),
	combout => \decoder|decoder|Decoder0~6_combout\);

-- Location: LCCOMB_X73_Y66_N2
\decoder|decoder|data~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~12_combout\ = (\decoder|tick_gen|tick_bit~q\ & ((\decoder|decoder|Decoder0~6_combout\ & ((\decoder|demanchester|WideOr0~0_combout\))) # (!\decoder|decoder|Decoder0~6_combout\ & (\decoder|decoder|data\(1))))) # 
-- (!\decoder|tick_gen|tick_bit~q\ & (\decoder|decoder|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|data\(1),
	datab => \decoder|demanchester|WideOr0~0_combout\,
	datac => \decoder|tick_gen|tick_bit~q\,
	datad => \decoder|decoder|Decoder0~6_combout\,
	combout => \decoder|decoder|data~12_combout\);

-- Location: LCCOMB_X73_Y66_N26
\decoder|decoder|data~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~13_combout\ = (\decoder|decoder|data~12_combout\) # ((\decoder|decoder|process_0~0_combout\ & \decoder|decoder|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|process_0~0_combout\,
	datac => \decoder|decoder|data\(1),
	datad => \decoder|decoder|data~12_combout\,
	combout => \decoder|decoder|data~13_combout\);

-- Location: FF_X73_Y66_N27
\decoder|decoder|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|data~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~q\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(1));

-- Location: LCCOMB_X73_Y66_N4
\decoder|decoder|data~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~14_combout\ = (\decoder|decoder|Decoder0~7_combout\ & ((\decoder|tick_gen|tick_bit~q\ & ((\decoder|demanchester|WideOr0~0_combout\))) # (!\decoder|tick_gen|tick_bit~q\ & (\decoder|decoder|data\(2))))) # 
-- (!\decoder|decoder|Decoder0~7_combout\ & (\decoder|decoder|data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~7_combout\,
	datab => \decoder|decoder|data\(2),
	datac => \decoder|tick_gen|tick_bit~q\,
	datad => \decoder|demanchester|WideOr0~0_combout\,
	combout => \decoder|decoder|data~14_combout\);

-- Location: LCCOMB_X73_Y66_N28
\decoder|decoder|data~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~15_combout\ = (\decoder|decoder|data~14_combout\) # ((\decoder|decoder|process_0~0_combout\ & \decoder|decoder|data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|process_0~0_combout\,
	datac => \decoder|decoder|data\(2),
	datad => \decoder|decoder|data~14_combout\,
	combout => \decoder|decoder|data~15_combout\);

-- Location: FF_X73_Y66_N29
\decoder|decoder|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|data~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~q\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(2));

-- Location: LCCOMB_X73_Y66_N22
\decoder|decoder|data~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~17_combout\ = (\decoder|decoder|data~16_combout\) # ((\decoder|decoder|process_0~0_combout\ & \decoder|decoder|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|data~16_combout\,
	datab => \decoder|decoder|process_0~0_combout\,
	datac => \decoder|decoder|data\(3),
	combout => \decoder|decoder|data~17_combout\);

-- Location: FF_X73_Y66_N23
\decoder|decoder|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|data~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~q\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(3));

-- Location: LCCOMB_X72_Y66_N14
\decoder|decoder|data~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~19_combout\ = (\decoder|decoder|data~18_combout\) # ((\decoder|decoder|process_0~0_combout\ & \decoder|decoder|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|data~18_combout\,
	datab => \decoder|decoder|process_0~0_combout\,
	datac => \decoder|decoder|data\(4),
	combout => \decoder|decoder|data~19_combout\);

-- Location: FF_X72_Y66_N15
\decoder|decoder|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|data~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~q\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(4));

-- Location: LCCOMB_X73_Y66_N12
\decoder|decoder|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~10_combout\ = (\decoder|decoder|i\(2) & (!\decoder|decoder|i\(1) & (!\decoder|decoder|i\(3) & !\decoder|decoder|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(2),
	datab => \decoder|decoder|i\(1),
	datac => \decoder|decoder|i\(3),
	datad => \decoder|decoder|i\(0),
	combout => \decoder|decoder|Decoder0~10_combout\);

-- Location: LCCOMB_X73_Y66_N14
\decoder|decoder|data~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~20_combout\ = (\decoder|tick_gen|tick_bit~q\ & ((\decoder|decoder|Decoder0~10_combout\ & (\decoder|demanchester|WideOr0~0_combout\)) # (!\decoder|decoder|Decoder0~10_combout\ & ((\decoder|decoder|data\(5)))))) # 
-- (!\decoder|tick_gen|tick_bit~q\ & (((\decoder|decoder|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|tick_bit~q\,
	datab => \decoder|demanchester|WideOr0~0_combout\,
	datac => \decoder|decoder|data\(5),
	datad => \decoder|decoder|Decoder0~10_combout\,
	combout => \decoder|decoder|data~20_combout\);

-- Location: LCCOMB_X73_Y66_N8
\decoder|decoder|data~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~21_combout\ = (\decoder|decoder|data~20_combout\) # ((\decoder|decoder|data\(5) & \decoder|decoder|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|data~20_combout\,
	datac => \decoder|decoder|data\(5),
	datad => \decoder|decoder|process_0~0_combout\,
	combout => \decoder|decoder|data~21_combout\);

-- Location: FF_X73_Y66_N9
\decoder|decoder|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|data~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~q\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(5));

-- Location: LCCOMB_X74_Y66_N2
\decoder|decoder|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector3~1_combout\ = (\decoder|decoder|EF~14_combout\ & ((\decoder|decoder|EF.State_Init~q\) # ((!\decoder|decoder|EF.State_Begin~q\ & \decoder|demanchester|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Begin~q\,
	datab => \decoder|demanchester|WideOr0~0_combout\,
	datac => \decoder|decoder|EF.State_Init~q\,
	datad => \decoder|decoder|EF~14_combout\,
	combout => \decoder|decoder|Selector3~1_combout\);

-- Location: FF_X74_Y66_N3
\decoder|decoder|EF.State_Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Selector3~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|EF.State_Init~q\);

-- Location: LCCOMB_X74_Y66_N18
\decoder|decoder|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector6~3_combout\ = (\decoder|decoder|EF.State_Init~q\ & (!\decoder|demanchester|WideOr0~0_combout\ & \decoder|tick_gen|tick_bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Init~q\,
	datac => \decoder|demanchester|WideOr0~0_combout\,
	datad => \decoder|tick_gen|tick_bit~q\,
	combout => \decoder|decoder|Selector6~3_combout\);

-- Location: LCCOMB_X74_Y66_N30
\decoder|decoder|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~10_combout\ = (\decoder|decoder|Equal0~4_combout\) # (\decoder|decoder|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|Equal0~4_combout\,
	datac => \decoder|decoder|Equal0~9_combout\,
	combout => \decoder|decoder|Equal0~10_combout\);

-- Location: LCCOMB_X74_Y66_N20
\decoder|decoder|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector3~2_combout\ = (\decoder|decoder|Selector3~0_combout\ & (((!\decoder|decoder|Equal0~9_combout\ & !\decoder|decoder|Equal0~4_combout\)) # (!\decoder|demanchester|State.Init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|State.Init~q\,
	datab => \decoder|decoder|Equal0~9_combout\,
	datac => \decoder|decoder|Equal0~4_combout\,
	datad => \decoder|decoder|Selector3~0_combout\,
	combout => \decoder|decoder|Selector3~2_combout\);

-- Location: LCCOMB_X74_Y66_N28
\decoder|decoder|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector6~2_combout\ = (\decoder|decoder|Selector4~0_combout\ & ((\decoder|decoder|Selector3~2_combout\ & ((\decoder|decoder|Equal0~10_combout\))) # (!\decoder|decoder|Selector3~2_combout\ & (\decoder|decoder|Selector6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Selector4~0_combout\,
	datab => \decoder|decoder|Selector6~3_combout\,
	datac => \decoder|decoder|Equal0~10_combout\,
	datad => \decoder|decoder|Selector3~2_combout\,
	combout => \decoder|decoder|Selector6~2_combout\);

-- Location: FF_X74_Y66_N29
\decoder|decoder|EF.State_Error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Selector6~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|EF.State_Error~q\);

-- Location: LCCOMB_X74_Y66_N24
\decoder|decoder|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector1~0_combout\ = (\decoder|decoder|EF.State_Error~q\) # ((\decoder|decoder|EF.State_Begin~q\ & \decoder|decoder|error_sig~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Begin~q\,
	datac => \decoder|decoder|error_sig~q\,
	datad => \decoder|decoder|EF.State_Error~q\,
	combout => \decoder|decoder|Selector1~0_combout\);

-- Location: FF_X74_Y66_N25
\decoder|decoder|error_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Selector1~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|error_sig~q\);

-- Location: LCCOMB_X72_Y66_N0
\decoder|decoder|data~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~23_combout\ = (\decoder|decoder|data~22_combout\) # ((\decoder|decoder|process_0~0_combout\ & \decoder|decoder|data\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|data~22_combout\,
	datab => \decoder|decoder|process_0~0_combout\,
	datac => \decoder|decoder|data\(11),
	combout => \decoder|decoder|data~23_combout\);

-- Location: FF_X72_Y66_N1
\decoder|decoder|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|data~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~q\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(11));

-- Location: LCCOMB_X74_Y66_N8
\decoder|decoder|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector5~4_combout\ = (\decoder|decoder|Selector4~0_combout\ & (!\decoder|decoder|Equal0~9_combout\ & (!\decoder|decoder|Equal0~4_combout\ & \decoder|decoder|Selector3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Selector4~0_combout\,
	datab => \decoder|decoder|Equal0~9_combout\,
	datac => \decoder|decoder|Equal0~4_combout\,
	datad => \decoder|decoder|Selector3~2_combout\,
	combout => \decoder|decoder|Selector5~4_combout\);

-- Location: FF_X74_Y66_N9
\decoder|decoder|EF.State_Send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Selector5~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|EF.State_Send~q\);

-- Location: LCCOMB_X74_Y66_N14
\decoder|decoder|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector0~0_combout\ = (\decoder|decoder|EF.State_Send~q\) # ((\decoder|decoder|EF.State_Begin~q\ & \decoder|decoder|enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Begin~q\,
	datac => \decoder|decoder|enable~q\,
	datad => \decoder|decoder|EF.State_Send~q\,
	combout => \decoder|decoder|Selector0~0_combout\);

-- Location: FF_X74_Y66_N15
\decoder|decoder|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Selector0~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|enable~q\);

ww_Address_out(0) <= \Address_out[0]~output_o\;

ww_Address_out(1) <= \Address_out[1]~output_o\;

ww_Address_out(2) <= \Address_out[2]~output_o\;

ww_Address_out(3) <= \Address_out[3]~output_o\;

ww_Address_out(4) <= \Address_out[4]~output_o\;

ww_Cmd_out(0) <= \Cmd_out[0]~output_o\;

ww_Cmd_out(1) <= \Cmd_out[1]~output_o\;

ww_Cmd_out(2) <= \Cmd_out[2]~output_o\;

ww_Cmd_out(3) <= \Cmd_out[3]~output_o\;

ww_Cmd_out(4) <= \Cmd_out[4]~output_o\;

ww_Cmd_out(5) <= \Cmd_out[5]~output_o\;

ww_error_sig <= \error_sig~output_o\;

ww_toggle <= \toggle~output_o\;

ww_go_out <= \go_out~output_o\;

ww_enable <= \enable~output_o\;

ww_Tx_out <= \Tx_out~output_o\;
END structure;


