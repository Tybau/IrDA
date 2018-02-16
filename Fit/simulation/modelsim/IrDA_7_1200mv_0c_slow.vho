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

-- DATE "02/16/2018 15:53:35"

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
-- Address_in[4]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_in[3]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \encoder|MAE_emission|clear~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder|decoder|Add0~66_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~72_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~78_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~81_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~84_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~2_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~12_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~16_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~20_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~22_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~26_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~30_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~38_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~40_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~48_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~57\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~58_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~59\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~60_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~61\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~62_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[6]~3_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[8]~5_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[11]~8_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[13]~10_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[15]~12_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[19]~16_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[20]~17_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[30]~27_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~12_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~16_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~55\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~56_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~57\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~58_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~59\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~60_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~61\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~62_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~12_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~16_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~22_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~30_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~38_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~54_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~12_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~22_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~38_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~42_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~54_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~59\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~60_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~61\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~62_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~1\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~3\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~5\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~7\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~9\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~11\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~12_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~13\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~14_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~15\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~16_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~17\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~18_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~19\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~20_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~21\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~22_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~23\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~24_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~25\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~26_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~27\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~28_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~29\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~30_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~31\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~32_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~33\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~34_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~35\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~36_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~37\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~38_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~39\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~40_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~41\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~42_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~43\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~44_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~45\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~46_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~47\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~48_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~49\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~50_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~51\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~52_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~53\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~54_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~55\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~56_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~57\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~58_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~59\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~60_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~61\ : std_logic;
SIGNAL \encoder|TickGenerator|Add1~62_combout\ : std_logic;
SIGNAL \decoder|deburst|EP.E0~q\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~12_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~24_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~36_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~42_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~52_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~59\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~60_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~6_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~8_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~12_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~24_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~31\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~32_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~33\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~34_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~35\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~36_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~37\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~38_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~39\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~40_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~41\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~42_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~43\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~44_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~45\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~46_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~47\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~48_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~49\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~50_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~51\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~52_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~53\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~54_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~55\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~56_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~57\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~58_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~59\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~60_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~61\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~62_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~8_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~10_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~12_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~26_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~30_combout\ : std_logic;
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
SIGNAL \decoder|deburst|EP.E1~q\ : std_logic;
SIGNAL \encoder|ManchesterGenerator|manch~q\ : std_logic;
SIGNAL \decoder|decoder|Equal0~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~7_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~5_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~6_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~7_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~9_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~10_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~11_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~3_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|tick_manch~q\ : std_logic;
SIGNAL \encoder|ManchesterGenerator|manch~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~4_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~5_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector5~2_combout\ : std_logic;
SIGNAL \decoder|demanchester|comb~1_combout\ : std_logic;
SIGNAL \decoder|decoder|EF~17_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~5_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~68_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~74_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~80_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~83_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~93_combout\ : std_logic;
SIGNAL \decoder|decoder|EF~24_combout\ : std_logic;
SIGNAL \encoder|BurstGenerator|state~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~7_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~6_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector39~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector8~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector8~1_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector33~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector31~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector28~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector26~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector24~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector20~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector19~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector9~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~7_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~9_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal1~10_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|toggle~q\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~7_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~7_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stmanch~8_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|toggle~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~1_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~3_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~10_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~5_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~8_combout\ : std_logic;
SIGNAL \decoder|deburst|EP.E3~q\ : std_logic;
SIGNAL \decoder|deburst|Selector0~0_combout\ : std_logic;
SIGNAL \decoder|deburst|EP~8_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~3_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst~1_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst~4_combout\ : std_logic;
SIGNAL \decoder|deburst|EP.E2~q\ : std_logic;
SIGNAL \decoder|deburst|EP~9_combout\ : std_logic;
SIGNAL \decoder|deburst|EP~10_combout\ : std_logic;
SIGNAL \decoder|deburst|EP~11_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|reg[11]~1_combout\ : std_logic;
SIGNAL \decoder|demanchester|Is_Valid~combout\ : std_logic;
SIGNAL \Address_in[3]~input_o\ : std_logic;
SIGNAL \Address_in[0]~input_o\ : std_logic;
SIGNAL \Cmd_in[1]~input_o\ : std_logic;
SIGNAL \Cmd_in[2]~input_o\ : std_logic;
SIGNAL \Cmd_in[0]~input_o\ : std_logic;
SIGNAL \Cmd_in[3]~input_o\ : std_logic;
SIGNAL \encoder|TickGenerator|tick_manch~feeder_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|reg[6]~feeder_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|reg[1]~feeder_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|reg[2]~feeder_combout\ : std_logic;
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
SIGNAL \decoder|decoder|Add0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~1\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst[1]~10_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~3\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~5\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~6_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst~3_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst~5_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~9_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~7\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~9\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~11\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~13\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~14_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~15\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~16_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stburst~0_combout\ : std_logic;
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
SIGNAL \decoder|tick_gen|Add0~37\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~39\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~40_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~41\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~43\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~44_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~42_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~45\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~46_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~47\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~48_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~49\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~50_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~51\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~52_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~1_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~38_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~3_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~6_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add0~22_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~7_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal0~10_combout\ : std_logic;
SIGNAL \decoder|tick_gen|tick_burst~q\ : std_logic;
SIGNAL \decoder|deburst|trame_deburst~0_combout\ : std_logic;
SIGNAL \encoder|BurstGenerator|state[0]~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit[0]~feeder_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~1\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~3\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~5\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~7\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~9\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~11\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~13\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~15\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~16_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~17\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~18_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~19\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~20_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~21\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~23\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~24_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~25\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~26_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~27\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~28_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~29\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~31\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~32_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~33\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~34_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~35\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~36_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~37\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~39\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~40_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~41\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~43\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~45\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~46_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~44_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~30_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~14_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stbit~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~7_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~9_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~47\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~48_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~49\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~50_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~51\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~52_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~53\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~55\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~56_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~57\ : std_logic;
SIGNAL \encoder|TickGenerator|Add2~58_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal2~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|tick_bit~feeder_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|tick_bit~q\ : std_logic;
SIGNAL \encoder|MAE_emission|i[1]~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~1\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~3\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~5\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~7\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~9\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~11\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~13\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~14_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~9_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~11_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~7_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~9_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~15\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~16_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~17\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~18_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~19\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~20_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~21\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~22_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~7_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~23\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~25\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~26_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~27\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~28_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~29\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~30_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~31\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~32_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~33\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~34_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~35\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~37\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~38_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|sttrame~1_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~39\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~41\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~43\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~44_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~40_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~45\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~46_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~47\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~48_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~49\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~50_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~51\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~53\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~54_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~55\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~56_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~57\ : std_logic;
SIGNAL \encoder|TickGenerator|Add3~58_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~0_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal3~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|tick_trame~feeder_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|tick_trame~q\ : std_logic;
SIGNAL \encoder|MAE_emission|EF~19_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|EF~17_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|EF.State_Close~q\ : std_logic;
SIGNAL \Go~input_o\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector2~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector2~1_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|EF.State_Init~q\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector38~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~1\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~3\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~4_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector37~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[2]~28_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~5\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~7\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~8_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[4]~1_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector35~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~9\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~10_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[5]~2_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector34~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~11\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~13\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~14_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[7]~4_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector32~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~15\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~17\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~18_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[9]~6_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector30~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~2_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector39~1_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~6_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector36~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~1_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~4_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|process_0~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[10]~7_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector29~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~19\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~21\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~23\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~24_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[12]~9_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector27~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~25\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~27\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~28_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[14]~11_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector25~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~29\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~31\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~33\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~34_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[17]~14_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector22~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~35\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~36_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[18]~15_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector21~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~37\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~39\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~41\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~42_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[21]~18_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector18~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~43\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~44_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[22]~19_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector17~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~45\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~47\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~49\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~50_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[25]~22_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector14~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[24]~21_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector15~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~46_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[23]~20_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector16~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~7_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~32_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[16]~13_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector23~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~5_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~51\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~52_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[26]~23_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector13~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~53\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~54_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[27]~24_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector12~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[29]~26_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector10~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~55\ : std_logic;
SIGNAL \encoder|MAE_emission|Add0~56_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|i[28]~25_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector11~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~8_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~9_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Equal0~10_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|EF~14_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|EF~15_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|EF.State_Send~q\ : std_logic;
SIGNAL \encoder|MAE_emission|EF~18_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|EF.State_Begin~q\ : std_logic;
SIGNAL \encoder|MAE_emission|EF~16_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|EF.State_Clear~q\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector7~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|clear~q\ : std_logic;
SIGNAL \encoder|MAE_emission|clear~clkctrl_outclk\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~1\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst[1]~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~3\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~5\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~7\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~9\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~11\ : std_logic;
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
SIGNAL \encoder|TickGenerator|Add0~42_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~44_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~2_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~4_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~6_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|stburst~3_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~8_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Add0~26_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~5_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~9_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|Equal0~10_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|tick_burst~feeder_combout\ : std_logic;
SIGNAL \encoder|TickGenerator|tick_burst~q\ : std_logic;
SIGNAL \encoder|BurstGenerator|Out_burst~0_combout\ : std_logic;
SIGNAL \encoder|BurstGenerator|Out_burst~1_combout\ : std_logic;
SIGNAL \encoder|BurstGenerator|Out_burst~q\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector5~0_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector5~1_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|enable~q\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector6~0_combout\ : std_logic;
SIGNAL \Cmd_in[5]~input_o\ : std_logic;
SIGNAL \encoder|MAE_emission|reg[5]~feeder_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|reg[11]~0_combout\ : std_logic;
SIGNAL \Address_in[1]~input_o\ : std_logic;
SIGNAL \Cmd_in[4]~input_o\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~2_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~3_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~6_combout\ : std_logic;
SIGNAL \Address_in[2]~input_o\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~0_combout\ : std_logic;
SIGNAL \Address_in[4]~input_o\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~1_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Mux0~7_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|Selector6~1_combout\ : std_logic;
SIGNAL \encoder|MAE_emission|out_trame~q\ : std_logic;
SIGNAL \encoder|Tx~0_combout\ : std_logic;
SIGNAL \decoder|deburst|trame_deburst~1_combout\ : std_logic;
SIGNAL \decoder|deburst|trame_deburst~q\ : std_logic;
SIGNAL \decoder|demanchester|Selector3~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~5_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~6_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~1\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~3\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~5\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~7\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~9\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~10_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~8_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~8_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~7_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~9_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~11\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~13\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~14_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~15\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~16_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~17\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~18_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~19\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~20_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~1_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~21\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~22_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~6_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~23\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~25\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~26_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~27\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~28_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stmanch~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~29\ : std_logic;
SIGNAL \decoder|tick_gen|Add1~30_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~5_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~7_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal1~10_combout\ : std_logic;
SIGNAL \decoder|tick_gen|tick_manch~q\ : std_logic;
SIGNAL \decoder|demanchester|State.Out1_valid~q\ : std_logic;
SIGNAL \decoder|demanchester|State.Out1~1_combout\ : std_logic;
SIGNAL \decoder|demanchester|State.Out1~q\ : std_logic;
SIGNAL \decoder|demanchester|State.Init~0_combout\ : std_logic;
SIGNAL \decoder|demanchester|State.Init~q\ : std_logic;
SIGNAL \decoder|demanchester|Selector1~0_combout\ : std_logic;
SIGNAL \decoder|demanchester|State.Start~q\ : std_logic;
SIGNAL \decoder|demanchester|Selector5~0_combout\ : std_logic;
SIGNAL \decoder|demanchester|State.Out0_valid~q\ : std_logic;
SIGNAL \decoder|demanchester|State.Out1~0_combout\ : std_logic;
SIGNAL \decoder|demanchester|State.Out0~0_combout\ : std_logic;
SIGNAL \decoder|demanchester|State.Out0~q\ : std_logic;
SIGNAL \decoder|demanchester|comb~0_combout\ : std_logic;
SIGNAL \decoder|demanchester|Signal_Demanchester~combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~1\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~7_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~3\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~5\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~7\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~8_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~9\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~11\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~13\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~15\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~17\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~18_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~19\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~20_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~3_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~6_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~21\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~22_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~2_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~23\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~24_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~25\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~26_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~1_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~27\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~28_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~29\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~30_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~0_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~31\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~32_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~33\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~34_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~35\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~36_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~37\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~39\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~40_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~41\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~43\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~44_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~42_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~2_combout\ : std_logic;
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
SIGNAL \decoder|tick_gen|Equal2~1_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~38_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~3_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~4_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~14_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~5_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~10_combout\ : std_logic;
SIGNAL \decoder|tick_gen|stbit~6_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~7_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Add2~6_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~8_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~9_combout\ : std_logic;
SIGNAL \decoder|tick_gen|Equal2~10_combout\ : std_logic;
SIGNAL \decoder|tick_gen|tick_bit~q\ : std_logic;
SIGNAL \decoder|decoder|EF~18_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~4\ : std_logic;
SIGNAL \decoder|decoder|Add0~7\ : std_logic;
SIGNAL \decoder|decoder|Add0~10\ : std_logic;
SIGNAL \decoder|decoder|Add0~12_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~20_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~46\ : std_logic;
SIGNAL \decoder|decoder|Add0~49\ : std_logic;
SIGNAL \decoder|decoder|Add0~51_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~53_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~52\ : std_logic;
SIGNAL \decoder|decoder|Add0~54_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~56_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~55\ : std_logic;
SIGNAL \decoder|decoder|Add0~58\ : std_logic;
SIGNAL \decoder|decoder|Add0~61\ : std_logic;
SIGNAL \decoder|decoder|Add0~63_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~65_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~64\ : std_logic;
SIGNAL \decoder|decoder|Add0~67\ : std_logic;
SIGNAL \decoder|decoder|Add0~69_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~71_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~60_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~62_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~6_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~70\ : std_logic;
SIGNAL \decoder|decoder|Add0~73\ : std_logic;
SIGNAL \decoder|decoder|Add0~75_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~77_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~76\ : std_logic;
SIGNAL \decoder|decoder|Add0~79\ : std_logic;
SIGNAL \decoder|decoder|Add0~82\ : std_logic;
SIGNAL \decoder|decoder|Add0~85\ : std_logic;
SIGNAL \decoder|decoder|Add0~87\ : std_logic;
SIGNAL \decoder|decoder|Add0~88_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~95_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~89\ : std_logic;
SIGNAL \decoder|decoder|Add0~90_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~92_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~86_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~94_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~8_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~48_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~50_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~57_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~59_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~5_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~9_combout\ : std_logic;
SIGNAL \decoder|decoder|EF~19_combout\ : std_logic;
SIGNAL \decoder|decoder|EF~20_combout\ : std_logic;
SIGNAL \decoder|decoder|EF~23_combout\ : std_logic;
SIGNAL \decoder|decoder|EF.State_Init~q\ : std_logic;
SIGNAL \decoder|decoder|Selector12~1_combout\ : std_logic;
SIGNAL \decoder|decoder|i[6]~0_combout\ : std_logic;
SIGNAL \decoder|decoder|i[6]~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~13\ : std_logic;
SIGNAL \decoder|decoder|Add0~14_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~19_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~15\ : std_logic;
SIGNAL \decoder|decoder|Add0~16_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~18_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~17\ : std_logic;
SIGNAL \decoder|decoder|Add0~21_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~23_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~22\ : std_logic;
SIGNAL \decoder|decoder|Add0~24_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~26_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~25\ : std_logic;
SIGNAL \decoder|decoder|Add0~27_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~29_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~28\ : std_logic;
SIGNAL \decoder|decoder|Add0~31\ : std_logic;
SIGNAL \decoder|decoder|Add0~34\ : std_logic;
SIGNAL \decoder|decoder|Add0~36_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~38_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~37\ : std_logic;
SIGNAL \decoder|decoder|Add0~39_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~41_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~40\ : std_logic;
SIGNAL \decoder|decoder|Add0~42_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~44_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~43\ : std_logic;
SIGNAL \decoder|decoder|Add0~45_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~47_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~3_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~9_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~11_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~30_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~32_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~33_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~35_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~2_combout\ : std_logic;
SIGNAL \decoder|decoder|Equal0~4_combout\ : std_logic;
SIGNAL \decoder|decoder|EF~27_combout\ : std_logic;
SIGNAL \decoder|decoder|EF.State_Send~q\ : std_logic;
SIGNAL \decoder|decoder|Equal0~10_combout\ : std_logic;
SIGNAL \decoder|decoder|EF~25_combout\ : std_logic;
SIGNAL \decoder|decoder|EF.State_Error~q\ : std_logic;
SIGNAL \decoder|decoder|EF~16_combout\ : std_logic;
SIGNAL \decoder|decoder|EF~26_combout\ : std_logic;
SIGNAL \decoder|decoder|EF.State_Begin~q\ : std_logic;
SIGNAL \decoder|decoder|EF~21_combout\ : std_logic;
SIGNAL \decoder|decoder|EF~22_combout\ : std_logic;
SIGNAL \decoder|decoder|EF.State_Extract~q\ : std_logic;
SIGNAL \decoder|decoder|Add0~2_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~1\ : std_logic;
SIGNAL \decoder|decoder|Add0~3_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~5_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~6_combout\ : std_logic;
SIGNAL \decoder|decoder|Add0~8_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector12~2_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector12~3_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector11~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector11~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~2_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector10~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector10~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~3_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector9~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector9~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~4_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector8~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector8~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector12~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector18~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector18~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector17~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector17~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector16~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector16~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Decoder0~8_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector15~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector15~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector14~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector14~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector13~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector13~1_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector1~0_combout\ : std_logic;
SIGNAL \decoder|decoder|error_sig~q\ : std_logic;
SIGNAL \decoder|decoder|Selector7~0_combout\ : std_logic;
SIGNAL \decoder|decoder|Selector7~1_combout\ : std_logic;
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
SIGNAL \decoder|decoder|data\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \decoder|decoder|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \encoder|MAE_emission|ALT_INV_EF.State_Send~q\ : std_logic;

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

\encoder|MAE_emission|clear~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \encoder|MAE_emission|clear~q\);
\encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\ <= NOT \encoder|MAE_emission|clear~clkctrl_outclk\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\encoder|MAE_emission|ALT_INV_EF.State_Send~q\ <= NOT \encoder|MAE_emission|EF.State_Send~q\;

-- Location: FF_X111_Y37_N27
\encoder|MAE_emission|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[6]~3_combout\,
	asdata => \encoder|MAE_emission|Selector33~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(6));

-- Location: FF_X111_Y37_N11
\encoder|MAE_emission|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[8]~5_combout\,
	asdata => \encoder|MAE_emission|Selector31~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(8));

-- Location: FF_X111_Y37_N9
\encoder|MAE_emission|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[11]~8_combout\,
	asdata => \encoder|MAE_emission|Selector28~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(11));

-- Location: FF_X111_Y37_N17
\encoder|MAE_emission|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[13]~10_combout\,
	asdata => \encoder|MAE_emission|Selector26~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(13));

-- Location: FF_X111_Y36_N13
\encoder|MAE_emission|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[15]~12_combout\,
	asdata => \encoder|MAE_emission|Selector24~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(15));

-- Location: FF_X113_Y36_N5
\encoder|MAE_emission|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[19]~16_combout\,
	asdata => \encoder|MAE_emission|Selector20~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(19));

-- Location: FF_X113_Y36_N7
\encoder|MAE_emission|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[20]~17_combout\,
	asdata => \encoder|MAE_emission|Selector19~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(20));

-- Location: FF_X113_Y36_N11
\encoder|MAE_emission|i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[30]~27_combout\,
	asdata => \encoder|MAE_emission|Selector9~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(30));

-- Location: LCCOMB_X73_Y56_N12
\decoder|decoder|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~66_combout\ = (\decoder|decoder|i\(22) & ((GND) # (!\decoder|decoder|Add0~64\))) # (!\decoder|decoder|i\(22) & (\decoder|decoder|Add0~64\ $ (GND)))
-- \decoder|decoder|Add0~67\ = CARRY((\decoder|decoder|i\(22)) # (!\decoder|decoder|Add0~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(22),
	datad => VCC,
	cin => \decoder|decoder|Add0~64\,
	combout => \decoder|decoder|Add0~66_combout\,
	cout => \decoder|decoder|Add0~67\);

-- Location: LCCOMB_X73_Y56_N16
\decoder|decoder|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~72_combout\ = (\decoder|decoder|i\(24) & ((GND) # (!\decoder|decoder|Add0~70\))) # (!\decoder|decoder|i\(24) & (\decoder|decoder|Add0~70\ $ (GND)))
-- \decoder|decoder|Add0~73\ = CARRY((\decoder|decoder|i\(24)) # (!\decoder|decoder|Add0~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(24),
	datad => VCC,
	cin => \decoder|decoder|Add0~70\,
	combout => \decoder|decoder|Add0~72_combout\,
	cout => \decoder|decoder|Add0~73\);

-- Location: LCCOMB_X73_Y56_N20
\decoder|decoder|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~78_combout\ = (\decoder|decoder|i\(26) & ((GND) # (!\decoder|decoder|Add0~76\))) # (!\decoder|decoder|i\(26) & (\decoder|decoder|Add0~76\ $ (GND)))
-- \decoder|decoder|Add0~79\ = CARRY((\decoder|decoder|i\(26)) # (!\decoder|decoder|Add0~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(26),
	datad => VCC,
	cin => \decoder|decoder|Add0~76\,
	combout => \decoder|decoder|Add0~78_combout\,
	cout => \decoder|decoder|Add0~79\);

-- Location: LCCOMB_X73_Y56_N22
\decoder|decoder|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~81_combout\ = (\decoder|decoder|i\(27) & (\decoder|decoder|Add0~79\ & VCC)) # (!\decoder|decoder|i\(27) & (!\decoder|decoder|Add0~79\))
-- \decoder|decoder|Add0~82\ = CARRY((!\decoder|decoder|i\(27) & !\decoder|decoder|Add0~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(27),
	datad => VCC,
	cin => \decoder|decoder|Add0~79\,
	combout => \decoder|decoder|Add0~81_combout\,
	cout => \decoder|decoder|Add0~82\);

-- Location: LCCOMB_X73_Y56_N24
\decoder|decoder|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~84_combout\ = (\decoder|decoder|i\(28) & ((GND) # (!\decoder|decoder|Add0~82\))) # (!\decoder|decoder|i\(28) & (\decoder|decoder|Add0~82\ $ (GND)))
-- \decoder|decoder|Add0~85\ = CARRY((\decoder|decoder|i\(28)) # (!\decoder|decoder|Add0~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(28),
	datad => VCC,
	cin => \decoder|decoder|Add0~82\,
	combout => \decoder|decoder|Add0~84_combout\,
	cout => \decoder|decoder|Add0~85\);

-- Location: LCCOMB_X112_Y37_N2
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

-- Location: LCCOMB_X112_Y37_N12
\encoder|MAE_emission|Add0~12\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X112_Y37_N16
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

-- Location: LCCOMB_X112_Y37_N20
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

-- Location: LCCOMB_X112_Y37_N22
\encoder|MAE_emission|Add0~22\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X112_Y37_N26
\encoder|MAE_emission|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~26_combout\ = (\encoder|MAE_emission|i\(13) & (\encoder|MAE_emission|Add0~25\ & VCC)) # (!\encoder|MAE_emission|i\(13) & (!\encoder|MAE_emission|Add0~25\))
-- \encoder|MAE_emission|Add0~27\ = CARRY((!\encoder|MAE_emission|i\(13) & !\encoder|MAE_emission|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(13),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~25\,
	combout => \encoder|MAE_emission|Add0~26_combout\,
	cout => \encoder|MAE_emission|Add0~27\);

-- Location: LCCOMB_X112_Y37_N30
\encoder|MAE_emission|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~30_combout\ = (\encoder|MAE_emission|i\(15) & (\encoder|MAE_emission|Add0~29\ & VCC)) # (!\encoder|MAE_emission|i\(15) & (!\encoder|MAE_emission|Add0~29\))
-- \encoder|MAE_emission|Add0~31\ = CARRY((!\encoder|MAE_emission|i\(15) & !\encoder|MAE_emission|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(15),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~29\,
	combout => \encoder|MAE_emission|Add0~30_combout\,
	cout => \encoder|MAE_emission|Add0~31\);

-- Location: LCCOMB_X112_Y36_N6
\encoder|MAE_emission|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~38_combout\ = (\encoder|MAE_emission|i\(19) & (\encoder|MAE_emission|Add0~37\ & VCC)) # (!\encoder|MAE_emission|i\(19) & (!\encoder|MAE_emission|Add0~37\))
-- \encoder|MAE_emission|Add0~39\ = CARRY((!\encoder|MAE_emission|i\(19) & !\encoder|MAE_emission|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(19),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~37\,
	combout => \encoder|MAE_emission|Add0~38_combout\,
	cout => \encoder|MAE_emission|Add0~39\);

-- Location: LCCOMB_X112_Y36_N8
\encoder|MAE_emission|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~40_combout\ = (\encoder|MAE_emission|i\(20) & ((GND) # (!\encoder|MAE_emission|Add0~39\))) # (!\encoder|MAE_emission|i\(20) & (\encoder|MAE_emission|Add0~39\ $ (GND)))
-- \encoder|MAE_emission|Add0~41\ = CARRY((\encoder|MAE_emission|i\(20)) # (!\encoder|MAE_emission|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(20),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~39\,
	combout => \encoder|MAE_emission|Add0~40_combout\,
	cout => \encoder|MAE_emission|Add0~41\);

-- Location: LCCOMB_X112_Y36_N16
\encoder|MAE_emission|Add0~48\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X112_Y36_N24
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

-- Location: LCCOMB_X112_Y36_N26
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

-- Location: LCCOMB_X112_Y36_N28
\encoder|MAE_emission|Add0~60\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X112_Y36_N30
\encoder|MAE_emission|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~62_combout\ = \encoder|MAE_emission|i\(31) $ (\encoder|MAE_emission|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(31),
	cin => \encoder|MAE_emission|Add0~61\,
	combout => \encoder|MAE_emission|Add0~62_combout\);

-- Location: LCCOMB_X111_Y37_N26
\encoder|MAE_emission|i[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[6]~3_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|Add0~12_combout\))) # (!\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|i\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|i\(6),
	datad => \encoder|MAE_emission|Add0~12_combout\,
	combout => \encoder|MAE_emission|i[6]~3_combout\);

-- Location: LCCOMB_X111_Y37_N10
\encoder|MAE_emission|i[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[8]~5_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|Add0~16_combout\)) # (!\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|i\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|Add0~16_combout\,
	datac => \encoder|MAE_emission|i\(8),
	datad => \encoder|MAE_emission|process_0~0_combout\,
	combout => \encoder|MAE_emission|i[8]~5_combout\);

-- Location: LCCOMB_X111_Y37_N8
\encoder|MAE_emission|i[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[11]~8_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|Add0~22_combout\))) # (!\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|i\(11),
	datad => \encoder|MAE_emission|Add0~22_combout\,
	combout => \encoder|MAE_emission|i[11]~8_combout\);

-- Location: LCCOMB_X111_Y37_N16
\encoder|MAE_emission|i[13]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[13]~10_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|Add0~26_combout\))) # (!\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|i\(13),
	datad => \encoder|MAE_emission|Add0~26_combout\,
	combout => \encoder|MAE_emission|i[13]~10_combout\);

-- Location: LCCOMB_X111_Y36_N12
\encoder|MAE_emission|i[15]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[15]~12_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|Add0~30_combout\))) # (!\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|i\(15),
	datad => \encoder|MAE_emission|Add0~30_combout\,
	combout => \encoder|MAE_emission|i[15]~12_combout\);

-- Location: LCCOMB_X113_Y36_N4
\encoder|MAE_emission|i[19]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[19]~16_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|Add0~38_combout\)) # (!\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|i\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|Add0~38_combout\,
	datac => \encoder|MAE_emission|i\(19),
	datad => \encoder|MAE_emission|process_0~0_combout\,
	combout => \encoder|MAE_emission|i[19]~16_combout\);

-- Location: LCCOMB_X113_Y36_N6
\encoder|MAE_emission|i[20]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[20]~17_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|Add0~40_combout\))) # (!\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|i\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|i\(20),
	datad => \encoder|MAE_emission|Add0~40_combout\,
	combout => \encoder|MAE_emission|i[20]~17_combout\);

-- Location: LCCOMB_X113_Y36_N10
\encoder|MAE_emission|i[30]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[30]~27_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|Add0~60_combout\))) # (!\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|i\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|i\(30),
	datad => \encoder|MAE_emission|Add0~60_combout\,
	combout => \encoder|MAE_emission|i[30]~27_combout\);

-- Location: LCCOMB_X74_Y62_N12
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

-- Location: LCCOMB_X74_Y62_N16
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

-- Location: LCCOMB_X74_Y61_N22
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

-- Location: LCCOMB_X74_Y61_N24
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

-- Location: LCCOMB_X74_Y61_N26
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

-- Location: LCCOMB_X74_Y61_N28
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

-- Location: LCCOMB_X74_Y61_N30
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

-- Location: LCCOMB_X89_Y60_N0
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

-- Location: LCCOMB_X89_Y60_N4
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

-- Location: LCCOMB_X89_Y60_N8
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

-- Location: LCCOMB_X89_Y60_N10
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

-- Location: LCCOMB_X89_Y60_N12
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

-- Location: LCCOMB_X89_Y60_N16
\encoder|TickGenerator|Add0~16\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X89_Y60_N22
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

-- Location: LCCOMB_X89_Y60_N30
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

-- Location: LCCOMB_X89_Y59_N6
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

-- Location: LCCOMB_X89_Y59_N22
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

-- Location: LCCOMB_X102_Y34_N2
\encoder|TickGenerator|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~2_combout\ = (\encoder|TickGenerator|stbit\(1) & ((\encoder|TickGenerator|Add2~1\) # (GND))) # (!\encoder|TickGenerator|stbit\(1) & (!\encoder|TickGenerator|Add2~1\))
-- \encoder|TickGenerator|Add2~3\ = CARRY((\encoder|TickGenerator|stbit\(1)) # (!\encoder|TickGenerator|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(1),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~1\,
	combout => \encoder|TickGenerator|Add2~2_combout\,
	cout => \encoder|TickGenerator|Add2~3\);

-- Location: LCCOMB_X102_Y34_N12
\encoder|TickGenerator|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~12_combout\ = (\encoder|TickGenerator|stbit\(6) & (\encoder|TickGenerator|Add2~11\ $ (GND))) # (!\encoder|TickGenerator|stbit\(6) & (!\encoder|TickGenerator|Add2~11\ & VCC))
-- \encoder|TickGenerator|Add2~13\ = CARRY((\encoder|TickGenerator|stbit\(6) & !\encoder|TickGenerator|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(6),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~11\,
	combout => \encoder|TickGenerator|Add2~12_combout\,
	cout => \encoder|TickGenerator|Add2~13\);

-- Location: LCCOMB_X102_Y34_N22
\encoder|TickGenerator|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~22_combout\ = (\encoder|TickGenerator|stbit\(11) & ((\encoder|TickGenerator|Add2~21\) # (GND))) # (!\encoder|TickGenerator|stbit\(11) & (!\encoder|TickGenerator|Add2~21\))
-- \encoder|TickGenerator|Add2~23\ = CARRY((\encoder|TickGenerator|stbit\(11)) # (!\encoder|TickGenerator|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(11),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~21\,
	combout => \encoder|TickGenerator|Add2~22_combout\,
	cout => \encoder|TickGenerator|Add2~23\);

-- Location: LCCOMB_X102_Y33_N6
\encoder|TickGenerator|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~38_combout\ = (\encoder|TickGenerator|stbit\(19) & (!\encoder|TickGenerator|Add2~37\)) # (!\encoder|TickGenerator|stbit\(19) & ((\encoder|TickGenerator|Add2~37\) # (GND)))
-- \encoder|TickGenerator|Add2~39\ = CARRY((!\encoder|TickGenerator|Add2~37\) # (!\encoder|TickGenerator|stbit\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(19),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~37\,
	combout => \encoder|TickGenerator|Add2~38_combout\,
	cout => \encoder|TickGenerator|Add2~39\);

-- Location: LCCOMB_X102_Y33_N10
\encoder|TickGenerator|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~42_combout\ = (\encoder|TickGenerator|stbit\(21) & (!\encoder|TickGenerator|Add2~41\)) # (!\encoder|TickGenerator|stbit\(21) & ((\encoder|TickGenerator|Add2~41\) # (GND)))
-- \encoder|TickGenerator|Add2~43\ = CARRY((!\encoder|TickGenerator|Add2~41\) # (!\encoder|TickGenerator|stbit\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(21),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~41\,
	combout => \encoder|TickGenerator|Add2~42_combout\,
	cout => \encoder|TickGenerator|Add2~43\);

-- Location: LCCOMB_X102_Y33_N22
\encoder|TickGenerator|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~54_combout\ = (\encoder|TickGenerator|stbit\(27) & (!\encoder|TickGenerator|Add2~53\)) # (!\encoder|TickGenerator|stbit\(27) & ((\encoder|TickGenerator|Add2~53\) # (GND)))
-- \encoder|TickGenerator|Add2~55\ = CARRY((!\encoder|TickGenerator|Add2~53\) # (!\encoder|TickGenerator|stbit\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(27),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~53\,
	combout => \encoder|TickGenerator|Add2~54_combout\,
	cout => \encoder|TickGenerator|Add2~55\);

-- Location: LCCOMB_X102_Y33_N26
\encoder|TickGenerator|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~58_combout\ = (\encoder|TickGenerator|stbit\(29) & (!\encoder|TickGenerator|Add2~57\)) # (!\encoder|TickGenerator|stbit\(29) & ((\encoder|TickGenerator|Add2~57\) # (GND)))
-- \encoder|TickGenerator|Add2~59\ = CARRY((!\encoder|TickGenerator|Add2~57\) # (!\encoder|TickGenerator|stbit\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(29),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~57\,
	combout => \encoder|TickGenerator|Add2~58_combout\,
	cout => \encoder|TickGenerator|Add2~59\);

-- Location: LCCOMB_X102_Y33_N28
\encoder|TickGenerator|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~60_combout\ = (\encoder|TickGenerator|stbit\(30) & (\encoder|TickGenerator|Add2~59\ $ (GND))) # (!\encoder|TickGenerator|stbit\(30) & (!\encoder|TickGenerator|Add2~59\ & VCC))
-- \encoder|TickGenerator|Add2~61\ = CARRY((\encoder|TickGenerator|stbit\(30) & !\encoder|TickGenerator|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(30),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~59\,
	combout => \encoder|TickGenerator|Add2~60_combout\,
	cout => \encoder|TickGenerator|Add2~61\);

-- Location: LCCOMB_X102_Y33_N30
\encoder|TickGenerator|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~62_combout\ = \encoder|TickGenerator|stbit\(31) $ (\encoder|TickGenerator|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(31),
	cin => \encoder|TickGenerator|Add2~61\,
	combout => \encoder|TickGenerator|Add2~62_combout\);

-- Location: LCCOMB_X97_Y35_N0
\encoder|TickGenerator|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~0_combout\ = \encoder|TickGenerator|stmanch\(0) $ (GND)
-- \encoder|TickGenerator|Add1~1\ = CARRY(!\encoder|TickGenerator|stmanch\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(0),
	datad => VCC,
	combout => \encoder|TickGenerator|Add1~0_combout\,
	cout => \encoder|TickGenerator|Add1~1\);

-- Location: LCCOMB_X97_Y35_N2
\encoder|TickGenerator|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~2_combout\ = (\encoder|TickGenerator|stmanch\(1) & (!\encoder|TickGenerator|Add1~1\)) # (!\encoder|TickGenerator|stmanch\(1) & ((\encoder|TickGenerator|Add1~1\) # (GND)))
-- \encoder|TickGenerator|Add1~3\ = CARRY((!\encoder|TickGenerator|Add1~1\) # (!\encoder|TickGenerator|stmanch\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(1),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~1\,
	combout => \encoder|TickGenerator|Add1~2_combout\,
	cout => \encoder|TickGenerator|Add1~3\);

-- Location: LCCOMB_X97_Y35_N4
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

-- Location: LCCOMB_X97_Y35_N6
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

-- Location: LCCOMB_X97_Y35_N8
\encoder|TickGenerator|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~8_combout\ = (\encoder|TickGenerator|stmanch\(4) & (!\encoder|TickGenerator|Add1~7\ & VCC)) # (!\encoder|TickGenerator|stmanch\(4) & (\encoder|TickGenerator|Add1~7\ $ (GND)))
-- \encoder|TickGenerator|Add1~9\ = CARRY((!\encoder|TickGenerator|stmanch\(4) & !\encoder|TickGenerator|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(4),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~7\,
	combout => \encoder|TickGenerator|Add1~8_combout\,
	cout => \encoder|TickGenerator|Add1~9\);

-- Location: LCCOMB_X97_Y35_N10
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

-- Location: LCCOMB_X97_Y35_N12
\encoder|TickGenerator|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~12_combout\ = (\encoder|TickGenerator|stmanch\(6) & (!\encoder|TickGenerator|Add1~11\ & VCC)) # (!\encoder|TickGenerator|stmanch\(6) & (\encoder|TickGenerator|Add1~11\ $ (GND)))
-- \encoder|TickGenerator|Add1~13\ = CARRY((!\encoder|TickGenerator|stmanch\(6) & !\encoder|TickGenerator|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(6),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~11\,
	combout => \encoder|TickGenerator|Add1~12_combout\,
	cout => \encoder|TickGenerator|Add1~13\);

-- Location: LCCOMB_X97_Y35_N14
\encoder|TickGenerator|Add1~14\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X97_Y35_N16
\encoder|TickGenerator|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~16_combout\ = (\encoder|TickGenerator|stmanch\(8) & (\encoder|TickGenerator|Add1~15\ $ (GND))) # (!\encoder|TickGenerator|stmanch\(8) & (!\encoder|TickGenerator|Add1~15\ & VCC))
-- \encoder|TickGenerator|Add1~17\ = CARRY((\encoder|TickGenerator|stmanch\(8) & !\encoder|TickGenerator|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(8),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~15\,
	combout => \encoder|TickGenerator|Add1~16_combout\,
	cout => \encoder|TickGenerator|Add1~17\);

-- Location: LCCOMB_X97_Y35_N18
\encoder|TickGenerator|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~18_combout\ = (\encoder|TickGenerator|stmanch\(9) & ((\encoder|TickGenerator|Add1~17\) # (GND))) # (!\encoder|TickGenerator|stmanch\(9) & (!\encoder|TickGenerator|Add1~17\))
-- \encoder|TickGenerator|Add1~19\ = CARRY((\encoder|TickGenerator|stmanch\(9)) # (!\encoder|TickGenerator|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stmanch\(9),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~17\,
	combout => \encoder|TickGenerator|Add1~18_combout\,
	cout => \encoder|TickGenerator|Add1~19\);

-- Location: LCCOMB_X97_Y35_N20
\encoder|TickGenerator|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~20_combout\ = (\encoder|TickGenerator|stmanch\(10) & (!\encoder|TickGenerator|Add1~19\ & VCC)) # (!\encoder|TickGenerator|stmanch\(10) & (\encoder|TickGenerator|Add1~19\ $ (GND)))
-- \encoder|TickGenerator|Add1~21\ = CARRY((!\encoder|TickGenerator|stmanch\(10) & !\encoder|TickGenerator|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(10),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~19\,
	combout => \encoder|TickGenerator|Add1~20_combout\,
	cout => \encoder|TickGenerator|Add1~21\);

-- Location: LCCOMB_X97_Y35_N22
\encoder|TickGenerator|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~22_combout\ = (\encoder|TickGenerator|stmanch\(11) & (!\encoder|TickGenerator|Add1~21\)) # (!\encoder|TickGenerator|stmanch\(11) & ((\encoder|TickGenerator|Add1~21\) # (GND)))
-- \encoder|TickGenerator|Add1~23\ = CARRY((!\encoder|TickGenerator|Add1~21\) # (!\encoder|TickGenerator|stmanch\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(11),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~21\,
	combout => \encoder|TickGenerator|Add1~22_combout\,
	cout => \encoder|TickGenerator|Add1~23\);

-- Location: LCCOMB_X97_Y35_N24
\encoder|TickGenerator|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~24_combout\ = (\encoder|TickGenerator|stmanch\(12) & (!\encoder|TickGenerator|Add1~23\ & VCC)) # (!\encoder|TickGenerator|stmanch\(12) & (\encoder|TickGenerator|Add1~23\ $ (GND)))
-- \encoder|TickGenerator|Add1~25\ = CARRY((!\encoder|TickGenerator|stmanch\(12) & !\encoder|TickGenerator|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(12),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~23\,
	combout => \encoder|TickGenerator|Add1~24_combout\,
	cout => \encoder|TickGenerator|Add1~25\);

-- Location: LCCOMB_X97_Y35_N26
\encoder|TickGenerator|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~26_combout\ = (\encoder|TickGenerator|stmanch\(13) & (!\encoder|TickGenerator|Add1~25\)) # (!\encoder|TickGenerator|stmanch\(13) & ((\encoder|TickGenerator|Add1~25\) # (GND)))
-- \encoder|TickGenerator|Add1~27\ = CARRY((!\encoder|TickGenerator|Add1~25\) # (!\encoder|TickGenerator|stmanch\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(13),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~25\,
	combout => \encoder|TickGenerator|Add1~26_combout\,
	cout => \encoder|TickGenerator|Add1~27\);

-- Location: LCCOMB_X97_Y35_N28
\encoder|TickGenerator|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~28_combout\ = (\encoder|TickGenerator|stmanch\(14) & (!\encoder|TickGenerator|Add1~27\ & VCC)) # (!\encoder|TickGenerator|stmanch\(14) & (\encoder|TickGenerator|Add1~27\ $ (GND)))
-- \encoder|TickGenerator|Add1~29\ = CARRY((!\encoder|TickGenerator|stmanch\(14) & !\encoder|TickGenerator|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(14),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~27\,
	combout => \encoder|TickGenerator|Add1~28_combout\,
	cout => \encoder|TickGenerator|Add1~29\);

-- Location: LCCOMB_X97_Y35_N30
\encoder|TickGenerator|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add1~30_combout\ = (\encoder|TickGenerator|stmanch\(15) & (!\encoder|TickGenerator|Add1~29\)) # (!\encoder|TickGenerator|stmanch\(15) & ((\encoder|TickGenerator|Add1~29\) # (GND)))
-- \encoder|TickGenerator|Add1~31\ = CARRY((!\encoder|TickGenerator|Add1~29\) # (!\encoder|TickGenerator|stmanch\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(15),
	datad => VCC,
	cin => \encoder|TickGenerator|Add1~29\,
	combout => \encoder|TickGenerator|Add1~30_combout\,
	cout => \encoder|TickGenerator|Add1~31\);

-- Location: LCCOMB_X97_Y34_N0
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

-- Location: LCCOMB_X97_Y34_N2
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

-- Location: LCCOMB_X97_Y34_N4
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

-- Location: LCCOMB_X97_Y34_N6
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

-- Location: LCCOMB_X97_Y34_N8
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

-- Location: LCCOMB_X97_Y34_N10
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

-- Location: LCCOMB_X97_Y34_N12
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

-- Location: LCCOMB_X97_Y34_N14
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

-- Location: LCCOMB_X97_Y34_N16
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

-- Location: LCCOMB_X97_Y34_N18
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

-- Location: LCCOMB_X97_Y34_N20
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

-- Location: LCCOMB_X97_Y34_N22
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

-- Location: LCCOMB_X97_Y34_N24
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

-- Location: LCCOMB_X97_Y34_N26
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

-- Location: LCCOMB_X97_Y34_N28
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

-- Location: LCCOMB_X97_Y34_N30
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

-- Location: FF_X79_Y59_N13
\decoder|deburst|EP.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|deburst|Selector0~0_combout\,
	sclr => \rst~input_o\,
	ena => \decoder|deburst|EP~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|deburst|EP.E0~q\);

-- Location: LCCOMB_X74_Y21_N6
\encoder|TickGenerator|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~4_combout\ = (\encoder|TickGenerator|sttrame\(3) & (\encoder|TickGenerator|Add3~3\ $ (GND))) # (!\encoder|TickGenerator|sttrame\(3) & (!\encoder|TickGenerator|Add3~3\ & VCC))
-- \encoder|TickGenerator|Add3~5\ = CARRY((\encoder|TickGenerator|sttrame\(3) & !\encoder|TickGenerator|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(3),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~3\,
	combout => \encoder|TickGenerator|Add3~4_combout\,
	cout => \encoder|TickGenerator|Add3~5\);

-- Location: LCCOMB_X74_Y21_N14
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

-- Location: LCCOMB_X74_Y21_N26
\encoder|TickGenerator|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~24_combout\ = (\encoder|TickGenerator|sttrame\(13) & (!\encoder|TickGenerator|Add3~23\ & VCC)) # (!\encoder|TickGenerator|sttrame\(13) & (\encoder|TickGenerator|Add3~23\ $ (GND)))
-- \encoder|TickGenerator|Add3~25\ = CARRY((!\encoder|TickGenerator|sttrame\(13) & !\encoder|TickGenerator|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(13),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~23\,
	combout => \encoder|TickGenerator|Add3~24_combout\,
	cout => \encoder|TickGenerator|Add3~25\);

-- Location: LCCOMB_X74_Y20_N6
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

-- Location: LCCOMB_X74_Y20_N12
\encoder|TickGenerator|Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~42_combout\ = (\encoder|TickGenerator|sttrame\(22) & ((\encoder|TickGenerator|Add3~41\) # (GND))) # (!\encoder|TickGenerator|sttrame\(22) & (!\encoder|TickGenerator|Add3~41\))
-- \encoder|TickGenerator|Add3~43\ = CARRY((\encoder|TickGenerator|sttrame\(22)) # (!\encoder|TickGenerator|Add3~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(22),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~41\,
	combout => \encoder|TickGenerator|Add3~42_combout\,
	cout => \encoder|TickGenerator|Add3~43\);

-- Location: LCCOMB_X74_Y20_N22
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

-- Location: LCCOMB_X74_Y20_N28
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

-- Location: LCCOMB_X74_Y20_N30
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

-- Location: LCCOMB_X83_Y57_N2
\decoder|tick_gen|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~2_combout\ = (\decoder|tick_gen|stmanch\(1) & (!\decoder|tick_gen|Add1~1\)) # (!\decoder|tick_gen|stmanch\(1) & ((\decoder|tick_gen|Add1~1\) # (GND)))
-- \decoder|tick_gen|Add1~3\ = CARRY((!\decoder|tick_gen|Add1~1\) # (!\decoder|tick_gen|stmanch\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(1),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~1\,
	combout => \decoder|tick_gen|Add1~2_combout\,
	cout => \decoder|tick_gen|Add1~3\);

-- Location: LCCOMB_X83_Y57_N6
\decoder|tick_gen|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~6_combout\ = (\decoder|tick_gen|stmanch\(3) & (!\decoder|tick_gen|Add1~5\)) # (!\decoder|tick_gen|stmanch\(3) & ((\decoder|tick_gen|Add1~5\) # (GND)))
-- \decoder|tick_gen|Add1~7\ = CARRY((!\decoder|tick_gen|Add1~5\) # (!\decoder|tick_gen|stmanch\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(3),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~5\,
	combout => \decoder|tick_gen|Add1~6_combout\,
	cout => \decoder|tick_gen|Add1~7\);

-- Location: LCCOMB_X83_Y57_N8
\decoder|tick_gen|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~8_combout\ = (\decoder|tick_gen|stmanch\(4) & (!\decoder|tick_gen|Add1~7\ & VCC)) # (!\decoder|tick_gen|stmanch\(4) & (\decoder|tick_gen|Add1~7\ $ (GND)))
-- \decoder|tick_gen|Add1~9\ = CARRY((!\decoder|tick_gen|stmanch\(4) & !\decoder|tick_gen|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(4),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~7\,
	combout => \decoder|tick_gen|Add1~8_combout\,
	cout => \decoder|tick_gen|Add1~9\);

-- Location: LCCOMB_X83_Y57_N12
\decoder|tick_gen|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~12_combout\ = (\decoder|tick_gen|stmanch\(6) & (!\decoder|tick_gen|Add1~11\ & VCC)) # (!\decoder|tick_gen|stmanch\(6) & (\decoder|tick_gen|Add1~11\ $ (GND)))
-- \decoder|tick_gen|Add1~13\ = CARRY((!\decoder|tick_gen|stmanch\(6) & !\decoder|tick_gen|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(6),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~11\,
	combout => \decoder|tick_gen|Add1~12_combout\,
	cout => \decoder|tick_gen|Add1~13\);

-- Location: LCCOMB_X83_Y57_N24
\decoder|tick_gen|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~24_combout\ = (\decoder|tick_gen|stmanch\(12) & (!\decoder|tick_gen|Add1~23\ & VCC)) # (!\decoder|tick_gen|stmanch\(12) & (\decoder|tick_gen|Add1~23\ $ (GND)))
-- \decoder|tick_gen|Add1~25\ = CARRY((!\decoder|tick_gen|stmanch\(12) & !\decoder|tick_gen|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(12),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~23\,
	combout => \decoder|tick_gen|Add1~24_combout\,
	cout => \decoder|tick_gen|Add1~25\);

-- Location: LCCOMB_X83_Y57_N30
\decoder|tick_gen|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~30_combout\ = (\decoder|tick_gen|stmanch\(15) & (!\decoder|tick_gen|Add1~29\)) # (!\decoder|tick_gen|stmanch\(15) & ((\decoder|tick_gen|Add1~29\) # (GND)))
-- \decoder|tick_gen|Add1~31\ = CARRY((!\decoder|tick_gen|Add1~29\) # (!\decoder|tick_gen|stmanch\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(15),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~29\,
	combout => \decoder|tick_gen|Add1~30_combout\,
	cout => \decoder|tick_gen|Add1~31\);

-- Location: LCCOMB_X83_Y56_N0
\decoder|tick_gen|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~32_combout\ = (\decoder|tick_gen|stmanch\(16) & (\decoder|tick_gen|Add1~31\ $ (GND))) # (!\decoder|tick_gen|stmanch\(16) & (!\decoder|tick_gen|Add1~31\ & VCC))
-- \decoder|tick_gen|Add1~33\ = CARRY((\decoder|tick_gen|stmanch\(16) & !\decoder|tick_gen|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(16),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~31\,
	combout => \decoder|tick_gen|Add1~32_combout\,
	cout => \decoder|tick_gen|Add1~33\);

-- Location: LCCOMB_X83_Y56_N2
\decoder|tick_gen|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~34_combout\ = (\decoder|tick_gen|stmanch\(17) & (!\decoder|tick_gen|Add1~33\)) # (!\decoder|tick_gen|stmanch\(17) & ((\decoder|tick_gen|Add1~33\) # (GND)))
-- \decoder|tick_gen|Add1~35\ = CARRY((!\decoder|tick_gen|Add1~33\) # (!\decoder|tick_gen|stmanch\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(17),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~33\,
	combout => \decoder|tick_gen|Add1~34_combout\,
	cout => \decoder|tick_gen|Add1~35\);

-- Location: LCCOMB_X83_Y56_N4
\decoder|tick_gen|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~36_combout\ = (\decoder|tick_gen|stmanch\(18) & (\decoder|tick_gen|Add1~35\ $ (GND))) # (!\decoder|tick_gen|stmanch\(18) & (!\decoder|tick_gen|Add1~35\ & VCC))
-- \decoder|tick_gen|Add1~37\ = CARRY((\decoder|tick_gen|stmanch\(18) & !\decoder|tick_gen|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(18),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~35\,
	combout => \decoder|tick_gen|Add1~36_combout\,
	cout => \decoder|tick_gen|Add1~37\);

-- Location: LCCOMB_X83_Y56_N6
\decoder|tick_gen|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~38_combout\ = (\decoder|tick_gen|stmanch\(19) & (!\decoder|tick_gen|Add1~37\)) # (!\decoder|tick_gen|stmanch\(19) & ((\decoder|tick_gen|Add1~37\) # (GND)))
-- \decoder|tick_gen|Add1~39\ = CARRY((!\decoder|tick_gen|Add1~37\) # (!\decoder|tick_gen|stmanch\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(19),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~37\,
	combout => \decoder|tick_gen|Add1~38_combout\,
	cout => \decoder|tick_gen|Add1~39\);

-- Location: LCCOMB_X83_Y56_N8
\decoder|tick_gen|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~40_combout\ = (\decoder|tick_gen|stmanch\(20) & (\decoder|tick_gen|Add1~39\ $ (GND))) # (!\decoder|tick_gen|stmanch\(20) & (!\decoder|tick_gen|Add1~39\ & VCC))
-- \decoder|tick_gen|Add1~41\ = CARRY((\decoder|tick_gen|stmanch\(20) & !\decoder|tick_gen|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(20),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~39\,
	combout => \decoder|tick_gen|Add1~40_combout\,
	cout => \decoder|tick_gen|Add1~41\);

-- Location: LCCOMB_X83_Y56_N10
\decoder|tick_gen|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~42_combout\ = (\decoder|tick_gen|stmanch\(21) & (!\decoder|tick_gen|Add1~41\)) # (!\decoder|tick_gen|stmanch\(21) & ((\decoder|tick_gen|Add1~41\) # (GND)))
-- \decoder|tick_gen|Add1~43\ = CARRY((!\decoder|tick_gen|Add1~41\) # (!\decoder|tick_gen|stmanch\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(21),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~41\,
	combout => \decoder|tick_gen|Add1~42_combout\,
	cout => \decoder|tick_gen|Add1~43\);

-- Location: LCCOMB_X83_Y56_N12
\decoder|tick_gen|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~44_combout\ = (\decoder|tick_gen|stmanch\(22) & (\decoder|tick_gen|Add1~43\ $ (GND))) # (!\decoder|tick_gen|stmanch\(22) & (!\decoder|tick_gen|Add1~43\ & VCC))
-- \decoder|tick_gen|Add1~45\ = CARRY((\decoder|tick_gen|stmanch\(22) & !\decoder|tick_gen|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(22),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~43\,
	combout => \decoder|tick_gen|Add1~44_combout\,
	cout => \decoder|tick_gen|Add1~45\);

-- Location: LCCOMB_X83_Y56_N14
\decoder|tick_gen|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~46_combout\ = (\decoder|tick_gen|stmanch\(23) & (!\decoder|tick_gen|Add1~45\)) # (!\decoder|tick_gen|stmanch\(23) & ((\decoder|tick_gen|Add1~45\) # (GND)))
-- \decoder|tick_gen|Add1~47\ = CARRY((!\decoder|tick_gen|Add1~45\) # (!\decoder|tick_gen|stmanch\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(23),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~45\,
	combout => \decoder|tick_gen|Add1~46_combout\,
	cout => \decoder|tick_gen|Add1~47\);

-- Location: LCCOMB_X83_Y56_N16
\decoder|tick_gen|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~48_combout\ = (\decoder|tick_gen|stmanch\(24) & (\decoder|tick_gen|Add1~47\ $ (GND))) # (!\decoder|tick_gen|stmanch\(24) & (!\decoder|tick_gen|Add1~47\ & VCC))
-- \decoder|tick_gen|Add1~49\ = CARRY((\decoder|tick_gen|stmanch\(24) & !\decoder|tick_gen|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(24),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~47\,
	combout => \decoder|tick_gen|Add1~48_combout\,
	cout => \decoder|tick_gen|Add1~49\);

-- Location: LCCOMB_X83_Y56_N18
\decoder|tick_gen|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~50_combout\ = (\decoder|tick_gen|stmanch\(25) & (!\decoder|tick_gen|Add1~49\)) # (!\decoder|tick_gen|stmanch\(25) & ((\decoder|tick_gen|Add1~49\) # (GND)))
-- \decoder|tick_gen|Add1~51\ = CARRY((!\decoder|tick_gen|Add1~49\) # (!\decoder|tick_gen|stmanch\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(25),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~49\,
	combout => \decoder|tick_gen|Add1~50_combout\,
	cout => \decoder|tick_gen|Add1~51\);

-- Location: LCCOMB_X83_Y56_N20
\decoder|tick_gen|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~52_combout\ = (\decoder|tick_gen|stmanch\(26) & (\decoder|tick_gen|Add1~51\ $ (GND))) # (!\decoder|tick_gen|stmanch\(26) & (!\decoder|tick_gen|Add1~51\ & VCC))
-- \decoder|tick_gen|Add1~53\ = CARRY((\decoder|tick_gen|stmanch\(26) & !\decoder|tick_gen|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(26),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~51\,
	combout => \decoder|tick_gen|Add1~52_combout\,
	cout => \decoder|tick_gen|Add1~53\);

-- Location: LCCOMB_X83_Y56_N22
\decoder|tick_gen|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~54_combout\ = (\decoder|tick_gen|stmanch\(27) & (!\decoder|tick_gen|Add1~53\)) # (!\decoder|tick_gen|stmanch\(27) & ((\decoder|tick_gen|Add1~53\) # (GND)))
-- \decoder|tick_gen|Add1~55\ = CARRY((!\decoder|tick_gen|Add1~53\) # (!\decoder|tick_gen|stmanch\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(27),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~53\,
	combout => \decoder|tick_gen|Add1~54_combout\,
	cout => \decoder|tick_gen|Add1~55\);

-- Location: LCCOMB_X83_Y56_N24
\decoder|tick_gen|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~56_combout\ = (\decoder|tick_gen|stmanch\(28) & (\decoder|tick_gen|Add1~55\ $ (GND))) # (!\decoder|tick_gen|stmanch\(28) & (!\decoder|tick_gen|Add1~55\ & VCC))
-- \decoder|tick_gen|Add1~57\ = CARRY((\decoder|tick_gen|stmanch\(28) & !\decoder|tick_gen|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(28),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~55\,
	combout => \decoder|tick_gen|Add1~56_combout\,
	cout => \decoder|tick_gen|Add1~57\);

-- Location: LCCOMB_X83_Y56_N26
\decoder|tick_gen|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~58_combout\ = (\decoder|tick_gen|stmanch\(29) & (!\decoder|tick_gen|Add1~57\)) # (!\decoder|tick_gen|stmanch\(29) & ((\decoder|tick_gen|Add1~57\) # (GND)))
-- \decoder|tick_gen|Add1~59\ = CARRY((!\decoder|tick_gen|Add1~57\) # (!\decoder|tick_gen|stmanch\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(29),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~57\,
	combout => \decoder|tick_gen|Add1~58_combout\,
	cout => \decoder|tick_gen|Add1~59\);

-- Location: LCCOMB_X83_Y56_N28
\decoder|tick_gen|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~60_combout\ = (\decoder|tick_gen|stmanch\(30) & (\decoder|tick_gen|Add1~59\ $ (GND))) # (!\decoder|tick_gen|stmanch\(30) & (!\decoder|tick_gen|Add1~59\ & VCC))
-- \decoder|tick_gen|Add1~61\ = CARRY((\decoder|tick_gen|stmanch\(30) & !\decoder|tick_gen|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(30),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~59\,
	combout => \decoder|tick_gen|Add1~60_combout\,
	cout => \decoder|tick_gen|Add1~61\);

-- Location: LCCOMB_X83_Y56_N30
\decoder|tick_gen|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~62_combout\ = \decoder|tick_gen|stmanch\(31) $ (\decoder|tick_gen|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(31),
	cin => \decoder|tick_gen|Add1~61\,
	combout => \decoder|tick_gen|Add1~62_combout\);

-- Location: LCCOMB_X82_Y58_N4
\decoder|tick_gen|Add0~4\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X82_Y58_N8
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

-- Location: LCCOMB_X82_Y58_N10
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

-- Location: LCCOMB_X82_Y58_N12
\decoder|tick_gen|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add0~12_combout\ = (\decoder|tick_gen|stburst\(6) & (!\decoder|tick_gen|Add0~11\ & VCC)) # (!\decoder|tick_gen|stburst\(6) & (\decoder|tick_gen|Add0~11\ $ (GND)))
-- \decoder|tick_gen|Add0~13\ = CARRY((!\decoder|tick_gen|stburst\(6) & !\decoder|tick_gen|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(6),
	datad => VCC,
	cin => \decoder|tick_gen|Add0~11\,
	combout => \decoder|tick_gen|Add0~12_combout\,
	cout => \decoder|tick_gen|Add0~13\);

-- Location: LCCOMB_X82_Y58_N26
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

-- Location: LCCOMB_X82_Y58_N30
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

-- Location: LCCOMB_X82_Y57_N20
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

-- Location: LCCOMB_X82_Y57_N22
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

-- Location: LCCOMB_X82_Y57_N24
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

-- Location: LCCOMB_X82_Y57_N26
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

-- Location: LCCOMB_X82_Y57_N28
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

-- Location: LCCOMB_X82_Y57_N30
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

-- Location: FF_X79_Y59_N3
\decoder|deburst|EP.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|deburst|EP~11_combout\,
	sclr => \rst~input_o\,
	ena => \decoder|deburst|EP~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|deburst|EP.E1~q\);

-- Location: FF_X100_Y35_N11
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

-- Location: LCCOMB_X74_Y57_N16
\decoder|decoder|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~1_combout\ = (((\decoder|decoder|i\(0)) # (!\decoder|decoder|i\(7))) # (!\decoder|decoder|i\(2))) # (!\decoder|decoder|i\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(1),
	datab => \decoder|decoder|i\(2),
	datac => \decoder|decoder|i\(0),
	datad => \decoder|decoder|i\(7),
	combout => \decoder|decoder|Equal0~1_combout\);

-- Location: FF_X74_Y56_N27
\decoder|decoder|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~68_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(22));

-- Location: FF_X72_Y56_N17
\decoder|decoder|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~74_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(24));

-- Location: FF_X72_Y56_N9
\decoder|decoder|i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~80_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(26));

-- Location: FF_X72_Y56_N27
\decoder|decoder|i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~83_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(27));

-- Location: LCCOMB_X72_Y56_N0
\decoder|decoder|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~7_combout\ = (((!\decoder|decoder|i\(24)) # (!\decoder|decoder|i\(26))) # (!\decoder|decoder|i\(25))) # (!\decoder|decoder|i\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(27),
	datab => \decoder|decoder|i\(25),
	datac => \decoder|decoder|i\(26),
	datad => \decoder|decoder|i\(24),
	combout => \decoder|decoder|Equal0~7_combout\);

-- Location: FF_X74_Y56_N7
\decoder|decoder|i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~93_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(28));

-- Location: LCCOMB_X73_Y59_N26
\decoder|decoder|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~5_combout\ = (!\decoder|decoder|i\(1) & (!\decoder|decoder|i\(3) & (!\decoder|decoder|i\(2) & \decoder|decoder|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(1),
	datab => \decoder|decoder|i\(3),
	datac => \decoder|decoder|i\(2),
	datad => \decoder|decoder|i\(0),
	combout => \decoder|decoder|Decoder0~5_combout\);

-- Location: LCCOMB_X73_Y59_N12
\decoder|decoder|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~6_combout\ = (!\decoder|decoder|i\(1) & (!\decoder|decoder|i\(3) & (!\decoder|decoder|i\(2) & !\decoder|decoder|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(1),
	datab => \decoder|decoder|i\(3),
	datac => \decoder|decoder|i\(2),
	datad => \decoder|decoder|i\(0),
	combout => \decoder|decoder|Decoder0~6_combout\);

-- Location: LCCOMB_X74_Y59_N14
\decoder|decoder|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~7_combout\ = (\decoder|decoder|i\(0) & (!\decoder|decoder|i\(2) & (\decoder|decoder|i\(1) & !\decoder|decoder|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(0),
	datab => \decoder|decoder|i\(2),
	datac => \decoder|decoder|i\(1),
	datad => \decoder|decoder|i\(3),
	combout => \decoder|decoder|Decoder0~7_combout\);

-- Location: LCCOMB_X73_Y59_N0
\decoder|decoder|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~9_combout\ = (!\decoder|decoder|i\(1) & (!\decoder|decoder|i\(3) & (\decoder|decoder|i\(2) & \decoder|decoder|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(1),
	datab => \decoder|decoder|i\(3),
	datac => \decoder|decoder|i\(2),
	datad => \decoder|decoder|i\(0),
	combout => \decoder|decoder|Decoder0~9_combout\);

-- Location: LCCOMB_X73_Y59_N14
\decoder|decoder|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~10_combout\ = (!\decoder|decoder|i\(1) & (!\decoder|decoder|i\(3) & (\decoder|decoder|i\(2) & !\decoder|decoder|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(1),
	datab => \decoder|decoder|i\(3),
	datac => \decoder|decoder|i\(2),
	datad => \decoder|decoder|i\(0),
	combout => \decoder|decoder|Decoder0~10_combout\);

-- Location: LCCOMB_X73_Y59_N16
\decoder|decoder|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~11_combout\ = (\decoder|decoder|i\(1) & (\decoder|decoder|i\(3) & (!\decoder|decoder|i\(2) & !\decoder|decoder|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(1),
	datab => \decoder|decoder|i\(3),
	datac => \decoder|decoder|i\(2),
	datad => \decoder|decoder|i\(0),
	combout => \decoder|decoder|Decoder0~11_combout\);

-- Location: FF_X100_Y35_N23
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

-- Location: FF_X113_Y37_N31
\encoder|MAE_emission|i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|Selector8~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(31));

-- Location: LCCOMB_X111_Y37_N12
\encoder|MAE_emission|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~3_combout\ = (((!\encoder|MAE_emission|i\(13)) # (!\encoder|MAE_emission|i\(11))) # (!\encoder|MAE_emission|i\(12))) # (!\encoder|MAE_emission|i\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(14),
	datab => \encoder|MAE_emission|i\(12),
	datac => \encoder|MAE_emission|i\(11),
	datad => \encoder|MAE_emission|i\(13),
	combout => \encoder|MAE_emission|Equal0~3_combout\);

-- Location: LCCOMB_X113_Y36_N12
\encoder|MAE_emission|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~6_combout\ = (((!\encoder|MAE_emission|i\(20)) # (!\encoder|MAE_emission|i\(19))) # (!\encoder|MAE_emission|i\(21))) # (!\encoder|MAE_emission|i\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(22),
	datab => \encoder|MAE_emission|i\(21),
	datac => \encoder|MAE_emission|i\(19),
	datad => \encoder|MAE_emission|i\(20),
	combout => \encoder|MAE_emission|Equal0~6_combout\);

-- Location: FF_X99_Y35_N25
\encoder|TickGenerator|tick_manch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|tick_manch~feeder_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|tick_manch~q\);

-- Location: LCCOMB_X100_Y35_N10
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

-- Location: FF_X114_Y33_N7
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

-- Location: FF_X114_Y33_N23
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

-- Location: FF_X114_Y33_N27
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

-- Location: FF_X114_Y33_N21
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

-- Location: FF_X114_Y33_N31
\encoder|MAE_emission|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|reg[2]~feeder_combout\,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|reg\(2));

-- Location: FF_X114_Y33_N17
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

-- Location: LCCOMB_X114_Y33_N16
\encoder|MAE_emission|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~4_combout\ = (\encoder|MAE_emission|i\(0) & ((\encoder|MAE_emission|i\(1) & (\encoder|MAE_emission|reg\(2))) # (!\encoder|MAE_emission|i\(1) & ((\encoder|MAE_emission|reg\(0)))))) # (!\encoder|MAE_emission|i\(0) & 
-- (((\encoder|MAE_emission|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|reg\(2),
	datab => \encoder|MAE_emission|i\(0),
	datac => \encoder|MAE_emission|reg\(0),
	datad => \encoder|MAE_emission|i\(1),
	combout => \encoder|MAE_emission|Mux0~4_combout\);

-- Location: FF_X114_Y33_N11
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

-- Location: LCCOMB_X114_Y33_N10
\encoder|MAE_emission|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~5_combout\ = (\encoder|MAE_emission|i\(0) & (((\encoder|MAE_emission|Mux0~4_combout\)))) # (!\encoder|MAE_emission|i\(0) & ((\encoder|MAE_emission|Mux0~4_combout\ & ((\encoder|MAE_emission|reg\(3)))) # 
-- (!\encoder|MAE_emission|Mux0~4_combout\ & (\encoder|MAE_emission|reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|reg\(1),
	datab => \encoder|MAE_emission|i\(0),
	datac => \encoder|MAE_emission|reg\(3),
	datad => \encoder|MAE_emission|Mux0~4_combout\,
	combout => \encoder|MAE_emission|Mux0~5_combout\);

-- Location: LCCOMB_X112_Y35_N12
\encoder|MAE_emission|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector5~2_combout\ = (\encoder|MAE_emission|EF.State_Send~q\ & (\encoder|TickGenerator|tick_bit~q\ & ((\encoder|MAE_emission|Equal0~4_combout\) # (\encoder|MAE_emission|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Equal0~4_combout\,
	datab => \encoder|MAE_emission|EF.State_Send~q\,
	datac => \encoder|MAE_emission|Equal0~9_combout\,
	datad => \encoder|TickGenerator|tick_bit~q\,
	combout => \encoder|MAE_emission|Selector5~2_combout\);

-- Location: LCCOMB_X75_Y59_N30
\decoder|demanchester|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|comb~1_combout\ = (!\decoder|demanchester|State.Out1~q\ & (!\decoder|demanchester|State.Out0~q\ & ((\decoder|demanchester|State.Out1_valid~q\) # (\decoder|demanchester|State.Start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|State.Out1~q\,
	datab => \decoder|demanchester|State.Out1_valid~q\,
	datac => \decoder|demanchester|State.Out0~q\,
	datad => \decoder|demanchester|State.Start~q\,
	combout => \decoder|demanchester|comb~1_combout\);

-- Location: LCCOMB_X74_Y57_N10
\decoder|decoder|EF~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|EF~17_combout\ = (\decoder|demanchester|Is_Valid~combout\ & (\decoder|decoder|EF~16_combout\ & (\decoder|demanchester|Signal_Demanchester~combout\ & \decoder|decoder|Selector12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|Is_Valid~combout\,
	datab => \decoder|decoder|EF~16_combout\,
	datac => \decoder|demanchester|Signal_Demanchester~combout\,
	datad => \decoder|decoder|Selector12~1_combout\,
	combout => \decoder|decoder|EF~17_combout\);

-- Location: FF_X74_Y61_N31
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

-- Location: FF_X74_Y61_N29
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

-- Location: FF_X74_Y61_N27
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

-- Location: FF_X74_Y61_N25
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

-- Location: LCCOMB_X75_Y61_N12
\decoder|tick_gen|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~0_combout\ = (!\decoder|tick_gen|stbit\(29) & (!\decoder|tick_gen|stbit\(30) & (!\decoder|tick_gen|stbit\(28) & !\decoder|tick_gen|stbit\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(29),
	datab => \decoder|tick_gen|stbit\(30),
	datac => \decoder|tick_gen|stbit\(28),
	datad => \decoder|tick_gen|stbit\(31),
	combout => \decoder|tick_gen|Equal2~0_combout\);

-- Location: LCCOMB_X75_Y62_N12
\decoder|tick_gen|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~5_combout\ = (!\decoder|tick_gen|stbit\(13) & (!\decoder|tick_gen|stbit\(14) & (!\decoder|tick_gen|stbit\(15) & !\decoder|tick_gen|stbit\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(13),
	datab => \decoder|tick_gen|stbit\(14),
	datac => \decoder|tick_gen|stbit\(15),
	datad => \decoder|tick_gen|stbit\(12),
	combout => \decoder|tick_gen|Equal2~5_combout\);

-- Location: FF_X74_Y62_N13
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

-- Location: LCCOMB_X74_Y56_N26
\decoder|decoder|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~68_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~66_combout\,
	combout => \decoder|decoder|Add0~68_combout\);

-- Location: LCCOMB_X72_Y56_N16
\decoder|decoder|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~74_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~72_combout\,
	combout => \decoder|decoder|Add0~74_combout\);

-- Location: LCCOMB_X72_Y56_N8
\decoder|decoder|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~80_combout\ = (\decoder|decoder|Add0~78_combout\ & \decoder|decoder|EF.State_Extract~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|Add0~78_combout\,
	datad => \decoder|decoder|EF.State_Extract~q\,
	combout => \decoder|decoder|Add0~80_combout\);

-- Location: LCCOMB_X72_Y56_N26
\decoder|decoder|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~83_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~81_combout\,
	combout => \decoder|decoder|Add0~83_combout\);

-- Location: LCCOMB_X74_Y56_N6
\decoder|decoder|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~93_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~84_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~84_combout\,
	combout => \decoder|decoder|Add0~93_combout\);

-- Location: LCCOMB_X75_Y57_N10
\decoder|decoder|EF~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|EF~24_combout\ = (\decoder|decoder|EF.State_Init~q\ & (\decoder|tick_gen|tick_bit~q\ & ((!\decoder|demanchester|Signal_Demanchester~combout\) # (!\decoder|demanchester|Is_Valid~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|Is_Valid~combout\,
	datab => \decoder|decoder|EF.State_Init~q\,
	datac => \decoder|demanchester|Signal_Demanchester~combout\,
	datad => \decoder|tick_gen|tick_bit~q\,
	combout => \decoder|decoder|EF~24_combout\);

-- Location: LCCOMB_X100_Y35_N22
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

-- Location: FF_X89_Y59_N23
\encoder|TickGenerator|stburst[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~54_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(27));

-- Location: LCCOMB_X90_Y59_N14
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

-- Location: FF_X89_Y59_N7
\encoder|TickGenerator|stburst[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~38_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(19));

-- Location: LCCOMB_X88_Y59_N10
\encoder|TickGenerator|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~3_combout\ = (!\encoder|TickGenerator|stburst\(17) & (!\encoder|TickGenerator|stburst\(18) & (!\encoder|TickGenerator|stburst\(16) & !\encoder|TickGenerator|stburst\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(17),
	datab => \encoder|TickGenerator|stburst\(18),
	datac => \encoder|TickGenerator|stburst\(16),
	datad => \encoder|TickGenerator|stburst\(19),
	combout => \encoder|TickGenerator|Equal0~3_combout\);

-- Location: FF_X89_Y60_N31
\encoder|TickGenerator|stburst[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~30_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(15));

-- Location: FF_X89_Y60_N23
\encoder|TickGenerator|stburst[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~22_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(11));

-- Location: FF_X90_Y60_N3
\encoder|TickGenerator|stburst[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stburst~1_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(6));

-- Location: FF_X89_Y60_N11
\encoder|TickGenerator|stburst[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~10_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(5));

-- Location: FF_X90_Y60_N5
\encoder|TickGenerator|stburst[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stburst~2_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(4));

-- Location: LCCOMB_X90_Y60_N10
\encoder|TickGenerator|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~7_combout\ = (!\encoder|TickGenerator|stburst\(7) & (!\encoder|TickGenerator|stburst\(4) & (!\encoder|TickGenerator|stburst\(6) & !\encoder|TickGenerator|stburst\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(7),
	datab => \encoder|TickGenerator|stburst\(4),
	datac => \encoder|TickGenerator|stburst\(6),
	datad => \encoder|TickGenerator|stburst\(5),
	combout => \encoder|TickGenerator|Equal0~7_combout\);

-- Location: FF_X90_Y60_N7
\encoder|TickGenerator|stburst[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stburst~4_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(2));

-- Location: FF_X102_Y33_N31
\encoder|TickGenerator|stbit[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~62_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(31));

-- Location: FF_X102_Y33_N29
\encoder|TickGenerator|stbit[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~60_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(30));

-- Location: LCCOMB_X103_Y33_N12
\encoder|TickGenerator|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~0_combout\ = (!\encoder|TickGenerator|stbit\(31) & !\encoder|TickGenerator|stbit\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(31),
	datad => \encoder|TickGenerator|stbit\(30),
	combout => \encoder|TickGenerator|Equal2~0_combout\);

-- Location: FF_X102_Y33_N23
\encoder|TickGenerator|stbit[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~54_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(27));

-- Location: FF_X102_Y33_N11
\encoder|TickGenerator|stbit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~42_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(21));

-- Location: FF_X102_Y33_N7
\encoder|TickGenerator|stbit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~38_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(19));

-- Location: LCCOMB_X103_Y33_N4
\encoder|TickGenerator|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~4_combout\ = (!\encoder|TickGenerator|stbit\(16) & (!\encoder|TickGenerator|stbit\(19) & (!\encoder|TickGenerator|stbit\(18) & !\encoder|TickGenerator|stbit\(17))))

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
	combout => \encoder|TickGenerator|Equal2~4_combout\);

-- Location: FF_X103_Y34_N21
\encoder|TickGenerator|stbit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stbit~2_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(11));

-- Location: LCCOMB_X103_Y34_N10
\encoder|TickGenerator|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~6_combout\ = (!\encoder|TickGenerator|stbit\(10) & (!\encoder|TickGenerator|stbit\(9) & (!\encoder|TickGenerator|stbit\(11) & !\encoder|TickGenerator|stbit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(10),
	datab => \encoder|TickGenerator|stbit\(9),
	datac => \encoder|TickGenerator|stbit\(11),
	datad => \encoder|TickGenerator|stbit\(8),
	combout => \encoder|TickGenerator|Equal2~6_combout\);

-- Location: FF_X102_Y34_N13
\encoder|TickGenerator|stbit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~12_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(6));

-- Location: FF_X103_Y34_N7
\encoder|TickGenerator|stbit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stbit~7_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(1));

-- Location: LCCOMB_X113_Y37_N22
\encoder|MAE_emission|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector39~0_combout\ = (\encoder|MAE_emission|i\(0) & ((\encoder|MAE_emission|EF.State_Send~q\) # (!\encoder|MAE_emission|EF.State_Init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Init~q\,
	datac => \encoder|MAE_emission|i\(0),
	datad => \encoder|MAE_emission|EF.State_Send~q\,
	combout => \encoder|MAE_emission|Selector39~0_combout\);

-- Location: LCCOMB_X113_Y37_N24
\encoder|MAE_emission|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector8~0_combout\ = (!\encoder|MAE_emission|i\(31) & ((\encoder|MAE_emission|EF.State_Send~q\ & ((!\encoder|MAE_emission|process_0~0_combout\))) # (!\encoder|MAE_emission|EF.State_Send~q\ & 
-- (!\encoder|MAE_emission|EF.State_Init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Init~q\,
	datab => \encoder|MAE_emission|EF.State_Send~q\,
	datac => \encoder|MAE_emission|i\(31),
	datad => \encoder|MAE_emission|process_0~0_combout\,
	combout => \encoder|MAE_emission|Selector8~0_combout\);

-- Location: LCCOMB_X113_Y37_N30
\encoder|MAE_emission|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector8~1_combout\ = (!\encoder|MAE_emission|Selector8~0_combout\ & (((!\encoder|MAE_emission|Add0~62_combout\) # (!\encoder|MAE_emission|EF.State_Send~q\)) # (!\encoder|MAE_emission|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|process_0~0_combout\,
	datab => \encoder|MAE_emission|EF.State_Send~q\,
	datac => \encoder|MAE_emission|Add0~62_combout\,
	datad => \encoder|MAE_emission|Selector8~0_combout\,
	combout => \encoder|MAE_emission|Selector8~1_combout\);

-- Location: LCCOMB_X110_Y37_N24
\encoder|MAE_emission|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector33~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	datad => \encoder|MAE_emission|i\(6),
	combout => \encoder|MAE_emission|Selector33~0_combout\);

-- Location: LCCOMB_X110_Y37_N8
\encoder|MAE_emission|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector31~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|EF.State_Init~q\,
	datac => \encoder|MAE_emission|i\(8),
	combout => \encoder|MAE_emission|Selector31~0_combout\);

-- Location: LCCOMB_X110_Y37_N18
\encoder|MAE_emission|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector28~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|EF.State_Init~q\,
	datac => \encoder|MAE_emission|i\(11),
	combout => \encoder|MAE_emission|Selector28~0_combout\);

-- Location: LCCOMB_X110_Y37_N30
\encoder|MAE_emission|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector26~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	datad => \encoder|MAE_emission|i\(13),
	combout => \encoder|MAE_emission|Selector26~0_combout\);

-- Location: LCCOMB_X111_Y36_N22
\encoder|MAE_emission|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector24~0_combout\ = (\encoder|MAE_emission|i\(15) & !\encoder|MAE_emission|EF.State_Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(15),
	datad => \encoder|MAE_emission|EF.State_Init~q\,
	combout => \encoder|MAE_emission|Selector24~0_combout\);

-- Location: LCCOMB_X114_Y36_N8
\encoder|MAE_emission|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector20~0_combout\ = (\encoder|MAE_emission|i\(19) & !\encoder|MAE_emission|EF.State_Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(19),
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	combout => \encoder|MAE_emission|Selector20~0_combout\);

-- Location: LCCOMB_X114_Y36_N30
\encoder|MAE_emission|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector19~0_combout\ = (\encoder|MAE_emission|i\(20) & !\encoder|MAE_emission|EF.State_Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(20),
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	combout => \encoder|MAE_emission|Selector19~0_combout\);

-- Location: LCCOMB_X114_Y36_N18
\encoder|MAE_emission|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector9~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	datad => \encoder|MAE_emission|i\(30),
	combout => \encoder|MAE_emission|Selector9~0_combout\);

-- Location: FF_X97_Y34_N31
\encoder|TickGenerator|stmanch[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~62_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(31));

-- Location: FF_X97_Y34_N29
\encoder|TickGenerator|stmanch[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~60_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(30));

-- Location: FF_X97_Y34_N27
\encoder|TickGenerator|stmanch[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~58_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(29));

-- Location: FF_X97_Y34_N25
\encoder|TickGenerator|stmanch[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~56_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(28));

-- Location: LCCOMB_X98_Y34_N16
\encoder|TickGenerator|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~0_combout\ = (!\encoder|TickGenerator|stmanch\(31) & (!\encoder|TickGenerator|stmanch\(30) & (!\encoder|TickGenerator|stmanch\(29) & !\encoder|TickGenerator|stmanch\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(31),
	datab => \encoder|TickGenerator|stmanch\(30),
	datac => \encoder|TickGenerator|stmanch\(29),
	datad => \encoder|TickGenerator|stmanch\(28),
	combout => \encoder|TickGenerator|Equal1~0_combout\);

-- Location: FF_X97_Y34_N23
\encoder|TickGenerator|stmanch[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~54_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(27));

-- Location: FF_X97_Y34_N21
\encoder|TickGenerator|stmanch[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~52_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(26));

-- Location: FF_X97_Y34_N19
\encoder|TickGenerator|stmanch[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~50_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(25));

-- Location: FF_X97_Y34_N17
\encoder|TickGenerator|stmanch[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~48_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(24));

-- Location: LCCOMB_X98_Y34_N2
\encoder|TickGenerator|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~1_combout\ = (!\encoder|TickGenerator|stmanch\(26) & (!\encoder|TickGenerator|stmanch\(27) & (!\encoder|TickGenerator|stmanch\(24) & !\encoder|TickGenerator|stmanch\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(26),
	datab => \encoder|TickGenerator|stmanch\(27),
	datac => \encoder|TickGenerator|stmanch\(24),
	datad => \encoder|TickGenerator|stmanch\(25),
	combout => \encoder|TickGenerator|Equal1~1_combout\);

-- Location: FF_X97_Y34_N15
\encoder|TickGenerator|stmanch[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~46_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(23));

-- Location: FF_X97_Y34_N13
\encoder|TickGenerator|stmanch[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~44_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(22));

-- Location: FF_X97_Y34_N11
\encoder|TickGenerator|stmanch[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~42_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(21));

-- Location: FF_X97_Y34_N9
\encoder|TickGenerator|stmanch[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~40_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(20));

-- Location: LCCOMB_X98_Y34_N12
\encoder|TickGenerator|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~2_combout\ = (!\encoder|TickGenerator|stmanch\(21) & (!\encoder|TickGenerator|stmanch\(22) & (!\encoder|TickGenerator|stmanch\(23) & !\encoder|TickGenerator|stmanch\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(21),
	datab => \encoder|TickGenerator|stmanch\(22),
	datac => \encoder|TickGenerator|stmanch\(23),
	datad => \encoder|TickGenerator|stmanch\(20),
	combout => \encoder|TickGenerator|Equal1~2_combout\);

-- Location: FF_X97_Y34_N7
\encoder|TickGenerator|stmanch[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~38_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(19));

-- Location: FF_X97_Y34_N5
\encoder|TickGenerator|stmanch[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~36_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(18));

-- Location: FF_X97_Y34_N3
\encoder|TickGenerator|stmanch[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~34_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(17));

-- Location: FF_X97_Y34_N1
\encoder|TickGenerator|stmanch[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~32_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(16));

-- Location: LCCOMB_X98_Y34_N22
\encoder|TickGenerator|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~3_combout\ = (!\encoder|TickGenerator|stmanch\(16) & (!\encoder|TickGenerator|stmanch\(18) & (!\encoder|TickGenerator|stmanch\(19) & !\encoder|TickGenerator|stmanch\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(16),
	datab => \encoder|TickGenerator|stmanch\(18),
	datac => \encoder|TickGenerator|stmanch\(19),
	datad => \encoder|TickGenerator|stmanch\(17),
	combout => \encoder|TickGenerator|Equal1~3_combout\);

-- Location: LCCOMB_X98_Y34_N0
\encoder|TickGenerator|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~4_combout\ = (\encoder|TickGenerator|Equal1~2_combout\ & (\encoder|TickGenerator|Equal1~1_combout\ & (\encoder|TickGenerator|Equal1~3_combout\ & \encoder|TickGenerator|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal1~2_combout\,
	datab => \encoder|TickGenerator|Equal1~1_combout\,
	datac => \encoder|TickGenerator|Equal1~3_combout\,
	datad => \encoder|TickGenerator|Equal1~0_combout\,
	combout => \encoder|TickGenerator|Equal1~4_combout\);

-- Location: FF_X97_Y35_N31
\encoder|TickGenerator|stmanch[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~30_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(15));

-- Location: FF_X98_Y35_N21
\encoder|TickGenerator|stmanch[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stmanch~0_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(14));

-- Location: FF_X97_Y35_N27
\encoder|TickGenerator|stmanch[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~26_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(13));

-- Location: FF_X98_Y35_N3
\encoder|TickGenerator|stmanch[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stmanch~1_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(12));

-- Location: LCCOMB_X98_Y35_N8
\encoder|TickGenerator|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~5_combout\ = (!\encoder|TickGenerator|stmanch\(15) & (!\encoder|TickGenerator|stmanch\(14) & (!\encoder|TickGenerator|stmanch\(13) & !\encoder|TickGenerator|stmanch\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(15),
	datab => \encoder|TickGenerator|stmanch\(14),
	datac => \encoder|TickGenerator|stmanch\(13),
	datad => \encoder|TickGenerator|stmanch\(12),
	combout => \encoder|TickGenerator|Equal1~5_combout\);

-- Location: FF_X97_Y35_N23
\encoder|TickGenerator|stmanch[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~22_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(11));

-- Location: FF_X98_Y35_N31
\encoder|TickGenerator|stmanch[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stmanch~2_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(10));

-- Location: FF_X98_Y35_N29
\encoder|TickGenerator|stmanch[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stmanch~3_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(9));

-- Location: FF_X97_Y35_N17
\encoder|TickGenerator|stmanch[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~16_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(8));

-- Location: LCCOMB_X98_Y35_N18
\encoder|TickGenerator|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~6_combout\ = (!\encoder|TickGenerator|stmanch\(10) & (!\encoder|TickGenerator|stmanch\(11) & (!\encoder|TickGenerator|stmanch\(8) & !\encoder|TickGenerator|stmanch\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(10),
	datab => \encoder|TickGenerator|stmanch\(11),
	datac => \encoder|TickGenerator|stmanch\(8),
	datad => \encoder|TickGenerator|stmanch\(9),
	combout => \encoder|TickGenerator|Equal1~6_combout\);

-- Location: FF_X98_Y35_N1
\encoder|TickGenerator|stmanch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stmanch~4_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(7));

-- Location: FF_X98_Y35_N27
\encoder|TickGenerator|stmanch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stmanch~5_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(6));

-- Location: LCCOMB_X98_Y35_N16
\encoder|TickGenerator|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~7_combout\ = (!\encoder|TickGenerator|stmanch\(6) & !\encoder|TickGenerator|stmanch\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|stmanch\(6),
	datad => \encoder|TickGenerator|stmanch\(7),
	combout => \encoder|TickGenerator|Equal1~7_combout\);

-- Location: FF_X97_Y35_N7
\encoder|TickGenerator|stmanch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~6_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(3));

-- Location: FF_X97_Y35_N5
\encoder|TickGenerator|stmanch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~4_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(2));

-- Location: FF_X98_Y35_N7
\encoder|TickGenerator|stmanch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stmanch~6_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(1));

-- Location: FF_X98_Y35_N5
\encoder|TickGenerator|stmanch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stmanch~7_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(0));

-- Location: LCCOMB_X98_Y35_N22
\encoder|TickGenerator|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~8_combout\ = (!\encoder|TickGenerator|stmanch\(1) & (!\encoder|TickGenerator|stmanch\(2) & (!\encoder|TickGenerator|stmanch\(0) & !\encoder|TickGenerator|stmanch\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(1),
	datab => \encoder|TickGenerator|stmanch\(2),
	datac => \encoder|TickGenerator|stmanch\(0),
	datad => \encoder|TickGenerator|stmanch\(3),
	combout => \encoder|TickGenerator|Equal1~8_combout\);

-- Location: FF_X97_Y35_N11
\encoder|TickGenerator|stmanch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add1~10_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(5));

-- Location: FF_X98_Y35_N13
\encoder|TickGenerator|stmanch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stmanch~8_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stmanch\(4));

-- Location: LCCOMB_X98_Y35_N10
\encoder|TickGenerator|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~9_combout\ = (!\encoder|TickGenerator|stmanch\(5) & (\encoder|TickGenerator|Equal1~7_combout\ & (\encoder|TickGenerator|Equal1~8_combout\ & !\encoder|TickGenerator|stmanch\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stmanch\(5),
	datab => \encoder|TickGenerator|Equal1~7_combout\,
	datac => \encoder|TickGenerator|Equal1~8_combout\,
	datad => \encoder|TickGenerator|stmanch\(4),
	combout => \encoder|TickGenerator|Equal1~9_combout\);

-- Location: LCCOMB_X98_Y35_N24
\encoder|TickGenerator|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal1~10_combout\ = (\encoder|TickGenerator|Equal1~9_combout\ & (\encoder|TickGenerator|Equal1~4_combout\ & (\encoder|TickGenerator|Equal1~5_combout\ & \encoder|TickGenerator|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal1~9_combout\,
	datab => \encoder|TickGenerator|Equal1~4_combout\,
	datac => \encoder|TickGenerator|Equal1~5_combout\,
	datad => \encoder|TickGenerator|Equal1~6_combout\,
	combout => \encoder|TickGenerator|Equal1~10_combout\);

-- Location: FF_X114_Y37_N15
\encoder|MAE_emission|toggle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|toggle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|toggle~q\);

-- Location: LCCOMB_X90_Y60_N2
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

-- Location: LCCOMB_X90_Y60_N4
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

-- Location: LCCOMB_X90_Y60_N6
\encoder|TickGenerator|stburst~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stburst~4_combout\ = (\encoder|TickGenerator|Add0~4_combout\ & !\encoder|TickGenerator|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|Add0~4_combout\,
	datac => \encoder|TickGenerator|Equal0~10_combout\,
	combout => \encoder|TickGenerator|stburst~4_combout\);

-- Location: FF_X74_Y20_N31
\encoder|TickGenerator|sttrame[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~60_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(31));

-- Location: FF_X74_Y20_N23
\encoder|TickGenerator|sttrame[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~52_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(27));

-- Location: LCCOMB_X73_Y20_N18
\encoder|TickGenerator|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~1_combout\ = (!\encoder|TickGenerator|sttrame\(26) & (!\encoder|TickGenerator|sttrame\(25) & (!\encoder|TickGenerator|sttrame\(28) & !\encoder|TickGenerator|sttrame\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(26),
	datab => \encoder|TickGenerator|sttrame\(25),
	datac => \encoder|TickGenerator|sttrame\(28),
	datad => \encoder|TickGenerator|sttrame\(27),
	combout => \encoder|TickGenerator|Equal3~1_combout\);

-- Location: FF_X73_Y20_N13
\encoder|TickGenerator|sttrame[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~0_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(22));

-- Location: FF_X74_Y20_N7
\encoder|TickGenerator|sttrame[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~36_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(19));

-- Location: FF_X73_Y21_N17
\encoder|TickGenerator|sttrame[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~6_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(13));

-- Location: LCCOMB_X73_Y21_N10
\encoder|TickGenerator|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~5_combout\ = (!\encoder|TickGenerator|sttrame\(15) & (!\encoder|TickGenerator|sttrame\(13) & (!\encoder|TickGenerator|sttrame\(14) & !\encoder|TickGenerator|sttrame\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(15),
	datab => \encoder|TickGenerator|sttrame\(13),
	datac => \encoder|TickGenerator|sttrame\(14),
	datad => \encoder|TickGenerator|sttrame\(16),
	combout => \encoder|TickGenerator|Equal3~5_combout\);

-- Location: FF_X73_Y21_N13
\encoder|TickGenerator|sttrame[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~10_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(7));

-- Location: FF_X74_Y21_N7
\encoder|TickGenerator|sttrame[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~4_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(3));

-- Location: LCCOMB_X103_Y34_N20
\encoder|TickGenerator|stbit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit~2_combout\ = (\encoder|TickGenerator|Equal2~10_combout\) # (!\encoder|TickGenerator|Add2~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal2~10_combout\,
	datad => \encoder|TickGenerator|Add2~22_combout\,
	combout => \encoder|TickGenerator|stbit~2_combout\);

-- Location: LCCOMB_X103_Y34_N6
\encoder|TickGenerator|stbit~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit~7_combout\ = (\encoder|TickGenerator|Equal2~10_combout\) # (!\encoder|TickGenerator|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal2~10_combout\,
	datad => \encoder|TickGenerator|Add2~2_combout\,
	combout => \encoder|TickGenerator|stbit~7_combout\);

-- Location: LCCOMB_X98_Y35_N20
\encoder|TickGenerator|stmanch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~0_combout\ = (\encoder|TickGenerator|Equal1~10_combout\) # (!\encoder|TickGenerator|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|Equal1~10_combout\,
	datad => \encoder|TickGenerator|Add1~28_combout\,
	combout => \encoder|TickGenerator|stmanch~0_combout\);

-- Location: LCCOMB_X98_Y35_N2
\encoder|TickGenerator|stmanch~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~1_combout\ = (\encoder|TickGenerator|Equal1~10_combout\) # (!\encoder|TickGenerator|Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|Equal1~10_combout\,
	datad => \encoder|TickGenerator|Add1~24_combout\,
	combout => \encoder|TickGenerator|stmanch~1_combout\);

-- Location: LCCOMB_X98_Y35_N30
\encoder|TickGenerator|stmanch~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~2_combout\ = (\encoder|TickGenerator|Equal1~10_combout\) # (!\encoder|TickGenerator|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|Equal1~10_combout\,
	datad => \encoder|TickGenerator|Add1~20_combout\,
	combout => \encoder|TickGenerator|stmanch~2_combout\);

-- Location: LCCOMB_X98_Y35_N28
\encoder|TickGenerator|stmanch~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~3_combout\ = (\encoder|TickGenerator|Equal1~10_combout\) # (!\encoder|TickGenerator|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|Equal1~10_combout\,
	datad => \encoder|TickGenerator|Add1~18_combout\,
	combout => \encoder|TickGenerator|stmanch~3_combout\);

-- Location: LCCOMB_X98_Y35_N0
\encoder|TickGenerator|stmanch~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~4_combout\ = (\encoder|TickGenerator|Equal1~10_combout\) # (!\encoder|TickGenerator|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|Equal1~10_combout\,
	datad => \encoder|TickGenerator|Add1~14_combout\,
	combout => \encoder|TickGenerator|stmanch~4_combout\);

-- Location: LCCOMB_X98_Y35_N26
\encoder|TickGenerator|stmanch~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~5_combout\ = (\encoder|TickGenerator|Equal1~10_combout\) # (!\encoder|TickGenerator|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Add1~12_combout\,
	datad => \encoder|TickGenerator|Equal1~10_combout\,
	combout => \encoder|TickGenerator|stmanch~5_combout\);

-- Location: LCCOMB_X98_Y35_N6
\encoder|TickGenerator|stmanch~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~6_combout\ = (\encoder|TickGenerator|Add1~2_combout\ & !\encoder|TickGenerator|Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Add1~2_combout\,
	datad => \encoder|TickGenerator|Equal1~10_combout\,
	combout => \encoder|TickGenerator|stmanch~6_combout\);

-- Location: LCCOMB_X98_Y35_N4
\encoder|TickGenerator|stmanch~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~7_combout\ = (!\encoder|TickGenerator|Add1~0_combout\ & !\encoder|TickGenerator|Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Add1~0_combout\,
	datad => \encoder|TickGenerator|Equal1~10_combout\,
	combout => \encoder|TickGenerator|stmanch~7_combout\);

-- Location: LCCOMB_X98_Y35_N12
\encoder|TickGenerator|stmanch~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stmanch~8_combout\ = (\encoder|TickGenerator|Equal1~10_combout\) # (!\encoder|TickGenerator|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Add1~8_combout\,
	datad => \encoder|TickGenerator|Equal1~10_combout\,
	combout => \encoder|TickGenerator|stmanch~8_combout\);

-- Location: LCCOMB_X114_Y37_N14
\encoder|MAE_emission|toggle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|toggle~0_combout\ = (!\rst~input_o\ & (\encoder|MAE_emission|toggle~q\ $ (\encoder|MAE_emission|EF.State_Clear~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \encoder|MAE_emission|toggle~q\,
	datad => \encoder|MAE_emission|EF.State_Clear~q\,
	combout => \encoder|MAE_emission|toggle~0_combout\);

-- Location: FF_X83_Y56_N31
\decoder|tick_gen|stmanch[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~62_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(31));

-- Location: FF_X83_Y56_N29
\decoder|tick_gen|stmanch[30]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(30));

-- Location: FF_X83_Y56_N27
\decoder|tick_gen|stmanch[29]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(29));

-- Location: FF_X83_Y56_N25
\decoder|tick_gen|stmanch[28]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(28));

-- Location: LCCOMB_X84_Y56_N8
\decoder|tick_gen|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~0_combout\ = (!\decoder|tick_gen|stmanch\(30) & (!\decoder|tick_gen|stmanch\(31) & (!\decoder|tick_gen|stmanch\(29) & !\decoder|tick_gen|stmanch\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(30),
	datab => \decoder|tick_gen|stmanch\(31),
	datac => \decoder|tick_gen|stmanch\(29),
	datad => \decoder|tick_gen|stmanch\(28),
	combout => \decoder|tick_gen|Equal1~0_combout\);

-- Location: FF_X83_Y56_N23
\decoder|tick_gen|stmanch[27]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(27));

-- Location: FF_X83_Y56_N21
\decoder|tick_gen|stmanch[26]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(26));

-- Location: FF_X83_Y56_N19
\decoder|tick_gen|stmanch[25]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(25));

-- Location: FF_X83_Y56_N17
\decoder|tick_gen|stmanch[24]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(24));

-- Location: LCCOMB_X84_Y56_N22
\decoder|tick_gen|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~1_combout\ = (!\decoder|tick_gen|stmanch\(25) & (!\decoder|tick_gen|stmanch\(26) & (!\decoder|tick_gen|stmanch\(24) & !\decoder|tick_gen|stmanch\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(25),
	datab => \decoder|tick_gen|stmanch\(26),
	datac => \decoder|tick_gen|stmanch\(24),
	datad => \decoder|tick_gen|stmanch\(27),
	combout => \decoder|tick_gen|Equal1~1_combout\);

-- Location: FF_X83_Y56_N15
\decoder|tick_gen|stmanch[23]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(23));

-- Location: FF_X83_Y56_N13
\decoder|tick_gen|stmanch[22]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(22));

-- Location: FF_X83_Y56_N11
\decoder|tick_gen|stmanch[21]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(21));

-- Location: FF_X83_Y56_N9
\decoder|tick_gen|stmanch[20]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(20));

-- Location: LCCOMB_X84_Y56_N12
\decoder|tick_gen|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~2_combout\ = (!\decoder|tick_gen|stmanch\(22) & (!\decoder|tick_gen|stmanch\(23) & (!\decoder|tick_gen|stmanch\(20) & !\decoder|tick_gen|stmanch\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(22),
	datab => \decoder|tick_gen|stmanch\(23),
	datac => \decoder|tick_gen|stmanch\(20),
	datad => \decoder|tick_gen|stmanch\(21),
	combout => \decoder|tick_gen|Equal1~2_combout\);

-- Location: FF_X83_Y56_N7
\decoder|tick_gen|stmanch[19]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(19));

-- Location: FF_X83_Y56_N5
\decoder|tick_gen|stmanch[18]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(18));

-- Location: FF_X83_Y56_N3
\decoder|tick_gen|stmanch[17]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(17));

-- Location: FF_X83_Y56_N1
\decoder|tick_gen|stmanch[16]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(16));

-- Location: LCCOMB_X84_Y56_N2
\decoder|tick_gen|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~3_combout\ = (!\decoder|tick_gen|stmanch\(16) & (!\decoder|tick_gen|stmanch\(18) & (!\decoder|tick_gen|stmanch\(19) & !\decoder|tick_gen|stmanch\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(16),
	datab => \decoder|tick_gen|stmanch\(18),
	datac => \decoder|tick_gen|stmanch\(19),
	datad => \decoder|tick_gen|stmanch\(17),
	combout => \decoder|tick_gen|Equal1~3_combout\);

-- Location: LCCOMB_X84_Y56_N0
\decoder|tick_gen|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~4_combout\ = (\decoder|tick_gen|Equal1~2_combout\ & (\decoder|tick_gen|Equal1~0_combout\ & (\decoder|tick_gen|Equal1~1_combout\ & \decoder|tick_gen|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal1~2_combout\,
	datab => \decoder|tick_gen|Equal1~0_combout\,
	datac => \decoder|tick_gen|Equal1~1_combout\,
	datad => \decoder|tick_gen|Equal1~3_combout\,
	combout => \decoder|tick_gen|Equal1~4_combout\);

-- Location: FF_X84_Y57_N31
\decoder|tick_gen|stmanch[12]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(12));

-- Location: FF_X83_Y57_N7
\decoder|tick_gen|stmanch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(3));

-- Location: LCCOMB_X73_Y20_N12
\encoder|TickGenerator|sttrame~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~0_combout\ = (\encoder|TickGenerator|Equal3~10_combout\) # (!\encoder|TickGenerator|Add3~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~10_combout\,
	datac => \encoder|TickGenerator|Add3~42_combout\,
	combout => \encoder|TickGenerator|sttrame~0_combout\);

-- Location: LCCOMB_X73_Y21_N16
\encoder|TickGenerator|sttrame~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~6_combout\ = (\encoder|TickGenerator|Equal3~10_combout\) # (!\encoder|TickGenerator|Add3~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal3~10_combout\,
	datad => \encoder|TickGenerator|Add3~24_combout\,
	combout => \encoder|TickGenerator|sttrame~6_combout\);

-- Location: LCCOMB_X73_Y21_N12
\encoder|TickGenerator|sttrame~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~10_combout\ = (\encoder|TickGenerator|Equal3~10_combout\) # (!\encoder|TickGenerator|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~10_combout\,
	datac => \encoder|TickGenerator|Add3~12_combout\,
	combout => \encoder|TickGenerator|sttrame~10_combout\);

-- Location: FF_X82_Y57_N31
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

-- Location: FF_X82_Y57_N29
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

-- Location: FF_X82_Y57_N27
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

-- Location: FF_X82_Y57_N25
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

-- Location: LCCOMB_X81_Y57_N12
\decoder|tick_gen|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~0_combout\ = (!\decoder|tick_gen|stburst\(29) & (!\decoder|tick_gen|stburst\(28) & (!\decoder|tick_gen|stburst\(31) & !\decoder|tick_gen|stburst\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(29),
	datab => \decoder|tick_gen|stburst\(28),
	datac => \decoder|tick_gen|stburst\(31),
	datad => \decoder|tick_gen|stburst\(30),
	combout => \decoder|tick_gen|Equal0~0_combout\);

-- Location: FF_X82_Y57_N23
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

-- Location: FF_X82_Y58_N31
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

-- Location: FF_X82_Y58_N27
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

-- Location: LCCOMB_X83_Y58_N22
\decoder|tick_gen|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~5_combout\ = (!\decoder|tick_gen|stburst\(15) & (!\decoder|tick_gen|stburst\(14) & (!\decoder|tick_gen|stburst\(13) & !\decoder|tick_gen|stburst\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(15),
	datab => \decoder|tick_gen|stburst\(14),
	datac => \decoder|tick_gen|stburst\(13),
	datad => \decoder|tick_gen|stburst\(12),
	combout => \decoder|tick_gen|Equal0~5_combout\);

-- Location: FF_X83_Y58_N31
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

-- Location: FF_X82_Y58_N11
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

-- Location: FF_X83_Y58_N21
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

-- Location: LCCOMB_X83_Y58_N10
\decoder|tick_gen|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~8_combout\ = (!\decoder|tick_gen|stburst\(7) & (!\decoder|tick_gen|stburst\(4) & (!\decoder|tick_gen|stburst\(6) & !\decoder|tick_gen|stburst\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(7),
	datab => \decoder|tick_gen|stburst\(4),
	datac => \decoder|tick_gen|stburst\(6),
	datad => \decoder|tick_gen|stburst\(5),
	combout => \decoder|tick_gen|Equal0~8_combout\);

-- Location: FF_X83_Y58_N7
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

-- Location: FF_X79_Y59_N1
\decoder|deburst|EP.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|deburst|EP~9_combout\,
	ena => \decoder|deburst|EP~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|deburst|EP.E3~q\);

-- Location: LCCOMB_X79_Y59_N12
\decoder|deburst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|deburst|Selector0~0_combout\ = (!\decoder|deburst|EP.E3~q\ & ((\decoder|deburst|EP.E0~q\) # (\encoder|Tx~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|deburst|EP.E3~q\,
	datac => \decoder|deburst|EP.E0~q\,
	datad => \encoder|Tx~0_combout\,
	combout => \decoder|deburst|Selector0~0_combout\);

-- Location: LCCOMB_X79_Y59_N22
\decoder|deburst|EP~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|deburst|EP~8_combout\ = (\rst~input_o\) # (\decoder|tick_gen|tick_burst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \decoder|tick_gen|tick_burst~q\,
	combout => \decoder|deburst|EP~8_combout\);

-- Location: LCCOMB_X84_Y57_N30
\decoder|tick_gen|stmanch~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~3_combout\ = (\decoder|tick_gen|Equal1~10_combout\) # (!\decoder|tick_gen|Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal1~10_combout\,
	datad => \decoder|tick_gen|Add1~24_combout\,
	combout => \decoder|tick_gen|stmanch~3_combout\);

-- Location: LCCOMB_X83_Y58_N30
\decoder|tick_gen|stburst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stburst~1_combout\ = (\decoder|tick_gen|Equal0~10_combout\) # (!\decoder|tick_gen|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Add0~12_combout\,
	datad => \decoder|tick_gen|Equal0~10_combout\,
	combout => \decoder|tick_gen|stburst~1_combout\);

-- Location: LCCOMB_X83_Y58_N20
\decoder|tick_gen|stburst~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stburst~2_combout\ = (\decoder|tick_gen|Equal0~10_combout\) # (!\decoder|tick_gen|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Add0~8_combout\,
	datad => \decoder|tick_gen|Equal0~10_combout\,
	combout => \decoder|tick_gen|stburst~2_combout\);

-- Location: LCCOMB_X83_Y58_N6
\decoder|tick_gen|stburst~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stburst~4_combout\ = (\decoder|tick_gen|Add0~4_combout\ & !\decoder|tick_gen|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Add0~4_combout\,
	datad => \decoder|tick_gen|Equal0~10_combout\,
	combout => \decoder|tick_gen|stburst~4_combout\);

-- Location: FF_X79_Y59_N17
\decoder|deburst|EP.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|deburst|EP~10_combout\,
	ena => \decoder|deburst|EP~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|deburst|EP.E2~q\);

-- Location: LCCOMB_X79_Y59_N0
\decoder|deburst|EP~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|deburst|EP~9_combout\ = (!\rst~input_o\ & \decoder|deburst|EP.E2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \decoder|deburst|EP.E2~q\,
	combout => \decoder|deburst|EP~9_combout\);

-- Location: LCCOMB_X79_Y59_N16
\decoder|deburst|EP~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|deburst|EP~10_combout\ = (!\rst~input_o\ & \decoder|deburst|EP.E1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \decoder|deburst|EP.E1~q\,
	combout => \decoder|deburst|EP~10_combout\);

-- Location: LCCOMB_X79_Y59_N2
\decoder|deburst|EP~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|deburst|EP~11_combout\ = (!\decoder|deburst|EP.E0~q\ & \encoder|Tx~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|EP.E0~q\,
	datad => \encoder|Tx~0_combout\,
	combout => \decoder|deburst|EP~11_combout\);

-- Location: LCCOMB_X114_Y33_N22
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

-- Location: LCCOMB_X75_Y59_N0
\decoder|demanchester|Is_Valid\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Is_Valid~combout\ = (\decoder|demanchester|State.Init~q\ & ((\decoder|demanchester|State.Start~q\) # (\decoder|demanchester|Is_Valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|demanchester|State.Start~q\,
	datac => \decoder|demanchester|State.Init~q\,
	datad => \decoder|demanchester|Is_Valid~combout\,
	combout => \decoder|demanchester|Is_Valid~combout\);

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

-- Location: LCCOMB_X99_Y35_N24
\encoder|TickGenerator|tick_manch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|tick_manch~feeder_combout\ = \encoder|TickGenerator|Equal1~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encoder|TickGenerator|Equal1~10_combout\,
	combout => \encoder|TickGenerator|tick_manch~feeder_combout\);

-- Location: LCCOMB_X114_Y33_N26
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

-- Location: LCCOMB_X114_Y33_N20
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

-- Location: LCCOMB_X114_Y33_N30
\encoder|MAE_emission|reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|reg[2]~feeder_combout\ = \Cmd_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cmd_in[2]~input_o\,
	combout => \encoder|MAE_emission|reg[2]~feeder_combout\);

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

-- Location: LCCOMB_X73_Y57_N0
\decoder|decoder|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~0_combout\ = \decoder|decoder|i\(0) $ (GND)
-- \decoder|decoder|Add0~1\ = CARRY(!\decoder|decoder|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(0),
	datad => VCC,
	combout => \decoder|decoder|Add0~0_combout\,
	cout => \decoder|decoder|Add0~1\);

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

-- Location: LCCOMB_X82_Y58_N0
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

-- Location: LCCOMB_X82_Y58_N2
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

-- Location: LCCOMB_X83_Y58_N0
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

-- Location: FF_X82_Y58_N5
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

-- Location: LCCOMB_X82_Y58_N6
\decoder|tick_gen|Add0~6\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X83_Y58_N8
\decoder|tick_gen|stburst~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stburst~3_combout\ = (\decoder|tick_gen|Equal0~10_combout\) # (!\decoder|tick_gen|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Add0~6_combout\,
	datad => \decoder|tick_gen|Equal0~10_combout\,
	combout => \decoder|tick_gen|stburst~3_combout\);

-- Location: FF_X83_Y58_N9
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

-- Location: LCCOMB_X83_Y58_N4
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

-- Location: FF_X83_Y58_N5
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

-- Location: LCCOMB_X83_Y58_N2
\decoder|tick_gen|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~9_combout\ = (!\decoder|tick_gen|stburst\(2) & (!\decoder|tick_gen|stburst\(3) & (!\decoder|tick_gen|stburst\(0) & !\decoder|tick_gen|stburst\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(2),
	datab => \decoder|tick_gen|stburst\(3),
	datac => \decoder|tick_gen|stburst\(0),
	datad => \decoder|tick_gen|stburst\(1),
	combout => \decoder|tick_gen|Equal0~9_combout\);

-- Location: LCCOMB_X82_Y58_N14
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

-- Location: FF_X82_Y58_N15
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

-- Location: LCCOMB_X82_Y58_N16
\decoder|tick_gen|Add0~16\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X83_Y58_N28
\decoder|tick_gen|stburst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stburst~0_combout\ = (\decoder|tick_gen|Equal0~10_combout\) # (!\decoder|tick_gen|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Add0~16_combout\,
	datad => \decoder|tick_gen|Equal0~10_combout\,
	combout => \decoder|tick_gen|stburst~0_combout\);

-- Location: FF_X83_Y58_N29
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

-- Location: LCCOMB_X82_Y58_N18
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

-- Location: FF_X82_Y58_N19
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

-- Location: LCCOMB_X82_Y58_N20
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

-- Location: FF_X82_Y58_N21
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

-- Location: LCCOMB_X82_Y58_N22
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

-- Location: LCCOMB_X82_Y58_N24
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

-- Location: FF_X82_Y58_N25
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

-- Location: LCCOMB_X82_Y58_N28
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

-- Location: FF_X82_Y58_N29
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

-- Location: LCCOMB_X82_Y57_N0
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

-- Location: FF_X82_Y57_N1
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

-- Location: LCCOMB_X82_Y57_N2
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

-- Location: FF_X82_Y57_N3
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

-- Location: LCCOMB_X82_Y57_N4
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

-- Location: FF_X82_Y57_N5
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

-- Location: LCCOMB_X82_Y57_N6
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

-- Location: LCCOMB_X82_Y57_N8
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

-- Location: FF_X82_Y57_N9
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

-- Location: LCCOMB_X82_Y57_N10
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

-- Location: LCCOMB_X82_Y57_N12
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

-- Location: FF_X82_Y57_N13
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

-- Location: FF_X82_Y57_N11
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

-- Location: LCCOMB_X81_Y57_N8
\decoder|tick_gen|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~2_combout\ = (!\decoder|tick_gen|stburst\(23) & (!\decoder|tick_gen|stburst\(22) & (!\decoder|tick_gen|stburst\(21) & !\decoder|tick_gen|stburst\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(23),
	datab => \decoder|tick_gen|stburst\(22),
	datac => \decoder|tick_gen|stburst\(21),
	datad => \decoder|tick_gen|stburst\(20),
	combout => \decoder|tick_gen|Equal0~2_combout\);

-- Location: LCCOMB_X82_Y57_N14
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

-- Location: FF_X82_Y57_N15
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

-- Location: LCCOMB_X82_Y57_N16
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

-- Location: FF_X82_Y57_N17
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

-- Location: LCCOMB_X82_Y57_N18
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

-- Location: FF_X82_Y57_N19
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

-- Location: FF_X82_Y57_N21
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

-- Location: LCCOMB_X81_Y57_N22
\decoder|tick_gen|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~1_combout\ = (!\decoder|tick_gen|stburst\(27) & (!\decoder|tick_gen|stburst\(24) & (!\decoder|tick_gen|stburst\(26) & !\decoder|tick_gen|stburst\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(27),
	datab => \decoder|tick_gen|stburst\(24),
	datac => \decoder|tick_gen|stburst\(26),
	datad => \decoder|tick_gen|stburst\(25),
	combout => \decoder|tick_gen|Equal0~1_combout\);

-- Location: FF_X82_Y57_N7
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

-- Location: LCCOMB_X81_Y57_N2
\decoder|tick_gen|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~3_combout\ = (!\decoder|tick_gen|stburst\(18) & (!\decoder|tick_gen|stburst\(19) & (!\decoder|tick_gen|stburst\(16) & !\decoder|tick_gen|stburst\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stburst\(18),
	datab => \decoder|tick_gen|stburst\(19),
	datac => \decoder|tick_gen|stburst\(16),
	datad => \decoder|tick_gen|stburst\(17),
	combout => \decoder|tick_gen|Equal0~3_combout\);

-- Location: LCCOMB_X81_Y57_N0
\decoder|tick_gen|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~4_combout\ = (\decoder|tick_gen|Equal0~0_combout\ & (\decoder|tick_gen|Equal0~2_combout\ & (\decoder|tick_gen|Equal0~1_combout\ & \decoder|tick_gen|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal0~0_combout\,
	datab => \decoder|tick_gen|Equal0~2_combout\,
	datac => \decoder|tick_gen|Equal0~1_combout\,
	datad => \decoder|tick_gen|Equal0~3_combout\,
	combout => \decoder|tick_gen|Equal0~4_combout\);

-- Location: LCCOMB_X83_Y58_N26
\decoder|tick_gen|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~6_combout\ = (!\decoder|tick_gen|stburst\(9) & !\decoder|tick_gen|stburst\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stburst\(9),
	datad => \decoder|tick_gen|stburst\(8),
	combout => \decoder|tick_gen|Equal0~6_combout\);

-- Location: FF_X82_Y58_N23
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

-- Location: LCCOMB_X83_Y58_N12
\decoder|tick_gen|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~7_combout\ = (\decoder|tick_gen|Equal0~5_combout\ & (!\decoder|tick_gen|stburst\(10) & (\decoder|tick_gen|Equal0~6_combout\ & !\decoder|tick_gen|stburst\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal0~5_combout\,
	datab => \decoder|tick_gen|stburst\(10),
	datac => \decoder|tick_gen|Equal0~6_combout\,
	datad => \decoder|tick_gen|stburst\(11),
	combout => \decoder|tick_gen|Equal0~7_combout\);

-- Location: LCCOMB_X83_Y58_N24
\decoder|tick_gen|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal0~10_combout\ = (\decoder|tick_gen|Equal0~8_combout\ & (\decoder|tick_gen|Equal0~9_combout\ & (\decoder|tick_gen|Equal0~4_combout\ & \decoder|tick_gen|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal0~8_combout\,
	datab => \decoder|tick_gen|Equal0~9_combout\,
	datac => \decoder|tick_gen|Equal0~4_combout\,
	datad => \decoder|tick_gen|Equal0~7_combout\,
	combout => \decoder|tick_gen|Equal0~10_combout\);

-- Location: FF_X83_Y58_N25
\decoder|tick_gen|tick_burst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Equal0~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|tick_burst~q\);

-- Location: LCCOMB_X79_Y59_N14
\decoder|deburst|trame_deburst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|deburst|trame_deburst~0_combout\ = (!\rst~input_o\ & \decoder|tick_gen|tick_burst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \decoder|tick_gen|tick_burst~q\,
	combout => \decoder|deburst|trame_deburst~0_combout\);

-- Location: LCCOMB_X100_Y35_N2
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

-- Location: LCCOMB_X90_Y60_N26
\encoder|TickGenerator|stburst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stburst~0_combout\ = (\encoder|TickGenerator|Equal0~10_combout\) # (!\encoder|TickGenerator|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Add0~16_combout\,
	datac => \encoder|TickGenerator|Equal0~10_combout\,
	combout => \encoder|TickGenerator|stburst~0_combout\);

-- Location: LCCOMB_X102_Y34_N0
\encoder|TickGenerator|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~0_combout\ = \encoder|TickGenerator|stbit\(0) $ (VCC)
-- \encoder|TickGenerator|Add2~1\ = CARRY(\encoder|TickGenerator|stbit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(0),
	datad => VCC,
	combout => \encoder|TickGenerator|Add2~0_combout\,
	cout => \encoder|TickGenerator|Add2~1\);

-- Location: LCCOMB_X98_Y21_N4
\encoder|TickGenerator|stbit[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit[0]~feeder_combout\ = \encoder|TickGenerator|Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encoder|TickGenerator|Add2~0_combout\,
	combout => \encoder|TickGenerator|stbit[0]~feeder_combout\);

-- Location: FF_X98_Y21_N5
\encoder|TickGenerator|stbit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stbit[0]~feeder_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(0));

-- Location: LCCOMB_X102_Y34_N4
\encoder|TickGenerator|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~4_combout\ = (\encoder|TickGenerator|stbit\(2) & (\encoder|TickGenerator|Add2~3\ $ (GND))) # (!\encoder|TickGenerator|stbit\(2) & (!\encoder|TickGenerator|Add2~3\ & VCC))
-- \encoder|TickGenerator|Add2~5\ = CARRY((\encoder|TickGenerator|stbit\(2) & !\encoder|TickGenerator|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(2),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~3\,
	combout => \encoder|TickGenerator|Add2~4_combout\,
	cout => \encoder|TickGenerator|Add2~5\);

-- Location: FF_X102_Y34_N5
\encoder|TickGenerator|stbit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~4_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(2));

-- Location: LCCOMB_X102_Y34_N6
\encoder|TickGenerator|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~6_combout\ = (\encoder|TickGenerator|stbit\(3) & (!\encoder|TickGenerator|Add2~5\)) # (!\encoder|TickGenerator|stbit\(3) & ((\encoder|TickGenerator|Add2~5\) # (GND)))
-- \encoder|TickGenerator|Add2~7\ = CARRY((!\encoder|TickGenerator|Add2~5\) # (!\encoder|TickGenerator|stbit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(3),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~5\,
	combout => \encoder|TickGenerator|Add2~6_combout\,
	cout => \encoder|TickGenerator|Add2~7\);

-- Location: LCCOMB_X102_Y34_N8
\encoder|TickGenerator|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~8_combout\ = (\encoder|TickGenerator|stbit\(4) & (\encoder|TickGenerator|Add2~7\ $ (GND))) # (!\encoder|TickGenerator|stbit\(4) & (!\encoder|TickGenerator|Add2~7\ & VCC))
-- \encoder|TickGenerator|Add2~9\ = CARRY((\encoder|TickGenerator|stbit\(4) & !\encoder|TickGenerator|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(4),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~7\,
	combout => \encoder|TickGenerator|Add2~8_combout\,
	cout => \encoder|TickGenerator|Add2~9\);

-- Location: FF_X102_Y34_N9
\encoder|TickGenerator|stbit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~8_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(4));

-- Location: LCCOMB_X102_Y34_N10
\encoder|TickGenerator|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~10_combout\ = (\encoder|TickGenerator|stbit\(5) & ((\encoder|TickGenerator|Add2~9\) # (GND))) # (!\encoder|TickGenerator|stbit\(5) & (!\encoder|TickGenerator|Add2~9\))
-- \encoder|TickGenerator|Add2~11\ = CARRY((\encoder|TickGenerator|stbit\(5)) # (!\encoder|TickGenerator|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(5),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~9\,
	combout => \encoder|TickGenerator|Add2~10_combout\,
	cout => \encoder|TickGenerator|Add2~11\);

-- Location: LCCOMB_X103_Y34_N14
\encoder|TickGenerator|stbit~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit~6_combout\ = (\encoder|TickGenerator|Equal2~10_combout\) # (!\encoder|TickGenerator|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal2~10_combout\,
	datad => \encoder|TickGenerator|Add2~10_combout\,
	combout => \encoder|TickGenerator|stbit~6_combout\);

-- Location: FF_X103_Y34_N15
\encoder|TickGenerator|stbit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stbit~6_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(5));

-- Location: LCCOMB_X102_Y34_N14
\encoder|TickGenerator|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~14_combout\ = (\encoder|TickGenerator|stbit\(7) & ((\encoder|TickGenerator|Add2~13\) # (GND))) # (!\encoder|TickGenerator|stbit\(7) & (!\encoder|TickGenerator|Add2~13\))
-- \encoder|TickGenerator|Add2~15\ = CARRY((\encoder|TickGenerator|stbit\(7)) # (!\encoder|TickGenerator|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(7),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~13\,
	combout => \encoder|TickGenerator|Add2~14_combout\,
	cout => \encoder|TickGenerator|Add2~15\);

-- Location: LCCOMB_X102_Y34_N16
\encoder|TickGenerator|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~16_combout\ = (\encoder|TickGenerator|stbit\(8) & (!\encoder|TickGenerator|Add2~15\ & VCC)) # (!\encoder|TickGenerator|stbit\(8) & (\encoder|TickGenerator|Add2~15\ $ (GND)))
-- \encoder|TickGenerator|Add2~17\ = CARRY((!\encoder|TickGenerator|stbit\(8) & !\encoder|TickGenerator|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(8),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~15\,
	combout => \encoder|TickGenerator|Add2~16_combout\,
	cout => \encoder|TickGenerator|Add2~17\);

-- Location: LCCOMB_X103_Y34_N12
\encoder|TickGenerator|stbit~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit~4_combout\ = (\encoder|TickGenerator|Equal2~10_combout\) # (!\encoder|TickGenerator|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|Equal2~10_combout\,
	datac => \encoder|TickGenerator|Add2~16_combout\,
	combout => \encoder|TickGenerator|stbit~4_combout\);

-- Location: FF_X103_Y34_N13
\encoder|TickGenerator|stbit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stbit~4_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(8));

-- Location: LCCOMB_X102_Y34_N18
\encoder|TickGenerator|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~18_combout\ = (\encoder|TickGenerator|stbit\(9) & (!\encoder|TickGenerator|Add2~17\)) # (!\encoder|TickGenerator|stbit\(9) & ((\encoder|TickGenerator|Add2~17\) # (GND)))
-- \encoder|TickGenerator|Add2~19\ = CARRY((!\encoder|TickGenerator|Add2~17\) # (!\encoder|TickGenerator|stbit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(9),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~17\,
	combout => \encoder|TickGenerator|Add2~18_combout\,
	cout => \encoder|TickGenerator|Add2~19\);

-- Location: FF_X102_Y34_N19
\encoder|TickGenerator|stbit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~18_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(9));

-- Location: LCCOMB_X102_Y34_N20
\encoder|TickGenerator|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~20_combout\ = (\encoder|TickGenerator|stbit\(10) & (!\encoder|TickGenerator|Add2~19\ & VCC)) # (!\encoder|TickGenerator|stbit\(10) & (\encoder|TickGenerator|Add2~19\ $ (GND)))
-- \encoder|TickGenerator|Add2~21\ = CARRY((!\encoder|TickGenerator|stbit\(10) & !\encoder|TickGenerator|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(10),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~19\,
	combout => \encoder|TickGenerator|Add2~20_combout\,
	cout => \encoder|TickGenerator|Add2~21\);

-- Location: LCCOMB_X103_Y34_N22
\encoder|TickGenerator|stbit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit~3_combout\ = (\encoder|TickGenerator|Equal2~10_combout\) # (!\encoder|TickGenerator|Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal2~10_combout\,
	datad => \encoder|TickGenerator|Add2~20_combout\,
	combout => \encoder|TickGenerator|stbit~3_combout\);

-- Location: FF_X103_Y34_N23
\encoder|TickGenerator|stbit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stbit~3_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(10));

-- Location: LCCOMB_X102_Y34_N24
\encoder|TickGenerator|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~24_combout\ = (\encoder|TickGenerator|stbit\(12) & (\encoder|TickGenerator|Add2~23\ $ (GND))) # (!\encoder|TickGenerator|stbit\(12) & (!\encoder|TickGenerator|Add2~23\ & VCC))
-- \encoder|TickGenerator|Add2~25\ = CARRY((\encoder|TickGenerator|stbit\(12) & !\encoder|TickGenerator|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(12),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~23\,
	combout => \encoder|TickGenerator|Add2~24_combout\,
	cout => \encoder|TickGenerator|Add2~25\);

-- Location: FF_X102_Y34_N25
\encoder|TickGenerator|stbit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~24_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(12));

-- Location: LCCOMB_X102_Y34_N26
\encoder|TickGenerator|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~26_combout\ = (\encoder|TickGenerator|stbit\(13) & ((\encoder|TickGenerator|Add2~25\) # (GND))) # (!\encoder|TickGenerator|stbit\(13) & (!\encoder|TickGenerator|Add2~25\))
-- \encoder|TickGenerator|Add2~27\ = CARRY((\encoder|TickGenerator|stbit\(13)) # (!\encoder|TickGenerator|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(13),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~25\,
	combout => \encoder|TickGenerator|Add2~26_combout\,
	cout => \encoder|TickGenerator|Add2~27\);

-- Location: LCCOMB_X103_Y34_N24
\encoder|TickGenerator|stbit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit~1_combout\ = (\encoder|TickGenerator|Equal2~10_combout\) # (!\encoder|TickGenerator|Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|Equal2~10_combout\,
	datac => \encoder|TickGenerator|Add2~26_combout\,
	combout => \encoder|TickGenerator|stbit~1_combout\);

-- Location: FF_X103_Y34_N25
\encoder|TickGenerator|stbit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stbit~1_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(13));

-- Location: LCCOMB_X102_Y34_N28
\encoder|TickGenerator|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~28_combout\ = (\encoder|TickGenerator|stbit\(14) & (\encoder|TickGenerator|Add2~27\ $ (GND))) # (!\encoder|TickGenerator|stbit\(14) & (!\encoder|TickGenerator|Add2~27\ & VCC))
-- \encoder|TickGenerator|Add2~29\ = CARRY((\encoder|TickGenerator|stbit\(14) & !\encoder|TickGenerator|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(14),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~27\,
	combout => \encoder|TickGenerator|Add2~28_combout\,
	cout => \encoder|TickGenerator|Add2~29\);

-- Location: FF_X102_Y34_N29
\encoder|TickGenerator|stbit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~28_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(14));

-- Location: LCCOMB_X102_Y34_N30
\encoder|TickGenerator|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~30_combout\ = (\encoder|TickGenerator|stbit\(15) & ((\encoder|TickGenerator|Add2~29\) # (GND))) # (!\encoder|TickGenerator|stbit\(15) & (!\encoder|TickGenerator|Add2~29\))
-- \encoder|TickGenerator|Add2~31\ = CARRY((\encoder|TickGenerator|stbit\(15)) # (!\encoder|TickGenerator|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(15),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~29\,
	combout => \encoder|TickGenerator|Add2~30_combout\,
	cout => \encoder|TickGenerator|Add2~31\);

-- Location: LCCOMB_X102_Y33_N0
\encoder|TickGenerator|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~32_combout\ = (\encoder|TickGenerator|stbit\(16) & (\encoder|TickGenerator|Add2~31\ $ (GND))) # (!\encoder|TickGenerator|stbit\(16) & (!\encoder|TickGenerator|Add2~31\ & VCC))
-- \encoder|TickGenerator|Add2~33\ = CARRY((\encoder|TickGenerator|stbit\(16) & !\encoder|TickGenerator|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(16),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~31\,
	combout => \encoder|TickGenerator|Add2~32_combout\,
	cout => \encoder|TickGenerator|Add2~33\);

-- Location: FF_X102_Y33_N1
\encoder|TickGenerator|stbit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~32_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(16));

-- Location: LCCOMB_X102_Y33_N2
\encoder|TickGenerator|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~34_combout\ = (\encoder|TickGenerator|stbit\(17) & (!\encoder|TickGenerator|Add2~33\)) # (!\encoder|TickGenerator|stbit\(17) & ((\encoder|TickGenerator|Add2~33\) # (GND)))
-- \encoder|TickGenerator|Add2~35\ = CARRY((!\encoder|TickGenerator|Add2~33\) # (!\encoder|TickGenerator|stbit\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(17),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~33\,
	combout => \encoder|TickGenerator|Add2~34_combout\,
	cout => \encoder|TickGenerator|Add2~35\);

-- Location: FF_X102_Y33_N3
\encoder|TickGenerator|stbit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~34_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(17));

-- Location: LCCOMB_X102_Y33_N4
\encoder|TickGenerator|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~36_combout\ = (\encoder|TickGenerator|stbit\(18) & (\encoder|TickGenerator|Add2~35\ $ (GND))) # (!\encoder|TickGenerator|stbit\(18) & (!\encoder|TickGenerator|Add2~35\ & VCC))
-- \encoder|TickGenerator|Add2~37\ = CARRY((\encoder|TickGenerator|stbit\(18) & !\encoder|TickGenerator|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(18),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~35\,
	combout => \encoder|TickGenerator|Add2~36_combout\,
	cout => \encoder|TickGenerator|Add2~37\);

-- Location: FF_X102_Y33_N5
\encoder|TickGenerator|stbit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~36_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(18));

-- Location: LCCOMB_X102_Y33_N8
\encoder|TickGenerator|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~40_combout\ = (\encoder|TickGenerator|stbit\(20) & (\encoder|TickGenerator|Add2~39\ $ (GND))) # (!\encoder|TickGenerator|stbit\(20) & (!\encoder|TickGenerator|Add2~39\ & VCC))
-- \encoder|TickGenerator|Add2~41\ = CARRY((\encoder|TickGenerator|stbit\(20) & !\encoder|TickGenerator|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(20),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~39\,
	combout => \encoder|TickGenerator|Add2~40_combout\,
	cout => \encoder|TickGenerator|Add2~41\);

-- Location: FF_X102_Y33_N9
\encoder|TickGenerator|stbit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~40_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(20));

-- Location: LCCOMB_X102_Y33_N12
\encoder|TickGenerator|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~44_combout\ = (\encoder|TickGenerator|stbit\(22) & (\encoder|TickGenerator|Add2~43\ $ (GND))) # (!\encoder|TickGenerator|stbit\(22) & (!\encoder|TickGenerator|Add2~43\ & VCC))
-- \encoder|TickGenerator|Add2~45\ = CARRY((\encoder|TickGenerator|stbit\(22) & !\encoder|TickGenerator|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(22),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~43\,
	combout => \encoder|TickGenerator|Add2~44_combout\,
	cout => \encoder|TickGenerator|Add2~45\);

-- Location: LCCOMB_X102_Y33_N14
\encoder|TickGenerator|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~46_combout\ = (\encoder|TickGenerator|stbit\(23) & (!\encoder|TickGenerator|Add2~45\)) # (!\encoder|TickGenerator|stbit\(23) & ((\encoder|TickGenerator|Add2~45\) # (GND)))
-- \encoder|TickGenerator|Add2~47\ = CARRY((!\encoder|TickGenerator|Add2~45\) # (!\encoder|TickGenerator|stbit\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(23),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~45\,
	combout => \encoder|TickGenerator|Add2~46_combout\,
	cout => \encoder|TickGenerator|Add2~47\);

-- Location: FF_X102_Y33_N15
\encoder|TickGenerator|stbit[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~46_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(23));

-- Location: FF_X102_Y33_N13
\encoder|TickGenerator|stbit[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~44_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(22));

-- Location: LCCOMB_X103_Y33_N14
\encoder|TickGenerator|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~3_combout\ = (!\encoder|TickGenerator|stbit\(21) & (!\encoder|TickGenerator|stbit\(23) & (!\encoder|TickGenerator|stbit\(22) & !\encoder|TickGenerator|stbit\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(21),
	datab => \encoder|TickGenerator|stbit\(23),
	datac => \encoder|TickGenerator|stbit\(22),
	datad => \encoder|TickGenerator|stbit\(20),
	combout => \encoder|TickGenerator|Equal2~3_combout\);

-- Location: LCCOMB_X103_Y34_N30
\encoder|TickGenerator|stbit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit~0_combout\ = (\encoder|TickGenerator|Equal2~10_combout\) # (!\encoder|TickGenerator|Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal2~10_combout\,
	datad => \encoder|TickGenerator|Add2~30_combout\,
	combout => \encoder|TickGenerator|stbit~0_combout\);

-- Location: FF_X103_Y34_N31
\encoder|TickGenerator|stbit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stbit~0_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(15));

-- Location: LCCOMB_X103_Y34_N2
\encoder|TickGenerator|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~5_combout\ = (!\encoder|TickGenerator|stbit\(13) & (!\encoder|TickGenerator|stbit\(12) & (!\encoder|TickGenerator|stbit\(15) & !\encoder|TickGenerator|stbit\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(13),
	datab => \encoder|TickGenerator|stbit\(12),
	datac => \encoder|TickGenerator|stbit\(15),
	datad => \encoder|TickGenerator|stbit\(14),
	combout => \encoder|TickGenerator|Equal2~5_combout\);

-- Location: LCCOMB_X103_Y34_N4
\encoder|TickGenerator|stbit~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stbit~5_combout\ = (\encoder|TickGenerator|Equal2~10_combout\) # (!\encoder|TickGenerator|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal2~10_combout\,
	datad => \encoder|TickGenerator|Add2~14_combout\,
	combout => \encoder|TickGenerator|stbit~5_combout\);

-- Location: FF_X103_Y34_N5
\encoder|TickGenerator|stbit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stbit~5_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(7));

-- Location: LCCOMB_X103_Y34_N28
\encoder|TickGenerator|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~7_combout\ = (!\encoder|TickGenerator|stbit\(6) & (!\encoder|TickGenerator|stbit\(5) & (!\encoder|TickGenerator|stbit\(7) & !\encoder|TickGenerator|stbit\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(6),
	datab => \encoder|TickGenerator|stbit\(5),
	datac => \encoder|TickGenerator|stbit\(7),
	datad => \encoder|TickGenerator|stbit\(4),
	combout => \encoder|TickGenerator|Equal2~7_combout\);

-- Location: FF_X102_Y34_N7
\encoder|TickGenerator|stbit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~6_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(3));

-- Location: LCCOMB_X103_Y34_N16
\encoder|TickGenerator|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~8_combout\ = (!\encoder|TickGenerator|stbit\(1) & (!\encoder|TickGenerator|stbit\(3) & (!\encoder|TickGenerator|stbit\(2) & !\encoder|TickGenerator|stbit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(1),
	datab => \encoder|TickGenerator|stbit\(3),
	datac => \encoder|TickGenerator|stbit\(2),
	datad => \encoder|TickGenerator|stbit\(0),
	combout => \encoder|TickGenerator|Equal2~8_combout\);

-- Location: LCCOMB_X103_Y34_N26
\encoder|TickGenerator|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~9_combout\ = (\encoder|TickGenerator|Equal2~6_combout\ & (\encoder|TickGenerator|Equal2~5_combout\ & (\encoder|TickGenerator|Equal2~7_combout\ & \encoder|TickGenerator|Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal2~6_combout\,
	datab => \encoder|TickGenerator|Equal2~5_combout\,
	datac => \encoder|TickGenerator|Equal2~7_combout\,
	datad => \encoder|TickGenerator|Equal2~8_combout\,
	combout => \encoder|TickGenerator|Equal2~9_combout\);

-- Location: LCCOMB_X102_Y33_N16
\encoder|TickGenerator|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~48_combout\ = (\encoder|TickGenerator|stbit\(24) & (\encoder|TickGenerator|Add2~47\ $ (GND))) # (!\encoder|TickGenerator|stbit\(24) & (!\encoder|TickGenerator|Add2~47\ & VCC))
-- \encoder|TickGenerator|Add2~49\ = CARRY((\encoder|TickGenerator|stbit\(24) & !\encoder|TickGenerator|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(24),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~47\,
	combout => \encoder|TickGenerator|Add2~48_combout\,
	cout => \encoder|TickGenerator|Add2~49\);

-- Location: FF_X102_Y33_N17
\encoder|TickGenerator|stbit[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~48_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(24));

-- Location: LCCOMB_X102_Y33_N18
\encoder|TickGenerator|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~50_combout\ = (\encoder|TickGenerator|stbit\(25) & (!\encoder|TickGenerator|Add2~49\)) # (!\encoder|TickGenerator|stbit\(25) & ((\encoder|TickGenerator|Add2~49\) # (GND)))
-- \encoder|TickGenerator|Add2~51\ = CARRY((!\encoder|TickGenerator|Add2~49\) # (!\encoder|TickGenerator|stbit\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(25),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~49\,
	combout => \encoder|TickGenerator|Add2~50_combout\,
	cout => \encoder|TickGenerator|Add2~51\);

-- Location: FF_X102_Y33_N19
\encoder|TickGenerator|stbit[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~50_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(25));

-- Location: LCCOMB_X102_Y33_N20
\encoder|TickGenerator|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~52_combout\ = (\encoder|TickGenerator|stbit\(26) & (\encoder|TickGenerator|Add2~51\ $ (GND))) # (!\encoder|TickGenerator|stbit\(26) & (!\encoder|TickGenerator|Add2~51\ & VCC))
-- \encoder|TickGenerator|Add2~53\ = CARRY((\encoder|TickGenerator|stbit\(26) & !\encoder|TickGenerator|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(26),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~51\,
	combout => \encoder|TickGenerator|Add2~52_combout\,
	cout => \encoder|TickGenerator|Add2~53\);

-- Location: FF_X102_Y33_N21
\encoder|TickGenerator|stbit[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~52_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(26));

-- Location: LCCOMB_X102_Y33_N24
\encoder|TickGenerator|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add2~56_combout\ = (\encoder|TickGenerator|stbit\(28) & (\encoder|TickGenerator|Add2~55\ $ (GND))) # (!\encoder|TickGenerator|stbit\(28) & (!\encoder|TickGenerator|Add2~55\ & VCC))
-- \encoder|TickGenerator|Add2~57\ = CARRY((\encoder|TickGenerator|stbit\(28) & !\encoder|TickGenerator|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stbit\(28),
	datad => VCC,
	cin => \encoder|TickGenerator|Add2~55\,
	combout => \encoder|TickGenerator|Add2~56_combout\,
	cout => \encoder|TickGenerator|Add2~57\);

-- Location: FF_X102_Y33_N25
\encoder|TickGenerator|stbit[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~56_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(28));

-- Location: FF_X102_Y33_N27
\encoder|TickGenerator|stbit[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add2~58_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stbit\(29));

-- Location: LCCOMB_X103_Y33_N2
\encoder|TickGenerator|Equal2~1\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X103_Y33_N0
\encoder|TickGenerator|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~2_combout\ = (\encoder|TickGenerator|Equal2~0_combout\ & (!\encoder|TickGenerator|stbit\(28) & (!\encoder|TickGenerator|stbit\(29) & \encoder|TickGenerator|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal2~0_combout\,
	datab => \encoder|TickGenerator|stbit\(28),
	datac => \encoder|TickGenerator|stbit\(29),
	datad => \encoder|TickGenerator|Equal2~1_combout\,
	combout => \encoder|TickGenerator|Equal2~2_combout\);

-- Location: LCCOMB_X103_Y34_N8
\encoder|TickGenerator|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal2~10_combout\ = (\encoder|TickGenerator|Equal2~4_combout\ & (\encoder|TickGenerator|Equal2~3_combout\ & (\encoder|TickGenerator|Equal2~9_combout\ & \encoder|TickGenerator|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal2~4_combout\,
	datab => \encoder|TickGenerator|Equal2~3_combout\,
	datac => \encoder|TickGenerator|Equal2~9_combout\,
	datad => \encoder|TickGenerator|Equal2~2_combout\,
	combout => \encoder|TickGenerator|Equal2~10_combout\);

-- Location: LCCOMB_X103_Y34_N0
\encoder|TickGenerator|tick_bit~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|tick_bit~feeder_combout\ = \encoder|TickGenerator|Equal2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal2~10_combout\,
	combout => \encoder|TickGenerator|tick_bit~feeder_combout\);

-- Location: FF_X103_Y34_N1
\encoder|TickGenerator|tick_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|tick_bit~feeder_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|tick_bit~q\);

-- Location: LCCOMB_X111_Y37_N28
\encoder|MAE_emission|i[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[1]~0_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|Add0~2_combout\)) # (!\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~2_combout\,
	datac => \encoder|MAE_emission|i\(1),
	datad => \encoder|MAE_emission|process_0~0_combout\,
	combout => \encoder|MAE_emission|i[1]~0_combout\);

-- Location: LCCOMB_X74_Y21_N2
\encoder|TickGenerator|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~0_combout\ = (\encoder|TickGenerator|stbit\(0) & (\encoder|TickGenerator|sttrame\(1) $ (VCC))) # (!\encoder|TickGenerator|stbit\(0) & (\encoder|TickGenerator|sttrame\(1) & VCC))
-- \encoder|TickGenerator|Add3~1\ = CARRY((\encoder|TickGenerator|stbit\(0) & \encoder|TickGenerator|sttrame\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stbit\(0),
	datab => \encoder|TickGenerator|sttrame\(1),
	datad => VCC,
	combout => \encoder|TickGenerator|Add3~0_combout\,
	cout => \encoder|TickGenerator|Add3~1\);

-- Location: FF_X74_Y21_N3
\encoder|TickGenerator|sttrame[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~0_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(1));

-- Location: LCCOMB_X74_Y21_N4
\encoder|TickGenerator|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~2_combout\ = (\encoder|TickGenerator|sttrame\(2) & (!\encoder|TickGenerator|Add3~1\)) # (!\encoder|TickGenerator|sttrame\(2) & ((\encoder|TickGenerator|Add3~1\) # (GND)))
-- \encoder|TickGenerator|Add3~3\ = CARRY((!\encoder|TickGenerator|Add3~1\) # (!\encoder|TickGenerator|sttrame\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(2),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~1\,
	combout => \encoder|TickGenerator|Add3~2_combout\,
	cout => \encoder|TickGenerator|Add3~3\);

-- Location: FF_X74_Y21_N5
\encoder|TickGenerator|sttrame[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~2_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(2));

-- Location: LCCOMB_X74_Y21_N8
\encoder|TickGenerator|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~6_combout\ = (\encoder|TickGenerator|sttrame\(4) & (!\encoder|TickGenerator|Add3~5\)) # (!\encoder|TickGenerator|sttrame\(4) & ((\encoder|TickGenerator|Add3~5\) # (GND)))
-- \encoder|TickGenerator|Add3~7\ = CARRY((!\encoder|TickGenerator|Add3~5\) # (!\encoder|TickGenerator|sttrame\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(4),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~5\,
	combout => \encoder|TickGenerator|Add3~6_combout\,
	cout => \encoder|TickGenerator|Add3~7\);

-- Location: FF_X74_Y21_N9
\encoder|TickGenerator|sttrame[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~6_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(4));

-- Location: LCCOMB_X74_Y21_N10
\encoder|TickGenerator|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~8_combout\ = (\encoder|TickGenerator|sttrame\(5) & (!\encoder|TickGenerator|Add3~7\ & VCC)) # (!\encoder|TickGenerator|sttrame\(5) & (\encoder|TickGenerator|Add3~7\ $ (GND)))
-- \encoder|TickGenerator|Add3~9\ = CARRY((!\encoder|TickGenerator|sttrame\(5) & !\encoder|TickGenerator|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(5),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~7\,
	combout => \encoder|TickGenerator|Add3~8_combout\,
	cout => \encoder|TickGenerator|Add3~9\);

-- Location: LCCOMB_X74_Y21_N12
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

-- Location: LCCOMB_X74_Y21_N16
\encoder|TickGenerator|Add3~14\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X73_Y21_N14
\encoder|TickGenerator|sttrame~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~9_combout\ = (\encoder|TickGenerator|Equal3~10_combout\) # (!\encoder|TickGenerator|Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal3~10_combout\,
	datad => \encoder|TickGenerator|Add3~14_combout\,
	combout => \encoder|TickGenerator|sttrame~9_combout\);

-- Location: FF_X73_Y21_N15
\encoder|TickGenerator|sttrame[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~9_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(8));

-- Location: FF_X74_Y21_N13
\encoder|TickGenerator|sttrame[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~10_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(6));

-- Location: LCCOMB_X73_Y21_N26
\encoder|TickGenerator|sttrame~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~11_combout\ = (\encoder|TickGenerator|Equal3~10_combout\) # (!\encoder|TickGenerator|Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~10_combout\,
	datac => \encoder|TickGenerator|Add3~8_combout\,
	combout => \encoder|TickGenerator|sttrame~11_combout\);

-- Location: FF_X73_Y21_N27
\encoder|TickGenerator|sttrame[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~11_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(5));

-- Location: LCCOMB_X73_Y21_N8
\encoder|TickGenerator|Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~7_combout\ = (!\encoder|TickGenerator|sttrame\(7) & (!\encoder|TickGenerator|sttrame\(8) & (!\encoder|TickGenerator|sttrame\(6) & !\encoder|TickGenerator|sttrame\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(7),
	datab => \encoder|TickGenerator|sttrame\(8),
	datac => \encoder|TickGenerator|sttrame\(6),
	datad => \encoder|TickGenerator|sttrame\(5),
	combout => \encoder|TickGenerator|Equal3~7_combout\);

-- Location: LCCOMB_X73_Y21_N2
\encoder|TickGenerator|Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~8_combout\ = (!\encoder|TickGenerator|sttrame\(3) & (!\encoder|TickGenerator|sttrame\(1) & (!\encoder|TickGenerator|sttrame\(4) & !\encoder|TickGenerator|sttrame\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(3),
	datab => \encoder|TickGenerator|sttrame\(1),
	datac => \encoder|TickGenerator|sttrame\(4),
	datad => \encoder|TickGenerator|sttrame\(2),
	combout => \encoder|TickGenerator|Equal3~8_combout\);

-- Location: LCCOMB_X73_Y21_N28
\encoder|TickGenerator|Equal3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~9_combout\ = (\encoder|TickGenerator|Equal3~7_combout\ & \encoder|TickGenerator|Equal3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal3~7_combout\,
	datad => \encoder|TickGenerator|Equal3~8_combout\,
	combout => \encoder|TickGenerator|Equal3~9_combout\);

-- Location: LCCOMB_X74_Y21_N18
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

-- Location: FF_X74_Y21_N19
\encoder|TickGenerator|sttrame[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~16_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(9));

-- Location: LCCOMB_X74_Y21_N20
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

-- Location: FF_X74_Y21_N21
\encoder|TickGenerator|sttrame[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~18_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(10));

-- Location: LCCOMB_X74_Y21_N22
\encoder|TickGenerator|Add3~20\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X73_Y21_N22
\encoder|TickGenerator|sttrame~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~8_combout\ = (\encoder|TickGenerator|Equal3~10_combout\) # (!\encoder|TickGenerator|Add3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal3~10_combout\,
	datad => \encoder|TickGenerator|Add3~20_combout\,
	combout => \encoder|TickGenerator|sttrame~8_combout\);

-- Location: FF_X73_Y21_N23
\encoder|TickGenerator|sttrame[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~8_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(11));

-- Location: LCCOMB_X74_Y21_N24
\encoder|TickGenerator|Add3~22\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X73_Y21_N24
\encoder|TickGenerator|sttrame~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~7_combout\ = (\encoder|TickGenerator|Equal3~10_combout\) # (!\encoder|TickGenerator|Add3~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~10_combout\,
	datac => \encoder|TickGenerator|Add3~22_combout\,
	combout => \encoder|TickGenerator|sttrame~7_combout\);

-- Location: FF_X73_Y21_N25
\encoder|TickGenerator|sttrame[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~7_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(12));

-- Location: LCCOMB_X73_Y21_N4
\encoder|TickGenerator|Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~6_combout\ = (!\encoder|TickGenerator|sttrame\(11) & (!\encoder|TickGenerator|sttrame\(12) & (!\encoder|TickGenerator|sttrame\(10) & !\encoder|TickGenerator|sttrame\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(11),
	datab => \encoder|TickGenerator|sttrame\(12),
	datac => \encoder|TickGenerator|sttrame\(10),
	datad => \encoder|TickGenerator|sttrame\(9),
	combout => \encoder|TickGenerator|Equal3~6_combout\);

-- Location: LCCOMB_X74_Y21_N28
\encoder|TickGenerator|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Add3~26_combout\ = (\encoder|TickGenerator|sttrame\(14) & ((\encoder|TickGenerator|Add3~25\) # (GND))) # (!\encoder|TickGenerator|sttrame\(14) & (!\encoder|TickGenerator|Add3~25\))
-- \encoder|TickGenerator|Add3~27\ = CARRY((\encoder|TickGenerator|sttrame\(14)) # (!\encoder|TickGenerator|Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|sttrame\(14),
	datad => VCC,
	cin => \encoder|TickGenerator|Add3~25\,
	combout => \encoder|TickGenerator|Add3~26_combout\,
	cout => \encoder|TickGenerator|Add3~27\);

-- Location: LCCOMB_X74_Y21_N0
\encoder|TickGenerator|sttrame~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~5_combout\ = (\encoder|TickGenerator|Equal3~10_combout\) # (!\encoder|TickGenerator|Add3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|Equal3~10_combout\,
	datad => \encoder|TickGenerator|Add3~26_combout\,
	combout => \encoder|TickGenerator|sttrame~5_combout\);

-- Location: FF_X74_Y21_N1
\encoder|TickGenerator|sttrame[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~5_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(14));

-- Location: LCCOMB_X74_Y21_N30
\encoder|TickGenerator|Add3~28\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X73_Y21_N6
\encoder|TickGenerator|sttrame~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~4_combout\ = (\encoder|TickGenerator|Equal3~10_combout\) # (!\encoder|TickGenerator|Add3~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~10_combout\,
	datac => \encoder|TickGenerator|Add3~28_combout\,
	combout => \encoder|TickGenerator|sttrame~4_combout\);

-- Location: FF_X73_Y21_N7
\encoder|TickGenerator|sttrame[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~4_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(15));

-- Location: LCCOMB_X74_Y20_N0
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

-- Location: FF_X74_Y20_N1
\encoder|TickGenerator|sttrame[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~30_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(16));

-- Location: LCCOMB_X74_Y20_N2
\encoder|TickGenerator|Add3~32\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X73_Y20_N6
\encoder|TickGenerator|sttrame~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~3_combout\ = (\encoder|TickGenerator|Equal3~10_combout\) # (!\encoder|TickGenerator|Add3~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal3~10_combout\,
	datad => \encoder|TickGenerator|Add3~32_combout\,
	combout => \encoder|TickGenerator|sttrame~3_combout\);

-- Location: FF_X73_Y20_N7
\encoder|TickGenerator|sttrame[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~3_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(17));

-- Location: LCCOMB_X74_Y20_N4
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

-- Location: LCCOMB_X73_Y20_N16
\encoder|TickGenerator|sttrame~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~2_combout\ = (\encoder|TickGenerator|Equal3~10_combout\) # (!\encoder|TickGenerator|Add3~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal3~10_combout\,
	datad => \encoder|TickGenerator|Add3~34_combout\,
	combout => \encoder|TickGenerator|sttrame~2_combout\);

-- Location: FF_X73_Y20_N17
\encoder|TickGenerator|sttrame[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~2_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(18));

-- Location: LCCOMB_X74_Y20_N8
\encoder|TickGenerator|Add3~38\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X73_Y21_N18
\encoder|TickGenerator|sttrame~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|sttrame~1_combout\ = (\encoder|TickGenerator|Equal3~10_combout\) # (!\encoder|TickGenerator|Add3~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal3~10_combout\,
	datad => \encoder|TickGenerator|Add3~38_combout\,
	combout => \encoder|TickGenerator|sttrame~1_combout\);

-- Location: FF_X73_Y21_N19
\encoder|TickGenerator|sttrame[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|sttrame~1_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(20));

-- Location: LCCOMB_X73_Y20_N28
\encoder|TickGenerator|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~3_combout\ = (!\encoder|TickGenerator|sttrame\(19) & (!\encoder|TickGenerator|sttrame\(18) & (!\encoder|TickGenerator|sttrame\(20) & !\encoder|TickGenerator|sttrame\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(19),
	datab => \encoder|TickGenerator|sttrame\(18),
	datac => \encoder|TickGenerator|sttrame\(20),
	datad => \encoder|TickGenerator|sttrame\(17),
	combout => \encoder|TickGenerator|Equal3~3_combout\);

-- Location: LCCOMB_X74_Y20_N10
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

-- Location: LCCOMB_X74_Y20_N14
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

-- Location: FF_X74_Y20_N15
\encoder|TickGenerator|sttrame[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~44_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(23));

-- Location: FF_X74_Y20_N11
\encoder|TickGenerator|sttrame[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~40_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(21));

-- Location: LCCOMB_X74_Y20_N16
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

-- Location: FF_X74_Y20_N17
\encoder|TickGenerator|sttrame[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~46_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(24));

-- Location: LCCOMB_X73_Y20_N30
\encoder|TickGenerator|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~2_combout\ = (!\encoder|TickGenerator|sttrame\(22) & (!\encoder|TickGenerator|sttrame\(23) & (!\encoder|TickGenerator|sttrame\(21) & !\encoder|TickGenerator|sttrame\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(22),
	datab => \encoder|TickGenerator|sttrame\(23),
	datac => \encoder|TickGenerator|sttrame\(21),
	datad => \encoder|TickGenerator|sttrame\(24),
	combout => \encoder|TickGenerator|Equal3~2_combout\);

-- Location: LCCOMB_X74_Y20_N18
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

-- Location: FF_X74_Y20_N19
\encoder|TickGenerator|sttrame[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~48_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(25));

-- Location: LCCOMB_X74_Y20_N20
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

-- Location: FF_X74_Y20_N21
\encoder|TickGenerator|sttrame[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~50_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(26));

-- Location: LCCOMB_X74_Y20_N24
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

-- Location: FF_X74_Y20_N25
\encoder|TickGenerator|sttrame[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~54_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(28));

-- Location: LCCOMB_X74_Y20_N26
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

-- Location: FF_X74_Y20_N27
\encoder|TickGenerator|sttrame[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~56_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(29));

-- Location: FF_X74_Y20_N29
\encoder|TickGenerator|sttrame[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add3~58_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|sttrame\(30));

-- Location: LCCOMB_X73_Y20_N0
\encoder|TickGenerator|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~0_combout\ = (!\encoder|TickGenerator|sttrame\(31) & (!\encoder|TickGenerator|sttrame\(29) & (!\encoder|TickGenerator|stbit\(0) & !\encoder|TickGenerator|sttrame\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|sttrame\(31),
	datab => \encoder|TickGenerator|sttrame\(29),
	datac => \encoder|TickGenerator|stbit\(0),
	datad => \encoder|TickGenerator|sttrame\(30),
	combout => \encoder|TickGenerator|Equal3~0_combout\);

-- Location: LCCOMB_X73_Y21_N20
\encoder|TickGenerator|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~4_combout\ = (\encoder|TickGenerator|Equal3~1_combout\ & (\encoder|TickGenerator|Equal3~3_combout\ & (\encoder|TickGenerator|Equal3~2_combout\ & \encoder|TickGenerator|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~1_combout\,
	datab => \encoder|TickGenerator|Equal3~3_combout\,
	datac => \encoder|TickGenerator|Equal3~2_combout\,
	datad => \encoder|TickGenerator|Equal3~0_combout\,
	combout => \encoder|TickGenerator|Equal3~4_combout\);

-- Location: LCCOMB_X73_Y21_N30
\encoder|TickGenerator|Equal3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal3~10_combout\ = (\encoder|TickGenerator|Equal3~5_combout\ & (\encoder|TickGenerator|Equal3~9_combout\ & (\encoder|TickGenerator|Equal3~6_combout\ & \encoder|TickGenerator|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal3~5_combout\,
	datab => \encoder|TickGenerator|Equal3~9_combout\,
	datac => \encoder|TickGenerator|Equal3~6_combout\,
	datad => \encoder|TickGenerator|Equal3~4_combout\,
	combout => \encoder|TickGenerator|Equal3~10_combout\);

-- Location: LCCOMB_X73_Y21_N0
\encoder|TickGenerator|tick_trame~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|tick_trame~feeder_combout\ = \encoder|TickGenerator|Equal3~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|TickGenerator|Equal3~10_combout\,
	combout => \encoder|TickGenerator|tick_trame~feeder_combout\);

-- Location: FF_X73_Y21_N1
\encoder|TickGenerator|tick_trame\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|tick_trame~feeder_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|tick_trame~q\);

-- Location: LCCOMB_X112_Y35_N24
\encoder|MAE_emission|EF~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|EF~19_combout\ = (!\encoder|MAE_emission|Equal0~4_combout\ & (\encoder|MAE_emission|EF.State_Send~q\ & (!\encoder|MAE_emission|Equal0~9_combout\ & \encoder|TickGenerator|tick_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Equal0~4_combout\,
	datab => \encoder|MAE_emission|EF.State_Send~q\,
	datac => \encoder|MAE_emission|Equal0~9_combout\,
	datad => \encoder|TickGenerator|tick_bit~q\,
	combout => \encoder|MAE_emission|EF~19_combout\);

-- Location: LCCOMB_X112_Y35_N22
\encoder|MAE_emission|EF~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|EF~17_combout\ = (\encoder|MAE_emission|EF.State_Close~q\ & (\Go~input_o\ & (!\encoder|TickGenerator|tick_trame~q\))) # (!\encoder|MAE_emission|EF.State_Close~q\ & (((\encoder|MAE_emission|EF~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Go~input_o\,
	datab => \encoder|TickGenerator|tick_trame~q\,
	datac => \encoder|MAE_emission|EF.State_Close~q\,
	datad => \encoder|MAE_emission|EF~19_combout\,
	combout => \encoder|MAE_emission|EF~17_combout\);

-- Location: FF_X112_Y35_N23
\encoder|MAE_emission|EF.State_Close\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|EF~17_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|EF.State_Close~q\);

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

-- Location: LCCOMB_X112_Y35_N10
\encoder|MAE_emission|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector2~0_combout\ = (\encoder|MAE_emission|EF.State_Clear~q\) # ((\encoder|TickGenerator|tick_trame~q\ & (\encoder|MAE_emission|EF.State_Close~q\ & \Go~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Clear~q\,
	datab => \encoder|TickGenerator|tick_trame~q\,
	datac => \encoder|MAE_emission|EF.State_Close~q\,
	datad => \Go~input_o\,
	combout => \encoder|MAE_emission|Selector2~0_combout\);

-- Location: LCCOMB_X112_Y35_N8
\encoder|MAE_emission|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector2~1_combout\ = (\encoder|MAE_emission|Selector2~0_combout\) # ((!\encoder|TickGenerator|tick_bit~q\ & \encoder|MAE_emission|EF.State_Init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|tick_bit~q\,
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	datad => \encoder|MAE_emission|Selector2~0_combout\,
	combout => \encoder|MAE_emission|Selector2~1_combout\);

-- Location: FF_X112_Y35_N9
\encoder|MAE_emission|EF.State_Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|Selector2~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|EF.State_Init~q\);

-- Location: LCCOMB_X113_Y37_N16
\encoder|MAE_emission|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector38~0_combout\ = (\encoder|MAE_emission|i\(1) & !\encoder|MAE_emission|EF.State_Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|i\(1),
	datad => \encoder|MAE_emission|EF.State_Init~q\,
	combout => \encoder|MAE_emission|Selector38~0_combout\);

-- Location: FF_X111_Y37_N29
\encoder|MAE_emission|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[1]~0_combout\,
	asdata => \encoder|MAE_emission|Selector38~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(1));

-- Location: LCCOMB_X112_Y37_N0
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

-- Location: LCCOMB_X112_Y37_N4
\encoder|MAE_emission|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~4_combout\ = (\encoder|MAE_emission|i\(2) & ((GND) # (!\encoder|MAE_emission|Add0~3\))) # (!\encoder|MAE_emission|i\(2) & (\encoder|MAE_emission|Add0~3\ $ (GND)))
-- \encoder|MAE_emission|Add0~5\ = CARRY((\encoder|MAE_emission|i\(2)) # (!\encoder|MAE_emission|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(2),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~3\,
	combout => \encoder|MAE_emission|Add0~4_combout\,
	cout => \encoder|MAE_emission|Add0~5\);

-- Location: LCCOMB_X113_Y37_N26
\encoder|MAE_emission|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector37~0_combout\ = (\encoder|MAE_emission|Add0~4_combout\) # (!\encoder|MAE_emission|EF.State_Send~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|Add0~4_combout\,
	datad => \encoder|MAE_emission|EF.State_Send~q\,
	combout => \encoder|MAE_emission|Selector37~0_combout\);

-- Location: LCCOMB_X113_Y37_N14
\encoder|MAE_emission|i[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[2]~28_combout\ = (!\rst~input_o\ & ((\encoder|MAE_emission|EF.State_Send~q\ & ((\encoder|MAE_emission|process_0~0_combout\))) # (!\encoder|MAE_emission|EF.State_Send~q\ & (\encoder|MAE_emission|EF.State_Init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Init~q\,
	datab => \rst~input_o\,
	datac => \encoder|MAE_emission|EF.State_Send~q\,
	datad => \encoder|MAE_emission|process_0~0_combout\,
	combout => \encoder|MAE_emission|i[2]~28_combout\);

-- Location: FF_X113_Y37_N27
\encoder|MAE_emission|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|Selector37~0_combout\,
	ena => \encoder|MAE_emission|i[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(2));

-- Location: LCCOMB_X112_Y37_N6
\encoder|MAE_emission|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~6_combout\ = (\encoder|MAE_emission|i\(3) & (\encoder|MAE_emission|Add0~5\ & VCC)) # (!\encoder|MAE_emission|i\(3) & (!\encoder|MAE_emission|Add0~5\))
-- \encoder|MAE_emission|Add0~7\ = CARRY((!\encoder|MAE_emission|i\(3) & !\encoder|MAE_emission|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(3),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~5\,
	combout => \encoder|MAE_emission|Add0~6_combout\,
	cout => \encoder|MAE_emission|Add0~7\);

-- Location: LCCOMB_X112_Y37_N8
\encoder|MAE_emission|Add0~8\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X111_Y37_N30
\encoder|MAE_emission|i[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[4]~1_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|Add0~8_combout\)) # (!\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|i\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|Add0~8_combout\,
	datac => \encoder|MAE_emission|i\(4),
	datad => \encoder|MAE_emission|process_0~0_combout\,
	combout => \encoder|MAE_emission|i[4]~1_combout\);

-- Location: LCCOMB_X110_Y37_N16
\encoder|MAE_emission|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector35~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|EF.State_Init~q\,
	datac => \encoder|MAE_emission|i\(4),
	combout => \encoder|MAE_emission|Selector35~0_combout\);

-- Location: FF_X111_Y37_N31
\encoder|MAE_emission|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[4]~1_combout\,
	asdata => \encoder|MAE_emission|Selector35~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(4));

-- Location: LCCOMB_X112_Y37_N10
\encoder|MAE_emission|Add0~10\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X111_Y37_N4
\encoder|MAE_emission|i[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[5]~2_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|Add0~10_combout\)) # (!\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|i\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|Add0~10_combout\,
	datac => \encoder|MAE_emission|i\(5),
	datad => \encoder|MAE_emission|process_0~0_combout\,
	combout => \encoder|MAE_emission|i[5]~2_combout\);

-- Location: LCCOMB_X110_Y37_N6
\encoder|MAE_emission|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector34~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|EF.State_Init~q\,
	datac => \encoder|MAE_emission|i\(5),
	combout => \encoder|MAE_emission|Selector34~0_combout\);

-- Location: FF_X111_Y37_N5
\encoder|MAE_emission|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[5]~2_combout\,
	asdata => \encoder|MAE_emission|Selector34~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(5));

-- Location: LCCOMB_X112_Y37_N14
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

-- Location: LCCOMB_X111_Y37_N0
\encoder|MAE_emission|i[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[7]~4_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|Add0~14_combout\)) # (!\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|i\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|Add0~14_combout\,
	datac => \encoder|MAE_emission|i\(7),
	datad => \encoder|MAE_emission|process_0~0_combout\,
	combout => \encoder|MAE_emission|i[7]~4_combout\);

-- Location: LCCOMB_X110_Y37_N26
\encoder|MAE_emission|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector32~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|EF.State_Init~q\,
	datac => \encoder|MAE_emission|i\(7),
	combout => \encoder|MAE_emission|Selector32~0_combout\);

-- Location: FF_X111_Y37_N1
\encoder|MAE_emission|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[7]~4_combout\,
	asdata => \encoder|MAE_emission|Selector32~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(7));

-- Location: LCCOMB_X112_Y37_N18
\encoder|MAE_emission|Add0~18\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X111_Y37_N20
\encoder|MAE_emission|i[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[9]~6_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|Add0~18_combout\))) # (!\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|i\(9),
	datad => \encoder|MAE_emission|Add0~18_combout\,
	combout => \encoder|MAE_emission|i[9]~6_combout\);

-- Location: LCCOMB_X110_Y37_N2
\encoder|MAE_emission|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector30~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|EF.State_Init~q\,
	datac => \encoder|MAE_emission|i\(9),
	combout => \encoder|MAE_emission|Selector30~0_combout\);

-- Location: FF_X111_Y37_N21
\encoder|MAE_emission|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[9]~6_combout\,
	asdata => \encoder|MAE_emission|Selector30~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(9));

-- Location: LCCOMB_X111_Y37_N2
\encoder|MAE_emission|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~2_combout\ = (((!\encoder|MAE_emission|i\(9)) # (!\encoder|MAE_emission|i\(10))) # (!\encoder|MAE_emission|i\(7))) # (!\encoder|MAE_emission|i\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(8),
	datab => \encoder|MAE_emission|i\(7),
	datac => \encoder|MAE_emission|i\(10),
	datad => \encoder|MAE_emission|i\(9),
	combout => \encoder|MAE_emission|Equal0~2_combout\);

-- Location: LCCOMB_X113_Y37_N4
\encoder|MAE_emission|Selector39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector39~1_combout\ = (\encoder|MAE_emission|EF.State_Send~q\ & ((\encoder|MAE_emission|process_0~0_combout\ & ((!\encoder|MAE_emission|Add0~0_combout\))) # (!\encoder|MAE_emission|process_0~0_combout\ & 
-- (\encoder|MAE_emission|Selector39~0_combout\)))) # (!\encoder|MAE_emission|EF.State_Send~q\ & (\encoder|MAE_emission|Selector39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Selector39~0_combout\,
	datab => \encoder|MAE_emission|EF.State_Send~q\,
	datac => \encoder|MAE_emission|Add0~0_combout\,
	datad => \encoder|MAE_emission|process_0~0_combout\,
	combout => \encoder|MAE_emission|Selector39~1_combout\);

-- Location: FF_X113_Y37_N5
\encoder|MAE_emission|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|Selector39~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(0));

-- Location: LCCOMB_X113_Y37_N20
\encoder|MAE_emission|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector36~0_combout\ = (\encoder|MAE_emission|Add0~6_combout\) # (!\encoder|MAE_emission|EF.State_Send~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|Add0~6_combout\,
	datad => \encoder|MAE_emission|EF.State_Send~q\,
	combout => \encoder|MAE_emission|Selector36~0_combout\);

-- Location: FF_X113_Y37_N21
\encoder|MAE_emission|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|Selector36~0_combout\,
	ena => \encoder|MAE_emission|i[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(3));

-- Location: LCCOMB_X113_Y37_N12
\encoder|MAE_emission|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~0_combout\ = (\encoder|MAE_emission|i\(31)) # ((\encoder|MAE_emission|i\(0)) # ((!\encoder|MAE_emission|i\(3)) # (!\encoder|MAE_emission|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(31),
	datab => \encoder|MAE_emission|i\(0),
	datac => \encoder|MAE_emission|i\(2),
	datad => \encoder|MAE_emission|i\(3),
	combout => \encoder|MAE_emission|Equal0~0_combout\);

-- Location: LCCOMB_X111_Y37_N24
\encoder|MAE_emission|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~1_combout\ = (((!\encoder|MAE_emission|i\(1)) # (!\encoder|MAE_emission|i\(4))) # (!\encoder|MAE_emission|i\(5))) # (!\encoder|MAE_emission|i\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(6),
	datab => \encoder|MAE_emission|i\(5),
	datac => \encoder|MAE_emission|i\(4),
	datad => \encoder|MAE_emission|i\(1),
	combout => \encoder|MAE_emission|Equal0~1_combout\);

-- Location: LCCOMB_X111_Y37_N14
\encoder|MAE_emission|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~4_combout\ = (\encoder|MAE_emission|Equal0~3_combout\) # ((\encoder|MAE_emission|Equal0~2_combout\) # ((\encoder|MAE_emission|Equal0~0_combout\) # (\encoder|MAE_emission|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Equal0~3_combout\,
	datab => \encoder|MAE_emission|Equal0~2_combout\,
	datac => \encoder|MAE_emission|Equal0~0_combout\,
	datad => \encoder|MAE_emission|Equal0~1_combout\,
	combout => \encoder|MAE_emission|Equal0~4_combout\);

-- Location: LCCOMB_X112_Y35_N14
\encoder|MAE_emission|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|process_0~0_combout\ = (\encoder|TickGenerator|tick_bit~q\ & ((\encoder|MAE_emission|Equal0~9_combout\) # (\encoder|MAE_emission|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|Equal0~9_combout\,
	datac => \encoder|MAE_emission|Equal0~4_combout\,
	datad => \encoder|TickGenerator|tick_bit~q\,
	combout => \encoder|MAE_emission|process_0~0_combout\);

-- Location: LCCOMB_X111_Y37_N22
\encoder|MAE_emission|i[10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[10]~7_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|Add0~20_combout\)) # (!\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|i\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~20_combout\,
	datac => \encoder|MAE_emission|i\(10),
	datad => \encoder|MAE_emission|process_0~0_combout\,
	combout => \encoder|MAE_emission|i[10]~7_combout\);

-- Location: LCCOMB_X110_Y37_N4
\encoder|MAE_emission|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector29~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	datad => \encoder|MAE_emission|i\(10),
	combout => \encoder|MAE_emission|Selector29~0_combout\);

-- Location: FF_X111_Y37_N23
\encoder|MAE_emission|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[10]~7_combout\,
	asdata => \encoder|MAE_emission|Selector29~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(10));

-- Location: LCCOMB_X112_Y37_N24
\encoder|MAE_emission|Add0~24\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X111_Y37_N18
\encoder|MAE_emission|i[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[12]~9_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|Add0~24_combout\))) # (!\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|i\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|i\(12),
	datad => \encoder|MAE_emission|Add0~24_combout\,
	combout => \encoder|MAE_emission|i[12]~9_combout\);

-- Location: LCCOMB_X110_Y37_N0
\encoder|MAE_emission|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector27~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	datad => \encoder|MAE_emission|i\(12),
	combout => \encoder|MAE_emission|Selector27~0_combout\);

-- Location: FF_X111_Y37_N19
\encoder|MAE_emission|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[12]~9_combout\,
	asdata => \encoder|MAE_emission|Selector27~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(12));

-- Location: LCCOMB_X112_Y37_N28
\encoder|MAE_emission|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~28_combout\ = (\encoder|MAE_emission|i\(14) & ((GND) # (!\encoder|MAE_emission|Add0~27\))) # (!\encoder|MAE_emission|i\(14) & (\encoder|MAE_emission|Add0~27\ $ (GND)))
-- \encoder|MAE_emission|Add0~29\ = CARRY((\encoder|MAE_emission|i\(14)) # (!\encoder|MAE_emission|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(14),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~27\,
	combout => \encoder|MAE_emission|Add0~28_combout\,
	cout => \encoder|MAE_emission|Add0~29\);

-- Location: LCCOMB_X111_Y37_N6
\encoder|MAE_emission|i[14]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[14]~11_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|Add0~28_combout\))) # (!\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|i\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|i\(14),
	datad => \encoder|MAE_emission|Add0~28_combout\,
	combout => \encoder|MAE_emission|i[14]~11_combout\);

-- Location: LCCOMB_X110_Y37_N28
\encoder|MAE_emission|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector25~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	datad => \encoder|MAE_emission|i\(14),
	combout => \encoder|MAE_emission|Selector25~0_combout\);

-- Location: FF_X111_Y37_N7
\encoder|MAE_emission|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[14]~11_combout\,
	asdata => \encoder|MAE_emission|Selector25~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(14));

-- Location: LCCOMB_X112_Y36_N0
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

-- Location: LCCOMB_X112_Y36_N2
\encoder|MAE_emission|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~34_combout\ = (\encoder|MAE_emission|i\(17) & (\encoder|MAE_emission|Add0~33\ & VCC)) # (!\encoder|MAE_emission|i\(17) & (!\encoder|MAE_emission|Add0~33\))
-- \encoder|MAE_emission|Add0~35\ = CARRY((!\encoder|MAE_emission|i\(17) & !\encoder|MAE_emission|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(17),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~33\,
	combout => \encoder|MAE_emission|Add0~34_combout\,
	cout => \encoder|MAE_emission|Add0~35\);

-- Location: LCCOMB_X111_Y36_N24
\encoder|MAE_emission|i[17]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[17]~14_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|Add0~34_combout\))) # (!\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|i\(17),
	datad => \encoder|MAE_emission|Add0~34_combout\,
	combout => \encoder|MAE_emission|i[17]~14_combout\);

-- Location: LCCOMB_X111_Y36_N26
\encoder|MAE_emission|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector22~0_combout\ = (\encoder|MAE_emission|i\(17) & !\encoder|MAE_emission|EF.State_Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(17),
	datad => \encoder|MAE_emission|EF.State_Init~q\,
	combout => \encoder|MAE_emission|Selector22~0_combout\);

-- Location: FF_X111_Y36_N25
\encoder|MAE_emission|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[17]~14_combout\,
	asdata => \encoder|MAE_emission|Selector22~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(17));

-- Location: LCCOMB_X112_Y36_N4
\encoder|MAE_emission|Add0~36\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X111_Y36_N30
\encoder|MAE_emission|i[18]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[18]~15_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|Add0~36_combout\))) # (!\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|i\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|i\(18),
	datad => \encoder|MAE_emission|Add0~36_combout\,
	combout => \encoder|MAE_emission|i[18]~15_combout\);

-- Location: LCCOMB_X111_Y36_N8
\encoder|MAE_emission|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector21~0_combout\ = (\encoder|MAE_emission|i\(18) & !\encoder|MAE_emission|EF.State_Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|i\(18),
	datad => \encoder|MAE_emission|EF.State_Init~q\,
	combout => \encoder|MAE_emission|Selector21~0_combout\);

-- Location: FF_X111_Y36_N31
\encoder|MAE_emission|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[18]~15_combout\,
	asdata => \encoder|MAE_emission|Selector21~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(18));

-- Location: LCCOMB_X112_Y36_N10
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

-- Location: LCCOMB_X113_Y36_N16
\encoder|MAE_emission|i[21]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[21]~18_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|Add0~42_combout\))) # (!\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|i\(21),
	datad => \encoder|MAE_emission|Add0~42_combout\,
	combout => \encoder|MAE_emission|i[21]~18_combout\);

-- Location: LCCOMB_X114_Y36_N28
\encoder|MAE_emission|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector18~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	datad => \encoder|MAE_emission|i\(21),
	combout => \encoder|MAE_emission|Selector18~0_combout\);

-- Location: FF_X113_Y36_N17
\encoder|MAE_emission|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[21]~18_combout\,
	asdata => \encoder|MAE_emission|Selector18~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(21));

-- Location: LCCOMB_X112_Y36_N12
\encoder|MAE_emission|Add0~44\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X113_Y36_N26
\encoder|MAE_emission|i[22]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[22]~19_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|Add0~44_combout\))) # (!\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|i\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|i\(22),
	datad => \encoder|MAE_emission|Add0~44_combout\,
	combout => \encoder|MAE_emission|i[22]~19_combout\);

-- Location: LCCOMB_X114_Y36_N10
\encoder|MAE_emission|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector17~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	datad => \encoder|MAE_emission|i\(22),
	combout => \encoder|MAE_emission|Selector17~0_combout\);

-- Location: FF_X113_Y36_N27
\encoder|MAE_emission|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[22]~19_combout\,
	asdata => \encoder|MAE_emission|Selector17~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(22));

-- Location: LCCOMB_X112_Y36_N14
\encoder|MAE_emission|Add0~46\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X112_Y36_N18
\encoder|MAE_emission|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~50_combout\ = (\encoder|MAE_emission|i\(25) & (\encoder|MAE_emission|Add0~49\ & VCC)) # (!\encoder|MAE_emission|i\(25) & (!\encoder|MAE_emission|Add0~49\))
-- \encoder|MAE_emission|Add0~51\ = CARRY((!\encoder|MAE_emission|i\(25) & !\encoder|MAE_emission|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(25),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~49\,
	combout => \encoder|MAE_emission|Add0~50_combout\,
	cout => \encoder|MAE_emission|Add0~51\);

-- Location: LCCOMB_X113_Y36_N28
\encoder|MAE_emission|i[25]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[25]~22_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|Add0~50_combout\))) # (!\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|i\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|i\(25),
	datad => \encoder|MAE_emission|Add0~50_combout\,
	combout => \encoder|MAE_emission|i[25]~22_combout\);

-- Location: LCCOMB_X114_Y36_N0
\encoder|MAE_emission|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector14~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	datad => \encoder|MAE_emission|i\(25),
	combout => \encoder|MAE_emission|Selector14~0_combout\);

-- Location: FF_X113_Y36_N29
\encoder|MAE_emission|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[25]~22_combout\,
	asdata => \encoder|MAE_emission|Selector14~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(25));

-- Location: LCCOMB_X113_Y36_N2
\encoder|MAE_emission|i[24]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[24]~21_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|Add0~48_combout\)) # (!\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|i\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~48_combout\,
	datac => \encoder|MAE_emission|i\(24),
	datad => \encoder|MAE_emission|process_0~0_combout\,
	combout => \encoder|MAE_emission|i[24]~21_combout\);

-- Location: LCCOMB_X114_Y36_N22
\encoder|MAE_emission|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector15~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	datad => \encoder|MAE_emission|i\(24),
	combout => \encoder|MAE_emission|Selector15~0_combout\);

-- Location: FF_X113_Y36_N3
\encoder|MAE_emission|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[24]~21_combout\,
	asdata => \encoder|MAE_emission|Selector15~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(24));

-- Location: LCCOMB_X113_Y36_N20
\encoder|MAE_emission|i[23]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[23]~20_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|Add0~46_combout\))) # (!\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|i\(23),
	datad => \encoder|MAE_emission|Add0~46_combout\,
	combout => \encoder|MAE_emission|i[23]~20_combout\);

-- Location: LCCOMB_X114_Y36_N4
\encoder|MAE_emission|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector16~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	datad => \encoder|MAE_emission|i\(23),
	combout => \encoder|MAE_emission|Selector16~0_combout\);

-- Location: FF_X113_Y36_N21
\encoder|MAE_emission|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[23]~20_combout\,
	asdata => \encoder|MAE_emission|Selector16~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(23));

-- Location: LCCOMB_X113_Y36_N14
\encoder|MAE_emission|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~7_combout\ = (((!\encoder|MAE_emission|i\(23)) # (!\encoder|MAE_emission|i\(24))) # (!\encoder|MAE_emission|i\(25))) # (!\encoder|MAE_emission|i\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(26),
	datab => \encoder|MAE_emission|i\(25),
	datac => \encoder|MAE_emission|i\(24),
	datad => \encoder|MAE_emission|i\(23),
	combout => \encoder|MAE_emission|Equal0~7_combout\);

-- Location: LCCOMB_X111_Y36_N14
\encoder|MAE_emission|i[16]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[16]~13_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|Add0~32_combout\)) # (!\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|i\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|Add0~32_combout\,
	datac => \encoder|MAE_emission|i\(16),
	datad => \encoder|MAE_emission|process_0~0_combout\,
	combout => \encoder|MAE_emission|i[16]~13_combout\);

-- Location: LCCOMB_X111_Y36_N4
\encoder|MAE_emission|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector23~0_combout\ = (\encoder|MAE_emission|i\(16) & !\encoder|MAE_emission|EF.State_Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|i\(16),
	datad => \encoder|MAE_emission|EF.State_Init~q\,
	combout => \encoder|MAE_emission|Selector23~0_combout\);

-- Location: FF_X111_Y36_N15
\encoder|MAE_emission|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[16]~13_combout\,
	asdata => \encoder|MAE_emission|Selector23~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(16));

-- Location: LCCOMB_X111_Y36_N16
\encoder|MAE_emission|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~5_combout\ = (((!\encoder|MAE_emission|i\(17)) # (!\encoder|MAE_emission|i\(18))) # (!\encoder|MAE_emission|i\(16))) # (!\encoder|MAE_emission|i\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(15),
	datab => \encoder|MAE_emission|i\(16),
	datac => \encoder|MAE_emission|i\(18),
	datad => \encoder|MAE_emission|i\(17),
	combout => \encoder|MAE_emission|Equal0~5_combout\);

-- Location: LCCOMB_X112_Y36_N20
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

-- Location: LCCOMB_X113_Y36_N22
\encoder|MAE_emission|i[26]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[26]~23_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|Add0~52_combout\))) # (!\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|i\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|i\(26),
	datad => \encoder|MAE_emission|Add0~52_combout\,
	combout => \encoder|MAE_emission|i[26]~23_combout\);

-- Location: LCCOMB_X114_Y36_N2
\encoder|MAE_emission|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector13~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	datad => \encoder|MAE_emission|i\(26),
	combout => \encoder|MAE_emission|Selector13~0_combout\);

-- Location: FF_X113_Y36_N23
\encoder|MAE_emission|i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[26]~23_combout\,
	asdata => \encoder|MAE_emission|Selector13~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(26));

-- Location: LCCOMB_X112_Y36_N22
\encoder|MAE_emission|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Add0~54_combout\ = (\encoder|MAE_emission|i\(27) & (\encoder|MAE_emission|Add0~53\ & VCC)) # (!\encoder|MAE_emission|i\(27) & (!\encoder|MAE_emission|Add0~53\))
-- \encoder|MAE_emission|Add0~55\ = CARRY((!\encoder|MAE_emission|i\(27) & !\encoder|MAE_emission|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(27),
	datad => VCC,
	cin => \encoder|MAE_emission|Add0~53\,
	combout => \encoder|MAE_emission|Add0~54_combout\,
	cout => \encoder|MAE_emission|Add0~55\);

-- Location: LCCOMB_X113_Y36_N0
\encoder|MAE_emission|i[27]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[27]~24_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|Add0~54_combout\))) # (!\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|i\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|i\(27),
	datad => \encoder|MAE_emission|Add0~54_combout\,
	combout => \encoder|MAE_emission|i[27]~24_combout\);

-- Location: LCCOMB_X114_Y36_N12
\encoder|MAE_emission|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector12~0_combout\ = (\encoder|MAE_emission|i\(27) & !\encoder|MAE_emission|EF.State_Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|i\(27),
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	combout => \encoder|MAE_emission|Selector12~0_combout\);

-- Location: FF_X113_Y36_N1
\encoder|MAE_emission|i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[27]~24_combout\,
	asdata => \encoder|MAE_emission|Selector12~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(27));

-- Location: LCCOMB_X113_Y36_N8
\encoder|MAE_emission|i[29]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[29]~26_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|Add0~58_combout\)) # (!\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|i\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Add0~58_combout\,
	datac => \encoder|MAE_emission|i\(29),
	datad => \encoder|MAE_emission|process_0~0_combout\,
	combout => \encoder|MAE_emission|i[29]~26_combout\);

-- Location: LCCOMB_X114_Y36_N20
\encoder|MAE_emission|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector10~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	datad => \encoder|MAE_emission|i\(29),
	combout => \encoder|MAE_emission|Selector10~0_combout\);

-- Location: FF_X113_Y36_N9
\encoder|MAE_emission|i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[29]~26_combout\,
	asdata => \encoder|MAE_emission|Selector10~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(29));

-- Location: LCCOMB_X113_Y36_N18
\encoder|MAE_emission|i[28]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|i[28]~25_combout\ = (\encoder|MAE_emission|process_0~0_combout\ & ((\encoder|MAE_emission|Add0~56_combout\))) # (!\encoder|MAE_emission|process_0~0_combout\ & (\encoder|MAE_emission|i\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|i\(28),
	datad => \encoder|MAE_emission|Add0~56_combout\,
	combout => \encoder|MAE_emission|i[28]~25_combout\);

-- Location: LCCOMB_X114_Y36_N14
\encoder|MAE_emission|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector11~0_combout\ = (!\encoder|MAE_emission|EF.State_Init~q\ & \encoder|MAE_emission|i\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder|MAE_emission|EF.State_Init~q\,
	datad => \encoder|MAE_emission|i\(28),
	combout => \encoder|MAE_emission|Selector11~0_combout\);

-- Location: FF_X113_Y36_N19
\encoder|MAE_emission|i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|i[28]~25_combout\,
	asdata => \encoder|MAE_emission|Selector11~0_combout\,
	sload => \encoder|MAE_emission|ALT_INV_EF.State_Send~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|i\(28));

-- Location: LCCOMB_X113_Y36_N24
\encoder|MAE_emission|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~8_combout\ = (((!\encoder|MAE_emission|i\(28)) # (!\encoder|MAE_emission|i\(29))) # (!\encoder|MAE_emission|i\(27))) # (!\encoder|MAE_emission|i\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(30),
	datab => \encoder|MAE_emission|i\(27),
	datac => \encoder|MAE_emission|i\(29),
	datad => \encoder|MAE_emission|i\(28),
	combout => \encoder|MAE_emission|Equal0~8_combout\);

-- Location: LCCOMB_X113_Y36_N30
\encoder|MAE_emission|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~9_combout\ = (\encoder|MAE_emission|Equal0~6_combout\) # ((\encoder|MAE_emission|Equal0~7_combout\) # ((\encoder|MAE_emission|Equal0~5_combout\) # (\encoder|MAE_emission|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Equal0~6_combout\,
	datab => \encoder|MAE_emission|Equal0~7_combout\,
	datac => \encoder|MAE_emission|Equal0~5_combout\,
	datad => \encoder|MAE_emission|Equal0~8_combout\,
	combout => \encoder|MAE_emission|Equal0~9_combout\);

-- Location: LCCOMB_X112_Y35_N30
\encoder|MAE_emission|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Equal0~10_combout\ = (\encoder|MAE_emission|Equal0~9_combout\) # (\encoder|MAE_emission|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|MAE_emission|Equal0~9_combout\,
	datac => \encoder|MAE_emission|Equal0~4_combout\,
	combout => \encoder|MAE_emission|Equal0~10_combout\);

-- Location: LCCOMB_X112_Y35_N18
\encoder|MAE_emission|EF~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|EF~14_combout\ = (\encoder|TickGenerator|tick_bit~q\ & ((\encoder|MAE_emission|EF.State_Send~q\ & ((\encoder|MAE_emission|Equal0~10_combout\))) # (!\encoder|MAE_emission|EF.State_Send~q\ & (\encoder|MAE_emission|EF.State_Init~q\)))) 
-- # (!\encoder|TickGenerator|tick_bit~q\ & (((\encoder|MAE_emission|EF.State_Send~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Init~q\,
	datab => \encoder|TickGenerator|tick_bit~q\,
	datac => \encoder|MAE_emission|Equal0~10_combout\,
	datad => \encoder|MAE_emission|EF.State_Send~q\,
	combout => \encoder|MAE_emission|EF~14_combout\);

-- Location: LCCOMB_X112_Y35_N0
\encoder|MAE_emission|EF~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|EF~15_combout\ = (!\encoder|MAE_emission|EF.State_Close~q\ & (!\rst~input_o\ & \encoder|MAE_emission|EF~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Close~q\,
	datac => \rst~input_o\,
	datad => \encoder|MAE_emission|EF~14_combout\,
	combout => \encoder|MAE_emission|EF~15_combout\);

-- Location: FF_X112_Y35_N1
\encoder|MAE_emission|EF.State_Send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|EF~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|EF.State_Send~q\);

-- Location: LCCOMB_X112_Y35_N28
\encoder|MAE_emission|EF~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|EF~18_combout\ = (!\rst~input_o\ & ((\Go~input_o\) # ((!\encoder|MAE_emission|EF.State_Close~q\ & \encoder|MAE_emission|EF.State_Begin~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Close~q\,
	datab => \Go~input_o\,
	datac => \encoder|MAE_emission|EF.State_Begin~q\,
	datad => \rst~input_o\,
	combout => \encoder|MAE_emission|EF~18_combout\);

-- Location: FF_X112_Y35_N29
\encoder|MAE_emission|EF.State_Begin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|EF~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|EF.State_Begin~q\);

-- Location: LCCOMB_X112_Y35_N26
\encoder|MAE_emission|EF~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|EF~16_combout\ = (\Go~input_o\ & (!\rst~input_o\ & !\encoder|MAE_emission|EF.State_Begin~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Go~input_o\,
	datac => \rst~input_o\,
	datad => \encoder|MAE_emission|EF.State_Begin~q\,
	combout => \encoder|MAE_emission|EF~16_combout\);

-- Location: FF_X112_Y35_N27
\encoder|MAE_emission|EF.State_Clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|EF~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|EF.State_Clear~q\);

-- Location: LCCOMB_X114_Y37_N24
\encoder|MAE_emission|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector7~0_combout\ = (\encoder|MAE_emission|EF.State_Clear~q\) # ((\encoder|MAE_emission|clear~q\ & ((\encoder|MAE_emission|EF.State_Close~q\) # (\encoder|MAE_emission|EF.State_Send~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Close~q\,
	datab => \encoder|MAE_emission|EF.State_Send~q\,
	datac => \encoder|MAE_emission|clear~q\,
	datad => \encoder|MAE_emission|EF.State_Clear~q\,
	combout => \encoder|MAE_emission|Selector7~0_combout\);

-- Location: FF_X114_Y37_N25
\encoder|MAE_emission|clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|Selector7~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|clear~q\);

-- Location: CLKCTRL_G7
\encoder|MAE_emission|clear~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \encoder|MAE_emission|clear~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \encoder|MAE_emission|clear~clkctrl_outclk\);

-- Location: FF_X90_Y60_N27
\encoder|TickGenerator|stburst[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stburst~0_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(8));

-- Location: LCCOMB_X90_Y60_N0
\encoder|TickGenerator|stburst~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stburst~5_combout\ = (!\encoder|TickGenerator|Add0~0_combout\ & !\encoder|TickGenerator|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Add0~0_combout\,
	datac => \encoder|TickGenerator|Equal0~10_combout\,
	combout => \encoder|TickGenerator|stburst~5_combout\);

-- Location: FF_X90_Y60_N1
\encoder|TickGenerator|stburst[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stburst~5_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(0));

-- Location: LCCOMB_X89_Y60_N2
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

-- Location: LCCOMB_X88_Y60_N16
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

-- Location: FF_X89_Y60_N17
\encoder|TickGenerator|stburst[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \encoder|TickGenerator|stburst[1]~10_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(1));

-- Location: LCCOMB_X89_Y60_N6
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

-- Location: LCCOMB_X89_Y60_N14
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

-- Location: FF_X89_Y60_N15
\encoder|TickGenerator|stburst[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~14_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(7));

-- Location: LCCOMB_X89_Y60_N18
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

-- Location: FF_X89_Y60_N19
\encoder|TickGenerator|stburst[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~18_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(9));

-- Location: LCCOMB_X89_Y60_N20
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

-- Location: FF_X89_Y60_N21
\encoder|TickGenerator|stburst[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~20_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(10));

-- Location: LCCOMB_X89_Y60_N24
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

-- Location: FF_X89_Y60_N25
\encoder|TickGenerator|stburst[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~24_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(12));

-- Location: LCCOMB_X89_Y60_N26
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

-- Location: LCCOMB_X89_Y60_N28
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

-- Location: FF_X89_Y60_N29
\encoder|TickGenerator|stburst[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~28_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(14));

-- Location: LCCOMB_X89_Y59_N0
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

-- Location: FF_X89_Y59_N1
\encoder|TickGenerator|stburst[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~32_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(16));

-- Location: LCCOMB_X89_Y59_N2
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

-- Location: FF_X89_Y59_N3
\encoder|TickGenerator|stburst[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~34_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(17));

-- Location: LCCOMB_X89_Y59_N4
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

-- Location: FF_X89_Y59_N5
\encoder|TickGenerator|stburst[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~36_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(18));

-- Location: LCCOMB_X89_Y59_N8
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

-- Location: FF_X89_Y59_N9
\encoder|TickGenerator|stburst[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~40_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(20));

-- Location: LCCOMB_X89_Y59_N10
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

-- Location: LCCOMB_X89_Y59_N12
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

-- Location: LCCOMB_X89_Y59_N14
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

-- Location: FF_X89_Y59_N15
\encoder|TickGenerator|stburst[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~46_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(23));

-- Location: LCCOMB_X89_Y59_N16
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

-- Location: FF_X89_Y59_N17
\encoder|TickGenerator|stburst[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~48_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(24));

-- Location: LCCOMB_X89_Y59_N18
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

-- Location: FF_X89_Y59_N19
\encoder|TickGenerator|stburst[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~50_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(25));

-- Location: LCCOMB_X89_Y59_N20
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

-- Location: FF_X89_Y59_N21
\encoder|TickGenerator|stburst[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~52_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(26));

-- Location: LCCOMB_X89_Y59_N24
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

-- Location: FF_X89_Y59_N25
\encoder|TickGenerator|stburst[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~56_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(28));

-- Location: LCCOMB_X89_Y59_N26
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

-- Location: LCCOMB_X89_Y59_N28
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

-- Location: FF_X89_Y59_N29
\encoder|TickGenerator|stburst[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~60_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(30));

-- Location: FF_X89_Y59_N27
\encoder|TickGenerator|stburst[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~58_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(29));

-- Location: LCCOMB_X89_Y59_N30
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

-- Location: FF_X89_Y59_N31
\encoder|TickGenerator|stburst[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~62_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(31));

-- Location: LCCOMB_X90_Y59_N0
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

-- Location: FF_X89_Y59_N11
\encoder|TickGenerator|stburst[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~42_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(21));

-- Location: FF_X89_Y59_N13
\encoder|TickGenerator|stburst[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~44_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(22));

-- Location: LCCOMB_X88_Y59_N12
\encoder|TickGenerator|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~2_combout\ = (!\encoder|TickGenerator|stburst\(23) & !\encoder|TickGenerator|stburst\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|stburst\(23),
	datac => \encoder|TickGenerator|stburst\(22),
	combout => \encoder|TickGenerator|Equal0~2_combout\);

-- Location: LCCOMB_X88_Y59_N0
\encoder|TickGenerator|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~4_combout\ = (\encoder|TickGenerator|Equal0~3_combout\ & (!\encoder|TickGenerator|stburst\(21) & (!\encoder|TickGenerator|stburst\(20) & \encoder|TickGenerator|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal0~3_combout\,
	datab => \encoder|TickGenerator|stburst\(21),
	datac => \encoder|TickGenerator|stburst\(20),
	datad => \encoder|TickGenerator|Equal0~2_combout\,
	combout => \encoder|TickGenerator|Equal0~4_combout\);

-- Location: LCCOMB_X90_Y60_N28
\encoder|TickGenerator|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~6_combout\ = (!\encoder|TickGenerator|stburst\(11) & (!\encoder|TickGenerator|stburst\(10) & (!\encoder|TickGenerator|stburst\(8) & !\encoder|TickGenerator|stburst\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(11),
	datab => \encoder|TickGenerator|stburst\(10),
	datac => \encoder|TickGenerator|stburst\(8),
	datad => \encoder|TickGenerator|stburst\(9),
	combout => \encoder|TickGenerator|Equal0~6_combout\);

-- Location: LCCOMB_X90_Y60_N20
\encoder|TickGenerator|stburst~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|stburst~3_combout\ = (\encoder|TickGenerator|Equal0~10_combout\) # (!\encoder|TickGenerator|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|TickGenerator|Add0~6_combout\,
	datac => \encoder|TickGenerator|Equal0~10_combout\,
	combout => \encoder|TickGenerator|stburst~3_combout\);

-- Location: FF_X90_Y60_N21
\encoder|TickGenerator|stburst[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|stburst~3_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(3));

-- Location: LCCOMB_X90_Y60_N22
\encoder|TickGenerator|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~8_combout\ = (!\encoder|TickGenerator|stburst\(2) & (!\encoder|TickGenerator|stburst\(3) & (!\encoder|TickGenerator|stburst\(1) & !\encoder|TickGenerator|stburst\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|stburst\(2),
	datab => \encoder|TickGenerator|stburst\(3),
	datac => \encoder|TickGenerator|stburst\(1),
	datad => \encoder|TickGenerator|stburst\(0),
	combout => \encoder|TickGenerator|Equal0~8_combout\);

-- Location: FF_X89_Y60_N27
\encoder|TickGenerator|stburst[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|Add0~26_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|stburst\(13));

-- Location: LCCOMB_X90_Y60_N24
\encoder|TickGenerator|Equal0~5\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X90_Y60_N12
\encoder|TickGenerator|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~9_combout\ = (\encoder|TickGenerator|Equal0~7_combout\ & (\encoder|TickGenerator|Equal0~6_combout\ & (\encoder|TickGenerator|Equal0~8_combout\ & \encoder|TickGenerator|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal0~7_combout\,
	datab => \encoder|TickGenerator|Equal0~6_combout\,
	datac => \encoder|TickGenerator|Equal0~8_combout\,
	datad => \encoder|TickGenerator|Equal0~5_combout\,
	combout => \encoder|TickGenerator|Equal0~9_combout\);

-- Location: LCCOMB_X90_Y60_N14
\encoder|TickGenerator|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|Equal0~10_combout\ = (\encoder|TickGenerator|Equal0~1_combout\ & (\encoder|TickGenerator|Equal0~0_combout\ & (\encoder|TickGenerator|Equal0~4_combout\ & \encoder|TickGenerator|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|TickGenerator|Equal0~1_combout\,
	datab => \encoder|TickGenerator|Equal0~0_combout\,
	datac => \encoder|TickGenerator|Equal0~4_combout\,
	datad => \encoder|TickGenerator|Equal0~9_combout\,
	combout => \encoder|TickGenerator|Equal0~10_combout\);

-- Location: LCCOMB_X91_Y60_N16
\encoder|TickGenerator|tick_burst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|TickGenerator|tick_burst~feeder_combout\ = \encoder|TickGenerator|Equal0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encoder|TickGenerator|Equal0~10_combout\,
	combout => \encoder|TickGenerator|tick_burst~feeder_combout\);

-- Location: FF_X91_Y60_N17
\encoder|TickGenerator|tick_burst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|TickGenerator|tick_burst~feeder_combout\,
	clrn => \encoder|MAE_emission|ALT_INV_clear~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|TickGenerator|tick_burst~q\);

-- Location: FF_X100_Y35_N3
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

-- Location: LCCOMB_X100_Y35_N12
\encoder|BurstGenerator|Out_burst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|BurstGenerator|Out_burst~0_combout\ = (\encoder|BurstGenerator|state\(1) & (!\rst~input_o\ & \encoder|TickGenerator|tick_burst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|BurstGenerator|state\(1),
	datac => \rst~input_o\,
	datad => \encoder|TickGenerator|tick_burst~q\,
	combout => \encoder|BurstGenerator|Out_burst~0_combout\);

-- Location: LCCOMB_X100_Y35_N0
\encoder|BurstGenerator|Out_burst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|BurstGenerator|Out_burst~1_combout\ = (\encoder|BurstGenerator|Out_burst~0_combout\ & (!\encoder|BurstGenerator|state\(0))) # (!\encoder|BurstGenerator|Out_burst~0_combout\ & ((\encoder|BurstGenerator|Out_burst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder|BurstGenerator|state\(0),
	datac => \encoder|BurstGenerator|Out_burst~q\,
	datad => \encoder|BurstGenerator|Out_burst~0_combout\,
	combout => \encoder|BurstGenerator|Out_burst~1_combout\);

-- Location: FF_X100_Y35_N1
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

-- Location: LCCOMB_X112_Y35_N16
\encoder|MAE_emission|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector5~0_combout\ = (\encoder|MAE_emission|enable~q\ & ((\encoder|MAE_emission|EF.State_Init~q\) # ((\encoder|MAE_emission|EF.State_Clear~q\) # (\encoder|MAE_emission|EF.State_Send~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Init~q\,
	datab => \encoder|MAE_emission|enable~q\,
	datac => \encoder|MAE_emission|EF.State_Clear~q\,
	datad => \encoder|MAE_emission|EF.State_Send~q\,
	combout => \encoder|MAE_emission|Selector5~0_combout\);

-- Location: LCCOMB_X112_Y35_N4
\encoder|MAE_emission|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector5~1_combout\ = (\encoder|MAE_emission|Selector5~0_combout\) # ((\encoder|MAE_emission|Equal0~10_combout\ & (\encoder|TickGenerator|tick_bit~q\ & \encoder|MAE_emission|EF.State_Send~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Equal0~10_combout\,
	datab => \encoder|MAE_emission|Selector5~0_combout\,
	datac => \encoder|TickGenerator|tick_bit~q\,
	datad => \encoder|MAE_emission|EF.State_Send~q\,
	combout => \encoder|MAE_emission|Selector5~1_combout\);

-- Location: FF_X112_Y35_N5
\encoder|MAE_emission|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|Selector5~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|enable~q\);

-- Location: LCCOMB_X112_Y35_N20
\encoder|MAE_emission|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector6~0_combout\ = (\encoder|MAE_emission|EF.State_Init~q\) # ((\encoder|MAE_emission|EF.State_Clear~q\) # ((!\encoder|MAE_emission|process_0~0_combout\ & \encoder|MAE_emission|EF.State_Send~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|EF.State_Init~q\,
	datab => \encoder|MAE_emission|process_0~0_combout\,
	datac => \encoder|MAE_emission|EF.State_Clear~q\,
	datad => \encoder|MAE_emission|EF.State_Send~q\,
	combout => \encoder|MAE_emission|Selector6~0_combout\);

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

-- Location: LCCOMB_X114_Y33_N8
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

-- Location: LCCOMB_X113_Y37_N10
\encoder|MAE_emission|reg[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|reg[11]~0_combout\ = (!\rst~input_o\ & \encoder|MAE_emission|EF.State_Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \encoder|MAE_emission|EF.State_Init~q\,
	combout => \encoder|MAE_emission|reg[11]~0_combout\);

-- Location: FF_X114_Y33_N9
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

-- Location: FF_X114_Y33_N19
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

-- Location: FF_X114_Y33_N13
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

-- Location: LCCOMB_X114_Y33_N12
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

-- Location: LCCOMB_X114_Y33_N18
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

-- Location: LCCOMB_X114_Y33_N4
\encoder|MAE_emission|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~6_combout\ = (\encoder|MAE_emission|i\(3) & (((\encoder|MAE_emission|i\(2))))) # (!\encoder|MAE_emission|i\(3) & ((\encoder|MAE_emission|i\(2) & ((\encoder|MAE_emission|Mux0~3_combout\))) # (!\encoder|MAE_emission|i\(2) & 
-- (\encoder|MAE_emission|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Mux0~5_combout\,
	datab => \encoder|MAE_emission|i\(3),
	datac => \encoder|MAE_emission|i\(2),
	datad => \encoder|MAE_emission|Mux0~3_combout\,
	combout => \encoder|MAE_emission|Mux0~6_combout\);

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

-- Location: FF_X114_Y33_N25
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

-- Location: LCCOMB_X114_Y33_N24
\encoder|MAE_emission|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~0_combout\ = (\encoder|MAE_emission|i\(0) & (((\encoder|MAE_emission|reg\(8) & !\encoder|MAE_emission|i\(1))))) # (!\encoder|MAE_emission|i\(0) & ((\encoder|MAE_emission|reg\(9)) # ((\encoder|MAE_emission|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|reg\(9),
	datab => \encoder|MAE_emission|i\(0),
	datac => \encoder|MAE_emission|reg\(8),
	datad => \encoder|MAE_emission|i\(1),
	combout => \encoder|MAE_emission|Mux0~0_combout\);

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

-- Location: FF_X114_Y33_N1
\encoder|MAE_emission|reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Address_in[4]~input_o\,
	sload => VCC,
	ena => \encoder|MAE_emission|reg[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|reg\(10));

-- Location: LCCOMB_X114_Y33_N0
\encoder|MAE_emission|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~1_combout\ = (\encoder|MAE_emission|Mux0~0_combout\ & ((\encoder|MAE_emission|reg\(11)) # ((!\encoder|MAE_emission|i\(1))))) # (!\encoder|MAE_emission|Mux0~0_combout\ & (((\encoder|MAE_emission|reg\(10) & 
-- \encoder|MAE_emission|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|reg\(11),
	datab => \encoder|MAE_emission|Mux0~0_combout\,
	datac => \encoder|MAE_emission|reg\(10),
	datad => \encoder|MAE_emission|i\(1),
	combout => \encoder|MAE_emission|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y33_N2
\encoder|MAE_emission|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Mux0~7_combout\ = (\encoder|MAE_emission|i\(3) & ((\encoder|MAE_emission|Mux0~6_combout\ & (!\encoder|MAE_emission|i\(1))) # (!\encoder|MAE_emission|Mux0~6_combout\ & ((\encoder|MAE_emission|Mux0~1_combout\))))) # 
-- (!\encoder|MAE_emission|i\(3) & (((\encoder|MAE_emission|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|i\(3),
	datab => \encoder|MAE_emission|i\(1),
	datac => \encoder|MAE_emission|Mux0~6_combout\,
	datad => \encoder|MAE_emission|Mux0~1_combout\,
	combout => \encoder|MAE_emission|Mux0~7_combout\);

-- Location: LCCOMB_X112_Y35_N2
\encoder|MAE_emission|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|MAE_emission|Selector6~1_combout\ = (\encoder|MAE_emission|Selector5~2_combout\ & ((\encoder|MAE_emission|Mux0~7_combout\) # ((\encoder|MAE_emission|Selector6~0_combout\ & \encoder|MAE_emission|out_trame~q\)))) # 
-- (!\encoder|MAE_emission|Selector5~2_combout\ & (\encoder|MAE_emission|Selector6~0_combout\ & (\encoder|MAE_emission|out_trame~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|MAE_emission|Selector5~2_combout\,
	datab => \encoder|MAE_emission|Selector6~0_combout\,
	datac => \encoder|MAE_emission|out_trame~q\,
	datad => \encoder|MAE_emission|Mux0~7_combout\,
	combout => \encoder|MAE_emission|Selector6~1_combout\);

-- Location: FF_X112_Y35_N3
\encoder|MAE_emission|out_trame\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \encoder|MAE_emission|Selector6~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|MAE_emission|out_trame~q\);

-- Location: LCCOMB_X100_Y35_N4
\encoder|Tx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|Tx~0_combout\ = (\encoder|BurstGenerator|Out_burst~q\ & (\encoder|MAE_emission|enable~q\ & (\encoder|ManchesterGenerator|manch~q\ $ (\encoder|MAE_emission|out_trame~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|ManchesterGenerator|manch~q\,
	datab => \encoder|BurstGenerator|Out_burst~q\,
	datac => \encoder|MAE_emission|enable~q\,
	datad => \encoder|MAE_emission|out_trame~q\,
	combout => \encoder|Tx~0_combout\);

-- Location: LCCOMB_X79_Y59_N28
\decoder|deburst|trame_deburst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|deburst|trame_deburst~1_combout\ = (\decoder|deburst|trame_deburst~0_combout\ & ((\decoder|deburst|EP.E0~q\) # ((\encoder|Tx~0_combout\)))) # (!\decoder|deburst|trame_deburst~0_combout\ & (((\decoder|deburst|trame_deburst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|EP.E0~q\,
	datab => \decoder|deburst|trame_deburst~0_combout\,
	datac => \decoder|deburst|trame_deburst~q\,
	datad => \encoder|Tx~0_combout\,
	combout => \decoder|deburst|trame_deburst~1_combout\);

-- Location: FF_X79_Y59_N29
\decoder|deburst|trame_deburst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|deburst|trame_deburst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|deburst|trame_deburst~q\);

-- Location: LCCOMB_X75_Y59_N26
\decoder|demanchester|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector3~0_combout\ = (\decoder|demanchester|State.Out1~q\ & \decoder|deburst|trame_deburst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|State.Out1~q\,
	datad => \decoder|deburst|trame_deburst~q\,
	combout => \decoder|demanchester|Selector3~0_combout\);

-- Location: LCCOMB_X84_Y57_N20
\decoder|tick_gen|stmanch~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~5_combout\ = (\decoder|tick_gen|Equal1~10_combout\) # (!\decoder|tick_gen|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Add1~12_combout\,
	datad => \decoder|tick_gen|Equal1~10_combout\,
	combout => \decoder|tick_gen|stmanch~5_combout\);

-- Location: FF_X84_Y57_N21
\decoder|tick_gen|stmanch[6]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(6));

-- Location: LCCOMB_X84_Y57_N26
\decoder|tick_gen|stmanch~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~6_combout\ = (\decoder|tick_gen|Equal1~10_combout\) # (!\decoder|tick_gen|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Add1~8_combout\,
	datad => \decoder|tick_gen|Equal1~10_combout\,
	combout => \decoder|tick_gen|stmanch~6_combout\);

-- Location: FF_X84_Y57_N27
\decoder|tick_gen|stmanch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stmanch~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(4));

-- Location: LCCOMB_X83_Y57_N0
\decoder|tick_gen|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~0_combout\ = \decoder|tick_gen|stmanch\(0) $ (GND)
-- \decoder|tick_gen|Add1~1\ = CARRY(!\decoder|tick_gen|stmanch\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(0),
	datad => VCC,
	combout => \decoder|tick_gen|Add1~0_combout\,
	cout => \decoder|tick_gen|Add1~1\);

-- Location: LCCOMB_X83_Y57_N4
\decoder|tick_gen|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~4_combout\ = (\decoder|tick_gen|stmanch\(2) & (\decoder|tick_gen|Add1~3\ $ (GND))) # (!\decoder|tick_gen|stmanch\(2) & (!\decoder|tick_gen|Add1~3\ & VCC))
-- \decoder|tick_gen|Add1~5\ = CARRY((\decoder|tick_gen|stmanch\(2) & !\decoder|tick_gen|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(2),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~3\,
	combout => \decoder|tick_gen|Add1~4_combout\,
	cout => \decoder|tick_gen|Add1~5\);

-- Location: FF_X83_Y57_N5
\decoder|tick_gen|stmanch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(2));

-- Location: LCCOMB_X83_Y57_N10
\decoder|tick_gen|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~10_combout\ = (\decoder|tick_gen|stmanch\(5) & (!\decoder|tick_gen|Add1~9\)) # (!\decoder|tick_gen|stmanch\(5) & ((\decoder|tick_gen|Add1~9\) # (GND)))
-- \decoder|tick_gen|Add1~11\ = CARRY((!\decoder|tick_gen|Add1~9\) # (!\decoder|tick_gen|stmanch\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(5),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~9\,
	combout => \decoder|tick_gen|Add1~10_combout\,
	cout => \decoder|tick_gen|Add1~11\);

-- Location: FF_X83_Y57_N11
\decoder|tick_gen|stmanch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add1~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(5));

-- Location: LCCOMB_X84_Y57_N8
\decoder|tick_gen|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~8_combout\ = (!\decoder|tick_gen|stmanch\(7) & (!\decoder|tick_gen|stmanch\(6) & (!\decoder|tick_gen|stmanch\(4) & !\decoder|tick_gen|stmanch\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(7),
	datab => \decoder|tick_gen|stmanch\(6),
	datac => \decoder|tick_gen|stmanch\(4),
	datad => \decoder|tick_gen|stmanch\(5),
	combout => \decoder|tick_gen|Equal1~8_combout\);

-- Location: LCCOMB_X84_Y57_N4
\decoder|tick_gen|stmanch~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~8_combout\ = (!\decoder|tick_gen|Add1~0_combout\ & !\decoder|tick_gen|Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Add1~0_combout\,
	datad => \decoder|tick_gen|Equal1~10_combout\,
	combout => \decoder|tick_gen|stmanch~8_combout\);

-- Location: FF_X84_Y57_N5
\decoder|tick_gen|stmanch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stmanch~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(0));

-- Location: LCCOMB_X84_Y57_N6
\decoder|tick_gen|stmanch~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~7_combout\ = (\decoder|tick_gen|Add1~2_combout\ & !\decoder|tick_gen|Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Add1~2_combout\,
	datad => \decoder|tick_gen|Equal1~10_combout\,
	combout => \decoder|tick_gen|stmanch~7_combout\);

-- Location: FF_X84_Y57_N7
\decoder|tick_gen|stmanch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stmanch~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stmanch\(1));

-- Location: LCCOMB_X84_Y57_N14
\decoder|tick_gen|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~9_combout\ = (!\decoder|tick_gen|stmanch\(3) & (!\decoder|tick_gen|stmanch\(2) & (!\decoder|tick_gen|stmanch\(0) & !\decoder|tick_gen|stmanch\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(3),
	datab => \decoder|tick_gen|stmanch\(2),
	datac => \decoder|tick_gen|stmanch\(0),
	datad => \decoder|tick_gen|stmanch\(1),
	combout => \decoder|tick_gen|Equal1~9_combout\);

-- Location: LCCOMB_X83_Y57_N14
\decoder|tick_gen|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~14_combout\ = (\decoder|tick_gen|stmanch\(7) & ((\decoder|tick_gen|Add1~13\) # (GND))) # (!\decoder|tick_gen|stmanch\(7) & (!\decoder|tick_gen|Add1~13\))
-- \decoder|tick_gen|Add1~15\ = CARRY((\decoder|tick_gen|stmanch\(7)) # (!\decoder|tick_gen|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(7),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~13\,
	combout => \decoder|tick_gen|Add1~14_combout\,
	cout => \decoder|tick_gen|Add1~15\);

-- Location: LCCOMB_X84_Y57_N22
\decoder|tick_gen|stmanch~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~4_combout\ = (\decoder|tick_gen|Equal1~10_combout\) # (!\decoder|tick_gen|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal1~10_combout\,
	datad => \decoder|tick_gen|Add1~14_combout\,
	combout => \decoder|tick_gen|stmanch~4_combout\);

-- Location: FF_X84_Y57_N23
\decoder|tick_gen|stmanch[7]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(7));

-- Location: LCCOMB_X83_Y57_N16
\decoder|tick_gen|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~16_combout\ = (\decoder|tick_gen|stmanch\(8) & (\decoder|tick_gen|Add1~15\ $ (GND))) # (!\decoder|tick_gen|stmanch\(8) & (!\decoder|tick_gen|Add1~15\ & VCC))
-- \decoder|tick_gen|Add1~17\ = CARRY((\decoder|tick_gen|stmanch\(8) & !\decoder|tick_gen|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(8),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~15\,
	combout => \decoder|tick_gen|Add1~16_combout\,
	cout => \decoder|tick_gen|Add1~17\);

-- Location: FF_X83_Y57_N17
\decoder|tick_gen|stmanch[8]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(8));

-- Location: LCCOMB_X83_Y57_N18
\decoder|tick_gen|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~18_combout\ = (\decoder|tick_gen|stmanch\(9) & ((\decoder|tick_gen|Add1~17\) # (GND))) # (!\decoder|tick_gen|stmanch\(9) & (!\decoder|tick_gen|Add1~17\))
-- \decoder|tick_gen|Add1~19\ = CARRY((\decoder|tick_gen|stmanch\(9)) # (!\decoder|tick_gen|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(9),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~17\,
	combout => \decoder|tick_gen|Add1~18_combout\,
	cout => \decoder|tick_gen|Add1~19\);

-- Location: LCCOMB_X84_Y57_N18
\decoder|tick_gen|stmanch~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~2_combout\ = (\decoder|tick_gen|Equal1~10_combout\) # (!\decoder|tick_gen|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal1~10_combout\,
	datad => \decoder|tick_gen|Add1~18_combout\,
	combout => \decoder|tick_gen|stmanch~2_combout\);

-- Location: FF_X84_Y57_N19
\decoder|tick_gen|stmanch[9]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(9));

-- Location: LCCOMB_X83_Y57_N20
\decoder|tick_gen|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~20_combout\ = (\decoder|tick_gen|stmanch\(10) & (!\decoder|tick_gen|Add1~19\ & VCC)) # (!\decoder|tick_gen|stmanch\(10) & (\decoder|tick_gen|Add1~19\ $ (GND)))
-- \decoder|tick_gen|Add1~21\ = CARRY((!\decoder|tick_gen|stmanch\(10) & !\decoder|tick_gen|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(10),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~19\,
	combout => \decoder|tick_gen|Add1~20_combout\,
	cout => \decoder|tick_gen|Add1~21\);

-- Location: LCCOMB_X84_Y57_N16
\decoder|tick_gen|stmanch~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~1_combout\ = (\decoder|tick_gen|Equal1~10_combout\) # (!\decoder|tick_gen|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal1~10_combout\,
	datad => \decoder|tick_gen|Add1~20_combout\,
	combout => \decoder|tick_gen|stmanch~1_combout\);

-- Location: FF_X84_Y57_N17
\decoder|tick_gen|stmanch[10]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(10));

-- Location: LCCOMB_X83_Y57_N22
\decoder|tick_gen|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~22_combout\ = (\decoder|tick_gen|stmanch\(11) & (!\decoder|tick_gen|Add1~21\)) # (!\decoder|tick_gen|stmanch\(11) & ((\decoder|tick_gen|Add1~21\) # (GND)))
-- \decoder|tick_gen|Add1~23\ = CARRY((!\decoder|tick_gen|Add1~21\) # (!\decoder|tick_gen|stmanch\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(11),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~21\,
	combout => \decoder|tick_gen|Add1~22_combout\,
	cout => \decoder|tick_gen|Add1~23\);

-- Location: FF_X83_Y57_N23
\decoder|tick_gen|stmanch[11]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(11));

-- Location: LCCOMB_X84_Y57_N28
\decoder|tick_gen|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~6_combout\ = (!\decoder|tick_gen|stmanch\(10) & (!\decoder|tick_gen|stmanch\(9) & (!\decoder|tick_gen|stmanch\(8) & !\decoder|tick_gen|stmanch\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(10),
	datab => \decoder|tick_gen|stmanch\(9),
	datac => \decoder|tick_gen|stmanch\(8),
	datad => \decoder|tick_gen|stmanch\(11),
	combout => \decoder|tick_gen|Equal1~6_combout\);

-- Location: LCCOMB_X83_Y57_N26
\decoder|tick_gen|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~26_combout\ = (\decoder|tick_gen|stmanch\(13) & (!\decoder|tick_gen|Add1~25\)) # (!\decoder|tick_gen|stmanch\(13) & ((\decoder|tick_gen|Add1~25\) # (GND)))
-- \decoder|tick_gen|Add1~27\ = CARRY((!\decoder|tick_gen|Add1~25\) # (!\decoder|tick_gen|stmanch\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(13),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~25\,
	combout => \decoder|tick_gen|Add1~26_combout\,
	cout => \decoder|tick_gen|Add1~27\);

-- Location: FF_X83_Y57_N27
\decoder|tick_gen|stmanch[13]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(13));

-- Location: LCCOMB_X83_Y57_N28
\decoder|tick_gen|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add1~28_combout\ = (\decoder|tick_gen|stmanch\(14) & (!\decoder|tick_gen|Add1~27\ & VCC)) # (!\decoder|tick_gen|stmanch\(14) & (\decoder|tick_gen|Add1~27\ $ (GND)))
-- \decoder|tick_gen|Add1~29\ = CARRY((!\decoder|tick_gen|stmanch\(14) & !\decoder|tick_gen|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(14),
	datad => VCC,
	cin => \decoder|tick_gen|Add1~27\,
	combout => \decoder|tick_gen|Add1~28_combout\,
	cout => \decoder|tick_gen|Add1~29\);

-- Location: LCCOMB_X84_Y57_N0
\decoder|tick_gen|stmanch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stmanch~0_combout\ = (\decoder|tick_gen|Equal1~10_combout\) # (!\decoder|tick_gen|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal1~10_combout\,
	datad => \decoder|tick_gen|Add1~28_combout\,
	combout => \decoder|tick_gen|stmanch~0_combout\);

-- Location: FF_X84_Y57_N1
\decoder|tick_gen|stmanch[14]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(14));

-- Location: FF_X83_Y57_N31
\decoder|tick_gen|stmanch[15]\ : dffeas
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
	q => \decoder|tick_gen|stmanch\(15));

-- Location: LCCOMB_X84_Y57_N10
\decoder|tick_gen|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~5_combout\ = (!\decoder|tick_gen|stmanch\(15) & !\decoder|tick_gen|stmanch\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stmanch\(15),
	datad => \decoder|tick_gen|stmanch\(14),
	combout => \decoder|tick_gen|Equal1~5_combout\);

-- Location: LCCOMB_X84_Y57_N24
\decoder|tick_gen|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~7_combout\ = (!\decoder|tick_gen|stmanch\(12) & (\decoder|tick_gen|Equal1~6_combout\ & (!\decoder|tick_gen|stmanch\(13) & \decoder|tick_gen|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stmanch\(12),
	datab => \decoder|tick_gen|Equal1~6_combout\,
	datac => \decoder|tick_gen|stmanch\(13),
	datad => \decoder|tick_gen|Equal1~5_combout\,
	combout => \decoder|tick_gen|Equal1~7_combout\);

-- Location: LCCOMB_X84_Y57_N12
\decoder|tick_gen|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal1~10_combout\ = (\decoder|tick_gen|Equal1~4_combout\ & (\decoder|tick_gen|Equal1~8_combout\ & (\decoder|tick_gen|Equal1~9_combout\ & \decoder|tick_gen|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal1~4_combout\,
	datab => \decoder|tick_gen|Equal1~8_combout\,
	datac => \decoder|tick_gen|Equal1~9_combout\,
	datad => \decoder|tick_gen|Equal1~7_combout\,
	combout => \decoder|tick_gen|Equal1~10_combout\);

-- Location: FF_X83_Y57_N29
\decoder|tick_gen|tick_manch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \decoder|tick_gen|Equal1~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|tick_manch~q\);

-- Location: FF_X75_Y59_N27
\decoder|demanchester|State.Out1_valid\ : dffeas
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
	q => \decoder|demanchester|State.Out1_valid~q\);

-- Location: LCCOMB_X75_Y59_N12
\decoder|demanchester|State.Out1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|State.Out1~1_combout\ = (\decoder|tick_gen|tick_manch~q\ & (!\decoder|deburst|trame_deburst~q\ & ((\decoder|demanchester|State.Out1~0_combout\)))) # (!\decoder|tick_gen|tick_manch~q\ & ((\decoder|demanchester|State.Out1~q\) # 
-- ((!\decoder|deburst|trame_deburst~q\ & \decoder|demanchester|State.Out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|tick_manch~q\,
	datab => \decoder|deburst|trame_deburst~q\,
	datac => \decoder|demanchester|State.Out1~q\,
	datad => \decoder|demanchester|State.Out1~0_combout\,
	combout => \decoder|demanchester|State.Out1~1_combout\);

-- Location: FF_X75_Y59_N13
\decoder|demanchester|State.Out1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|demanchester|State.Out1~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|demanchester|State.Out1~q\);

-- Location: LCCOMB_X75_Y59_N8
\decoder|demanchester|State.Init~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|State.Init~0_combout\ = (\decoder|deburst|trame_deburst~q\ & (!\decoder|demanchester|State.Out0~q\)) # (!\decoder|deburst|trame_deburst~q\ & (((\decoder|demanchester|State.Init~q\ & !\decoder|demanchester|State.Out1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|deburst|trame_deburst~q\,
	datab => \decoder|demanchester|State.Out0~q\,
	datac => \decoder|demanchester|State.Init~q\,
	datad => \decoder|demanchester|State.Out1~q\,
	combout => \decoder|demanchester|State.Init~0_combout\);

-- Location: FF_X75_Y59_N9
\decoder|demanchester|State.Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|demanchester|State.Init~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \decoder|tick_gen|tick_manch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|demanchester|State.Init~q\);

-- Location: LCCOMB_X75_Y59_N20
\decoder|demanchester|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector1~0_combout\ = (!\decoder|demanchester|State.Init~q\ & \decoder|deburst|trame_deburst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|demanchester|State.Init~q\,
	datad => \decoder|deburst|trame_deburst~q\,
	combout => \decoder|demanchester|Selector1~0_combout\);

-- Location: FF_X75_Y59_N21
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

-- Location: LCCOMB_X75_Y59_N10
\decoder|demanchester|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Selector5~0_combout\ = (\decoder|demanchester|State.Out0~q\ & !\decoder|deburst|trame_deburst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|demanchester|State.Out0~q\,
	datad => \decoder|deburst|trame_deburst~q\,
	combout => \decoder|demanchester|Selector5~0_combout\);

-- Location: FF_X75_Y59_N11
\decoder|demanchester|State.Out0_valid\ : dffeas
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
	q => \decoder|demanchester|State.Out0_valid~q\);

-- Location: LCCOMB_X75_Y59_N24
\decoder|demanchester|State.Out1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|State.Out1~0_combout\ = (\decoder|tick_gen|tick_manch~q\ & ((\decoder|demanchester|State.Out1_valid~q\) # ((\decoder|demanchester|State.Start~q\) # (\decoder|demanchester|State.Out0_valid~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|State.Out1_valid~q\,
	datab => \decoder|demanchester|State.Start~q\,
	datac => \decoder|tick_gen|tick_manch~q\,
	datad => \decoder|demanchester|State.Out0_valid~q\,
	combout => \decoder|demanchester|State.Out1~0_combout\);

-- Location: LCCOMB_X75_Y59_N14
\decoder|demanchester|State.Out0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|State.Out0~0_combout\ = (\decoder|tick_gen|tick_manch~q\ & (\decoder|deburst|trame_deburst~q\ & ((\decoder|demanchester|State.Out1~0_combout\)))) # (!\decoder|tick_gen|tick_manch~q\ & ((\decoder|demanchester|State.Out0~q\) # 
-- ((\decoder|deburst|trame_deburst~q\ & \decoder|demanchester|State.Out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|tick_manch~q\,
	datab => \decoder|deburst|trame_deburst~q\,
	datac => \decoder|demanchester|State.Out0~q\,
	datad => \decoder|demanchester|State.Out1~0_combout\,
	combout => \decoder|demanchester|State.Out0~0_combout\);

-- Location: FF_X75_Y59_N15
\decoder|demanchester|State.Out0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|demanchester|State.Out0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|demanchester|State.Out0~q\);

-- Location: LCCOMB_X75_Y59_N28
\decoder|demanchester|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|comb~0_combout\ = (\decoder|demanchester|State.Out1~q\) # ((\decoder|demanchester|State.Out1_valid~q\) # ((\decoder|demanchester|State.Out0~q\) # (\decoder|demanchester|State.Start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|State.Out1~q\,
	datab => \decoder|demanchester|State.Out1_valid~q\,
	datac => \decoder|demanchester|State.Out0~q\,
	datad => \decoder|demanchester|State.Start~q\,
	combout => \decoder|demanchester|comb~0_combout\);

-- Location: LCCOMB_X75_Y59_N22
\decoder|demanchester|Signal_Demanchester\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|demanchester|Signal_Demanchester~combout\ = (\decoder|demanchester|comb~0_combout\ & ((\decoder|demanchester|comb~1_combout\) # (\decoder|demanchester|Signal_Demanchester~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|comb~1_combout\,
	datab => \decoder|demanchester|comb~0_combout\,
	datac => \decoder|demanchester|Signal_Demanchester~combout\,
	combout => \decoder|demanchester|Signal_Demanchester~combout\);

-- Location: LCCOMB_X74_Y62_N0
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

-- Location: FF_X74_Y62_N1
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

-- Location: LCCOMB_X74_Y62_N2
\decoder|tick_gen|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~2_combout\ = (\decoder|tick_gen|stbit\(1) & ((\decoder|tick_gen|Add2~1\) # (GND))) # (!\decoder|tick_gen|stbit\(1) & (!\decoder|tick_gen|Add2~1\))
-- \decoder|tick_gen|Add2~3\ = CARRY((\decoder|tick_gen|stbit\(1)) # (!\decoder|tick_gen|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(1),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~1\,
	combout => \decoder|tick_gen|Add2~2_combout\,
	cout => \decoder|tick_gen|Add2~3\);

-- Location: LCCOMB_X75_Y62_N26
\decoder|tick_gen|stbit~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~7_combout\ = (\decoder|tick_gen|Equal2~10_combout\) # (!\decoder|tick_gen|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Equal2~10_combout\,
	datad => \decoder|tick_gen|Add2~2_combout\,
	combout => \decoder|tick_gen|stbit~7_combout\);

-- Location: FF_X75_Y62_N27
\decoder|tick_gen|stbit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stbit~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(1));

-- Location: LCCOMB_X74_Y62_N4
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

-- Location: FF_X74_Y62_N5
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

-- Location: LCCOMB_X74_Y62_N6
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

-- Location: LCCOMB_X74_Y62_N8
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

-- Location: FF_X74_Y62_N9
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

-- Location: LCCOMB_X74_Y62_N10
\decoder|tick_gen|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~10_combout\ = (\decoder|tick_gen|stbit\(5) & ((\decoder|tick_gen|Add2~9\) # (GND))) # (!\decoder|tick_gen|stbit\(5) & (!\decoder|tick_gen|Add2~9\))
-- \decoder|tick_gen|Add2~11\ = CARRY((\decoder|tick_gen|stbit\(5)) # (!\decoder|tick_gen|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(5),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~9\,
	combout => \decoder|tick_gen|Add2~10_combout\,
	cout => \decoder|tick_gen|Add2~11\);

-- Location: LCCOMB_X74_Y62_N14
\decoder|tick_gen|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~14_combout\ = (\decoder|tick_gen|stbit\(7) & ((\decoder|tick_gen|Add2~13\) # (GND))) # (!\decoder|tick_gen|stbit\(7) & (!\decoder|tick_gen|Add2~13\))
-- \decoder|tick_gen|Add2~15\ = CARRY((\decoder|tick_gen|stbit\(7)) # (!\decoder|tick_gen|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(7),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~13\,
	combout => \decoder|tick_gen|Add2~14_combout\,
	cout => \decoder|tick_gen|Add2~15\);

-- Location: LCCOMB_X74_Y62_N18
\decoder|tick_gen|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~18_combout\ = (\decoder|tick_gen|stbit\(9) & (!\decoder|tick_gen|Add2~17\)) # (!\decoder|tick_gen|stbit\(9) & ((\decoder|tick_gen|Add2~17\) # (GND)))
-- \decoder|tick_gen|Add2~19\ = CARRY((!\decoder|tick_gen|Add2~17\) # (!\decoder|tick_gen|stbit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(9),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~17\,
	combout => \decoder|tick_gen|Add2~18_combout\,
	cout => \decoder|tick_gen|Add2~19\);

-- Location: FF_X74_Y62_N19
\decoder|tick_gen|stbit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(9));

-- Location: LCCOMB_X74_Y62_N20
\decoder|tick_gen|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~20_combout\ = (\decoder|tick_gen|stbit\(10) & (!\decoder|tick_gen|Add2~19\ & VCC)) # (!\decoder|tick_gen|stbit\(10) & (\decoder|tick_gen|Add2~19\ $ (GND)))
-- \decoder|tick_gen|Add2~21\ = CARRY((!\decoder|tick_gen|stbit\(10) & !\decoder|tick_gen|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(10),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~19\,
	combout => \decoder|tick_gen|Add2~20_combout\,
	cout => \decoder|tick_gen|Add2~21\);

-- Location: LCCOMB_X75_Y62_N20
\decoder|tick_gen|stbit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~3_combout\ = (\decoder|tick_gen|Equal2~10_combout\) # (!\decoder|tick_gen|Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Equal2~10_combout\,
	datad => \decoder|tick_gen|Add2~20_combout\,
	combout => \decoder|tick_gen|stbit~3_combout\);

-- Location: FF_X75_Y62_N21
\decoder|tick_gen|stbit[10]\ : dffeas
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
	q => \decoder|tick_gen|stbit\(10));

-- Location: LCCOMB_X75_Y62_N6
\decoder|tick_gen|stbit~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~4_combout\ = (\decoder|tick_gen|Equal2~10_combout\) # (!\decoder|tick_gen|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Add2~16_combout\,
	datac => \decoder|tick_gen|Equal2~10_combout\,
	combout => \decoder|tick_gen|stbit~4_combout\);

-- Location: FF_X75_Y62_N7
\decoder|tick_gen|stbit[8]\ : dffeas
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
	q => \decoder|tick_gen|stbit\(8));

-- Location: LCCOMB_X75_Y62_N24
\decoder|tick_gen|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~6_combout\ = (!\decoder|tick_gen|stbit\(11) & (!\decoder|tick_gen|stbit\(9) & (!\decoder|tick_gen|stbit\(10) & !\decoder|tick_gen|stbit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(11),
	datab => \decoder|tick_gen|stbit\(9),
	datac => \decoder|tick_gen|stbit\(10),
	datad => \decoder|tick_gen|stbit\(8),
	combout => \decoder|tick_gen|Equal2~6_combout\);

-- Location: LCCOMB_X74_Y62_N22
\decoder|tick_gen|Add2~22\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X75_Y62_N22
\decoder|tick_gen|stbit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~2_combout\ = (\decoder|tick_gen|Equal2~10_combout\) # (!\decoder|tick_gen|Add2~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Equal2~10_combout\,
	datad => \decoder|tick_gen|Add2~22_combout\,
	combout => \decoder|tick_gen|stbit~2_combout\);

-- Location: FF_X75_Y62_N23
\decoder|tick_gen|stbit[11]\ : dffeas
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
	q => \decoder|tick_gen|stbit\(11));

-- Location: LCCOMB_X74_Y62_N24
\decoder|tick_gen|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~24_combout\ = (\decoder|tick_gen|stbit\(12) & (\decoder|tick_gen|Add2~23\ $ (GND))) # (!\decoder|tick_gen|stbit\(12) & (!\decoder|tick_gen|Add2~23\ & VCC))
-- \decoder|tick_gen|Add2~25\ = CARRY((\decoder|tick_gen|stbit\(12) & !\decoder|tick_gen|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(12),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~23\,
	combout => \decoder|tick_gen|Add2~24_combout\,
	cout => \decoder|tick_gen|Add2~25\);

-- Location: FF_X74_Y62_N25
\decoder|tick_gen|stbit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(12));

-- Location: LCCOMB_X74_Y62_N26
\decoder|tick_gen|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~26_combout\ = (\decoder|tick_gen|stbit\(13) & ((\decoder|tick_gen|Add2~25\) # (GND))) # (!\decoder|tick_gen|stbit\(13) & (!\decoder|tick_gen|Add2~25\))
-- \decoder|tick_gen|Add2~27\ = CARRY((\decoder|tick_gen|stbit\(13)) # (!\decoder|tick_gen|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(13),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~25\,
	combout => \decoder|tick_gen|Add2~26_combout\,
	cout => \decoder|tick_gen|Add2~27\);

-- Location: LCCOMB_X75_Y62_N10
\decoder|tick_gen|stbit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~1_combout\ = (\decoder|tick_gen|Equal2~10_combout\) # (!\decoder|tick_gen|Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal2~10_combout\,
	datac => \decoder|tick_gen|Add2~26_combout\,
	combout => \decoder|tick_gen|stbit~1_combout\);

-- Location: FF_X75_Y62_N11
\decoder|tick_gen|stbit[13]\ : dffeas
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
	q => \decoder|tick_gen|stbit\(13));

-- Location: LCCOMB_X74_Y62_N28
\decoder|tick_gen|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~28_combout\ = (\decoder|tick_gen|stbit\(14) & (\decoder|tick_gen|Add2~27\ $ (GND))) # (!\decoder|tick_gen|stbit\(14) & (!\decoder|tick_gen|Add2~27\ & VCC))
-- \decoder|tick_gen|Add2~29\ = CARRY((\decoder|tick_gen|stbit\(14) & !\decoder|tick_gen|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(14),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~27\,
	combout => \decoder|tick_gen|Add2~28_combout\,
	cout => \decoder|tick_gen|Add2~29\);

-- Location: FF_X74_Y62_N29
\decoder|tick_gen|stbit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(14));

-- Location: LCCOMB_X74_Y62_N30
\decoder|tick_gen|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~30_combout\ = (\decoder|tick_gen|stbit\(15) & ((\decoder|tick_gen|Add2~29\) # (GND))) # (!\decoder|tick_gen|stbit\(15) & (!\decoder|tick_gen|Add2~29\))
-- \decoder|tick_gen|Add2~31\ = CARRY((\decoder|tick_gen|stbit\(15)) # (!\decoder|tick_gen|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(15),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~29\,
	combout => \decoder|tick_gen|Add2~30_combout\,
	cout => \decoder|tick_gen|Add2~31\);

-- Location: LCCOMB_X75_Y62_N8
\decoder|tick_gen|stbit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~0_combout\ = (\decoder|tick_gen|Equal2~10_combout\) # (!\decoder|tick_gen|Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Equal2~10_combout\,
	datad => \decoder|tick_gen|Add2~30_combout\,
	combout => \decoder|tick_gen|stbit~0_combout\);

-- Location: FF_X75_Y62_N9
\decoder|tick_gen|stbit[15]\ : dffeas
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
	q => \decoder|tick_gen|stbit\(15));

-- Location: LCCOMB_X74_Y61_N0
\decoder|tick_gen|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Add2~32_combout\ = (\decoder|tick_gen|stbit\(16) & (\decoder|tick_gen|Add2~31\ $ (GND))) # (!\decoder|tick_gen|stbit\(16) & (!\decoder|tick_gen|Add2~31\ & VCC))
-- \decoder|tick_gen|Add2~33\ = CARRY((\decoder|tick_gen|stbit\(16) & !\decoder|tick_gen|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(16),
	datad => VCC,
	cin => \decoder|tick_gen|Add2~31\,
	combout => \decoder|tick_gen|Add2~32_combout\,
	cout => \decoder|tick_gen|Add2~33\);

-- Location: FF_X74_Y61_N1
\decoder|tick_gen|stbit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|Add2~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(16));

-- Location: LCCOMB_X74_Y61_N2
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

-- Location: FF_X74_Y61_N3
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

-- Location: LCCOMB_X74_Y61_N4
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

-- Location: FF_X74_Y61_N5
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

-- Location: LCCOMB_X74_Y61_N6
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

-- Location: LCCOMB_X74_Y61_N8
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

-- Location: FF_X74_Y61_N9
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

-- Location: LCCOMB_X74_Y61_N10
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

-- Location: LCCOMB_X74_Y61_N12
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

-- Location: FF_X74_Y61_N13
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

-- Location: FF_X74_Y61_N11
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

-- Location: LCCOMB_X75_Y61_N4
\decoder|tick_gen|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~2_combout\ = (!\decoder|tick_gen|stbit\(23) & (!\decoder|tick_gen|stbit\(20) & (!\decoder|tick_gen|stbit\(22) & !\decoder|tick_gen|stbit\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(23),
	datab => \decoder|tick_gen|stbit\(20),
	datac => \decoder|tick_gen|stbit\(22),
	datad => \decoder|tick_gen|stbit\(21),
	combout => \decoder|tick_gen|Equal2~2_combout\);

-- Location: LCCOMB_X74_Y61_N14
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

-- Location: FF_X74_Y61_N15
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

-- Location: LCCOMB_X74_Y61_N16
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

-- Location: FF_X74_Y61_N17
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

-- Location: LCCOMB_X74_Y61_N18
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

-- Location: FF_X74_Y61_N19
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

-- Location: LCCOMB_X74_Y61_N20
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

-- Location: FF_X74_Y61_N21
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

-- Location: FF_X74_Y61_N23
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

-- Location: LCCOMB_X75_Y61_N22
\decoder|tick_gen|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~1_combout\ = (!\decoder|tick_gen|stbit\(24) & (!\decoder|tick_gen|stbit\(26) & (!\decoder|tick_gen|stbit\(25) & !\decoder|tick_gen|stbit\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(24),
	datab => \decoder|tick_gen|stbit\(26),
	datac => \decoder|tick_gen|stbit\(25),
	datad => \decoder|tick_gen|stbit\(27),
	combout => \decoder|tick_gen|Equal2~1_combout\);

-- Location: FF_X74_Y61_N7
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

-- Location: LCCOMB_X75_Y61_N2
\decoder|tick_gen|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~3_combout\ = (!\decoder|tick_gen|stbit\(16) & (!\decoder|tick_gen|stbit\(19) & (!\decoder|tick_gen|stbit\(18) & !\decoder|tick_gen|stbit\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(16),
	datab => \decoder|tick_gen|stbit\(19),
	datac => \decoder|tick_gen|stbit\(18),
	datad => \decoder|tick_gen|stbit\(17),
	combout => \decoder|tick_gen|Equal2~3_combout\);

-- Location: LCCOMB_X75_Y61_N0
\decoder|tick_gen|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~4_combout\ = (\decoder|tick_gen|Equal2~0_combout\ & (\decoder|tick_gen|Equal2~2_combout\ & (\decoder|tick_gen|Equal2~1_combout\ & \decoder|tick_gen|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal2~0_combout\,
	datab => \decoder|tick_gen|Equal2~2_combout\,
	datac => \decoder|tick_gen|Equal2~1_combout\,
	datad => \decoder|tick_gen|Equal2~3_combout\,
	combout => \decoder|tick_gen|Equal2~4_combout\);

-- Location: LCCOMB_X75_Y62_N2
\decoder|tick_gen|stbit~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~5_combout\ = (\decoder|tick_gen|Equal2~10_combout\) # (!\decoder|tick_gen|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Equal2~10_combout\,
	datad => \decoder|tick_gen|Add2~14_combout\,
	combout => \decoder|tick_gen|stbit~5_combout\);

-- Location: FF_X75_Y62_N3
\decoder|tick_gen|stbit[7]\ : dffeas
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
	q => \decoder|tick_gen|stbit\(7));

-- Location: LCCOMB_X75_Y62_N4
\decoder|tick_gen|stbit~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|stbit~6_combout\ = (\decoder|tick_gen|Equal2~10_combout\) # (!\decoder|tick_gen|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|tick_gen|Equal2~10_combout\,
	datad => \decoder|tick_gen|Add2~10_combout\,
	combout => \decoder|tick_gen|stbit~6_combout\);

-- Location: FF_X75_Y62_N5
\decoder|tick_gen|stbit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|tick_gen|stbit~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|stbit\(5));

-- Location: LCCOMB_X75_Y62_N18
\decoder|tick_gen|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~7_combout\ = (!\decoder|tick_gen|stbit\(6) & (!\decoder|tick_gen|stbit\(7) & (!\decoder|tick_gen|stbit\(5) & !\decoder|tick_gen|stbit\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(6),
	datab => \decoder|tick_gen|stbit\(7),
	datac => \decoder|tick_gen|stbit\(5),
	datad => \decoder|tick_gen|stbit\(4),
	combout => \decoder|tick_gen|Equal2~7_combout\);

-- Location: FF_X74_Y62_N7
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

-- Location: LCCOMB_X75_Y62_N28
\decoder|tick_gen|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~8_combout\ = (!\decoder|tick_gen|stbit\(3) & !\decoder|tick_gen|stbit\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|tick_gen|stbit\(3),
	datac => \decoder|tick_gen|stbit\(2),
	combout => \decoder|tick_gen|Equal2~8_combout\);

-- Location: LCCOMB_X75_Y62_N0
\decoder|tick_gen|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~9_combout\ = (!\decoder|tick_gen|stbit\(1) & (\decoder|tick_gen|Equal2~7_combout\ & (!\decoder|tick_gen|stbit\(0) & \decoder|tick_gen|Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|stbit\(1),
	datab => \decoder|tick_gen|Equal2~7_combout\,
	datac => \decoder|tick_gen|stbit\(0),
	datad => \decoder|tick_gen|Equal2~8_combout\,
	combout => \decoder|tick_gen|Equal2~9_combout\);

-- Location: LCCOMB_X75_Y62_N30
\decoder|tick_gen|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|tick_gen|Equal2~10_combout\ = (\decoder|tick_gen|Equal2~5_combout\ & (\decoder|tick_gen|Equal2~6_combout\ & (\decoder|tick_gen|Equal2~4_combout\ & \decoder|tick_gen|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|tick_gen|Equal2~5_combout\,
	datab => \decoder|tick_gen|Equal2~6_combout\,
	datac => \decoder|tick_gen|Equal2~4_combout\,
	datad => \decoder|tick_gen|Equal2~9_combout\,
	combout => \decoder|tick_gen|Equal2~10_combout\);

-- Location: FF_X75_Y57_N1
\decoder|tick_gen|tick_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \decoder|tick_gen|Equal2~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|tick_gen|tick_bit~q\);

-- Location: LCCOMB_X75_Y57_N14
\decoder|decoder|EF~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|EF~18_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|tick_gen|tick_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|tick_gen|tick_bit~q\,
	combout => \decoder|decoder|EF~18_combout\);

-- Location: LCCOMB_X73_Y57_N2
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

-- Location: LCCOMB_X73_Y57_N4
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

-- Location: LCCOMB_X73_Y57_N6
\decoder|decoder|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~9_combout\ = (\decoder|decoder|i\(3) & (\decoder|decoder|Add0~7\ & VCC)) # (!\decoder|decoder|i\(3) & (!\decoder|decoder|Add0~7\))
-- \decoder|decoder|Add0~10\ = CARRY((!\decoder|decoder|i\(3) & !\decoder|decoder|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(3),
	datad => VCC,
	cin => \decoder|decoder|Add0~7\,
	combout => \decoder|decoder|Add0~9_combout\,
	cout => \decoder|decoder|Add0~10\);

-- Location: LCCOMB_X73_Y57_N8
\decoder|decoder|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~12_combout\ = (\decoder|decoder|i\(4) & ((GND) # (!\decoder|decoder|Add0~10\))) # (!\decoder|decoder|i\(4) & (\decoder|decoder|Add0~10\ $ (GND)))
-- \decoder|decoder|Add0~13\ = CARRY((\decoder|decoder|i\(4)) # (!\decoder|decoder|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(4),
	datad => VCC,
	cin => \decoder|decoder|Add0~10\,
	combout => \decoder|decoder|Add0~12_combout\,
	cout => \decoder|decoder|Add0~13\);

-- Location: LCCOMB_X72_Y57_N18
\decoder|decoder|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~20_combout\ = (\decoder|decoder|Add0~12_combout\ & \decoder|decoder|EF.State_Extract~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|Add0~12_combout\,
	datad => \decoder|decoder|EF.State_Extract~q\,
	combout => \decoder|decoder|Add0~20_combout\);

-- Location: LCCOMB_X73_Y57_N30
\decoder|decoder|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~45_combout\ = (\decoder|decoder|i\(15) & (\decoder|decoder|Add0~43\ & VCC)) # (!\decoder|decoder|i\(15) & (!\decoder|decoder|Add0~43\))
-- \decoder|decoder|Add0~46\ = CARRY((!\decoder|decoder|i\(15) & !\decoder|decoder|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(15),
	datad => VCC,
	cin => \decoder|decoder|Add0~43\,
	combout => \decoder|decoder|Add0~45_combout\,
	cout => \decoder|decoder|Add0~46\);

-- Location: LCCOMB_X73_Y56_N0
\decoder|decoder|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~48_combout\ = (\decoder|decoder|i\(16) & ((GND) # (!\decoder|decoder|Add0~46\))) # (!\decoder|decoder|i\(16) & (\decoder|decoder|Add0~46\ $ (GND)))
-- \decoder|decoder|Add0~49\ = CARRY((\decoder|decoder|i\(16)) # (!\decoder|decoder|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(16),
	datad => VCC,
	cin => \decoder|decoder|Add0~46\,
	combout => \decoder|decoder|Add0~48_combout\,
	cout => \decoder|decoder|Add0~49\);

-- Location: LCCOMB_X73_Y56_N2
\decoder|decoder|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~51_combout\ = (\decoder|decoder|i\(17) & (\decoder|decoder|Add0~49\ & VCC)) # (!\decoder|decoder|i\(17) & (!\decoder|decoder|Add0~49\))
-- \decoder|decoder|Add0~52\ = CARRY((!\decoder|decoder|i\(17) & !\decoder|decoder|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(17),
	datad => VCC,
	cin => \decoder|decoder|Add0~49\,
	combout => \decoder|decoder|Add0~51_combout\,
	cout => \decoder|decoder|Add0~52\);

-- Location: LCCOMB_X74_Y56_N22
\decoder|decoder|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~53_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~51_combout\,
	combout => \decoder|decoder|Add0~53_combout\);

-- Location: FF_X74_Y56_N23
\decoder|decoder|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~53_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(17));

-- Location: LCCOMB_X73_Y56_N4
\decoder|decoder|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~54_combout\ = (\decoder|decoder|i\(18) & ((GND) # (!\decoder|decoder|Add0~52\))) # (!\decoder|decoder|i\(18) & (\decoder|decoder|Add0~52\ $ (GND)))
-- \decoder|decoder|Add0~55\ = CARRY((\decoder|decoder|i\(18)) # (!\decoder|decoder|Add0~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(18),
	datad => VCC,
	cin => \decoder|decoder|Add0~52\,
	combout => \decoder|decoder|Add0~54_combout\,
	cout => \decoder|decoder|Add0~55\);

-- Location: LCCOMB_X74_Y56_N16
\decoder|decoder|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~56_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datac => \decoder|decoder|Add0~54_combout\,
	combout => \decoder|decoder|Add0~56_combout\);

-- Location: FF_X74_Y56_N17
\decoder|decoder|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~56_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(18));

-- Location: LCCOMB_X73_Y56_N6
\decoder|decoder|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~57_combout\ = (\decoder|decoder|i\(19) & (\decoder|decoder|Add0~55\ & VCC)) # (!\decoder|decoder|i\(19) & (!\decoder|decoder|Add0~55\))
-- \decoder|decoder|Add0~58\ = CARRY((!\decoder|decoder|i\(19) & !\decoder|decoder|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(19),
	datad => VCC,
	cin => \decoder|decoder|Add0~55\,
	combout => \decoder|decoder|Add0~57_combout\,
	cout => \decoder|decoder|Add0~58\);

-- Location: LCCOMB_X73_Y56_N8
\decoder|decoder|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~60_combout\ = (\decoder|decoder|i\(20) & ((GND) # (!\decoder|decoder|Add0~58\))) # (!\decoder|decoder|i\(20) & (\decoder|decoder|Add0~58\ $ (GND)))
-- \decoder|decoder|Add0~61\ = CARRY((\decoder|decoder|i\(20)) # (!\decoder|decoder|Add0~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(20),
	datad => VCC,
	cin => \decoder|decoder|Add0~58\,
	combout => \decoder|decoder|Add0~60_combout\,
	cout => \decoder|decoder|Add0~61\);

-- Location: LCCOMB_X73_Y56_N10
\decoder|decoder|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~63_combout\ = (\decoder|decoder|i\(21) & (\decoder|decoder|Add0~61\ & VCC)) # (!\decoder|decoder|i\(21) & (!\decoder|decoder|Add0~61\))
-- \decoder|decoder|Add0~64\ = CARRY((!\decoder|decoder|i\(21) & !\decoder|decoder|Add0~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(21),
	datad => VCC,
	cin => \decoder|decoder|Add0~61\,
	combout => \decoder|decoder|Add0~63_combout\,
	cout => \decoder|decoder|Add0~64\);

-- Location: LCCOMB_X74_Y56_N24
\decoder|decoder|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~65_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~63_combout\,
	combout => \decoder|decoder|Add0~65_combout\);

-- Location: FF_X74_Y56_N25
\decoder|decoder|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~65_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(21));

-- Location: LCCOMB_X73_Y56_N14
\decoder|decoder|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~69_combout\ = (\decoder|decoder|i\(23) & (\decoder|decoder|Add0~67\ & VCC)) # (!\decoder|decoder|i\(23) & (!\decoder|decoder|Add0~67\))
-- \decoder|decoder|Add0~70\ = CARRY((!\decoder|decoder|i\(23) & !\decoder|decoder|Add0~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(23),
	datad => VCC,
	cin => \decoder|decoder|Add0~67\,
	combout => \decoder|decoder|Add0~69_combout\,
	cout => \decoder|decoder|Add0~70\);

-- Location: LCCOMB_X74_Y56_N8
\decoder|decoder|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~71_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~69_combout\,
	combout => \decoder|decoder|Add0~71_combout\);

-- Location: FF_X74_Y56_N9
\decoder|decoder|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~71_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(23));

-- Location: LCCOMB_X74_Y56_N2
\decoder|decoder|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~62_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~60_combout\,
	combout => \decoder|decoder|Add0~62_combout\);

-- Location: FF_X74_Y56_N3
\decoder|decoder|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~62_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(20));

-- Location: LCCOMB_X74_Y56_N18
\decoder|decoder|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~6_combout\ = (((!\decoder|decoder|i\(20)) # (!\decoder|decoder|i\(23))) # (!\decoder|decoder|i\(21))) # (!\decoder|decoder|i\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(22),
	datab => \decoder|decoder|i\(21),
	datac => \decoder|decoder|i\(23),
	datad => \decoder|decoder|i\(20),
	combout => \decoder|decoder|Equal0~6_combout\);

-- Location: LCCOMB_X73_Y56_N18
\decoder|decoder|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~75_combout\ = (\decoder|decoder|i\(25) & (\decoder|decoder|Add0~73\ & VCC)) # (!\decoder|decoder|i\(25) & (!\decoder|decoder|Add0~73\))
-- \decoder|decoder|Add0~76\ = CARRY((!\decoder|decoder|i\(25) & !\decoder|decoder|Add0~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(25),
	datad => VCC,
	cin => \decoder|decoder|Add0~73\,
	combout => \decoder|decoder|Add0~75_combout\,
	cout => \decoder|decoder|Add0~76\);

-- Location: LCCOMB_X72_Y56_N18
\decoder|decoder|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~77_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~75_combout\,
	combout => \decoder|decoder|Add0~77_combout\);

-- Location: FF_X72_Y56_N19
\decoder|decoder|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~77_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(25));

-- Location: LCCOMB_X73_Y56_N26
\decoder|decoder|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~86_combout\ = (\decoder|decoder|i\(29) & (\decoder|decoder|Add0~85\ & VCC)) # (!\decoder|decoder|i\(29) & (!\decoder|decoder|Add0~85\))
-- \decoder|decoder|Add0~87\ = CARRY((!\decoder|decoder|i\(29) & !\decoder|decoder|Add0~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(29),
	datad => VCC,
	cin => \decoder|decoder|Add0~85\,
	combout => \decoder|decoder|Add0~86_combout\,
	cout => \decoder|decoder|Add0~87\);

-- Location: LCCOMB_X73_Y56_N28
\decoder|decoder|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~88_combout\ = (\decoder|decoder|i\(30) & ((GND) # (!\decoder|decoder|Add0~87\))) # (!\decoder|decoder|i\(30) & (\decoder|decoder|Add0~87\ $ (GND)))
-- \decoder|decoder|Add0~89\ = CARRY((\decoder|decoder|i\(30)) # (!\decoder|decoder|Add0~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(30),
	datad => VCC,
	cin => \decoder|decoder|Add0~87\,
	combout => \decoder|decoder|Add0~88_combout\,
	cout => \decoder|decoder|Add0~89\);

-- Location: LCCOMB_X74_Y56_N10
\decoder|decoder|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~95_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~88_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~88_combout\,
	combout => \decoder|decoder|Add0~95_combout\);

-- Location: FF_X74_Y56_N11
\decoder|decoder|i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~95_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(30));

-- Location: LCCOMB_X73_Y56_N30
\decoder|decoder|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~90_combout\ = \decoder|decoder|Add0~89\ $ (\decoder|decoder|i\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \decoder|decoder|i\(31),
	cin => \decoder|decoder|Add0~89\,
	combout => \decoder|decoder|Add0~90_combout\);

-- Location: LCCOMB_X74_Y56_N28
\decoder|decoder|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~92_combout\ = (!\decoder|decoder|Add0~90_combout\) # (!\decoder|decoder|EF.State_Extract~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~90_combout\,
	combout => \decoder|decoder|Add0~92_combout\);

-- Location: FF_X74_Y56_N29
\decoder|decoder|i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~92_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(31));

-- Location: LCCOMB_X74_Y56_N4
\decoder|decoder|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~94_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datac => \decoder|decoder|Add0~86_combout\,
	combout => \decoder|decoder|Add0~94_combout\);

-- Location: FF_X74_Y56_N5
\decoder|decoder|i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~94_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(29));

-- Location: LCCOMB_X74_Y56_N12
\decoder|decoder|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~8_combout\ = ((\decoder|decoder|i\(31)) # ((!\decoder|decoder|i\(30)) # (!\decoder|decoder|i\(29)))) # (!\decoder|decoder|i\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(28),
	datab => \decoder|decoder|i\(31),
	datac => \decoder|decoder|i\(29),
	datad => \decoder|decoder|i\(30),
	combout => \decoder|decoder|Equal0~8_combout\);

-- Location: LCCOMB_X74_Y56_N20
\decoder|decoder|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~50_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datac => \decoder|decoder|Add0~48_combout\,
	combout => \decoder|decoder|Add0~50_combout\);

-- Location: FF_X74_Y56_N21
\decoder|decoder|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~50_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(16));

-- Location: LCCOMB_X74_Y56_N30
\decoder|decoder|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~59_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datac => \decoder|decoder|Add0~57_combout\,
	combout => \decoder|decoder|Add0~59_combout\);

-- Location: FF_X74_Y56_N31
\decoder|decoder|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~59_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(19));

-- Location: LCCOMB_X74_Y56_N0
\decoder|decoder|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~5_combout\ = (((!\decoder|decoder|i\(18)) # (!\decoder|decoder|i\(19))) # (!\decoder|decoder|i\(16))) # (!\decoder|decoder|i\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(17),
	datab => \decoder|decoder|i\(16),
	datac => \decoder|decoder|i\(19),
	datad => \decoder|decoder|i\(18),
	combout => \decoder|decoder|Equal0~5_combout\);

-- Location: LCCOMB_X75_Y57_N20
\decoder|decoder|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~9_combout\ = (\decoder|decoder|Equal0~7_combout\) # ((\decoder|decoder|Equal0~6_combout\) # ((\decoder|decoder|Equal0~8_combout\) # (\decoder|decoder|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Equal0~7_combout\,
	datab => \decoder|decoder|Equal0~6_combout\,
	datac => \decoder|decoder|Equal0~8_combout\,
	datad => \decoder|decoder|Equal0~5_combout\,
	combout => \decoder|decoder|Equal0~9_combout\);

-- Location: LCCOMB_X75_Y57_N28
\decoder|decoder|EF~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|EF~19_combout\ = (\decoder|decoder|EF~18_combout\ & (((!\decoder|decoder|Equal0~4_combout\ & !\decoder|decoder|Equal0~9_combout\)) # (!\decoder|demanchester|Is_Valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|Is_Valid~combout\,
	datab => \decoder|decoder|EF~18_combout\,
	datac => \decoder|decoder|Equal0~4_combout\,
	datad => \decoder|decoder|Equal0~9_combout\,
	combout => \decoder|decoder|EF~19_combout\);

-- Location: LCCOMB_X75_Y57_N6
\decoder|decoder|EF~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|EF~20_combout\ = (\decoder|decoder|EF~16_combout\ & (!\decoder|decoder|EF~19_combout\ & ((!\decoder|decoder|EF.State_Init~q\) # (!\decoder|tick_gen|tick_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF~16_combout\,
	datab => \decoder|tick_gen|tick_bit~q\,
	datac => \decoder|decoder|EF.State_Init~q\,
	datad => \decoder|decoder|EF~19_combout\,
	combout => \decoder|decoder|EF~20_combout\);

-- Location: LCCOMB_X75_Y57_N24
\decoder|decoder|EF~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|EF~23_combout\ = (\decoder|decoder|EF~20_combout\ & ((\decoder|decoder|EF.State_Init~q\) # ((!\decoder|decoder|EF.State_Begin~q\ & \decoder|demanchester|Signal_Demanchester~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Begin~q\,
	datab => \decoder|demanchester|Signal_Demanchester~combout\,
	datac => \decoder|decoder|EF.State_Init~q\,
	datad => \decoder|decoder|EF~20_combout\,
	combout => \decoder|decoder|EF~23_combout\);

-- Location: FF_X75_Y57_N25
\decoder|decoder|EF.State_Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|EF~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|EF.State_Init~q\);

-- Location: LCCOMB_X75_Y57_N26
\decoder|decoder|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector12~1_combout\ = (\decoder|decoder|EF.State_Init~q\ & \decoder|tick_gen|tick_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Init~q\,
	datad => \decoder|tick_gen|tick_bit~q\,
	combout => \decoder|decoder|Selector12~1_combout\);

-- Location: LCCOMB_X75_Y57_N18
\decoder|decoder|i[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|i[6]~0_combout\ = (\decoder|demanchester|Is_Valid~combout\ & (\decoder|tick_gen|tick_bit~q\ & ((\decoder|decoder|Equal0~4_combout\) # (\decoder|decoder|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|Is_Valid~combout\,
	datab => \decoder|tick_gen|tick_bit~q\,
	datac => \decoder|decoder|Equal0~4_combout\,
	datad => \decoder|decoder|Equal0~9_combout\,
	combout => \decoder|decoder|i[6]~0_combout\);

-- Location: LCCOMB_X75_Y57_N16
\decoder|decoder|i[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|i[6]~1_combout\ = (!\rst~input_o\ & ((\decoder|decoder|Selector12~1_combout\) # ((\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|i[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \decoder|decoder|EF.State_Extract~q\,
	datac => \decoder|decoder|Selector12~1_combout\,
	datad => \decoder|decoder|i[6]~0_combout\,
	combout => \decoder|decoder|i[6]~1_combout\);

-- Location: FF_X73_Y57_N17
\decoder|decoder|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \decoder|decoder|Add0~20_combout\,
	sload => VCC,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(4));

-- Location: LCCOMB_X73_Y57_N10
\decoder|decoder|Add0~14\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X72_Y57_N16
\decoder|decoder|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~19_combout\ = (\decoder|decoder|Add0~14_combout\ & \decoder|decoder|EF.State_Extract~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|Add0~14_combout\,
	datad => \decoder|decoder|EF.State_Extract~q\,
	combout => \decoder|decoder|Add0~19_combout\);

-- Location: FF_X73_Y57_N9
\decoder|decoder|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \decoder|decoder|Add0~19_combout\,
	sload => VCC,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(5));

-- Location: LCCOMB_X73_Y57_N12
\decoder|decoder|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~16_combout\ = (\decoder|decoder|i\(6) & ((GND) # (!\decoder|decoder|Add0~15\))) # (!\decoder|decoder|i\(6) & (\decoder|decoder|Add0~15\ $ (GND)))
-- \decoder|decoder|Add0~17\ = CARRY((\decoder|decoder|i\(6)) # (!\decoder|decoder|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(6),
	datad => VCC,
	cin => \decoder|decoder|Add0~15\,
	combout => \decoder|decoder|Add0~16_combout\,
	cout => \decoder|decoder|Add0~17\);

-- Location: LCCOMB_X74_Y57_N30
\decoder|decoder|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~18_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~16_combout\,
	combout => \decoder|decoder|Add0~18_combout\);

-- Location: FF_X73_Y57_N3
\decoder|decoder|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \decoder|decoder|Add0~18_combout\,
	sload => VCC,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(6));

-- Location: LCCOMB_X73_Y57_N14
\decoder|decoder|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~21_combout\ = (\decoder|decoder|i\(7) & (\decoder|decoder|Add0~17\ & VCC)) # (!\decoder|decoder|i\(7) & (!\decoder|decoder|Add0~17\))
-- \decoder|decoder|Add0~22\ = CARRY((!\decoder|decoder|i\(7) & !\decoder|decoder|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(7),
	datad => VCC,
	cin => \decoder|decoder|Add0~17\,
	combout => \decoder|decoder|Add0~21_combout\,
	cout => \decoder|decoder|Add0~22\);

-- Location: LCCOMB_X72_Y57_N20
\decoder|decoder|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~23_combout\ = (\decoder|decoder|Add0~21_combout\ & \decoder|decoder|EF.State_Extract~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|Add0~21_combout\,
	datad => \decoder|decoder|EF.State_Extract~q\,
	combout => \decoder|decoder|Add0~23_combout\);

-- Location: FF_X73_Y57_N25
\decoder|decoder|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \decoder|decoder|Add0~23_combout\,
	sload => VCC,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(7));

-- Location: LCCOMB_X73_Y57_N16
\decoder|decoder|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~24_combout\ = (\decoder|decoder|i\(8) & ((GND) # (!\decoder|decoder|Add0~22\))) # (!\decoder|decoder|i\(8) & (\decoder|decoder|Add0~22\ $ (GND)))
-- \decoder|decoder|Add0~25\ = CARRY((\decoder|decoder|i\(8)) # (!\decoder|decoder|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(8),
	datad => VCC,
	cin => \decoder|decoder|Add0~22\,
	combout => \decoder|decoder|Add0~24_combout\,
	cout => \decoder|decoder|Add0~25\);

-- Location: LCCOMB_X72_Y57_N6
\decoder|decoder|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~26_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~24_combout\,
	combout => \decoder|decoder|Add0~26_combout\);

-- Location: FF_X73_Y57_N5
\decoder|decoder|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \decoder|decoder|Add0~26_combout\,
	sload => VCC,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(8));

-- Location: LCCOMB_X73_Y57_N18
\decoder|decoder|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~27_combout\ = (\decoder|decoder|i\(9) & (\decoder|decoder|Add0~25\ & VCC)) # (!\decoder|decoder|i\(9) & (!\decoder|decoder|Add0~25\))
-- \decoder|decoder|Add0~28\ = CARRY((!\decoder|decoder|i\(9) & !\decoder|decoder|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(9),
	datad => VCC,
	cin => \decoder|decoder|Add0~25\,
	combout => \decoder|decoder|Add0~27_combout\,
	cout => \decoder|decoder|Add0~28\);

-- Location: LCCOMB_X74_Y57_N22
\decoder|decoder|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~29_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~27_combout\,
	combout => \decoder|decoder|Add0~29_combout\);

-- Location: FF_X74_Y57_N23
\decoder|decoder|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~29_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(9));

-- Location: LCCOMB_X73_Y57_N20
\decoder|decoder|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~30_combout\ = (\decoder|decoder|i\(10) & ((GND) # (!\decoder|decoder|Add0~28\))) # (!\decoder|decoder|i\(10) & (\decoder|decoder|Add0~28\ $ (GND)))
-- \decoder|decoder|Add0~31\ = CARRY((\decoder|decoder|i\(10)) # (!\decoder|decoder|Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(10),
	datad => VCC,
	cin => \decoder|decoder|Add0~28\,
	combout => \decoder|decoder|Add0~30_combout\,
	cout => \decoder|decoder|Add0~31\);

-- Location: LCCOMB_X73_Y57_N22
\decoder|decoder|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~33_combout\ = (\decoder|decoder|i\(11) & (\decoder|decoder|Add0~31\ & VCC)) # (!\decoder|decoder|i\(11) & (!\decoder|decoder|Add0~31\))
-- \decoder|decoder|Add0~34\ = CARRY((!\decoder|decoder|i\(11) & !\decoder|decoder|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(11),
	datad => VCC,
	cin => \decoder|decoder|Add0~31\,
	combout => \decoder|decoder|Add0~33_combout\,
	cout => \decoder|decoder|Add0~34\);

-- Location: LCCOMB_X73_Y57_N24
\decoder|decoder|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~36_combout\ = (\decoder|decoder|i\(12) & ((GND) # (!\decoder|decoder|Add0~34\))) # (!\decoder|decoder|i\(12) & (\decoder|decoder|Add0~34\ $ (GND)))
-- \decoder|decoder|Add0~37\ = CARRY((\decoder|decoder|i\(12)) # (!\decoder|decoder|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(12),
	datad => VCC,
	cin => \decoder|decoder|Add0~34\,
	combout => \decoder|decoder|Add0~36_combout\,
	cout => \decoder|decoder|Add0~37\);

-- Location: LCCOMB_X74_Y57_N26
\decoder|decoder|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~38_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~q\,
	datac => \decoder|decoder|Add0~36_combout\,
	combout => \decoder|decoder|Add0~38_combout\);

-- Location: FF_X74_Y57_N27
\decoder|decoder|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~38_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(12));

-- Location: LCCOMB_X73_Y57_N26
\decoder|decoder|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~39_combout\ = (\decoder|decoder|i\(13) & (\decoder|decoder|Add0~37\ & VCC)) # (!\decoder|decoder|i\(13) & (!\decoder|decoder|Add0~37\))
-- \decoder|decoder|Add0~40\ = CARRY((!\decoder|decoder|i\(13) & !\decoder|decoder|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(13),
	datad => VCC,
	cin => \decoder|decoder|Add0~37\,
	combout => \decoder|decoder|Add0~39_combout\,
	cout => \decoder|decoder|Add0~40\);

-- Location: LCCOMB_X74_Y57_N28
\decoder|decoder|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~41_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|EF.State_Extract~q\,
	datac => \decoder|decoder|Add0~39_combout\,
	combout => \decoder|decoder|Add0~41_combout\);

-- Location: FF_X74_Y57_N29
\decoder|decoder|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~41_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(13));

-- Location: LCCOMB_X73_Y57_N28
\decoder|decoder|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~42_combout\ = (\decoder|decoder|i\(14) & ((GND) # (!\decoder|decoder|Add0~40\))) # (!\decoder|decoder|i\(14) & (\decoder|decoder|Add0~40\ $ (GND)))
-- \decoder|decoder|Add0~43\ = CARRY((\decoder|decoder|i\(14)) # (!\decoder|decoder|Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decoder|i\(14),
	datad => VCC,
	cin => \decoder|decoder|Add0~40\,
	combout => \decoder|decoder|Add0~42_combout\,
	cout => \decoder|decoder|Add0~43\);

-- Location: LCCOMB_X74_Y57_N14
\decoder|decoder|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~44_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~42_combout\,
	combout => \decoder|decoder|Add0~44_combout\);

-- Location: FF_X74_Y57_N15
\decoder|decoder|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~44_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(14));

-- Location: LCCOMB_X74_Y57_N24
\decoder|decoder|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~47_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~45_combout\,
	combout => \decoder|decoder|Add0~47_combout\);

-- Location: FF_X74_Y57_N25
\decoder|decoder|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~47_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(15));

-- Location: LCCOMB_X74_Y57_N18
\decoder|decoder|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~3_combout\ = (((!\decoder|decoder|i\(13)) # (!\decoder|decoder|i\(14))) # (!\decoder|decoder|i\(15))) # (!\decoder|decoder|i\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(12),
	datab => \decoder|decoder|i\(15),
	datac => \decoder|decoder|i\(14),
	datad => \decoder|decoder|i\(13),
	combout => \decoder|decoder|Equal0~3_combout\);

-- Location: LCCOMB_X72_Y57_N10
\decoder|decoder|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~11_combout\ = (\decoder|decoder|Add0~9_combout\) # (!\decoder|decoder|EF.State_Extract~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~9_combout\,
	combout => \decoder|decoder|Add0~11_combout\);

-- Location: FF_X73_Y57_N23
\decoder|decoder|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \decoder|decoder|Add0~11_combout\,
	sload => VCC,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(3));

-- Location: LCCOMB_X74_Y57_N6
\decoder|decoder|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~0_combout\ = (((!\decoder|decoder|i\(5)) # (!\decoder|decoder|i\(4))) # (!\decoder|decoder|i\(3))) # (!\decoder|decoder|i\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(6),
	datab => \decoder|decoder|i\(3),
	datac => \decoder|decoder|i\(4),
	datad => \decoder|decoder|i\(5),
	combout => \decoder|decoder|Equal0~0_combout\);

-- Location: LCCOMB_X74_Y57_N20
\decoder|decoder|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~32_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~30_combout\,
	combout => \decoder|decoder|Add0~32_combout\);

-- Location: FF_X74_Y57_N21
\decoder|decoder|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~32_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(10));

-- Location: LCCOMB_X74_Y57_N2
\decoder|decoder|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~35_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~33_combout\,
	combout => \decoder|decoder|Add0~35_combout\);

-- Location: FF_X74_Y57_N3
\decoder|decoder|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Add0~35_combout\,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(11));

-- Location: LCCOMB_X74_Y57_N8
\decoder|decoder|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~2_combout\ = (((!\decoder|decoder|i\(11)) # (!\decoder|decoder|i\(8))) # (!\decoder|decoder|i\(10))) # (!\decoder|decoder|i\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(9),
	datab => \decoder|decoder|i\(10),
	datac => \decoder|decoder|i\(8),
	datad => \decoder|decoder|i\(11),
	combout => \decoder|decoder|Equal0~2_combout\);

-- Location: LCCOMB_X75_Y57_N30
\decoder|decoder|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~4_combout\ = (\decoder|decoder|Equal0~1_combout\) # ((\decoder|decoder|Equal0~3_combout\) # ((\decoder|decoder|Equal0~0_combout\) # (\decoder|decoder|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Equal0~1_combout\,
	datab => \decoder|decoder|Equal0~3_combout\,
	datac => \decoder|decoder|Equal0~0_combout\,
	datad => \decoder|decoder|Equal0~2_combout\,
	combout => \decoder|decoder|Equal0~4_combout\);

-- Location: LCCOMB_X75_Y57_N22
\decoder|decoder|EF~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|EF~27_combout\ = (\decoder|decoder|EF~16_combout\ & (\decoder|decoder|EF~18_combout\ & (!\decoder|decoder|Equal0~4_combout\ & !\decoder|decoder|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF~16_combout\,
	datab => \decoder|decoder|EF~18_combout\,
	datac => \decoder|decoder|Equal0~4_combout\,
	datad => \decoder|decoder|Equal0~9_combout\,
	combout => \decoder|decoder|EF~27_combout\);

-- Location: FF_X75_Y57_N23
\decoder|decoder|EF.State_Send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|EF~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|EF.State_Send~q\);

-- Location: LCCOMB_X75_Y57_N4
\decoder|decoder|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Equal0~10_combout\ = (\decoder|decoder|Equal0~4_combout\) # (\decoder|decoder|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|decoder|Equal0~4_combout\,
	datad => \decoder|decoder|Equal0~9_combout\,
	combout => \decoder|decoder|Equal0~10_combout\);

-- Location: LCCOMB_X75_Y57_N8
\decoder|decoder|EF~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|EF~25_combout\ = (\decoder|decoder|EF~16_combout\ & ((\decoder|decoder|EF~19_combout\ & ((\decoder|decoder|Equal0~10_combout\))) # (!\decoder|decoder|EF~19_combout\ & (\decoder|decoder|EF~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF~24_combout\,
	datab => \decoder|decoder|Equal0~10_combout\,
	datac => \decoder|decoder|EF~16_combout\,
	datad => \decoder|decoder|EF~19_combout\,
	combout => \decoder|decoder|EF~25_combout\);

-- Location: FF_X75_Y57_N9
\decoder|decoder|EF.State_Error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|EF~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|EF.State_Error~q\);

-- Location: LCCOMB_X75_Y57_N0
\decoder|decoder|EF~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|EF~16_combout\ = (!\rst~input_o\ & (!\decoder|decoder|EF.State_Send~q\ & !\decoder|decoder|EF.State_Error~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \decoder|decoder|EF.State_Send~q\,
	datad => \decoder|decoder|EF.State_Error~q\,
	combout => \decoder|decoder|EF~16_combout\);

-- Location: LCCOMB_X74_Y57_N12
\decoder|decoder|EF~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|EF~26_combout\ = (\decoder|decoder|EF~16_combout\ & ((\decoder|demanchester|Signal_Demanchester~combout\) # (\decoder|decoder|EF.State_Begin~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|Signal_Demanchester~combout\,
	datab => \decoder|decoder|EF~16_combout\,
	datac => \decoder|decoder|EF.State_Begin~q\,
	combout => \decoder|decoder|EF~26_combout\);

-- Location: FF_X74_Y57_N13
\decoder|decoder|EF.State_Begin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|EF~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|EF.State_Begin~q\);

-- Location: LCCOMB_X74_Y57_N0
\decoder|decoder|EF~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|EF~21_combout\ = (\decoder|demanchester|Signal_Demanchester~combout\ & !\decoder|decoder|EF.State_Begin~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|demanchester|Signal_Demanchester~combout\,
	datad => \decoder|decoder|EF.State_Begin~q\,
	combout => \decoder|decoder|EF~21_combout\);

-- Location: LCCOMB_X74_Y57_N4
\decoder|decoder|EF~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|EF~22_combout\ = (\decoder|decoder|EF~17_combout\) # ((!\decoder|decoder|EF~21_combout\ & (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|EF~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF~17_combout\,
	datab => \decoder|decoder|EF~21_combout\,
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|EF~20_combout\,
	combout => \decoder|decoder|EF~22_combout\);

-- Location: FF_X74_Y57_N5
\decoder|decoder|EF.State_Extract\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|EF~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|EF.State_Extract~q\);

-- Location: LCCOMB_X72_Y57_N0
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

-- Location: FF_X73_Y57_N1
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
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(0));

-- Location: LCCOMB_X72_Y57_N26
\decoder|decoder|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~5_combout\ = (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|Add0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~3_combout\,
	combout => \decoder|decoder|Add0~5_combout\);

-- Location: FF_X73_Y57_N11
\decoder|decoder|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \decoder|decoder|Add0~5_combout\,
	sload => VCC,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(1));

-- Location: LCCOMB_X72_Y57_N4
\decoder|decoder|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Add0~8_combout\ = (\decoder|decoder|Add0~6_combout\) # (!\decoder|decoder|EF.State_Extract~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|Add0~6_combout\,
	combout => \decoder|decoder|Add0~8_combout\);

-- Location: FF_X73_Y57_N31
\decoder|decoder|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \decoder|decoder|Add0~8_combout\,
	sload => VCC,
	ena => \decoder|decoder|i[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|i\(2));

-- Location: LCCOMB_X74_Y58_N0
\decoder|decoder|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~0_combout\ = (\decoder|decoder|i\(0) & (\decoder|decoder|i\(1) & (\decoder|decoder|i\(2) & !\decoder|decoder|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(0),
	datab => \decoder|decoder|i\(1),
	datac => \decoder|decoder|i\(2),
	datad => \decoder|decoder|i\(3),
	combout => \decoder|decoder|Decoder0~0_combout\);

-- Location: LCCOMB_X74_Y58_N10
\decoder|decoder|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector12~2_combout\ = (\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|i[6]~0_combout\)) # (!\decoder|decoder|Decoder0~0_combout\))) # (!\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|Selector12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datab => \decoder|decoder|Decoder0~0_combout\,
	datac => \decoder|decoder|Selector12~1_combout\,
	datad => \decoder|decoder|i[6]~0_combout\,
	combout => \decoder|decoder|Selector12~2_combout\);

-- Location: LCCOMB_X74_Y58_N28
\decoder|decoder|Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector12~3_combout\ = (\decoder|decoder|Selector12~0_combout\ & ((\decoder|decoder|Decoder0~0_combout\) # ((\decoder|decoder|data\(6) & \decoder|decoder|Selector12~2_combout\)))) # (!\decoder|decoder|Selector12~0_combout\ & 
-- (((\decoder|decoder|data\(6) & \decoder|decoder|Selector12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Selector12~0_combout\,
	datab => \decoder|decoder|Decoder0~0_combout\,
	datac => \decoder|decoder|data\(6),
	datad => \decoder|decoder|Selector12~2_combout\,
	combout => \decoder|decoder|Selector12~3_combout\);

-- Location: FF_X74_Y58_N29
\decoder|decoder|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Selector12~3_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(6));

-- Location: LCCOMB_X74_Y58_N16
\decoder|decoder|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~1_combout\ = (!\decoder|decoder|i\(0) & (\decoder|decoder|i\(1) & (\decoder|decoder|i\(2) & !\decoder|decoder|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(0),
	datab => \decoder|decoder|i\(1),
	datac => \decoder|decoder|i\(2),
	datad => \decoder|decoder|i\(3),
	combout => \decoder|decoder|Decoder0~1_combout\);

-- Location: LCCOMB_X74_Y58_N2
\decoder|decoder|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector11~0_combout\ = (\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|i[6]~0_combout\)) # (!\decoder|decoder|Decoder0~1_combout\))) # (!\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|Selector12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datab => \decoder|decoder|Decoder0~1_combout\,
	datac => \decoder|decoder|Selector12~1_combout\,
	datad => \decoder|decoder|i[6]~0_combout\,
	combout => \decoder|decoder|Selector11~0_combout\);

-- Location: LCCOMB_X74_Y58_N26
\decoder|decoder|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector11~1_combout\ = (\decoder|decoder|Selector12~0_combout\ & ((\decoder|decoder|Decoder0~1_combout\) # ((\decoder|decoder|data\(7) & \decoder|decoder|Selector11~0_combout\)))) # (!\decoder|decoder|Selector12~0_combout\ & 
-- (((\decoder|decoder|data\(7) & \decoder|decoder|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Selector12~0_combout\,
	datab => \decoder|decoder|Decoder0~1_combout\,
	datac => \decoder|decoder|data\(7),
	datad => \decoder|decoder|Selector11~0_combout\,
	combout => \decoder|decoder|Selector11~1_combout\);

-- Location: FF_X74_Y58_N27
\decoder|decoder|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Selector11~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(7));

-- Location: LCCOMB_X74_Y58_N4
\decoder|decoder|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~2_combout\ = (\decoder|decoder|i\(0) & (!\decoder|decoder|i\(1) & (!\decoder|decoder|i\(2) & \decoder|decoder|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(0),
	datab => \decoder|decoder|i\(1),
	datac => \decoder|decoder|i\(2),
	datad => \decoder|decoder|i\(3),
	combout => \decoder|decoder|Decoder0~2_combout\);

-- Location: LCCOMB_X74_Y58_N6
\decoder|decoder|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector10~0_combout\ = (\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|i[6]~0_combout\) # (!\decoder|decoder|Decoder0~2_combout\)))) # (!\decoder|decoder|EF.State_Extract~q\ & (!\decoder|decoder|Selector12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datab => \decoder|decoder|Selector12~1_combout\,
	datac => \decoder|decoder|Decoder0~2_combout\,
	datad => \decoder|decoder|i[6]~0_combout\,
	combout => \decoder|decoder|Selector10~0_combout\);

-- Location: LCCOMB_X74_Y58_N12
\decoder|decoder|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector10~1_combout\ = (\decoder|decoder|Selector12~0_combout\ & ((\decoder|decoder|Decoder0~2_combout\) # ((\decoder|decoder|data\(8) & \decoder|decoder|Selector10~0_combout\)))) # (!\decoder|decoder|Selector12~0_combout\ & 
-- (((\decoder|decoder|data\(8) & \decoder|decoder|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Selector12~0_combout\,
	datab => \decoder|decoder|Decoder0~2_combout\,
	datac => \decoder|decoder|data\(8),
	datad => \decoder|decoder|Selector10~0_combout\,
	combout => \decoder|decoder|Selector10~1_combout\);

-- Location: FF_X74_Y58_N13
\decoder|decoder|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Selector10~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(8));

-- Location: LCCOMB_X74_Y58_N8
\decoder|decoder|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~3_combout\ = (!\decoder|decoder|i\(0) & (!\decoder|decoder|i\(1) & (!\decoder|decoder|i\(2) & \decoder|decoder|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(0),
	datab => \decoder|decoder|i\(1),
	datac => \decoder|decoder|i\(2),
	datad => \decoder|decoder|i\(3),
	combout => \decoder|decoder|Decoder0~3_combout\);

-- Location: LCCOMB_X74_Y58_N18
\decoder|decoder|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector9~0_combout\ = (\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|i[6]~0_combout\) # (!\decoder|decoder|Decoder0~3_combout\)))) # (!\decoder|decoder|EF.State_Extract~q\ & (!\decoder|decoder|Selector12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datab => \decoder|decoder|Selector12~1_combout\,
	datac => \decoder|decoder|Decoder0~3_combout\,
	datad => \decoder|decoder|i[6]~0_combout\,
	combout => \decoder|decoder|Selector9~0_combout\);

-- Location: LCCOMB_X74_Y58_N22
\decoder|decoder|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector9~1_combout\ = (\decoder|decoder|Selector12~0_combout\ & ((\decoder|decoder|Decoder0~3_combout\) # ((\decoder|decoder|data\(9) & \decoder|decoder|Selector9~0_combout\)))) # (!\decoder|decoder|Selector12~0_combout\ & 
-- (((\decoder|decoder|data\(9) & \decoder|decoder|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Selector12~0_combout\,
	datab => \decoder|decoder|Decoder0~3_combout\,
	datac => \decoder|decoder|data\(9),
	datad => \decoder|decoder|Selector9~0_combout\,
	combout => \decoder|decoder|Selector9~1_combout\);

-- Location: FF_X74_Y58_N23
\decoder|decoder|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Selector9~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(9));

-- Location: LCCOMB_X73_Y59_N4
\decoder|decoder|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~4_combout\ = (\decoder|decoder|i\(1) & (\decoder|decoder|i\(3) & (!\decoder|decoder|i\(2) & \decoder|decoder|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(1),
	datab => \decoder|decoder|i\(3),
	datac => \decoder|decoder|i\(2),
	datad => \decoder|decoder|i\(0),
	combout => \decoder|decoder|Decoder0~4_combout\);

-- Location: LCCOMB_X74_Y59_N16
\decoder|decoder|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector8~0_combout\ = (\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|Decoder0~4_combout\)) # (!\decoder|decoder|i[6]~0_combout\))) # (!\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|Selector12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datab => \decoder|decoder|i[6]~0_combout\,
	datac => \decoder|decoder|Decoder0~4_combout\,
	datad => \decoder|decoder|Selector12~1_combout\,
	combout => \decoder|decoder|Selector8~0_combout\);

-- Location: LCCOMB_X74_Y59_N12
\decoder|decoder|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector8~1_combout\ = (\decoder|decoder|Selector12~0_combout\ & ((\decoder|decoder|Decoder0~4_combout\) # ((\decoder|decoder|data\(10) & \decoder|decoder|Selector8~0_combout\)))) # (!\decoder|decoder|Selector12~0_combout\ & 
-- (((\decoder|decoder|data\(10) & \decoder|decoder|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Selector12~0_combout\,
	datab => \decoder|decoder|Decoder0~4_combout\,
	datac => \decoder|decoder|data\(10),
	datad => \decoder|decoder|Selector8~0_combout\,
	combout => \decoder|decoder|Selector8~1_combout\);

-- Location: FF_X74_Y59_N13
\decoder|decoder|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Selector8~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(10));

-- Location: LCCOMB_X74_Y59_N30
\decoder|decoder|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector12~0_combout\ = (\decoder|demanchester|Signal_Demanchester~combout\ & (\decoder|decoder|EF.State_Extract~q\ & \decoder|decoder|i[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|demanchester|Signal_Demanchester~combout\,
	datab => \decoder|decoder|EF.State_Extract~q\,
	datac => \decoder|decoder|i[6]~0_combout\,
	combout => \decoder|decoder|Selector12~0_combout\);

-- Location: LCCOMB_X74_Y59_N6
\decoder|decoder|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector18~0_combout\ = (\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|i[6]~0_combout\)) # (!\decoder|decoder|Decoder0~5_combout\))) # (!\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|Selector12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~5_combout\,
	datab => \decoder|decoder|Selector12~1_combout\,
	datac => \decoder|decoder|i[6]~0_combout\,
	datad => \decoder|decoder|EF.State_Extract~q\,
	combout => \decoder|decoder|Selector18~0_combout\);

-- Location: LCCOMB_X74_Y59_N2
\decoder|decoder|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector18~1_combout\ = (\decoder|decoder|Decoder0~5_combout\ & ((\decoder|decoder|Selector12~0_combout\) # ((\decoder|decoder|data\(0) & \decoder|decoder|Selector18~0_combout\)))) # (!\decoder|decoder|Decoder0~5_combout\ & 
-- (((\decoder|decoder|data\(0) & \decoder|decoder|Selector18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~5_combout\,
	datab => \decoder|decoder|Selector12~0_combout\,
	datac => \decoder|decoder|data\(0),
	datad => \decoder|decoder|Selector18~0_combout\,
	combout => \decoder|decoder|Selector18~1_combout\);

-- Location: FF_X74_Y59_N3
\decoder|decoder|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Selector18~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(0));

-- Location: LCCOMB_X74_Y59_N20
\decoder|decoder|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector17~0_combout\ = (\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|i[6]~0_combout\)) # (!\decoder|decoder|Decoder0~6_combout\))) # (!\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|Selector12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~6_combout\,
	datab => \decoder|decoder|Selector12~1_combout\,
	datac => \decoder|decoder|i[6]~0_combout\,
	datad => \decoder|decoder|EF.State_Extract~q\,
	combout => \decoder|decoder|Selector17~0_combout\);

-- Location: LCCOMB_X74_Y59_N4
\decoder|decoder|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector17~1_combout\ = (\decoder|decoder|Decoder0~6_combout\ & ((\decoder|decoder|Selector12~0_combout\) # ((\decoder|decoder|data\(1) & \decoder|decoder|Selector17~0_combout\)))) # (!\decoder|decoder|Decoder0~6_combout\ & 
-- (((\decoder|decoder|data\(1) & \decoder|decoder|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~6_combout\,
	datab => \decoder|decoder|Selector12~0_combout\,
	datac => \decoder|decoder|data\(1),
	datad => \decoder|decoder|Selector17~0_combout\,
	combout => \decoder|decoder|Selector17~1_combout\);

-- Location: FF_X74_Y59_N5
\decoder|decoder|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Selector17~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(1));

-- Location: LCCOMB_X75_Y59_N18
\decoder|decoder|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector16~0_combout\ = (\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|i[6]~0_combout\)) # (!\decoder|decoder|Decoder0~7_combout\))) # (!\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|Selector12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~7_combout\,
	datab => \decoder|decoder|Selector12~1_combout\,
	datac => \decoder|decoder|EF.State_Extract~q\,
	datad => \decoder|decoder|i[6]~0_combout\,
	combout => \decoder|decoder|Selector16~0_combout\);

-- Location: LCCOMB_X75_Y59_N16
\decoder|decoder|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector16~1_combout\ = (\decoder|decoder|Decoder0~7_combout\ & ((\decoder|decoder|Selector12~0_combout\) # ((\decoder|decoder|Selector16~0_combout\ & \decoder|decoder|data\(2))))) # (!\decoder|decoder|Decoder0~7_combout\ & 
-- (\decoder|decoder|Selector16~0_combout\ & (\decoder|decoder|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~7_combout\,
	datab => \decoder|decoder|Selector16~0_combout\,
	datac => \decoder|decoder|data\(2),
	datad => \decoder|decoder|Selector12~0_combout\,
	combout => \decoder|decoder|Selector16~1_combout\);

-- Location: FF_X75_Y59_N17
\decoder|decoder|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Selector16~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(2));

-- Location: LCCOMB_X73_Y59_N6
\decoder|decoder|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Decoder0~8_combout\ = (\decoder|decoder|i\(1) & (!\decoder|decoder|i\(3) & (!\decoder|decoder|i\(2) & !\decoder|decoder|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|i\(1),
	datab => \decoder|decoder|i\(3),
	datac => \decoder|decoder|i\(2),
	datad => \decoder|decoder|i\(0),
	combout => \decoder|decoder|Decoder0~8_combout\);

-- Location: LCCOMB_X74_Y59_N28
\decoder|decoder|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector15~0_combout\ = (\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|Decoder0~8_combout\)) # (!\decoder|decoder|i[6]~0_combout\))) # (!\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|Selector12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|EF.State_Extract~q\,
	datab => \decoder|decoder|i[6]~0_combout\,
	datac => \decoder|decoder|Decoder0~8_combout\,
	datad => \decoder|decoder|Selector12~1_combout\,
	combout => \decoder|decoder|Selector15~0_combout\);

-- Location: LCCOMB_X74_Y59_N22
\decoder|decoder|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector15~1_combout\ = (\decoder|decoder|Selector12~0_combout\ & ((\decoder|decoder|Decoder0~8_combout\) # ((\decoder|decoder|data\(3) & \decoder|decoder|Selector15~0_combout\)))) # (!\decoder|decoder|Selector12~0_combout\ & 
-- (((\decoder|decoder|data\(3) & \decoder|decoder|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Selector12~0_combout\,
	datab => \decoder|decoder|Decoder0~8_combout\,
	datac => \decoder|decoder|data\(3),
	datad => \decoder|decoder|Selector15~0_combout\,
	combout => \decoder|decoder|Selector15~1_combout\);

-- Location: FF_X74_Y59_N23
\decoder|decoder|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Selector15~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(3));

-- Location: LCCOMB_X74_Y59_N10
\decoder|decoder|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector14~0_combout\ = (\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|i[6]~0_combout\)) # (!\decoder|decoder|Decoder0~9_combout\))) # (!\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|Selector12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~9_combout\,
	datab => \decoder|decoder|Selector12~1_combout\,
	datac => \decoder|decoder|i[6]~0_combout\,
	datad => \decoder|decoder|EF.State_Extract~q\,
	combout => \decoder|decoder|Selector14~0_combout\);

-- Location: LCCOMB_X74_Y59_N0
\decoder|decoder|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector14~1_combout\ = (\decoder|decoder|Decoder0~9_combout\ & ((\decoder|decoder|Selector12~0_combout\) # ((\decoder|decoder|data\(4) & \decoder|decoder|Selector14~0_combout\)))) # (!\decoder|decoder|Decoder0~9_combout\ & 
-- (((\decoder|decoder|data\(4) & \decoder|decoder|Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~9_combout\,
	datab => \decoder|decoder|Selector12~0_combout\,
	datac => \decoder|decoder|data\(4),
	datad => \decoder|decoder|Selector14~0_combout\,
	combout => \decoder|decoder|Selector14~1_combout\);

-- Location: FF_X74_Y59_N1
\decoder|decoder|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Selector14~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(4));

-- Location: LCCOMB_X74_Y59_N24
\decoder|decoder|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector13~0_combout\ = (\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|i[6]~0_combout\)) # (!\decoder|decoder|Decoder0~10_combout\))) # (!\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|Selector12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~10_combout\,
	datab => \decoder|decoder|Selector12~1_combout\,
	datac => \decoder|decoder|i[6]~0_combout\,
	datad => \decoder|decoder|EF.State_Extract~q\,
	combout => \decoder|decoder|Selector13~0_combout\);

-- Location: LCCOMB_X74_Y59_N26
\decoder|decoder|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector13~1_combout\ = (\decoder|decoder|Decoder0~10_combout\ & ((\decoder|decoder|Selector12~0_combout\) # ((\decoder|decoder|data\(5) & \decoder|decoder|Selector13~0_combout\)))) # (!\decoder|decoder|Decoder0~10_combout\ & 
-- (((\decoder|decoder|data\(5) & \decoder|decoder|Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~10_combout\,
	datab => \decoder|decoder|Selector12~0_combout\,
	datac => \decoder|decoder|data\(5),
	datad => \decoder|decoder|Selector13~0_combout\,
	combout => \decoder|decoder|Selector13~1_combout\);

-- Location: FF_X74_Y59_N27
\decoder|decoder|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Selector13~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(5));

-- Location: LCCOMB_X75_Y57_N12
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

-- Location: FF_X75_Y57_N13
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

-- Location: LCCOMB_X74_Y59_N18
\decoder|decoder|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector7~0_combout\ = (\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|i[6]~0_combout\)) # (!\decoder|decoder|Decoder0~11_combout\))) # (!\decoder|decoder|EF.State_Extract~q\ & (((!\decoder|decoder|Selector12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~11_combout\,
	datab => \decoder|decoder|Selector12~1_combout\,
	datac => \decoder|decoder|i[6]~0_combout\,
	datad => \decoder|decoder|EF.State_Extract~q\,
	combout => \decoder|decoder|Selector7~0_combout\);

-- Location: LCCOMB_X74_Y59_N8
\decoder|decoder|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decoder|Selector7~1_combout\ = (\decoder|decoder|Decoder0~11_combout\ & ((\decoder|decoder|Selector12~0_combout\) # ((\decoder|decoder|data\(11) & \decoder|decoder|Selector7~0_combout\)))) # (!\decoder|decoder|Decoder0~11_combout\ & 
-- (((\decoder|decoder|data\(11) & \decoder|decoder|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decoder|Decoder0~11_combout\,
	datab => \decoder|decoder|Selector12~0_combout\,
	datac => \decoder|decoder|data\(11),
	datad => \decoder|decoder|Selector7~0_combout\,
	combout => \decoder|decoder|Selector7~1_combout\);

-- Location: FF_X74_Y59_N9
\decoder|decoder|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \decoder|decoder|Selector7~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder|decoder|data\(11));

-- Location: LCCOMB_X75_Y57_N2
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

-- Location: FF_X75_Y57_N3
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


