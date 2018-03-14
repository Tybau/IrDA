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

-- DATE "03/14/2018 14:47:11"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	IrDA IS
    PORT (
	CLK : IN std_logic;
	rst : IN std_logic;
	Address_in : IN std_logic_vector(4 DOWNTO 0);
	Cmd_in : IN std_logic_vector(5 DOWNTO 0);
	Go : IN std_logic;
	signal_in : IN std_logic;
	Address_out : OUT std_logic_vector(4 DOWNTO 0);
	Cmd_out : OUT std_logic_vector(5 DOWNTO 0);
	error_sig : OUT std_logic;
	toggle : OUT std_logic;
	go_out : OUT std_logic;
	enable : OUT std_logic;
	Tx_out : OUT std_logic;
	signal_out : OUT std_logic
	);
END IrDA;

-- Design Ports Information
-- Address_out[0]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Address_out[1]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Address_out[2]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Address_out[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Address_out[4]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Cmd_out[0]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Cmd_out[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Cmd_out[2]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Cmd_out[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Cmd_out[4]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Cmd_out[5]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- error_sig	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- toggle	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- go_out	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- enable	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Tx_out	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- signal_out	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Go	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_in	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_in[3]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_in[4]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_in[2]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd_in[5]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_in[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd_in[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_in[1]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd_in[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd_in[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd_in[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd_in[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_signal_in : std_logic;
SIGNAL ww_Address_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Cmd_out : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_error_sig : std_logic;
SIGNAL ww_toggle : std_logic;
SIGNAL ww_go_out : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_Tx_out : std_logic;
SIGNAL ww_signal_out : std_logic;
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder|decoder|Add0~14_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~16_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~20_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~32_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~38_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~54_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~56_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~2_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~8_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~10_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~12_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~14_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~18_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~20_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~24_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~26_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~28_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~30_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~34_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~38_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~51\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~52_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~53\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~54_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~55\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~56_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~57\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~58_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~59\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~60_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~61\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~62_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~16_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~20_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~24_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~44_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~56_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~12_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~42_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~44_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~48_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~61\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~62_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~14_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~22_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~36_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~54_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~16_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~26_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~38_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~55\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~56_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~57\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~58_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~59\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~60_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~61\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~62_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~2_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~4_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~6_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~8_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~24_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~34_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~46_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~59\ : std_logic;
SIGNAL \decoder|deburst|Add1~60_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~61\ : std_logic;
SIGNAL \decoder|deburst|Add1~62_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~28_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~36_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~50_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~59\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~60_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~14_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~34_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~36_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~46_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~50_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~54_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~14_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~32_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~8_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~20_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~24_combout\ : std_logic;
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
SIGNAL \encoder|MAE_emission|enable~regout\ : std_logic;
SIGNAL \decoder|demanchester|State.Init~regout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~7_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~3_combout\ : std_logic;
SIGNAL \decoder|decoder|data~6_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~8_combout\ : std_logic;
SIGNAL \decoder|decoder|data~16_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~9_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~10_combout\ : std_logic;
SIGNAL \decoder|decoder|data~20_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~5_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector6~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector5~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~2_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~3_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~4_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~5_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~6_combout\ : std_logic;
SIGNAL \decoder|demanchester|Selector0~0_combout\ : std_logic;
SIGNAL \decoder|demanchester|Selector0~1_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~7_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~73_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~74_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~82_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~85_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~91_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~93_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector4~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~7_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~9_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~3_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[31]~2_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[30]~3_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[29]~4_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[28]~5_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[27]~6_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[17]~16_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[14]~19_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[10]~23_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[7]~26_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~5_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan1~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~5_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector4~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~1_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan0~3_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan0~5_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~64_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~67_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~74_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~80_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~85_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~93_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~5_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~6_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~7_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~11_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~79_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~88_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst[1]~10_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|reg[2]~feeder_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|reg[3]~feeder_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~5_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
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
SIGNAL \decoder|tick_gen|Add2~13\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~14_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~15\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~17\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~18_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~19\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~21\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~22_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~3_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~23\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~25\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~26_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~27\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~28_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~1_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~29\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~30_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~31\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~32_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~0_combout\ : std_logic;
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
SIGNAL \decoder|tick_gen|Add2~49\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~50_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~51\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~52_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~48_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~3_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~53\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~54_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~55\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~57\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~58_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~59\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~60_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~61\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~62_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~42_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~5_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~8_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~38_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~6_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~9_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~10_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~6_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~12_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~1_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~10_combout\ : std_logic;
SIGNAL \decoder|tick_gen|tick_bit~regout\ : std_logic;
SIGNAL \decoder|decoder|Add0~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~94_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector12~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~25\ : std_logic;
SIGNAL \decoder|decoder|Add0~26_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~88_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~27\ : std_logic;
SIGNAL \decoder|decoder|Add0~28_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~87_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~29\ : std_logic;
SIGNAL \decoder|decoder|Add0~31\ : std_logic;
SIGNAL \decoder|decoder|Add0~33\ : std_logic;
SIGNAL \decoder|decoder|Add0~35\ : std_logic;
SIGNAL \decoder|decoder|Add0~36_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~83_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~37\ : std_logic;
SIGNAL \decoder|decoder|Add0~39\ : std_logic;
SIGNAL \decoder|decoder|Add0~40_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~81_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~41\ : std_logic;
SIGNAL \decoder|decoder|Add0~43\ : std_logic;
SIGNAL \decoder|decoder|Add0~45\ : std_logic;
SIGNAL \decoder|decoder|Add0~47\ : std_logic;
SIGNAL \decoder|decoder|Add0~48_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~77_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~49\ : std_logic;
SIGNAL \decoder|decoder|Add0~50_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~76_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~51\ : std_logic;
SIGNAL \decoder|decoder|Add0~53\ : std_logic;
SIGNAL \decoder|decoder|Add0~55\ : std_logic;
SIGNAL \decoder|decoder|Add0~57\ : std_logic;
SIGNAL \decoder|decoder|Add0~58_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~72_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~59\ : std_logic;
SIGNAL \decoder|decoder|Add0~60_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~71_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~61\ : std_logic;
SIGNAL \decoder|decoder|Add0~62_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~70_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~63\ : std_logic;
SIGNAL \decoder|decoder|Add0~64_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~69_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~65\ : std_logic;
SIGNAL \decoder|decoder|Add0~66_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~68_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~46_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~78_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~52_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~75_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~2_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~44_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~79_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~42_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~80_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~3_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~4_combout\ : std_logic;
SIGNAL \decoder|decoder|i[31]~0_combout\ : std_logic;
SIGNAL \decoder|decoder|i[0]~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~1\ : std_logic;
SIGNAL \decoder|decoder|Add0~4\ : std_logic;
SIGNAL \decoder|decoder|Add0~6_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~8_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~7\ : std_logic;
SIGNAL \decoder|decoder|Add0~9_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~11_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~10\ : std_logic;
SIGNAL \decoder|decoder|Add0~13\ : std_logic;
SIGNAL \decoder|decoder|Add0~15\ : std_logic;
SIGNAL \decoder|decoder|Add0~17\ : std_logic;
SIGNAL \decoder|decoder|Add0~18_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~92_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~19\ : std_logic;
SIGNAL \decoder|decoder|Add0~21\ : std_logic;
SIGNAL \decoder|decoder|Add0~22_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~90_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~23\ : std_logic;
SIGNAL \decoder|decoder|Add0~24_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~89_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~6_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~30_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~86_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~34_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~84_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~5_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~12_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~95_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~3_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~5_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~8_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~9_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~10_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector4~5_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector4~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~1\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~3\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~5\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~7\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~9\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~11\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~12_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~1_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~3_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~5_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~7_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~9_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~11_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~12_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~13\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~15\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~17\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~19\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~20_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~21\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~23\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~24_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~25\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~27\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~28_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~29\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~30_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~31\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~32_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~33\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~34_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~35\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~37\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~38_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~39\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~41\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~43\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~44_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~45\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~47\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~48_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~49\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~51\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~52_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~53\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~55\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~56_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~57\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~58_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~59\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~60_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~16_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~18_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~7_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~42_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~40_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~50_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~46_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~26_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|tick_bit~regout\ : std_logic;
SIGNAL \Go~combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~45\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~47\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~48_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~49\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~51\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~52_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~53\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~55\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~56_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~57\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~58_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~59\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~60_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~1_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~3_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~5_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~7_cout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~9\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~11\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~12_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~13\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~15\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~16_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~17\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~19\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~20_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~21\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~22_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~9_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~23\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~24_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~25\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~27\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~28_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~29\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~30_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~31\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~32_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~33\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~35\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~37\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~39\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~41\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~42_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~43\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~44_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~40_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~38_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~18_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~7_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~26_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~7_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~9_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|tick_trame~regout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector2~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector2~1_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|EF.State_Init~regout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector3~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector3~1_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|EF.State_Send~regout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector8~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[9]~24_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[5]~28_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[4]~29_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[1]~30_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector39~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[0]~1_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~1\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~3\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~4_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector37~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~5\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~6_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector36~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~7\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~9\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~11\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~13\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~15\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~16_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[8]~25_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~17\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~19\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~21\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~22_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[11]~22_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~6_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~8_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[6]~27_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~7_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~9_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[0]~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[15]~18_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[13]~20_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[12]~21_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~23\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~25\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~27\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~29\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~31\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~33\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~35\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~36_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[18]~15_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~32_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[16]~17_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[19]~14_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~3_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~37\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~39\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~40_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[20]~13_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~41\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~42_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[21]~12_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~43\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~44_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[22]~11_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~45\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~46_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[23]~10_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~2_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[26]~7_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~47\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~49\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~50_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[25]~8_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~48_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[24]~9_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~1_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~4_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector4~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector4~2_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|EF.State_Close~regout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector7~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|clear~regout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~13\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~14_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~15\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~17\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~18_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~19\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~20_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~21\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~22_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~23\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~25\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~27\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~28_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~29\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~30_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~0_combout\ : std_logic;
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
SIGNAL \encoder|TickGenerator|Add1~42_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~43\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~44_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~24_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~45\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~46_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~47\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~49\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~50_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~51\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~52_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~48_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~53\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~54_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~7_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~9_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|tick_manch~regout\ : std_logic;
SIGNAL \encoder|ManchesterGenerator|manch~0_combout\ : std_logic;
SIGNAL \encoder|ManchesterGenerator|process_0~0_combout\ : std_logic;
SIGNAL \encoder|ManchesterGenerator|manch~regout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector0~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|EF.State_Begin~regout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector1~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|EF.State_Clear~regout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector6~1_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector6~2_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|toggle~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|toggle~regout\ : std_logic;
SIGNAL \encoder|MAE_emission|reg[11]~1_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|reg[11]~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~1_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~7_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector6~3_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|out_trame~regout\ : std_logic;
SIGNAL \encoder|BurstGenerator|state[0]~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~1\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst[1]~9_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~3\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~5\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~7\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~9\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~11\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~13\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~14_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~15\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~16_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~17\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~18_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~19\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~21\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~22_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~23\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~25\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~26_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~27\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~28_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~24_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~20_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~29\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~30_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~31\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~32_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~33\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~34_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~35\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~36_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~37\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~38_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~39\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~40_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~41\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~43\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~45\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~46_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~47\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~49\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~50_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~51\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~53\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~54_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~55\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~57\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~58_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~59\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~60_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~56_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~52_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|tick_burst~regout\ : std_logic;
SIGNAL \encoder|BurstGenerator|state~0_combout\ : std_logic;
SIGNAL \encoder|BurstGenerator|Out_burst~0_combout\ : std_logic;
SIGNAL \encoder|BurstGenerator|Out_burst~1_combout\ : std_logic;
SIGNAL \encoder|BurstGenerator|Out_burst~regout\ : std_logic;
SIGNAL \encoder|Tx~0_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~0_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~95_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst~5_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~1\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~3\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~5\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~6_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst~3_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~7\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~9\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~11\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~12_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst~1_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~13\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~14_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~10_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~8_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~9_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~15\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~16_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~17\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~18_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~19\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~21\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~22_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~23\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~25\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~26_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~27\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~28_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~29\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~30_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~31\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~32_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~33\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~34_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~35\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~36_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~37\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~39\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~40_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~41\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~43\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~45\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~46_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~47\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~49\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~50_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~51\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~52_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~48_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~1_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~44_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~42_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~38_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~3_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~10_combout\ : std_logic;
SIGNAL \decoder|tick_gen|tick_burst~regout\ : std_logic;
SIGNAL \decoder|deburst|Add0~16_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~87_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~18_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~86_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan0~6_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~48_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~71_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~52_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~69_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan0~1_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~60_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~65_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~54_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~68_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan0~0_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~42_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~74_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan0~2_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan0~4_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~2_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~94_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~8_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~91_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan0~7_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan0~8_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan0~9_combout\ : std_logic;
SIGNAL \decoder|deburst|cmpt_stop[31]~0_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~1\ : std_logic;
SIGNAL \decoder|deburst|Add0~3\ : std_logic;
SIGNAL \decoder|deburst|Add0~4_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~93_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~5\ : std_logic;
SIGNAL \decoder|deburst|Add0~6_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~92_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~7\ : std_logic;
SIGNAL \decoder|deburst|Add0~9\ : std_logic;
SIGNAL \decoder|deburst|Add0~10_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~90_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~11\ : std_logic;
SIGNAL \decoder|deburst|Add0~12_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~89_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~13\ : std_logic;
SIGNAL \decoder|deburst|Add0~15\ : std_logic;
SIGNAL \decoder|deburst|Add0~17\ : std_logic;
SIGNAL \decoder|deburst|Add0~19\ : std_logic;
SIGNAL \decoder|deburst|Add0~20_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~85_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~21\ : std_logic;
SIGNAL \decoder|deburst|Add0~22_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~84_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~23\ : std_logic;
SIGNAL \decoder|deburst|Add0~24_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~83_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~25\ : std_logic;
SIGNAL \decoder|deburst|Add0~26_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~82_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~27\ : std_logic;
SIGNAL \decoder|deburst|Add0~28_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~81_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~29\ : std_logic;
SIGNAL \decoder|deburst|Add0~30_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~80_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~31\ : std_logic;
SIGNAL \decoder|deburst|Add0~33\ : std_logic;
SIGNAL \decoder|deburst|Add0~34_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~78_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~35\ : std_logic;
SIGNAL \decoder|deburst|Add0~36_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~77_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~37\ : std_logic;
SIGNAL \decoder|deburst|Add0~38_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~76_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~39\ : std_logic;
SIGNAL \decoder|deburst|Add0~40_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~75_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~41\ : std_logic;
SIGNAL \decoder|deburst|Add0~43\ : std_logic;
SIGNAL \decoder|deburst|Add0~44_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~73_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~45\ : std_logic;
SIGNAL \decoder|deburst|Add0~46_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~72_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~47\ : std_logic;
SIGNAL \decoder|deburst|Add0~49\ : std_logic;
SIGNAL \decoder|deburst|Add0~50_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~70_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~51\ : std_logic;
SIGNAL \decoder|deburst|Add0~53\ : std_logic;
SIGNAL \decoder|deburst|Add0~55\ : std_logic;
SIGNAL \decoder|deburst|Add0~56_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~67_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~57\ : std_logic;
SIGNAL \decoder|deburst|Add0~58_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~66_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~59\ : std_logic;
SIGNAL \decoder|deburst|Add0~61\ : std_logic;
SIGNAL \decoder|deburst|Add0~62_combout\ : std_logic;
SIGNAL \decoder|deburst|Add0~64_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~65_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~66_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~94_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~0_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~95_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~1\ : std_logic;
SIGNAL \decoder|deburst|Add1~3\ : std_logic;
SIGNAL \decoder|deburst|Add1~5\ : std_logic;
SIGNAL \decoder|deburst|Add1~7\ : std_logic;
SIGNAL \decoder|deburst|Add1~9\ : std_logic;
SIGNAL \decoder|deburst|Add1~10_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~92_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~11\ : std_logic;
SIGNAL \decoder|deburst|Add1~13\ : std_logic;
SIGNAL \decoder|deburst|Add1~14_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~90_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~15\ : std_logic;
SIGNAL \decoder|deburst|Add1~16_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~89_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~12_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~91_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan1~7_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~17\ : std_logic;
SIGNAL \decoder|deburst|Add1~19\ : std_logic;
SIGNAL \decoder|deburst|Add1~20_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~87_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~21\ : std_logic;
SIGNAL \decoder|deburst|Add1~22_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~86_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~18_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~88_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan1~6_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~23\ : std_logic;
SIGNAL \decoder|deburst|Add1~25\ : std_logic;
SIGNAL \decoder|deburst|Add1~26_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~84_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~27\ : std_logic;
SIGNAL \decoder|deburst|Add1~28_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~83_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~29\ : std_logic;
SIGNAL \decoder|deburst|Add1~30_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~82_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan1~5_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan1~8_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~31\ : std_logic;
SIGNAL \decoder|deburst|Add1~32_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~81_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~33\ : std_logic;
SIGNAL \decoder|deburst|Add1~35\ : std_logic;
SIGNAL \decoder|deburst|Add1~36_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~79_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~37\ : std_logic;
SIGNAL \decoder|deburst|Add1~38_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~78_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~39\ : std_logic;
SIGNAL \decoder|deburst|Add1~41\ : std_logic;
SIGNAL \decoder|deburst|Add1~42_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~76_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~43\ : std_logic;
SIGNAL \decoder|deburst|Add1~44_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~75_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~45\ : std_logic;
SIGNAL \decoder|deburst|Add1~47\ : std_logic;
SIGNAL \decoder|deburst|Add1~48_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~73_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~49\ : std_logic;
SIGNAL \decoder|deburst|Add1~51\ : std_logic;
SIGNAL \decoder|deburst|Add1~52_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~71_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~53\ : std_logic;
SIGNAL \decoder|deburst|Add1~54_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~70_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~55\ : std_logic;
SIGNAL \decoder|deburst|Add1~56_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~69_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~57\ : std_logic;
SIGNAL \decoder|deburst|Add1~58_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~68_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan1~0_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~50_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~72_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan1~1_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~40_combout\ : std_logic;
SIGNAL \decoder|deburst|Add1~77_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan1~3_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan1~4_combout\ : std_logic;
SIGNAL \decoder|deburst|LessThan1~9_combout\ : std_logic;
SIGNAL \decoder|deburst|trame_deburst~regout\ : std_logic;
SIGNAL \decoder|demanchester|Selector4~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~1_cout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~3_cout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~5_cout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~7_cout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~9_cout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~11_cout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~12_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~5_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~13\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~15\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~16_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~17\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~18_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~3_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~19\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~21\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~23\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~24_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~1_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~25\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~26_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~27\ : std_logic;
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
SIGNAL \decoder|tick_gen|Add1~47\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~48_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~49\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~51\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~52_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~53\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~54_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~55\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~56_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~57\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~58_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~46_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~1_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~40_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~42_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~3_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~22_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~5_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~20_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~14_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~6_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~7_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~8_combout\ : std_logic;
SIGNAL \decoder|tick_gen|tick_manch~regout\ : std_logic;
SIGNAL \decoder|demanchester|State.suit00~regout\ : std_logic;
SIGNAL \decoder|demanchester|Selector1~0_combout\ : std_logic;
SIGNAL \decoder|demanchester|State.Start~regout\ : std_logic;
SIGNAL \decoder|demanchester|Selector7~0_combout\ : std_logic;
SIGNAL \decoder|demanchester|State.suit11~regout\ : std_logic;
SIGNAL \decoder|demanchester|Selector5~0_combout\ : std_logic;
SIGNAL \decoder|demanchester|State.suit01~regout\ : std_logic;
SIGNAL \decoder|demanchester|Selector3~0_combout\ : std_logic;
SIGNAL \decoder|demanchester|State.valid1~regout\ : std_logic;
SIGNAL \decoder|demanchester|Selector6~0_combout\ : std_logic;
SIGNAL \decoder|demanchester|State.suit10~regout\ : std_logic;
SIGNAL \decoder|demanchester|Selector2~0_combout\ : std_logic;
SIGNAL \decoder|demanchester|State.valid0~regout\ : std_logic;
SIGNAL \decoder|demanchester|WideOr0~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector6~3_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector6~2_combout\ : std_logic;
SIGNAL \decoder|decoder|EF.State_Error~regout\ : std_logic;
SIGNAL \decoder|decoder|Selector2~2_combout\ : std_logic;
SIGNAL \decoder|decoder|EF.State_Begin~regout\ : std_logic;
SIGNAL \decoder|decoder|process_0~0_combout\ : std_logic;
SIGNAL \decoder|decoder|EF~14_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector3~2_combout\ : std_logic;
SIGNAL \decoder|decoder|EF.State_Init~regout\ : std_logic;
SIGNAL \decoder|decoder|Selector5~0_combout\ : std_logic;
SIGNAL \decoder|decoder|EF.State_Send~regout\ : std_logic;
SIGNAL \decoder|decoder|Selector4~4_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector4~9_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector4~7_combout\ : std_logic;
SIGNAL \decoder|decoder|EF.State_Extract~regout\ : std_logic;
SIGNAL \decoder|decoder|Add0~2_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~0_combout\ : std_logic;
SIGNAL \decoder|decoder|data~0_combout\ : std_logic;
SIGNAL \decoder|decoder|data~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector7~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~1_combout\ : std_logic;
SIGNAL \decoder|decoder|data~2_combout\ : std_logic;
SIGNAL \decoder|decoder|data~3_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~2_combout\ : std_logic;
SIGNAL \decoder|decoder|data~4_combout\ : std_logic;
SIGNAL \decoder|decoder|data~5_combout\ : std_logic;
SIGNAL \decoder|decoder|data~7_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~4_combout\ : std_logic;
SIGNAL \decoder|decoder|data~8_combout\ : std_logic;
SIGNAL \decoder|decoder|data~9_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~5_combout\ : std_logic;
SIGNAL \decoder|decoder|data~10_combout\ : std_logic;
SIGNAL \decoder|decoder|data~11_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~6_combout\ : std_logic;
SIGNAL \decoder|decoder|data~12_combout\ : std_logic;
SIGNAL \decoder|decoder|data~13_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~7_combout\ : std_logic;
SIGNAL \decoder|decoder|data~14_combout\ : std_logic;
SIGNAL \decoder|decoder|data~15_combout\ : std_logic;
SIGNAL \decoder|decoder|data~17_combout\ : std_logic;
SIGNAL \decoder|decoder|data~18_combout\ : std_logic;
SIGNAL \decoder|decoder|data~19_combout\ : std_logic;
SIGNAL \decoder|decoder|data~21_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector1~0_combout\ : std_logic;
SIGNAL \decoder|decoder|error_sig~regout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~11_combout\ : std_logic;
SIGNAL \decoder|decoder|data~22_combout\ : std_logic;
SIGNAL \decoder|decoder|data~23_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector0~0_combout\ : std_logic;
SIGNAL \decoder|decoder|enable~regout\ : std_logic;
SIGNAL \signal_in~combout\ : std_logic;
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
SIGNAL \Address_in~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \decoder|deburst|cmpt_start\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \decoder|deburst|cmpt_stop\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Cmd_in~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;
SIGNAL \decoder|decoder|ALT_INV_EF.State_Extract~regout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_rst <= rst;
ww_Address_in <= Address_in;
ww_Cmd_in <= Cmd_in;
ww_Go <= Go;
ww_signal_in <= signal_in;
Address_out <= ww_Address_out;
Cmd_out <= ww_Cmd_out;
error_sig <= ww_error_sig;
toggle <= ww_toggle;
go_out <= ww_go_out;
enable <= ww_enable;
Tx_out <= ww_Tx_out;
signal_out <= ww_signal_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\ALT_INV_rst~combout\ <= NOT \rst~combout\;
\decoder|decoder|ALT_INV_EF.State_Extract~regout\ <= NOT \decoder|decoder|EF.State_Extract~regout\;

-- Location: LCCOMB_X36_Y9_N10
\decoder|decoder|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~14_combout\ = (\decoder|decoder|i\(5) & (\decoder|decoder|Add0~13\ & VCC)) # (!\decoder|decoder|i\(5) & (!\decoder|decoder|Add0~13\))
-- \decoder|decoder|Add0~15\ = CARRY((!\decoder|decoder|i\(5) & !\decoder|decoder|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(5),
	datad => VCC,
	cin => \decoder|decoder|Add0~13\,
	combout => \decoder|decoder|Add0~14_combout\,
	cout => \decoder|decoder|Add0~15\);

-- Location: LCCOMB_X36_Y9_N12
\decoder|decoder|Add0~16\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X36_Y9_N16
\decoder|decoder|Add0~20\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X36_Y9_N28
\decoder|decoder|Add0~32\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X36_Y8_N2
\decoder|decoder|Add0~38\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X36_Y8_N18
\decoder|decoder|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~54_combout\ = (\decoder|decoder|i\(25) & (\decoder|decoder|Add0~53\ & VCC)) # (!\decoder|decoder|i\(25) & (!\decoder|decoder|Add0~53\))
-- \decoder|decoder|Add0~55\ = CARRY((!\decoder|decoder|i\(25) & !\decoder|decoder|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(25),
	datad => VCC,
	cin => \decoder|decoder|Add0~53\,
	combout => \decoder|decoder|Add0~54_combout\,
	cout => \decoder|decoder|Add0~55\);

-- Location: LCCOMB_X36_Y8_N20
\decoder|decoder|Add0~56\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X40_Y26_N2
\encoder|MAE_emission|Add0~2\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X40_Y26_N8
\encoder|MAE_emission|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~8_combout\ = (\encoder|MAE_emission|i\(4) & ((GND) # (!\encoder|MAE_emission|Add0~7\))) # (!\encoder|MAE_emission|i\(4) & (\encoder|MAE_emission|Add0~7\ $ (GND)))
-- \encoder|MAE_emission|Add0~9\ = CARRY((\encoder|MAE_emission|i\(4)) # (!\encoder|MAE_emission|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(4),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~7\,
	combout => \encoder|MAE_emission|Add0~8_combout\,
	cout => \encoder|MAE_emission|Add0~9\);

-- Location: LCCOMB_X40_Y26_N10
\encoder|MAE_emission|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~10_combout\ = (\encoder|MAE_emission|i\(5) & (\encoder|MAE_emission|Add0~9\ & VCC)) # (!\encoder|MAE_emission|i\(5) & (!\encoder|MAE_emission|Add0~9\))
-- \encoder|MAE_emission|Add0~11\ = CARRY((!\encoder|MAE_emission|i\(5) & !\encoder|MAE_emission|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(5),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~9\,
	combout => \encoder|MAE_emission|Add0~10_combout\,
	cout => \encoder|MAE_emission|Add0~11\);

-- Location: LCCOMB_X40_Y26_N12
\encoder|MAE_emission|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~12_combout\ = (\encoder|MAE_emission|i\(6) & ((GND) # (!\encoder|MAE_emission|Add0~11\))) # (!\encoder|MAE_emission|i\(6) & (\encoder|MAE_emission|Add0~11\ $ (GND)))
-- \encoder|MAE_emission|Add0~13\ = CARRY((\encoder|MAE_emission|i\(6)) # (!\encoder|MAE_emission|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(6),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~11\,
	combout => \encoder|MAE_emission|Add0~12_combout\,
	cout => \encoder|MAE_emission|Add0~13\);

-- Location: LCCOMB_X40_Y26_N14
\encoder|MAE_emission|Add0~14\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X40_Y26_N18
\encoder|MAE_emission|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~18_combout\ = (\encoder|MAE_emission|i\(9) & (\encoder|MAE_emission|Add0~17\ & VCC)) # (!\encoder|MAE_emission|i\(9) & (!\encoder|MAE_emission|Add0~17\))
-- \encoder|MAE_emission|Add0~19\ = CARRY((!\encoder|MAE_emission|i\(9) & !\encoder|MAE_emission|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(9),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~17\,
	combout => \encoder|MAE_emission|Add0~18_combout\,
	cout => \encoder|MAE_emission|Add0~19\);

-- Location: LCCOMB_X40_Y26_N20
\encoder|MAE_emission|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~20_combout\ = (\encoder|MAE_emission|i\(10) & ((GND) # (!\encoder|MAE_emission|Add0~19\))) # (!\encoder|MAE_emission|i\(10) & (\encoder|MAE_emission|Add0~19\ $ (GND)))
-- \encoder|MAE_emission|Add0~21\ = CARRY((\encoder|MAE_emission|i\(10)) # (!\encoder|MAE_emission|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(10),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~19\,
	combout => \encoder|MAE_emission|Add0~20_combout\,
	cout => \encoder|MAE_emission|Add0~21\);

-- Location: LCCOMB_X40_Y26_N24
\encoder|MAE_emission|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~24_combout\ = (\encoder|MAE_emission|i\(12) & ((GND) # (!\encoder|MAE_emission|Add0~23\))) # (!\encoder|MAE_emission|i\(12) & (\encoder|MAE_emission|Add0~23\ $ (GND)))
-- \encoder|MAE_emission|Add0~25\ = CARRY((\encoder|MAE_emission|i\(12)) # (!\encoder|MAE_emission|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(12),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~23\,
	combout => \encoder|MAE_emission|Add0~24_combout\,
	cout => \encoder|MAE_emission|Add0~25\);

-- Location: LCCOMB_X40_Y26_N26
\encoder|MAE_emission|Add0~26\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X40_Y26_N28
\encoder|MAE_emission|Add0~28\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X40_Y26_N30
\encoder|MAE_emission|Add0~30\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X40_Y25_N2
\encoder|MAE_emission|Add0~34\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X40_Y25_N6
\encoder|MAE_emission|Add0~38\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X40_Y25_N18
\encoder|MAE_emission|Add0~50\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X40_Y25_N20
\encoder|MAE_emission|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~52_combout\ = (\encoder|MAE_emission|i\(26) & ((GND) # (!\encoder|MAE_emission|Add0~51\))) # (!\encoder|MAE_emission|i\(26) & (\encoder|MAE_emission|Add0~51\ $ (GND)))
-- \encoder|MAE_emission|Add0~53\ = CARRY((\encoder|MAE_emission|i\(26)) # (!\encoder|MAE_emission|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(26),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~51\,
	combout => \encoder|MAE_emission|Add0~52_combout\,
	cout => \encoder|MAE_emission|Add0~53\);

-- Location: LCCOMB_X40_Y25_N22
\encoder|MAE_emission|Add0~54\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X40_Y25_N24
\encoder|MAE_emission|Add0~56\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X40_Y25_N26
\encoder|MAE_emission|Add0~58\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X40_Y25_N28
\encoder|MAE_emission|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~60_combout\ = (\encoder|MAE_emission|i\(30) & ((GND) # (!\encoder|MAE_emission|Add0~59\))) # (!\encoder|MAE_emission|i\(30) & (\encoder|MAE_emission|Add0~59\ $ (GND)))
-- \encoder|MAE_emission|Add0~61\ = CARRY((\encoder|MAE_emission|i\(30)) # (!\encoder|MAE_emission|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(30),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~59\,
	combout => \encoder|MAE_emission|Add0~60_combout\,
	cout => \encoder|MAE_emission|Add0~61\);

-- Location: LCCOMB_X40_Y25_N30
\encoder|MAE_emission|Add0~62\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X18_Y10_N16
\decoder|tick_gen|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~16_combout\ = (\decoder|tick_gen|stbit\(8) & (!\decoder|tick_gen|Add2~15\ & VCC)) # (!\decoder|tick_gen|stbit\(8) & (\decoder|tick_gen|Add2~15\ $ (GND)))
-- \decoder|tick_gen|Add2~17\ = CARRY((!\decoder|tick_gen|stbit\(8) & !\decoder|tick_gen|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(8),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~15\,
	combout => \decoder|tick_gen|Add2~16_combout\,
	cout => \decoder|tick_gen|Add2~17\);

-- Location: LCCOMB_X18_Y10_N20
\decoder|tick_gen|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~20_combout\ = (\decoder|tick_gen|stbit\(10) & (\decoder|tick_gen|Add2~19\ $ (GND))) # (!\decoder|tick_gen|stbit\(10) & (!\decoder|tick_gen|Add2~19\ & VCC))
-- \decoder|tick_gen|Add2~21\ = CARRY((\decoder|tick_gen|stbit\(10) & !\decoder|tick_gen|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(10),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~19\,
	combout => \decoder|tick_gen|Add2~20_combout\,
	cout => \decoder|tick_gen|Add2~21\);

-- Location: LCCOMB_X18_Y10_N24
\decoder|tick_gen|Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~24_combout\ = (\decoder|tick_gen|stbit\(12) & (!\decoder|tick_gen|Add2~23\ & VCC)) # (!\decoder|tick_gen|stbit\(12) & (\decoder|tick_gen|Add2~23\ $ (GND)))
-- \decoder|tick_gen|Add2~25\ = CARRY((!\decoder|tick_gen|stbit\(12) & !\decoder|tick_gen|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(12),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~23\,
	combout => \decoder|tick_gen|Add2~24_combout\,
	cout => \decoder|tick_gen|Add2~25\);

-- Location: LCCOMB_X18_Y9_N12
\decoder|tick_gen|Add2~44\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X18_Y9_N24
\decoder|tick_gen|Add2~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~56_combout\ = (\decoder|tick_gen|stbit\(28) & (\decoder|tick_gen|Add2~55\ $ (GND))) # (!\decoder|tick_gen|stbit\(28) & (!\decoder|tick_gen|Add2~55\ & VCC))
-- \decoder|tick_gen|Add2~57\ = CARRY((\decoder|tick_gen|stbit\(28) & !\decoder|tick_gen|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(28),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~55\,
	combout => \decoder|tick_gen|Add2~56_combout\,
	cout => \decoder|tick_gen|Add2~57\);

-- Location: LCCOMB_X43_Y24_N8
\encoder|TickGenerator|Add0~8\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X43_Y24_N10
\encoder|TickGenerator|Add0~10\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X43_Y24_N12
\encoder|TickGenerator|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~12_combout\ = (\encoder|TickGenerator|stburst\(6) & (!\encoder|TickGenerator|Add0~11\ & VCC)) # (!\encoder|TickGenerator|stburst\(6) & (\encoder|TickGenerator|Add0~11\ $ (GND)))
-- \encoder|TickGenerator|Add0~13\ = CARRY((!\encoder|TickGenerator|stburst\(6) & !\encoder|TickGenerator|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(6),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~11\,
	combout => \encoder|TickGenerator|Add0~12_combout\,
	cout => \encoder|TickGenerator|Add0~13\);

-- Location: LCCOMB_X43_Y23_N10
\encoder|TickGenerator|Add0~42\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X43_Y23_N12
\encoder|TickGenerator|Add0~44\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X43_Y23_N16
\encoder|TickGenerator|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~48_combout\ = (\encoder|TickGenerator|stburst\(24) & (\encoder|TickGenerator|Add0~47\ $ (GND))) # (!\encoder|TickGenerator|stburst\(24) & (!\encoder|TickGenerator|Add0~47\ & VCC))
-- \encoder|TickGenerator|Add0~49\ = CARRY((\encoder|TickGenerator|stburst\(24) & !\encoder|TickGenerator|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(24),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~47\,
	combout => \encoder|TickGenerator|Add0~48_combout\,
	cout => \encoder|TickGenerator|Add0~49\);

-- Location: LCCOMB_X43_Y23_N28
\encoder|TickGenerator|Add0~60\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X43_Y23_N30
\encoder|TickGenerator|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~62_combout\ = \encoder|TickGenerator|Add0~61\ $ (\encoder|TickGenerator|stburst\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \encoder|TickGenerator|stburst\(31),
	cin => \encoder|TickGenerator|Add0~61\,
	combout => \encoder|TickGenerator|Add0~62_combout\);

-- Location: LCCOMB_X45_Y27_N16
\encoder|TickGenerator|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~14_combout\ = (\encoder|TickGenerator|stbit\(8) & ((\encoder|TickGenerator|Add2~13\) # (GND))) # (!\encoder|TickGenerator|stbit\(8) & (!\encoder|TickGenerator|Add2~13\))
-- \encoder|TickGenerator|Add2~15\ = CARRY((\encoder|TickGenerator|stbit\(8)) # (!\encoder|TickGenerator|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(8),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~13\,
	combout => \encoder|TickGenerator|Add2~14_combout\,
	cout => \encoder|TickGenerator|Add2~15\);

-- Location: LCCOMB_X45_Y27_N24
\encoder|TickGenerator|Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~22_combout\ = (\encoder|TickGenerator|stbit\(12) & ((\encoder|TickGenerator|Add2~21\) # (GND))) # (!\encoder|TickGenerator|stbit\(12) & (!\encoder|TickGenerator|Add2~21\))
-- \encoder|TickGenerator|Add2~23\ = CARRY((\encoder|TickGenerator|stbit\(12)) # (!\encoder|TickGenerator|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(12),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~21\,
	combout => \encoder|TickGenerator|Add2~22_combout\,
	cout => \encoder|TickGenerator|Add2~23\);

-- Location: LCCOMB_X45_Y26_N6
\encoder|TickGenerator|Add2~36\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X45_Y26_N24
\encoder|TickGenerator|Add2~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~54_combout\ = (\encoder|TickGenerator|stbit\(28) & (!\encoder|TickGenerator|Add2~53\)) # (!\encoder|TickGenerator|stbit\(28) & ((\encoder|TickGenerator|Add2~53\) # (GND)))
-- \encoder|TickGenerator|Add2~55\ = CARRY((!\encoder|TickGenerator|Add2~53\) # (!\encoder|TickGenerator|stbit\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(28),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~53\,
	combout => \encoder|TickGenerator|Add2~54_combout\,
	cout => \encoder|TickGenerator|Add2~55\);

-- Location: LCCOMB_X45_Y25_N16
\encoder|TickGenerator|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~16_combout\ = (\encoder|TickGenerator|stmanch\(8) & (!\encoder|TickGenerator|Add1~15\ & VCC)) # (!\encoder|TickGenerator|stmanch\(8) & (\encoder|TickGenerator|Add1~15\ $ (GND)))
-- \encoder|TickGenerator|Add1~17\ = CARRY((!\encoder|TickGenerator|stmanch\(8) & !\encoder|TickGenerator|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(8),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~15\,
	combout => \encoder|TickGenerator|Add1~16_combout\,
	cout => \encoder|TickGenerator|Add1~17\);

-- Location: LCCOMB_X45_Y25_N26
\encoder|TickGenerator|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~26_combout\ = (\encoder|TickGenerator|stmanch\(13) & ((\encoder|TickGenerator|Add1~25\) # (GND))) # (!\encoder|TickGenerator|stmanch\(13) & (!\encoder|TickGenerator|Add1~25\))
-- \encoder|TickGenerator|Add1~27\ = CARRY((\encoder|TickGenerator|stmanch\(13)) # (!\encoder|TickGenerator|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(13),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~25\,
	combout => \encoder|TickGenerator|Add1~26_combout\,
	cout => \encoder|TickGenerator|Add1~27\);

-- Location: LCCOMB_X45_Y24_N6
\encoder|TickGenerator|Add1~38\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X45_Y24_N22
\encoder|TickGenerator|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~54_combout\ = (\encoder|TickGenerator|stmanch\(27) & (!\encoder|TickGenerator|Add1~53\)) # (!\encoder|TickGenerator|stmanch\(27) & ((\encoder|TickGenerator|Add1~53\) # (GND)))
-- \encoder|TickGenerator|Add1~55\ = CARRY((!\encoder|TickGenerator|Add1~53\) # (!\encoder|TickGenerator|stmanch\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(27),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~53\,
	combout => \encoder|TickGenerator|Add1~54_combout\,
	cout => \encoder|TickGenerator|Add1~55\);

-- Location: LCCOMB_X45_Y24_N24
\encoder|TickGenerator|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~56_combout\ = (\encoder|TickGenerator|stmanch\(28) & (\encoder|TickGenerator|Add1~55\ $ (GND))) # (!\encoder|TickGenerator|stmanch\(28) & (!\encoder|TickGenerator|Add1~55\ & VCC))
-- \encoder|TickGenerator|Add1~57\ = CARRY((\encoder|TickGenerator|stmanch\(28) & !\encoder|TickGenerator|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(28),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~55\,
	combout => \encoder|TickGenerator|Add1~56_combout\,
	cout => \encoder|TickGenerator|Add1~57\);

-- Location: LCCOMB_X45_Y24_N26
\encoder|TickGenerator|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~58_combout\ = (\encoder|TickGenerator|stmanch\(29) & (!\encoder|TickGenerator|Add1~57\)) # (!\encoder|TickGenerator|stmanch\(29) & ((\encoder|TickGenerator|Add1~57\) # (GND)))
-- \encoder|TickGenerator|Add1~59\ = CARRY((!\encoder|TickGenerator|Add1~57\) # (!\encoder|TickGenerator|stmanch\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(29),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~57\,
	combout => \encoder|TickGenerator|Add1~58_combout\,
	cout => \encoder|TickGenerator|Add1~59\);

-- Location: LCCOMB_X45_Y24_N28
\encoder|TickGenerator|Add1~60\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X45_Y24_N30
\encoder|TickGenerator|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~62_combout\ = \encoder|TickGenerator|Add1~61\ $ (\encoder|TickGenerator|stmanch\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \encoder|TickGenerator|stmanch\(31),
	cin => \encoder|TickGenerator|Add1~61\,
	combout => \encoder|TickGenerator|Add1~62_combout\);

-- Location: LCCOMB_X23_Y21_N2
\decoder|deburst|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~2_combout\ = (\decoder|deburst|cmpt_start\(1) & (!\decoder|deburst|Add1~1\)) # (!\decoder|deburst|cmpt_start\(1) & ((\decoder|deburst|Add1~1\) # (GND)))
-- \decoder|deburst|Add1~3\ = CARRY((!\decoder|deburst|Add1~1\) # (!\decoder|deburst|cmpt_start\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(1),
	datad => VCC,
	cin => \decoder|deburst|Add1~1\,
	combout => \decoder|deburst|Add1~2_combout\,
	cout => \decoder|deburst|Add1~3\);

-- Location: LCCOMB_X23_Y21_N4
\decoder|deburst|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~4_combout\ = (\decoder|deburst|cmpt_start\(2) & (\decoder|deburst|Add1~3\ $ (GND))) # (!\decoder|deburst|cmpt_start\(2) & (!\decoder|deburst|Add1~3\ & VCC))
-- \decoder|deburst|Add1~5\ = CARRY((\decoder|deburst|cmpt_start\(2) & !\decoder|deburst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(2),
	datad => VCC,
	cin => \decoder|deburst|Add1~3\,
	combout => \decoder|deburst|Add1~4_combout\,
	cout => \decoder|deburst|Add1~5\);

-- Location: LCCOMB_X23_Y21_N6
\decoder|deburst|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~6_combout\ = (\decoder|deburst|cmpt_start\(3) & (!\decoder|deburst|Add1~5\)) # (!\decoder|deburst|cmpt_start\(3) & ((\decoder|deburst|Add1~5\) # (GND)))
-- \decoder|deburst|Add1~7\ = CARRY((!\decoder|deburst|Add1~5\) # (!\decoder|deburst|cmpt_start\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(3),
	datad => VCC,
	cin => \decoder|deburst|Add1~5\,
	combout => \decoder|deburst|Add1~6_combout\,
	cout => \decoder|deburst|Add1~7\);

-- Location: LCCOMB_X23_Y21_N8
\decoder|deburst|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~8_combout\ = (\decoder|deburst|cmpt_start\(4) & (\decoder|deburst|Add1~7\ $ (GND))) # (!\decoder|deburst|cmpt_start\(4) & (!\decoder|deburst|Add1~7\ & VCC))
-- \decoder|deburst|Add1~9\ = CARRY((\decoder|deburst|cmpt_start\(4) & !\decoder|deburst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_start\(4),
	datad => VCC,
	cin => \decoder|deburst|Add1~7\,
	combout => \decoder|deburst|Add1~8_combout\,
	cout => \decoder|deburst|Add1~9\);

-- Location: LCCOMB_X23_Y21_N24
\decoder|deburst|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~24_combout\ = (\decoder|deburst|cmpt_start\(12) & (\decoder|deburst|Add1~23\ $ (GND))) # (!\decoder|deburst|cmpt_start\(12) & (!\decoder|deburst|Add1~23\ & VCC))
-- \decoder|deburst|Add1~25\ = CARRY((\decoder|deburst|cmpt_start\(12) & !\decoder|deburst|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_start\(12),
	datad => VCC,
	cin => \decoder|deburst|Add1~23\,
	combout => \decoder|deburst|Add1~24_combout\,
	cout => \decoder|deburst|Add1~25\);

-- Location: LCCOMB_X23_Y20_N2
\decoder|deburst|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~34_combout\ = (\decoder|deburst|cmpt_start\(17) & (!\decoder|deburst|Add1~33\)) # (!\decoder|deburst|cmpt_start\(17) & ((\decoder|deburst|Add1~33\) # (GND)))
-- \decoder|deburst|Add1~35\ = CARRY((!\decoder|deburst|Add1~33\) # (!\decoder|deburst|cmpt_start\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_start\(17),
	datad => VCC,
	cin => \decoder|deburst|Add1~33\,
	combout => \decoder|deburst|Add1~34_combout\,
	cout => \decoder|deburst|Add1~35\);

-- Location: LCCOMB_X23_Y20_N14
\decoder|deburst|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~46_combout\ = (\decoder|deburst|cmpt_start\(23) & (!\decoder|deburst|Add1~45\)) # (!\decoder|deburst|cmpt_start\(23) & ((\decoder|deburst|Add1~45\) # (GND)))
-- \decoder|deburst|Add1~47\ = CARRY((!\decoder|deburst|Add1~45\) # (!\decoder|deburst|cmpt_start\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_start\(23),
	datad => VCC,
	cin => \decoder|deburst|Add1~45\,
	combout => \decoder|deburst|Add1~46_combout\,
	cout => \decoder|deburst|Add1~47\);

-- Location: LCCOMB_X23_Y20_N26
\decoder|deburst|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~58_combout\ = (\decoder|deburst|cmpt_start\(29) & (!\decoder|deburst|Add1~57\)) # (!\decoder|deburst|cmpt_start\(29) & ((\decoder|deburst|Add1~57\) # (GND)))
-- \decoder|deburst|Add1~59\ = CARRY((!\decoder|deburst|Add1~57\) # (!\decoder|deburst|cmpt_start\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(29),
	datad => VCC,
	cin => \decoder|deburst|Add1~57\,
	combout => \decoder|deburst|Add1~58_combout\,
	cout => \decoder|deburst|Add1~59\);

-- Location: LCCOMB_X23_Y20_N28
\decoder|deburst|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~60_combout\ = (\decoder|deburst|cmpt_start\(30) & (\decoder|deburst|Add1~59\ $ (GND))) # (!\decoder|deburst|cmpt_start\(30) & (!\decoder|deburst|Add1~59\ & VCC))
-- \decoder|deburst|Add1~61\ = CARRY((\decoder|deburst|cmpt_start\(30) & !\decoder|deburst|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(30),
	datad => VCC,
	cin => \decoder|deburst|Add1~59\,
	combout => \decoder|deburst|Add1~60_combout\,
	cout => \decoder|deburst|Add1~61\);

-- Location: LCCOMB_X23_Y20_N30
\decoder|deburst|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~62_combout\ = \decoder|deburst|Add1~61\ $ (\decoder|deburst|cmpt_start\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \decoder|deburst|cmpt_start\(31),
	cin => \decoder|deburst|Add1~61\,
	combout => \decoder|deburst|Add1~62_combout\);

-- Location: LCCOMB_X17_Y10_N30
\decoder|tick_gen|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~28_combout\ = (\decoder|tick_gen|stmanch\(15) & (!\decoder|tick_gen|Add1~27\ & VCC)) # (!\decoder|tick_gen|stmanch\(15) & (\decoder|tick_gen|Add1~27\ $ (GND)))
-- \decoder|tick_gen|Add1~29\ = CARRY((!\decoder|tick_gen|stmanch\(15) & !\decoder|tick_gen|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(15),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~27\,
	combout => \decoder|tick_gen|Add1~28_combout\,
	cout => \decoder|tick_gen|Add1~29\);

-- Location: LCCOMB_X17_Y9_N6
\decoder|tick_gen|Add1~36\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X17_Y9_N20
\decoder|tick_gen|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~50_combout\ = (\decoder|tick_gen|stmanch\(26) & (!\decoder|tick_gen|Add1~49\)) # (!\decoder|tick_gen|stmanch\(26) & ((\decoder|tick_gen|Add1~49\) # (GND)))
-- \decoder|tick_gen|Add1~51\ = CARRY((!\decoder|tick_gen|Add1~49\) # (!\decoder|tick_gen|stmanch\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(26),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~49\,
	combout => \decoder|tick_gen|Add1~50_combout\,
	cout => \decoder|tick_gen|Add1~51\);

-- Location: LCCOMB_X17_Y9_N28
\decoder|tick_gen|Add1~58\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X17_Y9_N30
\decoder|tick_gen|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~60_combout\ = \decoder|tick_gen|Add1~59\ $ (!\decoder|tick_gen|stmanch\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \decoder|tick_gen|stmanch\(31),
	cin => \decoder|tick_gen|Add1~59\,
	combout => \decoder|tick_gen|Add1~60_combout\);

-- Location: LCCOMB_X45_Y29_N16
\encoder|TickGenerator|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~14_combout\ = (\encoder|TickGenerator|sttrame\(8) & ((\encoder|TickGenerator|Add3~13\) # (GND))) # (!\encoder|TickGenerator|sttrame\(8) & (!\encoder|TickGenerator|Add3~13\))
-- \encoder|TickGenerator|Add3~15\ = CARRY((\encoder|TickGenerator|sttrame\(8)) # (!\encoder|TickGenerator|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(8),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~13\,
	combout => \encoder|TickGenerator|Add3~14_combout\,
	cout => \encoder|TickGenerator|Add3~15\);

-- Location: LCCOMB_X45_Y28_N4
\encoder|TickGenerator|Add3~34\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X45_Y28_N6
\encoder|TickGenerator|Add3~36\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X45_Y28_N16
\encoder|TickGenerator|Add3~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~46_combout\ = (\encoder|TickGenerator|sttrame\(24) & (!\encoder|TickGenerator|Add3~45\)) # (!\encoder|TickGenerator|sttrame\(24) & ((\encoder|TickGenerator|Add3~45\) # (GND)))
-- \encoder|TickGenerator|Add3~47\ = CARRY((!\encoder|TickGenerator|Add3~45\) # (!\encoder|TickGenerator|sttrame\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(24),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~45\,
	combout => \encoder|TickGenerator|Add3~46_combout\,
	cout => \encoder|TickGenerator|Add3~47\);

-- Location: LCCOMB_X45_Y28_N20
\encoder|TickGenerator|Add3~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~50_combout\ = (\encoder|TickGenerator|sttrame\(26) & (!\encoder|TickGenerator|Add3~49\)) # (!\encoder|TickGenerator|sttrame\(26) & ((\encoder|TickGenerator|Add3~49\) # (GND)))
-- \encoder|TickGenerator|Add3~51\ = CARRY((!\encoder|TickGenerator|Add3~49\) # (!\encoder|TickGenerator|sttrame\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(26),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~49\,
	combout => \encoder|TickGenerator|Add3~50_combout\,
	cout => \encoder|TickGenerator|Add3~51\);

-- Location: LCCOMB_X45_Y28_N24
\encoder|TickGenerator|Add3~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~54_combout\ = (\encoder|TickGenerator|sttrame\(28) & (!\encoder|TickGenerator|Add3~53\)) # (!\encoder|TickGenerator|sttrame\(28) & ((\encoder|TickGenerator|Add3~53\) # (GND)))
-- \encoder|TickGenerator|Add3~55\ = CARRY((!\encoder|TickGenerator|Add3~53\) # (!\encoder|TickGenerator|sttrame\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(28),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~53\,
	combout => \encoder|TickGenerator|Add3~54_combout\,
	cout => \encoder|TickGenerator|Add3~55\);

-- Location: LCCOMB_X24_Y23_N14
\decoder|deburst|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~14_combout\ = (\decoder|deburst|cmpt_stop\(7) & (\decoder|deburst|Add0~13\ & VCC)) # (!\decoder|deburst|cmpt_stop\(7) & (!\decoder|deburst|Add0~13\))
-- \decoder|deburst|Add0~15\ = CARRY((!\decoder|deburst|cmpt_stop\(7) & !\decoder|deburst|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(7),
	datad => VCC,
	cin => \decoder|deburst|Add0~13\,
	combout => \decoder|deburst|Add0~14_combout\,
	cout => \decoder|deburst|Add0~15\);

-- Location: LCCOMB_X24_Y22_N0
\decoder|deburst|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~32_combout\ = (\decoder|deburst|cmpt_stop\(16) & ((GND) # (!\decoder|deburst|Add0~31\))) # (!\decoder|deburst|cmpt_stop\(16) & (\decoder|deburst|Add0~31\ $ (GND)))
-- \decoder|deburst|Add0~33\ = CARRY((\decoder|deburst|cmpt_stop\(16)) # (!\decoder|deburst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(16),
	datad => VCC,
	cin => \decoder|deburst|Add0~31\,
	combout => \decoder|deburst|Add0~32_combout\,
	cout => \decoder|deburst|Add0~33\);

-- Location: LCCOMB_X28_Y22_N2
\decoder|tick_gen|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~2_combout\ = (\decoder|tick_gen|stburst\(1) & ((\decoder|tick_gen|Add0~1\) # (GND))) # (!\decoder|tick_gen|stburst\(1) & (!\decoder|tick_gen|Add0~1\))
-- \decoder|tick_gen|Add0~3\ = CARRY((\decoder|tick_gen|stburst\(1)) # (!\decoder|tick_gen|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(1),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~1\,
	combout => \decoder|tick_gen|Add0~2_combout\,
	cout => \decoder|tick_gen|Add0~3\);

-- Location: LCCOMB_X28_Y22_N8
\decoder|tick_gen|Add0~8\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X28_Y22_N20
\decoder|tick_gen|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~20_combout\ = (\decoder|tick_gen|stburst\(10) & (\decoder|tick_gen|Add0~19\ $ (GND))) # (!\decoder|tick_gen|stburst\(10) & (!\decoder|tick_gen|Add0~19\ & VCC))
-- \decoder|tick_gen|Add0~21\ = CARRY((\decoder|tick_gen|stburst\(10) & !\decoder|tick_gen|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(10),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~19\,
	combout => \decoder|tick_gen|Add0~20_combout\,
	cout => \decoder|tick_gen|Add0~21\);

-- Location: LCCOMB_X28_Y22_N24
\decoder|tick_gen|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~24_combout\ = (\decoder|tick_gen|stburst\(12) & (\decoder|tick_gen|Add0~23\ $ (GND))) # (!\decoder|tick_gen|stburst\(12) & (!\decoder|tick_gen|Add0~23\ & VCC))
-- \decoder|tick_gen|Add0~25\ = CARRY((\decoder|tick_gen|stburst\(12) & !\decoder|tick_gen|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(12),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~23\,
	combout => \decoder|tick_gen|Add0~24_combout\,
	cout => \decoder|tick_gen|Add0~25\);

-- Location: LCCOMB_X28_Y21_N20
\decoder|tick_gen|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~52_combout\ = (\decoder|tick_gen|stburst\(26) & (\decoder|tick_gen|Add0~51\ $ (GND))) # (!\decoder|tick_gen|stburst\(26) & (!\decoder|tick_gen|Add0~51\ & VCC))
-- \decoder|tick_gen|Add0~53\ = CARRY((\decoder|tick_gen|stburst\(26) & !\decoder|tick_gen|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(26),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~51\,
	combout => \decoder|tick_gen|Add0~52_combout\,
	cout => \decoder|tick_gen|Add0~53\);

-- Location: LCCOMB_X28_Y21_N22
\decoder|tick_gen|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~54_combout\ = (\decoder|tick_gen|stburst\(27) & (!\decoder|tick_gen|Add0~53\)) # (!\decoder|tick_gen|stburst\(27) & ((\decoder|tick_gen|Add0~53\) # (GND)))
-- \decoder|tick_gen|Add0~55\ = CARRY((!\decoder|tick_gen|Add0~53\) # (!\decoder|tick_gen|stburst\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(27),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~53\,
	combout => \decoder|tick_gen|Add0~54_combout\,
	cout => \decoder|tick_gen|Add0~55\);

-- Location: LCCOMB_X28_Y21_N24
\decoder|tick_gen|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~56_combout\ = (\decoder|tick_gen|stburst\(28) & (\decoder|tick_gen|Add0~55\ $ (GND))) # (!\decoder|tick_gen|stburst\(28) & (!\decoder|tick_gen|Add0~55\ & VCC))
-- \decoder|tick_gen|Add0~57\ = CARRY((\decoder|tick_gen|stburst\(28) & !\decoder|tick_gen|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(28),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~55\,
	combout => \decoder|tick_gen|Add0~56_combout\,
	cout => \decoder|tick_gen|Add0~57\);

-- Location: LCCOMB_X28_Y21_N26
\decoder|tick_gen|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~58_combout\ = (\decoder|tick_gen|stburst\(29) & (!\decoder|tick_gen|Add0~57\)) # (!\decoder|tick_gen|stburst\(29) & ((\decoder|tick_gen|Add0~57\) # (GND)))
-- \decoder|tick_gen|Add0~59\ = CARRY((!\decoder|tick_gen|Add0~57\) # (!\decoder|tick_gen|stburst\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(29),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~57\,
	combout => \decoder|tick_gen|Add0~58_combout\,
	cout => \decoder|tick_gen|Add0~59\);

-- Location: LCCOMB_X28_Y21_N28
\decoder|tick_gen|Add0~60\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X28_Y21_N30
\decoder|tick_gen|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~62_combout\ = \decoder|tick_gen|Add0~61\ $ (\decoder|tick_gen|stburst\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \decoder|tick_gen|stburst\(31),
	cin => \decoder|tick_gen|Add0~61\,
	combout => \decoder|tick_gen|Add0~62_combout\);

-- Location: LCFF_X43_Y26_N25
\encoder|MAE_emission|enable\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|Selector5~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|enable~regout\);

-- Location: LCFF_X31_Y10_N17
\decoder|demanchester|State.Init\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|demanchester|Selector0~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_manch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|demanchester|State.Init~regout\);

-- Location: LCFF_X35_Y8_N1
\decoder|decoder|i[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~73_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(26));

-- Location: LCFF_X35_Y8_N11
\decoder|decoder|i[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~74_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(25));

-- Location: LCCOMB_X35_Y8_N20
\decoder|decoder|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~1_combout\ = (((!\decoder|decoder|i\(26)) # (!\decoder|decoder|i\(28))) # (!\decoder|decoder|i\(27))) # (!\decoder|decoder|i\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(25),
	datab => \decoder|decoder|i\(27),
	datac => \decoder|decoder|i\(28),
	datad => \decoder|decoder|i\(26),
	combout => \decoder|decoder|Equal0~1_combout\);

-- Location: LCFF_X35_Y8_N13
\decoder|decoder|i[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~82_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(17));

-- Location: LCFF_X34_Y9_N13
\decoder|decoder|i[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~85_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(14));

-- Location: LCFF_X35_Y9_N31
\decoder|decoder|i[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~91_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(8));

-- Location: LCFF_X35_Y9_N3
\decoder|decoder|i[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~93_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(6));

-- Location: LCCOMB_X34_Y9_N6
\decoder|decoder|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~7_combout\ = (((!\decoder|decoder|i\(8)) # (!\decoder|decoder|i\(7))) # (!\decoder|decoder|i\(5))) # (!\decoder|decoder|i\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(6),
	datab => \decoder|decoder|i\(5),
	datac => \decoder|decoder|i\(7),
	datad => \decoder|decoder|i\(8),
	combout => \decoder|decoder|Equal0~7_combout\);

-- Location: LCCOMB_X34_Y8_N30
\decoder|decoder|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~3_combout\ = (!\decoder|decoder|i\(1) & (!\decoder|decoder|i\(2) & (\decoder|decoder|i\(3) & !\decoder|decoder|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(1),
	datab => \decoder|decoder|i\(2),
	datac => \decoder|decoder|i\(3),
	datad => \decoder|decoder|i\(0),
	combout => \decoder|decoder|Decoder0~3_combout\);

-- Location: LCCOMB_X34_Y8_N24
\decoder|decoder|data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~6_combout\ = (\decoder|decoder|Decoder0~3_combout\ & ((\decoder|tick_gen|tick_bit~regout\ & (\decoder|demanchester|WideOr0~0_combout\)) # (!\decoder|tick_gen|tick_bit~regout\ & ((\decoder|decoder|data\(9)))))) # 
-- (!\decoder|decoder|Decoder0~3_combout\ & (((\decoder|decoder|data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|WideOr0~0_combout\,
	datab => \decoder|decoder|Decoder0~3_combout\,
	datac => \decoder|tick_gen|tick_bit~regout\,
	datad => \decoder|decoder|data\(9),
	combout => \decoder|decoder|data~6_combout\);

-- Location: LCCOMB_X33_Y8_N20
\decoder|decoder|Decoder0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~8_combout\ = (!\decoder|decoder|i\(2) & (!\decoder|decoder|i\(0) & (\decoder|decoder|i\(1) & !\decoder|decoder|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(2),
	datab => \decoder|decoder|i\(0),
	datac => \decoder|decoder|i\(1),
	datad => \decoder|decoder|i\(3),
	combout => \decoder|decoder|Decoder0~8_combout\);

-- Location: LCCOMB_X33_Y8_N10
\decoder|decoder|data~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~16_combout\ = (\decoder|decoder|Decoder0~8_combout\ & ((\decoder|tick_gen|tick_bit~regout\ & ((\decoder|demanchester|WideOr0~0_combout\))) # (!\decoder|tick_gen|tick_bit~regout\ & (\decoder|decoder|data\(3))))) # 
-- (!\decoder|decoder|Decoder0~8_combout\ & (\decoder|decoder|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~8_combout\,
	datab => \decoder|decoder|data\(3),
	datac => \decoder|tick_gen|tick_bit~regout\,
	datad => \decoder|demanchester|WideOr0~0_combout\,
	combout => \decoder|decoder|data~16_combout\);

-- Location: LCCOMB_X33_Y8_N24
\decoder|decoder|Decoder0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~9_combout\ = (\decoder|decoder|i\(2) & (\decoder|decoder|i\(0) & (!\decoder|decoder|i\(1) & !\decoder|decoder|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(2),
	datab => \decoder|decoder|i\(0),
	datac => \decoder|decoder|i\(1),
	datad => \decoder|decoder|i\(3),
	combout => \decoder|decoder|Decoder0~9_combout\);

-- Location: LCCOMB_X34_Y8_N12
\decoder|decoder|Decoder0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~10_combout\ = (!\decoder|decoder|i\(1) & (\decoder|decoder|i\(2) & (!\decoder|decoder|i\(3) & !\decoder|decoder|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(1),
	datab => \decoder|decoder|i\(2),
	datac => \decoder|decoder|i\(3),
	datad => \decoder|decoder|i\(0),
	combout => \decoder|decoder|Decoder0~10_combout\);

-- Location: LCCOMB_X34_Y8_N6
\decoder|decoder|data~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~20_combout\ = (\decoder|tick_gen|tick_bit~regout\ & ((\decoder|decoder|Decoder0~10_combout\ & (\decoder|demanchester|WideOr0~0_combout\)) # (!\decoder|decoder|Decoder0~10_combout\ & ((\decoder|decoder|data\(5)))))) # 
-- (!\decoder|tick_gen|tick_bit~regout\ & (((\decoder|decoder|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|WideOr0~0_combout\,
	datab => \decoder|decoder|data\(5),
	datac => \decoder|tick_gen|tick_bit~regout\,
	datad => \decoder|decoder|Decoder0~10_combout\,
	combout => \decoder|decoder|data~20_combout\);

-- Location: LCFF_X41_Y25_N21
\encoder|MAE_emission|i[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[31]~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(31));

-- Location: LCFF_X41_Y25_N19
\encoder|MAE_emission|i[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[30]~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(30));

-- Location: LCFF_X41_Y25_N29
\encoder|MAE_emission|i[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[29]~4_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(29));

-- Location: LCFF_X41_Y25_N23
\encoder|MAE_emission|i[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[28]~5_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(28));

-- Location: LCCOMB_X42_Y25_N12
\encoder|MAE_emission|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~0_combout\ = (\encoder|MAE_emission|i\(31) & (\encoder|MAE_emission|i\(29) & (\encoder|MAE_emission|i\(30) & \encoder|MAE_emission|i\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(31),
	datab => \encoder|MAE_emission|i\(29),
	datac => \encoder|MAE_emission|i\(30),
	datad => \encoder|MAE_emission|i\(28),
	combout => \encoder|MAE_emission|Equal0~0_combout\);

-- Location: LCFF_X41_Y25_N9
\encoder|MAE_emission|i[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[27]~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(27));

-- Location: LCFF_X42_Y25_N11
\encoder|MAE_emission|i[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[17]~16_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(17));

-- Location: LCFF_X41_Y26_N27
\encoder|MAE_emission|i[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[14]~19_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(14));

-- Location: LCCOMB_X41_Y26_N8
\encoder|MAE_emission|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~5_combout\ = (\encoder|MAE_emission|i\(14) & (\encoder|MAE_emission|i\(13) & (\encoder|MAE_emission|i\(15) & \encoder|MAE_emission|i\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(14),
	datab => \encoder|MAE_emission|i\(13),
	datac => \encoder|MAE_emission|i\(15),
	datad => \encoder|MAE_emission|i\(12),
	combout => \encoder|MAE_emission|Equal0~5_combout\);

-- Location: LCFF_X41_Y25_N11
\encoder|MAE_emission|i[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[10]~23_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(10));

-- Location: LCFF_X41_Y26_N7
\encoder|MAE_emission|i[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[7]~26_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(7));

-- Location: LCCOMB_X43_Y26_N22
\encoder|MAE_emission|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector6~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~regout\ & !\encoder|MAE_emission|EF.State_Clear~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Init~regout\,
	datad => \encoder|MAE_emission|EF.State_Clear~regout\,
	combout => \encoder|MAE_emission|Selector6~0_combout\);

-- Location: LCCOMB_X43_Y26_N24
\encoder|MAE_emission|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector5~0_combout\ = (\encoder|MAE_emission|i[0]~0_combout\) # ((\encoder|MAE_emission|enable~regout\ & ((\encoder|MAE_emission|EF.State_Send~regout\) # (!\encoder|MAE_emission|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~0_combout\,
	datab => \encoder|MAE_emission|EF.State_Send~regout\,
	datac => \encoder|MAE_emission|enable~regout\,
	datad => \encoder|MAE_emission|Selector6~0_combout\,
	combout => \encoder|MAE_emission|Selector5~0_combout\);

-- Location: LCFF_X42_Y26_N31
\encoder|MAE_emission|reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \Cmd_in~combout\(5),
	sload => VCC,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|reg\(5));

-- Location: LCFF_X42_Y26_N13
\encoder|MAE_emission|reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \Address_in~combout\(0),
	sload => VCC,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|reg\(6));

-- Location: LCFF_X42_Y26_N27
\encoder|MAE_emission|reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \Cmd_in~combout\(4),
	sload => VCC,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|reg\(4));

-- Location: LCCOMB_X42_Y26_N26
\encoder|MAE_emission|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~2_combout\ = (\encoder|MAE_emission|i\(0) & ((\encoder|MAE_emission|i\(1) & ((\encoder|MAE_emission|reg\(6)))) # (!\encoder|MAE_emission|i\(1) & (\encoder|MAE_emission|reg\(4))))) # (!\encoder|MAE_emission|i\(0) & 
-- (\encoder|MAE_emission|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(0),
	datab => \encoder|MAE_emission|i\(1),
	datac => \encoder|MAE_emission|reg\(4),
	datad => \encoder|MAE_emission|reg\(6),
	combout => \encoder|MAE_emission|Mux0~2_combout\);

-- Location: LCFF_X42_Y26_N21
\encoder|MAE_emission|reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \Address_in~combout\(1),
	sload => VCC,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|reg\(7));

-- Location: LCCOMB_X42_Y26_N30
\encoder|MAE_emission|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~3_combout\ = (\encoder|MAE_emission|Mux0~2_combout\ & ((\encoder|MAE_emission|reg\(7)) # ((\encoder|MAE_emission|i\(0))))) # (!\encoder|MAE_emission|Mux0~2_combout\ & (((\encoder|MAE_emission|reg\(5) & 
-- !\encoder|MAE_emission|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|reg\(7),
	datab => \encoder|MAE_emission|Mux0~2_combout\,
	datac => \encoder|MAE_emission|reg\(5),
	datad => \encoder|MAE_emission|i\(0),
	combout => \encoder|MAE_emission|Mux0~3_combout\);

-- Location: LCFF_X42_Y26_N15
\encoder|MAE_emission|reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \Cmd_in~combout\(1),
	sload => VCC,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|reg\(1));

-- Location: LCFF_X42_Y26_N25
\encoder|MAE_emission|reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|reg[2]~feeder_combout\,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|reg\(2));

-- Location: LCFF_X42_Y26_N23
\encoder|MAE_emission|reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \Cmd_in~combout\(0),
	sload => VCC,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|reg\(0));

-- Location: LCCOMB_X42_Y26_N22
\encoder|MAE_emission|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~4_combout\ = (\encoder|MAE_emission|i\(1) & ((\encoder|MAE_emission|reg\(2)) # ((!\encoder|MAE_emission|i\(0))))) # (!\encoder|MAE_emission|i\(1) & (((\encoder|MAE_emission|reg\(0) & \encoder|MAE_emission|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|reg\(2),
	datab => \encoder|MAE_emission|i\(1),
	datac => \encoder|MAE_emission|reg\(0),
	datad => \encoder|MAE_emission|i\(0),
	combout => \encoder|MAE_emission|Mux0~4_combout\);

-- Location: LCFF_X42_Y26_N17
\encoder|MAE_emission|reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|reg[3]~feeder_combout\,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|reg\(3));

-- Location: LCCOMB_X42_Y26_N14
\encoder|MAE_emission|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~5_combout\ = (\encoder|MAE_emission|Mux0~4_combout\ & ((\encoder|MAE_emission|reg\(3)) # ((\encoder|MAE_emission|i\(0))))) # (!\encoder|MAE_emission|Mux0~4_combout\ & (((\encoder|MAE_emission|reg\(1) & 
-- !\encoder|MAE_emission|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|reg\(3),
	datab => \encoder|MAE_emission|Mux0~4_combout\,
	datac => \encoder|MAE_emission|reg\(1),
	datad => \encoder|MAE_emission|i\(0),
	combout => \encoder|MAE_emission|Mux0~5_combout\);

-- Location: LCCOMB_X41_Y26_N2
\encoder|MAE_emission|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~6_combout\ = (\encoder|MAE_emission|i\(2) & (\encoder|MAE_emission|i\(3) & (\encoder|MAE_emission|Mux0~5_combout\))) # (!\encoder|MAE_emission|i\(2) & (((\encoder|MAE_emission|Mux0~3_combout\)) # (!\encoder|MAE_emission|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(2),
	datab => \encoder|MAE_emission|i\(3),
	datac => \encoder|MAE_emission|Mux0~5_combout\,
	datad => \encoder|MAE_emission|Mux0~3_combout\,
	combout => \encoder|MAE_emission|Mux0~6_combout\);

-- Location: LCCOMB_X31_Y10_N0
\decoder|demanchester|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector0~0_combout\ = (!\decoder|deburst|trame_deburst~regout\ & ((\decoder|demanchester|State.suit11~regout\) # ((\decoder|demanchester|State.suit01~regout\) # (!\decoder|demanchester|State.Init~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|trame_deburst~regout\,
	datab => \decoder|demanchester|State.suit11~regout\,
	datac => \decoder|demanchester|State.Init~regout\,
	datad => \decoder|demanchester|State.suit01~regout\,
	combout => \decoder|demanchester|Selector0~0_combout\);

-- Location: LCCOMB_X31_Y10_N16
\decoder|demanchester|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector0~1_combout\ = (!\decoder|demanchester|Selector0~0_combout\ & (((!\decoder|demanchester|State.suit10~regout\ & !\decoder|demanchester|State.suit00~regout\)) # (!\decoder|deburst|trame_deburst~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|State.suit10~regout\,
	datab => \decoder|demanchester|State.suit00~regout\,
	datac => \decoder|deburst|trame_deburst~regout\,
	datad => \decoder|demanchester|Selector0~0_combout\,
	combout => \decoder|demanchester|Selector0~1_combout\);

-- Location: LCFF_X18_Y9_N25
\decoder|tick_gen|stbit[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~56_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(28));

-- Location: LCFF_X18_Y9_N13
\decoder|tick_gen|stbit[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~44_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(22));

-- Location: LCFF_X19_Y10_N3
\decoder|tick_gen|stbit[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|stbit~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(12));

-- Location: LCCOMB_X19_Y10_N12
\decoder|tick_gen|Equal2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~7_combout\ = (!\decoder|tick_gen|stbit\(15) & (!\decoder|tick_gen|stbit\(13) & (!\decoder|tick_gen|stbit\(14) & !\decoder|tick_gen|stbit\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(15),
	datab => \decoder|tick_gen|stbit\(13),
	datac => \decoder|tick_gen|stbit\(14),
	datad => \decoder|tick_gen|stbit\(12),
	combout => \decoder|tick_gen|Equal2~7_combout\);

-- Location: LCFF_X18_Y10_N21
\decoder|tick_gen|stbit[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~20_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(10));

-- Location: LCCOMB_X35_Y8_N0
\decoder|decoder|Add0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~73_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~regout\,
	datad => \decoder|decoder|Add0~56_combout\,
	combout => \decoder|decoder|Add0~73_combout\);

-- Location: LCCOMB_X35_Y8_N10
\decoder|decoder|Add0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~74_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~regout\,
	datad => \decoder|decoder|Add0~54_combout\,
	combout => \decoder|decoder|Add0~74_combout\);

-- Location: LCCOMB_X35_Y8_N12
\decoder|decoder|Add0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~82_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~regout\,
	datad => \decoder|decoder|Add0~38_combout\,
	combout => \decoder|decoder|Add0~82_combout\);

-- Location: LCCOMB_X34_Y9_N12
\decoder|decoder|Add0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~85_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~regout\,
	datad => \decoder|decoder|Add0~32_combout\,
	combout => \decoder|decoder|Add0~85_combout\);

-- Location: LCCOMB_X35_Y9_N30
\decoder|decoder|Add0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~91_combout\ = (\decoder|decoder|Add0~20_combout\ & \decoder|decoder|EF.State_Extract~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|Add0~20_combout\,
	datad => \decoder|decoder|EF.State_Extract~regout\,
	combout => \decoder|decoder|Add0~91_combout\);

-- Location: LCCOMB_X35_Y9_N2
\decoder|decoder|Add0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~93_combout\ = (\decoder|decoder|Add0~16_combout\ & \decoder|decoder|EF.State_Extract~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|Add0~16_combout\,
	datad => \decoder|decoder|EF.State_Extract~regout\,
	combout => \decoder|decoder|Add0~93_combout\);

-- Location: LCCOMB_X34_Y10_N20
\decoder|decoder|Selector4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector4~6_combout\ = (!\decoder|decoder|EF.State_Begin~regout\ & \decoder|demanchester|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Begin~regout\,
	datac => \decoder|demanchester|WideOr0~0_combout\,
	combout => \decoder|decoder|Selector4~6_combout\);

-- Location: LCFF_X43_Y23_N31
\encoder|TickGenerator|stburst[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~62_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(31));

-- Location: LCFF_X43_Y23_N17
\encoder|TickGenerator|stburst[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~48_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(24));

-- Location: LCFF_X43_Y23_N13
\encoder|TickGenerator|stburst[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~44_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(22));

-- Location: LCFF_X43_Y23_N11
\encoder|TickGenerator|stburst[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~42_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(21));

-- Location: LCCOMB_X42_Y23_N12
\encoder|TickGenerator|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~2_combout\ = (!\encoder|TickGenerator|stburst\(20) & (!\encoder|TickGenerator|stburst\(21) & (!\encoder|TickGenerator|stburst\(23) & !\encoder|TickGenerator|stburst\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(20),
	datab => \encoder|TickGenerator|stburst\(21),
	datac => \encoder|TickGenerator|stburst\(23),
	datad => \encoder|TickGenerator|stburst\(22),
	combout => \encoder|TickGenerator|Equal0~2_combout\);

-- Location: LCCOMB_X42_Y24_N10
\encoder|TickGenerator|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~7_combout\ = (!\encoder|TickGenerator|stburst\(7) & !\encoder|TickGenerator|stburst\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|stburst\(7),
	datad => \encoder|TickGenerator|stburst\(6),
	combout => \encoder|TickGenerator|Equal0~7_combout\);

-- Location: LCCOMB_X44_Y24_N28
\encoder|TickGenerator|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~8_combout\ = (!\encoder|TickGenerator|stburst\(3) & (!\encoder|TickGenerator|stburst\(2) & (!\encoder|TickGenerator|stburst\(1) & !\encoder|TickGenerator|stburst\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(3),
	datab => \encoder|TickGenerator|stburst\(2),
	datac => \encoder|TickGenerator|stburst\(1),
	datad => \encoder|TickGenerator|stburst\(0),
	combout => \encoder|TickGenerator|Equal0~8_combout\);

-- Location: LCFF_X43_Y24_N11
\encoder|TickGenerator|stburst[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~10_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(5));

-- Location: LCFF_X43_Y24_N13
\encoder|TickGenerator|stburst[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \encoder|TickGenerator|stburst~5_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(4));

-- Location: LCCOMB_X42_Y24_N12
\encoder|TickGenerator|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~9_combout\ = (\encoder|TickGenerator|Equal0~7_combout\ & (!\encoder|TickGenerator|stburst\(4) & (!\encoder|TickGenerator|stburst\(5) & \encoder|TickGenerator|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal0~7_combout\,
	datab => \encoder|TickGenerator|stburst\(4),
	datac => \encoder|TickGenerator|stburst\(5),
	datad => \encoder|TickGenerator|Equal0~8_combout\,
	combout => \encoder|TickGenerator|Equal0~9_combout\);

-- Location: LCFF_X45_Y26_N25
\encoder|TickGenerator|stbit[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add2~54_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(28));

-- Location: LCFF_X45_Y26_N7
\encoder|TickGenerator|stbit[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add2~36_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(19));

-- Location: LCCOMB_X44_Y26_N6
\encoder|TickGenerator|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~3_combout\ = (!\encoder|TickGenerator|stbit\(18) & (!\encoder|TickGenerator|stbit\(19) & (!\encoder|TickGenerator|stbit\(16) & !\encoder|TickGenerator|stbit\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(18),
	datab => \encoder|TickGenerator|stbit\(19),
	datac => \encoder|TickGenerator|stbit\(16),
	datad => \encoder|TickGenerator|stbit\(17),
	combout => \encoder|TickGenerator|Equal2~3_combout\);

-- Location: LCFF_X44_Y27_N15
\encoder|TickGenerator|stbit[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|stbit~2_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(12));

-- Location: LCFF_X44_Y27_N13
\encoder|TickGenerator|stbit[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|stbit~5_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(8));

-- Location: LCCOMB_X41_Y25_N20
\encoder|MAE_emission|i[31]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[31]~2_combout\ = (\encoder|MAE_emission|i[0]~1_combout\ & (\encoder|MAE_emission|Add0~62_combout\ & (\encoder|MAE_emission|i[0]~0_combout\))) # (!\encoder|MAE_emission|i[0]~1_combout\ & (((\encoder|MAE_emission|i\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~62_combout\,
	datab => \encoder|MAE_emission|i[0]~0_combout\,
	datac => \encoder|MAE_emission|i\(31),
	datad => \encoder|MAE_emission|i[0]~1_combout\,
	combout => \encoder|MAE_emission|i[31]~2_combout\);

-- Location: LCCOMB_X41_Y25_N18
\encoder|MAE_emission|i[30]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[30]~3_combout\ = (\encoder|MAE_emission|i[0]~1_combout\ & (\encoder|MAE_emission|i[0]~0_combout\ & ((\encoder|MAE_emission|Add0~60_combout\)))) # (!\encoder|MAE_emission|i[0]~1_combout\ & (((\encoder|MAE_emission|i\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~0_combout\,
	datab => \encoder|MAE_emission|i[0]~1_combout\,
	datac => \encoder|MAE_emission|i\(30),
	datad => \encoder|MAE_emission|Add0~60_combout\,
	combout => \encoder|MAE_emission|i[30]~3_combout\);

-- Location: LCCOMB_X41_Y25_N28
\encoder|MAE_emission|i[29]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[29]~4_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|Add0~58_combout\)))) # (!\encoder|MAE_emission|i[0]~0_combout\ & (!\encoder|MAE_emission|Selector8~0_combout\ & (\encoder|MAE_emission|i\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~0_combout\,
	datab => \encoder|MAE_emission|Selector8~0_combout\,
	datac => \encoder|MAE_emission|i\(29),
	datad => \encoder|MAE_emission|Add0~58_combout\,
	combout => \encoder|MAE_emission|i[29]~4_combout\);

-- Location: LCCOMB_X41_Y25_N22
\encoder|MAE_emission|i[28]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[28]~5_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|Add0~56_combout\)))) # (!\encoder|MAE_emission|i[0]~0_combout\ & (!\encoder|MAE_emission|Selector8~0_combout\ & (\encoder|MAE_emission|i\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~0_combout\,
	datab => \encoder|MAE_emission|Selector8~0_combout\,
	datac => \encoder|MAE_emission|i\(28),
	datad => \encoder|MAE_emission|Add0~56_combout\,
	combout => \encoder|MAE_emission|i[28]~5_combout\);

-- Location: LCCOMB_X41_Y25_N8
\encoder|MAE_emission|i[27]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[27]~6_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|Add0~54_combout\)))) # (!\encoder|MAE_emission|i[0]~0_combout\ & (!\encoder|MAE_emission|Selector8~0_combout\ & (\encoder|MAE_emission|i\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~0_combout\,
	datab => \encoder|MAE_emission|Selector8~0_combout\,
	datac => \encoder|MAE_emission|i\(27),
	datad => \encoder|MAE_emission|Add0~54_combout\,
	combout => \encoder|MAE_emission|i[27]~6_combout\);

-- Location: LCCOMB_X42_Y25_N10
\encoder|MAE_emission|i[17]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[17]~16_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|Add0~34_combout\)))) # (!\encoder|MAE_emission|i[0]~0_combout\ & (!\encoder|MAE_emission|Selector8~0_combout\ & ((\encoder|MAE_emission|i\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Selector8~0_combout\,
	datab => \encoder|MAE_emission|Add0~34_combout\,
	datac => \encoder|MAE_emission|i\(17),
	datad => \encoder|MAE_emission|i[0]~0_combout\,
	combout => \encoder|MAE_emission|i[17]~16_combout\);

-- Location: LCCOMB_X41_Y26_N26
\encoder|MAE_emission|i[14]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[14]~19_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (\encoder|MAE_emission|Add0~28_combout\)) # (!\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|i\(14) & !\encoder|MAE_emission|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~28_combout\,
	datab => \encoder|MAE_emission|i[0]~0_combout\,
	datac => \encoder|MAE_emission|i\(14),
	datad => \encoder|MAE_emission|Selector8~0_combout\,
	combout => \encoder|MAE_emission|i[14]~19_combout\);

-- Location: LCCOMB_X41_Y25_N10
\encoder|MAE_emission|i[10]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[10]~23_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|Add0~20_combout\)))) # (!\encoder|MAE_emission|i[0]~0_combout\ & (!\encoder|MAE_emission|Selector8~0_combout\ & (\encoder|MAE_emission|i\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~0_combout\,
	datab => \encoder|MAE_emission|Selector8~0_combout\,
	datac => \encoder|MAE_emission|i\(10),
	datad => \encoder|MAE_emission|Add0~20_combout\,
	combout => \encoder|MAE_emission|i[10]~23_combout\);

-- Location: LCCOMB_X41_Y26_N6
\encoder|MAE_emission|i[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[7]~26_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (\encoder|MAE_emission|Add0~14_combout\)) # (!\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|i\(7) & !\encoder|MAE_emission|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~14_combout\,
	datab => \encoder|MAE_emission|i[0]~0_combout\,
	datac => \encoder|MAE_emission|i\(7),
	datad => \encoder|MAE_emission|Selector8~0_combout\,
	combout => \encoder|MAE_emission|i[7]~26_combout\);

-- Location: LCFF_X45_Y24_N31
\encoder|TickGenerator|stmanch[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~62_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(31));

-- Location: LCFF_X45_Y24_N29
\encoder|TickGenerator|stmanch[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~60_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(30));

-- Location: LCFF_X45_Y24_N27
\encoder|TickGenerator|stmanch[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~58_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(29));

-- Location: LCFF_X45_Y24_N25
\encoder|TickGenerator|stmanch[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~56_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(28));

-- Location: LCCOMB_X46_Y24_N28
\encoder|TickGenerator|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~2_combout\ = (!\encoder|TickGenerator|stmanch\(30) & (!\encoder|TickGenerator|stmanch\(29) & (!\encoder|TickGenerator|stmanch\(31) & !\encoder|TickGenerator|stmanch\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(30),
	datab => \encoder|TickGenerator|stmanch\(29),
	datac => \encoder|TickGenerator|stmanch\(31),
	datad => \encoder|TickGenerator|stmanch\(28),
	combout => \encoder|TickGenerator|Equal1~2_combout\);

-- Location: LCFF_X45_Y24_N7
\encoder|TickGenerator|stmanch[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~38_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(19));

-- Location: LCCOMB_X44_Y24_N6
\encoder|TickGenerator|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~5_combout\ = (!\encoder|TickGenerator|stmanch\(16) & (!\encoder|TickGenerator|stmanch\(17) & (!\encoder|TickGenerator|stmanch\(19) & !\encoder|TickGenerator|stmanch\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(16),
	datab => \encoder|TickGenerator|stmanch\(17),
	datac => \encoder|TickGenerator|stmanch\(19),
	datad => \encoder|TickGenerator|stmanch\(18),
	combout => \encoder|TickGenerator|Equal1~5_combout\);

-- Location: LCFF_X44_Y24_N11
\encoder|TickGenerator|stmanch[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|stmanch~1_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(13));

-- Location: LCFF_X22_Y20_N11
\decoder|deburst|cmpt_start[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~64_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(31));

-- Location: LCFF_X24_Y20_N25
\decoder|deburst|cmpt_start[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~67_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(30));

-- Location: LCFF_X22_Y20_N15
\decoder|deburst|cmpt_start[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~74_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(23));

-- Location: LCCOMB_X24_Y20_N12
\decoder|deburst|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan1~2_combout\ = (!\decoder|deburst|cmpt_start\(24) & (!\decoder|deburst|cmpt_start\(21) & (!\decoder|deburst|cmpt_start\(23) & !\decoder|deburst|cmpt_start\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_start\(24),
	datab => \decoder|deburst|cmpt_start\(21),
	datac => \decoder|deburst|cmpt_start\(23),
	datad => \decoder|deburst|cmpt_start\(22),
	combout => \decoder|deburst|LessThan1~2_combout\);

-- Location: LCFF_X24_Y20_N17
\decoder|deburst|cmpt_start[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~80_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(17));

-- Location: LCFF_X22_Y21_N13
\decoder|deburst|cmpt_start[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~85_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(12));

-- Location: LCFF_X23_Y21_N13
\decoder|deburst|cmpt_start[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \decoder|deburst|Add1~93_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(4));

-- Location: LCFF_X17_Y9_N31
\decoder|tick_gen|stmanch[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add1~60_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(31));

-- Location: LCFF_X17_Y9_N21
\decoder|tick_gen|stmanch[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add1~50_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(26));

-- Location: LCFF_X17_Y9_N7
\decoder|tick_gen|stmanch[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add1~36_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(19));

-- Location: LCCOMB_X16_Y9_N8
\decoder|tick_gen|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~4_combout\ = (!\decoder|tick_gen|stmanch\(18) & (!\decoder|tick_gen|stmanch\(19) & (!\decoder|tick_gen|stmanch\(16) & !\decoder|tick_gen|stmanch\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(18),
	datab => \decoder|tick_gen|stmanch\(19),
	datac => \decoder|tick_gen|stmanch\(16),
	datad => \decoder|tick_gen|stmanch\(17),
	combout => \decoder|tick_gen|Equal1~4_combout\);

-- Location: LCFF_X16_Y10_N3
\decoder|tick_gen|stmanch[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|stmanch~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(15));

-- Location: LCCOMB_X19_Y10_N2
\decoder|tick_gen|stbit~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~2_combout\ = (\decoder|tick_gen|Equal2~10_combout\) # (!\decoder|tick_gen|Add2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Equal2~10_combout\,
	datad => \decoder|tick_gen|Add2~24_combout\,
	combout => \decoder|tick_gen|stbit~2_combout\);

-- Location: LCCOMB_X42_Y24_N20
\encoder|TickGenerator|stburst~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stburst~5_combout\ = (\encoder|TickGenerator|Equal0~10_combout\) # (!\encoder|TickGenerator|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Add0~8_combout\,
	datad => \encoder|TickGenerator|Equal0~10_combout\,
	combout => \encoder|TickGenerator|stburst~5_combout\);

-- Location: LCCOMB_X44_Y27_N14
\encoder|TickGenerator|stbit~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit~2_combout\ = (\encoder|TickGenerator|Equal2~8_combout\) # (!\encoder|TickGenerator|Add2~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal2~8_combout\,
	datad => \encoder|TickGenerator|Add2~22_combout\,
	combout => \encoder|TickGenerator|stbit~2_combout\);

-- Location: LCCOMB_X44_Y27_N12
\encoder|TickGenerator|stbit~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit~5_combout\ = (\encoder|TickGenerator|Equal2~8_combout\) # (!\encoder|TickGenerator|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|Equal2~8_combout\,
	datac => \encoder|TickGenerator|Add2~14_combout\,
	combout => \encoder|TickGenerator|stbit~5_combout\);

-- Location: LCCOMB_X43_Y26_N30
\encoder|MAE_emission|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector4~1_combout\ = (\encoder|MAE_emission|EF.State_Close~regout\ & (\Go~combout\ & !\encoder|TickGenerator|tick_trame~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|EF.State_Close~regout\,
	datac => \Go~combout\,
	datad => \encoder|TickGenerator|tick_trame~regout\,
	combout => \encoder|MAE_emission|Selector4~1_combout\);

-- Location: LCFF_X45_Y28_N25
\encoder|TickGenerator|sttrame[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add3~54_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(28));

-- Location: LCFF_X45_Y28_N21
\encoder|TickGenerator|sttrame[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add3~50_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(26));

-- Location: LCFF_X45_Y28_N17
\encoder|TickGenerator|sttrame[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add3~46_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(24));

-- Location: LCCOMB_X44_Y28_N12
\encoder|TickGenerator|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~1_combout\ = (!\encoder|TickGenerator|sttrame\(26) & (!\encoder|TickGenerator|sttrame\(27) & (!\encoder|TickGenerator|sttrame\(24) & !\encoder|TickGenerator|sttrame\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(26),
	datab => \encoder|TickGenerator|sttrame\(27),
	datac => \encoder|TickGenerator|sttrame\(24),
	datad => \encoder|TickGenerator|sttrame\(25),
	combout => \encoder|TickGenerator|Equal3~1_combout\);

-- Location: LCFF_X45_Y28_N7
\encoder|TickGenerator|sttrame[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add3~36_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(19));

-- Location: LCFF_X44_Y28_N31
\encoder|TickGenerator|sttrame[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|sttrame~4_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(18));

-- Location: LCCOMB_X44_Y28_N10
\encoder|TickGenerator|Equal3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~5_combout\ = (!\encoder|TickGenerator|sttrame\(19) & (!\encoder|TickGenerator|sttrame\(18) & (!\encoder|TickGenerator|sttrame\(16) & !\encoder|TickGenerator|sttrame\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(19),
	datab => \encoder|TickGenerator|sttrame\(18),
	datac => \encoder|TickGenerator|sttrame\(16),
	datad => \encoder|TickGenerator|sttrame\(17),
	combout => \encoder|TickGenerator|Equal3~5_combout\);

-- Location: LCFF_X44_Y29_N15
\encoder|TickGenerator|sttrame[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|sttrame~11_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(8));

-- Location: LCCOMB_X44_Y24_N10
\encoder|TickGenerator|stmanch~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~1_combout\ = (\encoder|TickGenerator|Equal1~10_combout\) # (!\encoder|TickGenerator|Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal1~10_combout\,
	datad => \encoder|TickGenerator|Add1~26_combout\,
	combout => \encoder|TickGenerator|stmanch~1_combout\);

-- Location: LCFF_X22_Y23_N17
\decoder|deburst|cmpt_stop[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~79_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(16));

-- Location: LCCOMB_X22_Y23_N24
\decoder|deburst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan0~3_combout\ = (!\decoder|deburst|cmpt_stop\(16) & (!\decoder|deburst|cmpt_stop\(17) & (!\decoder|deburst|cmpt_stop\(18) & !\decoder|deburst|cmpt_stop\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(16),
	datab => \decoder|deburst|cmpt_stop\(17),
	datac => \decoder|deburst|cmpt_stop\(18),
	datad => \decoder|deburst|cmpt_stop\(15),
	combout => \decoder|deburst|LessThan0~3_combout\);

-- Location: LCCOMB_X22_Y23_N20
\decoder|deburst|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan0~5_combout\ = (!\decoder|deburst|cmpt_stop\(13) & (!\decoder|deburst|cmpt_stop\(11) & (!\decoder|deburst|cmpt_stop\(12) & !\decoder|deburst|cmpt_stop\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(13),
	datab => \decoder|deburst|cmpt_stop\(11),
	datac => \decoder|deburst|cmpt_stop\(12),
	datad => \decoder|deburst|cmpt_stop\(14),
	combout => \decoder|deburst|LessThan0~5_combout\);

-- Location: LCFF_X23_Y23_N31
\decoder|deburst|cmpt_stop[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~88_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(7));

-- Location: LCCOMB_X22_Y20_N10
\decoder|deburst|Add1~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~64_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (!\decoder|deburst|LessThan0~9_combout\ & \decoder|deburst|Add1~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|LessThan0~9_combout\,
	datad => \decoder|deburst|Add1~62_combout\,
	combout => \decoder|deburst|Add1~64_combout\);

-- Location: LCCOMB_X24_Y20_N24
\decoder|deburst|Add1~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~67_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (!\decoder|deburst|LessThan0~9_combout\ & \decoder|deburst|Add1~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|LessThan0~9_combout\,
	datad => \decoder|deburst|Add1~60_combout\,
	combout => \decoder|deburst|Add1~67_combout\);

-- Location: LCCOMB_X22_Y20_N14
\decoder|deburst|Add1~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~74_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (\decoder|deburst|Add1~46_combout\ & !\decoder|deburst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|Add1~46_combout\,
	datad => \decoder|deburst|LessThan0~9_combout\,
	combout => \decoder|deburst|Add1~74_combout\);

-- Location: LCCOMB_X24_Y20_N16
\decoder|deburst|Add1~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~80_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (!\decoder|deburst|LessThan0~9_combout\ & \decoder|deburst|Add1~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|LessThan0~9_combout\,
	datad => \decoder|deburst|Add1~34_combout\,
	combout => \decoder|deburst|Add1~80_combout\);

-- Location: LCCOMB_X22_Y21_N12
\decoder|deburst|Add1~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~85_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (!\decoder|deburst|LessThan0~9_combout\ & \decoder|deburst|Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(31),
	datab => \decoder|deburst|LessThan0~9_combout\,
	datad => \decoder|deburst|Add1~24_combout\,
	combout => \decoder|deburst|Add1~85_combout\);

-- Location: LCCOMB_X22_Y21_N2
\decoder|deburst|Add1~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~93_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (\decoder|deburst|Add1~8_combout\ & !\decoder|deburst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|Add1~8_combout\,
	datad => \decoder|deburst|LessThan0~9_combout\,
	combout => \decoder|deburst|Add1~93_combout\);

-- Location: LCFF_X28_Y21_N31
\decoder|tick_gen|stburst[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~62_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(31));

-- Location: LCFF_X28_Y21_N29
\decoder|tick_gen|stburst[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~60_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(30));

-- Location: LCFF_X28_Y21_N27
\decoder|tick_gen|stburst[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~58_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(29));

-- Location: LCFF_X28_Y21_N25
\decoder|tick_gen|stburst[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~56_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(28));

-- Location: LCCOMB_X27_Y21_N12
\decoder|tick_gen|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~0_combout\ = (!\decoder|tick_gen|stburst\(30) & (!\decoder|tick_gen|stburst\(28) & (!\decoder|tick_gen|stburst\(29) & !\decoder|tick_gen|stburst\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(30),
	datab => \decoder|tick_gen|stburst\(28),
	datac => \decoder|tick_gen|stburst\(29),
	datad => \decoder|tick_gen|stburst\(31),
	combout => \decoder|tick_gen|Equal0~0_combout\);

-- Location: LCFF_X28_Y21_N23
\decoder|tick_gen|stburst[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~54_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(27));

-- Location: LCFF_X28_Y22_N25
\decoder|tick_gen|stburst[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~24_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(12));

-- Location: LCCOMB_X27_Y22_N10
\decoder|tick_gen|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~5_combout\ = (!\decoder|tick_gen|stburst\(13) & !\decoder|tick_gen|stburst\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|stburst\(13),
	datad => \decoder|tick_gen|stburst\(12),
	combout => \decoder|tick_gen|Equal0~5_combout\);

-- Location: LCFF_X28_Y22_N21
\decoder|tick_gen|stburst[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~20_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(10));

-- Location: LCCOMB_X27_Y22_N14
\decoder|tick_gen|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~6_combout\ = (!\decoder|tick_gen|stburst\(10) & (!\decoder|tick_gen|stburst\(9) & (!\decoder|tick_gen|stburst\(8) & !\decoder|tick_gen|stburst\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(10),
	datab => \decoder|tick_gen|stburst\(9),
	datac => \decoder|tick_gen|stburst\(8),
	datad => \decoder|tick_gen|stburst\(11),
	combout => \decoder|tick_gen|Equal0~6_combout\);

-- Location: LCCOMB_X27_Y22_N20
\decoder|tick_gen|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~7_combout\ = (\decoder|tick_gen|Equal0~5_combout\ & (!\decoder|tick_gen|stburst\(15) & (\decoder|tick_gen|Equal0~6_combout\ & !\decoder|tick_gen|stburst\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal0~5_combout\,
	datab => \decoder|tick_gen|stburst\(15),
	datac => \decoder|tick_gen|Equal0~6_combout\,
	datad => \decoder|tick_gen|stburst\(14),
	combout => \decoder|tick_gen|Equal0~7_combout\);

-- Location: LCFF_X27_Y22_N13
\decoder|tick_gen|stburst[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|stburst~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(4));

-- Location: LCFF_X28_Y22_N7
\decoder|tick_gen|stburst[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \decoder|tick_gen|stburst[1]~10_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(1));

-- Location: LCCOMB_X16_Y10_N2
\decoder|tick_gen|stmanch~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~0_combout\ = (\decoder|tick_gen|Equal1~8_combout\) # (!\decoder|tick_gen|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Equal1~8_combout\,
	datad => \decoder|tick_gen|Add1~28_combout\,
	combout => \decoder|tick_gen|stmanch~0_combout\);

-- Location: LCCOMB_X44_Y28_N30
\encoder|TickGenerator|sttrame~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~4_combout\ = ((\encoder|TickGenerator|Equal3~3_combout\ & (\encoder|TickGenerator|Equal3~2_combout\ & \encoder|TickGenerator|Equal3~8_combout\))) # (!\encoder|TickGenerator|Add3~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~3_combout\,
	datab => \encoder|TickGenerator|Equal3~2_combout\,
	datac => \encoder|TickGenerator|Equal3~8_combout\,
	datad => \encoder|TickGenerator|Add3~34_combout\,
	combout => \encoder|TickGenerator|sttrame~4_combout\);

-- Location: LCCOMB_X44_Y29_N14
\encoder|TickGenerator|sttrame~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~11_combout\ = ((\encoder|TickGenerator|Equal3~8_combout\ & (\encoder|TickGenerator|Equal3~2_combout\ & \encoder|TickGenerator|Equal3~3_combout\))) # (!\encoder|TickGenerator|Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~8_combout\,
	datab => \encoder|TickGenerator|Equal3~2_combout\,
	datac => \encoder|TickGenerator|Add3~14_combout\,
	datad => \encoder|TickGenerator|Equal3~3_combout\,
	combout => \encoder|TickGenerator|sttrame~11_combout\);

-- Location: LCCOMB_X22_Y23_N16
\decoder|deburst|Add0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~79_combout\ = (\decoder|deburst|Add0~32_combout\ & !\encoder|Tx~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|deburst|Add0~32_combout\,
	datad => \encoder|Tx~0_combout\,
	combout => \decoder|deburst|Add0~79_combout\);

-- Location: LCCOMB_X23_Y23_N30
\decoder|deburst|Add0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~88_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|Tx~0_combout\,
	datac => \decoder|deburst|Add0~14_combout\,
	combout => \decoder|deburst|Add0~88_combout\);

-- Location: LCCOMB_X27_Y22_N12
\decoder|tick_gen|stburst~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stburst~2_combout\ = (\decoder|tick_gen|Equal0~10_combout\) # (!\decoder|tick_gen|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|Add0~8_combout\,
	datac => \decoder|tick_gen|Equal0~10_combout\,
	combout => \decoder|tick_gen|stburst~2_combout\);

-- Location: LCCOMB_X27_Y22_N6
\decoder|tick_gen|stburst[1]~10\ : cycloneii_lcell_comb
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

-- Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Cmd_in[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Cmd_in(5),
	combout => \Cmd_in~combout\(5));

-- Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Address_in[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Address_in(0),
	combout => \Address_in~combout\(0));

-- Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Cmd_in[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Cmd_in(4),
	combout => \Cmd_in~combout\(4));

-- Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Address_in[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Address_in(1),
	combout => \Address_in~combout\(1));

-- Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Cmd_in[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Cmd_in(1),
	combout => \Cmd_in~combout\(1));

-- Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Cmd_in[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Cmd_in(2),
	combout => \Cmd_in~combout\(2));

-- Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Cmd_in[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Cmd_in(0),
	combout => \Cmd_in~combout\(0));

-- Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Cmd_in[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Cmd_in(3),
	combout => \Cmd_in~combout\(3));

-- Location: LCCOMB_X42_Y26_N24
\encoder|MAE_emission|reg[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|reg[2]~feeder_combout\ = \Cmd_in~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cmd_in~combout\(2),
	combout => \encoder|MAE_emission|reg[2]~feeder_combout\);

-- Location: LCCOMB_X42_Y26_N16
\encoder|MAE_emission|reg[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|reg[3]~feeder_combout\ = \Cmd_in~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cmd_in~combout\(3),
	combout => \encoder|MAE_emission|reg[3]~feeder_combout\);

-- Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
\CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G2
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y10_N30
\decoder|tick_gen|stbit~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~5_combout\ = (\decoder|tick_gen|Equal2~10_combout\) # (!\decoder|tick_gen|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Add2~16_combout\,
	datac => \decoder|tick_gen|Equal2~10_combout\,
	combout => \decoder|tick_gen|stbit~5_combout\);

-- Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G6
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X19_Y10_N31
\decoder|tick_gen|stbit[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|stbit~5_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(8));

-- Location: LCCOMB_X18_Y10_N0
\decoder|tick_gen|Add2~0\ : cycloneii_lcell_comb
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

-- Location: LCFF_X18_Y10_N1
\decoder|tick_gen|stbit[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(0));

-- Location: LCCOMB_X18_Y10_N2
\decoder|tick_gen|Add2~2\ : cycloneii_lcell_comb
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

-- Location: LCFF_X18_Y10_N3
\decoder|tick_gen|stbit[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(1));

-- Location: LCCOMB_X18_Y10_N4
\decoder|tick_gen|Add2~4\ : cycloneii_lcell_comb
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

-- Location: LCFF_X18_Y10_N5
\decoder|tick_gen|stbit[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~4_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(2));

-- Location: LCCOMB_X18_Y10_N6
\decoder|tick_gen|Add2~6\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X18_Y10_N8
\decoder|tick_gen|Add2~8\ : cycloneii_lcell_comb
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

-- Location: LCFF_X18_Y10_N9
\decoder|tick_gen|stbit[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~8_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(4));

-- Location: LCCOMB_X18_Y10_N10
\decoder|tick_gen|Add2~10\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X18_Y10_N12
\decoder|tick_gen|Add2~12\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X18_Y10_N14
\decoder|tick_gen|Add2~14\ : cycloneii_lcell_comb
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

-- Location: LCFF_X18_Y10_N15
\decoder|tick_gen|stbit[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~14_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(7));

-- Location: LCCOMB_X18_Y10_N18
\decoder|tick_gen|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~18_combout\ = (\decoder|tick_gen|stbit\(9) & ((\decoder|tick_gen|Add2~17\) # (GND))) # (!\decoder|tick_gen|stbit\(9) & (!\decoder|tick_gen|Add2~17\))
-- \decoder|tick_gen|Add2~19\ = CARRY((\decoder|tick_gen|stbit\(9)) # (!\decoder|tick_gen|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(9),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~17\,
	combout => \decoder|tick_gen|Add2~18_combout\,
	cout => \decoder|tick_gen|Add2~19\);

-- Location: LCCOMB_X19_Y10_N0
\decoder|tick_gen|stbit~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~4_combout\ = (\decoder|tick_gen|Equal2~10_combout\) # (!\decoder|tick_gen|Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Equal2~10_combout\,
	datad => \decoder|tick_gen|Add2~18_combout\,
	combout => \decoder|tick_gen|stbit~4_combout\);

-- Location: LCFF_X19_Y10_N1
\decoder|tick_gen|stbit[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|stbit~4_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(9));

-- Location: LCCOMB_X18_Y10_N22
\decoder|tick_gen|Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~22_combout\ = (\decoder|tick_gen|stbit\(11) & ((\decoder|tick_gen|Add2~21\) # (GND))) # (!\decoder|tick_gen|stbit\(11) & (!\decoder|tick_gen|Add2~21\))
-- \decoder|tick_gen|Add2~23\ = CARRY((\decoder|tick_gen|stbit\(11)) # (!\decoder|tick_gen|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(11),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~21\,
	combout => \decoder|tick_gen|Add2~22_combout\,
	cout => \decoder|tick_gen|Add2~23\);

-- Location: LCCOMB_X19_Y10_N22
\decoder|tick_gen|stbit~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~3_combout\ = (\decoder|tick_gen|Equal2~10_combout\) # (!\decoder|tick_gen|Add2~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Equal2~10_combout\,
	datad => \decoder|tick_gen|Add2~22_combout\,
	combout => \decoder|tick_gen|stbit~3_combout\);

-- Location: LCFF_X19_Y10_N23
\decoder|tick_gen|stbit[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|stbit~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(11));

-- Location: LCCOMB_X18_Y10_N26
\decoder|tick_gen|Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~26_combout\ = (\decoder|tick_gen|stbit\(13) & (!\decoder|tick_gen|Add2~25\)) # (!\decoder|tick_gen|stbit\(13) & ((\decoder|tick_gen|Add2~25\) # (GND)))
-- \decoder|tick_gen|Add2~27\ = CARRY((!\decoder|tick_gen|Add2~25\) # (!\decoder|tick_gen|stbit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(13),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~25\,
	combout => \decoder|tick_gen|Add2~26_combout\,
	cout => \decoder|tick_gen|Add2~27\);

-- Location: LCFF_X18_Y10_N27
\decoder|tick_gen|stbit[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~26_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(13));

-- Location: LCCOMB_X18_Y10_N28
\decoder|tick_gen|Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~28_combout\ = (\decoder|tick_gen|stbit\(14) & (!\decoder|tick_gen|Add2~27\ & VCC)) # (!\decoder|tick_gen|stbit\(14) & (\decoder|tick_gen|Add2~27\ $ (GND)))
-- \decoder|tick_gen|Add2~29\ = CARRY((!\decoder|tick_gen|stbit\(14) & !\decoder|tick_gen|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(14),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~27\,
	combout => \decoder|tick_gen|Add2~28_combout\,
	cout => \decoder|tick_gen|Add2~29\);

-- Location: LCCOMB_X19_Y10_N24
\decoder|tick_gen|stbit~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~1_combout\ = (\decoder|tick_gen|Equal2~10_combout\) # (!\decoder|tick_gen|Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Equal2~10_combout\,
	datad => \decoder|tick_gen|Add2~28_combout\,
	combout => \decoder|tick_gen|stbit~1_combout\);

-- Location: LCFF_X19_Y10_N25
\decoder|tick_gen|stbit[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|stbit~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(14));

-- Location: LCCOMB_X18_Y10_N30
\decoder|tick_gen|Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~30_combout\ = (\decoder|tick_gen|stbit\(15) & (!\decoder|tick_gen|Add2~29\)) # (!\decoder|tick_gen|stbit\(15) & ((\decoder|tick_gen|Add2~29\) # (GND)))
-- \decoder|tick_gen|Add2~31\ = CARRY((!\decoder|tick_gen|Add2~29\) # (!\decoder|tick_gen|stbit\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(15),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~29\,
	combout => \decoder|tick_gen|Add2~30_combout\,
	cout => \decoder|tick_gen|Add2~31\);

-- Location: LCFF_X18_Y10_N31
\decoder|tick_gen|stbit[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~30_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(15));

-- Location: LCCOMB_X18_Y9_N0
\decoder|tick_gen|Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~32_combout\ = (\decoder|tick_gen|stbit\(16) & (!\decoder|tick_gen|Add2~31\ & VCC)) # (!\decoder|tick_gen|stbit\(16) & (\decoder|tick_gen|Add2~31\ $ (GND)))
-- \decoder|tick_gen|Add2~33\ = CARRY((!\decoder|tick_gen|stbit\(16) & !\decoder|tick_gen|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(16),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~31\,
	combout => \decoder|tick_gen|Add2~32_combout\,
	cout => \decoder|tick_gen|Add2~33\);

-- Location: LCCOMB_X19_Y9_N28
\decoder|tick_gen|stbit~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~0_combout\ = (\decoder|tick_gen|Equal2~10_combout\) # (!\decoder|tick_gen|Add2~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Add2~32_combout\,
	datad => \decoder|tick_gen|Equal2~10_combout\,
	combout => \decoder|tick_gen|stbit~0_combout\);

-- Location: LCFF_X19_Y9_N29
\decoder|tick_gen|stbit[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|stbit~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(16));

-- Location: LCCOMB_X18_Y9_N2
\decoder|tick_gen|Add2~34\ : cycloneii_lcell_comb
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

-- Location: LCFF_X18_Y9_N3
\decoder|tick_gen|stbit[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~34_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(17));

-- Location: LCCOMB_X18_Y9_N4
\decoder|tick_gen|Add2~36\ : cycloneii_lcell_comb
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

-- Location: LCFF_X18_Y9_N5
\decoder|tick_gen|stbit[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~36_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(18));

-- Location: LCCOMB_X18_Y9_N6
\decoder|tick_gen|Add2~38\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X18_Y9_N8
\decoder|tick_gen|Add2~40\ : cycloneii_lcell_comb
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

-- Location: LCFF_X18_Y9_N9
\decoder|tick_gen|stbit[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~40_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(20));

-- Location: LCCOMB_X18_Y9_N10
\decoder|tick_gen|Add2~42\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X18_Y9_N14
\decoder|tick_gen|Add2~46\ : cycloneii_lcell_comb
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

-- Location: LCFF_X18_Y9_N15
\decoder|tick_gen|stbit[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~46_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(23));

-- Location: LCCOMB_X18_Y9_N16
\decoder|tick_gen|Add2~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~48_combout\ = (\decoder|tick_gen|stbit\(24) & (\decoder|tick_gen|Add2~47\ $ (GND))) # (!\decoder|tick_gen|stbit\(24) & (!\decoder|tick_gen|Add2~47\ & VCC))
-- \decoder|tick_gen|Add2~49\ = CARRY((\decoder|tick_gen|stbit\(24) & !\decoder|tick_gen|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(24),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~47\,
	combout => \decoder|tick_gen|Add2~48_combout\,
	cout => \decoder|tick_gen|Add2~49\);

-- Location: LCCOMB_X18_Y9_N18
\decoder|tick_gen|Add2~50\ : cycloneii_lcell_comb
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

-- Location: LCFF_X18_Y9_N19
\decoder|tick_gen|stbit[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~50_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(25));

-- Location: LCCOMB_X18_Y9_N20
\decoder|tick_gen|Add2~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~52_combout\ = (\decoder|tick_gen|stbit\(26) & (\decoder|tick_gen|Add2~51\ $ (GND))) # (!\decoder|tick_gen|stbit\(26) & (!\decoder|tick_gen|Add2~51\ & VCC))
-- \decoder|tick_gen|Add2~53\ = CARRY((\decoder|tick_gen|stbit\(26) & !\decoder|tick_gen|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(26),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~51\,
	combout => \decoder|tick_gen|Add2~52_combout\,
	cout => \decoder|tick_gen|Add2~53\);

-- Location: LCFF_X18_Y9_N21
\decoder|tick_gen|stbit[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~52_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(26));

-- Location: LCFF_X18_Y9_N17
\decoder|tick_gen|stbit[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~48_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(24));

-- Location: LCCOMB_X19_Y9_N14
\decoder|tick_gen|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~3_combout\ = (!\decoder|tick_gen|stbit\(27) & (!\decoder|tick_gen|stbit\(25) & (!\decoder|tick_gen|stbit\(26) & !\decoder|tick_gen|stbit\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(27),
	datab => \decoder|tick_gen|stbit\(25),
	datac => \decoder|tick_gen|stbit\(26),
	datad => \decoder|tick_gen|stbit\(24),
	combout => \decoder|tick_gen|Equal2~3_combout\);

-- Location: LCCOMB_X18_Y9_N22
\decoder|tick_gen|Add2~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~54_combout\ = (\decoder|tick_gen|stbit\(27) & (!\decoder|tick_gen|Add2~53\)) # (!\decoder|tick_gen|stbit\(27) & ((\decoder|tick_gen|Add2~53\) # (GND)))
-- \decoder|tick_gen|Add2~55\ = CARRY((!\decoder|tick_gen|Add2~53\) # (!\decoder|tick_gen|stbit\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(27),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~53\,
	combout => \decoder|tick_gen|Add2~54_combout\,
	cout => \decoder|tick_gen|Add2~55\);

-- Location: LCFF_X18_Y9_N23
\decoder|tick_gen|stbit[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~54_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(27));

-- Location: LCCOMB_X18_Y9_N26
\decoder|tick_gen|Add2~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~58_combout\ = (\decoder|tick_gen|stbit\(29) & (!\decoder|tick_gen|Add2~57\)) # (!\decoder|tick_gen|stbit\(29) & ((\decoder|tick_gen|Add2~57\) # (GND)))
-- \decoder|tick_gen|Add2~59\ = CARRY((!\decoder|tick_gen|Add2~57\) # (!\decoder|tick_gen|stbit\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(29),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~57\,
	combout => \decoder|tick_gen|Add2~58_combout\,
	cout => \decoder|tick_gen|Add2~59\);

-- Location: LCFF_X18_Y9_N27
\decoder|tick_gen|stbit[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~58_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(29));

-- Location: LCCOMB_X18_Y9_N28
\decoder|tick_gen|Add2~60\ : cycloneii_lcell_comb
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

-- Location: LCFF_X18_Y9_N29
\decoder|tick_gen|stbit[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~60_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(30));

-- Location: LCCOMB_X18_Y9_N30
\decoder|tick_gen|Add2~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~62_combout\ = \decoder|tick_gen|Add2~61\ $ (\decoder|tick_gen|stbit\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \decoder|tick_gen|stbit\(31),
	cin => \decoder|tick_gen|Add2~61\,
	combout => \decoder|tick_gen|Add2~62_combout\);

-- Location: LCFF_X18_Y9_N31
\decoder|tick_gen|stbit[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~62_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(31));

-- Location: LCCOMB_X19_Y9_N12
\decoder|tick_gen|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~2_combout\ = (!\decoder|tick_gen|stbit\(28) & (!\decoder|tick_gen|stbit\(29) & (!\decoder|tick_gen|stbit\(31) & !\decoder|tick_gen|stbit\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(28),
	datab => \decoder|tick_gen|stbit\(29),
	datac => \decoder|tick_gen|stbit\(31),
	datad => \decoder|tick_gen|stbit\(30),
	combout => \decoder|tick_gen|Equal2~2_combout\);

-- Location: LCCOMB_X19_Y9_N0
\decoder|tick_gen|Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~4_combout\ = (\decoder|tick_gen|Equal2~3_combout\ & \decoder|tick_gen|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Equal2~3_combout\,
	datad => \decoder|tick_gen|Equal2~2_combout\,
	combout => \decoder|tick_gen|Equal2~4_combout\);

-- Location: LCFF_X18_Y9_N11
\decoder|tick_gen|stbit[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~42_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(21));

-- Location: LCCOMB_X19_Y9_N22
\decoder|tick_gen|Equal2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~5_combout\ = (!\decoder|tick_gen|stbit\(22) & (!\decoder|tick_gen|stbit\(23) & (!\decoder|tick_gen|stbit\(20) & !\decoder|tick_gen|stbit\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(22),
	datab => \decoder|tick_gen|stbit\(23),
	datac => \decoder|tick_gen|stbit\(20),
	datad => \decoder|tick_gen|stbit\(21),
	combout => \decoder|tick_gen|Equal2~5_combout\);

-- Location: LCCOMB_X19_Y10_N4
\decoder|tick_gen|Equal2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~8_combout\ = (!\decoder|tick_gen|stbit\(10) & (!\decoder|tick_gen|stbit\(9) & (!\decoder|tick_gen|stbit\(11) & !\decoder|tick_gen|stbit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(10),
	datab => \decoder|tick_gen|stbit\(9),
	datac => \decoder|tick_gen|stbit\(11),
	datad => \decoder|tick_gen|stbit\(8),
	combout => \decoder|tick_gen|Equal2~8_combout\);

-- Location: LCFF_X18_Y9_N7
\decoder|tick_gen|stbit[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~38_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(19));

-- Location: LCCOMB_X19_Y9_N2
\decoder|tick_gen|Equal2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~6_combout\ = (!\decoder|tick_gen|stbit\(17) & (!\decoder|tick_gen|stbit\(18) & (!\decoder|tick_gen|stbit\(19) & !\decoder|tick_gen|stbit\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(17),
	datab => \decoder|tick_gen|stbit\(18),
	datac => \decoder|tick_gen|stbit\(19),
	datad => \decoder|tick_gen|stbit\(16),
	combout => \decoder|tick_gen|Equal2~6_combout\);

-- Location: LCCOMB_X19_Y10_N14
\decoder|tick_gen|Equal2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~9_combout\ = (\decoder|tick_gen|Equal2~7_combout\ & (\decoder|tick_gen|Equal2~5_combout\ & (\decoder|tick_gen|Equal2~8_combout\ & \decoder|tick_gen|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal2~7_combout\,
	datab => \decoder|tick_gen|Equal2~5_combout\,
	datac => \decoder|tick_gen|Equal2~8_combout\,
	datad => \decoder|tick_gen|Equal2~6_combout\,
	combout => \decoder|tick_gen|Equal2~9_combout\);

-- Location: LCFF_X18_Y10_N11
\decoder|tick_gen|stbit[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~10_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(5));

-- Location: LCFF_X18_Y10_N7
\decoder|tick_gen|stbit[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(3));

-- Location: LCFF_X18_Y10_N13
\decoder|tick_gen|stbit[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add2~12_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stbit\(6));

-- Location: LCCOMB_X19_Y10_N28
\decoder|tick_gen|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~0_combout\ = (!\decoder|tick_gen|stbit\(4) & (!\decoder|tick_gen|stbit\(5) & (!\decoder|tick_gen|stbit\(3) & !\decoder|tick_gen|stbit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(4),
	datab => \decoder|tick_gen|stbit\(5),
	datac => \decoder|tick_gen|stbit\(3),
	datad => \decoder|tick_gen|stbit\(6),
	combout => \decoder|tick_gen|Equal2~0_combout\);

-- Location: LCCOMB_X19_Y10_N10
\decoder|tick_gen|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~1_combout\ = (!\decoder|tick_gen|stbit\(1) & (!\decoder|tick_gen|stbit\(2) & (!\decoder|tick_gen|stbit\(0) & \decoder|tick_gen|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(1),
	datab => \decoder|tick_gen|stbit\(2),
	datac => \decoder|tick_gen|stbit\(0),
	datad => \decoder|tick_gen|Equal2~0_combout\,
	combout => \decoder|tick_gen|Equal2~1_combout\);

-- Location: LCCOMB_X19_Y10_N16
\decoder|tick_gen|Equal2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~10_combout\ = (!\decoder|tick_gen|stbit\(7) & (\decoder|tick_gen|Equal2~4_combout\ & (\decoder|tick_gen|Equal2~9_combout\ & \decoder|tick_gen|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(7),
	datab => \decoder|tick_gen|Equal2~4_combout\,
	datac => \decoder|tick_gen|Equal2~9_combout\,
	datad => \decoder|tick_gen|Equal2~1_combout\,
	combout => \decoder|tick_gen|Equal2~10_combout\);

-- Location: LCFF_X27_Y9_N13
\decoder|tick_gen|tick_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \decoder|tick_gen|Equal2~10_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|tick_bit~regout\);

-- Location: LCCOMB_X36_Y9_N0
\decoder|decoder|Add0~0\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X35_Y9_N24
\decoder|decoder|Add0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~94_combout\ = (\decoder|decoder|Add0~14_combout\ & \decoder|decoder|EF.State_Extract~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Add0~14_combout\,
	datad => \decoder|decoder|EF.State_Extract~regout\,
	combout => \decoder|decoder|Add0~94_combout\);

-- Location: LCCOMB_X35_Y9_N6
\decoder|decoder|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector12~0_combout\ = (\decoder|tick_gen|tick_bit~regout\ & \decoder|decoder|EF.State_Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|tick_bit~regout\,
	datad => \decoder|decoder|EF.State_Init~regout\,
	combout => \decoder|decoder|Selector12~0_combout\);

-- Location: LCCOMB_X36_Y9_N20
\decoder|decoder|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~24_combout\ = (\decoder|decoder|i\(10) & ((GND) # (!\decoder|decoder|Add0~23\))) # (!\decoder|decoder|i\(10) & (\decoder|decoder|Add0~23\ $ (GND)))
-- \decoder|decoder|Add0~25\ = CARRY((\decoder|decoder|i\(10)) # (!\decoder|decoder|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(10),
	datad => VCC,
	cin => \decoder|decoder|Add0~23\,
	combout => \decoder|decoder|Add0~24_combout\,
	cout => \decoder|decoder|Add0~25\);

-- Location: LCCOMB_X36_Y9_N22
\decoder|decoder|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~26_combout\ = (\decoder|decoder|i\(11) & (\decoder|decoder|Add0~25\ & VCC)) # (!\decoder|decoder|i\(11) & (!\decoder|decoder|Add0~25\))
-- \decoder|decoder|Add0~27\ = CARRY((!\decoder|decoder|i\(11) & !\decoder|decoder|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(11),
	datad => VCC,
	cin => \decoder|decoder|Add0~25\,
	combout => \decoder|decoder|Add0~26_combout\,
	cout => \decoder|decoder|Add0~27\);

-- Location: LCCOMB_X34_Y9_N24
\decoder|decoder|Add0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~88_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~regout\,
	datad => \decoder|decoder|Add0~26_combout\,
	combout => \decoder|decoder|Add0~88_combout\);

-- Location: LCFF_X34_Y9_N25
\decoder|decoder|i[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~88_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(11));

-- Location: LCCOMB_X36_Y9_N24
\decoder|decoder|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~28_combout\ = (\decoder|decoder|i\(12) & ((GND) # (!\decoder|decoder|Add0~27\))) # (!\decoder|decoder|i\(12) & (\decoder|decoder|Add0~27\ $ (GND)))
-- \decoder|decoder|Add0~29\ = CARRY((\decoder|decoder|i\(12)) # (!\decoder|decoder|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(12),
	datad => VCC,
	cin => \decoder|decoder|Add0~27\,
	combout => \decoder|decoder|Add0~28_combout\,
	cout => \decoder|decoder|Add0~29\);

-- Location: LCCOMB_X34_Y9_N10
\decoder|decoder|Add0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~87_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~regout\,
	datad => \decoder|decoder|Add0~28_combout\,
	combout => \decoder|decoder|Add0~87_combout\);

-- Location: LCFF_X34_Y9_N11
\decoder|decoder|i[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~87_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(12));

-- Location: LCCOMB_X36_Y9_N26
\decoder|decoder|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~30_combout\ = (\decoder|decoder|i\(13) & (\decoder|decoder|Add0~29\ & VCC)) # (!\decoder|decoder|i\(13) & (!\decoder|decoder|Add0~29\))
-- \decoder|decoder|Add0~31\ = CARRY((!\decoder|decoder|i\(13) & !\decoder|decoder|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(13),
	datad => VCC,
	cin => \decoder|decoder|Add0~29\,
	combout => \decoder|decoder|Add0~30_combout\,
	cout => \decoder|decoder|Add0~31\);

-- Location: LCCOMB_X36_Y9_N30
\decoder|decoder|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~34_combout\ = (\decoder|decoder|i\(15) & (\decoder|decoder|Add0~33\ & VCC)) # (!\decoder|decoder|i\(15) & (!\decoder|decoder|Add0~33\))
-- \decoder|decoder|Add0~35\ = CARRY((!\decoder|decoder|i\(15) & !\decoder|decoder|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(15),
	datad => VCC,
	cin => \decoder|decoder|Add0~33\,
	combout => \decoder|decoder|Add0~34_combout\,
	cout => \decoder|decoder|Add0~35\);

-- Location: LCCOMB_X36_Y8_N0
\decoder|decoder|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~36_combout\ = (\decoder|decoder|i\(16) & ((GND) # (!\decoder|decoder|Add0~35\))) # (!\decoder|decoder|i\(16) & (\decoder|decoder|Add0~35\ $ (GND)))
-- \decoder|decoder|Add0~37\ = CARRY((\decoder|decoder|i\(16)) # (!\decoder|decoder|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(16),
	datad => VCC,
	cin => \decoder|decoder|Add0~35\,
	combout => \decoder|decoder|Add0~36_combout\,
	cout => \decoder|decoder|Add0~37\);

-- Location: LCCOMB_X34_Y9_N4
\decoder|decoder|Add0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~83_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~regout\,
	datad => \decoder|decoder|Add0~36_combout\,
	combout => \decoder|decoder|Add0~83_combout\);

-- Location: LCFF_X34_Y9_N5
\decoder|decoder|i[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~83_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(16));

-- Location: LCCOMB_X36_Y8_N4
\decoder|decoder|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~40_combout\ = (\decoder|decoder|i\(18) & ((GND) # (!\decoder|decoder|Add0~39\))) # (!\decoder|decoder|i\(18) & (\decoder|decoder|Add0~39\ $ (GND)))
-- \decoder|decoder|Add0~41\ = CARRY((\decoder|decoder|i\(18)) # (!\decoder|decoder|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(18),
	datad => VCC,
	cin => \decoder|decoder|Add0~39\,
	combout => \decoder|decoder|Add0~40_combout\,
	cout => \decoder|decoder|Add0~41\);

-- Location: LCCOMB_X35_Y9_N22
\decoder|decoder|Add0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~81_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~regout\,
	datad => \decoder|decoder|Add0~40_combout\,
	combout => \decoder|decoder|Add0~81_combout\);

-- Location: LCFF_X35_Y9_N23
\decoder|decoder|i[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~81_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(18));

-- Location: LCCOMB_X36_Y8_N6
\decoder|decoder|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~42_combout\ = (\decoder|decoder|i\(19) & (\decoder|decoder|Add0~41\ & VCC)) # (!\decoder|decoder|i\(19) & (!\decoder|decoder|Add0~41\))
-- \decoder|decoder|Add0~43\ = CARRY((!\decoder|decoder|i\(19) & !\decoder|decoder|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(19),
	datad => VCC,
	cin => \decoder|decoder|Add0~41\,
	combout => \decoder|decoder|Add0~42_combout\,
	cout => \decoder|decoder|Add0~43\);

-- Location: LCCOMB_X36_Y8_N8
\decoder|decoder|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~44_combout\ = (\decoder|decoder|i\(20) & ((GND) # (!\decoder|decoder|Add0~43\))) # (!\decoder|decoder|i\(20) & (\decoder|decoder|Add0~43\ $ (GND)))
-- \decoder|decoder|Add0~45\ = CARRY((\decoder|decoder|i\(20)) # (!\decoder|decoder|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(20),
	datad => VCC,
	cin => \decoder|decoder|Add0~43\,
	combout => \decoder|decoder|Add0~44_combout\,
	cout => \decoder|decoder|Add0~45\);

-- Location: LCCOMB_X36_Y8_N10
\decoder|decoder|Add0~46\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X36_Y8_N12
\decoder|decoder|Add0~48\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X35_Y9_N10
\decoder|decoder|Add0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~77_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~regout\,
	datac => \decoder|decoder|Add0~48_combout\,
	combout => \decoder|decoder|Add0~77_combout\);

-- Location: LCFF_X35_Y9_N11
\decoder|decoder|i[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~77_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(22));

-- Location: LCCOMB_X36_Y8_N14
\decoder|decoder|Add0~50\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X35_Y9_N0
\decoder|decoder|Add0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~76_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~regout\,
	datad => \decoder|decoder|Add0~50_combout\,
	combout => \decoder|decoder|Add0~76_combout\);

-- Location: LCFF_X35_Y9_N1
\decoder|decoder|i[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~76_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(23));

-- Location: LCCOMB_X36_Y8_N16
\decoder|decoder|Add0~52\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X36_Y8_N22
\decoder|decoder|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~58_combout\ = (\decoder|decoder|i\(27) & (\decoder|decoder|Add0~57\ & VCC)) # (!\decoder|decoder|i\(27) & (!\decoder|decoder|Add0~57\))
-- \decoder|decoder|Add0~59\ = CARRY((!\decoder|decoder|i\(27) & !\decoder|decoder|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(27),
	datad => VCC,
	cin => \decoder|decoder|Add0~57\,
	combout => \decoder|decoder|Add0~58_combout\,
	cout => \decoder|decoder|Add0~59\);

-- Location: LCCOMB_X35_Y8_N18
\decoder|decoder|Add0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~72_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~regout\,
	datad => \decoder|decoder|Add0~58_combout\,
	combout => \decoder|decoder|Add0~72_combout\);

-- Location: LCFF_X35_Y8_N19
\decoder|decoder|i[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~72_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(27));

-- Location: LCCOMB_X36_Y8_N24
\decoder|decoder|Add0~60\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X35_Y8_N4
\decoder|decoder|Add0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~71_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~regout\,
	datad => \decoder|decoder|Add0~60_combout\,
	combout => \decoder|decoder|Add0~71_combout\);

-- Location: LCFF_X35_Y8_N5
\decoder|decoder|i[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~71_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(28));

-- Location: LCCOMB_X36_Y8_N26
\decoder|decoder|Add0~62\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X35_Y8_N28
\decoder|decoder|Add0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~70_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~regout\,
	datac => \decoder|decoder|Add0~62_combout\,
	combout => \decoder|decoder|Add0~70_combout\);

-- Location: LCFF_X35_Y8_N29
\decoder|decoder|i[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~70_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(29));

-- Location: LCCOMB_X36_Y8_N28
\decoder|decoder|Add0~64\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X35_Y8_N6
\decoder|decoder|Add0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~69_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~regout\,
	datad => \decoder|decoder|Add0~64_combout\,
	combout => \decoder|decoder|Add0~69_combout\);

-- Location: LCFF_X35_Y8_N7
\decoder|decoder|i[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~69_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(30));

-- Location: LCCOMB_X36_Y8_N30
\decoder|decoder|Add0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~66_combout\ = \decoder|decoder|Add0~65\ $ (\decoder|decoder|i\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \decoder|decoder|i\(31),
	cin => \decoder|decoder|Add0~65\,
	combout => \decoder|decoder|Add0~66_combout\);

-- Location: LCCOMB_X35_Y8_N16
\decoder|decoder|Add0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~68_combout\ = (!\decoder|decoder|Add0~66_combout\) # (!\decoder|decoder|EF.State_Extract~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~regout\,
	datad => \decoder|decoder|Add0~66_combout\,
	combout => \decoder|decoder|Add0~68_combout\);

-- Location: LCFF_X35_Y8_N17
\decoder|decoder|i[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~68_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(31));

-- Location: LCCOMB_X35_Y8_N14
\decoder|decoder|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~0_combout\ = (((\decoder|decoder|i\(31)) # (\decoder|decoder|i\(0))) # (!\decoder|decoder|i\(29))) # (!\decoder|decoder|i\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(30),
	datab => \decoder|decoder|i\(29),
	datac => \decoder|decoder|i\(31),
	datad => \decoder|decoder|i\(0),
	combout => \decoder|decoder|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y8_N30
\decoder|decoder|Add0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~78_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~regout\,
	datac => \decoder|decoder|Add0~46_combout\,
	combout => \decoder|decoder|Add0~78_combout\);

-- Location: LCFF_X35_Y8_N31
\decoder|decoder|i[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~78_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(21));

-- Location: LCCOMB_X35_Y9_N26
\decoder|decoder|Add0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~75_combout\ = (\decoder|decoder|Add0~52_combout\ & \decoder|decoder|EF.State_Extract~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|Add0~52_combout\,
	datad => \decoder|decoder|EF.State_Extract~regout\,
	combout => \decoder|decoder|Add0~75_combout\);

-- Location: LCFF_X35_Y9_N27
\decoder|decoder|i[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~75_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(24));

-- Location: LCCOMB_X35_Y8_N24
\decoder|decoder|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~2_combout\ = (((!\decoder|decoder|i\(23)) # (!\decoder|decoder|i\(24))) # (!\decoder|decoder|i\(21))) # (!\decoder|decoder|i\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(22),
	datab => \decoder|decoder|i\(21),
	datac => \decoder|decoder|i\(24),
	datad => \decoder|decoder|i\(23),
	combout => \decoder|decoder|Equal0~2_combout\);

-- Location: LCCOMB_X35_Y8_N2
\decoder|decoder|Add0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~79_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~regout\,
	datac => \decoder|decoder|Add0~44_combout\,
	combout => \decoder|decoder|Add0~79_combout\);

-- Location: LCFF_X35_Y8_N3
\decoder|decoder|i[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~79_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(20));

-- Location: LCCOMB_X35_Y9_N8
\decoder|decoder|Add0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~80_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~regout\,
	datad => \decoder|decoder|Add0~42_combout\,
	combout => \decoder|decoder|Add0~80_combout\);

-- Location: LCFF_X35_Y9_N9
\decoder|decoder|i[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~80_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(19));

-- Location: LCCOMB_X35_Y8_N22
\decoder|decoder|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~3_combout\ = (((!\decoder|decoder|i\(19)) # (!\decoder|decoder|i\(18))) # (!\decoder|decoder|i\(20))) # (!\decoder|decoder|i\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(17),
	datab => \decoder|decoder|i\(20),
	datac => \decoder|decoder|i\(18),
	datad => \decoder|decoder|i\(19),
	combout => \decoder|decoder|Equal0~3_combout\);

-- Location: LCCOMB_X35_Y8_N8
\decoder|decoder|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~4_combout\ = (\decoder|decoder|Equal0~1_combout\) # ((\decoder|decoder|Equal0~0_combout\) # ((\decoder|decoder|Equal0~2_combout\) # (\decoder|decoder|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Equal0~1_combout\,
	datab => \decoder|decoder|Equal0~0_combout\,
	datac => \decoder|decoder|Equal0~2_combout\,
	datad => \decoder|decoder|Equal0~3_combout\,
	combout => \decoder|decoder|Equal0~4_combout\);

-- Location: LCCOMB_X35_Y9_N12
\decoder|decoder|i[31]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|i[31]~0_combout\ = (!\decoder|decoder|Selector12~0_combout\ & (((!\decoder|decoder|Equal0~9_combout\ & !\decoder|decoder|Equal0~4_combout\)) # (!\decoder|demanchester|State.Init~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|State.Init~regout\,
	datab => \decoder|decoder|Selector12~0_combout\,
	datac => \decoder|decoder|Equal0~9_combout\,
	datad => \decoder|decoder|Equal0~4_combout\,
	combout => \decoder|decoder|i[31]~0_combout\);

-- Location: LCCOMB_X35_Y9_N18
\decoder|decoder|i[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|i[0]~1_combout\ = (\decoder|decoder|Selector7~0_combout\ & (\decoder|tick_gen|tick_bit~regout\ & (!\rst~combout\ & !\decoder|decoder|i[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Selector7~0_combout\,
	datab => \decoder|tick_gen|tick_bit~regout\,
	datac => \rst~combout\,
	datad => \decoder|decoder|i[31]~0_combout\,
	combout => \decoder|decoder|i[0]~1_combout\);

-- Location: LCFF_X35_Y9_N25
\decoder|decoder|i[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~94_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(5));

-- Location: LCCOMB_X36_Y9_N2
\decoder|decoder|Add0~3\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X36_Y9_N4
\decoder|decoder|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~6_combout\ = (\decoder|decoder|i\(2) & ((GND) # (!\decoder|decoder|Add0~4\))) # (!\decoder|decoder|i\(2) & (\decoder|decoder|Add0~4\ $ (GND)))
-- \decoder|decoder|Add0~7\ = CARRY((\decoder|decoder|i\(2)) # (!\decoder|decoder|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(2),
	datad => VCC,
	cin => \decoder|decoder|Add0~4\,
	combout => \decoder|decoder|Add0~6_combout\,
	cout => \decoder|decoder|Add0~7\);

-- Location: LCCOMB_X34_Y9_N20
\decoder|decoder|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~8_combout\ = (\decoder|decoder|Add0~6_combout\) # (!\decoder|decoder|EF.State_Extract~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|Add0~6_combout\,
	datad => \decoder|decoder|EF.State_Extract~regout\,
	combout => \decoder|decoder|Add0~8_combout\);

-- Location: LCFF_X35_Y9_N7
\decoder|decoder|i[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \decoder|decoder|Add0~8_combout\,
	sload => VCC,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(2));

-- Location: LCCOMB_X36_Y9_N6
\decoder|decoder|Add0~9\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X35_Y9_N28
\decoder|decoder|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~11_combout\ = (\decoder|decoder|Add0~9_combout\) # (!\decoder|decoder|EF.State_Extract~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~regout\,
	datad => \decoder|decoder|Add0~9_combout\,
	combout => \decoder|decoder|Add0~11_combout\);

-- Location: LCFF_X35_Y9_N29
\decoder|decoder|i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~11_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(3));

-- Location: LCCOMB_X36_Y9_N8
\decoder|decoder|Add0~12\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X36_Y9_N14
\decoder|decoder|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~18_combout\ = (\decoder|decoder|i\(7) & (\decoder|decoder|Add0~17\ & VCC)) # (!\decoder|decoder|i\(7) & (!\decoder|decoder|Add0~17\))
-- \decoder|decoder|Add0~19\ = CARRY((!\decoder|decoder|i\(7) & !\decoder|decoder|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(7),
	datad => VCC,
	cin => \decoder|decoder|Add0~17\,
	combout => \decoder|decoder|Add0~18_combout\,
	cout => \decoder|decoder|Add0~19\);

-- Location: LCCOMB_X35_Y9_N16
\decoder|decoder|Add0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~92_combout\ = (\decoder|decoder|Add0~18_combout\ & \decoder|decoder|EF.State_Extract~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|Add0~18_combout\,
	datad => \decoder|decoder|EF.State_Extract~regout\,
	combout => \decoder|decoder|Add0~92_combout\);

-- Location: LCFF_X35_Y9_N17
\decoder|decoder|i[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~92_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(7));

-- Location: LCCOMB_X36_Y9_N18
\decoder|decoder|Add0~22\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X35_Y9_N4
\decoder|decoder|Add0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~90_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~regout\,
	datad => \decoder|decoder|Add0~22_combout\,
	combout => \decoder|decoder|Add0~90_combout\);

-- Location: LCFF_X35_Y9_N5
\decoder|decoder|i[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~90_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(9));

-- Location: LCCOMB_X34_Y9_N18
\decoder|decoder|Add0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~89_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~regout\,
	datad => \decoder|decoder|Add0~24_combout\,
	combout => \decoder|decoder|Add0~89_combout\);

-- Location: LCFF_X34_Y9_N19
\decoder|decoder|i[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~89_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(10));

-- Location: LCCOMB_X34_Y9_N8
\decoder|decoder|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~6_combout\ = (((!\decoder|decoder|i\(9)) # (!\decoder|decoder|i\(12))) # (!\decoder|decoder|i\(10))) # (!\decoder|decoder|i\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(11),
	datab => \decoder|decoder|i\(10),
	datac => \decoder|decoder|i\(12),
	datad => \decoder|decoder|i\(9),
	combout => \decoder|decoder|Equal0~6_combout\);

-- Location: LCCOMB_X34_Y9_N26
\decoder|decoder|Add0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~86_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~regout\,
	datad => \decoder|decoder|Add0~30_combout\,
	combout => \decoder|decoder|Add0~86_combout\);

-- Location: LCFF_X34_Y9_N27
\decoder|decoder|i[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~86_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(13));

-- Location: LCCOMB_X34_Y9_N22
\decoder|decoder|Add0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~84_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~regout\,
	datac => \decoder|decoder|Add0~34_combout\,
	combout => \decoder|decoder|Add0~84_combout\);

-- Location: LCFF_X34_Y9_N23
\decoder|decoder|i[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~84_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(15));

-- Location: LCCOMB_X34_Y9_N16
\decoder|decoder|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~5_combout\ = (((!\decoder|decoder|i\(15)) # (!\decoder|decoder|i\(16))) # (!\decoder|decoder|i\(13))) # (!\decoder|decoder|i\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(14),
	datab => \decoder|decoder|i\(13),
	datac => \decoder|decoder|i\(16),
	datad => \decoder|decoder|i\(15),
	combout => \decoder|decoder|Equal0~5_combout\);

-- Location: LCCOMB_X35_Y9_N14
\decoder|decoder|Add0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~95_combout\ = (\decoder|decoder|Add0~12_combout\ & \decoder|decoder|EF.State_Extract~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|Add0~12_combout\,
	datad => \decoder|decoder|EF.State_Extract~regout\,
	combout => \decoder|decoder|Add0~95_combout\);

-- Location: LCFF_X35_Y9_N15
\decoder|decoder|i[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Add0~95_combout\,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(4));

-- Location: LCCOMB_X34_Y9_N30
\decoder|decoder|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~5_combout\ = (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|Add0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~regout\,
	datac => \decoder|decoder|Add0~3_combout\,
	combout => \decoder|decoder|Add0~5_combout\);

-- Location: LCFF_X35_Y9_N21
\decoder|decoder|i[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \decoder|decoder|Add0~5_combout\,
	sload => VCC,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(1));

-- Location: LCCOMB_X35_Y9_N20
\decoder|decoder|Equal0~8\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X34_Y9_N0
\decoder|decoder|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~9_combout\ = (\decoder|decoder|Equal0~7_combout\) # ((\decoder|decoder|Equal0~6_combout\) # ((\decoder|decoder|Equal0~5_combout\) # (\decoder|decoder|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Equal0~7_combout\,
	datab => \decoder|decoder|Equal0~6_combout\,
	datac => \decoder|decoder|Equal0~5_combout\,
	datad => \decoder|decoder|Equal0~8_combout\,
	combout => \decoder|decoder|Equal0~9_combout\);

-- Location: LCCOMB_X34_Y10_N22
\decoder|decoder|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~10_combout\ = (\decoder|decoder|Equal0~9_combout\) # (\decoder|decoder|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|Equal0~9_combout\,
	datad => \decoder|decoder|Equal0~4_combout\,
	combout => \decoder|decoder|Equal0~10_combout\);

-- Location: LCCOMB_X34_Y10_N4
\decoder|decoder|Selector4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector4~5_combout\ = (\decoder|tick_gen|tick_bit~regout\ & \decoder|decoder|EF.State_Extract~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|tick_bit~regout\,
	datad => \decoder|decoder|EF.State_Extract~regout\,
	combout => \decoder|decoder|Selector4~5_combout\);

-- Location: LCCOMB_X34_Y10_N16
\decoder|decoder|Selector4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector4~8_combout\ = (\decoder|decoder|Selector4~5_combout\ & (((!\decoder|decoder|Equal0~9_combout\ & !\decoder|decoder|Equal0~4_combout\)) # (!\decoder|demanchester|State.Init~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|State.Init~regout\,
	datab => \decoder|decoder|Equal0~9_combout\,
	datac => \decoder|decoder|Selector4~5_combout\,
	datad => \decoder|decoder|Equal0~4_combout\,
	combout => \decoder|decoder|Selector4~8_combout\);

-- Location: LCCOMB_X44_Y25_N22
\encoder|TickGenerator|stmanch~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~4_combout\ = (\encoder|TickGenerator|Equal1~10_combout\) # (!\encoder|TickGenerator|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Add1~16_combout\,
	datac => \encoder|TickGenerator|Equal1~10_combout\,
	combout => \encoder|TickGenerator|stmanch~4_combout\);

-- Location: LCCOMB_X45_Y25_N0
\encoder|TickGenerator|Add1~0\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y25_N1
\encoder|TickGenerator|stmanch[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~0_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(0));

-- Location: LCCOMB_X45_Y25_N2
\encoder|TickGenerator|Add1~2\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y25_N3
\encoder|TickGenerator|stmanch[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~2_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(1));

-- Location: LCCOMB_X45_Y25_N4
\encoder|TickGenerator|Add1~4\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y25_N5
\encoder|TickGenerator|stmanch[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~4_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(2));

-- Location: LCCOMB_X45_Y25_N6
\encoder|TickGenerator|Add1~6\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X45_Y25_N8
\encoder|TickGenerator|Add1~8\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y25_N9
\encoder|TickGenerator|stmanch[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~8_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(4));

-- Location: LCCOMB_X45_Y25_N10
\encoder|TickGenerator|Add1~10\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X45_Y25_N12
\encoder|TickGenerator|Add1~12\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y25_N13
\encoder|TickGenerator|stmanch[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~12_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(6));

-- Location: LCFF_X45_Y25_N11
\encoder|TickGenerator|stmanch[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~10_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(5));

-- Location: LCCOMB_X45_Y27_N2
\encoder|TickGenerator|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~1_cout\ = CARRY((\encoder|TickGenerator|stmanch\(0) & \encoder|TickGenerator|stmanch\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(0),
	datab => \encoder|TickGenerator|stmanch\(1),
	datad => VCC,
	cout => \encoder|TickGenerator|Add2~1_cout\);

-- Location: LCCOMB_X45_Y27_N4
\encoder|TickGenerator|Add2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~3_cout\ = CARRY((!\encoder|TickGenerator|Add2~1_cout\) # (!\encoder|TickGenerator|stmanch\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(2),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~1_cout\,
	cout => \encoder|TickGenerator|Add2~3_cout\);

-- Location: LCCOMB_X45_Y27_N6
\encoder|TickGenerator|Add2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~5_cout\ = CARRY((\encoder|TickGenerator|stmanch\(3) & !\encoder|TickGenerator|Add2~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(3),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~3_cout\,
	cout => \encoder|TickGenerator|Add2~5_cout\);

-- Location: LCCOMB_X45_Y27_N8
\encoder|TickGenerator|Add2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~7_cout\ = CARRY((!\encoder|TickGenerator|Add2~5_cout\) # (!\encoder|TickGenerator|stmanch\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(4),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~5_cout\,
	cout => \encoder|TickGenerator|Add2~7_cout\);

-- Location: LCCOMB_X45_Y27_N10
\encoder|TickGenerator|Add2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~9_cout\ = CARRY((\encoder|TickGenerator|stmanch\(5) & !\encoder|TickGenerator|Add2~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(5),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~7_cout\,
	cout => \encoder|TickGenerator|Add2~9_cout\);

-- Location: LCCOMB_X45_Y27_N12
\encoder|TickGenerator|Add2~11\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X45_Y27_N14
\encoder|TickGenerator|Add2~12\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y27_N15
\encoder|TickGenerator|stbit[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add2~12_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(7));

-- Location: LCCOMB_X45_Y27_N18
\encoder|TickGenerator|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~16_combout\ = (\encoder|TickGenerator|stbit\(9) & (!\encoder|TickGenerator|Add2~15\ & VCC)) # (!\encoder|TickGenerator|stbit\(9) & (\encoder|TickGenerator|Add2~15\ $ (GND)))
-- \encoder|TickGenerator|Add2~17\ = CARRY((!\encoder|TickGenerator|stbit\(9) & !\encoder|TickGenerator|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(9),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~15\,
	combout => \encoder|TickGenerator|Add2~16_combout\,
	cout => \encoder|TickGenerator|Add2~17\);

-- Location: LCCOMB_X45_Y27_N20
\encoder|TickGenerator|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~18_combout\ = (\encoder|TickGenerator|stbit\(10) & (!\encoder|TickGenerator|Add2~17\)) # (!\encoder|TickGenerator|stbit\(10) & ((\encoder|TickGenerator|Add2~17\) # (GND)))
-- \encoder|TickGenerator|Add2~19\ = CARRY((!\encoder|TickGenerator|Add2~17\) # (!\encoder|TickGenerator|stbit\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(10),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~17\,
	combout => \encoder|TickGenerator|Add2~18_combout\,
	cout => \encoder|TickGenerator|Add2~19\);

-- Location: LCCOMB_X45_Y27_N22
\encoder|TickGenerator|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~20_combout\ = (\encoder|TickGenerator|stbit\(11) & (!\encoder|TickGenerator|Add2~19\ & VCC)) # (!\encoder|TickGenerator|stbit\(11) & (\encoder|TickGenerator|Add2~19\ $ (GND)))
-- \encoder|TickGenerator|Add2~21\ = CARRY((!\encoder|TickGenerator|stbit\(11) & !\encoder|TickGenerator|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(11),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~19\,
	combout => \encoder|TickGenerator|Add2~20_combout\,
	cout => \encoder|TickGenerator|Add2~21\);

-- Location: LCCOMB_X44_Y27_N28
\encoder|TickGenerator|stbit~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit~3_combout\ = (\encoder|TickGenerator|Equal2~8_combout\) # (!\encoder|TickGenerator|Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal2~8_combout\,
	datad => \encoder|TickGenerator|Add2~20_combout\,
	combout => \encoder|TickGenerator|stbit~3_combout\);

-- Location: LCFF_X44_Y27_N29
\encoder|TickGenerator|stbit[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|stbit~3_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(11));

-- Location: LCCOMB_X45_Y27_N26
\encoder|TickGenerator|Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~24_combout\ = (\encoder|TickGenerator|stbit\(13) & (\encoder|TickGenerator|Add2~23\ $ (GND))) # (!\encoder|TickGenerator|stbit\(13) & (!\encoder|TickGenerator|Add2~23\ & VCC))
-- \encoder|TickGenerator|Add2~25\ = CARRY((\encoder|TickGenerator|stbit\(13) & !\encoder|TickGenerator|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(13),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~23\,
	combout => \encoder|TickGenerator|Add2~24_combout\,
	cout => \encoder|TickGenerator|Add2~25\);

-- Location: LCFF_X45_Y27_N27
\encoder|TickGenerator|stbit[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add2~24_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(13));

-- Location: LCCOMB_X45_Y27_N28
\encoder|TickGenerator|Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~26_combout\ = (\encoder|TickGenerator|stbit\(14) & ((\encoder|TickGenerator|Add2~25\) # (GND))) # (!\encoder|TickGenerator|stbit\(14) & (!\encoder|TickGenerator|Add2~25\))
-- \encoder|TickGenerator|Add2~27\ = CARRY((\encoder|TickGenerator|stbit\(14)) # (!\encoder|TickGenerator|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(14),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~25\,
	combout => \encoder|TickGenerator|Add2~26_combout\,
	cout => \encoder|TickGenerator|Add2~27\);

-- Location: LCCOMB_X45_Y27_N30
\encoder|TickGenerator|Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~28_combout\ = (\encoder|TickGenerator|stbit\(15) & (\encoder|TickGenerator|Add2~27\ $ (GND))) # (!\encoder|TickGenerator|stbit\(15) & (!\encoder|TickGenerator|Add2~27\ & VCC))
-- \encoder|TickGenerator|Add2~29\ = CARRY((\encoder|TickGenerator|stbit\(15) & !\encoder|TickGenerator|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(15),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~27\,
	combout => \encoder|TickGenerator|Add2~28_combout\,
	cout => \encoder|TickGenerator|Add2~29\);

-- Location: LCFF_X45_Y27_N31
\encoder|TickGenerator|stbit[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add2~28_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(15));

-- Location: LCCOMB_X45_Y26_N0
\encoder|TickGenerator|Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~30_combout\ = (\encoder|TickGenerator|stbit\(16) & ((\encoder|TickGenerator|Add2~29\) # (GND))) # (!\encoder|TickGenerator|stbit\(16) & (!\encoder|TickGenerator|Add2~29\))
-- \encoder|TickGenerator|Add2~31\ = CARRY((\encoder|TickGenerator|stbit\(16)) # (!\encoder|TickGenerator|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(16),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~29\,
	combout => \encoder|TickGenerator|Add2~30_combout\,
	cout => \encoder|TickGenerator|Add2~31\);

-- Location: LCCOMB_X44_Y26_N24
\encoder|TickGenerator|stbit~0\ : cycloneii_lcell_comb
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

-- Location: LCFF_X44_Y26_N25
\encoder|TickGenerator|stbit[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|stbit~0_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(16));

-- Location: LCCOMB_X45_Y26_N2
\encoder|TickGenerator|Add2~32\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y26_N3
\encoder|TickGenerator|stbit[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add2~32_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(17));

-- Location: LCCOMB_X45_Y26_N4
\encoder|TickGenerator|Add2~34\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y26_N5
\encoder|TickGenerator|stbit[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add2~34_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(18));

-- Location: LCCOMB_X45_Y26_N8
\encoder|TickGenerator|Add2~38\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y26_N9
\encoder|TickGenerator|stbit[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add2~38_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(20));

-- Location: LCCOMB_X45_Y26_N10
\encoder|TickGenerator|Add2~40\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X45_Y26_N12
\encoder|TickGenerator|Add2~42\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X45_Y26_N14
\encoder|TickGenerator|Add2~44\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y26_N15
\encoder|TickGenerator|stbit[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add2~44_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(23));

-- Location: LCCOMB_X45_Y26_N16
\encoder|TickGenerator|Add2~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~46_combout\ = (\encoder|TickGenerator|stbit\(24) & (!\encoder|TickGenerator|Add2~45\)) # (!\encoder|TickGenerator|stbit\(24) & ((\encoder|TickGenerator|Add2~45\) # (GND)))
-- \encoder|TickGenerator|Add2~47\ = CARRY((!\encoder|TickGenerator|Add2~45\) # (!\encoder|TickGenerator|stbit\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(24),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~45\,
	combout => \encoder|TickGenerator|Add2~46_combout\,
	cout => \encoder|TickGenerator|Add2~47\);

-- Location: LCCOMB_X45_Y26_N18
\encoder|TickGenerator|Add2~48\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y26_N19
\encoder|TickGenerator|stbit[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add2~48_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(25));

-- Location: LCCOMB_X45_Y26_N20
\encoder|TickGenerator|Add2~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~50_combout\ = (\encoder|TickGenerator|stbit\(26) & (!\encoder|TickGenerator|Add2~49\)) # (!\encoder|TickGenerator|stbit\(26) & ((\encoder|TickGenerator|Add2~49\) # (GND)))
-- \encoder|TickGenerator|Add2~51\ = CARRY((!\encoder|TickGenerator|Add2~49\) # (!\encoder|TickGenerator|stbit\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(26),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~49\,
	combout => \encoder|TickGenerator|Add2~50_combout\,
	cout => \encoder|TickGenerator|Add2~51\);

-- Location: LCCOMB_X45_Y26_N22
\encoder|TickGenerator|Add2~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~52_combout\ = (\encoder|TickGenerator|stbit\(27) & (\encoder|TickGenerator|Add2~51\ $ (GND))) # (!\encoder|TickGenerator|stbit\(27) & (!\encoder|TickGenerator|Add2~51\ & VCC))
-- \encoder|TickGenerator|Add2~53\ = CARRY((\encoder|TickGenerator|stbit\(27) & !\encoder|TickGenerator|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(27),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~51\,
	combout => \encoder|TickGenerator|Add2~52_combout\,
	cout => \encoder|TickGenerator|Add2~53\);

-- Location: LCFF_X45_Y26_N23
\encoder|TickGenerator|stbit[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add2~52_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(27));

-- Location: LCCOMB_X45_Y26_N26
\encoder|TickGenerator|Add2~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~56_combout\ = (\encoder|TickGenerator|stbit\(29) & (\encoder|TickGenerator|Add2~55\ $ (GND))) # (!\encoder|TickGenerator|stbit\(29) & (!\encoder|TickGenerator|Add2~55\ & VCC))
-- \encoder|TickGenerator|Add2~57\ = CARRY((\encoder|TickGenerator|stbit\(29) & !\encoder|TickGenerator|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(29),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~55\,
	combout => \encoder|TickGenerator|Add2~56_combout\,
	cout => \encoder|TickGenerator|Add2~57\);

-- Location: LCFF_X45_Y26_N27
\encoder|TickGenerator|stbit[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add2~56_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(29));

-- Location: LCCOMB_X45_Y26_N28
\encoder|TickGenerator|Add2~58\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y26_N29
\encoder|TickGenerator|stbit[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add2~58_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(30));

-- Location: LCCOMB_X45_Y26_N30
\encoder|TickGenerator|Add2~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~60_combout\ = \encoder|TickGenerator|Add2~59\ $ (!\encoder|TickGenerator|stbit\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \encoder|TickGenerator|stbit\(31),
	cin => \encoder|TickGenerator|Add2~59\,
	combout => \encoder|TickGenerator|Add2~60_combout\);

-- Location: LCFF_X45_Y26_N31
\encoder|TickGenerator|stbit[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add2~60_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(31));

-- Location: LCCOMB_X44_Y26_N30
\encoder|TickGenerator|Equal2~0\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X44_Y27_N30
\encoder|TickGenerator|stbit~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit~4_combout\ = (\encoder|TickGenerator|Equal2~8_combout\) # (!\encoder|TickGenerator|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|Add2~16_combout\,
	datac => \encoder|TickGenerator|Equal2~8_combout\,
	combout => \encoder|TickGenerator|stbit~4_combout\);

-- Location: LCFF_X44_Y27_N31
\encoder|TickGenerator|stbit[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|stbit~4_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(9));

-- Location: LCFF_X45_Y27_N21
\encoder|TickGenerator|stbit[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add2~18_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(10));

-- Location: LCCOMB_X44_Y27_N2
\encoder|TickGenerator|Equal2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~6_combout\ = (!\encoder|TickGenerator|stbit\(8) & (!\encoder|TickGenerator|stbit\(9) & (!\encoder|TickGenerator|stbit\(11) & !\encoder|TickGenerator|stbit\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(8),
	datab => \encoder|TickGenerator|stbit\(9),
	datac => \encoder|TickGenerator|stbit\(11),
	datad => \encoder|TickGenerator|stbit\(10),
	combout => \encoder|TickGenerator|Equal2~6_combout\);

-- Location: LCCOMB_X44_Y27_N16
\encoder|TickGenerator|Equal2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~7_combout\ = (!\encoder|TickGenerator|stbit\(7) & \encoder|TickGenerator|Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|stbit\(7),
	datad => \encoder|TickGenerator|Equal2~6_combout\,
	combout => \encoder|TickGenerator|Equal2~7_combout\);

-- Location: LCFF_X45_Y26_N13
\encoder|TickGenerator|stbit[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add2~42_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(22));

-- Location: LCFF_X45_Y26_N11
\encoder|TickGenerator|stbit[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add2~40_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(21));

-- Location: LCCOMB_X44_Y26_N18
\encoder|TickGenerator|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~2_combout\ = (!\encoder|TickGenerator|stbit\(23) & (!\encoder|TickGenerator|stbit\(22) & (!\encoder|TickGenerator|stbit\(20) & !\encoder|TickGenerator|stbit\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(23),
	datab => \encoder|TickGenerator|stbit\(22),
	datac => \encoder|TickGenerator|stbit\(20),
	datad => \encoder|TickGenerator|stbit\(21),
	combout => \encoder|TickGenerator|Equal2~2_combout\);

-- Location: LCFF_X45_Y26_N21
\encoder|TickGenerator|stbit[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add2~50_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(26));

-- Location: LCFF_X45_Y26_N17
\encoder|TickGenerator|stbit[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add2~46_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(24));

-- Location: LCCOMB_X44_Y26_N16
\encoder|TickGenerator|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~1_combout\ = (!\encoder|TickGenerator|stbit\(27) & (!\encoder|TickGenerator|stbit\(26) & (!\encoder|TickGenerator|stbit\(24) & !\encoder|TickGenerator|stbit\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(27),
	datab => \encoder|TickGenerator|stbit\(26),
	datac => \encoder|TickGenerator|stbit\(24),
	datad => \encoder|TickGenerator|stbit\(25),
	combout => \encoder|TickGenerator|Equal2~1_combout\);

-- Location: LCCOMB_X44_Y27_N0
\encoder|TickGenerator|stbit~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit~1_combout\ = (\encoder|TickGenerator|Equal2~8_combout\) # (!\encoder|TickGenerator|Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal2~8_combout\,
	datad => \encoder|TickGenerator|Add2~26_combout\,
	combout => \encoder|TickGenerator|stbit~1_combout\);

-- Location: LCFF_X44_Y27_N1
\encoder|TickGenerator|stbit[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|stbit~1_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stbit\(14));

-- Location: LCCOMB_X45_Y27_N0
\encoder|TickGenerator|Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~4_combout\ = (!\encoder|TickGenerator|stbit\(12) & (!\encoder|TickGenerator|stbit\(13) & (!\encoder|TickGenerator|stbit\(14) & !\encoder|TickGenerator|stbit\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(12),
	datab => \encoder|TickGenerator|stbit\(13),
	datac => \encoder|TickGenerator|stbit\(14),
	datad => \encoder|TickGenerator|stbit\(15),
	combout => \encoder|TickGenerator|Equal2~4_combout\);

-- Location: LCCOMB_X44_Y26_N0
\encoder|TickGenerator|Equal2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~5_combout\ = (\encoder|TickGenerator|Equal2~3_combout\ & (\encoder|TickGenerator|Equal2~2_combout\ & (\encoder|TickGenerator|Equal2~1_combout\ & \encoder|TickGenerator|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal2~3_combout\,
	datab => \encoder|TickGenerator|Equal2~2_combout\,
	datac => \encoder|TickGenerator|Equal2~1_combout\,
	datad => \encoder|TickGenerator|Equal2~4_combout\,
	combout => \encoder|TickGenerator|Equal2~5_combout\);

-- Location: LCCOMB_X44_Y26_N22
\encoder|TickGenerator|Equal2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~8_combout\ = (\encoder|TickGenerator|Equal1~1_combout\ & (\encoder|TickGenerator|Equal2~0_combout\ & (\encoder|TickGenerator|Equal2~7_combout\ & \encoder|TickGenerator|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal1~1_combout\,
	datab => \encoder|TickGenerator|Equal2~0_combout\,
	datac => \encoder|TickGenerator|Equal2~7_combout\,
	datad => \encoder|TickGenerator|Equal2~5_combout\,
	combout => \encoder|TickGenerator|Equal2~8_combout\);

-- Location: LCFF_X44_Y26_N9
\encoder|TickGenerator|tick_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \encoder|TickGenerator|Equal2~8_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|tick_bit~regout\);

-- Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Go~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Go,
	combout => \Go~combout\);

-- Location: LCCOMB_X45_Y28_N14
\encoder|TickGenerator|Add3~44\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X45_Y28_N18
\encoder|TickGenerator|Add3~48\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y28_N19
\encoder|TickGenerator|sttrame[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add3~48_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(25));

-- Location: LCCOMB_X45_Y28_N22
\encoder|TickGenerator|Add3~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~52_combout\ = (\encoder|TickGenerator|sttrame\(27) & (\encoder|TickGenerator|Add3~51\ $ (GND))) # (!\encoder|TickGenerator|sttrame\(27) & (!\encoder|TickGenerator|Add3~51\ & VCC))
-- \encoder|TickGenerator|Add3~53\ = CARRY((\encoder|TickGenerator|sttrame\(27) & !\encoder|TickGenerator|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(27),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~51\,
	combout => \encoder|TickGenerator|Add3~52_combout\,
	cout => \encoder|TickGenerator|Add3~53\);

-- Location: LCFF_X45_Y28_N23
\encoder|TickGenerator|sttrame[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add3~52_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(27));

-- Location: LCCOMB_X45_Y28_N26
\encoder|TickGenerator|Add3~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~56_combout\ = (\encoder|TickGenerator|sttrame\(29) & (\encoder|TickGenerator|Add3~55\ $ (GND))) # (!\encoder|TickGenerator|sttrame\(29) & (!\encoder|TickGenerator|Add3~55\ & VCC))
-- \encoder|TickGenerator|Add3~57\ = CARRY((\encoder|TickGenerator|sttrame\(29) & !\encoder|TickGenerator|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(29),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~55\,
	combout => \encoder|TickGenerator|Add3~56_combout\,
	cout => \encoder|TickGenerator|Add3~57\);

-- Location: LCFF_X45_Y28_N27
\encoder|TickGenerator|sttrame[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add3~56_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(29));

-- Location: LCCOMB_X45_Y28_N28
\encoder|TickGenerator|Add3~58\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y28_N29
\encoder|TickGenerator|sttrame[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add3~58_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(30));

-- Location: LCCOMB_X45_Y28_N30
\encoder|TickGenerator|Add3~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~60_combout\ = \encoder|TickGenerator|Add3~59\ $ (!\encoder|TickGenerator|sttrame\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \encoder|TickGenerator|sttrame\(31),
	cin => \encoder|TickGenerator|Add3~59\,
	combout => \encoder|TickGenerator|Add3~60_combout\);

-- Location: LCFF_X45_Y28_N31
\encoder|TickGenerator|sttrame[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add3~60_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(31));

-- Location: LCCOMB_X44_Y28_N26
\encoder|TickGenerator|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~0_combout\ = (!\encoder|TickGenerator|sttrame\(28) & (!\encoder|TickGenerator|sttrame\(30) & (!\encoder|TickGenerator|sttrame\(29) & !\encoder|TickGenerator|sttrame\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(28),
	datab => \encoder|TickGenerator|sttrame\(30),
	datac => \encoder|TickGenerator|sttrame\(29),
	datad => \encoder|TickGenerator|sttrame\(31),
	combout => \encoder|TickGenerator|Equal3~0_combout\);

-- Location: LCFF_X45_Y25_N7
\encoder|TickGenerator|stmanch[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~6_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(3));

-- Location: LCCOMB_X44_Y25_N12
\encoder|TickGenerator|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~0_combout\ = (!\encoder|TickGenerator|stmanch\(2) & (!\encoder|TickGenerator|stmanch\(1) & (!\encoder|TickGenerator|stmanch\(4) & !\encoder|TickGenerator|stmanch\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(2),
	datab => \encoder|TickGenerator|stmanch\(1),
	datac => \encoder|TickGenerator|stmanch\(4),
	datad => \encoder|TickGenerator|stmanch\(3),
	combout => \encoder|TickGenerator|Equal1~0_combout\);

-- Location: LCCOMB_X44_Y28_N2
\encoder|TickGenerator|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~2_combout\ = (\encoder|TickGenerator|Equal3~1_combout\ & (\encoder|TickGenerator|Equal3~0_combout\ & (!\encoder|TickGenerator|stmanch\(0) & \encoder|TickGenerator|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~1_combout\,
	datab => \encoder|TickGenerator|Equal3~0_combout\,
	datac => \encoder|TickGenerator|stmanch\(0),
	datad => \encoder|TickGenerator|Equal1~0_combout\,
	combout => \encoder|TickGenerator|Equal3~2_combout\);

-- Location: LCCOMB_X45_Y29_N2
\encoder|TickGenerator|Add3~1\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X45_Y29_N4
\encoder|TickGenerator|Add3~3\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X45_Y29_N6
\encoder|TickGenerator|Add3~5\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X45_Y29_N8
\encoder|TickGenerator|Add3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~7_cout\ = CARRY((!\encoder|TickGenerator|Add3~5_cout\) # (!\encoder|TickGenerator|stmanch\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(4),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~5_cout\,
	cout => \encoder|TickGenerator|Add3~7_cout\);

-- Location: LCCOMB_X45_Y29_N10
\encoder|TickGenerator|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~8_combout\ = (\encoder|TickGenerator|sttrame\(5) & (!\encoder|TickGenerator|Add3~7_cout\ & VCC)) # (!\encoder|TickGenerator|sttrame\(5) & (\encoder|TickGenerator|Add3~7_cout\ $ (GND)))
-- \encoder|TickGenerator|Add3~9\ = CARRY((!\encoder|TickGenerator|sttrame\(5) & !\encoder|TickGenerator|Add3~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(5),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~7_cout\,
	combout => \encoder|TickGenerator|Add3~8_combout\,
	cout => \encoder|TickGenerator|Add3~9\);

-- Location: LCCOMB_X45_Y29_N12
\encoder|TickGenerator|Add3~10\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X45_Y29_N14
\encoder|TickGenerator|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~12_combout\ = (\encoder|TickGenerator|sttrame\(7) & (!\encoder|TickGenerator|Add3~11\ & VCC)) # (!\encoder|TickGenerator|sttrame\(7) & (\encoder|TickGenerator|Add3~11\ $ (GND)))
-- \encoder|TickGenerator|Add3~13\ = CARRY((!\encoder|TickGenerator|sttrame\(7) & !\encoder|TickGenerator|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(7),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~11\,
	combout => \encoder|TickGenerator|Add3~12_combout\,
	cout => \encoder|TickGenerator|Add3~13\);

-- Location: LCCOMB_X44_Y29_N30
\encoder|TickGenerator|sttrame~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~1_combout\ = ((\encoder|TickGenerator|Equal3~8_combout\ & (\encoder|TickGenerator|Equal3~2_combout\ & \encoder|TickGenerator|Equal3~3_combout\))) # (!\encoder|TickGenerator|Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~8_combout\,
	datab => \encoder|TickGenerator|Equal3~2_combout\,
	datac => \encoder|TickGenerator|Add3~8_combout\,
	datad => \encoder|TickGenerator|Equal3~3_combout\,
	combout => \encoder|TickGenerator|sttrame~1_combout\);

-- Location: LCFF_X44_Y29_N31
\encoder|TickGenerator|sttrame[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|sttrame~1_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(5));

-- Location: LCFF_X45_Y29_N13
\encoder|TickGenerator|sttrame[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add3~10_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(6));

-- Location: LCCOMB_X44_Y29_N12
\encoder|TickGenerator|Equal3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~3_combout\ = (!\encoder|TickGenerator|sttrame\(5) & (!\encoder|TickGenerator|sttrame\(6) & !\encoder|TickGenerator|sttrame\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(5),
	datac => \encoder|TickGenerator|sttrame\(6),
	datad => \encoder|TickGenerator|sttrame\(7),
	combout => \encoder|TickGenerator|Equal3~3_combout\);

-- Location: LCCOMB_X44_Y29_N28
\encoder|TickGenerator|sttrame~0\ : cycloneii_lcell_comb
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

-- Location: LCFF_X44_Y29_N29
\encoder|TickGenerator|sttrame[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|sttrame~0_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(7));

-- Location: LCCOMB_X45_Y29_N18
\encoder|TickGenerator|Add3~16\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y29_N19
\encoder|TickGenerator|sttrame[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add3~16_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(9));

-- Location: LCCOMB_X45_Y29_N20
\encoder|TickGenerator|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~18_combout\ = (\encoder|TickGenerator|sttrame\(10) & (!\encoder|TickGenerator|Add3~17\)) # (!\encoder|TickGenerator|sttrame\(10) & ((\encoder|TickGenerator|Add3~17\) # (GND)))
-- \encoder|TickGenerator|Add3~19\ = CARRY((!\encoder|TickGenerator|Add3~17\) # (!\encoder|TickGenerator|sttrame\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(10),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~17\,
	combout => \encoder|TickGenerator|Add3~18_combout\,
	cout => \encoder|TickGenerator|Add3~19\);

-- Location: LCCOMB_X45_Y29_N22
\encoder|TickGenerator|Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~20_combout\ = (\encoder|TickGenerator|sttrame\(11) & (!\encoder|TickGenerator|Add3~19\ & VCC)) # (!\encoder|TickGenerator|sttrame\(11) & (\encoder|TickGenerator|Add3~19\ $ (GND)))
-- \encoder|TickGenerator|Add3~21\ = CARRY((!\encoder|TickGenerator|sttrame\(11) & !\encoder|TickGenerator|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(11),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~19\,
	combout => \encoder|TickGenerator|Add3~20_combout\,
	cout => \encoder|TickGenerator|Add3~21\);

-- Location: LCCOMB_X44_Y29_N4
\encoder|TickGenerator|sttrame~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~10_combout\ = ((\encoder|TickGenerator|Equal3~3_combout\ & (\encoder|TickGenerator|Equal3~2_combout\ & \encoder|TickGenerator|Equal3~8_combout\))) # (!\encoder|TickGenerator|Add3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~3_combout\,
	datab => \encoder|TickGenerator|Equal3~2_combout\,
	datac => \encoder|TickGenerator|Equal3~8_combout\,
	datad => \encoder|TickGenerator|Add3~20_combout\,
	combout => \encoder|TickGenerator|sttrame~10_combout\);

-- Location: LCFF_X44_Y29_N5
\encoder|TickGenerator|sttrame[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|sttrame~10_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(11));

-- Location: LCCOMB_X45_Y29_N24
\encoder|TickGenerator|Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~22_combout\ = (\encoder|TickGenerator|sttrame\(12) & ((\encoder|TickGenerator|Add3~21\) # (GND))) # (!\encoder|TickGenerator|sttrame\(12) & (!\encoder|TickGenerator|Add3~21\))
-- \encoder|TickGenerator|Add3~23\ = CARRY((\encoder|TickGenerator|sttrame\(12)) # (!\encoder|TickGenerator|Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(12),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~21\,
	combout => \encoder|TickGenerator|Add3~22_combout\,
	cout => \encoder|TickGenerator|Add3~23\);

-- Location: LCCOMB_X44_Y29_N24
\encoder|TickGenerator|sttrame~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~9_combout\ = ((\encoder|TickGenerator|Equal3~3_combout\ & (\encoder|TickGenerator|Equal3~2_combout\ & \encoder|TickGenerator|Equal3~8_combout\))) # (!\encoder|TickGenerator|Add3~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~3_combout\,
	datab => \encoder|TickGenerator|Equal3~2_combout\,
	datac => \encoder|TickGenerator|Equal3~8_combout\,
	datad => \encoder|TickGenerator|Add3~22_combout\,
	combout => \encoder|TickGenerator|sttrame~9_combout\);

-- Location: LCFF_X44_Y29_N25
\encoder|TickGenerator|sttrame[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|sttrame~9_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(12));

-- Location: LCCOMB_X45_Y29_N26
\encoder|TickGenerator|Add3~24\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X44_Y29_N22
\encoder|TickGenerator|sttrame~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~8_combout\ = ((\encoder|TickGenerator|Equal3~8_combout\ & (\encoder|TickGenerator|Equal3~2_combout\ & \encoder|TickGenerator|Equal3~3_combout\))) # (!\encoder|TickGenerator|Add3~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~8_combout\,
	datab => \encoder|TickGenerator|Equal3~2_combout\,
	datac => \encoder|TickGenerator|Add3~24_combout\,
	datad => \encoder|TickGenerator|Equal3~3_combout\,
	combout => \encoder|TickGenerator|sttrame~8_combout\);

-- Location: LCFF_X44_Y29_N23
\encoder|TickGenerator|sttrame[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|sttrame~8_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(13));

-- Location: LCCOMB_X45_Y29_N28
\encoder|TickGenerator|Add3~26\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X45_Y29_N30
\encoder|TickGenerator|Add3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~28_combout\ = (\encoder|TickGenerator|sttrame\(15) & (!\encoder|TickGenerator|Add3~27\ & VCC)) # (!\encoder|TickGenerator|sttrame\(15) & (\encoder|TickGenerator|Add3~27\ $ (GND)))
-- \encoder|TickGenerator|Add3~29\ = CARRY((!\encoder|TickGenerator|sttrame\(15) & !\encoder|TickGenerator|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(15),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~27\,
	combout => \encoder|TickGenerator|Add3~28_combout\,
	cout => \encoder|TickGenerator|Add3~29\);

-- Location: LCCOMB_X44_Y29_N18
\encoder|TickGenerator|sttrame~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~6_combout\ = ((\encoder|TickGenerator|Equal3~3_combout\ & (\encoder|TickGenerator|Equal3~2_combout\ & \encoder|TickGenerator|Equal3~8_combout\))) # (!\encoder|TickGenerator|Add3~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~3_combout\,
	datab => \encoder|TickGenerator|Equal3~2_combout\,
	datac => \encoder|TickGenerator|Equal3~8_combout\,
	datad => \encoder|TickGenerator|Add3~28_combout\,
	combout => \encoder|TickGenerator|sttrame~6_combout\);

-- Location: LCFF_X44_Y29_N19
\encoder|TickGenerator|sttrame[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|sttrame~6_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(15));

-- Location: LCCOMB_X45_Y28_N0
\encoder|TickGenerator|Add3~30\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y28_N1
\encoder|TickGenerator|sttrame[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add3~30_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(16));

-- Location: LCCOMB_X45_Y28_N2
\encoder|TickGenerator|Add3~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~32_combout\ = (\encoder|TickGenerator|sttrame\(17) & (!\encoder|TickGenerator|Add3~31\ & VCC)) # (!\encoder|TickGenerator|sttrame\(17) & (\encoder|TickGenerator|Add3~31\ $ (GND)))
-- \encoder|TickGenerator|Add3~33\ = CARRY((!\encoder|TickGenerator|sttrame\(17) & !\encoder|TickGenerator|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(17),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~31\,
	combout => \encoder|TickGenerator|Add3~32_combout\,
	cout => \encoder|TickGenerator|Add3~33\);

-- Location: LCCOMB_X44_Y28_N28
\encoder|TickGenerator|sttrame~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~5_combout\ = ((\encoder|TickGenerator|Equal3~3_combout\ & (\encoder|TickGenerator|Equal3~2_combout\ & \encoder|TickGenerator|Equal3~8_combout\))) # (!\encoder|TickGenerator|Add3~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~3_combout\,
	datab => \encoder|TickGenerator|Equal3~2_combout\,
	datac => \encoder|TickGenerator|Equal3~8_combout\,
	datad => \encoder|TickGenerator|Add3~32_combout\,
	combout => \encoder|TickGenerator|sttrame~5_combout\);

-- Location: LCFF_X44_Y28_N29
\encoder|TickGenerator|sttrame[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|sttrame~5_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(17));

-- Location: LCCOMB_X45_Y28_N8
\encoder|TickGenerator|Add3~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~38_combout\ = (\encoder|TickGenerator|sttrame\(20) & ((\encoder|TickGenerator|Add3~37\) # (GND))) # (!\encoder|TickGenerator|sttrame\(20) & (!\encoder|TickGenerator|Add3~37\))
-- \encoder|TickGenerator|Add3~39\ = CARRY((\encoder|TickGenerator|sttrame\(20)) # (!\encoder|TickGenerator|Add3~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(20),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~37\,
	combout => \encoder|TickGenerator|Add3~38_combout\,
	cout => \encoder|TickGenerator|Add3~39\);

-- Location: LCCOMB_X45_Y28_N10
\encoder|TickGenerator|Add3~40\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X45_Y28_N12
\encoder|TickGenerator|Add3~42\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X44_Y28_N16
\encoder|TickGenerator|sttrame~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~2_combout\ = ((\encoder|TickGenerator|Equal3~3_combout\ & (\encoder|TickGenerator|Equal3~2_combout\ & \encoder|TickGenerator|Equal3~8_combout\))) # (!\encoder|TickGenerator|Add3~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~3_combout\,
	datab => \encoder|TickGenerator|Equal3~2_combout\,
	datac => \encoder|TickGenerator|Add3~42_combout\,
	datad => \encoder|TickGenerator|Equal3~8_combout\,
	combout => \encoder|TickGenerator|sttrame~2_combout\);

-- Location: LCFF_X44_Y28_N17
\encoder|TickGenerator|sttrame[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|sttrame~2_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(22));

-- Location: LCFF_X45_Y28_N15
\encoder|TickGenerator|sttrame[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add3~44_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(23));

-- Location: LCFF_X45_Y28_N11
\encoder|TickGenerator|sttrame[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add3~40_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(21));

-- Location: LCCOMB_X44_Y28_N14
\encoder|TickGenerator|sttrame~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~3_combout\ = ((\encoder|TickGenerator|Equal3~3_combout\ & (\encoder|TickGenerator|Equal3~8_combout\ & \encoder|TickGenerator|Equal3~2_combout\))) # (!\encoder|TickGenerator|Add3~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~3_combout\,
	datab => \encoder|TickGenerator|Add3~38_combout\,
	datac => \encoder|TickGenerator|Equal3~8_combout\,
	datad => \encoder|TickGenerator|Equal3~2_combout\,
	combout => \encoder|TickGenerator|sttrame~3_combout\);

-- Location: LCFF_X44_Y28_N15
\encoder|TickGenerator|sttrame[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|sttrame~3_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(20));

-- Location: LCCOMB_X44_Y28_N0
\encoder|TickGenerator|Equal3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~4_combout\ = (!\encoder|TickGenerator|sttrame\(22) & (!\encoder|TickGenerator|sttrame\(23) & (!\encoder|TickGenerator|sttrame\(21) & !\encoder|TickGenerator|sttrame\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(22),
	datab => \encoder|TickGenerator|sttrame\(23),
	datac => \encoder|TickGenerator|sttrame\(21),
	datad => \encoder|TickGenerator|sttrame\(20),
	combout => \encoder|TickGenerator|Equal3~4_combout\);

-- Location: LCFF_X45_Y29_N21
\encoder|TickGenerator|sttrame[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add3~18_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(10));

-- Location: LCCOMB_X45_Y29_N0
\encoder|TickGenerator|Equal3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~7_combout\ = (!\encoder|TickGenerator|sttrame\(8) & (!\encoder|TickGenerator|sttrame\(11) & (!\encoder|TickGenerator|sttrame\(10) & !\encoder|TickGenerator|sttrame\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(8),
	datab => \encoder|TickGenerator|sttrame\(11),
	datac => \encoder|TickGenerator|sttrame\(10),
	datad => \encoder|TickGenerator|sttrame\(9),
	combout => \encoder|TickGenerator|Equal3~7_combout\);

-- Location: LCCOMB_X44_Y29_N0
\encoder|TickGenerator|sttrame~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~7_combout\ = ((\encoder|TickGenerator|Equal3~3_combout\ & (\encoder|TickGenerator|Equal3~2_combout\ & \encoder|TickGenerator|Equal3~8_combout\))) # (!\encoder|TickGenerator|Add3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~3_combout\,
	datab => \encoder|TickGenerator|Equal3~2_combout\,
	datac => \encoder|TickGenerator|Equal3~8_combout\,
	datad => \encoder|TickGenerator|Add3~26_combout\,
	combout => \encoder|TickGenerator|sttrame~7_combout\);

-- Location: LCFF_X44_Y29_N1
\encoder|TickGenerator|sttrame[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|sttrame~7_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|sttrame\(14));

-- Location: LCCOMB_X44_Y29_N26
\encoder|TickGenerator|Equal3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~6_combout\ = (!\encoder|TickGenerator|sttrame\(13) & (!\encoder|TickGenerator|sttrame\(15) & (!\encoder|TickGenerator|sttrame\(12) & !\encoder|TickGenerator|sttrame\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(13),
	datab => \encoder|TickGenerator|sttrame\(15),
	datac => \encoder|TickGenerator|sttrame\(12),
	datad => \encoder|TickGenerator|sttrame\(14),
	combout => \encoder|TickGenerator|Equal3~6_combout\);

-- Location: LCCOMB_X44_Y29_N16
\encoder|TickGenerator|Equal3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~8_combout\ = (\encoder|TickGenerator|Equal3~5_combout\ & (\encoder|TickGenerator|Equal3~4_combout\ & (\encoder|TickGenerator|Equal3~7_combout\ & \encoder|TickGenerator|Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~5_combout\,
	datab => \encoder|TickGenerator|Equal3~4_combout\,
	datac => \encoder|TickGenerator|Equal3~7_combout\,
	datad => \encoder|TickGenerator|Equal3~6_combout\,
	combout => \encoder|TickGenerator|Equal3~8_combout\);

-- Location: LCCOMB_X44_Y28_N20
\encoder|TickGenerator|Equal3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~9_combout\ = (\encoder|TickGenerator|Equal3~3_combout\ & (\encoder|TickGenerator|Equal3~8_combout\ & \encoder|TickGenerator|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~3_combout\,
	datac => \encoder|TickGenerator|Equal3~8_combout\,
	datad => \encoder|TickGenerator|Equal3~2_combout\,
	combout => \encoder|TickGenerator|Equal3~9_combout\);

-- Location: LCFF_X44_Y28_N21
\encoder|TickGenerator|tick_trame\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Equal3~9_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|tick_trame~regout\);

-- Location: LCCOMB_X43_Y26_N28
\encoder|MAE_emission|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector2~0_combout\ = (\encoder|MAE_emission|EF.State_Clear~regout\) # ((\encoder|MAE_emission|EF.State_Close~regout\ & (\Go~combout\ & \encoder|TickGenerator|tick_trame~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Clear~regout\,
	datab => \encoder|MAE_emission|EF.State_Close~regout\,
	datac => \Go~combout\,
	datad => \encoder|TickGenerator|tick_trame~regout\,
	combout => \encoder|MAE_emission|Selector2~0_combout\);

-- Location: LCCOMB_X43_Y26_N14
\encoder|MAE_emission|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector2~1_combout\ = (\encoder|MAE_emission|Selector2~0_combout\) # ((!\encoder|TickGenerator|tick_bit~regout\ & \encoder|MAE_emission|EF.State_Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|tick_bit~regout\,
	datac => \encoder|MAE_emission|EF.State_Init~regout\,
	datad => \encoder|MAE_emission|Selector2~0_combout\,
	combout => \encoder|MAE_emission|Selector2~1_combout\);

-- Location: LCFF_X43_Y26_N15
\encoder|MAE_emission|EF.State_Init\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|Selector2~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|EF.State_Init~regout\);

-- Location: LCCOMB_X43_Y26_N18
\encoder|MAE_emission|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector3~0_combout\ = (\encoder|TickGenerator|tick_bit~regout\ & \encoder|MAE_emission|EF.State_Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|tick_bit~regout\,
	datad => \encoder|MAE_emission|EF.State_Init~regout\,
	combout => \encoder|MAE_emission|Selector3~0_combout\);

-- Location: LCCOMB_X44_Y26_N26
\encoder|MAE_emission|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector3~1_combout\ = (!\encoder|MAE_emission|EF.State_Close~regout\ & ((\encoder|MAE_emission|Selector3~0_combout\) # ((!\encoder|MAE_emission|Selector4~0_combout\ & \encoder|MAE_emission|EF.State_Send~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Selector4~0_combout\,
	datab => \encoder|MAE_emission|EF.State_Close~regout\,
	datac => \encoder|MAE_emission|EF.State_Send~regout\,
	datad => \encoder|MAE_emission|Selector3~0_combout\,
	combout => \encoder|MAE_emission|Selector3~1_combout\);

-- Location: LCFF_X44_Y26_N27
\encoder|MAE_emission|EF.State_Send\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|Selector3~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|EF.State_Send~regout\);

-- Location: LCCOMB_X42_Y26_N28
\encoder|MAE_emission|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector8~0_combout\ = (!\encoder|MAE_emission|EF.State_Send~regout\ & \encoder|MAE_emission|EF.State_Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Send~regout\,
	datab => \encoder|MAE_emission|EF.State_Init~regout\,
	combout => \encoder|MAE_emission|Selector8~0_combout\);

-- Location: LCCOMB_X41_Y25_N24
\encoder|MAE_emission|i[9]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[9]~24_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (\encoder|MAE_emission|Add0~18_combout\)) # (!\encoder|MAE_emission|i[0]~0_combout\ & (((!\encoder|MAE_emission|Selector8~0_combout\ & \encoder|MAE_emission|i\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~18_combout\,
	datab => \encoder|MAE_emission|Selector8~0_combout\,
	datac => \encoder|MAE_emission|i\(9),
	datad => \encoder|MAE_emission|i[0]~0_combout\,
	combout => \encoder|MAE_emission|i[9]~24_combout\);

-- Location: LCFF_X41_Y25_N25
\encoder|MAE_emission|i[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[9]~24_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(9));

-- Location: LCCOMB_X41_Y26_N18
\encoder|MAE_emission|i[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[5]~28_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (\encoder|MAE_emission|Add0~10_combout\)) # (!\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|i\(5) & !\encoder|MAE_emission|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~10_combout\,
	datab => \encoder|MAE_emission|i[0]~0_combout\,
	datac => \encoder|MAE_emission|i\(5),
	datad => \encoder|MAE_emission|Selector8~0_combout\,
	combout => \encoder|MAE_emission|i[5]~28_combout\);

-- Location: LCFF_X41_Y26_N19
\encoder|MAE_emission|i[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[5]~28_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(5));

-- Location: LCCOMB_X41_Y26_N28
\encoder|MAE_emission|i[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[4]~29_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (\encoder|MAE_emission|Add0~8_combout\)) # (!\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|i\(4) & !\encoder|MAE_emission|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~8_combout\,
	datab => \encoder|MAE_emission|i[0]~0_combout\,
	datac => \encoder|MAE_emission|i\(4),
	datad => \encoder|MAE_emission|Selector8~0_combout\,
	combout => \encoder|MAE_emission|i[4]~29_combout\);

-- Location: LCFF_X41_Y26_N29
\encoder|MAE_emission|i[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[4]~29_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(4));

-- Location: LCCOMB_X41_Y26_N20
\encoder|MAE_emission|i[1]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[1]~30_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (\encoder|MAE_emission|Add0~2_combout\)) # (!\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|i\(1) & !\encoder|MAE_emission|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~2_combout\,
	datab => \encoder|MAE_emission|i[0]~0_combout\,
	datac => \encoder|MAE_emission|i\(1),
	datad => \encoder|MAE_emission|Selector8~0_combout\,
	combout => \encoder|MAE_emission|i[1]~30_combout\);

-- Location: LCFF_X41_Y26_N21
\encoder|MAE_emission|i[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[1]~30_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(1));

-- Location: LCCOMB_X40_Y26_N0
\encoder|MAE_emission|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~0_combout\ = \encoder|MAE_emission|i\(0) $ (GND)
-- \encoder|MAE_emission|Add0~1\ = CARRY(!\encoder|MAE_emission|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(0),
	datad => VCC,
	combout => \encoder|MAE_emission|Add0~0_combout\,
	cout => \encoder|MAE_emission|Add0~1\);

-- Location: LCCOMB_X41_Y26_N14
\encoder|MAE_emission|Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector39~0_combout\ = (!\encoder|MAE_emission|Add0~0_combout\ & \encoder|MAE_emission|EF.State_Send~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|Add0~0_combout\,
	datad => \encoder|MAE_emission|EF.State_Send~regout\,
	combout => \encoder|MAE_emission|Selector39~0_combout\);

-- Location: LCCOMB_X42_Y26_N20
\encoder|MAE_emission|i[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[0]~1_combout\ = (\encoder|MAE_emission|i[0]~0_combout\) # ((!\encoder|MAE_emission|EF.State_Send~regout\ & \encoder|MAE_emission|EF.State_Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Send~regout\,
	datab => \encoder|MAE_emission|EF.State_Init~regout\,
	datad => \encoder|MAE_emission|i[0]~0_combout\,
	combout => \encoder|MAE_emission|i[0]~1_combout\);

-- Location: LCFF_X41_Y26_N15
\encoder|MAE_emission|i[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|Selector39~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \encoder|MAE_emission|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(0));

-- Location: LCCOMB_X40_Y26_N4
\encoder|MAE_emission|Add0~4\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X41_Y26_N10
\encoder|MAE_emission|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector37~0_combout\ = (!\encoder|MAE_emission|Add0~4_combout\ & \encoder|MAE_emission|EF.State_Send~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|Add0~4_combout\,
	datad => \encoder|MAE_emission|EF.State_Send~regout\,
	combout => \encoder|MAE_emission|Selector37~0_combout\);

-- Location: LCFF_X41_Y26_N11
\encoder|MAE_emission|i[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|Selector37~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \encoder|MAE_emission|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(2));

-- Location: LCCOMB_X40_Y26_N6
\encoder|MAE_emission|Add0~6\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X41_Y26_N12
\encoder|MAE_emission|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector36~0_combout\ = (!\encoder|MAE_emission|Add0~6_combout\ & \encoder|MAE_emission|EF.State_Send~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|Add0~6_combout\,
	datad => \encoder|MAE_emission|EF.State_Send~regout\,
	combout => \encoder|MAE_emission|Selector36~0_combout\);

-- Location: LCFF_X41_Y26_N13
\encoder|MAE_emission|i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|Selector36~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \encoder|MAE_emission|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(3));

-- Location: LCCOMB_X40_Y26_N16
\encoder|MAE_emission|Add0~16\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X41_Y25_N6
\encoder|MAE_emission|i[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[8]~25_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|Add0~16_combout\)))) # (!\encoder|MAE_emission|i[0]~0_combout\ & (!\encoder|MAE_emission|Selector8~0_combout\ & (\encoder|MAE_emission|i\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~0_combout\,
	datab => \encoder|MAE_emission|Selector8~0_combout\,
	datac => \encoder|MAE_emission|i\(8),
	datad => \encoder|MAE_emission|Add0~16_combout\,
	combout => \encoder|MAE_emission|i[8]~25_combout\);

-- Location: LCFF_X41_Y25_N7
\encoder|MAE_emission|i[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[8]~25_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(8));

-- Location: LCCOMB_X40_Y26_N22
\encoder|MAE_emission|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~22_combout\ = (\encoder|MAE_emission|i\(11) & (\encoder|MAE_emission|Add0~21\ & VCC)) # (!\encoder|MAE_emission|i\(11) & (!\encoder|MAE_emission|Add0~21\))
-- \encoder|MAE_emission|Add0~23\ = CARRY((!\encoder|MAE_emission|i\(11) & !\encoder|MAE_emission|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(11),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~21\,
	combout => \encoder|MAE_emission|Add0~22_combout\,
	cout => \encoder|MAE_emission|Add0~23\);

-- Location: LCCOMB_X41_Y25_N12
\encoder|MAE_emission|i[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[11]~22_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|Add0~22_combout\)))) # (!\encoder|MAE_emission|i[0]~0_combout\ & (!\encoder|MAE_emission|Selector8~0_combout\ & (\encoder|MAE_emission|i\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~0_combout\,
	datab => \encoder|MAE_emission|Selector8~0_combout\,
	datac => \encoder|MAE_emission|i\(11),
	datad => \encoder|MAE_emission|Add0~22_combout\,
	combout => \encoder|MAE_emission|i[11]~22_combout\);

-- Location: LCFF_X41_Y25_N13
\encoder|MAE_emission|i[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[11]~22_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(11));

-- Location: LCCOMB_X42_Y25_N6
\encoder|MAE_emission|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~6_combout\ = (\encoder|MAE_emission|i\(10) & (\encoder|MAE_emission|i\(9) & (\encoder|MAE_emission|i\(8) & \encoder|MAE_emission|i\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(10),
	datab => \encoder|MAE_emission|i\(9),
	datac => \encoder|MAE_emission|i\(8),
	datad => \encoder|MAE_emission|i\(11),
	combout => \encoder|MAE_emission|Equal0~6_combout\);

-- Location: LCCOMB_X41_Y26_N4
\encoder|MAE_emission|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~8_combout\ = (\encoder|MAE_emission|i\(1) & (!\encoder|MAE_emission|i\(3) & (!\encoder|MAE_emission|i\(0) & !\encoder|MAE_emission|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(1),
	datab => \encoder|MAE_emission|i\(3),
	datac => \encoder|MAE_emission|i\(0),
	datad => \encoder|MAE_emission|i\(2),
	combout => \encoder|MAE_emission|Equal0~8_combout\);

-- Location: LCCOMB_X41_Y26_N16
\encoder|MAE_emission|i[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[6]~27_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (\encoder|MAE_emission|Add0~12_combout\)) # (!\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|i\(6) & !\encoder|MAE_emission|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~12_combout\,
	datab => \encoder|MAE_emission|i[0]~0_combout\,
	datac => \encoder|MAE_emission|i\(6),
	datad => \encoder|MAE_emission|Selector8~0_combout\,
	combout => \encoder|MAE_emission|i[6]~27_combout\);

-- Location: LCFF_X41_Y26_N17
\encoder|MAE_emission|i[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[6]~27_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(6));

-- Location: LCCOMB_X41_Y26_N22
\encoder|MAE_emission|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~7_combout\ = (\encoder|MAE_emission|i\(7) & (\encoder|MAE_emission|i\(5) & (\encoder|MAE_emission|i\(6) & \encoder|MAE_emission|i\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(7),
	datab => \encoder|MAE_emission|i\(5),
	datac => \encoder|MAE_emission|i\(6),
	datad => \encoder|MAE_emission|i\(4),
	combout => \encoder|MAE_emission|Equal0~7_combout\);

-- Location: LCCOMB_X42_Y26_N2
\encoder|MAE_emission|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~9_combout\ = (\encoder|MAE_emission|Equal0~5_combout\ & (\encoder|MAE_emission|Equal0~6_combout\ & (\encoder|MAE_emission|Equal0~8_combout\ & \encoder|MAE_emission|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Equal0~5_combout\,
	datab => \encoder|MAE_emission|Equal0~6_combout\,
	datac => \encoder|MAE_emission|Equal0~8_combout\,
	datad => \encoder|MAE_emission|Equal0~7_combout\,
	combout => \encoder|MAE_emission|Equal0~9_combout\);

-- Location: LCCOMB_X42_Y26_N0
\encoder|MAE_emission|i[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[0]~0_combout\ = (\encoder|TickGenerator|tick_bit~regout\ & (\encoder|MAE_emission|EF.State_Send~regout\ & ((!\encoder|MAE_emission|Equal0~9_combout\) # (!\encoder|MAE_emission|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|tick_bit~regout\,
	datab => \encoder|MAE_emission|Equal0~4_combout\,
	datac => \encoder|MAE_emission|EF.State_Send~regout\,
	datad => \encoder|MAE_emission|Equal0~9_combout\,
	combout => \encoder|MAE_emission|i[0]~0_combout\);

-- Location: LCCOMB_X41_Y26_N24
\encoder|MAE_emission|i[15]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[15]~18_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (\encoder|MAE_emission|Add0~30_combout\)) # (!\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|i\(15) & !\encoder|MAE_emission|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~30_combout\,
	datab => \encoder|MAE_emission|i[0]~0_combout\,
	datac => \encoder|MAE_emission|i\(15),
	datad => \encoder|MAE_emission|Selector8~0_combout\,
	combout => \encoder|MAE_emission|i[15]~18_combout\);

-- Location: LCFF_X41_Y26_N25
\encoder|MAE_emission|i[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[15]~18_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(15));

-- Location: LCCOMB_X41_Y26_N0
\encoder|MAE_emission|i[13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[13]~20_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (\encoder|MAE_emission|Add0~26_combout\)) # (!\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|i\(13) & !\encoder|MAE_emission|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~26_combout\,
	datab => \encoder|MAE_emission|i[0]~0_combout\,
	datac => \encoder|MAE_emission|i\(13),
	datad => \encoder|MAE_emission|Selector8~0_combout\,
	combout => \encoder|MAE_emission|i[13]~20_combout\);

-- Location: LCFF_X41_Y26_N1
\encoder|MAE_emission|i[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[13]~20_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(13));

-- Location: LCCOMB_X41_Y26_N30
\encoder|MAE_emission|i[12]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[12]~21_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (\encoder|MAE_emission|Add0~24_combout\)) # (!\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|i\(12) & !\encoder|MAE_emission|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~24_combout\,
	datab => \encoder|MAE_emission|i[0]~0_combout\,
	datac => \encoder|MAE_emission|i\(12),
	datad => \encoder|MAE_emission|Selector8~0_combout\,
	combout => \encoder|MAE_emission|i[12]~21_combout\);

-- Location: LCFF_X41_Y26_N31
\encoder|MAE_emission|i[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[12]~21_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(12));

-- Location: LCCOMB_X40_Y25_N0
\encoder|MAE_emission|Add0~32\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X40_Y25_N4
\encoder|MAE_emission|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~36_combout\ = (\encoder|MAE_emission|i\(18) & ((GND) # (!\encoder|MAE_emission|Add0~35\))) # (!\encoder|MAE_emission|i\(18) & (\encoder|MAE_emission|Add0~35\ $ (GND)))
-- \encoder|MAE_emission|Add0~37\ = CARRY((\encoder|MAE_emission|i\(18)) # (!\encoder|MAE_emission|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(18),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~35\,
	combout => \encoder|MAE_emission|Add0~36_combout\,
	cout => \encoder|MAE_emission|Add0~37\);

-- Location: LCCOMB_X42_Y25_N8
\encoder|MAE_emission|i[18]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[18]~15_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|Add0~36_combout\)))) # (!\encoder|MAE_emission|i[0]~0_combout\ & (!\encoder|MAE_emission|Selector8~0_combout\ & (\encoder|MAE_emission|i\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Selector8~0_combout\,
	datab => \encoder|MAE_emission|i[0]~0_combout\,
	datac => \encoder|MAE_emission|i\(18),
	datad => \encoder|MAE_emission|Add0~36_combout\,
	combout => \encoder|MAE_emission|i[18]~15_combout\);

-- Location: LCFF_X42_Y25_N9
\encoder|MAE_emission|i[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[18]~15_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(18));

-- Location: LCCOMB_X42_Y25_N16
\encoder|MAE_emission|i[16]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[16]~17_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|Add0~32_combout\)))) # (!\encoder|MAE_emission|i[0]~0_combout\ & (!\encoder|MAE_emission|Selector8~0_combout\ & ((\encoder|MAE_emission|i\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Selector8~0_combout\,
	datab => \encoder|MAE_emission|Add0~32_combout\,
	datac => \encoder|MAE_emission|i\(16),
	datad => \encoder|MAE_emission|i[0]~0_combout\,
	combout => \encoder|MAE_emission|i[16]~17_combout\);

-- Location: LCFF_X42_Y25_N17
\encoder|MAE_emission|i[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[16]~17_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(16));

-- Location: LCCOMB_X42_Y25_N26
\encoder|MAE_emission|i[19]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[19]~14_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (\encoder|MAE_emission|Add0~38_combout\)) # (!\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|i\(19) & !\encoder|MAE_emission|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~38_combout\,
	datab => \encoder|MAE_emission|i[0]~0_combout\,
	datac => \encoder|MAE_emission|i\(19),
	datad => \encoder|MAE_emission|Selector8~0_combout\,
	combout => \encoder|MAE_emission|i[19]~14_combout\);

-- Location: LCFF_X42_Y25_N27
\encoder|MAE_emission|i[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[19]~14_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(19));

-- Location: LCCOMB_X42_Y25_N22
\encoder|MAE_emission|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~3_combout\ = (\encoder|MAE_emission|i\(17) & (\encoder|MAE_emission|i\(18) & (\encoder|MAE_emission|i\(16) & \encoder|MAE_emission|i\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(17),
	datab => \encoder|MAE_emission|i\(18),
	datac => \encoder|MAE_emission|i\(16),
	datad => \encoder|MAE_emission|i\(19),
	combout => \encoder|MAE_emission|Equal0~3_combout\);

-- Location: LCCOMB_X40_Y25_N8
\encoder|MAE_emission|Add0~40\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X41_Y25_N14
\encoder|MAE_emission|i[20]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[20]~13_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|Add0~40_combout\)))) # (!\encoder|MAE_emission|i[0]~0_combout\ & (!\encoder|MAE_emission|Selector8~0_combout\ & (\encoder|MAE_emission|i\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~0_combout\,
	datab => \encoder|MAE_emission|Selector8~0_combout\,
	datac => \encoder|MAE_emission|i\(20),
	datad => \encoder|MAE_emission|Add0~40_combout\,
	combout => \encoder|MAE_emission|i[20]~13_combout\);

-- Location: LCFF_X41_Y25_N15
\encoder|MAE_emission|i[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[20]~13_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(20));

-- Location: LCCOMB_X40_Y25_N10
\encoder|MAE_emission|Add0~42\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X41_Y25_N0
\encoder|MAE_emission|i[21]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[21]~12_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|Add0~42_combout\)))) # (!\encoder|MAE_emission|i[0]~0_combout\ & (!\encoder|MAE_emission|Selector8~0_combout\ & (\encoder|MAE_emission|i\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~0_combout\,
	datab => \encoder|MAE_emission|Selector8~0_combout\,
	datac => \encoder|MAE_emission|i\(21),
	datad => \encoder|MAE_emission|Add0~42_combout\,
	combout => \encoder|MAE_emission|i[21]~12_combout\);

-- Location: LCFF_X41_Y25_N1
\encoder|MAE_emission|i[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[21]~12_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(21));

-- Location: LCCOMB_X40_Y25_N12
\encoder|MAE_emission|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~44_combout\ = (\encoder|MAE_emission|i\(22) & ((GND) # (!\encoder|MAE_emission|Add0~43\))) # (!\encoder|MAE_emission|i\(22) & (\encoder|MAE_emission|Add0~43\ $ (GND)))
-- \encoder|MAE_emission|Add0~45\ = CARRY((\encoder|MAE_emission|i\(22)) # (!\encoder|MAE_emission|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(22),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~43\,
	combout => \encoder|MAE_emission|Add0~44_combout\,
	cout => \encoder|MAE_emission|Add0~45\);

-- Location: LCCOMB_X41_Y25_N30
\encoder|MAE_emission|i[22]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[22]~11_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|Add0~44_combout\)))) # (!\encoder|MAE_emission|i[0]~0_combout\ & (!\encoder|MAE_emission|Selector8~0_combout\ & (\encoder|MAE_emission|i\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~0_combout\,
	datab => \encoder|MAE_emission|Selector8~0_combout\,
	datac => \encoder|MAE_emission|i\(22),
	datad => \encoder|MAE_emission|Add0~44_combout\,
	combout => \encoder|MAE_emission|i[22]~11_combout\);

-- Location: LCFF_X41_Y25_N31
\encoder|MAE_emission|i[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[22]~11_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(22));

-- Location: LCCOMB_X40_Y25_N14
\encoder|MAE_emission|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~46_combout\ = (\encoder|MAE_emission|i\(23) & (\encoder|MAE_emission|Add0~45\ & VCC)) # (!\encoder|MAE_emission|i\(23) & (!\encoder|MAE_emission|Add0~45\))
-- \encoder|MAE_emission|Add0~47\ = CARRY((!\encoder|MAE_emission|i\(23) & !\encoder|MAE_emission|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(23),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~45\,
	combout => \encoder|MAE_emission|Add0~46_combout\,
	cout => \encoder|MAE_emission|Add0~47\);

-- Location: LCCOMB_X41_Y25_N16
\encoder|MAE_emission|i[23]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[23]~10_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|Add0~46_combout\)))) # (!\encoder|MAE_emission|i[0]~0_combout\ & (!\encoder|MAE_emission|Selector8~0_combout\ & (\encoder|MAE_emission|i\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~0_combout\,
	datab => \encoder|MAE_emission|Selector8~0_combout\,
	datac => \encoder|MAE_emission|i\(23),
	datad => \encoder|MAE_emission|Add0~46_combout\,
	combout => \encoder|MAE_emission|i[23]~10_combout\);

-- Location: LCFF_X41_Y25_N17
\encoder|MAE_emission|i[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[23]~10_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(23));

-- Location: LCCOMB_X42_Y25_N24
\encoder|MAE_emission|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~2_combout\ = (\encoder|MAE_emission|i\(22) & (\encoder|MAE_emission|i\(23) & (\encoder|MAE_emission|i\(21) & \encoder|MAE_emission|i\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(22),
	datab => \encoder|MAE_emission|i\(23),
	datac => \encoder|MAE_emission|i\(21),
	datad => \encoder|MAE_emission|i\(20),
	combout => \encoder|MAE_emission|Equal0~2_combout\);

-- Location: LCCOMB_X41_Y25_N26
\encoder|MAE_emission|i[26]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[26]~7_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (\encoder|MAE_emission|Add0~52_combout\)) # (!\encoder|MAE_emission|i[0]~0_combout\ & (((!\encoder|MAE_emission|Selector8~0_combout\ & \encoder|MAE_emission|i\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~52_combout\,
	datab => \encoder|MAE_emission|Selector8~0_combout\,
	datac => \encoder|MAE_emission|i\(26),
	datad => \encoder|MAE_emission|i[0]~0_combout\,
	combout => \encoder|MAE_emission|i[26]~7_combout\);

-- Location: LCFF_X41_Y25_N27
\encoder|MAE_emission|i[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[26]~7_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(26));

-- Location: LCCOMB_X40_Y25_N16
\encoder|MAE_emission|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~48_combout\ = (\encoder|MAE_emission|i\(24) & ((GND) # (!\encoder|MAE_emission|Add0~47\))) # (!\encoder|MAE_emission|i\(24) & (\encoder|MAE_emission|Add0~47\ $ (GND)))
-- \encoder|MAE_emission|Add0~49\ = CARRY((\encoder|MAE_emission|i\(24)) # (!\encoder|MAE_emission|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(24),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~47\,
	combout => \encoder|MAE_emission|Add0~48_combout\,
	cout => \encoder|MAE_emission|Add0~49\);

-- Location: LCCOMB_X41_Y25_N4
\encoder|MAE_emission|i[25]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[25]~8_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|Add0~50_combout\)))) # (!\encoder|MAE_emission|i[0]~0_combout\ & (!\encoder|MAE_emission|Selector8~0_combout\ & (\encoder|MAE_emission|i\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~0_combout\,
	datab => \encoder|MAE_emission|Selector8~0_combout\,
	datac => \encoder|MAE_emission|i\(25),
	datad => \encoder|MAE_emission|Add0~50_combout\,
	combout => \encoder|MAE_emission|i[25]~8_combout\);

-- Location: LCFF_X41_Y25_N5
\encoder|MAE_emission|i[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[25]~8_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(25));

-- Location: LCCOMB_X41_Y25_N2
\encoder|MAE_emission|i[24]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[24]~9_combout\ = (\encoder|MAE_emission|i[0]~0_combout\ & (((\encoder|MAE_emission|Add0~48_combout\)))) # (!\encoder|MAE_emission|i[0]~0_combout\ & (!\encoder|MAE_emission|Selector8~0_combout\ & (\encoder|MAE_emission|i\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~0_combout\,
	datab => \encoder|MAE_emission|Selector8~0_combout\,
	datac => \encoder|MAE_emission|i\(24),
	datad => \encoder|MAE_emission|Add0~48_combout\,
	combout => \encoder|MAE_emission|i[24]~9_combout\);

-- Location: LCFF_X41_Y25_N3
\encoder|MAE_emission|i[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|i[24]~9_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|i\(24));

-- Location: LCCOMB_X42_Y25_N18
\encoder|MAE_emission|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~1_combout\ = (\encoder|MAE_emission|i\(27) & (\encoder|MAE_emission|i\(26) & (\encoder|MAE_emission|i\(25) & \encoder|MAE_emission|i\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(27),
	datab => \encoder|MAE_emission|i\(26),
	datac => \encoder|MAE_emission|i\(25),
	datad => \encoder|MAE_emission|i\(24),
	combout => \encoder|MAE_emission|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y25_N0
\encoder|MAE_emission|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~4_combout\ = (\encoder|MAE_emission|Equal0~0_combout\ & (\encoder|MAE_emission|Equal0~3_combout\ & (\encoder|MAE_emission|Equal0~2_combout\ & \encoder|MAE_emission|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Equal0~0_combout\,
	datab => \encoder|MAE_emission|Equal0~3_combout\,
	datac => \encoder|MAE_emission|Equal0~2_combout\,
	datad => \encoder|MAE_emission|Equal0~1_combout\,
	combout => \encoder|MAE_emission|Equal0~4_combout\);

-- Location: LCCOMB_X43_Y26_N12
\encoder|MAE_emission|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector4~0_combout\ = (\encoder|MAE_emission|Equal0~4_combout\ & (\encoder|TickGenerator|tick_bit~regout\ & \encoder|MAE_emission|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|Equal0~4_combout\,
	datac => \encoder|TickGenerator|tick_bit~regout\,
	datad => \encoder|MAE_emission|Equal0~9_combout\,
	combout => \encoder|MAE_emission|Selector4~0_combout\);

-- Location: LCCOMB_X44_Y26_N28
\encoder|MAE_emission|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector4~2_combout\ = (\encoder|MAE_emission|Selector4~1_combout\) # ((\encoder|MAE_emission|EF.State_Send~regout\ & (!\encoder|MAE_emission|EF.State_Close~regout\ & \encoder|MAE_emission|Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Selector4~1_combout\,
	datab => \encoder|MAE_emission|EF.State_Send~regout\,
	datac => \encoder|MAE_emission|EF.State_Close~regout\,
	datad => \encoder|MAE_emission|Selector4~0_combout\,
	combout => \encoder|MAE_emission|Selector4~2_combout\);

-- Location: LCFF_X44_Y26_N29
\encoder|MAE_emission|EF.State_Close\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|Selector4~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|EF.State_Close~regout\);

-- Location: LCCOMB_X44_Y26_N20
\encoder|MAE_emission|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector7~0_combout\ = (\encoder|MAE_emission|EF.State_Clear~regout\) # ((\encoder|MAE_emission|clear~regout\ & ((\encoder|MAE_emission|EF.State_Close~regout\) # (\encoder|MAE_emission|EF.State_Send~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Clear~regout\,
	datab => \encoder|MAE_emission|EF.State_Close~regout\,
	datac => \encoder|MAE_emission|clear~regout\,
	datad => \encoder|MAE_emission|EF.State_Send~regout\,
	combout => \encoder|MAE_emission|Selector7~0_combout\);

-- Location: LCFF_X44_Y26_N21
\encoder|MAE_emission|clear\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|Selector7~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|clear~regout\);

-- Location: LCFF_X44_Y25_N23
\encoder|TickGenerator|stmanch[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|stmanch~4_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(8));

-- Location: LCCOMB_X45_Y25_N14
\encoder|TickGenerator|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~14_combout\ = (\encoder|TickGenerator|stmanch\(7) & ((\encoder|TickGenerator|Add1~13\) # (GND))) # (!\encoder|TickGenerator|stmanch\(7) & (!\encoder|TickGenerator|Add1~13\))
-- \encoder|TickGenerator|Add1~15\ = CARRY((\encoder|TickGenerator|stmanch\(7)) # (!\encoder|TickGenerator|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(7),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~13\,
	combout => \encoder|TickGenerator|Add1~14_combout\,
	cout => \encoder|TickGenerator|Add1~15\);

-- Location: LCCOMB_X44_Y24_N22
\encoder|TickGenerator|stmanch~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~5_combout\ = (\encoder|TickGenerator|Equal1~10_combout\) # (!\encoder|TickGenerator|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal1~10_combout\,
	datad => \encoder|TickGenerator|Add1~14_combout\,
	combout => \encoder|TickGenerator|stmanch~5_combout\);

-- Location: LCFF_X44_Y24_N23
\encoder|TickGenerator|stmanch[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|stmanch~5_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(7));

-- Location: LCCOMB_X45_Y25_N18
\encoder|TickGenerator|Add1~18\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y25_N19
\encoder|TickGenerator|stmanch[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~18_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(9));

-- Location: LCCOMB_X45_Y25_N20
\encoder|TickGenerator|Add1~20\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X44_Y24_N0
\encoder|TickGenerator|stmanch~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~3_combout\ = (\encoder|TickGenerator|Equal1~10_combout\) # (!\encoder|TickGenerator|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal1~10_combout\,
	datad => \encoder|TickGenerator|Add1~20_combout\,
	combout => \encoder|TickGenerator|stmanch~3_combout\);

-- Location: LCFF_X44_Y24_N1
\encoder|TickGenerator|stmanch[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|stmanch~3_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(10));

-- Location: LCCOMB_X45_Y25_N22
\encoder|TickGenerator|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~22_combout\ = (\encoder|TickGenerator|stmanch\(11) & ((\encoder|TickGenerator|Add1~21\) # (GND))) # (!\encoder|TickGenerator|stmanch\(11) & (!\encoder|TickGenerator|Add1~21\))
-- \encoder|TickGenerator|Add1~23\ = CARRY((\encoder|TickGenerator|stmanch\(11)) # (!\encoder|TickGenerator|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(11),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~21\,
	combout => \encoder|TickGenerator|Add1~22_combout\,
	cout => \encoder|TickGenerator|Add1~23\);

-- Location: LCCOMB_X44_Y25_N4
\encoder|TickGenerator|stmanch~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~2_combout\ = (\encoder|TickGenerator|Equal1~10_combout\) # (!\encoder|TickGenerator|Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal1~10_combout\,
	datad => \encoder|TickGenerator|Add1~22_combout\,
	combout => \encoder|TickGenerator|stmanch~2_combout\);

-- Location: LCFF_X44_Y25_N5
\encoder|TickGenerator|stmanch[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|stmanch~2_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(11));

-- Location: LCCOMB_X45_Y25_N24
\encoder|TickGenerator|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~24_combout\ = (\encoder|TickGenerator|stmanch\(12) & (\encoder|TickGenerator|Add1~23\ $ (GND))) # (!\encoder|TickGenerator|stmanch\(12) & (!\encoder|TickGenerator|Add1~23\ & VCC))
-- \encoder|TickGenerator|Add1~25\ = CARRY((\encoder|TickGenerator|stmanch\(12) & !\encoder|TickGenerator|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(12),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~23\,
	combout => \encoder|TickGenerator|Add1~24_combout\,
	cout => \encoder|TickGenerator|Add1~25\);

-- Location: LCCOMB_X45_Y25_N28
\encoder|TickGenerator|Add1~28\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y25_N29
\encoder|TickGenerator|stmanch[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~28_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(14));

-- Location: LCCOMB_X45_Y25_N30
\encoder|TickGenerator|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~30_combout\ = (\encoder|TickGenerator|stmanch\(15) & ((\encoder|TickGenerator|Add1~29\) # (GND))) # (!\encoder|TickGenerator|stmanch\(15) & (!\encoder|TickGenerator|Add1~29\))
-- \encoder|TickGenerator|Add1~31\ = CARRY((\encoder|TickGenerator|stmanch\(15)) # (!\encoder|TickGenerator|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(15),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~29\,
	combout => \encoder|TickGenerator|Add1~30_combout\,
	cout => \encoder|TickGenerator|Add1~31\);

-- Location: LCCOMB_X44_Y24_N16
\encoder|TickGenerator|stmanch~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~0_combout\ = (\encoder|TickGenerator|Equal1~10_combout\) # (!\encoder|TickGenerator|Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal1~10_combout\,
	datac => \encoder|TickGenerator|Add1~30_combout\,
	combout => \encoder|TickGenerator|stmanch~0_combout\);

-- Location: LCFF_X44_Y24_N17
\encoder|TickGenerator|stmanch[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|stmanch~0_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(15));

-- Location: LCCOMB_X45_Y24_N0
\encoder|TickGenerator|Add1~32\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y24_N1
\encoder|TickGenerator|stmanch[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~32_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(16));

-- Location: LCCOMB_X45_Y24_N2
\encoder|TickGenerator|Add1~34\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y24_N3
\encoder|TickGenerator|stmanch[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~34_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(17));

-- Location: LCCOMB_X45_Y24_N4
\encoder|TickGenerator|Add1~36\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y24_N5
\encoder|TickGenerator|stmanch[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~36_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(18));

-- Location: LCCOMB_X45_Y24_N8
\encoder|TickGenerator|Add1~40\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y24_N9
\encoder|TickGenerator|stmanch[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~40_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(20));

-- Location: LCCOMB_X45_Y24_N10
\encoder|TickGenerator|Add1~42\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y24_N11
\encoder|TickGenerator|stmanch[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~42_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(21));

-- Location: LCCOMB_X45_Y24_N12
\encoder|TickGenerator|Add1~44\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y24_N13
\encoder|TickGenerator|stmanch[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~44_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(22));

-- Location: LCCOMB_X44_Y24_N8
\encoder|TickGenerator|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~4_combout\ = (!\encoder|TickGenerator|stmanch\(23) & (!\encoder|TickGenerator|stmanch\(21) & (!\encoder|TickGenerator|stmanch\(20) & !\encoder|TickGenerator|stmanch\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(23),
	datab => \encoder|TickGenerator|stmanch\(21),
	datac => \encoder|TickGenerator|stmanch\(20),
	datad => \encoder|TickGenerator|stmanch\(22),
	combout => \encoder|TickGenerator|Equal1~4_combout\);

-- Location: LCFF_X45_Y25_N25
\encoder|TickGenerator|stmanch[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~24_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(12));

-- Location: LCCOMB_X44_Y24_N4
\encoder|TickGenerator|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~6_combout\ = (!\encoder|TickGenerator|stmanch\(13) & (!\encoder|TickGenerator|stmanch\(12) & (!\encoder|TickGenerator|stmanch\(15) & !\encoder|TickGenerator|stmanch\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(13),
	datab => \encoder|TickGenerator|stmanch\(12),
	datac => \encoder|TickGenerator|stmanch\(15),
	datad => \encoder|TickGenerator|stmanch\(14),
	combout => \encoder|TickGenerator|Equal1~6_combout\);

-- Location: LCCOMB_X45_Y24_N14
\encoder|TickGenerator|Add1~46\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y24_N15
\encoder|TickGenerator|stmanch[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~46_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(23));

-- Location: LCCOMB_X45_Y24_N16
\encoder|TickGenerator|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~48_combout\ = (\encoder|TickGenerator|stmanch\(24) & (\encoder|TickGenerator|Add1~47\ $ (GND))) # (!\encoder|TickGenerator|stmanch\(24) & (!\encoder|TickGenerator|Add1~47\ & VCC))
-- \encoder|TickGenerator|Add1~49\ = CARRY((\encoder|TickGenerator|stmanch\(24) & !\encoder|TickGenerator|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(24),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~47\,
	combout => \encoder|TickGenerator|Add1~48_combout\,
	cout => \encoder|TickGenerator|Add1~49\);

-- Location: LCCOMB_X45_Y24_N18
\encoder|TickGenerator|Add1~50\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y24_N19
\encoder|TickGenerator|stmanch[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~50_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(25));

-- Location: LCCOMB_X45_Y24_N20
\encoder|TickGenerator|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~52_combout\ = (\encoder|TickGenerator|stmanch\(26) & (\encoder|TickGenerator|Add1~51\ $ (GND))) # (!\encoder|TickGenerator|stmanch\(26) & (!\encoder|TickGenerator|Add1~51\ & VCC))
-- \encoder|TickGenerator|Add1~53\ = CARRY((\encoder|TickGenerator|stmanch\(26) & !\encoder|TickGenerator|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(26),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~51\,
	combout => \encoder|TickGenerator|Add1~52_combout\,
	cout => \encoder|TickGenerator|Add1~53\);

-- Location: LCFF_X45_Y24_N21
\encoder|TickGenerator|stmanch[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~52_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(26));

-- Location: LCFF_X45_Y24_N17
\encoder|TickGenerator|stmanch[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~48_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(24));

-- Location: LCFF_X45_Y24_N23
\encoder|TickGenerator|stmanch[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add1~54_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stmanch\(27));

-- Location: LCCOMB_X44_Y24_N18
\encoder|TickGenerator|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~3_combout\ = (!\encoder|TickGenerator|stmanch\(25) & (!\encoder|TickGenerator|stmanch\(26) & (!\encoder|TickGenerator|stmanch\(24) & !\encoder|TickGenerator|stmanch\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(25),
	datab => \encoder|TickGenerator|stmanch\(26),
	datac => \encoder|TickGenerator|stmanch\(24),
	datad => \encoder|TickGenerator|stmanch\(27),
	combout => \encoder|TickGenerator|Equal1~3_combout\);

-- Location: LCCOMB_X44_Y24_N26
\encoder|TickGenerator|Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~7_combout\ = (\encoder|TickGenerator|Equal1~5_combout\ & (\encoder|TickGenerator|Equal1~4_combout\ & (\encoder|TickGenerator|Equal1~6_combout\ & \encoder|TickGenerator|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal1~5_combout\,
	datab => \encoder|TickGenerator|Equal1~4_combout\,
	datac => \encoder|TickGenerator|Equal1~6_combout\,
	datad => \encoder|TickGenerator|Equal1~3_combout\,
	combout => \encoder|TickGenerator|Equal1~7_combout\);

-- Location: LCCOMB_X44_Y25_N10
\encoder|TickGenerator|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~1_combout\ = (!\encoder|TickGenerator|stmanch\(5) & (!\encoder|TickGenerator|stmanch\(0) & (!\encoder|TickGenerator|stmanch\(6) & \encoder|TickGenerator|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(5),
	datab => \encoder|TickGenerator|stmanch\(0),
	datac => \encoder|TickGenerator|stmanch\(6),
	datad => \encoder|TickGenerator|Equal1~0_combout\,
	combout => \encoder|TickGenerator|Equal1~1_combout\);

-- Location: LCCOMB_X44_Y25_N16
\encoder|TickGenerator|Equal1~8\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X44_Y24_N12
\encoder|TickGenerator|Equal1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~9_combout\ = (!\encoder|TickGenerator|stmanch\(7) & \encoder|TickGenerator|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(7),
	datac => \encoder|TickGenerator|Equal1~8_combout\,
	combout => \encoder|TickGenerator|Equal1~9_combout\);

-- Location: LCCOMB_X44_Y24_N20
\encoder|TickGenerator|Equal1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~10_combout\ = (\encoder|TickGenerator|Equal1~2_combout\ & (\encoder|TickGenerator|Equal1~7_combout\ & (\encoder|TickGenerator|Equal1~1_combout\ & \encoder|TickGenerator|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal1~2_combout\,
	datab => \encoder|TickGenerator|Equal1~7_combout\,
	datac => \encoder|TickGenerator|Equal1~1_combout\,
	datad => \encoder|TickGenerator|Equal1~9_combout\,
	combout => \encoder|TickGenerator|Equal1~10_combout\);

-- Location: LCFF_X44_Y24_N21
\encoder|TickGenerator|tick_manch\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Equal1~10_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|tick_manch~regout\);

-- Location: LCCOMB_X44_Y26_N8
\encoder|ManchesterGenerator|manch~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|ManchesterGenerator|manch~0_combout\ = \encoder|ManchesterGenerator|manch~regout\ $ (\encoder|TickGenerator|tick_manch~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|ManchesterGenerator|manch~regout\,
	datad => \encoder|TickGenerator|tick_manch~regout\,
	combout => \encoder|ManchesterGenerator|manch~0_combout\);

-- Location: LCCOMB_X43_Y26_N20
\encoder|ManchesterGenerator|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|ManchesterGenerator|process_0~0_combout\ = (\rst~combout\) # (\encoder|MAE_emission|clear~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \encoder|MAE_emission|clear~regout\,
	combout => \encoder|ManchesterGenerator|process_0~0_combout\);

-- Location: LCFF_X43_Y26_N23
\encoder|ManchesterGenerator|manch\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \encoder|ManchesterGenerator|manch~0_combout\,
	aclr => \encoder|ManchesterGenerator|process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|ManchesterGenerator|manch~regout\);

-- Location: LCCOMB_X43_Y26_N2
\encoder|MAE_emission|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector0~0_combout\ = (\Go~combout\) # ((\encoder|MAE_emission|EF.State_Begin~regout\ & !\encoder|MAE_emission|EF.State_Close~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Go~combout\,
	datac => \encoder|MAE_emission|EF.State_Begin~regout\,
	datad => \encoder|MAE_emission|EF.State_Close~regout\,
	combout => \encoder|MAE_emission|Selector0~0_combout\);

-- Location: LCFF_X43_Y26_N3
\encoder|MAE_emission|EF.State_Begin\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|Selector0~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|EF.State_Begin~regout\);

-- Location: LCCOMB_X43_Y26_N0
\encoder|MAE_emission|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector1~0_combout\ = (!\encoder|MAE_emission|EF.State_Begin~regout\ & \Go~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|EF.State_Begin~regout\,
	datac => \Go~combout\,
	combout => \encoder|MAE_emission|Selector1~0_combout\);

-- Location: LCFF_X43_Y26_N1
\encoder|MAE_emission|EF.State_Clear\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|Selector1~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|EF.State_Clear~regout\);

-- Location: LCCOMB_X43_Y26_N26
\encoder|MAE_emission|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector6~1_combout\ = (\encoder|MAE_emission|EF.State_Send~regout\ & (((\encoder|MAE_emission|Equal0~4_combout\ & \encoder|MAE_emission|Equal0~9_combout\)) # (!\encoder|TickGenerator|tick_bit~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Send~regout\,
	datab => \encoder|MAE_emission|Equal0~4_combout\,
	datac => \encoder|TickGenerator|tick_bit~regout\,
	datad => \encoder|MAE_emission|Equal0~9_combout\,
	combout => \encoder|MAE_emission|Selector6~1_combout\);

-- Location: LCCOMB_X43_Y26_N16
\encoder|MAE_emission|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector6~2_combout\ = (\encoder|MAE_emission|out_trame~regout\ & ((\encoder|MAE_emission|EF.State_Init~regout\) # ((\encoder|MAE_emission|EF.State_Clear~regout\) # (\encoder|MAE_emission|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Init~regout\,
	datab => \encoder|MAE_emission|EF.State_Clear~regout\,
	datac => \encoder|MAE_emission|out_trame~regout\,
	datad => \encoder|MAE_emission|Selector6~1_combout\,
	combout => \encoder|MAE_emission|Selector6~2_combout\);

-- Location: LCCOMB_X43_Y26_N4
\encoder|MAE_emission|toggle~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|toggle~0_combout\ = \encoder|MAE_emission|toggle~regout\ $ (\encoder|MAE_emission|EF.State_Clear~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|toggle~regout\,
	datad => \encoder|MAE_emission|EF.State_Clear~regout\,
	combout => \encoder|MAE_emission|toggle~0_combout\);

-- Location: LCFF_X43_Y26_N5
\encoder|MAE_emission|toggle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|toggle~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|toggle~regout\);

-- Location: LCCOMB_X42_Y26_N4
\encoder|MAE_emission|reg[11]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|reg[11]~1_combout\ = !\encoder|MAE_emission|toggle~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encoder|MAE_emission|toggle~regout\,
	combout => \encoder|MAE_emission|reg[11]~1_combout\);

-- Location: LCCOMB_X43_Y26_N10
\encoder|MAE_emission|reg[11]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|reg[11]~0_combout\ = (!\rst~combout\ & \encoder|MAE_emission|EF.State_Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \encoder|MAE_emission|EF.State_Init~regout\,
	combout => \encoder|MAE_emission|reg[11]~0_combout\);

-- Location: LCFF_X42_Y26_N5
\encoder|MAE_emission|reg[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|reg[11]~1_combout\,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|reg\(11));

-- Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Address_in[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Address_in(3),
	combout => \Address_in~combout\(3));

-- Location: LCFF_X42_Y26_N19
\encoder|MAE_emission|reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \Address_in~combout\(3),
	sload => VCC,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|reg\(9));

-- Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Address_in[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Address_in(2),
	combout => \Address_in~combout\(2));

-- Location: LCFF_X42_Y26_N7
\encoder|MAE_emission|reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \Address_in~combout\(2),
	sload => VCC,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|reg\(8));

-- Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Address_in[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Address_in(4),
	combout => \Address_in~combout\(4));

-- Location: LCFF_X42_Y26_N29
\encoder|MAE_emission|reg[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \Address_in~combout\(4),
	sload => VCC,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|reg\(10));

-- Location: LCCOMB_X42_Y26_N6
\encoder|MAE_emission|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~0_combout\ = (\encoder|MAE_emission|i\(0) & ((\encoder|MAE_emission|i\(1) & ((\encoder|MAE_emission|reg\(10)))) # (!\encoder|MAE_emission|i\(1) & (\encoder|MAE_emission|reg\(8))))) # (!\encoder|MAE_emission|i\(0) & 
-- (\encoder|MAE_emission|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(0),
	datab => \encoder|MAE_emission|i\(1),
	datac => \encoder|MAE_emission|reg\(8),
	datad => \encoder|MAE_emission|reg\(10),
	combout => \encoder|MAE_emission|Mux0~0_combout\);

-- Location: LCCOMB_X42_Y26_N18
\encoder|MAE_emission|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~1_combout\ = (\encoder|MAE_emission|i\(0) & (((\encoder|MAE_emission|Mux0~0_combout\)))) # (!\encoder|MAE_emission|i\(0) & ((\encoder|MAE_emission|Mux0~0_combout\ & (\encoder|MAE_emission|reg\(11))) # 
-- (!\encoder|MAE_emission|Mux0~0_combout\ & ((\encoder|MAE_emission|reg\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(0),
	datab => \encoder|MAE_emission|reg\(11),
	datac => \encoder|MAE_emission|reg\(9),
	datad => \encoder|MAE_emission|Mux0~0_combout\,
	combout => \encoder|MAE_emission|Mux0~1_combout\);

-- Location: LCCOMB_X42_Y26_N10
\encoder|MAE_emission|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~7_combout\ = (\encoder|MAE_emission|Mux0~6_combout\ & (((\encoder|MAE_emission|i\(3))) # (!\encoder|MAE_emission|i\(1)))) # (!\encoder|MAE_emission|Mux0~6_combout\ & (((!\encoder|MAE_emission|i\(3) & 
-- \encoder|MAE_emission|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Mux0~6_combout\,
	datab => \encoder|MAE_emission|i\(1),
	datac => \encoder|MAE_emission|i\(3),
	datad => \encoder|MAE_emission|Mux0~1_combout\,
	combout => \encoder|MAE_emission|Mux0~7_combout\);

-- Location: LCCOMB_X43_Y26_N8
\encoder|MAE_emission|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector6~3_combout\ = (\encoder|MAE_emission|Selector6~2_combout\) # ((\encoder|MAE_emission|i[0]~0_combout\ & \encoder|MAE_emission|Mux0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i[0]~0_combout\,
	datac => \encoder|MAE_emission|Selector6~2_combout\,
	datad => \encoder|MAE_emission|Mux0~7_combout\,
	combout => \encoder|MAE_emission|Selector6~3_combout\);

-- Location: LCFF_X43_Y26_N9
\encoder|MAE_emission|out_trame\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|MAE_emission|Selector6~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|MAE_emission|out_trame~regout\);

-- Location: LCCOMB_X41_Y24_N2
\encoder|BurstGenerator|state[0]~2\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X44_Y24_N14
\encoder|TickGenerator|stburst~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stburst~1_combout\ = (\encoder|TickGenerator|Equal0~10_combout\) # (!\encoder|TickGenerator|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Add0~12_combout\,
	datad => \encoder|TickGenerator|Equal0~10_combout\,
	combout => \encoder|TickGenerator|stburst~1_combout\);

-- Location: LCFF_X44_Y24_N15
\encoder|TickGenerator|stburst[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|stburst~1_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(6));

-- Location: LCCOMB_X43_Y24_N0
\encoder|TickGenerator|Add0~0\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X44_Y24_N30
\encoder|TickGenerator|stburst~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stburst~4_combout\ = (!\encoder|TickGenerator|Add0~0_combout\ & !\encoder|TickGenerator|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Add0~0_combout\,
	datad => \encoder|TickGenerator|Equal0~10_combout\,
	combout => \encoder|TickGenerator|stburst~4_combout\);

-- Location: LCFF_X44_Y24_N31
\encoder|TickGenerator|stburst[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|stburst~4_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(0));

-- Location: LCCOMB_X43_Y24_N2
\encoder|TickGenerator|Add0~2\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X42_Y24_N30
\encoder|TickGenerator|stburst[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stburst[1]~9_combout\ = !\encoder|TickGenerator|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encoder|TickGenerator|Add0~2_combout\,
	combout => \encoder|TickGenerator|stburst[1]~9_combout\);

-- Location: LCFF_X43_Y24_N1
\encoder|TickGenerator|stburst[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \encoder|TickGenerator|stburst[1]~9_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(1));

-- Location: LCCOMB_X43_Y24_N4
\encoder|TickGenerator|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~4_combout\ = (\encoder|TickGenerator|stburst\(2) & (\encoder|TickGenerator|Add0~3\ $ (GND))) # (!\encoder|TickGenerator|stburst\(2) & (!\encoder|TickGenerator|Add0~3\ & VCC))
-- \encoder|TickGenerator|Add0~5\ = CARRY((\encoder|TickGenerator|stburst\(2) & !\encoder|TickGenerator|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(2),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~3\,
	combout => \encoder|TickGenerator|Add0~4_combout\,
	cout => \encoder|TickGenerator|Add0~5\);

-- Location: LCCOMB_X44_Y24_N24
\encoder|TickGenerator|stburst~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stburst~3_combout\ = (\encoder|TickGenerator|Add0~4_combout\ & !\encoder|TickGenerator|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Add0~4_combout\,
	datad => \encoder|TickGenerator|Equal0~10_combout\,
	combout => \encoder|TickGenerator|stburst~3_combout\);

-- Location: LCFF_X44_Y24_N25
\encoder|TickGenerator|stburst[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|stburst~3_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(2));

-- Location: LCCOMB_X43_Y24_N6
\encoder|TickGenerator|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~6_combout\ = (\encoder|TickGenerator|stburst\(3) & ((\encoder|TickGenerator|Add0~5\) # (GND))) # (!\encoder|TickGenerator|stburst\(3) & (!\encoder|TickGenerator|Add0~5\))
-- \encoder|TickGenerator|Add0~7\ = CARRY((\encoder|TickGenerator|stburst\(3)) # (!\encoder|TickGenerator|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(3),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~5\,
	combout => \encoder|TickGenerator|Add0~6_combout\,
	cout => \encoder|TickGenerator|Add0~7\);

-- Location: LCCOMB_X42_Y24_N6
\encoder|TickGenerator|stburst~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stburst~2_combout\ = (\encoder|TickGenerator|Equal0~10_combout\) # (!\encoder|TickGenerator|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|Equal0~10_combout\,
	datac => \encoder|TickGenerator|Add0~6_combout\,
	combout => \encoder|TickGenerator|stburst~2_combout\);

-- Location: LCFF_X43_Y24_N9
\encoder|TickGenerator|stburst[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \encoder|TickGenerator|stburst~2_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(3));

-- Location: LCCOMB_X43_Y24_N14
\encoder|TickGenerator|Add0~14\ : cycloneii_lcell_comb
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

-- Location: LCFF_X43_Y24_N15
\encoder|TickGenerator|stburst[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~14_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(7));

-- Location: LCCOMB_X43_Y24_N16
\encoder|TickGenerator|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~16_combout\ = (\encoder|TickGenerator|stburst\(8) & (!\encoder|TickGenerator|Add0~15\ & VCC)) # (!\encoder|TickGenerator|stburst\(8) & (\encoder|TickGenerator|Add0~15\ $ (GND)))
-- \encoder|TickGenerator|Add0~17\ = CARRY((!\encoder|TickGenerator|stburst\(8) & !\encoder|TickGenerator|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(8),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~15\,
	combout => \encoder|TickGenerator|Add0~16_combout\,
	cout => \encoder|TickGenerator|Add0~17\);

-- Location: LCCOMB_X42_Y24_N0
\encoder|TickGenerator|stburst~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stburst~0_combout\ = (\encoder|TickGenerator|Equal0~10_combout\) # (!\encoder|TickGenerator|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Add0~16_combout\,
	datad => \encoder|TickGenerator|Equal0~10_combout\,
	combout => \encoder|TickGenerator|stburst~0_combout\);

-- Location: LCFF_X43_Y24_N3
\encoder|TickGenerator|stburst[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \encoder|TickGenerator|stburst~0_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(8));

-- Location: LCCOMB_X43_Y24_N18
\encoder|TickGenerator|Add0~18\ : cycloneii_lcell_comb
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

-- Location: LCFF_X43_Y24_N19
\encoder|TickGenerator|stburst[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~18_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(9));

-- Location: LCCOMB_X43_Y24_N20
\encoder|TickGenerator|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~20_combout\ = (\encoder|TickGenerator|stburst\(10) & (\encoder|TickGenerator|Add0~19\ $ (GND))) # (!\encoder|TickGenerator|stburst\(10) & (!\encoder|TickGenerator|Add0~19\ & VCC))
-- \encoder|TickGenerator|Add0~21\ = CARRY((\encoder|TickGenerator|stburst\(10) & !\encoder|TickGenerator|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(10),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~19\,
	combout => \encoder|TickGenerator|Add0~20_combout\,
	cout => \encoder|TickGenerator|Add0~21\);

-- Location: LCCOMB_X43_Y24_N22
\encoder|TickGenerator|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~22_combout\ = (\encoder|TickGenerator|stburst\(11) & (!\encoder|TickGenerator|Add0~21\)) # (!\encoder|TickGenerator|stburst\(11) & ((\encoder|TickGenerator|Add0~21\) # (GND)))
-- \encoder|TickGenerator|Add0~23\ = CARRY((!\encoder|TickGenerator|Add0~21\) # (!\encoder|TickGenerator|stburst\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(11),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~21\,
	combout => \encoder|TickGenerator|Add0~22_combout\,
	cout => \encoder|TickGenerator|Add0~23\);

-- Location: LCFF_X43_Y24_N23
\encoder|TickGenerator|stburst[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~22_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(11));

-- Location: LCCOMB_X43_Y24_N24
\encoder|TickGenerator|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~24_combout\ = (\encoder|TickGenerator|stburst\(12) & (\encoder|TickGenerator|Add0~23\ $ (GND))) # (!\encoder|TickGenerator|stburst\(12) & (!\encoder|TickGenerator|Add0~23\ & VCC))
-- \encoder|TickGenerator|Add0~25\ = CARRY((\encoder|TickGenerator|stburst\(12) & !\encoder|TickGenerator|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(12),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~23\,
	combout => \encoder|TickGenerator|Add0~24_combout\,
	cout => \encoder|TickGenerator|Add0~25\);

-- Location: LCCOMB_X43_Y24_N26
\encoder|TickGenerator|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~26_combout\ = (\encoder|TickGenerator|stburst\(13) & (!\encoder|TickGenerator|Add0~25\)) # (!\encoder|TickGenerator|stburst\(13) & ((\encoder|TickGenerator|Add0~25\) # (GND)))
-- \encoder|TickGenerator|Add0~27\ = CARRY((!\encoder|TickGenerator|Add0~25\) # (!\encoder|TickGenerator|stburst\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(13),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~25\,
	combout => \encoder|TickGenerator|Add0~26_combout\,
	cout => \encoder|TickGenerator|Add0~27\);

-- Location: LCFF_X43_Y24_N27
\encoder|TickGenerator|stburst[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~26_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(13));

-- Location: LCCOMB_X43_Y24_N28
\encoder|TickGenerator|Add0~28\ : cycloneii_lcell_comb
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

-- Location: LCFF_X43_Y24_N29
\encoder|TickGenerator|stburst[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~28_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(14));

-- Location: LCFF_X43_Y24_N25
\encoder|TickGenerator|stburst[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~24_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(12));

-- Location: LCCOMB_X42_Y24_N18
\encoder|TickGenerator|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~5_combout\ = (!\encoder|TickGenerator|stburst\(15) & (!\encoder|TickGenerator|stburst\(14) & (!\encoder|TickGenerator|stburst\(13) & !\encoder|TickGenerator|stburst\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(15),
	datab => \encoder|TickGenerator|stburst\(14),
	datac => \encoder|TickGenerator|stburst\(13),
	datad => \encoder|TickGenerator|stburst\(12),
	combout => \encoder|TickGenerator|Equal0~5_combout\);

-- Location: LCFF_X43_Y24_N21
\encoder|TickGenerator|stburst[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~20_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(10));

-- Location: LCCOMB_X42_Y24_N24
\encoder|TickGenerator|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~6_combout\ = (!\encoder|TickGenerator|stburst\(8) & (!\encoder|TickGenerator|stburst\(10) & (!\encoder|TickGenerator|stburst\(11) & !\encoder|TickGenerator|stburst\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(8),
	datab => \encoder|TickGenerator|stburst\(10),
	datac => \encoder|TickGenerator|stburst\(11),
	datad => \encoder|TickGenerator|stburst\(9),
	combout => \encoder|TickGenerator|Equal0~6_combout\);

-- Location: LCCOMB_X43_Y24_N30
\encoder|TickGenerator|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~30_combout\ = (\encoder|TickGenerator|stburst\(15) & (!\encoder|TickGenerator|Add0~29\)) # (!\encoder|TickGenerator|stburst\(15) & ((\encoder|TickGenerator|Add0~29\) # (GND)))
-- \encoder|TickGenerator|Add0~31\ = CARRY((!\encoder|TickGenerator|Add0~29\) # (!\encoder|TickGenerator|stburst\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(15),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~29\,
	combout => \encoder|TickGenerator|Add0~30_combout\,
	cout => \encoder|TickGenerator|Add0~31\);

-- Location: LCFF_X43_Y24_N31
\encoder|TickGenerator|stburst[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~30_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(15));

-- Location: LCCOMB_X43_Y23_N0
\encoder|TickGenerator|Add0~32\ : cycloneii_lcell_comb
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

-- Location: LCFF_X43_Y23_N1
\encoder|TickGenerator|stburst[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~32_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(16));

-- Location: LCCOMB_X43_Y23_N2
\encoder|TickGenerator|Add0~34\ : cycloneii_lcell_comb
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

-- Location: LCFF_X43_Y23_N3
\encoder|TickGenerator|stburst[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~34_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(17));

-- Location: LCCOMB_X43_Y23_N4
\encoder|TickGenerator|Add0~36\ : cycloneii_lcell_comb
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

-- Location: LCFF_X43_Y23_N5
\encoder|TickGenerator|stburst[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~36_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(18));

-- Location: LCCOMB_X43_Y23_N6
\encoder|TickGenerator|Add0~38\ : cycloneii_lcell_comb
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

-- Location: LCFF_X43_Y23_N7
\encoder|TickGenerator|stburst[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~38_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(19));

-- Location: LCCOMB_X42_Y23_N2
\encoder|TickGenerator|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~3_combout\ = (!\encoder|TickGenerator|stburst\(18) & (!\encoder|TickGenerator|stburst\(19) & (!\encoder|TickGenerator|stburst\(16) & !\encoder|TickGenerator|stburst\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(18),
	datab => \encoder|TickGenerator|stburst\(19),
	datac => \encoder|TickGenerator|stburst\(16),
	datad => \encoder|TickGenerator|stburst\(17),
	combout => \encoder|TickGenerator|Equal0~3_combout\);

-- Location: LCCOMB_X43_Y23_N8
\encoder|TickGenerator|Add0~40\ : cycloneii_lcell_comb
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

-- Location: LCFF_X43_Y23_N9
\encoder|TickGenerator|stburst[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~40_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(20));

-- Location: LCCOMB_X43_Y23_N14
\encoder|TickGenerator|Add0~46\ : cycloneii_lcell_comb
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

-- Location: LCFF_X43_Y23_N15
\encoder|TickGenerator|stburst[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~46_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(23));

-- Location: LCCOMB_X43_Y23_N18
\encoder|TickGenerator|Add0~50\ : cycloneii_lcell_comb
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

-- Location: LCFF_X43_Y23_N19
\encoder|TickGenerator|stburst[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~50_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(25));

-- Location: LCCOMB_X43_Y23_N20
\encoder|TickGenerator|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~52_combout\ = (\encoder|TickGenerator|stburst\(26) & (\encoder|TickGenerator|Add0~51\ $ (GND))) # (!\encoder|TickGenerator|stburst\(26) & (!\encoder|TickGenerator|Add0~51\ & VCC))
-- \encoder|TickGenerator|Add0~53\ = CARRY((\encoder|TickGenerator|stburst\(26) & !\encoder|TickGenerator|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(26),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~51\,
	combout => \encoder|TickGenerator|Add0~52_combout\,
	cout => \encoder|TickGenerator|Add0~53\);

-- Location: LCCOMB_X43_Y23_N22
\encoder|TickGenerator|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~54_combout\ = (\encoder|TickGenerator|stburst\(27) & (!\encoder|TickGenerator|Add0~53\)) # (!\encoder|TickGenerator|stburst\(27) & ((\encoder|TickGenerator|Add0~53\) # (GND)))
-- \encoder|TickGenerator|Add0~55\ = CARRY((!\encoder|TickGenerator|Add0~53\) # (!\encoder|TickGenerator|stburst\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(27),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~53\,
	combout => \encoder|TickGenerator|Add0~54_combout\,
	cout => \encoder|TickGenerator|Add0~55\);

-- Location: LCFF_X43_Y23_N23
\encoder|TickGenerator|stburst[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~54_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(27));

-- Location: LCCOMB_X43_Y23_N24
\encoder|TickGenerator|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~56_combout\ = (\encoder|TickGenerator|stburst\(28) & (\encoder|TickGenerator|Add0~55\ $ (GND))) # (!\encoder|TickGenerator|stburst\(28) & (!\encoder|TickGenerator|Add0~55\ & VCC))
-- \encoder|TickGenerator|Add0~57\ = CARRY((\encoder|TickGenerator|stburst\(28) & !\encoder|TickGenerator|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(28),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~55\,
	combout => \encoder|TickGenerator|Add0~56_combout\,
	cout => \encoder|TickGenerator|Add0~57\);

-- Location: LCCOMB_X43_Y23_N26
\encoder|TickGenerator|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add0~58_combout\ = (\encoder|TickGenerator|stburst\(29) & (!\encoder|TickGenerator|Add0~57\)) # (!\encoder|TickGenerator|stburst\(29) & ((\encoder|TickGenerator|Add0~57\) # (GND)))
-- \encoder|TickGenerator|Add0~59\ = CARRY((!\encoder|TickGenerator|Add0~57\) # (!\encoder|TickGenerator|stburst\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(29),
	datad => VCC,
	cin => \encoder|TickGenerator|Add0~57\,
	combout => \encoder|TickGenerator|Add0~58_combout\,
	cout => \encoder|TickGenerator|Add0~59\);

-- Location: LCFF_X43_Y23_N27
\encoder|TickGenerator|stburst[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~58_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(29));

-- Location: LCFF_X43_Y23_N29
\encoder|TickGenerator|stburst[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~60_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(30));

-- Location: LCFF_X43_Y23_N25
\encoder|TickGenerator|stburst[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~56_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(28));

-- Location: LCCOMB_X42_Y23_N20
\encoder|TickGenerator|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~0_combout\ = (!\encoder|TickGenerator|stburst\(31) & (!\encoder|TickGenerator|stburst\(30) & (!\encoder|TickGenerator|stburst\(29) & !\encoder|TickGenerator|stburst\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(31),
	datab => \encoder|TickGenerator|stburst\(30),
	datac => \encoder|TickGenerator|stburst\(29),
	datad => \encoder|TickGenerator|stburst\(28),
	combout => \encoder|TickGenerator|Equal0~0_combout\);

-- Location: LCFF_X43_Y23_N21
\encoder|TickGenerator|stburst[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|TickGenerator|Add0~52_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|stburst\(26));

-- Location: LCCOMB_X42_Y23_N18
\encoder|TickGenerator|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~1_combout\ = (!\encoder|TickGenerator|stburst\(24) & (!\encoder|TickGenerator|stburst\(26) & (!\encoder|TickGenerator|stburst\(27) & !\encoder|TickGenerator|stburst\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(24),
	datab => \encoder|TickGenerator|stburst\(26),
	datac => \encoder|TickGenerator|stburst\(27),
	datad => \encoder|TickGenerator|stburst\(25),
	combout => \encoder|TickGenerator|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y23_N0
\encoder|TickGenerator|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~4_combout\ = (\encoder|TickGenerator|Equal0~2_combout\ & (\encoder|TickGenerator|Equal0~3_combout\ & (\encoder|TickGenerator|Equal0~0_combout\ & \encoder|TickGenerator|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal0~2_combout\,
	datab => \encoder|TickGenerator|Equal0~3_combout\,
	datac => \encoder|TickGenerator|Equal0~0_combout\,
	datad => \encoder|TickGenerator|Equal0~1_combout\,
	combout => \encoder|TickGenerator|Equal0~4_combout\);

-- Location: LCCOMB_X42_Y24_N26
\encoder|TickGenerator|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~10_combout\ = (\encoder|TickGenerator|Equal0~9_combout\ & (\encoder|TickGenerator|Equal0~5_combout\ & (\encoder|TickGenerator|Equal0~6_combout\ & \encoder|TickGenerator|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal0~9_combout\,
	datab => \encoder|TickGenerator|Equal0~5_combout\,
	datac => \encoder|TickGenerator|Equal0~6_combout\,
	datad => \encoder|TickGenerator|Equal0~4_combout\,
	combout => \encoder|TickGenerator|Equal0~10_combout\);

-- Location: LCFF_X43_Y24_N5
\encoder|TickGenerator|tick_burst\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \encoder|TickGenerator|Equal0~10_combout\,
	aclr => \encoder|MAE_emission|clear~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|TickGenerator|tick_burst~regout\);

-- Location: LCFF_X41_Y24_N3
\encoder|BurstGenerator|state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|BurstGenerator|state[0]~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \encoder|TickGenerator|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|BurstGenerator|state\(0));

-- Location: LCCOMB_X41_Y24_N0
\encoder|BurstGenerator|state~0\ : cycloneii_lcell_comb
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

-- Location: LCFF_X41_Y24_N1
\encoder|BurstGenerator|state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|BurstGenerator|state~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \encoder|TickGenerator|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|BurstGenerator|state\(1));

-- Location: LCCOMB_X42_Y24_N8
\encoder|BurstGenerator|Out_burst~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|BurstGenerator|Out_burst~0_combout\ = (!\rst~combout\ & (\encoder|BurstGenerator|state\(1) & \encoder|TickGenerator|tick_burst~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \encoder|BurstGenerator|state\(1),
	datad => \encoder|TickGenerator|tick_burst~regout\,
	combout => \encoder|BurstGenerator|Out_burst~0_combout\);

-- Location: LCCOMB_X42_Y26_N8
\encoder|BurstGenerator|Out_burst~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|BurstGenerator|Out_burst~1_combout\ = (\encoder|BurstGenerator|Out_burst~0_combout\ & (!\encoder|BurstGenerator|state\(0))) # (!\encoder|BurstGenerator|Out_burst~0_combout\ & ((\encoder|BurstGenerator|Out_burst~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|BurstGenerator|state\(0),
	datac => \encoder|BurstGenerator|Out_burst~regout\,
	datad => \encoder|BurstGenerator|Out_burst~0_combout\,
	combout => \encoder|BurstGenerator|Out_burst~1_combout\);

-- Location: LCFF_X42_Y26_N9
\encoder|BurstGenerator|Out_burst\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \encoder|BurstGenerator|Out_burst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \encoder|BurstGenerator|Out_burst~regout\);

-- Location: LCCOMB_X43_Y26_N6
\encoder|Tx~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \encoder|Tx~0_combout\ = (\encoder|MAE_emission|enable~regout\ & (\encoder|BurstGenerator|Out_burst~regout\ & (\encoder|ManchesterGenerator|manch~regout\ $ (\encoder|MAE_emission|out_trame~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|enable~regout\,
	datab => \encoder|ManchesterGenerator|manch~regout\,
	datac => \encoder|MAE_emission|out_trame~regout\,
	datad => \encoder|BurstGenerator|Out_burst~regout\,
	combout => \encoder|Tx~0_combout\);

-- Location: LCCOMB_X24_Y23_N0
\decoder|deburst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~0_combout\ = \decoder|deburst|cmpt_stop\(0) $ (VCC)
-- \decoder|deburst|Add0~1\ = CARRY(\decoder|deburst|cmpt_stop\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(0),
	datad => VCC,
	combout => \decoder|deburst|Add0~0_combout\,
	cout => \decoder|deburst|Add0~1\);

-- Location: LCCOMB_X22_Y23_N12
\decoder|deburst|Add0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~95_combout\ = (\decoder|deburst|Add0~0_combout\ & !\encoder|Tx~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|deburst|Add0~0_combout\,
	datad => \encoder|Tx~0_combout\,
	combout => \decoder|deburst|Add0~95_combout\);

-- Location: LCCOMB_X28_Y22_N0
\decoder|tick_gen|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~0_combout\ = \decoder|tick_gen|stburst\(0) $ (GND)
-- \decoder|tick_gen|Add0~1\ = CARRY(!\decoder|tick_gen|stburst\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(0),
	datad => VCC,
	combout => \decoder|tick_gen|Add0~0_combout\,
	cout => \decoder|tick_gen|Add0~1\);

-- Location: LCCOMB_X27_Y22_N28
\decoder|tick_gen|stburst~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stburst~5_combout\ = (!\decoder|tick_gen|Equal0~10_combout\ & !\decoder|tick_gen|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|Equal0~10_combout\,
	datac => \decoder|tick_gen|Add0~0_combout\,
	combout => \decoder|tick_gen|stburst~5_combout\);

-- Location: LCFF_X27_Y22_N29
\decoder|tick_gen|stburst[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|stburst~5_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(0));

-- Location: LCCOMB_X28_Y22_N4
\decoder|tick_gen|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~4_combout\ = (\decoder|tick_gen|stburst\(2) & (\decoder|tick_gen|Add0~3\ $ (GND))) # (!\decoder|tick_gen|stburst\(2) & (!\decoder|tick_gen|Add0~3\ & VCC))
-- \decoder|tick_gen|Add0~5\ = CARRY((\decoder|tick_gen|stburst\(2) & !\decoder|tick_gen|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(2),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~3\,
	combout => \decoder|tick_gen|Add0~4_combout\,
	cout => \decoder|tick_gen|Add0~5\);

-- Location: LCCOMB_X28_Y22_N6
\decoder|tick_gen|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~6_combout\ = (\decoder|tick_gen|stburst\(3) & ((\decoder|tick_gen|Add0~5\) # (GND))) # (!\decoder|tick_gen|stburst\(3) & (!\decoder|tick_gen|Add0~5\))
-- \decoder|tick_gen|Add0~7\ = CARRY((\decoder|tick_gen|stburst\(3)) # (!\decoder|tick_gen|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(3),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~5\,
	combout => \decoder|tick_gen|Add0~6_combout\,
	cout => \decoder|tick_gen|Add0~7\);

-- Location: LCCOMB_X27_Y22_N24
\decoder|tick_gen|stburst~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stburst~3_combout\ = (\decoder|tick_gen|Equal0~10_combout\) # (!\decoder|tick_gen|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Equal0~10_combout\,
	datad => \decoder|tick_gen|Add0~6_combout\,
	combout => \decoder|tick_gen|stburst~3_combout\);

-- Location: LCFF_X27_Y22_N25
\decoder|tick_gen|stburst[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|stburst~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(3));

-- Location: LCCOMB_X28_Y22_N10
\decoder|tick_gen|Add0~10\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X28_Y22_N12
\decoder|tick_gen|Add0~12\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X27_Y22_N22
\decoder|tick_gen|stburst~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stburst~1_combout\ = (\decoder|tick_gen|Equal0~10_combout\) # (!\decoder|tick_gen|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|Equal0~10_combout\,
	datac => \decoder|tick_gen|Add0~12_combout\,
	combout => \decoder|tick_gen|stburst~1_combout\);

-- Location: LCFF_X27_Y22_N23
\decoder|tick_gen|stburst[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|stburst~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(6));

-- Location: LCCOMB_X28_Y22_N14
\decoder|tick_gen|Add0~14\ : cycloneii_lcell_comb
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

-- Location: LCFF_X28_Y22_N15
\decoder|tick_gen|stburst[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~14_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(7));

-- Location: LCFF_X28_Y22_N11
\decoder|tick_gen|stburst[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~10_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(5));

-- Location: LCCOMB_X27_Y22_N2
\decoder|tick_gen|Equal0~8\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X27_Y22_N30
\decoder|tick_gen|stburst~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stburst~4_combout\ = (!\decoder|tick_gen|Equal0~10_combout\ & \decoder|tick_gen|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Equal0~10_combout\,
	datad => \decoder|tick_gen|Add0~4_combout\,
	combout => \decoder|tick_gen|stburst~4_combout\);

-- Location: LCFF_X27_Y22_N31
\decoder|tick_gen|stburst[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|stburst~4_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(2));

-- Location: LCCOMB_X27_Y22_N18
\decoder|tick_gen|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~9_combout\ = (!\decoder|tick_gen|stburst\(1) & (!\decoder|tick_gen|stburst\(2) & (!\decoder|tick_gen|stburst\(3) & !\decoder|tick_gen|stburst\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(1),
	datab => \decoder|tick_gen|stburst\(2),
	datac => \decoder|tick_gen|stburst\(3),
	datad => \decoder|tick_gen|stburst\(0),
	combout => \decoder|tick_gen|Equal0~9_combout\);

-- Location: LCCOMB_X28_Y22_N16
\decoder|tick_gen|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~16_combout\ = (\decoder|tick_gen|stburst\(8) & (!\decoder|tick_gen|Add0~15\ & VCC)) # (!\decoder|tick_gen|stburst\(8) & (\decoder|tick_gen|Add0~15\ $ (GND)))
-- \decoder|tick_gen|Add0~17\ = CARRY((!\decoder|tick_gen|stburst\(8) & !\decoder|tick_gen|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(8),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~15\,
	combout => \decoder|tick_gen|Add0~16_combout\,
	cout => \decoder|tick_gen|Add0~17\);

-- Location: LCCOMB_X27_Y22_N16
\decoder|tick_gen|stburst~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stburst~0_combout\ = (\decoder|tick_gen|Equal0~10_combout\) # (!\decoder|tick_gen|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|Equal0~10_combout\,
	datac => \decoder|tick_gen|Add0~16_combout\,
	combout => \decoder|tick_gen|stburst~0_combout\);

-- Location: LCFF_X27_Y22_N17
\decoder|tick_gen|stburst[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|stburst~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(8));

-- Location: LCCOMB_X28_Y22_N18
\decoder|tick_gen|Add0~18\ : cycloneii_lcell_comb
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

-- Location: LCFF_X28_Y22_N19
\decoder|tick_gen|stburst[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~18_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(9));

-- Location: LCCOMB_X28_Y22_N22
\decoder|tick_gen|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~22_combout\ = (\decoder|tick_gen|stburst\(11) & (!\decoder|tick_gen|Add0~21\)) # (!\decoder|tick_gen|stburst\(11) & ((\decoder|tick_gen|Add0~21\) # (GND)))
-- \decoder|tick_gen|Add0~23\ = CARRY((!\decoder|tick_gen|Add0~21\) # (!\decoder|tick_gen|stburst\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(11),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~21\,
	combout => \decoder|tick_gen|Add0~22_combout\,
	cout => \decoder|tick_gen|Add0~23\);

-- Location: LCFF_X28_Y22_N23
\decoder|tick_gen|stburst[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~22_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(11));

-- Location: LCCOMB_X28_Y22_N26
\decoder|tick_gen|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~26_combout\ = (\decoder|tick_gen|stburst\(13) & (!\decoder|tick_gen|Add0~25\)) # (!\decoder|tick_gen|stburst\(13) & ((\decoder|tick_gen|Add0~25\) # (GND)))
-- \decoder|tick_gen|Add0~27\ = CARRY((!\decoder|tick_gen|Add0~25\) # (!\decoder|tick_gen|stburst\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(13),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~25\,
	combout => \decoder|tick_gen|Add0~26_combout\,
	cout => \decoder|tick_gen|Add0~27\);

-- Location: LCFF_X28_Y22_N27
\decoder|tick_gen|stburst[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~26_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(13));

-- Location: LCCOMB_X28_Y22_N28
\decoder|tick_gen|Add0~28\ : cycloneii_lcell_comb
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

-- Location: LCFF_X28_Y22_N29
\decoder|tick_gen|stburst[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~28_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(14));

-- Location: LCCOMB_X28_Y22_N30
\decoder|tick_gen|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~30_combout\ = (\decoder|tick_gen|stburst\(15) & (!\decoder|tick_gen|Add0~29\)) # (!\decoder|tick_gen|stburst\(15) & ((\decoder|tick_gen|Add0~29\) # (GND)))
-- \decoder|tick_gen|Add0~31\ = CARRY((!\decoder|tick_gen|Add0~29\) # (!\decoder|tick_gen|stburst\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(15),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~29\,
	combout => \decoder|tick_gen|Add0~30_combout\,
	cout => \decoder|tick_gen|Add0~31\);

-- Location: LCFF_X28_Y22_N31
\decoder|tick_gen|stburst[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~30_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(15));

-- Location: LCCOMB_X28_Y21_N0
\decoder|tick_gen|Add0~32\ : cycloneii_lcell_comb
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

-- Location: LCFF_X28_Y21_N1
\decoder|tick_gen|stburst[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~32_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(16));

-- Location: LCCOMB_X28_Y21_N2
\decoder|tick_gen|Add0~34\ : cycloneii_lcell_comb
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

-- Location: LCFF_X28_Y21_N3
\decoder|tick_gen|stburst[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~34_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(17));

-- Location: LCCOMB_X28_Y21_N4
\decoder|tick_gen|Add0~36\ : cycloneii_lcell_comb
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

-- Location: LCFF_X28_Y21_N5
\decoder|tick_gen|stburst[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~36_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(18));

-- Location: LCCOMB_X28_Y21_N6
\decoder|tick_gen|Add0~38\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X28_Y21_N8
\decoder|tick_gen|Add0~40\ : cycloneii_lcell_comb
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

-- Location: LCFF_X28_Y21_N9
\decoder|tick_gen|stburst[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~40_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(20));

-- Location: LCCOMB_X28_Y21_N10
\decoder|tick_gen|Add0~42\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X28_Y21_N12
\decoder|tick_gen|Add0~44\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X28_Y21_N14
\decoder|tick_gen|Add0~46\ : cycloneii_lcell_comb
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

-- Location: LCFF_X28_Y21_N15
\decoder|tick_gen|stburst[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~46_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(23));

-- Location: LCCOMB_X28_Y21_N16
\decoder|tick_gen|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~48_combout\ = (\decoder|tick_gen|stburst\(24) & (\decoder|tick_gen|Add0~47\ $ (GND))) # (!\decoder|tick_gen|stburst\(24) & (!\decoder|tick_gen|Add0~47\ & VCC))
-- \decoder|tick_gen|Add0~49\ = CARRY((\decoder|tick_gen|stburst\(24) & !\decoder|tick_gen|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(24),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~47\,
	combout => \decoder|tick_gen|Add0~48_combout\,
	cout => \decoder|tick_gen|Add0~49\);

-- Location: LCCOMB_X28_Y21_N18
\decoder|tick_gen|Add0~50\ : cycloneii_lcell_comb
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

-- Location: LCFF_X28_Y21_N19
\decoder|tick_gen|stburst[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~50_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(25));

-- Location: LCFF_X28_Y21_N21
\decoder|tick_gen|stburst[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~52_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(26));

-- Location: LCFF_X28_Y21_N17
\decoder|tick_gen|stburst[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~48_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(24));

-- Location: LCCOMB_X27_Y21_N2
\decoder|tick_gen|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~1_combout\ = (!\decoder|tick_gen|stburst\(27) & (!\decoder|tick_gen|stburst\(26) & (!\decoder|tick_gen|stburst\(24) & !\decoder|tick_gen|stburst\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(27),
	datab => \decoder|tick_gen|stburst\(26),
	datac => \decoder|tick_gen|stburst\(24),
	datad => \decoder|tick_gen|stburst\(25),
	combout => \decoder|tick_gen|Equal0~1_combout\);

-- Location: LCFF_X28_Y21_N13
\decoder|tick_gen|stburst[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~44_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(22));

-- Location: LCFF_X28_Y21_N11
\decoder|tick_gen|stburst[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~42_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(21));

-- Location: LCCOMB_X27_Y21_N16
\decoder|tick_gen|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~2_combout\ = (!\decoder|tick_gen|stburst\(23) & (!\decoder|tick_gen|stburst\(22) & (!\decoder|tick_gen|stburst\(20) & !\decoder|tick_gen|stburst\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(23),
	datab => \decoder|tick_gen|stburst\(22),
	datac => \decoder|tick_gen|stburst\(20),
	datad => \decoder|tick_gen|stburst\(21),
	combout => \decoder|tick_gen|Equal0~2_combout\);

-- Location: LCFF_X28_Y21_N7
\decoder|tick_gen|stburst[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add0~38_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stburst\(19));

-- Location: LCCOMB_X27_Y21_N18
\decoder|tick_gen|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~3_combout\ = (!\decoder|tick_gen|stburst\(17) & (!\decoder|tick_gen|stburst\(19) & (!\decoder|tick_gen|stburst\(16) & !\decoder|tick_gen|stburst\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(17),
	datab => \decoder|tick_gen|stburst\(19),
	datac => \decoder|tick_gen|stburst\(16),
	datad => \decoder|tick_gen|stburst\(18),
	combout => \decoder|tick_gen|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y21_N0
\decoder|tick_gen|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~4_combout\ = (\decoder|tick_gen|Equal0~0_combout\ & (\decoder|tick_gen|Equal0~1_combout\ & (\decoder|tick_gen|Equal0~2_combout\ & \decoder|tick_gen|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal0~0_combout\,
	datab => \decoder|tick_gen|Equal0~1_combout\,
	datac => \decoder|tick_gen|Equal0~2_combout\,
	datad => \decoder|tick_gen|Equal0~3_combout\,
	combout => \decoder|tick_gen|Equal0~4_combout\);

-- Location: LCCOMB_X27_Y22_N4
\decoder|tick_gen|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~10_combout\ = (\decoder|tick_gen|Equal0~7_combout\ & (\decoder|tick_gen|Equal0~8_combout\ & (\decoder|tick_gen|Equal0~9_combout\ & \decoder|tick_gen|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal0~7_combout\,
	datab => \decoder|tick_gen|Equal0~8_combout\,
	datac => \decoder|tick_gen|Equal0~9_combout\,
	datad => \decoder|tick_gen|Equal0~4_combout\,
	combout => \decoder|tick_gen|Equal0~10_combout\);

-- Location: LCFF_X27_Y22_N1
\decoder|tick_gen|tick_burst\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \decoder|tick_gen|Equal0~10_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|tick_burst~regout\);

-- Location: LCCOMB_X24_Y23_N16
\decoder|deburst|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~16_combout\ = (\decoder|deburst|cmpt_stop\(8) & ((GND) # (!\decoder|deburst|Add0~15\))) # (!\decoder|deburst|cmpt_stop\(8) & (\decoder|deburst|Add0~15\ $ (GND)))
-- \decoder|deburst|Add0~17\ = CARRY((\decoder|deburst|cmpt_stop\(8)) # (!\decoder|deburst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(8),
	datad => VCC,
	cin => \decoder|deburst|Add0~15\,
	combout => \decoder|deburst|Add0~16_combout\,
	cout => \decoder|deburst|Add0~17\);

-- Location: LCCOMB_X23_Y23_N0
\decoder|deburst|Add0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~87_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|Tx~0_combout\,
	datac => \decoder|deburst|Add0~16_combout\,
	combout => \decoder|deburst|Add0~87_combout\);

-- Location: LCFF_X23_Y23_N1
\decoder|deburst|cmpt_stop[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~87_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(8));

-- Location: LCCOMB_X24_Y23_N18
\decoder|deburst|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~18_combout\ = (\decoder|deburst|cmpt_stop\(9) & (\decoder|deburst|Add0~17\ & VCC)) # (!\decoder|deburst|cmpt_stop\(9) & (!\decoder|deburst|Add0~17\))
-- \decoder|deburst|Add0~19\ = CARRY((!\decoder|deburst|cmpt_stop\(9) & !\decoder|deburst|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(9),
	datad => VCC,
	cin => \decoder|deburst|Add0~17\,
	combout => \decoder|deburst|Add0~18_combout\,
	cout => \decoder|deburst|Add0~19\);

-- Location: LCCOMB_X23_Y23_N2
\decoder|deburst|Add0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~86_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~18_combout\,
	combout => \decoder|deburst|Add0~86_combout\);

-- Location: LCFF_X23_Y23_N3
\decoder|deburst|cmpt_stop[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~86_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(9));

-- Location: LCCOMB_X22_Y23_N18
\decoder|deburst|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan0~6_combout\ = (!\decoder|deburst|cmpt_stop\(7) & (!\decoder|deburst|cmpt_stop\(10) & (!\decoder|deburst|cmpt_stop\(8) & !\decoder|deburst|cmpt_stop\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(7),
	datab => \decoder|deburst|cmpt_stop\(10),
	datac => \decoder|deburst|cmpt_stop\(8),
	datad => \decoder|deburst|cmpt_stop\(9),
	combout => \decoder|deburst|LessThan0~6_combout\);

-- Location: LCCOMB_X24_Y22_N16
\decoder|deburst|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~48_combout\ = (\decoder|deburst|cmpt_stop\(24) & ((GND) # (!\decoder|deburst|Add0~47\))) # (!\decoder|deburst|cmpt_stop\(24) & (\decoder|deburst|Add0~47\ $ (GND)))
-- \decoder|deburst|Add0~49\ = CARRY((\decoder|deburst|cmpt_stop\(24)) # (!\decoder|deburst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(24),
	datad => VCC,
	cin => \decoder|deburst|Add0~47\,
	combout => \decoder|deburst|Add0~48_combout\,
	cout => \decoder|deburst|Add0~49\);

-- Location: LCCOMB_X23_Y23_N8
\decoder|deburst|Add0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~71_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|Tx~0_combout\,
	datac => \decoder|deburst|Add0~48_combout\,
	combout => \decoder|deburst|Add0~71_combout\);

-- Location: LCFF_X23_Y23_N9
\decoder|deburst|cmpt_stop[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~71_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(24));

-- Location: LCCOMB_X24_Y22_N20
\decoder|deburst|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~52_combout\ = (\decoder|deburst|cmpt_stop\(26) & ((GND) # (!\decoder|deburst|Add0~51\))) # (!\decoder|deburst|cmpt_stop\(26) & (\decoder|deburst|Add0~51\ $ (GND)))
-- \decoder|deburst|Add0~53\ = CARRY((\decoder|deburst|cmpt_stop\(26)) # (!\decoder|deburst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(26),
	datad => VCC,
	cin => \decoder|deburst|Add0~51\,
	combout => \decoder|deburst|Add0~52_combout\,
	cout => \decoder|deburst|Add0~53\);

-- Location: LCCOMB_X23_Y23_N20
\decoder|deburst|Add0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~69_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|Tx~0_combout\,
	datac => \decoder|deburst|Add0~52_combout\,
	combout => \decoder|deburst|Add0~69_combout\);

-- Location: LCFF_X23_Y23_N21
\decoder|deburst|cmpt_stop[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~69_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(26));

-- Location: LCCOMB_X22_Y23_N4
\decoder|deburst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan0~1_combout\ = (!\decoder|deburst|cmpt_stop\(25) & (!\decoder|deburst|cmpt_stop\(23) & (!\decoder|deburst|cmpt_stop\(24) & !\decoder|deburst|cmpt_stop\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(25),
	datab => \decoder|deburst|cmpt_stop\(23),
	datac => \decoder|deburst|cmpt_stop\(24),
	datad => \decoder|deburst|cmpt_stop\(26),
	combout => \decoder|deburst|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y22_N28
\decoder|deburst|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~60_combout\ = (\decoder|deburst|cmpt_stop\(30) & ((GND) # (!\decoder|deburst|Add0~59\))) # (!\decoder|deburst|cmpt_stop\(30) & (\decoder|deburst|Add0~59\ $ (GND)))
-- \decoder|deburst|Add0~61\ = CARRY((\decoder|deburst|cmpt_stop\(30)) # (!\decoder|deburst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(30),
	datad => VCC,
	cin => \decoder|deburst|Add0~59\,
	combout => \decoder|deburst|Add0~60_combout\,
	cout => \decoder|deburst|Add0~61\);

-- Location: LCCOMB_X23_Y22_N2
\decoder|deburst|Add0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~65_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~60_combout\,
	combout => \decoder|deburst|Add0~65_combout\);

-- Location: LCFF_X23_Y22_N3
\decoder|deburst|cmpt_stop[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~65_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(30));

-- Location: LCCOMB_X24_Y22_N22
\decoder|deburst|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~54_combout\ = (\decoder|deburst|cmpt_stop\(27) & (\decoder|deburst|Add0~53\ & VCC)) # (!\decoder|deburst|cmpt_stop\(27) & (!\decoder|deburst|Add0~53\))
-- \decoder|deburst|Add0~55\ = CARRY((!\decoder|deburst|cmpt_stop\(27) & !\decoder|deburst|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(27),
	datad => VCC,
	cin => \decoder|deburst|Add0~53\,
	combout => \decoder|deburst|Add0~54_combout\,
	cout => \decoder|deburst|Add0~55\);

-- Location: LCCOMB_X23_Y22_N20
\decoder|deburst|Add0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~68_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~54_combout\,
	combout => \decoder|deburst|Add0~68_combout\);

-- Location: LCFF_X23_Y22_N21
\decoder|deburst|cmpt_stop[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~68_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(27));

-- Location: LCCOMB_X23_Y22_N10
\decoder|deburst|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan0~0_combout\ = (!\decoder|deburst|cmpt_stop\(29) & (!\decoder|deburst|cmpt_stop\(30) & (!\decoder|deburst|cmpt_stop\(27) & !\decoder|deburst|cmpt_stop\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(29),
	datab => \decoder|deburst|cmpt_stop\(30),
	datac => \decoder|deburst|cmpt_stop\(27),
	datad => \decoder|deburst|cmpt_stop\(28),
	combout => \decoder|deburst|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y22_N10
\decoder|deburst|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~42_combout\ = (\decoder|deburst|cmpt_stop\(21) & (\decoder|deburst|Add0~41\ & VCC)) # (!\decoder|deburst|cmpt_stop\(21) & (!\decoder|deburst|Add0~41\))
-- \decoder|deburst|Add0~43\ = CARRY((!\decoder|deburst|cmpt_stop\(21) & !\decoder|deburst|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(21),
	datad => VCC,
	cin => \decoder|deburst|Add0~41\,
	combout => \decoder|deburst|Add0~42_combout\,
	cout => \decoder|deburst|Add0~43\);

-- Location: LCCOMB_X23_Y23_N26
\decoder|deburst|Add0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~74_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~42_combout\,
	combout => \decoder|deburst|Add0~74_combout\);

-- Location: LCFF_X23_Y23_N27
\decoder|deburst|cmpt_stop[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~74_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(21));

-- Location: LCCOMB_X22_Y23_N22
\decoder|deburst|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan0~2_combout\ = (!\decoder|deburst|cmpt_stop\(22) & (!\decoder|deburst|cmpt_stop\(19) & (!\decoder|deburst|cmpt_stop\(21) & !\decoder|deburst|cmpt_stop\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(22),
	datab => \decoder|deburst|cmpt_stop\(19),
	datac => \decoder|deburst|cmpt_stop\(21),
	datad => \decoder|deburst|cmpt_stop\(20),
	combout => \decoder|deburst|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y23_N14
\decoder|deburst|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan0~4_combout\ = (\decoder|deburst|LessThan0~3_combout\ & (\decoder|deburst|LessThan0~1_combout\ & (\decoder|deburst|LessThan0~0_combout\ & \decoder|deburst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|LessThan0~3_combout\,
	datab => \decoder|deburst|LessThan0~1_combout\,
	datac => \decoder|deburst|LessThan0~0_combout\,
	datad => \decoder|deburst|LessThan0~2_combout\,
	combout => \decoder|deburst|LessThan0~4_combout\);

-- Location: LCCOMB_X24_Y23_N2
\decoder|deburst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~2_combout\ = (\decoder|deburst|cmpt_stop\(1) & (\decoder|deburst|Add0~1\ & VCC)) # (!\decoder|deburst|cmpt_stop\(1) & (!\decoder|deburst|Add0~1\))
-- \decoder|deburst|Add0~3\ = CARRY((!\decoder|deburst|cmpt_stop\(1) & !\decoder|deburst|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(1),
	datad => VCC,
	cin => \decoder|deburst|Add0~1\,
	combout => \decoder|deburst|Add0~2_combout\,
	cout => \decoder|deburst|Add0~3\);

-- Location: LCCOMB_X23_Y23_N10
\decoder|deburst|Add0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~94_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|Tx~0_combout\,
	datac => \decoder|deburst|Add0~2_combout\,
	combout => \decoder|deburst|Add0~94_combout\);

-- Location: LCFF_X23_Y23_N11
\decoder|deburst|cmpt_stop[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~94_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(1));

-- Location: LCCOMB_X24_Y23_N8
\decoder|deburst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~8_combout\ = (\decoder|deburst|cmpt_stop\(4) & ((GND) # (!\decoder|deburst|Add0~7\))) # (!\decoder|deburst|cmpt_stop\(4) & (\decoder|deburst|Add0~7\ $ (GND)))
-- \decoder|deburst|Add0~9\ = CARRY((\decoder|deburst|cmpt_stop\(4)) # (!\decoder|deburst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(4),
	datad => VCC,
	cin => \decoder|deburst|Add0~7\,
	combout => \decoder|deburst|Add0~8_combout\,
	cout => \decoder|deburst|Add0~9\);

-- Location: LCCOMB_X23_Y22_N0
\decoder|deburst|Add0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~91_combout\ = (\encoder|Tx~0_combout\) # (\decoder|deburst|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~8_combout\,
	combout => \decoder|deburst|Add0~91_combout\);

-- Location: LCFF_X23_Y22_N1
\decoder|deburst|cmpt_stop[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~91_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(4));

-- Location: LCCOMB_X23_Y22_N4
\decoder|deburst|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan0~7_combout\ = (!\decoder|deburst|cmpt_stop\(5) & (!\decoder|deburst|cmpt_stop\(4) & (!\decoder|deburst|cmpt_stop\(6) & !\decoder|deburst|cmpt_stop\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(5),
	datab => \decoder|deburst|cmpt_stop\(4),
	datac => \decoder|deburst|cmpt_stop\(6),
	datad => \decoder|deburst|cmpt_stop\(3),
	combout => \decoder|deburst|LessThan0~7_combout\);

-- Location: LCCOMB_X22_Y23_N30
\decoder|deburst|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan0~8_combout\ = (!\decoder|deburst|cmpt_stop\(0) & (!\decoder|deburst|cmpt_stop\(1) & (\decoder|deburst|LessThan0~7_combout\ & !\decoder|deburst|cmpt_stop\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(0),
	datab => \decoder|deburst|cmpt_stop\(1),
	datac => \decoder|deburst|LessThan0~7_combout\,
	datad => \decoder|deburst|cmpt_stop\(2),
	combout => \decoder|deburst|LessThan0~8_combout\);

-- Location: LCCOMB_X22_Y23_N28
\decoder|deburst|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan0~9_combout\ = (\decoder|deburst|LessThan0~5_combout\ & (\decoder|deburst|LessThan0~6_combout\ & (\decoder|deburst|LessThan0~4_combout\ & \decoder|deburst|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|LessThan0~5_combout\,
	datab => \decoder|deburst|LessThan0~6_combout\,
	datac => \decoder|deburst|LessThan0~4_combout\,
	datad => \decoder|deburst|LessThan0~8_combout\,
	combout => \decoder|deburst|LessThan0~9_combout\);

-- Location: LCCOMB_X22_Y23_N2
\decoder|deburst|cmpt_stop[31]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|cmpt_stop[31]~0_combout\ = (\decoder|tick_gen|tick_burst~regout\ & ((\encoder|Tx~0_combout\) # ((!\decoder|deburst|cmpt_stop\(31) & !\decoder|deburst|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|Tx~0_combout\,
	datab => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|tick_gen|tick_burst~regout\,
	datad => \decoder|deburst|LessThan0~9_combout\,
	combout => \decoder|deburst|cmpt_stop[31]~0_combout\);

-- Location: LCFF_X22_Y23_N13
\decoder|deburst|cmpt_stop[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~95_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(0));

-- Location: LCCOMB_X24_Y23_N4
\decoder|deburst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~4_combout\ = (\decoder|deburst|cmpt_stop\(2) & ((GND) # (!\decoder|deburst|Add0~3\))) # (!\decoder|deburst|cmpt_stop\(2) & (\decoder|deburst|Add0~3\ $ (GND)))
-- \decoder|deburst|Add0~5\ = CARRY((\decoder|deburst|cmpt_stop\(2)) # (!\decoder|deburst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(2),
	datad => VCC,
	cin => \decoder|deburst|Add0~3\,
	combout => \decoder|deburst|Add0~4_combout\,
	cout => \decoder|deburst|Add0~5\);

-- Location: LCCOMB_X23_Y23_N28
\decoder|deburst|Add0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~93_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~4_combout\,
	combout => \decoder|deburst|Add0~93_combout\);

-- Location: LCFF_X23_Y23_N29
\decoder|deburst|cmpt_stop[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~93_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(2));

-- Location: LCCOMB_X24_Y23_N6
\decoder|deburst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~6_combout\ = (\decoder|deburst|cmpt_stop\(3) & (\decoder|deburst|Add0~5\ & VCC)) # (!\decoder|deburst|cmpt_stop\(3) & (!\decoder|deburst|Add0~5\))
-- \decoder|deburst|Add0~7\ = CARRY((!\decoder|deburst|cmpt_stop\(3) & !\decoder|deburst|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(3),
	datad => VCC,
	cin => \decoder|deburst|Add0~5\,
	combout => \decoder|deburst|Add0~6_combout\,
	cout => \decoder|deburst|Add0~7\);

-- Location: LCCOMB_X23_Y22_N22
\decoder|deburst|Add0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~92_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~6_combout\,
	combout => \decoder|deburst|Add0~92_combout\);

-- Location: LCFF_X23_Y22_N23
\decoder|deburst|cmpt_stop[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~92_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(3));

-- Location: LCCOMB_X24_Y23_N10
\decoder|deburst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~10_combout\ = (\decoder|deburst|cmpt_stop\(5) & (\decoder|deburst|Add0~9\ & VCC)) # (!\decoder|deburst|cmpt_stop\(5) & (!\decoder|deburst|Add0~9\))
-- \decoder|deburst|Add0~11\ = CARRY((!\decoder|deburst|cmpt_stop\(5) & !\decoder|deburst|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(5),
	datad => VCC,
	cin => \decoder|deburst|Add0~9\,
	combout => \decoder|deburst|Add0~10_combout\,
	cout => \decoder|deburst|Add0~11\);

-- Location: LCCOMB_X23_Y22_N6
\decoder|deburst|Add0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~90_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|Tx~0_combout\,
	datac => \decoder|deburst|Add0~10_combout\,
	combout => \decoder|deburst|Add0~90_combout\);

-- Location: LCFF_X23_Y22_N7
\decoder|deburst|cmpt_stop[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~90_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(5));

-- Location: LCCOMB_X24_Y23_N12
\decoder|deburst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~12_combout\ = (\decoder|deburst|cmpt_stop\(6) & ((GND) # (!\decoder|deburst|Add0~11\))) # (!\decoder|deburst|cmpt_stop\(6) & (\decoder|deburst|Add0~11\ $ (GND)))
-- \decoder|deburst|Add0~13\ = CARRY((\decoder|deburst|cmpt_stop\(6)) # (!\decoder|deburst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(6),
	datad => VCC,
	cin => \decoder|deburst|Add0~11\,
	combout => \decoder|deburst|Add0~12_combout\,
	cout => \decoder|deburst|Add0~13\);

-- Location: LCCOMB_X23_Y22_N24
\decoder|deburst|Add0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~89_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~12_combout\,
	combout => \decoder|deburst|Add0~89_combout\);

-- Location: LCFF_X23_Y22_N25
\decoder|deburst|cmpt_stop[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~89_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(6));

-- Location: LCCOMB_X24_Y23_N20
\decoder|deburst|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~20_combout\ = (\decoder|deburst|cmpt_stop\(10) & ((GND) # (!\decoder|deburst|Add0~19\))) # (!\decoder|deburst|cmpt_stop\(10) & (\decoder|deburst|Add0~19\ $ (GND)))
-- \decoder|deburst|Add0~21\ = CARRY((\decoder|deburst|cmpt_stop\(10)) # (!\decoder|deburst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(10),
	datad => VCC,
	cin => \decoder|deburst|Add0~19\,
	combout => \decoder|deburst|Add0~20_combout\,
	cout => \decoder|deburst|Add0~21\);

-- Location: LCCOMB_X23_Y23_N24
\decoder|deburst|Add0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~85_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~20_combout\,
	combout => \decoder|deburst|Add0~85_combout\);

-- Location: LCFF_X23_Y23_N25
\decoder|deburst|cmpt_stop[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~85_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(10));

-- Location: LCCOMB_X24_Y23_N22
\decoder|deburst|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~22_combout\ = (\decoder|deburst|cmpt_stop\(11) & (\decoder|deburst|Add0~21\ & VCC)) # (!\decoder|deburst|cmpt_stop\(11) & (!\decoder|deburst|Add0~21\))
-- \decoder|deburst|Add0~23\ = CARRY((!\decoder|deburst|cmpt_stop\(11) & !\decoder|deburst|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(11),
	datad => VCC,
	cin => \decoder|deburst|Add0~21\,
	combout => \decoder|deburst|Add0~22_combout\,
	cout => \decoder|deburst|Add0~23\);

-- Location: LCCOMB_X22_Y23_N26
\decoder|deburst|Add0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~84_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~22_combout\,
	combout => \decoder|deburst|Add0~84_combout\);

-- Location: LCFF_X22_Y23_N27
\decoder|deburst|cmpt_stop[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~84_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(11));

-- Location: LCCOMB_X24_Y23_N24
\decoder|deburst|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~24_combout\ = (\decoder|deburst|cmpt_stop\(12) & ((GND) # (!\decoder|deburst|Add0~23\))) # (!\decoder|deburst|cmpt_stop\(12) & (\decoder|deburst|Add0~23\ $ (GND)))
-- \decoder|deburst|Add0~25\ = CARRY((\decoder|deburst|cmpt_stop\(12)) # (!\decoder|deburst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(12),
	datad => VCC,
	cin => \decoder|deburst|Add0~23\,
	combout => \decoder|deburst|Add0~24_combout\,
	cout => \decoder|deburst|Add0~25\);

-- Location: LCCOMB_X22_Y23_N8
\decoder|deburst|Add0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~83_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~24_combout\,
	combout => \decoder|deburst|Add0~83_combout\);

-- Location: LCFF_X22_Y23_N9
\decoder|deburst|cmpt_stop[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~83_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(12));

-- Location: LCCOMB_X24_Y23_N26
\decoder|deburst|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~26_combout\ = (\decoder|deburst|cmpt_stop\(13) & (\decoder|deburst|Add0~25\ & VCC)) # (!\decoder|deburst|cmpt_stop\(13) & (!\decoder|deburst|Add0~25\))
-- \decoder|deburst|Add0~27\ = CARRY((!\decoder|deburst|cmpt_stop\(13) & !\decoder|deburst|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(13),
	datad => VCC,
	cin => \decoder|deburst|Add0~25\,
	combout => \decoder|deburst|Add0~26_combout\,
	cout => \decoder|deburst|Add0~27\);

-- Location: LCCOMB_X22_Y23_N6
\decoder|deburst|Add0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~82_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~26_combout\,
	combout => \decoder|deburst|Add0~82_combout\);

-- Location: LCFF_X22_Y23_N7
\decoder|deburst|cmpt_stop[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~82_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(13));

-- Location: LCCOMB_X24_Y23_N28
\decoder|deburst|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~28_combout\ = (\decoder|deburst|cmpt_stop\(14) & ((GND) # (!\decoder|deburst|Add0~27\))) # (!\decoder|deburst|cmpt_stop\(14) & (\decoder|deburst|Add0~27\ $ (GND)))
-- \decoder|deburst|Add0~29\ = CARRY((\decoder|deburst|cmpt_stop\(14)) # (!\decoder|deburst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(14),
	datad => VCC,
	cin => \decoder|deburst|Add0~27\,
	combout => \decoder|deburst|Add0~28_combout\,
	cout => \decoder|deburst|Add0~29\);

-- Location: LCCOMB_X22_Y23_N0
\decoder|deburst|Add0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~81_combout\ = (\decoder|deburst|Add0~28_combout\ & !\encoder|Tx~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|deburst|Add0~28_combout\,
	datad => \encoder|Tx~0_combout\,
	combout => \decoder|deburst|Add0~81_combout\);

-- Location: LCFF_X22_Y23_N1
\decoder|deburst|cmpt_stop[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~81_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(14));

-- Location: LCCOMB_X24_Y23_N30
\decoder|deburst|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~30_combout\ = (\decoder|deburst|cmpt_stop\(15) & (\decoder|deburst|Add0~29\ & VCC)) # (!\decoder|deburst|cmpt_stop\(15) & (!\decoder|deburst|Add0~29\))
-- \decoder|deburst|Add0~31\ = CARRY((!\decoder|deburst|cmpt_stop\(15) & !\decoder|deburst|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(15),
	datad => VCC,
	cin => \decoder|deburst|Add0~29\,
	combout => \decoder|deburst|Add0~30_combout\,
	cout => \decoder|deburst|Add0~31\);

-- Location: LCCOMB_X22_Y23_N10
\decoder|deburst|Add0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~80_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~30_combout\,
	combout => \decoder|deburst|Add0~80_combout\);

-- Location: LCFF_X22_Y23_N11
\decoder|deburst|cmpt_stop[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~80_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(15));

-- Location: LCCOMB_X24_Y22_N2
\decoder|deburst|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~34_combout\ = (\decoder|deburst|cmpt_stop\(17) & (\decoder|deburst|Add0~33\ & VCC)) # (!\decoder|deburst|cmpt_stop\(17) & (!\decoder|deburst|Add0~33\))
-- \decoder|deburst|Add0~35\ = CARRY((!\decoder|deburst|cmpt_stop\(17) & !\decoder|deburst|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(17),
	datad => VCC,
	cin => \decoder|deburst|Add0~33\,
	combout => \decoder|deburst|Add0~34_combout\,
	cout => \decoder|deburst|Add0~35\);

-- Location: LCCOMB_X23_Y23_N22
\decoder|deburst|Add0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~78_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~34_combout\,
	combout => \decoder|deburst|Add0~78_combout\);

-- Location: LCFF_X23_Y23_N23
\decoder|deburst|cmpt_stop[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~78_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(17));

-- Location: LCCOMB_X24_Y22_N4
\decoder|deburst|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~36_combout\ = (\decoder|deburst|cmpt_stop\(18) & ((GND) # (!\decoder|deburst|Add0~35\))) # (!\decoder|deburst|cmpt_stop\(18) & (\decoder|deburst|Add0~35\ $ (GND)))
-- \decoder|deburst|Add0~37\ = CARRY((\decoder|deburst|cmpt_stop\(18)) # (!\decoder|deburst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(18),
	datad => VCC,
	cin => \decoder|deburst|Add0~35\,
	combout => \decoder|deburst|Add0~36_combout\,
	cout => \decoder|deburst|Add0~37\);

-- Location: LCCOMB_X23_Y23_N16
\decoder|deburst|Add0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~77_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~36_combout\,
	combout => \decoder|deburst|Add0~77_combout\);

-- Location: LCFF_X23_Y23_N17
\decoder|deburst|cmpt_stop[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~77_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(18));

-- Location: LCCOMB_X24_Y22_N6
\decoder|deburst|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~38_combout\ = (\decoder|deburst|cmpt_stop\(19) & (\decoder|deburst|Add0~37\ & VCC)) # (!\decoder|deburst|cmpt_stop\(19) & (!\decoder|deburst|Add0~37\))
-- \decoder|deburst|Add0~39\ = CARRY((!\decoder|deburst|cmpt_stop\(19) & !\decoder|deburst|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(19),
	datad => VCC,
	cin => \decoder|deburst|Add0~37\,
	combout => \decoder|deburst|Add0~38_combout\,
	cout => \decoder|deburst|Add0~39\);

-- Location: LCCOMB_X23_Y23_N18
\decoder|deburst|Add0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~76_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~38_combout\,
	combout => \decoder|deburst|Add0~76_combout\);

-- Location: LCFF_X23_Y23_N19
\decoder|deburst|cmpt_stop[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~76_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(19));

-- Location: LCCOMB_X24_Y22_N8
\decoder|deburst|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~40_combout\ = (\decoder|deburst|cmpt_stop\(20) & ((GND) # (!\decoder|deburst|Add0~39\))) # (!\decoder|deburst|cmpt_stop\(20) & (\decoder|deburst|Add0~39\ $ (GND)))
-- \decoder|deburst|Add0~41\ = CARRY((\decoder|deburst|cmpt_stop\(20)) # (!\decoder|deburst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(20),
	datad => VCC,
	cin => \decoder|deburst|Add0~39\,
	combout => \decoder|deburst|Add0~40_combout\,
	cout => \decoder|deburst|Add0~41\);

-- Location: LCCOMB_X23_Y23_N12
\decoder|deburst|Add0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~75_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~40_combout\,
	combout => \decoder|deburst|Add0~75_combout\);

-- Location: LCFF_X23_Y23_N13
\decoder|deburst|cmpt_stop[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~75_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(20));

-- Location: LCCOMB_X24_Y22_N12
\decoder|deburst|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~44_combout\ = (\decoder|deburst|cmpt_stop\(22) & ((GND) # (!\decoder|deburst|Add0~43\))) # (!\decoder|deburst|cmpt_stop\(22) & (\decoder|deburst|Add0~43\ $ (GND)))
-- \decoder|deburst|Add0~45\ = CARRY((\decoder|deburst|cmpt_stop\(22)) # (!\decoder|deburst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(22),
	datad => VCC,
	cin => \decoder|deburst|Add0~43\,
	combout => \decoder|deburst|Add0~44_combout\,
	cout => \decoder|deburst|Add0~45\);

-- Location: LCCOMB_X23_Y23_N4
\decoder|deburst|Add0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~73_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|Tx~0_combout\,
	datac => \decoder|deburst|Add0~44_combout\,
	combout => \decoder|deburst|Add0~73_combout\);

-- Location: LCFF_X23_Y23_N5
\decoder|deburst|cmpt_stop[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~73_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(22));

-- Location: LCCOMB_X24_Y22_N14
\decoder|deburst|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~46_combout\ = (\decoder|deburst|cmpt_stop\(23) & (\decoder|deburst|Add0~45\ & VCC)) # (!\decoder|deburst|cmpt_stop\(23) & (!\decoder|deburst|Add0~45\))
-- \decoder|deburst|Add0~47\ = CARRY((!\decoder|deburst|cmpt_stop\(23) & !\decoder|deburst|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(23),
	datad => VCC,
	cin => \decoder|deburst|Add0~45\,
	combout => \decoder|deburst|Add0~46_combout\,
	cout => \decoder|deburst|Add0~47\);

-- Location: LCCOMB_X23_Y23_N14
\decoder|deburst|Add0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~72_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~46_combout\,
	combout => \decoder|deburst|Add0~72_combout\);

-- Location: LCFF_X23_Y23_N15
\decoder|deburst|cmpt_stop[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~72_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(23));

-- Location: LCCOMB_X24_Y22_N18
\decoder|deburst|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~50_combout\ = (\decoder|deburst|cmpt_stop\(25) & (\decoder|deburst|Add0~49\ & VCC)) # (!\decoder|deburst|cmpt_stop\(25) & (!\decoder|deburst|Add0~49\))
-- \decoder|deburst|Add0~51\ = CARRY((!\decoder|deburst|cmpt_stop\(25) & !\decoder|deburst|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(25),
	datad => VCC,
	cin => \decoder|deburst|Add0~49\,
	combout => \decoder|deburst|Add0~50_combout\,
	cout => \decoder|deburst|Add0~51\);

-- Location: LCCOMB_X23_Y23_N6
\decoder|deburst|Add0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~70_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~50_combout\,
	combout => \decoder|deburst|Add0~70_combout\);

-- Location: LCFF_X23_Y23_N7
\decoder|deburst|cmpt_stop[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~70_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(25));

-- Location: LCCOMB_X24_Y22_N24
\decoder|deburst|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~56_combout\ = (\decoder|deburst|cmpt_stop\(28) & ((GND) # (!\decoder|deburst|Add0~55\))) # (!\decoder|deburst|cmpt_stop\(28) & (\decoder|deburst|Add0~55\ $ (GND)))
-- \decoder|deburst|Add0~57\ = CARRY((\decoder|deburst|cmpt_stop\(28)) # (!\decoder|deburst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(28),
	datad => VCC,
	cin => \decoder|deburst|Add0~55\,
	combout => \decoder|deburst|Add0~56_combout\,
	cout => \decoder|deburst|Add0~57\);

-- Location: LCCOMB_X23_Y22_N30
\decoder|deburst|Add0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~67_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~56_combout\,
	combout => \decoder|deburst|Add0~67_combout\);

-- Location: LCFF_X23_Y22_N31
\decoder|deburst|cmpt_stop[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~67_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(28));

-- Location: LCCOMB_X24_Y22_N26
\decoder|deburst|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~58_combout\ = (\decoder|deburst|cmpt_stop\(29) & (\decoder|deburst|Add0~57\ & VCC)) # (!\decoder|deburst|cmpt_stop\(29) & (!\decoder|deburst|Add0~57\))
-- \decoder|deburst|Add0~59\ = CARRY((!\decoder|deburst|cmpt_stop\(29) & !\decoder|deburst|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(29),
	datad => VCC,
	cin => \decoder|deburst|Add0~57\,
	combout => \decoder|deburst|Add0~58_combout\,
	cout => \decoder|deburst|Add0~59\);

-- Location: LCCOMB_X23_Y22_N16
\decoder|deburst|Add0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~66_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|Tx~0_combout\,
	datac => \decoder|deburst|Add0~58_combout\,
	combout => \decoder|deburst|Add0~66_combout\);

-- Location: LCFF_X23_Y22_N17
\decoder|deburst|cmpt_stop[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~66_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(29));

-- Location: LCCOMB_X24_Y22_N30
\decoder|deburst|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~62_combout\ = \decoder|deburst|Add0~61\ $ (!\decoder|deburst|cmpt_stop\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \decoder|deburst|cmpt_stop\(31),
	cin => \decoder|deburst|Add0~61\,
	combout => \decoder|deburst|Add0~62_combout\);

-- Location: LCCOMB_X23_Y22_N28
\decoder|deburst|Add0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add0~64_combout\ = (!\encoder|Tx~0_combout\ & \decoder|deburst|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|Tx~0_combout\,
	datad => \decoder|deburst|Add0~62_combout\,
	combout => \decoder|deburst|Add0~64_combout\);

-- Location: LCFF_X23_Y22_N29
\decoder|deburst|cmpt_stop[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add0~64_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|deburst|cmpt_stop[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_stop\(31));

-- Location: LCCOMB_X22_Y21_N10
\decoder|deburst|Add1~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~65_combout\ = (\decoder|deburst|Add1~6_combout\ & (!\decoder|deburst|cmpt_stop\(31) & !\decoder|deburst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|Add1~6_combout\,
	datac => \decoder|deburst|cmpt_stop\(31),
	datad => \decoder|deburst|LessThan0~9_combout\,
	combout => \decoder|deburst|Add1~65_combout\);

-- Location: LCFF_X23_Y21_N31
\decoder|deburst|cmpt_start[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \decoder|deburst|Add1~65_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(3));

-- Location: LCCOMB_X22_Y21_N0
\decoder|deburst|Add1~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~66_combout\ = (\decoder|deburst|Add1~4_combout\ & (!\decoder|deburst|cmpt_stop\(31) & !\decoder|deburst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|Add1~4_combout\,
	datac => \decoder|deburst|cmpt_stop\(31),
	datad => \decoder|deburst|LessThan0~9_combout\,
	combout => \decoder|deburst|Add1~66_combout\);

-- Location: LCFF_X23_Y21_N3
\decoder|deburst|cmpt_start[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \decoder|deburst|Add1~66_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(2));

-- Location: LCCOMB_X22_Y21_N20
\decoder|deburst|Add1~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~94_combout\ = (\decoder|deburst|Add1~2_combout\ & (!\decoder|deburst|cmpt_stop\(31) & !\decoder|deburst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|Add1~2_combout\,
	datac => \decoder|deburst|cmpt_stop\(31),
	datad => \decoder|deburst|LessThan0~9_combout\,
	combout => \decoder|deburst|Add1~94_combout\);

-- Location: LCFF_X23_Y21_N19
\decoder|deburst|cmpt_start[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \decoder|deburst|Add1~94_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(1));

-- Location: LCCOMB_X23_Y21_N0
\decoder|deburst|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~0_combout\ = \decoder|deburst|cmpt_start\(0) $ (VCC)
-- \decoder|deburst|Add1~1\ = CARRY(\decoder|deburst|cmpt_start\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(0),
	datad => VCC,
	combout => \decoder|deburst|Add1~0_combout\,
	cout => \decoder|deburst|Add1~1\);

-- Location: LCCOMB_X22_Y21_N30
\decoder|deburst|Add1~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~95_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (\decoder|deburst|Add1~0_combout\ & !\decoder|deburst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|Add1~0_combout\,
	datad => \decoder|deburst|LessThan0~9_combout\,
	combout => \decoder|deburst|Add1~95_combout\);

-- Location: LCFF_X23_Y21_N27
\decoder|deburst|cmpt_start[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \decoder|deburst|Add1~95_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(0));

-- Location: LCCOMB_X23_Y21_N10
\decoder|deburst|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~10_combout\ = (\decoder|deburst|cmpt_start\(5) & (!\decoder|deburst|Add1~9\)) # (!\decoder|deburst|cmpt_start\(5) & ((\decoder|deburst|Add1~9\) # (GND)))
-- \decoder|deburst|Add1~11\ = CARRY((!\decoder|deburst|Add1~9\) # (!\decoder|deburst|cmpt_start\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(5),
	datad => VCC,
	cin => \decoder|deburst|Add1~9\,
	combout => \decoder|deburst|Add1~10_combout\,
	cout => \decoder|deburst|Add1~11\);

-- Location: LCCOMB_X22_Y21_N4
\decoder|deburst|Add1~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~92_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (\decoder|deburst|Add1~10_combout\ & !\decoder|deburst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|Add1~10_combout\,
	datad => \decoder|deburst|LessThan0~9_combout\,
	combout => \decoder|deburst|Add1~92_combout\);

-- Location: LCFF_X23_Y21_N15
\decoder|deburst|cmpt_start[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \decoder|deburst|Add1~92_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(5));

-- Location: LCCOMB_X23_Y21_N12
\decoder|deburst|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~12_combout\ = (\decoder|deburst|cmpt_start\(6) & (\decoder|deburst|Add1~11\ $ (GND))) # (!\decoder|deburst|cmpt_start\(6) & (!\decoder|deburst|Add1~11\ & VCC))
-- \decoder|deburst|Add1~13\ = CARRY((\decoder|deburst|cmpt_start\(6) & !\decoder|deburst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_start\(6),
	datad => VCC,
	cin => \decoder|deburst|Add1~11\,
	combout => \decoder|deburst|Add1~12_combout\,
	cout => \decoder|deburst|Add1~13\);

-- Location: LCCOMB_X23_Y21_N14
\decoder|deburst|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~14_combout\ = (\decoder|deburst|cmpt_start\(7) & (!\decoder|deburst|Add1~13\)) # (!\decoder|deburst|cmpt_start\(7) & ((\decoder|deburst|Add1~13\) # (GND)))
-- \decoder|deburst|Add1~15\ = CARRY((!\decoder|deburst|Add1~13\) # (!\decoder|deburst|cmpt_start\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(7),
	datad => VCC,
	cin => \decoder|deburst|Add1~13\,
	combout => \decoder|deburst|Add1~14_combout\,
	cout => \decoder|deburst|Add1~15\);

-- Location: LCCOMB_X22_Y21_N24
\decoder|deburst|Add1~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~90_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (\decoder|deburst|Add1~14_combout\ & !\decoder|deburst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|Add1~14_combout\,
	datad => \decoder|deburst|LessThan0~9_combout\,
	combout => \decoder|deburst|Add1~90_combout\);

-- Location: LCFF_X22_Y21_N25
\decoder|deburst|cmpt_start[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~90_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(7));

-- Location: LCCOMB_X23_Y21_N16
\decoder|deburst|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~16_combout\ = (\decoder|deburst|cmpt_start\(8) & (\decoder|deburst|Add1~15\ $ (GND))) # (!\decoder|deburst|cmpt_start\(8) & (!\decoder|deburst|Add1~15\ & VCC))
-- \decoder|deburst|Add1~17\ = CARRY((\decoder|deburst|cmpt_start\(8) & !\decoder|deburst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(8),
	datad => VCC,
	cin => \decoder|deburst|Add1~15\,
	combout => \decoder|deburst|Add1~16_combout\,
	cout => \decoder|deburst|Add1~17\);

-- Location: LCCOMB_X22_Y21_N26
\decoder|deburst|Add1~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~89_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (\decoder|deburst|Add1~16_combout\ & !\decoder|deburst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|Add1~16_combout\,
	datad => \decoder|deburst|LessThan0~9_combout\,
	combout => \decoder|deburst|Add1~89_combout\);

-- Location: LCFF_X22_Y21_N27
\decoder|deburst|cmpt_start[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~89_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(8));

-- Location: LCCOMB_X22_Y21_N6
\decoder|deburst|Add1~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~91_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (\decoder|deburst|Add1~12_combout\ & !\decoder|deburst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|Add1~12_combout\,
	datad => \decoder|deburst|LessThan0~9_combout\,
	combout => \decoder|deburst|Add1~91_combout\);

-- Location: LCFF_X23_Y21_N7
\decoder|deburst|cmpt_start[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \decoder|deburst|Add1~91_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(6));

-- Location: LCCOMB_X22_Y21_N22
\decoder|deburst|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan1~7_combout\ = (!\decoder|deburst|cmpt_start\(7) & (!\decoder|deburst|cmpt_start\(8) & (!\decoder|deburst|cmpt_start\(5) & !\decoder|deburst|cmpt_start\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_start\(7),
	datab => \decoder|deburst|cmpt_start\(8),
	datac => \decoder|deburst|cmpt_start\(5),
	datad => \decoder|deburst|cmpt_start\(6),
	combout => \decoder|deburst|LessThan1~7_combout\);

-- Location: LCCOMB_X23_Y21_N18
\decoder|deburst|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~18_combout\ = (\decoder|deburst|cmpt_start\(9) & (!\decoder|deburst|Add1~17\)) # (!\decoder|deburst|cmpt_start\(9) & ((\decoder|deburst|Add1~17\) # (GND)))
-- \decoder|deburst|Add1~19\ = CARRY((!\decoder|deburst|Add1~17\) # (!\decoder|deburst|cmpt_start\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_start\(9),
	datad => VCC,
	cin => \decoder|deburst|Add1~17\,
	combout => \decoder|deburst|Add1~18_combout\,
	cout => \decoder|deburst|Add1~19\);

-- Location: LCCOMB_X23_Y21_N20
\decoder|deburst|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~20_combout\ = (\decoder|deburst|cmpt_start\(10) & (\decoder|deburst|Add1~19\ $ (GND))) # (!\decoder|deburst|cmpt_start\(10) & (!\decoder|deburst|Add1~19\ & VCC))
-- \decoder|deburst|Add1~21\ = CARRY((\decoder|deburst|cmpt_start\(10) & !\decoder|deburst|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(10),
	datad => VCC,
	cin => \decoder|deburst|Add1~19\,
	combout => \decoder|deburst|Add1~20_combout\,
	cout => \decoder|deburst|Add1~21\);

-- Location: LCCOMB_X22_Y21_N28
\decoder|deburst|Add1~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~87_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (\decoder|deburst|Add1~20_combout\ & !\decoder|deburst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(31),
	datab => \decoder|deburst|Add1~20_combout\,
	datad => \decoder|deburst|LessThan0~9_combout\,
	combout => \decoder|deburst|Add1~87_combout\);

-- Location: LCFF_X22_Y21_N29
\decoder|deburst|cmpt_start[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~87_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(10));

-- Location: LCCOMB_X23_Y21_N22
\decoder|deburst|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~22_combout\ = (\decoder|deburst|cmpt_start\(11) & (!\decoder|deburst|Add1~21\)) # (!\decoder|deburst|cmpt_start\(11) & ((\decoder|deburst|Add1~21\) # (GND)))
-- \decoder|deburst|Add1~23\ = CARRY((!\decoder|deburst|Add1~21\) # (!\decoder|deburst|cmpt_start\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(11),
	datad => VCC,
	cin => \decoder|deburst|Add1~21\,
	combout => \decoder|deburst|Add1~22_combout\,
	cout => \decoder|deburst|Add1~23\);

-- Location: LCCOMB_X22_Y21_N18
\decoder|deburst|Add1~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~86_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (!\decoder|deburst|LessThan0~9_combout\ & \decoder|deburst|Add1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(31),
	datab => \decoder|deburst|LessThan0~9_combout\,
	datad => \decoder|deburst|Add1~22_combout\,
	combout => \decoder|deburst|Add1~86_combout\);

-- Location: LCFF_X22_Y21_N19
\decoder|deburst|cmpt_start[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~86_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(11));

-- Location: LCCOMB_X22_Y21_N14
\decoder|deburst|Add1~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~88_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (\decoder|deburst|Add1~18_combout\ & !\decoder|deburst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(31),
	datab => \decoder|deburst|Add1~18_combout\,
	datad => \decoder|deburst|LessThan0~9_combout\,
	combout => \decoder|deburst|Add1~88_combout\);

-- Location: LCFF_X22_Y21_N15
\decoder|deburst|cmpt_start[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~88_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(9));

-- Location: LCCOMB_X22_Y21_N8
\decoder|deburst|LessThan1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan1~6_combout\ = (!\decoder|deburst|cmpt_start\(12) & (!\decoder|deburst|cmpt_start\(11) & (!\decoder|deburst|cmpt_start\(9) & !\decoder|deburst|cmpt_start\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_start\(12),
	datab => \decoder|deburst|cmpt_start\(11),
	datac => \decoder|deburst|cmpt_start\(9),
	datad => \decoder|deburst|cmpt_start\(10),
	combout => \decoder|deburst|LessThan1~6_combout\);

-- Location: LCCOMB_X23_Y21_N26
\decoder|deburst|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~26_combout\ = (\decoder|deburst|cmpt_start\(13) & (!\decoder|deburst|Add1~25\)) # (!\decoder|deburst|cmpt_start\(13) & ((\decoder|deburst|Add1~25\) # (GND)))
-- \decoder|deburst|Add1~27\ = CARRY((!\decoder|deburst|Add1~25\) # (!\decoder|deburst|cmpt_start\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(13),
	datad => VCC,
	cin => \decoder|deburst|Add1~25\,
	combout => \decoder|deburst|Add1~26_combout\,
	cout => \decoder|deburst|Add1~27\);

-- Location: LCCOMB_X24_Y21_N24
\decoder|deburst|Add1~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~84_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (\decoder|deburst|Add1~26_combout\ & !\decoder|deburst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(31),
	datab => \decoder|deburst|Add1~26_combout\,
	datad => \decoder|deburst|LessThan0~9_combout\,
	combout => \decoder|deburst|Add1~84_combout\);

-- Location: LCFF_X24_Y21_N25
\decoder|deburst|cmpt_start[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~84_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(13));

-- Location: LCCOMB_X23_Y21_N28
\decoder|deburst|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~28_combout\ = (\decoder|deburst|cmpt_start\(14) & (\decoder|deburst|Add1~27\ $ (GND))) # (!\decoder|deburst|cmpt_start\(14) & (!\decoder|deburst|Add1~27\ & VCC))
-- \decoder|deburst|Add1~29\ = CARRY((\decoder|deburst|cmpt_start\(14) & !\decoder|deburst|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(14),
	datad => VCC,
	cin => \decoder|deburst|Add1~27\,
	combout => \decoder|deburst|Add1~28_combout\,
	cout => \decoder|deburst|Add1~29\);

-- Location: LCCOMB_X24_Y21_N14
\decoder|deburst|Add1~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~83_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (!\decoder|deburst|LessThan0~9_combout\ & \decoder|deburst|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(31),
	datab => \decoder|deburst|LessThan0~9_combout\,
	datad => \decoder|deburst|Add1~28_combout\,
	combout => \decoder|deburst|Add1~83_combout\);

-- Location: LCFF_X24_Y21_N15
\decoder|deburst|cmpt_start[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~83_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(14));

-- Location: LCCOMB_X23_Y21_N30
\decoder|deburst|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~30_combout\ = (\decoder|deburst|cmpt_start\(15) & (!\decoder|deburst|Add1~29\)) # (!\decoder|deburst|cmpt_start\(15) & ((\decoder|deburst|Add1~29\) # (GND)))
-- \decoder|deburst|Add1~31\ = CARRY((!\decoder|deburst|Add1~29\) # (!\decoder|deburst|cmpt_start\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(15),
	datad => VCC,
	cin => \decoder|deburst|Add1~29\,
	combout => \decoder|deburst|Add1~30_combout\,
	cout => \decoder|deburst|Add1~31\);

-- Location: LCCOMB_X24_Y21_N0
\decoder|deburst|Add1~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~82_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (\decoder|deburst|Add1~30_combout\ & !\decoder|deburst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|Add1~30_combout\,
	datad => \decoder|deburst|LessThan0~9_combout\,
	combout => \decoder|deburst|Add1~82_combout\);

-- Location: LCFF_X24_Y21_N1
\decoder|deburst|cmpt_start[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~82_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(15));

-- Location: LCCOMB_X24_Y21_N10
\decoder|deburst|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan1~5_combout\ = (!\decoder|deburst|cmpt_start\(16) & (!\decoder|deburst|cmpt_start\(14) & (!\decoder|deburst|cmpt_start\(13) & !\decoder|deburst|cmpt_start\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_start\(16),
	datab => \decoder|deburst|cmpt_start\(14),
	datac => \decoder|deburst|cmpt_start\(13),
	datad => \decoder|deburst|cmpt_start\(15),
	combout => \decoder|deburst|LessThan1~5_combout\);

-- Location: LCCOMB_X22_Y21_N16
\decoder|deburst|LessThan1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan1~8_combout\ = (!\decoder|deburst|cmpt_start\(4) & (\decoder|deburst|LessThan1~7_combout\ & (\decoder|deburst|LessThan1~6_combout\ & \decoder|deburst|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_start\(4),
	datab => \decoder|deburst|LessThan1~7_combout\,
	datac => \decoder|deburst|LessThan1~6_combout\,
	datad => \decoder|deburst|LessThan1~5_combout\,
	combout => \decoder|deburst|LessThan1~8_combout\);

-- Location: LCCOMB_X23_Y20_N0
\decoder|deburst|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~32_combout\ = (\decoder|deburst|cmpt_start\(16) & (\decoder|deburst|Add1~31\ $ (GND))) # (!\decoder|deburst|cmpt_start\(16) & (!\decoder|deburst|Add1~31\ & VCC))
-- \decoder|deburst|Add1~33\ = CARRY((\decoder|deburst|cmpt_start\(16) & !\decoder|deburst|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(16),
	datad => VCC,
	cin => \decoder|deburst|Add1~31\,
	combout => \decoder|deburst|Add1~32_combout\,
	cout => \decoder|deburst|Add1~33\);

-- Location: LCCOMB_X24_Y20_N14
\decoder|deburst|Add1~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~81_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (\decoder|deburst|Add1~32_combout\ & !\decoder|deburst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|Add1~32_combout\,
	datad => \decoder|deburst|LessThan0~9_combout\,
	combout => \decoder|deburst|Add1~81_combout\);

-- Location: LCFF_X24_Y20_N15
\decoder|deburst|cmpt_start[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~81_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(16));

-- Location: LCCOMB_X23_Y20_N4
\decoder|deburst|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~36_combout\ = (\decoder|deburst|cmpt_start\(18) & (\decoder|deburst|Add1~35\ $ (GND))) # (!\decoder|deburst|cmpt_start\(18) & (!\decoder|deburst|Add1~35\ & VCC))
-- \decoder|deburst|Add1~37\ = CARRY((\decoder|deburst|cmpt_start\(18) & !\decoder|deburst|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(18),
	datad => VCC,
	cin => \decoder|deburst|Add1~35\,
	combout => \decoder|deburst|Add1~36_combout\,
	cout => \decoder|deburst|Add1~37\);

-- Location: LCCOMB_X24_Y20_N18
\decoder|deburst|Add1~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~79_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (\decoder|deburst|Add1~36_combout\ & !\decoder|deburst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|Add1~36_combout\,
	datad => \decoder|deburst|LessThan0~9_combout\,
	combout => \decoder|deburst|Add1~79_combout\);

-- Location: LCFF_X24_Y20_N19
\decoder|deburst|cmpt_start[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~79_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(18));

-- Location: LCCOMB_X23_Y20_N6
\decoder|deburst|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~38_combout\ = (\decoder|deburst|cmpt_start\(19) & (!\decoder|deburst|Add1~37\)) # (!\decoder|deburst|cmpt_start\(19) & ((\decoder|deburst|Add1~37\) # (GND)))
-- \decoder|deburst|Add1~39\ = CARRY((!\decoder|deburst|Add1~37\) # (!\decoder|deburst|cmpt_start\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(19),
	datad => VCC,
	cin => \decoder|deburst|Add1~37\,
	combout => \decoder|deburst|Add1~38_combout\,
	cout => \decoder|deburst|Add1~39\);

-- Location: LCCOMB_X24_Y20_N8
\decoder|deburst|Add1~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~78_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (\decoder|deburst|Add1~38_combout\ & !\decoder|deburst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|Add1~38_combout\,
	datad => \decoder|deburst|LessThan0~9_combout\,
	combout => \decoder|deburst|Add1~78_combout\);

-- Location: LCFF_X24_Y20_N9
\decoder|deburst|cmpt_start[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~78_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(19));

-- Location: LCCOMB_X23_Y20_N8
\decoder|deburst|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~40_combout\ = (\decoder|deburst|cmpt_start\(20) & (\decoder|deburst|Add1~39\ $ (GND))) # (!\decoder|deburst|cmpt_start\(20) & (!\decoder|deburst|Add1~39\ & VCC))
-- \decoder|deburst|Add1~41\ = CARRY((\decoder|deburst|cmpt_start\(20) & !\decoder|deburst|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_start\(20),
	datad => VCC,
	cin => \decoder|deburst|Add1~39\,
	combout => \decoder|deburst|Add1~40_combout\,
	cout => \decoder|deburst|Add1~41\);

-- Location: LCCOMB_X23_Y20_N10
\decoder|deburst|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~42_combout\ = (\decoder|deburst|cmpt_start\(21) & (!\decoder|deburst|Add1~41\)) # (!\decoder|deburst|cmpt_start\(21) & ((\decoder|deburst|Add1~41\) # (GND)))
-- \decoder|deburst|Add1~43\ = CARRY((!\decoder|deburst|Add1~41\) # (!\decoder|deburst|cmpt_start\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(21),
	datad => VCC,
	cin => \decoder|deburst|Add1~41\,
	combout => \decoder|deburst|Add1~42_combout\,
	cout => \decoder|deburst|Add1~43\);

-- Location: LCCOMB_X24_Y20_N30
\decoder|deburst|Add1~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~76_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (!\decoder|deburst|LessThan0~9_combout\ & \decoder|deburst|Add1~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|LessThan0~9_combout\,
	datad => \decoder|deburst|Add1~42_combout\,
	combout => \decoder|deburst|Add1~76_combout\);

-- Location: LCFF_X24_Y20_N31
\decoder|deburst|cmpt_start[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~76_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(21));

-- Location: LCCOMB_X23_Y20_N12
\decoder|deburst|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~44_combout\ = (\decoder|deburst|cmpt_start\(22) & (\decoder|deburst|Add1~43\ $ (GND))) # (!\decoder|deburst|cmpt_start\(22) & (!\decoder|deburst|Add1~43\ & VCC))
-- \decoder|deburst|Add1~45\ = CARRY((\decoder|deburst|cmpt_start\(22) & !\decoder|deburst|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(22),
	datad => VCC,
	cin => \decoder|deburst|Add1~43\,
	combout => \decoder|deburst|Add1~44_combout\,
	cout => \decoder|deburst|Add1~45\);

-- Location: LCCOMB_X24_Y20_N0
\decoder|deburst|Add1~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~75_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (!\decoder|deburst|LessThan0~9_combout\ & \decoder|deburst|Add1~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|LessThan0~9_combout\,
	datad => \decoder|deburst|Add1~44_combout\,
	combout => \decoder|deburst|Add1~75_combout\);

-- Location: LCFF_X24_Y20_N1
\decoder|deburst|cmpt_start[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~75_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(22));

-- Location: LCCOMB_X23_Y20_N16
\decoder|deburst|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~48_combout\ = (\decoder|deburst|cmpt_start\(24) & (\decoder|deburst|Add1~47\ $ (GND))) # (!\decoder|deburst|cmpt_start\(24) & (!\decoder|deburst|Add1~47\ & VCC))
-- \decoder|deburst|Add1~49\ = CARRY((\decoder|deburst|cmpt_start\(24) & !\decoder|deburst|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(24),
	datad => VCC,
	cin => \decoder|deburst|Add1~47\,
	combout => \decoder|deburst|Add1~48_combout\,
	cout => \decoder|deburst|Add1~49\);

-- Location: LCCOMB_X24_Y20_N22
\decoder|deburst|Add1~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~73_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (!\decoder|deburst|LessThan0~9_combout\ & \decoder|deburst|Add1~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|LessThan0~9_combout\,
	datad => \decoder|deburst|Add1~48_combout\,
	combout => \decoder|deburst|Add1~73_combout\);

-- Location: LCFF_X24_Y20_N23
\decoder|deburst|cmpt_start[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~73_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(24));

-- Location: LCCOMB_X23_Y20_N18
\decoder|deburst|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~50_combout\ = (\decoder|deburst|cmpt_start\(25) & (!\decoder|deburst|Add1~49\)) # (!\decoder|deburst|cmpt_start\(25) & ((\decoder|deburst|Add1~49\) # (GND)))
-- \decoder|deburst|Add1~51\ = CARRY((!\decoder|deburst|Add1~49\) # (!\decoder|deburst|cmpt_start\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_start\(25),
	datad => VCC,
	cin => \decoder|deburst|Add1~49\,
	combout => \decoder|deburst|Add1~50_combout\,
	cout => \decoder|deburst|Add1~51\);

-- Location: LCCOMB_X23_Y20_N20
\decoder|deburst|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~52_combout\ = (\decoder|deburst|cmpt_start\(26) & (\decoder|deburst|Add1~51\ $ (GND))) # (!\decoder|deburst|cmpt_start\(26) & (!\decoder|deburst|Add1~51\ & VCC))
-- \decoder|deburst|Add1~53\ = CARRY((\decoder|deburst|cmpt_start\(26) & !\decoder|deburst|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(26),
	datad => VCC,
	cin => \decoder|deburst|Add1~51\,
	combout => \decoder|deburst|Add1~52_combout\,
	cout => \decoder|deburst|Add1~53\);

-- Location: LCCOMB_X22_Y20_N16
\decoder|deburst|Add1~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~71_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (\decoder|deburst|Add1~52_combout\ & !\decoder|deburst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|Add1~52_combout\,
	datad => \decoder|deburst|LessThan0~9_combout\,
	combout => \decoder|deburst|Add1~71_combout\);

-- Location: LCFF_X22_Y20_N17
\decoder|deburst|cmpt_start[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~71_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(26));

-- Location: LCCOMB_X23_Y20_N22
\decoder|deburst|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~54_combout\ = (\decoder|deburst|cmpt_start\(27) & (!\decoder|deburst|Add1~53\)) # (!\decoder|deburst|cmpt_start\(27) & ((\decoder|deburst|Add1~53\) # (GND)))
-- \decoder|deburst|Add1~55\ = CARRY((!\decoder|deburst|Add1~53\) # (!\decoder|deburst|cmpt_start\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(27),
	datad => VCC,
	cin => \decoder|deburst|Add1~53\,
	combout => \decoder|deburst|Add1~54_combout\,
	cout => \decoder|deburst|Add1~55\);

-- Location: LCCOMB_X22_Y20_N18
\decoder|deburst|Add1~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~70_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (!\decoder|deburst|LessThan0~9_combout\ & \decoder|deburst|Add1~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|LessThan0~9_combout\,
	datad => \decoder|deburst|Add1~54_combout\,
	combout => \decoder|deburst|Add1~70_combout\);

-- Location: LCFF_X22_Y20_N19
\decoder|deburst|cmpt_start[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~70_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(27));

-- Location: LCCOMB_X23_Y20_N24
\decoder|deburst|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~56_combout\ = (\decoder|deburst|cmpt_start\(28) & (\decoder|deburst|Add1~55\ $ (GND))) # (!\decoder|deburst|cmpt_start\(28) & (!\decoder|deburst|Add1~55\ & VCC))
-- \decoder|deburst|Add1~57\ = CARRY((\decoder|deburst|cmpt_start\(28) & !\decoder|deburst|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_start\(28),
	datad => VCC,
	cin => \decoder|deburst|Add1~55\,
	combout => \decoder|deburst|Add1~56_combout\,
	cout => \decoder|deburst|Add1~57\);

-- Location: LCCOMB_X22_Y20_N28
\decoder|deburst|Add1~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~69_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (!\decoder|deburst|LessThan0~9_combout\ & \decoder|deburst|Add1~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|LessThan0~9_combout\,
	datad => \decoder|deburst|Add1~56_combout\,
	combout => \decoder|deburst|Add1~69_combout\);

-- Location: LCFF_X22_Y20_N29
\decoder|deburst|cmpt_start[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~69_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(28));

-- Location: LCCOMB_X24_Y20_N10
\decoder|deburst|Add1~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~68_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (!\decoder|deburst|LessThan0~9_combout\ & \decoder|deburst|Add1~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|LessThan0~9_combout\,
	datad => \decoder|deburst|Add1~58_combout\,
	combout => \decoder|deburst|Add1~68_combout\);

-- Location: LCFF_X24_Y20_N11
\decoder|deburst|cmpt_start[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~68_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(29));

-- Location: LCCOMB_X24_Y20_N28
\decoder|deburst|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan1~0_combout\ = (!\decoder|deburst|cmpt_start\(30) & (!\decoder|deburst|cmpt_start\(29) & ((!\decoder|deburst|cmpt_start\(3)) # (!\decoder|deburst|cmpt_start\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_start\(30),
	datab => \decoder|deburst|cmpt_start\(29),
	datac => \decoder|deburst|cmpt_start\(2),
	datad => \decoder|deburst|cmpt_start\(3),
	combout => \decoder|deburst|LessThan1~0_combout\);

-- Location: LCCOMB_X22_Y20_N30
\decoder|deburst|Add1~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~72_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (!\decoder|deburst|LessThan0~9_combout\ & \decoder|deburst|Add1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|LessThan0~9_combout\,
	datad => \decoder|deburst|Add1~50_combout\,
	combout => \decoder|deburst|Add1~72_combout\);

-- Location: LCFF_X22_Y20_N31
\decoder|deburst|cmpt_start[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~72_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(25));

-- Location: LCCOMB_X22_Y20_N24
\decoder|deburst|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan1~1_combout\ = (!\decoder|deburst|cmpt_start\(28) & (!\decoder|deburst|cmpt_start\(27) & (!\decoder|deburst|cmpt_start\(26) & !\decoder|deburst|cmpt_start\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_start\(28),
	datab => \decoder|deburst|cmpt_start\(27),
	datac => \decoder|deburst|cmpt_start\(26),
	datad => \decoder|deburst|cmpt_start\(25),
	combout => \decoder|deburst|LessThan1~1_combout\);

-- Location: LCCOMB_X24_Y20_N2
\decoder|deburst|Add1~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|Add1~77_combout\ = (!\decoder|deburst|cmpt_stop\(31) & (!\decoder|deburst|LessThan0~9_combout\ & \decoder|deburst|Add1~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|cmpt_stop\(31),
	datac => \decoder|deburst|LessThan0~9_combout\,
	datad => \decoder|deburst|Add1~40_combout\,
	combout => \decoder|deburst|Add1~77_combout\);

-- Location: LCFF_X24_Y20_N3
\decoder|deburst|cmpt_start[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|Add1~77_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|cmpt_start\(20));

-- Location: LCCOMB_X24_Y20_N26
\decoder|deburst|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan1~3_combout\ = (!\decoder|deburst|cmpt_start\(17) & (!\decoder|deburst|cmpt_start\(18) & (!\decoder|deburst|cmpt_start\(19) & !\decoder|deburst|cmpt_start\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_start\(17),
	datab => \decoder|deburst|cmpt_start\(18),
	datac => \decoder|deburst|cmpt_start\(19),
	datad => \decoder|deburst|cmpt_start\(20),
	combout => \decoder|deburst|LessThan1~3_combout\);

-- Location: LCCOMB_X24_Y20_N20
\decoder|deburst|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan1~4_combout\ = (\decoder|deburst|LessThan1~2_combout\ & (\decoder|deburst|LessThan1~0_combout\ & (\decoder|deburst|LessThan1~1_combout\ & \decoder|deburst|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|LessThan1~2_combout\,
	datab => \decoder|deburst|LessThan1~0_combout\,
	datac => \decoder|deburst|LessThan1~1_combout\,
	datad => \decoder|deburst|LessThan1~3_combout\,
	combout => \decoder|deburst|LessThan1~4_combout\);

-- Location: LCCOMB_X22_Y20_N12
\decoder|deburst|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|deburst|LessThan1~9_combout\ = (!\decoder|deburst|cmpt_start\(31) & ((!\decoder|deburst|LessThan1~4_combout\) # (!\decoder|deburst|LessThan1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|cmpt_start\(31),
	datac => \decoder|deburst|LessThan1~8_combout\,
	datad => \decoder|deburst|LessThan1~4_combout\,
	combout => \decoder|deburst|LessThan1~9_combout\);

-- Location: LCFF_X22_Y20_N13
\decoder|deburst|trame_deburst\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|deburst|LessThan1~9_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_burst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|deburst|trame_deburst~regout\);

-- Location: LCCOMB_X31_Y10_N14
\decoder|demanchester|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector4~0_combout\ = (\decoder|demanchester|State.valid0~regout\ & \decoder|deburst|trame_deburst~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|State.valid0~regout\,
	datac => \decoder|deburst|trame_deburst~regout\,
	combout => \decoder|demanchester|Selector4~0_combout\);

-- Location: LCCOMB_X17_Y10_N2
\decoder|tick_gen|Add1~1\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X17_Y10_N4
\decoder|tick_gen|Add1~3\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X17_Y10_N6
\decoder|tick_gen|Add1~5\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X17_Y10_N8
\decoder|tick_gen|Add1~7\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X17_Y10_N10
\decoder|tick_gen|Add1~9\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X17_Y10_N12
\decoder|tick_gen|Add1~11\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X17_Y10_N14
\decoder|tick_gen|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~12_combout\ = (\decoder|tick_gen|stmanch\(7) & (!\decoder|tick_gen|Add1~11_cout\ & VCC)) # (!\decoder|tick_gen|stmanch\(7) & (\decoder|tick_gen|Add1~11_cout\ $ (GND)))
-- \decoder|tick_gen|Add1~13\ = CARRY((!\decoder|tick_gen|stmanch\(7) & !\decoder|tick_gen|Add1~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(7),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~11_cout\,
	combout => \decoder|tick_gen|Add1~12_combout\,
	cout => \decoder|tick_gen|Add1~13\);

-- Location: LCCOMB_X16_Y10_N28
\decoder|tick_gen|stmanch~5\ : cycloneii_lcell_comb
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

-- Location: LCFF_X16_Y10_N29
\decoder|tick_gen|stmanch[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|stmanch~5_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(7));

-- Location: LCCOMB_X17_Y10_N16
\decoder|tick_gen|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~14_combout\ = (\decoder|tick_gen|stmanch\(8) & ((\decoder|tick_gen|Add1~13\) # (GND))) # (!\decoder|tick_gen|stmanch\(8) & (!\decoder|tick_gen|Add1~13\))
-- \decoder|tick_gen|Add1~15\ = CARRY((\decoder|tick_gen|stmanch\(8)) # (!\decoder|tick_gen|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(8),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~13\,
	combout => \decoder|tick_gen|Add1~14_combout\,
	cout => \decoder|tick_gen|Add1~15\);

-- Location: LCCOMB_X17_Y10_N18
\decoder|tick_gen|Add1~16\ : cycloneii_lcell_comb
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

-- Location: LCFF_X17_Y10_N19
\decoder|tick_gen|stmanch[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add1~16_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(9));

-- Location: LCCOMB_X17_Y10_N20
\decoder|tick_gen|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~18_combout\ = (\decoder|tick_gen|stmanch\(10) & ((\decoder|tick_gen|Add1~17\) # (GND))) # (!\decoder|tick_gen|stmanch\(10) & (!\decoder|tick_gen|Add1~17\))
-- \decoder|tick_gen|Add1~19\ = CARRY((\decoder|tick_gen|stmanch\(10)) # (!\decoder|tick_gen|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(10),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~17\,
	combout => \decoder|tick_gen|Add1~18_combout\,
	cout => \decoder|tick_gen|Add1~19\);

-- Location: LCCOMB_X16_Y10_N24
\decoder|tick_gen|stmanch~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~3_combout\ = (\decoder|tick_gen|Equal1~8_combout\) # (!\decoder|tick_gen|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Equal1~8_combout\,
	datad => \decoder|tick_gen|Add1~18_combout\,
	combout => \decoder|tick_gen|stmanch~3_combout\);

-- Location: LCFF_X16_Y10_N25
\decoder|tick_gen|stmanch[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|stmanch~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(10));

-- Location: LCCOMB_X17_Y10_N22
\decoder|tick_gen|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~20_combout\ = (\decoder|tick_gen|stmanch\(11) & (!\decoder|tick_gen|Add1~19\ & VCC)) # (!\decoder|tick_gen|stmanch\(11) & (\decoder|tick_gen|Add1~19\ $ (GND)))
-- \decoder|tick_gen|Add1~21\ = CARRY((!\decoder|tick_gen|stmanch\(11) & !\decoder|tick_gen|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(11),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~19\,
	combout => \decoder|tick_gen|Add1~20_combout\,
	cout => \decoder|tick_gen|Add1~21\);

-- Location: LCCOMB_X17_Y10_N24
\decoder|tick_gen|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~22_combout\ = (\decoder|tick_gen|stmanch\(12) & (!\decoder|tick_gen|Add1~21\)) # (!\decoder|tick_gen|stmanch\(12) & ((\decoder|tick_gen|Add1~21\) # (GND)))
-- \decoder|tick_gen|Add1~23\ = CARRY((!\decoder|tick_gen|Add1~21\) # (!\decoder|tick_gen|stmanch\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(12),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~21\,
	combout => \decoder|tick_gen|Add1~22_combout\,
	cout => \decoder|tick_gen|Add1~23\);

-- Location: LCCOMB_X17_Y10_N26
\decoder|tick_gen|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~24_combout\ = (\decoder|tick_gen|stmanch\(13) & (!\decoder|tick_gen|Add1~23\ & VCC)) # (!\decoder|tick_gen|stmanch\(13) & (\decoder|tick_gen|Add1~23\ $ (GND)))
-- \decoder|tick_gen|Add1~25\ = CARRY((!\decoder|tick_gen|stmanch\(13) & !\decoder|tick_gen|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(13),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~23\,
	combout => \decoder|tick_gen|Add1~24_combout\,
	cout => \decoder|tick_gen|Add1~25\);

-- Location: LCCOMB_X16_Y10_N16
\decoder|tick_gen|stmanch~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~1_combout\ = (\decoder|tick_gen|Equal1~8_combout\) # (!\decoder|tick_gen|Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal1~8_combout\,
	datac => \decoder|tick_gen|Add1~24_combout\,
	combout => \decoder|tick_gen|stmanch~1_combout\);

-- Location: LCFF_X16_Y10_N17
\decoder|tick_gen|stmanch[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|stmanch~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(13));

-- Location: LCCOMB_X17_Y10_N28
\decoder|tick_gen|Add1~26\ : cycloneii_lcell_comb
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

-- Location: LCFF_X17_Y10_N29
\decoder|tick_gen|stmanch[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add1~26_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(14));

-- Location: LCCOMB_X17_Y9_N0
\decoder|tick_gen|Add1~30\ : cycloneii_lcell_comb
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

-- Location: LCFF_X17_Y9_N1
\decoder|tick_gen|stmanch[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add1~30_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(16));

-- Location: LCCOMB_X17_Y9_N2
\decoder|tick_gen|Add1~32\ : cycloneii_lcell_comb
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

-- Location: LCFF_X17_Y9_N3
\decoder|tick_gen|stmanch[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add1~32_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(17));

-- Location: LCCOMB_X17_Y9_N4
\decoder|tick_gen|Add1~34\ : cycloneii_lcell_comb
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

-- Location: LCFF_X17_Y9_N5
\decoder|tick_gen|stmanch[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add1~34_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(18));

-- Location: LCCOMB_X17_Y9_N8
\decoder|tick_gen|Add1~38\ : cycloneii_lcell_comb
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

-- Location: LCFF_X17_Y9_N9
\decoder|tick_gen|stmanch[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add1~38_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(20));

-- Location: LCCOMB_X17_Y9_N10
\decoder|tick_gen|Add1~40\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X17_Y9_N12
\decoder|tick_gen|Add1~42\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X17_Y9_N14
\decoder|tick_gen|Add1~44\ : cycloneii_lcell_comb
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

-- Location: LCFF_X17_Y9_N15
\decoder|tick_gen|stmanch[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add1~44_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(23));

-- Location: LCCOMB_X17_Y9_N16
\decoder|tick_gen|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~46_combout\ = (\decoder|tick_gen|stmanch\(24) & (!\decoder|tick_gen|Add1~45\)) # (!\decoder|tick_gen|stmanch\(24) & ((\decoder|tick_gen|Add1~45\) # (GND)))
-- \decoder|tick_gen|Add1~47\ = CARRY((!\decoder|tick_gen|Add1~45\) # (!\decoder|tick_gen|stmanch\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(24),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~45\,
	combout => \decoder|tick_gen|Add1~46_combout\,
	cout => \decoder|tick_gen|Add1~47\);

-- Location: LCCOMB_X17_Y9_N18
\decoder|tick_gen|Add1~48\ : cycloneii_lcell_comb
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

-- Location: LCFF_X17_Y9_N19
\decoder|tick_gen|stmanch[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add1~48_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(25));

-- Location: LCCOMB_X17_Y9_N22
\decoder|tick_gen|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~52_combout\ = (\decoder|tick_gen|stmanch\(27) & (\decoder|tick_gen|Add1~51\ $ (GND))) # (!\decoder|tick_gen|stmanch\(27) & (!\decoder|tick_gen|Add1~51\ & VCC))
-- \decoder|tick_gen|Add1~53\ = CARRY((\decoder|tick_gen|stmanch\(27) & !\decoder|tick_gen|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(27),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~51\,
	combout => \decoder|tick_gen|Add1~52_combout\,
	cout => \decoder|tick_gen|Add1~53\);

-- Location: LCFF_X17_Y9_N23
\decoder|tick_gen|stmanch[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add1~52_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(27));

-- Location: LCCOMB_X17_Y9_N24
\decoder|tick_gen|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~54_combout\ = (\decoder|tick_gen|stmanch\(28) & (!\decoder|tick_gen|Add1~53\)) # (!\decoder|tick_gen|stmanch\(28) & ((\decoder|tick_gen|Add1~53\) # (GND)))
-- \decoder|tick_gen|Add1~55\ = CARRY((!\decoder|tick_gen|Add1~53\) # (!\decoder|tick_gen|stmanch\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(28),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~53\,
	combout => \decoder|tick_gen|Add1~54_combout\,
	cout => \decoder|tick_gen|Add1~55\);

-- Location: LCFF_X17_Y9_N25
\decoder|tick_gen|stmanch[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add1~54_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(28));

-- Location: LCCOMB_X17_Y9_N26
\decoder|tick_gen|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~56_combout\ = (\decoder|tick_gen|stmanch\(29) & (\decoder|tick_gen|Add1~55\ $ (GND))) # (!\decoder|tick_gen|stmanch\(29) & (!\decoder|tick_gen|Add1~55\ & VCC))
-- \decoder|tick_gen|Add1~57\ = CARRY((\decoder|tick_gen|stmanch\(29) & !\decoder|tick_gen|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(29),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~55\,
	combout => \decoder|tick_gen|Add1~56_combout\,
	cout => \decoder|tick_gen|Add1~57\);

-- Location: LCFF_X17_Y9_N27
\decoder|tick_gen|stmanch[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add1~56_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(29));

-- Location: LCFF_X17_Y9_N29
\decoder|tick_gen|stmanch[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add1~58_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(30));

-- Location: LCCOMB_X16_Y9_N20
\decoder|tick_gen|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~0_combout\ = (!\decoder|tick_gen|stmanch\(31) & (!\decoder|tick_gen|stmanch\(28) & (!\decoder|tick_gen|stmanch\(29) & !\decoder|tick_gen|stmanch\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(31),
	datab => \decoder|tick_gen|stmanch\(28),
	datac => \decoder|tick_gen|stmanch\(29),
	datad => \decoder|tick_gen|stmanch\(30),
	combout => \decoder|tick_gen|Equal1~0_combout\);

-- Location: LCFF_X17_Y9_N17
\decoder|tick_gen|stmanch[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add1~46_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(24));

-- Location: LCCOMB_X16_Y9_N22
\decoder|tick_gen|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~1_combout\ = (!\decoder|tick_gen|stmanch\(26) & (!\decoder|tick_gen|stmanch\(27) & (!\decoder|tick_gen|stmanch\(24) & !\decoder|tick_gen|stmanch\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(26),
	datab => \decoder|tick_gen|stmanch\(27),
	datac => \decoder|tick_gen|stmanch\(24),
	datad => \decoder|tick_gen|stmanch\(25),
	combout => \decoder|tick_gen|Equal1~1_combout\);

-- Location: LCCOMB_X16_Y9_N24
\decoder|tick_gen|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~2_combout\ = (\decoder|tick_gen|Equal1~0_combout\ & \decoder|tick_gen|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Equal1~0_combout\,
	datad => \decoder|tick_gen|Equal1~1_combout\,
	combout => \decoder|tick_gen|Equal1~2_combout\);

-- Location: LCFF_X17_Y9_N11
\decoder|tick_gen|stmanch[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add1~40_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(21));

-- Location: LCFF_X17_Y9_N13
\decoder|tick_gen|stmanch[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add1~42_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(22));

-- Location: LCCOMB_X16_Y9_N10
\decoder|tick_gen|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~3_combout\ = (!\decoder|tick_gen|stmanch\(20) & (!\decoder|tick_gen|stmanch\(21) & (!\decoder|tick_gen|stmanch\(23) & !\decoder|tick_gen|stmanch\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(20),
	datab => \decoder|tick_gen|stmanch\(21),
	datac => \decoder|tick_gen|stmanch\(23),
	datad => \decoder|tick_gen|stmanch\(22),
	combout => \decoder|tick_gen|Equal1~3_combout\);

-- Location: LCFF_X17_Y10_N25
\decoder|tick_gen|stmanch[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Add1~22_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(12));

-- Location: LCCOMB_X17_Y10_N0
\decoder|tick_gen|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~5_combout\ = (!\decoder|tick_gen|stmanch\(15) & (!\decoder|tick_gen|stmanch\(13) & (!\decoder|tick_gen|stmanch\(12) & !\decoder|tick_gen|stmanch\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(15),
	datab => \decoder|tick_gen|stmanch\(13),
	datac => \decoder|tick_gen|stmanch\(12),
	datad => \decoder|tick_gen|stmanch\(14),
	combout => \decoder|tick_gen|Equal1~5_combout\);

-- Location: LCCOMB_X16_Y10_N30
\decoder|tick_gen|stmanch~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~2_combout\ = (\decoder|tick_gen|Equal1~8_combout\) # (!\decoder|tick_gen|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Equal1~8_combout\,
	datad => \decoder|tick_gen|Add1~20_combout\,
	combout => \decoder|tick_gen|stmanch~2_combout\);

-- Location: LCFF_X16_Y10_N31
\decoder|tick_gen|stmanch[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|stmanch~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(11));

-- Location: LCCOMB_X16_Y10_N14
\decoder|tick_gen|stmanch~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~4_combout\ = (\decoder|tick_gen|Equal1~8_combout\) # (!\decoder|tick_gen|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal1~8_combout\,
	datac => \decoder|tick_gen|Add1~14_combout\,
	combout => \decoder|tick_gen|stmanch~4_combout\);

-- Location: LCFF_X16_Y10_N15
\decoder|tick_gen|stmanch[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|stmanch~4_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|stmanch\(8));

-- Location: LCCOMB_X16_Y10_N12
\decoder|tick_gen|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~6_combout\ = (!\decoder|tick_gen|stmanch\(10) & (!\decoder|tick_gen|stmanch\(11) & (!\decoder|tick_gen|stmanch\(8) & !\decoder|tick_gen|stmanch\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(10),
	datab => \decoder|tick_gen|stmanch\(11),
	datac => \decoder|tick_gen|stmanch\(8),
	datad => \decoder|tick_gen|stmanch\(9),
	combout => \decoder|tick_gen|Equal1~6_combout\);

-- Location: LCCOMB_X16_Y10_N26
\decoder|tick_gen|Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~7_combout\ = (\decoder|tick_gen|Equal1~4_combout\ & (\decoder|tick_gen|Equal1~3_combout\ & (\decoder|tick_gen|Equal1~5_combout\ & \decoder|tick_gen|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal1~4_combout\,
	datab => \decoder|tick_gen|Equal1~3_combout\,
	datac => \decoder|tick_gen|Equal1~5_combout\,
	datad => \decoder|tick_gen|Equal1~6_combout\,
	combout => \decoder|tick_gen|Equal1~7_combout\);

-- Location: LCCOMB_X16_Y10_N20
\decoder|tick_gen|Equal1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~8_combout\ = (\decoder|tick_gen|Equal2~1_combout\ & (!\decoder|tick_gen|stmanch\(7) & (\decoder|tick_gen|Equal1~2_combout\ & \decoder|tick_gen|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal2~1_combout\,
	datab => \decoder|tick_gen|stmanch\(7),
	datac => \decoder|tick_gen|Equal1~2_combout\,
	datad => \decoder|tick_gen|Equal1~7_combout\,
	combout => \decoder|tick_gen|Equal1~8_combout\);

-- Location: LCFF_X16_Y10_N21
\decoder|tick_gen|tick_manch\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|tick_gen|Equal1~8_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|tick_gen|tick_manch~regout\);

-- Location: LCFF_X31_Y10_N15
\decoder|demanchester|State.suit00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|demanchester|Selector4~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_manch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|demanchester|State.suit00~regout\);

-- Location: LCCOMB_X31_Y10_N12
\decoder|demanchester|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector1~0_combout\ = (!\decoder|demanchester|State.Init~regout\ & \decoder|deburst|trame_deburst~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|State.Init~regout\,
	datac => \decoder|deburst|trame_deburst~regout\,
	combout => \decoder|demanchester|Selector1~0_combout\);

-- Location: LCFF_X31_Y10_N13
\decoder|demanchester|State.Start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|demanchester|Selector1~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_manch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|demanchester|State.Start~regout\);

-- Location: LCCOMB_X31_Y10_N18
\decoder|demanchester|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector7~0_combout\ = (!\decoder|deburst|trame_deburst~regout\ & ((\decoder|demanchester|State.valid1~regout\) # (\decoder|demanchester|State.Start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|demanchester|State.valid1~regout\,
	datac => \decoder|deburst|trame_deburst~regout\,
	datad => \decoder|demanchester|State.Start~regout\,
	combout => \decoder|demanchester|Selector7~0_combout\);

-- Location: LCFF_X31_Y10_N19
\decoder|demanchester|State.suit11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|demanchester|Selector7~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_manch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|demanchester|State.suit11~regout\);

-- Location: LCCOMB_X31_Y10_N6
\decoder|demanchester|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector5~0_combout\ = (\decoder|demanchester|State.valid0~regout\ & !\decoder|deburst|trame_deburst~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|State.valid0~regout\,
	datac => \decoder|deburst|trame_deburst~regout\,
	combout => \decoder|demanchester|Selector5~0_combout\);

-- Location: LCFF_X31_Y10_N7
\decoder|demanchester|State.suit01\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|demanchester|Selector5~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_manch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|demanchester|State.suit01~regout\);

-- Location: LCCOMB_X31_Y10_N2
\decoder|demanchester|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector3~0_combout\ = (\decoder|deburst|trame_deburst~regout\ & ((\decoder|demanchester|State.suit11~regout\) # (\decoder|demanchester|State.suit01~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|demanchester|State.suit11~regout\,
	datac => \decoder|deburst|trame_deburst~regout\,
	datad => \decoder|demanchester|State.suit01~regout\,
	combout => \decoder|demanchester|Selector3~0_combout\);

-- Location: LCFF_X31_Y10_N3
\decoder|demanchester|State.valid1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|demanchester|Selector3~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_manch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|demanchester|State.valid1~regout\);

-- Location: LCCOMB_X31_Y10_N10
\decoder|demanchester|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector6~0_combout\ = (\decoder|deburst|trame_deburst~regout\ & ((\decoder|demanchester|State.valid1~regout\) # (\decoder|demanchester|State.Start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|demanchester|State.valid1~regout\,
	datac => \decoder|deburst|trame_deburst~regout\,
	datad => \decoder|demanchester|State.Start~regout\,
	combout => \decoder|demanchester|Selector6~0_combout\);

-- Location: LCFF_X31_Y10_N11
\decoder|demanchester|State.suit10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|demanchester|Selector6~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_manch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|demanchester|State.suit10~regout\);

-- Location: LCCOMB_X31_Y10_N24
\decoder|demanchester|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector2~0_combout\ = (!\decoder|deburst|trame_deburst~regout\ & ((\decoder|demanchester|State.suit00~regout\) # (\decoder|demanchester|State.suit10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|demanchester|State.suit00~regout\,
	datac => \decoder|deburst|trame_deburst~regout\,
	datad => \decoder|demanchester|State.suit10~regout\,
	combout => \decoder|demanchester|Selector2~0_combout\);

-- Location: LCFF_X31_Y10_N25
\decoder|demanchester|State.valid0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|demanchester|Selector2~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \decoder|tick_gen|tick_manch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|demanchester|State.valid0~regout\);

-- Location: LCCOMB_X31_Y10_N28
\decoder|demanchester|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|demanchester|WideOr0~0_combout\ = (\decoder|demanchester|State.Init~regout\ & (!\decoder|demanchester|State.suit00~regout\ & (!\decoder|demanchester|State.valid0~regout\ & !\decoder|demanchester|State.suit01~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|State.Init~regout\,
	datab => \decoder|demanchester|State.suit00~regout\,
	datac => \decoder|demanchester|State.valid0~regout\,
	datad => \decoder|demanchester|State.suit01~regout\,
	combout => \decoder|demanchester|WideOr0~0_combout\);

-- Location: LCCOMB_X34_Y9_N2
\decoder|decoder|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector6~3_combout\ = (\decoder|decoder|EF.State_Init~regout\ & (\decoder|tick_gen|tick_bit~regout\ & !\decoder|demanchester|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Init~regout\,
	datab => \decoder|tick_gen|tick_bit~regout\,
	datac => \decoder|demanchester|WideOr0~0_combout\,
	combout => \decoder|decoder|Selector6~3_combout\);

-- Location: LCCOMB_X34_Y10_N0
\decoder|decoder|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector6~2_combout\ = (\decoder|decoder|Selector4~4_combout\ & ((\decoder|decoder|Selector4~8_combout\ & (\decoder|decoder|Equal0~10_combout\)) # (!\decoder|decoder|Selector4~8_combout\ & ((\decoder|decoder|Selector6~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Selector4~4_combout\,
	datab => \decoder|decoder|Equal0~10_combout\,
	datac => \decoder|decoder|Selector4~8_combout\,
	datad => \decoder|decoder|Selector6~3_combout\,
	combout => \decoder|decoder|Selector6~2_combout\);

-- Location: LCFF_X34_Y10_N1
\decoder|decoder|EF.State_Error\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Selector6~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|EF.State_Error~regout\);

-- Location: LCCOMB_X34_Y10_N14
\decoder|decoder|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector2~2_combout\ = (!\decoder|decoder|EF.State_Send~regout\ & (!\decoder|decoder|EF.State_Error~regout\ & ((\decoder|decoder|EF.State_Begin~regout\) # (\decoder|demanchester|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Send~regout\,
	datab => \decoder|decoder|EF.State_Error~regout\,
	datac => \decoder|decoder|EF.State_Begin~regout\,
	datad => \decoder|demanchester|WideOr0~0_combout\,
	combout => \decoder|decoder|Selector2~2_combout\);

-- Location: LCFF_X34_Y10_N15
\decoder|decoder|EF.State_Begin\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Selector2~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|EF.State_Begin~regout\);

-- Location: LCCOMB_X34_Y10_N28
\decoder|decoder|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|process_0~0_combout\ = ((!\decoder|decoder|Equal0~9_combout\ & !\decoder|decoder|Equal0~4_combout\)) # (!\decoder|demanchester|State.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|State.Init~regout\,
	datab => \decoder|decoder|Equal0~9_combout\,
	datad => \decoder|decoder|Equal0~4_combout\,
	combout => \decoder|decoder|process_0~0_combout\);

-- Location: LCCOMB_X34_Y10_N30
\decoder|decoder|EF~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|EF~14_combout\ = (\decoder|decoder|Selector4~4_combout\ & (!\decoder|decoder|Selector12~0_combout\ & ((!\decoder|decoder|process_0~0_combout\) # (!\decoder|decoder|Selector4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Selector4~4_combout\,
	datab => \decoder|decoder|Selector12~0_combout\,
	datac => \decoder|decoder|Selector4~5_combout\,
	datad => \decoder|decoder|process_0~0_combout\,
	combout => \decoder|decoder|EF~14_combout\);

-- Location: LCCOMB_X34_Y10_N8
\decoder|decoder|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector3~2_combout\ = (\decoder|decoder|EF~14_combout\ & ((\decoder|decoder|EF.State_Init~regout\) # ((\decoder|demanchester|WideOr0~0_combout\ & !\decoder|decoder|EF.State_Begin~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|WideOr0~0_combout\,
	datab => \decoder|decoder|EF.State_Begin~regout\,
	datac => \decoder|decoder|EF.State_Init~regout\,
	datad => \decoder|decoder|EF~14_combout\,
	combout => \decoder|decoder|Selector3~2_combout\);

-- Location: LCFF_X34_Y10_N9
\decoder|decoder|EF.State_Init\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Selector3~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|EF.State_Init~regout\);

-- Location: LCCOMB_X34_Y10_N24
\decoder|decoder|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector5~0_combout\ = (\decoder|decoder|Selector4~4_combout\ & (!\decoder|decoder|Equal0~10_combout\ & (\decoder|decoder|Selector4~5_combout\ & \decoder|decoder|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Selector4~4_combout\,
	datab => \decoder|decoder|Equal0~10_combout\,
	datac => \decoder|decoder|Selector4~5_combout\,
	datad => \decoder|decoder|process_0~0_combout\,
	combout => \decoder|decoder|Selector5~0_combout\);

-- Location: LCFF_X34_Y10_N25
\decoder|decoder|EF.State_Send\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Selector5~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|EF.State_Send~regout\);

-- Location: LCCOMB_X34_Y10_N6
\decoder|decoder|Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector4~4_combout\ = (!\decoder|decoder|EF.State_Send~regout\ & !\decoder|decoder|EF.State_Error~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Send~regout\,
	datad => \decoder|decoder|EF.State_Error~regout\,
	combout => \decoder|decoder|Selector4~4_combout\);

-- Location: LCCOMB_X34_Y10_N26
\decoder|decoder|Selector4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector4~9_combout\ = (\decoder|demanchester|WideOr0~0_combout\ & (\decoder|decoder|EF.State_Init~regout\ & (\decoder|tick_gen|tick_bit~regout\ & \decoder|decoder|Selector4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|WideOr0~0_combout\,
	datab => \decoder|decoder|EF.State_Init~regout\,
	datac => \decoder|tick_gen|tick_bit~regout\,
	datad => \decoder|decoder|Selector4~4_combout\,
	combout => \decoder|decoder|Selector4~9_combout\);

-- Location: LCCOMB_X34_Y10_N2
\decoder|decoder|Selector4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector4~7_combout\ = (\decoder|decoder|Selector4~9_combout\) # ((!\decoder|decoder|Selector4~6_combout\ & (\decoder|decoder|EF.State_Extract~regout\ & \decoder|decoder|EF~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Selector4~6_combout\,
	datab => \decoder|decoder|Selector4~9_combout\,
	datac => \decoder|decoder|EF.State_Extract~regout\,
	datad => \decoder|decoder|EF~14_combout\,
	combout => \decoder|decoder|Selector4~7_combout\);

-- Location: LCFF_X34_Y10_N3
\decoder|decoder|EF.State_Extract\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Selector4~7_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|EF.State_Extract~regout\);

-- Location: LCCOMB_X37_Y9_N0
\decoder|decoder|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~2_combout\ = (!\decoder|decoder|EF.State_Extract~regout\) # (!\decoder|decoder|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|Add0~0_combout\,
	datad => \decoder|decoder|EF.State_Extract~regout\,
	combout => \decoder|decoder|Add0~2_combout\);

-- Location: LCFF_X36_Y9_N11
\decoder|decoder|i[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \decoder|decoder|Add0~2_combout\,
	sload => VCC,
	ena => \decoder|decoder|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|i\(0));

-- Location: LCCOMB_X33_Y8_N2
\decoder|decoder|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~0_combout\ = (\decoder|decoder|i\(2) & (\decoder|decoder|i\(0) & (\decoder|decoder|i\(1) & !\decoder|decoder|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(2),
	datab => \decoder|decoder|i\(0),
	datac => \decoder|decoder|i\(1),
	datad => \decoder|decoder|i\(3),
	combout => \decoder|decoder|Decoder0~0_combout\);

-- Location: LCCOMB_X33_Y8_N28
\decoder|decoder|data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~0_combout\ = (\decoder|tick_gen|tick_bit~regout\ & ((\decoder|decoder|Decoder0~0_combout\ & (\decoder|demanchester|WideOr0~0_combout\)) # (!\decoder|decoder|Decoder0~0_combout\ & ((\decoder|decoder|data\(6)))))) # 
-- (!\decoder|tick_gen|tick_bit~regout\ & (((\decoder|decoder|data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|WideOr0~0_combout\,
	datab => \decoder|tick_gen|tick_bit~regout\,
	datac => \decoder|decoder|data\(6),
	datad => \decoder|decoder|Decoder0~0_combout\,
	combout => \decoder|decoder|data~0_combout\);

-- Location: LCCOMB_X33_Y8_N16
\decoder|decoder|data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~1_combout\ = (\decoder|decoder|data~0_combout\) # ((\decoder|decoder|data\(6) & \decoder|decoder|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|data~0_combout\,
	datac => \decoder|decoder|data\(6),
	datad => \decoder|decoder|process_0~0_combout\,
	combout => \decoder|decoder|data~1_combout\);

-- Location: LCCOMB_X34_Y9_N14
\decoder|decoder|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector7~0_combout\ = (\decoder|decoder|EF.State_Extract~regout\) # ((\decoder|tick_gen|tick_bit~regout\ & \decoder|decoder|EF.State_Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|tick_bit~regout\,
	datac => \decoder|decoder|EF.State_Init~regout\,
	datad => \decoder|decoder|EF.State_Extract~regout\,
	combout => \decoder|decoder|Selector7~0_combout\);

-- Location: LCFF_X33_Y8_N17
\decoder|decoder|data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|data~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~regout\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|data\(6));

-- Location: LCCOMB_X34_Y8_N18
\decoder|decoder|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~1_combout\ = (\decoder|decoder|i\(1) & (\decoder|decoder|i\(2) & (!\decoder|decoder|i\(3) & !\decoder|decoder|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(1),
	datab => \decoder|decoder|i\(2),
	datac => \decoder|decoder|i\(3),
	datad => \decoder|decoder|i\(0),
	combout => \decoder|decoder|Decoder0~1_combout\);

-- Location: LCCOMB_X34_Y8_N28
\decoder|decoder|data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~2_combout\ = (\decoder|tick_gen|tick_bit~regout\ & ((\decoder|decoder|Decoder0~1_combout\ & (\decoder|demanchester|WideOr0~0_combout\)) # (!\decoder|decoder|Decoder0~1_combout\ & ((\decoder|decoder|data\(7)))))) # 
-- (!\decoder|tick_gen|tick_bit~regout\ & (((\decoder|decoder|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|WideOr0~0_combout\,
	datab => \decoder|tick_gen|tick_bit~regout\,
	datac => \decoder|decoder|data\(7),
	datad => \decoder|decoder|Decoder0~1_combout\,
	combout => \decoder|decoder|data~2_combout\);

-- Location: LCCOMB_X34_Y8_N16
\decoder|decoder|data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~3_combout\ = (\decoder|decoder|data~2_combout\) # ((\decoder|decoder|data\(7) & \decoder|decoder|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|data~2_combout\,
	datac => \decoder|decoder|data\(7),
	datad => \decoder|decoder|process_0~0_combout\,
	combout => \decoder|decoder|data~3_combout\);

-- Location: LCFF_X34_Y8_N17
\decoder|decoder|data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|data~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~regout\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|data\(7));

-- Location: LCCOMB_X33_Y8_N30
\decoder|decoder|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~2_combout\ = (!\decoder|decoder|i\(2) & (\decoder|decoder|i\(0) & (!\decoder|decoder|i\(1) & \decoder|decoder|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(2),
	datab => \decoder|decoder|i\(0),
	datac => \decoder|decoder|i\(1),
	datad => \decoder|decoder|i\(3),
	combout => \decoder|decoder|Decoder0~2_combout\);

-- Location: LCCOMB_X33_Y8_N8
\decoder|decoder|data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~4_combout\ = (\decoder|decoder|Decoder0~2_combout\ & ((\decoder|tick_gen|tick_bit~regout\ & ((\decoder|demanchester|WideOr0~0_combout\))) # (!\decoder|tick_gen|tick_bit~regout\ & (\decoder|decoder|data\(8))))) # 
-- (!\decoder|decoder|Decoder0~2_combout\ & (\decoder|decoder|data\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|data\(8),
	datab => \decoder|decoder|Decoder0~2_combout\,
	datac => \decoder|tick_gen|tick_bit~regout\,
	datad => \decoder|demanchester|WideOr0~0_combout\,
	combout => \decoder|decoder|data~4_combout\);

-- Location: LCCOMB_X33_Y8_N6
\decoder|decoder|data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~5_combout\ = (\decoder|decoder|data~4_combout\) # ((\decoder|decoder|data\(8) & \decoder|decoder|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|data~4_combout\,
	datac => \decoder|decoder|data\(8),
	datad => \decoder|decoder|process_0~0_combout\,
	combout => \decoder|decoder|data~5_combout\);

-- Location: LCFF_X33_Y8_N7
\decoder|decoder|data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|data~5_combout\,
	aclr => \rst~clkctrl_outclk\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~regout\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|data\(8));

-- Location: LCCOMB_X34_Y8_N10
\decoder|decoder|data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~7_combout\ = (\decoder|decoder|data~6_combout\) # ((\decoder|decoder|data\(9) & \decoder|decoder|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|data~6_combout\,
	datac => \decoder|decoder|data\(9),
	datad => \decoder|decoder|process_0~0_combout\,
	combout => \decoder|decoder|data~7_combout\);

-- Location: LCFF_X34_Y8_N11
\decoder|decoder|data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|data~7_combout\,
	aclr => \rst~clkctrl_outclk\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~regout\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|data\(9));

-- Location: LCCOMB_X33_Y8_N14
\decoder|decoder|Decoder0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~4_combout\ = (!\decoder|decoder|i\(2) & (\decoder|decoder|i\(0) & (\decoder|decoder|i\(1) & \decoder|decoder|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(2),
	datab => \decoder|decoder|i\(0),
	datac => \decoder|decoder|i\(1),
	datad => \decoder|decoder|i\(3),
	combout => \decoder|decoder|Decoder0~4_combout\);

-- Location: LCCOMB_X34_Y8_N26
\decoder|decoder|data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~8_combout\ = (\decoder|tick_gen|tick_bit~regout\ & ((\decoder|decoder|Decoder0~4_combout\ & (\decoder|demanchester|WideOr0~0_combout\)) # (!\decoder|decoder|Decoder0~4_combout\ & ((\decoder|decoder|data\(10)))))) # 
-- (!\decoder|tick_gen|tick_bit~regout\ & (((\decoder|decoder|data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|WideOr0~0_combout\,
	datab => \decoder|decoder|data\(10),
	datac => \decoder|tick_gen|tick_bit~regout\,
	datad => \decoder|decoder|Decoder0~4_combout\,
	combout => \decoder|decoder|data~8_combout\);

-- Location: LCCOMB_X34_Y8_N0
\decoder|decoder|data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~9_combout\ = (\decoder|decoder|data~8_combout\) # ((\decoder|decoder|data\(10) & \decoder|decoder|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|data~8_combout\,
	datac => \decoder|decoder|data\(10),
	datad => \decoder|decoder|process_0~0_combout\,
	combout => \decoder|decoder|data~9_combout\);

-- Location: LCFF_X34_Y8_N1
\decoder|decoder|data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|data~9_combout\,
	aclr => \rst~clkctrl_outclk\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~regout\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|data\(10));

-- Location: LCCOMB_X34_Y9_N28
\decoder|decoder|Decoder0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~5_combout\ = (!\decoder|decoder|i\(3) & (\decoder|decoder|i\(0) & (!\decoder|decoder|i\(1) & !\decoder|decoder|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(3),
	datab => \decoder|decoder|i\(0),
	datac => \decoder|decoder|i\(1),
	datad => \decoder|decoder|i\(2),
	combout => \decoder|decoder|Decoder0~5_combout\);

-- Location: LCCOMB_X34_Y10_N18
\decoder|decoder|data~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~10_combout\ = (\decoder|decoder|Decoder0~5_combout\ & ((\decoder|tick_gen|tick_bit~regout\ & (\decoder|demanchester|WideOr0~0_combout\)) # (!\decoder|tick_gen|tick_bit~regout\ & ((\decoder|decoder|data\(0)))))) # 
-- (!\decoder|decoder|Decoder0~5_combout\ & (((\decoder|decoder|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|WideOr0~0_combout\,
	datab => \decoder|decoder|Decoder0~5_combout\,
	datac => \decoder|tick_gen|tick_bit~regout\,
	datad => \decoder|decoder|data\(0),
	combout => \decoder|decoder|data~10_combout\);

-- Location: LCCOMB_X34_Y10_N12
\decoder|decoder|data~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~11_combout\ = (\decoder|decoder|data~10_combout\) # ((\decoder|decoder|data\(0) & \decoder|decoder|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|data~10_combout\,
	datac => \decoder|decoder|data\(0),
	datad => \decoder|decoder|process_0~0_combout\,
	combout => \decoder|decoder|data~11_combout\);

-- Location: LCFF_X34_Y10_N13
\decoder|decoder|data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|data~11_combout\,
	aclr => \rst~clkctrl_outclk\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~regout\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|data\(0));

-- Location: LCCOMB_X33_Y8_N4
\decoder|decoder|Decoder0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~6_combout\ = (!\decoder|decoder|i\(2) & (!\decoder|decoder|i\(0) & (!\decoder|decoder|i\(1) & !\decoder|decoder|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(2),
	datab => \decoder|decoder|i\(0),
	datac => \decoder|decoder|i\(1),
	datad => \decoder|decoder|i\(3),
	combout => \decoder|decoder|Decoder0~6_combout\);

-- Location: LCCOMB_X33_Y8_N26
\decoder|decoder|data~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~12_combout\ = (\decoder|decoder|Decoder0~6_combout\ & ((\decoder|tick_gen|tick_bit~regout\ & (\decoder|demanchester|WideOr0~0_combout\)) # (!\decoder|tick_gen|tick_bit~regout\ & ((\decoder|decoder|data\(1)))))) # 
-- (!\decoder|decoder|Decoder0~6_combout\ & (((\decoder|decoder|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|WideOr0~0_combout\,
	datab => \decoder|decoder|Decoder0~6_combout\,
	datac => \decoder|tick_gen|tick_bit~regout\,
	datad => \decoder|decoder|data\(1),
	combout => \decoder|decoder|data~12_combout\);

-- Location: LCCOMB_X33_Y8_N0
\decoder|decoder|data~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~13_combout\ = (\decoder|decoder|data~12_combout\) # ((\decoder|decoder|data\(1) & \decoder|decoder|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|data~12_combout\,
	datac => \decoder|decoder|data\(1),
	datad => \decoder|decoder|process_0~0_combout\,
	combout => \decoder|decoder|data~13_combout\);

-- Location: LCFF_X33_Y8_N1
\decoder|decoder|data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|data~13_combout\,
	aclr => \rst~clkctrl_outclk\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~regout\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|data\(1));

-- Location: LCCOMB_X34_Y8_N4
\decoder|decoder|Decoder0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~7_combout\ = (\decoder|decoder|i\(1) & (!\decoder|decoder|i\(2) & (!\decoder|decoder|i\(3) & \decoder|decoder|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(1),
	datab => \decoder|decoder|i\(2),
	datac => \decoder|decoder|i\(3),
	datad => \decoder|decoder|i\(0),
	combout => \decoder|decoder|Decoder0~7_combout\);

-- Location: LCCOMB_X34_Y8_N14
\decoder|decoder|data~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~14_combout\ = (\decoder|decoder|Decoder0~7_combout\ & ((\decoder|tick_gen|tick_bit~regout\ & (\decoder|demanchester|WideOr0~0_combout\)) # (!\decoder|tick_gen|tick_bit~regout\ & ((\decoder|decoder|data\(2)))))) # 
-- (!\decoder|decoder|Decoder0~7_combout\ & (((\decoder|decoder|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|WideOr0~0_combout\,
	datab => \decoder|decoder|Decoder0~7_combout\,
	datac => \decoder|tick_gen|tick_bit~regout\,
	datad => \decoder|decoder|data\(2),
	combout => \decoder|decoder|data~14_combout\);

-- Location: LCCOMB_X34_Y8_N22
\decoder|decoder|data~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~15_combout\ = (\decoder|decoder|data~14_combout\) # ((\decoder|decoder|data\(2) & \decoder|decoder|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|data~14_combout\,
	datac => \decoder|decoder|data\(2),
	datad => \decoder|decoder|process_0~0_combout\,
	combout => \decoder|decoder|data~15_combout\);

-- Location: LCFF_X34_Y8_N23
\decoder|decoder|data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|data~15_combout\,
	aclr => \rst~clkctrl_outclk\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~regout\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|data\(2));

-- Location: LCCOMB_X33_Y8_N18
\decoder|decoder|data~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~17_combout\ = (\decoder|decoder|data~16_combout\) # ((\decoder|decoder|data\(3) & \decoder|decoder|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|data~16_combout\,
	datac => \decoder|decoder|data\(3),
	datad => \decoder|decoder|process_0~0_combout\,
	combout => \decoder|decoder|data~17_combout\);

-- Location: LCFF_X33_Y8_N19
\decoder|decoder|data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|data~17_combout\,
	aclr => \rst~clkctrl_outclk\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~regout\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|data\(3));

-- Location: LCCOMB_X33_Y8_N22
\decoder|decoder|data~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~18_combout\ = (\decoder|decoder|Decoder0~9_combout\ & ((\decoder|tick_gen|tick_bit~regout\ & ((\decoder|demanchester|WideOr0~0_combout\))) # (!\decoder|tick_gen|tick_bit~regout\ & (\decoder|decoder|data\(4))))) # 
-- (!\decoder|decoder|Decoder0~9_combout\ & (\decoder|decoder|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~9_combout\,
	datab => \decoder|decoder|data\(4),
	datac => \decoder|tick_gen|tick_bit~regout\,
	datad => \decoder|demanchester|WideOr0~0_combout\,
	combout => \decoder|decoder|data~18_combout\);

-- Location: LCCOMB_X33_Y8_N12
\decoder|decoder|data~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~19_combout\ = (\decoder|decoder|data~18_combout\) # ((\decoder|decoder|data\(4) & \decoder|decoder|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|data~18_combout\,
	datac => \decoder|decoder|data\(4),
	datad => \decoder|decoder|process_0~0_combout\,
	combout => \decoder|decoder|data~19_combout\);

-- Location: LCFF_X33_Y8_N13
\decoder|decoder|data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|data~19_combout\,
	aclr => \rst~clkctrl_outclk\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~regout\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|data\(4));

-- Location: LCCOMB_X34_Y8_N8
\decoder|decoder|data~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~21_combout\ = (\decoder|decoder|data~20_combout\) # ((\decoder|decoder|data\(5) & \decoder|decoder|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|data~20_combout\,
	datac => \decoder|decoder|data\(5),
	datad => \decoder|decoder|process_0~0_combout\,
	combout => \decoder|decoder|data~21_combout\);

-- Location: LCFF_X34_Y8_N9
\decoder|decoder|data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|data~21_combout\,
	aclr => \rst~clkctrl_outclk\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~regout\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|data\(5));

-- Location: LCCOMB_X35_Y10_N16
\decoder|decoder|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector1~0_combout\ = (\decoder|decoder|EF.State_Error~regout\) # ((\decoder|decoder|error_sig~regout\ & \decoder|decoder|EF.State_Begin~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Error~regout\,
	datac => \decoder|decoder|error_sig~regout\,
	datad => \decoder|decoder|EF.State_Begin~regout\,
	combout => \decoder|decoder|Selector1~0_combout\);

-- Location: LCFF_X35_Y10_N17
\decoder|decoder|error_sig\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Selector1~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|error_sig~regout\);

-- Location: LCCOMB_X34_Y8_N20
\decoder|decoder|Decoder0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~11_combout\ = (\decoder|decoder|i\(1) & (!\decoder|decoder|i\(2) & (\decoder|decoder|i\(3) & !\decoder|decoder|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(1),
	datab => \decoder|decoder|i\(2),
	datac => \decoder|decoder|i\(3),
	datad => \decoder|decoder|i\(0),
	combout => \decoder|decoder|Decoder0~11_combout\);

-- Location: LCCOMB_X34_Y8_N2
\decoder|decoder|data~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~22_combout\ = (\decoder|tick_gen|tick_bit~regout\ & ((\decoder|decoder|Decoder0~11_combout\ & (\decoder|demanchester|WideOr0~0_combout\)) # (!\decoder|decoder|Decoder0~11_combout\ & ((\decoder|decoder|data\(11)))))) # 
-- (!\decoder|tick_gen|tick_bit~regout\ & (((\decoder|decoder|data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|WideOr0~0_combout\,
	datab => \decoder|tick_gen|tick_bit~regout\,
	datac => \decoder|decoder|Decoder0~11_combout\,
	datad => \decoder|decoder|data\(11),
	combout => \decoder|decoder|data~22_combout\);

-- Location: LCCOMB_X34_Y10_N10
\decoder|decoder|data~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|data~23_combout\ = (\decoder|decoder|data~22_combout\) # ((\decoder|decoder|data\(11) & \decoder|decoder|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|data~22_combout\,
	datac => \decoder|decoder|data\(11),
	datad => \decoder|decoder|process_0~0_combout\,
	combout => \decoder|decoder|data~23_combout\);

-- Location: LCFF_X34_Y10_N11
\decoder|decoder|data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|data~23_combout\,
	aclr => \rst~clkctrl_outclk\,
	sclr => \decoder|decoder|ALT_INV_EF.State_Extract~regout\,
	ena => \decoder|decoder|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|data\(11));

-- Location: LCCOMB_X35_Y10_N18
\decoder|decoder|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector0~0_combout\ = (\decoder|decoder|EF.State_Send~regout\) # ((\decoder|decoder|enable~regout\ & \decoder|decoder|EF.State_Begin~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Send~regout\,
	datac => \decoder|decoder|enable~regout\,
	datad => \decoder|decoder|EF.State_Begin~regout\,
	combout => \decoder|decoder|Selector0~0_combout\);

-- Location: LCFF_X35_Y10_N19
\decoder|decoder|enable\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \decoder|decoder|Selector0~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decoder|decoder|enable~regout\);

-- Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
\signal_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_signal_in,
	combout => \signal_in~combout\);

-- Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Address_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder|decoder|data\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Address_out(0));

-- Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Address_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder|decoder|data\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Address_out(1));

-- Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Address_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder|decoder|data\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Address_out(2));

-- Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Address_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder|decoder|data\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Address_out(3));

-- Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Address_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder|decoder|data\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Address_out(4));

-- Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Cmd_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder|decoder|data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Cmd_out(0));

-- Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Cmd_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder|decoder|data\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Cmd_out(1));

-- Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Cmd_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder|decoder|data\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Cmd_out(2));

-- Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Cmd_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder|decoder|data\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Cmd_out(3));

-- Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Cmd_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder|decoder|data\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Cmd_out(4));

-- Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Cmd_out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder|decoder|data\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Cmd_out(5));

-- Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\error_sig~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder|decoder|error_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_error_sig);

-- Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\toggle~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder|decoder|data\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_toggle);

-- Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\go_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Go~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_go_out);

-- Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\enable~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decoder|decoder|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_enable);

-- Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Tx_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \encoder|Tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Tx_out);

-- Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\signal_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \signal_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_signal_out);
END structure;


