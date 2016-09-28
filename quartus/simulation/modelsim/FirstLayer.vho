-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "09/28/2016 17:14:39"

-- 
-- Device: Altera 5SGXEA7N2F45C2 Package FBGA1932
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY IEEE;
LIBRARY STRATIXV;
LIBRARY WORK;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STRATIXV.STRATIXV_COMPONENTS.ALL;
USE WORK.CNN_TYPES.ALL;

ENTITY 	FirstLayer IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	enable : IN std_logic;
	in_data : IN std_logic_vector(7 DOWNTO 0);
	w_11 : IN WORK.CNN_TYPES.pixel_array(0 TO 8);
	w_12 : IN WORK.CNN_TYPES.pixel_array(0 TO 8);
	w_13 : IN WORK.CNN_TYPES.pixel_array(0 TO 8);
	n_11 : IN std_logic_vector(7 DOWNTO 0);
	n_12 : IN std_logic_vector(7 DOWNTO 0);
	n_13 : IN std_logic_vector(7 DOWNTO 0);
	out_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END FirstLayer;

-- Design Ports Information
-- n_11[3]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_11[4]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_11[5]	=>  Location: PIN_G31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_11[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_11[7]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_12[3]	=>  Location: PIN_AL35,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_12[4]	=>  Location: PIN_A29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_12[5]	=>  Location: PIN_K24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_12[6]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_12[7]	=>  Location: PIN_T34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_13[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_13[4]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_13[5]	=>  Location: PIN_BA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_13[6]	=>  Location: PIN_P38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_13[7]	=>  Location: PIN_AW14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[0]	=>  Location: PIN_AR21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[1]	=>  Location: PIN_AR22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[2]	=>  Location: PIN_AY21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[3]	=>  Location: PIN_BA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[4]	=>  Location: PIN_BA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[5]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[6]	=>  Location: PIN_AY22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[7]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[3][0]	=>  Location: PIN_AV26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[3][1]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[3][2]	=>  Location: PIN_AY25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[3][3]	=>  Location: PIN_AU25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[3][4]	=>  Location: PIN_AN27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[3][5]	=>  Location: PIN_AR25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[3][6]	=>  Location: PIN_AU24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[3][7]	=>  Location: PIN_AL27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[2][0]	=>  Location: PIN_BD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[2][1]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[2][2]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[2][3]	=>  Location: PIN_AL28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[2][4]	=>  Location: PIN_AM28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[2][5]	=>  Location: PIN_BC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[2][6]	=>  Location: PIN_AU27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[2][7]	=>  Location: PIN_AP24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[3][0]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[3][1]	=>  Location: PIN_AU23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[3][2]	=>  Location: PIN_BD32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[3][3]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[3][4]	=>  Location: PIN_AL23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[3][5]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[3][6]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[3][7]	=>  Location: PIN_BB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[2][0]	=>  Location: PIN_AL21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[2][1]	=>  Location: PIN_BC32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[2][2]	=>  Location: PIN_AT24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[2][3]	=>  Location: PIN_BC31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[2][4]	=>  Location: PIN_BA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[2][5]	=>  Location: PIN_AT23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[2][6]	=>  Location: PIN_BA29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[2][7]	=>  Location: PIN_BD31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[3][0]	=>  Location: PIN_BD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[3][1]	=>  Location: PIN_BB29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[3][2]	=>  Location: PIN_AW29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[3][3]	=>  Location: PIN_BC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[3][4]	=>  Location: PIN_BB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[3][5]	=>  Location: PIN_AL26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[3][6]	=>  Location: PIN_AM26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[3][7]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[2][0]	=>  Location: PIN_BD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[2][1]	=>  Location: PIN_AW27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[2][2]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[2][3]	=>  Location: PIN_BC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[2][4]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[2][5]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[2][6]	=>  Location: PIN_BA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[2][7]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AY18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[1][0]	=>  Location: PIN_AR23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[1][1]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[1][2]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[1][3]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[1][4]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[1][5]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[1][6]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[1][7]	=>  Location: PIN_AN23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[0][0]	=>  Location: PIN_AJ23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[0][1]	=>  Location: PIN_AM32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[0][2]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[0][3]	=>  Location: PIN_BA31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[0][4]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[0][5]	=>  Location: PIN_AG29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[0][6]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[0][7]	=>  Location: PIN_AW30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[1][0]	=>  Location: PIN_BC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[1][1]	=>  Location: PIN_AK30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[1][2]	=>  Location: PIN_AL24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[1][3]	=>  Location: PIN_BB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[1][4]	=>  Location: PIN_BB32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[1][5]	=>  Location: PIN_AY30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[1][6]	=>  Location: PIN_BD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[1][7]	=>  Location: PIN_AL29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[0][0]	=>  Location: PIN_AP28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[0][1]	=>  Location: PIN_AY31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[0][2]	=>  Location: PIN_AR24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[0][3]	=>  Location: PIN_AV23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[0][4]	=>  Location: PIN_AM23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[0][5]	=>  Location: PIN_AY24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[0][6]	=>  Location: PIN_AW23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[0][7]	=>  Location: PIN_AM29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[1][0]	=>  Location: PIN_AU28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[1][1]	=>  Location: PIN_AY28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[1][2]	=>  Location: PIN_AP27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[1][3]	=>  Location: PIN_AR28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[1][4]	=>  Location: PIN_AN25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[1][5]	=>  Location: PIN_AV29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[1][6]	=>  Location: PIN_AP25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[1][7]	=>  Location: PIN_AL25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[0][0]	=>  Location: PIN_AR26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[0][1]	=>  Location: PIN_AU29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[0][2]	=>  Location: PIN_AV28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[0][3]	=>  Location: PIN_AT27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[0][4]	=>  Location: PIN_AR27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[0][5]	=>  Location: PIN_AW26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[0][6]	=>  Location: PIN_AW24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[0][7]	=>  Location: PIN_AM25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_13[2]	=>  Location: PIN_AV25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_13[1]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_13[0]	=>  Location: PIN_AR36,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_12[2]	=>  Location: PIN_BA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_12[1]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_12[0]	=>  Location: PIN_AU20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_11[2]	=>  Location: PIN_BB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_11[1]	=>  Location: PIN_BA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_11[0]	=>  Location: PIN_AT20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[0]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[1]	=>  Location: PIN_AU26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[2]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[3]	=>  Location: PIN_AT26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[4]	=>  Location: PIN_AJ28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[5]	=>  Location: PIN_AY27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[6]	=>  Location: PIN_BA27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[7]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[8][0]	=>  Location: PIN_AL18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[8][1]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[8][2]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[8][3]	=>  Location: PIN_BB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[8][4]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[8][5]	=>  Location: PIN_AN37,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[8][6]	=>  Location: PIN_AW17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[8][7]	=>  Location: PIN_AJ18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[8][0]	=>  Location: PIN_BB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[8][1]	=>  Location: PIN_BA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[8][2]	=>  Location: PIN_AK33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[8][3]	=>  Location: PIN_AJ33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[8][4]	=>  Location: PIN_AU19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[8][5]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[8][6]	=>  Location: PIN_BC34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[8][7]	=>  Location: PIN_BD35,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[8][0]	=>  Location: PIN_AD32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[8][1]	=>  Location: PIN_BB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[8][2]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[8][3]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[8][4]	=>  Location: PIN_AD33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[8][5]	=>  Location: PIN_BC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[8][6]	=>  Location: PIN_BC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[8][7]	=>  Location: PIN_AG32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[7][0]	=>  Location: PIN_BD34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[7][1]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[7][2]	=>  Location: PIN_AN39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[7][3]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[7][4]	=>  Location: PIN_BA33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[7][5]	=>  Location: PIN_AV19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[7][6]	=>  Location: PIN_AP19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[7][7]	=>  Location: PIN_AP37,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[7][0]	=>  Location: PIN_AT21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[7][1]	=>  Location: PIN_BD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[7][2]	=>  Location: PIN_G29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[7][3]	=>  Location: PIN_AF34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[7][4]	=>  Location: PIN_AW20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[7][5]	=>  Location: PIN_AH33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[7][6]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[7][7]	=>  Location: PIN_AE34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[7][0]	=>  Location: PIN_AE31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[7][1]	=>  Location: PIN_BD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[7][2]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[7][3]	=>  Location: PIN_AT32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[7][4]	=>  Location: PIN_AF31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[7][5]	=>  Location: PIN_AN38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[7][6]	=>  Location: PIN_AE30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[7][7]	=>  Location: PIN_AL30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[6][0]	=>  Location: PIN_AP33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[6][1]	=>  Location: PIN_AR35,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[6][2]	=>  Location: PIN_AN33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[6][3]	=>  Location: PIN_AR19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[6][4]	=>  Location: PIN_AU18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[6][5]	=>  Location: PIN_AN20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[6][6]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[6][7]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[6][0]	=>  Location: PIN_AP21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[6][1]	=>  Location: PIN_AM31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[6][2]	=>  Location: PIN_AL19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[6][3]	=>  Location: PIN_AJ32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[6][4]	=>  Location: PIN_BC39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[6][5]	=>  Location: PIN_AW21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[6][6]	=>  Location: PIN_AP31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[6][7]	=>  Location: PIN_AK32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[6][0]	=>  Location: PIN_AU22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[6][1]	=>  Location: PIN_AM19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[6][2]	=>  Location: PIN_AV20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[6][3]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[6][4]	=>  Location: PIN_AR20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[6][5]	=>  Location: PIN_AT30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[6][6]	=>  Location: PIN_AL31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[6][7]	=>  Location: PIN_AN30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[5][0]	=>  Location: PIN_B28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[5][1]	=>  Location: PIN_AW22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[5][2]	=>  Location: PIN_AL20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[5][3]	=>  Location: PIN_AU21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[5][4]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[5][5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[5][6]	=>  Location: PIN_AU32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[5][7]	=>  Location: PIN_AR30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[5][0]	=>  Location: PIN_AV22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[5][1]	=>  Location: PIN_AN19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[5][2]	=>  Location: PIN_AU36,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[5][3]	=>  Location: PIN_AW19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[5][4]	=>  Location: PIN_AP39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[5][5]	=>  Location: PIN_AU37,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[5][6]	=>  Location: PIN_AG33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[5][7]	=>  Location: PIN_AE33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[5][0]	=>  Location: PIN_AM22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[5][1]	=>  Location: PIN_AT29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[5][2]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[5][3]	=>  Location: PIN_AN22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[5][4]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[5][5]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[5][6]	=>  Location: PIN_AP30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[5][7]	=>  Location: PIN_AU30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[4][0]	=>  Location: PIN_AV32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[4][1]	=>  Location: PIN_AN28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[4][2]	=>  Location: PIN_AW32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[4][3]	=>  Location: PIN_AR29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[4][4]	=>  Location: PIN_AU31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[4][5]	=>  Location: PIN_BC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[4][6]	=>  Location: PIN_AV31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[4][7]	=>  Location: PIN_AJ31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[4][0]	=>  Location: PIN_AT36,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[4][1]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[4][2]	=>  Location: PIN_BB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[4][3]	=>  Location: PIN_BD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[4][4]	=>  Location: PIN_AH34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[4][5]	=>  Location: PIN_AT35,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[4][6]	=>  Location: PIN_T27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[4][7]	=>  Location: PIN_AN31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[4][0]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[4][1]	=>  Location: PIN_AJ30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[4][2]	=>  Location: PIN_AE32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[4][3]	=>  Location: PIN_AF32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[4][4]	=>  Location: PIN_AK20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[4][5]	=>  Location: PIN_AH31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[4][6]	=>  Location: PIN_AM20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[4][7]	=>  Location: PIN_AR37,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FirstLayer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_in_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_w_11 : WORK.CNN_TYPES.pixel_array(0 TO 8);
SIGNAL ww_w_12 : WORK.CNN_TYPES.pixel_array(0 TO 8);
SIGNAL ww_w_13 : WORK.CNN_TYPES.pixel_array(0 TO 8);
SIGNAL ww_n_11 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_n_12 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_n_13 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_CE_13|Add2~10_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_13|Add2~10_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Add2~10_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Add2~10_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Add2~10_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Add2~10_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Add2~10_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Add2~10_CHAININ_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_13|Add2~10_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_12|Add2~10_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_12|Add2~10_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Add2~10_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Add2~10_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Add2~10_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Add2~10_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Add2~10_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Add2~10_CHAININ_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_12|Add2~10_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_11|Add2~10_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_11|Add2~10_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Add2~10_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Add2~10_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Add2~10_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Add2~10_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Add2~10_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Add2~10_CHAININ_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_11|Add2~10_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_13|Add2~332_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_13|Add2~332_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Add2~332_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Add2~332_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Add2~332_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Add2~332_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Add2~332_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Add2~332_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_13|Add2~332_CHAINOUT_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_12|Add2~332_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_12|Add2~332_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Add2~332_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Add2~332_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Add2~332_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Add2~332_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Add2~332_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Add2~332_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_12|Add2~332_CHAINOUT_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_11|Add2~332_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_11|Add2~332_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Add2~332_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Add2~332_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Add2~332_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Add2~332_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Add2~332_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Add2~332_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_11|Add2~332_CHAINOUT_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \inst_CE_13|Mult8~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_13|Mult8~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult8~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult8~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult8~mac_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult8~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult8~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult8~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_12|Mult8~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_12|Mult8~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult8~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult8~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult8~mac_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult8~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult8~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult8~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_11|Mult8~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_11|Mult8~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult8~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult8~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult8~mac_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult8~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult8~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult8~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_13|Mult7~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_13|Mult7~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult7~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult7~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult7~mac_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult7~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult7~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult7~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_12|Mult7~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_12|Mult7~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult7~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult7~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult7~mac_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult7~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult7~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult7~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_11|Mult7~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_11|Mult7~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult7~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult7~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult7~mac_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult7~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult7~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult7~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_13|Mult6~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_13|Mult6~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult6~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult6~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult6~mac_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult6~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult6~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult6~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_12|Mult6~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_12|Mult6~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult6~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult6~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult6~mac_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult6~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult6~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult6~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_11|Mult6~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_11|Mult6~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult6~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult6~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult6~mac_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult6~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult6~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult6~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_13|Mult5~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_13|Mult5~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult5~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult5~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult5~mac_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult5~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult5~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult5~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_12|Mult5~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_12|Mult5~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult5~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult5~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult5~mac_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult5~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult5~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult5~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_11|Mult5~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_11|Mult5~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult5~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult5~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult5~mac_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult5~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult5~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult5~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_13|Mult4~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_13|Mult4~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult4~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult4~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult4~mac_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult4~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult4~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult4~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_12|Mult4~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_12|Mult4~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult4~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult4~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult4~mac_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult4~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult4~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult4~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_11|Mult4~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_11|Mult4~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult4~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult4~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult4~mac_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult4~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult4~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult4~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \inst_CE_13|Add2~28\ : std_logic;
SIGNAL \inst_CE_13|Add2~29\ : std_logic;
SIGNAL \inst_CE_13|Add2~30\ : std_logic;
SIGNAL \inst_CE_13|Add2~31\ : std_logic;
SIGNAL \inst_CE_13|Add2~32\ : std_logic;
SIGNAL \inst_CE_13|Add2~33\ : std_logic;
SIGNAL \inst_CE_13|Add2~34\ : std_logic;
SIGNAL \inst_CE_13|Add2~35\ : std_logic;
SIGNAL \inst_CE_13|Add2~36\ : std_logic;
SIGNAL \inst_CE_13|Add2~37\ : std_logic;
SIGNAL \inst_CE_13|Add2~38\ : std_logic;
SIGNAL \inst_CE_13|Add2~39\ : std_logic;
SIGNAL \inst_CE_13|Add2~40\ : std_logic;
SIGNAL \inst_CE_13|Add2~41\ : std_logic;
SIGNAL \inst_CE_13|Add2~42\ : std_logic;
SIGNAL \inst_CE_13|Add2~43\ : std_logic;
SIGNAL \inst_CE_13|Add2~44\ : std_logic;
SIGNAL \inst_CE_13|Add2~45\ : std_logic;
SIGNAL \inst_CE_13|Add2~46\ : std_logic;
SIGNAL \inst_CE_13|Add2~47\ : std_logic;
SIGNAL \inst_CE_13|Add2~48\ : std_logic;
SIGNAL \inst_CE_13|Add2~49\ : std_logic;
SIGNAL \inst_CE_13|Add2~50\ : std_logic;
SIGNAL \inst_CE_13|Add2~51\ : std_logic;
SIGNAL \inst_CE_13|Add2~52\ : std_logic;
SIGNAL \inst_CE_13|Add2~53\ : std_logic;
SIGNAL \inst_CE_13|Add2~54\ : std_logic;
SIGNAL \inst_CE_13|Add2~55\ : std_logic;
SIGNAL \inst_CE_13|Add2~56\ : std_logic;
SIGNAL \inst_CE_13|Add2~57\ : std_logic;
SIGNAL \inst_CE_13|Add2~58\ : std_logic;
SIGNAL \inst_CE_13|Add2~59\ : std_logic;
SIGNAL \inst_CE_13|Add2~60\ : std_logic;
SIGNAL \inst_CE_13|Add2~61\ : std_logic;
SIGNAL \inst_CE_13|Add2~62\ : std_logic;
SIGNAL \inst_CE_13|Add2~63\ : std_logic;
SIGNAL \inst_CE_13|Add2~64\ : std_logic;
SIGNAL \inst_CE_13|Add2~65\ : std_logic;
SIGNAL \inst_CE_13|Add2~66\ : std_logic;
SIGNAL \inst_CE_13|Add2~67\ : std_logic;
SIGNAL \inst_CE_13|Add2~68\ : std_logic;
SIGNAL \inst_CE_13|Add2~69\ : std_logic;
SIGNAL \inst_CE_13|Add2~70\ : std_logic;
SIGNAL \inst_CE_13|Add2~71\ : std_logic;
SIGNAL \inst_CE_13|Add2~72\ : std_logic;
SIGNAL \inst_CE_13|Add2~73\ : std_logic;
SIGNAL \inst_CE_12|Add2~28\ : std_logic;
SIGNAL \inst_CE_12|Add2~29\ : std_logic;
SIGNAL \inst_CE_12|Add2~30\ : std_logic;
SIGNAL \inst_CE_12|Add2~31\ : std_logic;
SIGNAL \inst_CE_12|Add2~32\ : std_logic;
SIGNAL \inst_CE_12|Add2~33\ : std_logic;
SIGNAL \inst_CE_12|Add2~34\ : std_logic;
SIGNAL \inst_CE_12|Add2~35\ : std_logic;
SIGNAL \inst_CE_12|Add2~36\ : std_logic;
SIGNAL \inst_CE_12|Add2~37\ : std_logic;
SIGNAL \inst_CE_12|Add2~38\ : std_logic;
SIGNAL \inst_CE_12|Add2~39\ : std_logic;
SIGNAL \inst_CE_12|Add2~40\ : std_logic;
SIGNAL \inst_CE_12|Add2~41\ : std_logic;
SIGNAL \inst_CE_12|Add2~42\ : std_logic;
SIGNAL \inst_CE_12|Add2~43\ : std_logic;
SIGNAL \inst_CE_12|Add2~44\ : std_logic;
SIGNAL \inst_CE_12|Add2~45\ : std_logic;
SIGNAL \inst_CE_12|Add2~46\ : std_logic;
SIGNAL \inst_CE_12|Add2~47\ : std_logic;
SIGNAL \inst_CE_12|Add2~48\ : std_logic;
SIGNAL \inst_CE_12|Add2~49\ : std_logic;
SIGNAL \inst_CE_12|Add2~50\ : std_logic;
SIGNAL \inst_CE_12|Add2~51\ : std_logic;
SIGNAL \inst_CE_12|Add2~52\ : std_logic;
SIGNAL \inst_CE_12|Add2~53\ : std_logic;
SIGNAL \inst_CE_12|Add2~54\ : std_logic;
SIGNAL \inst_CE_12|Add2~55\ : std_logic;
SIGNAL \inst_CE_12|Add2~56\ : std_logic;
SIGNAL \inst_CE_12|Add2~57\ : std_logic;
SIGNAL \inst_CE_12|Add2~58\ : std_logic;
SIGNAL \inst_CE_12|Add2~59\ : std_logic;
SIGNAL \inst_CE_12|Add2~60\ : std_logic;
SIGNAL \inst_CE_12|Add2~61\ : std_logic;
SIGNAL \inst_CE_12|Add2~62\ : std_logic;
SIGNAL \inst_CE_12|Add2~63\ : std_logic;
SIGNAL \inst_CE_12|Add2~64\ : std_logic;
SIGNAL \inst_CE_12|Add2~65\ : std_logic;
SIGNAL \inst_CE_12|Add2~66\ : std_logic;
SIGNAL \inst_CE_12|Add2~67\ : std_logic;
SIGNAL \inst_CE_12|Add2~68\ : std_logic;
SIGNAL \inst_CE_12|Add2~69\ : std_logic;
SIGNAL \inst_CE_12|Add2~70\ : std_logic;
SIGNAL \inst_CE_12|Add2~71\ : std_logic;
SIGNAL \inst_CE_12|Add2~72\ : std_logic;
SIGNAL \inst_CE_12|Add2~73\ : std_logic;
SIGNAL \inst_CE_11|Add2~28\ : std_logic;
SIGNAL \inst_CE_11|Add2~29\ : std_logic;
SIGNAL \inst_CE_11|Add2~30\ : std_logic;
SIGNAL \inst_CE_11|Add2~31\ : std_logic;
SIGNAL \inst_CE_11|Add2~32\ : std_logic;
SIGNAL \inst_CE_11|Add2~33\ : std_logic;
SIGNAL \inst_CE_11|Add2~34\ : std_logic;
SIGNAL \inst_CE_11|Add2~35\ : std_logic;
SIGNAL \inst_CE_11|Add2~36\ : std_logic;
SIGNAL \inst_CE_11|Add2~37\ : std_logic;
SIGNAL \inst_CE_11|Add2~38\ : std_logic;
SIGNAL \inst_CE_11|Add2~39\ : std_logic;
SIGNAL \inst_CE_11|Add2~40\ : std_logic;
SIGNAL \inst_CE_11|Add2~41\ : std_logic;
SIGNAL \inst_CE_11|Add2~42\ : std_logic;
SIGNAL \inst_CE_11|Add2~43\ : std_logic;
SIGNAL \inst_CE_11|Add2~44\ : std_logic;
SIGNAL \inst_CE_11|Add2~45\ : std_logic;
SIGNAL \inst_CE_11|Add2~46\ : std_logic;
SIGNAL \inst_CE_11|Add2~47\ : std_logic;
SIGNAL \inst_CE_11|Add2~48\ : std_logic;
SIGNAL \inst_CE_11|Add2~49\ : std_logic;
SIGNAL \inst_CE_11|Add2~50\ : std_logic;
SIGNAL \inst_CE_11|Add2~51\ : std_logic;
SIGNAL \inst_CE_11|Add2~52\ : std_logic;
SIGNAL \inst_CE_11|Add2~53\ : std_logic;
SIGNAL \inst_CE_11|Add2~54\ : std_logic;
SIGNAL \inst_CE_11|Add2~55\ : std_logic;
SIGNAL \inst_CE_11|Add2~56\ : std_logic;
SIGNAL \inst_CE_11|Add2~57\ : std_logic;
SIGNAL \inst_CE_11|Add2~58\ : std_logic;
SIGNAL \inst_CE_11|Add2~59\ : std_logic;
SIGNAL \inst_CE_11|Add2~60\ : std_logic;
SIGNAL \inst_CE_11|Add2~61\ : std_logic;
SIGNAL \inst_CE_11|Add2~62\ : std_logic;
SIGNAL \inst_CE_11|Add2~63\ : std_logic;
SIGNAL \inst_CE_11|Add2~64\ : std_logic;
SIGNAL \inst_CE_11|Add2~65\ : std_logic;
SIGNAL \inst_CE_11|Add2~66\ : std_logic;
SIGNAL \inst_CE_11|Add2~67\ : std_logic;
SIGNAL \inst_CE_11|Add2~68\ : std_logic;
SIGNAL \inst_CE_11|Add2~69\ : std_logic;
SIGNAL \inst_CE_11|Add2~70\ : std_logic;
SIGNAL \inst_CE_11|Add2~71\ : std_logic;
SIGNAL \inst_CE_11|Add2~72\ : std_logic;
SIGNAL \inst_CE_11|Add2~73\ : std_logic;
SIGNAL \inst_CE_13|Add2~332_resulta\ : std_logic;
SIGNAL \inst_CE_13|Add2~333\ : std_logic;
SIGNAL \inst_CE_13|Add2~334\ : std_logic;
SIGNAL \inst_CE_13|Add2~335\ : std_logic;
SIGNAL \inst_CE_13|Add2~336\ : std_logic;
SIGNAL \inst_CE_13|Add2~337\ : std_logic;
SIGNAL \inst_CE_13|Add2~338\ : std_logic;
SIGNAL \inst_CE_13|Add2~339\ : std_logic;
SIGNAL \inst_CE_13|Add2~340\ : std_logic;
SIGNAL \inst_CE_13|Add2~341\ : std_logic;
SIGNAL \inst_CE_13|Add2~342\ : std_logic;
SIGNAL \inst_CE_13|Add2~343\ : std_logic;
SIGNAL \inst_CE_13|Add2~344\ : std_logic;
SIGNAL \inst_CE_13|Add2~345\ : std_logic;
SIGNAL \inst_CE_13|Add2~346\ : std_logic;
SIGNAL \inst_CE_13|Add2~347\ : std_logic;
SIGNAL \inst_CE_13|Add2~348\ : std_logic;
SIGNAL \inst_CE_13|Add2~349\ : std_logic;
SIGNAL \inst_CE_13|Add2~350\ : std_logic;
SIGNAL \inst_CE_13|Add2~351\ : std_logic;
SIGNAL \inst_CE_13|Add2~352\ : std_logic;
SIGNAL \inst_CE_13|Add2~353\ : std_logic;
SIGNAL \inst_CE_13|Add2~354\ : std_logic;
SIGNAL \inst_CE_13|Add2~355\ : std_logic;
SIGNAL \inst_CE_13|Add2~356\ : std_logic;
SIGNAL \inst_CE_13|Add2~357\ : std_logic;
SIGNAL \inst_CE_13|Add2~358\ : std_logic;
SIGNAL \inst_CE_13|Add2~359\ : std_logic;
SIGNAL \inst_CE_13|Add2~360\ : std_logic;
SIGNAL \inst_CE_13|Add2~361\ : std_logic;
SIGNAL \inst_CE_13|Add2~362\ : std_logic;
SIGNAL \inst_CE_13|Add2~363\ : std_logic;
SIGNAL \inst_CE_13|Add2~364\ : std_logic;
SIGNAL \inst_CE_13|Add2~365\ : std_logic;
SIGNAL \inst_CE_13|Add2~366\ : std_logic;
SIGNAL \inst_CE_13|Add2~367\ : std_logic;
SIGNAL \inst_CE_13|Add2~368\ : std_logic;
SIGNAL \inst_CE_13|Add2~369\ : std_logic;
SIGNAL \inst_CE_13|Add2~370\ : std_logic;
SIGNAL \inst_CE_13|Add2~371\ : std_logic;
SIGNAL \inst_CE_13|Add2~372\ : std_logic;
SIGNAL \inst_CE_13|Add2~373\ : std_logic;
SIGNAL \inst_CE_13|Add2~374\ : std_logic;
SIGNAL \inst_CE_13|Add2~375\ : std_logic;
SIGNAL \inst_CE_13|Add2~376\ : std_logic;
SIGNAL \inst_CE_13|Add2~377\ : std_logic;
SIGNAL \inst_CE_13|Add2~378\ : std_logic;
SIGNAL \inst_CE_13|Add2~379\ : std_logic;
SIGNAL \inst_CE_13|Add2~380\ : std_logic;
SIGNAL \inst_CE_13|Add2~381\ : std_logic;
SIGNAL \inst_CE_13|Add2~382\ : std_logic;
SIGNAL \inst_CE_13|Add2~383\ : std_logic;
SIGNAL \inst_CE_13|Add2~384\ : std_logic;
SIGNAL \inst_CE_13|Add2~385\ : std_logic;
SIGNAL \inst_CE_13|Add2~386\ : std_logic;
SIGNAL \inst_CE_13|Add2~387\ : std_logic;
SIGNAL \inst_CE_13|Add2~388\ : std_logic;
SIGNAL \inst_CE_13|Add2~389\ : std_logic;
SIGNAL \inst_CE_13|Add2~390\ : std_logic;
SIGNAL \inst_CE_13|Add2~391\ : std_logic;
SIGNAL \inst_CE_13|Add2~392\ : std_logic;
SIGNAL \inst_CE_13|Add2~393\ : std_logic;
SIGNAL \inst_CE_13|Add2~394\ : std_logic;
SIGNAL \inst_CE_13|Add2~395\ : std_logic;
SIGNAL \inst_CE_12|Add2~332_resulta\ : std_logic;
SIGNAL \inst_CE_12|Add2~333\ : std_logic;
SIGNAL \inst_CE_12|Add2~334\ : std_logic;
SIGNAL \inst_CE_12|Add2~335\ : std_logic;
SIGNAL \inst_CE_12|Add2~336\ : std_logic;
SIGNAL \inst_CE_12|Add2~337\ : std_logic;
SIGNAL \inst_CE_12|Add2~338\ : std_logic;
SIGNAL \inst_CE_12|Add2~339\ : std_logic;
SIGNAL \inst_CE_12|Add2~340\ : std_logic;
SIGNAL \inst_CE_12|Add2~341\ : std_logic;
SIGNAL \inst_CE_12|Add2~342\ : std_logic;
SIGNAL \inst_CE_12|Add2~343\ : std_logic;
SIGNAL \inst_CE_12|Add2~344\ : std_logic;
SIGNAL \inst_CE_12|Add2~345\ : std_logic;
SIGNAL \inst_CE_12|Add2~346\ : std_logic;
SIGNAL \inst_CE_12|Add2~347\ : std_logic;
SIGNAL \inst_CE_12|Add2~348\ : std_logic;
SIGNAL \inst_CE_12|Add2~349\ : std_logic;
SIGNAL \inst_CE_12|Add2~350\ : std_logic;
SIGNAL \inst_CE_12|Add2~351\ : std_logic;
SIGNAL \inst_CE_12|Add2~352\ : std_logic;
SIGNAL \inst_CE_12|Add2~353\ : std_logic;
SIGNAL \inst_CE_12|Add2~354\ : std_logic;
SIGNAL \inst_CE_12|Add2~355\ : std_logic;
SIGNAL \inst_CE_12|Add2~356\ : std_logic;
SIGNAL \inst_CE_12|Add2~357\ : std_logic;
SIGNAL \inst_CE_12|Add2~358\ : std_logic;
SIGNAL \inst_CE_12|Add2~359\ : std_logic;
SIGNAL \inst_CE_12|Add2~360\ : std_logic;
SIGNAL \inst_CE_12|Add2~361\ : std_logic;
SIGNAL \inst_CE_12|Add2~362\ : std_logic;
SIGNAL \inst_CE_12|Add2~363\ : std_logic;
SIGNAL \inst_CE_12|Add2~364\ : std_logic;
SIGNAL \inst_CE_12|Add2~365\ : std_logic;
SIGNAL \inst_CE_12|Add2~366\ : std_logic;
SIGNAL \inst_CE_12|Add2~367\ : std_logic;
SIGNAL \inst_CE_12|Add2~368\ : std_logic;
SIGNAL \inst_CE_12|Add2~369\ : std_logic;
SIGNAL \inst_CE_12|Add2~370\ : std_logic;
SIGNAL \inst_CE_12|Add2~371\ : std_logic;
SIGNAL \inst_CE_12|Add2~372\ : std_logic;
SIGNAL \inst_CE_12|Add2~373\ : std_logic;
SIGNAL \inst_CE_12|Add2~374\ : std_logic;
SIGNAL \inst_CE_12|Add2~375\ : std_logic;
SIGNAL \inst_CE_12|Add2~376\ : std_logic;
SIGNAL \inst_CE_12|Add2~377\ : std_logic;
SIGNAL \inst_CE_12|Add2~378\ : std_logic;
SIGNAL \inst_CE_12|Add2~379\ : std_logic;
SIGNAL \inst_CE_12|Add2~380\ : std_logic;
SIGNAL \inst_CE_12|Add2~381\ : std_logic;
SIGNAL \inst_CE_12|Add2~382\ : std_logic;
SIGNAL \inst_CE_12|Add2~383\ : std_logic;
SIGNAL \inst_CE_12|Add2~384\ : std_logic;
SIGNAL \inst_CE_12|Add2~385\ : std_logic;
SIGNAL \inst_CE_12|Add2~386\ : std_logic;
SIGNAL \inst_CE_12|Add2~387\ : std_logic;
SIGNAL \inst_CE_12|Add2~388\ : std_logic;
SIGNAL \inst_CE_12|Add2~389\ : std_logic;
SIGNAL \inst_CE_12|Add2~390\ : std_logic;
SIGNAL \inst_CE_12|Add2~391\ : std_logic;
SIGNAL \inst_CE_12|Add2~392\ : std_logic;
SIGNAL \inst_CE_12|Add2~393\ : std_logic;
SIGNAL \inst_CE_12|Add2~394\ : std_logic;
SIGNAL \inst_CE_12|Add2~395\ : std_logic;
SIGNAL \inst_CE_11|Add2~332_resulta\ : std_logic;
SIGNAL \inst_CE_11|Add2~333\ : std_logic;
SIGNAL \inst_CE_11|Add2~334\ : std_logic;
SIGNAL \inst_CE_11|Add2~335\ : std_logic;
SIGNAL \inst_CE_11|Add2~336\ : std_logic;
SIGNAL \inst_CE_11|Add2~337\ : std_logic;
SIGNAL \inst_CE_11|Add2~338\ : std_logic;
SIGNAL \inst_CE_11|Add2~339\ : std_logic;
SIGNAL \inst_CE_11|Add2~340\ : std_logic;
SIGNAL \inst_CE_11|Add2~341\ : std_logic;
SIGNAL \inst_CE_11|Add2~342\ : std_logic;
SIGNAL \inst_CE_11|Add2~343\ : std_logic;
SIGNAL \inst_CE_11|Add2~344\ : std_logic;
SIGNAL \inst_CE_11|Add2~345\ : std_logic;
SIGNAL \inst_CE_11|Add2~346\ : std_logic;
SIGNAL \inst_CE_11|Add2~347\ : std_logic;
SIGNAL \inst_CE_11|Add2~348\ : std_logic;
SIGNAL \inst_CE_11|Add2~349\ : std_logic;
SIGNAL \inst_CE_11|Add2~350\ : std_logic;
SIGNAL \inst_CE_11|Add2~351\ : std_logic;
SIGNAL \inst_CE_11|Add2~352\ : std_logic;
SIGNAL \inst_CE_11|Add2~353\ : std_logic;
SIGNAL \inst_CE_11|Add2~354\ : std_logic;
SIGNAL \inst_CE_11|Add2~355\ : std_logic;
SIGNAL \inst_CE_11|Add2~356\ : std_logic;
SIGNAL \inst_CE_11|Add2~357\ : std_logic;
SIGNAL \inst_CE_11|Add2~358\ : std_logic;
SIGNAL \inst_CE_11|Add2~359\ : std_logic;
SIGNAL \inst_CE_11|Add2~360\ : std_logic;
SIGNAL \inst_CE_11|Add2~361\ : std_logic;
SIGNAL \inst_CE_11|Add2~362\ : std_logic;
SIGNAL \inst_CE_11|Add2~363\ : std_logic;
SIGNAL \inst_CE_11|Add2~364\ : std_logic;
SIGNAL \inst_CE_11|Add2~365\ : std_logic;
SIGNAL \inst_CE_11|Add2~366\ : std_logic;
SIGNAL \inst_CE_11|Add2~367\ : std_logic;
SIGNAL \inst_CE_11|Add2~368\ : std_logic;
SIGNAL \inst_CE_11|Add2~369\ : std_logic;
SIGNAL \inst_CE_11|Add2~370\ : std_logic;
SIGNAL \inst_CE_11|Add2~371\ : std_logic;
SIGNAL \inst_CE_11|Add2~372\ : std_logic;
SIGNAL \inst_CE_11|Add2~373\ : std_logic;
SIGNAL \inst_CE_11|Add2~374\ : std_logic;
SIGNAL \inst_CE_11|Add2~375\ : std_logic;
SIGNAL \inst_CE_11|Add2~376\ : std_logic;
SIGNAL \inst_CE_11|Add2~377\ : std_logic;
SIGNAL \inst_CE_11|Add2~378\ : std_logic;
SIGNAL \inst_CE_11|Add2~379\ : std_logic;
SIGNAL \inst_CE_11|Add2~380\ : std_logic;
SIGNAL \inst_CE_11|Add2~381\ : std_logic;
SIGNAL \inst_CE_11|Add2~382\ : std_logic;
SIGNAL \inst_CE_11|Add2~383\ : std_logic;
SIGNAL \inst_CE_11|Add2~384\ : std_logic;
SIGNAL \inst_CE_11|Add2~385\ : std_logic;
SIGNAL \inst_CE_11|Add2~386\ : std_logic;
SIGNAL \inst_CE_11|Add2~387\ : std_logic;
SIGNAL \inst_CE_11|Add2~388\ : std_logic;
SIGNAL \inst_CE_11|Add2~389\ : std_logic;
SIGNAL \inst_CE_11|Add2~390\ : std_logic;
SIGNAL \inst_CE_11|Add2~391\ : std_logic;
SIGNAL \inst_CE_11|Add2~392\ : std_logic;
SIGNAL \inst_CE_11|Add2~393\ : std_logic;
SIGNAL \inst_CE_11|Add2~394\ : std_logic;
SIGNAL \inst_CE_11|Add2~395\ : std_logic;
SIGNAL \inst_CE_13|Mult8~318\ : std_logic;
SIGNAL \inst_CE_13|Mult8~319\ : std_logic;
SIGNAL \inst_CE_13|Mult8~320\ : std_logic;
SIGNAL \inst_CE_13|Mult8~10\ : std_logic;
SIGNAL \inst_CE_13|Mult8~11\ : std_logic;
SIGNAL \inst_CE_13|Mult8~12\ : std_logic;
SIGNAL \inst_CE_13|Mult8~13\ : std_logic;
SIGNAL \inst_CE_13|Mult8~14\ : std_logic;
SIGNAL \inst_CE_13|Mult8~15\ : std_logic;
SIGNAL \inst_CE_13|Mult8~16\ : std_logic;
SIGNAL \inst_CE_13|Mult8~17\ : std_logic;
SIGNAL \inst_CE_13|Mult8~18\ : std_logic;
SIGNAL \inst_CE_13|Mult8~19\ : std_logic;
SIGNAL \inst_CE_13|Mult8~20\ : std_logic;
SIGNAL \inst_CE_13|Mult8~21\ : std_logic;
SIGNAL \inst_CE_13|Mult8~22\ : std_logic;
SIGNAL \inst_CE_13|Mult8~23\ : std_logic;
SIGNAL \inst_CE_13|Mult8~24\ : std_logic;
SIGNAL \inst_CE_13|Mult8~25\ : std_logic;
SIGNAL \inst_CE_13|Mult8~26\ : std_logic;
SIGNAL \inst_CE_13|Mult8~27\ : std_logic;
SIGNAL \inst_CE_13|Mult8~28\ : std_logic;
SIGNAL \inst_CE_13|Mult8~29\ : std_logic;
SIGNAL \inst_CE_13|Mult8~30\ : std_logic;
SIGNAL \inst_CE_13|Mult8~31\ : std_logic;
SIGNAL \inst_CE_13|Mult8~32\ : std_logic;
SIGNAL \inst_CE_13|Mult8~33\ : std_logic;
SIGNAL \inst_CE_13|Mult8~34\ : std_logic;
SIGNAL \inst_CE_13|Mult8~35\ : std_logic;
SIGNAL \inst_CE_13|Mult8~36\ : std_logic;
SIGNAL \inst_CE_13|Mult8~37\ : std_logic;
SIGNAL \inst_CE_13|Mult8~38\ : std_logic;
SIGNAL \inst_CE_13|Mult8~39\ : std_logic;
SIGNAL \inst_CE_13|Mult8~40\ : std_logic;
SIGNAL \inst_CE_13|Mult8~41\ : std_logic;
SIGNAL \inst_CE_13|Mult8~42\ : std_logic;
SIGNAL \inst_CE_13|Mult8~43\ : std_logic;
SIGNAL \inst_CE_13|Mult8~44\ : std_logic;
SIGNAL \inst_CE_13|Mult8~45\ : std_logic;
SIGNAL \inst_CE_13|Mult8~46\ : std_logic;
SIGNAL \inst_CE_13|Mult8~47\ : std_logic;
SIGNAL \inst_CE_13|Mult8~48\ : std_logic;
SIGNAL \inst_CE_13|Mult8~49\ : std_logic;
SIGNAL \inst_CE_13|Mult8~50\ : std_logic;
SIGNAL \inst_CE_13|Mult8~51\ : std_logic;
SIGNAL \inst_CE_13|Mult8~52\ : std_logic;
SIGNAL \inst_CE_13|Mult8~53\ : std_logic;
SIGNAL \inst_CE_13|Mult8~54\ : std_logic;
SIGNAL \inst_CE_13|Mult8~55\ : std_logic;
SIGNAL \inst_CE_12|Mult8~318\ : std_logic;
SIGNAL \inst_CE_12|Mult8~319\ : std_logic;
SIGNAL \inst_CE_12|Mult8~320\ : std_logic;
SIGNAL \inst_CE_12|Mult8~10\ : std_logic;
SIGNAL \inst_CE_12|Mult8~11\ : std_logic;
SIGNAL \inst_CE_12|Mult8~12\ : std_logic;
SIGNAL \inst_CE_12|Mult8~13\ : std_logic;
SIGNAL \inst_CE_12|Mult8~14\ : std_logic;
SIGNAL \inst_CE_12|Mult8~15\ : std_logic;
SIGNAL \inst_CE_12|Mult8~16\ : std_logic;
SIGNAL \inst_CE_12|Mult8~17\ : std_logic;
SIGNAL \inst_CE_12|Mult8~18\ : std_logic;
SIGNAL \inst_CE_12|Mult8~19\ : std_logic;
SIGNAL \inst_CE_12|Mult8~20\ : std_logic;
SIGNAL \inst_CE_12|Mult8~21\ : std_logic;
SIGNAL \inst_CE_12|Mult8~22\ : std_logic;
SIGNAL \inst_CE_12|Mult8~23\ : std_logic;
SIGNAL \inst_CE_12|Mult8~24\ : std_logic;
SIGNAL \inst_CE_12|Mult8~25\ : std_logic;
SIGNAL \inst_CE_12|Mult8~26\ : std_logic;
SIGNAL \inst_CE_12|Mult8~27\ : std_logic;
SIGNAL \inst_CE_12|Mult8~28\ : std_logic;
SIGNAL \inst_CE_12|Mult8~29\ : std_logic;
SIGNAL \inst_CE_12|Mult8~30\ : std_logic;
SIGNAL \inst_CE_12|Mult8~31\ : std_logic;
SIGNAL \inst_CE_12|Mult8~32\ : std_logic;
SIGNAL \inst_CE_12|Mult8~33\ : std_logic;
SIGNAL \inst_CE_12|Mult8~34\ : std_logic;
SIGNAL \inst_CE_12|Mult8~35\ : std_logic;
SIGNAL \inst_CE_12|Mult8~36\ : std_logic;
SIGNAL \inst_CE_12|Mult8~37\ : std_logic;
SIGNAL \inst_CE_12|Mult8~38\ : std_logic;
SIGNAL \inst_CE_12|Mult8~39\ : std_logic;
SIGNAL \inst_CE_12|Mult8~40\ : std_logic;
SIGNAL \inst_CE_12|Mult8~41\ : std_logic;
SIGNAL \inst_CE_12|Mult8~42\ : std_logic;
SIGNAL \inst_CE_12|Mult8~43\ : std_logic;
SIGNAL \inst_CE_12|Mult8~44\ : std_logic;
SIGNAL \inst_CE_12|Mult8~45\ : std_logic;
SIGNAL \inst_CE_12|Mult8~46\ : std_logic;
SIGNAL \inst_CE_12|Mult8~47\ : std_logic;
SIGNAL \inst_CE_12|Mult8~48\ : std_logic;
SIGNAL \inst_CE_12|Mult8~49\ : std_logic;
SIGNAL \inst_CE_12|Mult8~50\ : std_logic;
SIGNAL \inst_CE_12|Mult8~51\ : std_logic;
SIGNAL \inst_CE_12|Mult8~52\ : std_logic;
SIGNAL \inst_CE_12|Mult8~53\ : std_logic;
SIGNAL \inst_CE_12|Mult8~54\ : std_logic;
SIGNAL \inst_CE_12|Mult8~55\ : std_logic;
SIGNAL \inst_CE_11|Mult8~318\ : std_logic;
SIGNAL \inst_CE_11|Mult8~319\ : std_logic;
SIGNAL \inst_CE_11|Mult8~320\ : std_logic;
SIGNAL \inst_CE_11|Mult8~10\ : std_logic;
SIGNAL \inst_CE_11|Mult8~11\ : std_logic;
SIGNAL \inst_CE_11|Mult8~12\ : std_logic;
SIGNAL \inst_CE_11|Mult8~13\ : std_logic;
SIGNAL \inst_CE_11|Mult8~14\ : std_logic;
SIGNAL \inst_CE_11|Mult8~15\ : std_logic;
SIGNAL \inst_CE_11|Mult8~16\ : std_logic;
SIGNAL \inst_CE_11|Mult8~17\ : std_logic;
SIGNAL \inst_CE_11|Mult8~18\ : std_logic;
SIGNAL \inst_CE_11|Mult8~19\ : std_logic;
SIGNAL \inst_CE_11|Mult8~20\ : std_logic;
SIGNAL \inst_CE_11|Mult8~21\ : std_logic;
SIGNAL \inst_CE_11|Mult8~22\ : std_logic;
SIGNAL \inst_CE_11|Mult8~23\ : std_logic;
SIGNAL \inst_CE_11|Mult8~24\ : std_logic;
SIGNAL \inst_CE_11|Mult8~25\ : std_logic;
SIGNAL \inst_CE_11|Mult8~26\ : std_logic;
SIGNAL \inst_CE_11|Mult8~27\ : std_logic;
SIGNAL \inst_CE_11|Mult8~28\ : std_logic;
SIGNAL \inst_CE_11|Mult8~29\ : std_logic;
SIGNAL \inst_CE_11|Mult8~30\ : std_logic;
SIGNAL \inst_CE_11|Mult8~31\ : std_logic;
SIGNAL \inst_CE_11|Mult8~32\ : std_logic;
SIGNAL \inst_CE_11|Mult8~33\ : std_logic;
SIGNAL \inst_CE_11|Mult8~34\ : std_logic;
SIGNAL \inst_CE_11|Mult8~35\ : std_logic;
SIGNAL \inst_CE_11|Mult8~36\ : std_logic;
SIGNAL \inst_CE_11|Mult8~37\ : std_logic;
SIGNAL \inst_CE_11|Mult8~38\ : std_logic;
SIGNAL \inst_CE_11|Mult8~39\ : std_logic;
SIGNAL \inst_CE_11|Mult8~40\ : std_logic;
SIGNAL \inst_CE_11|Mult8~41\ : std_logic;
SIGNAL \inst_CE_11|Mult8~42\ : std_logic;
SIGNAL \inst_CE_11|Mult8~43\ : std_logic;
SIGNAL \inst_CE_11|Mult8~44\ : std_logic;
SIGNAL \inst_CE_11|Mult8~45\ : std_logic;
SIGNAL \inst_CE_11|Mult8~46\ : std_logic;
SIGNAL \inst_CE_11|Mult8~47\ : std_logic;
SIGNAL \inst_CE_11|Mult8~48\ : std_logic;
SIGNAL \inst_CE_11|Mult8~49\ : std_logic;
SIGNAL \inst_CE_11|Mult8~50\ : std_logic;
SIGNAL \inst_CE_11|Mult8~51\ : std_logic;
SIGNAL \inst_CE_11|Mult8~52\ : std_logic;
SIGNAL \inst_CE_11|Mult8~53\ : std_logic;
SIGNAL \inst_CE_11|Mult8~54\ : std_logic;
SIGNAL \inst_CE_11|Mult8~55\ : std_logic;
SIGNAL \inst_CE_13|Mult7~10\ : std_logic;
SIGNAL \inst_CE_13|Mult7~11\ : std_logic;
SIGNAL \inst_CE_13|Mult7~12\ : std_logic;
SIGNAL \inst_CE_13|Mult7~13\ : std_logic;
SIGNAL \inst_CE_13|Mult7~14\ : std_logic;
SIGNAL \inst_CE_13|Mult7~15\ : std_logic;
SIGNAL \inst_CE_13|Mult7~16\ : std_logic;
SIGNAL \inst_CE_13|Mult7~17\ : std_logic;
SIGNAL \inst_CE_13|Mult7~18\ : std_logic;
SIGNAL \inst_CE_13|Mult7~19\ : std_logic;
SIGNAL \inst_CE_13|Mult7~20\ : std_logic;
SIGNAL \inst_CE_13|Mult7~21\ : std_logic;
SIGNAL \inst_CE_13|Mult7~22\ : std_logic;
SIGNAL \inst_CE_13|Mult7~23\ : std_logic;
SIGNAL \inst_CE_13|Mult7~24\ : std_logic;
SIGNAL \inst_CE_13|Mult7~25\ : std_logic;
SIGNAL \inst_CE_13|Mult7~26\ : std_logic;
SIGNAL \inst_CE_13|Mult7~27\ : std_logic;
SIGNAL \inst_CE_13|Mult7~28\ : std_logic;
SIGNAL \inst_CE_13|Mult7~29\ : std_logic;
SIGNAL \inst_CE_13|Mult7~30\ : std_logic;
SIGNAL \inst_CE_13|Mult7~31\ : std_logic;
SIGNAL \inst_CE_13|Mult7~32\ : std_logic;
SIGNAL \inst_CE_13|Mult7~33\ : std_logic;
SIGNAL \inst_CE_13|Mult7~34\ : std_logic;
SIGNAL \inst_CE_13|Mult7~35\ : std_logic;
SIGNAL \inst_CE_13|Mult7~36\ : std_logic;
SIGNAL \inst_CE_13|Mult7~37\ : std_logic;
SIGNAL \inst_CE_13|Mult7~38\ : std_logic;
SIGNAL \inst_CE_13|Mult7~39\ : std_logic;
SIGNAL \inst_CE_13|Mult7~40\ : std_logic;
SIGNAL \inst_CE_13|Mult7~41\ : std_logic;
SIGNAL \inst_CE_13|Mult7~42\ : std_logic;
SIGNAL \inst_CE_13|Mult7~43\ : std_logic;
SIGNAL \inst_CE_13|Mult7~44\ : std_logic;
SIGNAL \inst_CE_13|Mult7~45\ : std_logic;
SIGNAL \inst_CE_13|Mult7~46\ : std_logic;
SIGNAL \inst_CE_13|Mult7~47\ : std_logic;
SIGNAL \inst_CE_13|Mult7~48\ : std_logic;
SIGNAL \inst_CE_13|Mult7~49\ : std_logic;
SIGNAL \inst_CE_13|Mult7~50\ : std_logic;
SIGNAL \inst_CE_13|Mult7~51\ : std_logic;
SIGNAL \inst_CE_13|Mult7~52\ : std_logic;
SIGNAL \inst_CE_13|Mult7~53\ : std_logic;
SIGNAL \inst_CE_13|Mult7~54\ : std_logic;
SIGNAL \inst_CE_13|Mult7~55\ : std_logic;
SIGNAL \inst_CE_12|Mult7~10\ : std_logic;
SIGNAL \inst_CE_12|Mult7~11\ : std_logic;
SIGNAL \inst_CE_12|Mult7~12\ : std_logic;
SIGNAL \inst_CE_12|Mult7~13\ : std_logic;
SIGNAL \inst_CE_12|Mult7~14\ : std_logic;
SIGNAL \inst_CE_12|Mult7~15\ : std_logic;
SIGNAL \inst_CE_12|Mult7~16\ : std_logic;
SIGNAL \inst_CE_12|Mult7~17\ : std_logic;
SIGNAL \inst_CE_12|Mult7~18\ : std_logic;
SIGNAL \inst_CE_12|Mult7~19\ : std_logic;
SIGNAL \inst_CE_12|Mult7~20\ : std_logic;
SIGNAL \inst_CE_12|Mult7~21\ : std_logic;
SIGNAL \inst_CE_12|Mult7~22\ : std_logic;
SIGNAL \inst_CE_12|Mult7~23\ : std_logic;
SIGNAL \inst_CE_12|Mult7~24\ : std_logic;
SIGNAL \inst_CE_12|Mult7~25\ : std_logic;
SIGNAL \inst_CE_12|Mult7~26\ : std_logic;
SIGNAL \inst_CE_12|Mult7~27\ : std_logic;
SIGNAL \inst_CE_12|Mult7~28\ : std_logic;
SIGNAL \inst_CE_12|Mult7~29\ : std_logic;
SIGNAL \inst_CE_12|Mult7~30\ : std_logic;
SIGNAL \inst_CE_12|Mult7~31\ : std_logic;
SIGNAL \inst_CE_12|Mult7~32\ : std_logic;
SIGNAL \inst_CE_12|Mult7~33\ : std_logic;
SIGNAL \inst_CE_12|Mult7~34\ : std_logic;
SIGNAL \inst_CE_12|Mult7~35\ : std_logic;
SIGNAL \inst_CE_12|Mult7~36\ : std_logic;
SIGNAL \inst_CE_12|Mult7~37\ : std_logic;
SIGNAL \inst_CE_12|Mult7~38\ : std_logic;
SIGNAL \inst_CE_12|Mult7~39\ : std_logic;
SIGNAL \inst_CE_12|Mult7~40\ : std_logic;
SIGNAL \inst_CE_12|Mult7~41\ : std_logic;
SIGNAL \inst_CE_12|Mult7~42\ : std_logic;
SIGNAL \inst_CE_12|Mult7~43\ : std_logic;
SIGNAL \inst_CE_12|Mult7~44\ : std_logic;
SIGNAL \inst_CE_12|Mult7~45\ : std_logic;
SIGNAL \inst_CE_12|Mult7~46\ : std_logic;
SIGNAL \inst_CE_12|Mult7~47\ : std_logic;
SIGNAL \inst_CE_12|Mult7~48\ : std_logic;
SIGNAL \inst_CE_12|Mult7~49\ : std_logic;
SIGNAL \inst_CE_12|Mult7~50\ : std_logic;
SIGNAL \inst_CE_12|Mult7~51\ : std_logic;
SIGNAL \inst_CE_12|Mult7~52\ : std_logic;
SIGNAL \inst_CE_12|Mult7~53\ : std_logic;
SIGNAL \inst_CE_12|Mult7~54\ : std_logic;
SIGNAL \inst_CE_12|Mult7~55\ : std_logic;
SIGNAL \inst_CE_11|Mult7~10\ : std_logic;
SIGNAL \inst_CE_11|Mult7~11\ : std_logic;
SIGNAL \inst_CE_11|Mult7~12\ : std_logic;
SIGNAL \inst_CE_11|Mult7~13\ : std_logic;
SIGNAL \inst_CE_11|Mult7~14\ : std_logic;
SIGNAL \inst_CE_11|Mult7~15\ : std_logic;
SIGNAL \inst_CE_11|Mult7~16\ : std_logic;
SIGNAL \inst_CE_11|Mult7~17\ : std_logic;
SIGNAL \inst_CE_11|Mult7~18\ : std_logic;
SIGNAL \inst_CE_11|Mult7~19\ : std_logic;
SIGNAL \inst_CE_11|Mult7~20\ : std_logic;
SIGNAL \inst_CE_11|Mult7~21\ : std_logic;
SIGNAL \inst_CE_11|Mult7~22\ : std_logic;
SIGNAL \inst_CE_11|Mult7~23\ : std_logic;
SIGNAL \inst_CE_11|Mult7~24\ : std_logic;
SIGNAL \inst_CE_11|Mult7~25\ : std_logic;
SIGNAL \inst_CE_11|Mult7~26\ : std_logic;
SIGNAL \inst_CE_11|Mult7~27\ : std_logic;
SIGNAL \inst_CE_11|Mult7~28\ : std_logic;
SIGNAL \inst_CE_11|Mult7~29\ : std_logic;
SIGNAL \inst_CE_11|Mult7~30\ : std_logic;
SIGNAL \inst_CE_11|Mult7~31\ : std_logic;
SIGNAL \inst_CE_11|Mult7~32\ : std_logic;
SIGNAL \inst_CE_11|Mult7~33\ : std_logic;
SIGNAL \inst_CE_11|Mult7~34\ : std_logic;
SIGNAL \inst_CE_11|Mult7~35\ : std_logic;
SIGNAL \inst_CE_11|Mult7~36\ : std_logic;
SIGNAL \inst_CE_11|Mult7~37\ : std_logic;
SIGNAL \inst_CE_11|Mult7~38\ : std_logic;
SIGNAL \inst_CE_11|Mult7~39\ : std_logic;
SIGNAL \inst_CE_11|Mult7~40\ : std_logic;
SIGNAL \inst_CE_11|Mult7~41\ : std_logic;
SIGNAL \inst_CE_11|Mult7~42\ : std_logic;
SIGNAL \inst_CE_11|Mult7~43\ : std_logic;
SIGNAL \inst_CE_11|Mult7~44\ : std_logic;
SIGNAL \inst_CE_11|Mult7~45\ : std_logic;
SIGNAL \inst_CE_11|Mult7~46\ : std_logic;
SIGNAL \inst_CE_11|Mult7~47\ : std_logic;
SIGNAL \inst_CE_11|Mult7~48\ : std_logic;
SIGNAL \inst_CE_11|Mult7~49\ : std_logic;
SIGNAL \inst_CE_11|Mult7~50\ : std_logic;
SIGNAL \inst_CE_11|Mult7~51\ : std_logic;
SIGNAL \inst_CE_11|Mult7~52\ : std_logic;
SIGNAL \inst_CE_11|Mult7~53\ : std_logic;
SIGNAL \inst_CE_11|Mult7~54\ : std_logic;
SIGNAL \inst_CE_11|Mult7~55\ : std_logic;
SIGNAL \inst_CE_13|Mult6~10\ : std_logic;
SIGNAL \inst_CE_13|Mult6~11\ : std_logic;
SIGNAL \inst_CE_13|Mult6~12\ : std_logic;
SIGNAL \inst_CE_13|Mult6~13\ : std_logic;
SIGNAL \inst_CE_13|Mult6~14\ : std_logic;
SIGNAL \inst_CE_13|Mult6~15\ : std_logic;
SIGNAL \inst_CE_13|Mult6~16\ : std_logic;
SIGNAL \inst_CE_13|Mult6~17\ : std_logic;
SIGNAL \inst_CE_13|Mult6~18\ : std_logic;
SIGNAL \inst_CE_13|Mult6~19\ : std_logic;
SIGNAL \inst_CE_13|Mult6~20\ : std_logic;
SIGNAL \inst_CE_13|Mult6~21\ : std_logic;
SIGNAL \inst_CE_13|Mult6~22\ : std_logic;
SIGNAL \inst_CE_13|Mult6~23\ : std_logic;
SIGNAL \inst_CE_13|Mult6~24\ : std_logic;
SIGNAL \inst_CE_13|Mult6~25\ : std_logic;
SIGNAL \inst_CE_13|Mult6~26\ : std_logic;
SIGNAL \inst_CE_13|Mult6~27\ : std_logic;
SIGNAL \inst_CE_13|Mult6~28\ : std_logic;
SIGNAL \inst_CE_13|Mult6~29\ : std_logic;
SIGNAL \inst_CE_13|Mult6~30\ : std_logic;
SIGNAL \inst_CE_13|Mult6~31\ : std_logic;
SIGNAL \inst_CE_13|Mult6~32\ : std_logic;
SIGNAL \inst_CE_13|Mult6~33\ : std_logic;
SIGNAL \inst_CE_13|Mult6~34\ : std_logic;
SIGNAL \inst_CE_13|Mult6~35\ : std_logic;
SIGNAL \inst_CE_13|Mult6~36\ : std_logic;
SIGNAL \inst_CE_13|Mult6~37\ : std_logic;
SIGNAL \inst_CE_13|Mult6~38\ : std_logic;
SIGNAL \inst_CE_13|Mult6~39\ : std_logic;
SIGNAL \inst_CE_13|Mult6~40\ : std_logic;
SIGNAL \inst_CE_13|Mult6~41\ : std_logic;
SIGNAL \inst_CE_13|Mult6~42\ : std_logic;
SIGNAL \inst_CE_13|Mult6~43\ : std_logic;
SIGNAL \inst_CE_13|Mult6~44\ : std_logic;
SIGNAL \inst_CE_13|Mult6~45\ : std_logic;
SIGNAL \inst_CE_13|Mult6~46\ : std_logic;
SIGNAL \inst_CE_13|Mult6~47\ : std_logic;
SIGNAL \inst_CE_13|Mult6~48\ : std_logic;
SIGNAL \inst_CE_13|Mult6~49\ : std_logic;
SIGNAL \inst_CE_13|Mult6~50\ : std_logic;
SIGNAL \inst_CE_13|Mult6~51\ : std_logic;
SIGNAL \inst_CE_13|Mult6~52\ : std_logic;
SIGNAL \inst_CE_13|Mult6~53\ : std_logic;
SIGNAL \inst_CE_13|Mult6~54\ : std_logic;
SIGNAL \inst_CE_13|Mult6~55\ : std_logic;
SIGNAL \inst_CE_12|Mult6~10\ : std_logic;
SIGNAL \inst_CE_12|Mult6~11\ : std_logic;
SIGNAL \inst_CE_12|Mult6~12\ : std_logic;
SIGNAL \inst_CE_12|Mult6~13\ : std_logic;
SIGNAL \inst_CE_12|Mult6~14\ : std_logic;
SIGNAL \inst_CE_12|Mult6~15\ : std_logic;
SIGNAL \inst_CE_12|Mult6~16\ : std_logic;
SIGNAL \inst_CE_12|Mult6~17\ : std_logic;
SIGNAL \inst_CE_12|Mult6~18\ : std_logic;
SIGNAL \inst_CE_12|Mult6~19\ : std_logic;
SIGNAL \inst_CE_12|Mult6~20\ : std_logic;
SIGNAL \inst_CE_12|Mult6~21\ : std_logic;
SIGNAL \inst_CE_12|Mult6~22\ : std_logic;
SIGNAL \inst_CE_12|Mult6~23\ : std_logic;
SIGNAL \inst_CE_12|Mult6~24\ : std_logic;
SIGNAL \inst_CE_12|Mult6~25\ : std_logic;
SIGNAL \inst_CE_12|Mult6~26\ : std_logic;
SIGNAL \inst_CE_12|Mult6~27\ : std_logic;
SIGNAL \inst_CE_12|Mult6~28\ : std_logic;
SIGNAL \inst_CE_12|Mult6~29\ : std_logic;
SIGNAL \inst_CE_12|Mult6~30\ : std_logic;
SIGNAL \inst_CE_12|Mult6~31\ : std_logic;
SIGNAL \inst_CE_12|Mult6~32\ : std_logic;
SIGNAL \inst_CE_12|Mult6~33\ : std_logic;
SIGNAL \inst_CE_12|Mult6~34\ : std_logic;
SIGNAL \inst_CE_12|Mult6~35\ : std_logic;
SIGNAL \inst_CE_12|Mult6~36\ : std_logic;
SIGNAL \inst_CE_12|Mult6~37\ : std_logic;
SIGNAL \inst_CE_12|Mult6~38\ : std_logic;
SIGNAL \inst_CE_12|Mult6~39\ : std_logic;
SIGNAL \inst_CE_12|Mult6~40\ : std_logic;
SIGNAL \inst_CE_12|Mult6~41\ : std_logic;
SIGNAL \inst_CE_12|Mult6~42\ : std_logic;
SIGNAL \inst_CE_12|Mult6~43\ : std_logic;
SIGNAL \inst_CE_12|Mult6~44\ : std_logic;
SIGNAL \inst_CE_12|Mult6~45\ : std_logic;
SIGNAL \inst_CE_12|Mult6~46\ : std_logic;
SIGNAL \inst_CE_12|Mult6~47\ : std_logic;
SIGNAL \inst_CE_12|Mult6~48\ : std_logic;
SIGNAL \inst_CE_12|Mult6~49\ : std_logic;
SIGNAL \inst_CE_12|Mult6~50\ : std_logic;
SIGNAL \inst_CE_12|Mult6~51\ : std_logic;
SIGNAL \inst_CE_12|Mult6~52\ : std_logic;
SIGNAL \inst_CE_12|Mult6~53\ : std_logic;
SIGNAL \inst_CE_12|Mult6~54\ : std_logic;
SIGNAL \inst_CE_12|Mult6~55\ : std_logic;
SIGNAL \inst_CE_11|Mult6~10\ : std_logic;
SIGNAL \inst_CE_11|Mult6~11\ : std_logic;
SIGNAL \inst_CE_11|Mult6~12\ : std_logic;
SIGNAL \inst_CE_11|Mult6~13\ : std_logic;
SIGNAL \inst_CE_11|Mult6~14\ : std_logic;
SIGNAL \inst_CE_11|Mult6~15\ : std_logic;
SIGNAL \inst_CE_11|Mult6~16\ : std_logic;
SIGNAL \inst_CE_11|Mult6~17\ : std_logic;
SIGNAL \inst_CE_11|Mult6~18\ : std_logic;
SIGNAL \inst_CE_11|Mult6~19\ : std_logic;
SIGNAL \inst_CE_11|Mult6~20\ : std_logic;
SIGNAL \inst_CE_11|Mult6~21\ : std_logic;
SIGNAL \inst_CE_11|Mult6~22\ : std_logic;
SIGNAL \inst_CE_11|Mult6~23\ : std_logic;
SIGNAL \inst_CE_11|Mult6~24\ : std_logic;
SIGNAL \inst_CE_11|Mult6~25\ : std_logic;
SIGNAL \inst_CE_11|Mult6~26\ : std_logic;
SIGNAL \inst_CE_11|Mult6~27\ : std_logic;
SIGNAL \inst_CE_11|Mult6~28\ : std_logic;
SIGNAL \inst_CE_11|Mult6~29\ : std_logic;
SIGNAL \inst_CE_11|Mult6~30\ : std_logic;
SIGNAL \inst_CE_11|Mult6~31\ : std_logic;
SIGNAL \inst_CE_11|Mult6~32\ : std_logic;
SIGNAL \inst_CE_11|Mult6~33\ : std_logic;
SIGNAL \inst_CE_11|Mult6~34\ : std_logic;
SIGNAL \inst_CE_11|Mult6~35\ : std_logic;
SIGNAL \inst_CE_11|Mult6~36\ : std_logic;
SIGNAL \inst_CE_11|Mult6~37\ : std_logic;
SIGNAL \inst_CE_11|Mult6~38\ : std_logic;
SIGNAL \inst_CE_11|Mult6~39\ : std_logic;
SIGNAL \inst_CE_11|Mult6~40\ : std_logic;
SIGNAL \inst_CE_11|Mult6~41\ : std_logic;
SIGNAL \inst_CE_11|Mult6~42\ : std_logic;
SIGNAL \inst_CE_11|Mult6~43\ : std_logic;
SIGNAL \inst_CE_11|Mult6~44\ : std_logic;
SIGNAL \inst_CE_11|Mult6~45\ : std_logic;
SIGNAL \inst_CE_11|Mult6~46\ : std_logic;
SIGNAL \inst_CE_11|Mult6~47\ : std_logic;
SIGNAL \inst_CE_11|Mult6~48\ : std_logic;
SIGNAL \inst_CE_11|Mult6~49\ : std_logic;
SIGNAL \inst_CE_11|Mult6~50\ : std_logic;
SIGNAL \inst_CE_11|Mult6~51\ : std_logic;
SIGNAL \inst_CE_11|Mult6~52\ : std_logic;
SIGNAL \inst_CE_11|Mult6~53\ : std_logic;
SIGNAL \inst_CE_11|Mult6~54\ : std_logic;
SIGNAL \inst_CE_11|Mult6~55\ : std_logic;
SIGNAL \inst_CE_13|Mult5~10\ : std_logic;
SIGNAL \inst_CE_13|Mult5~11\ : std_logic;
SIGNAL \inst_CE_13|Mult5~12\ : std_logic;
SIGNAL \inst_CE_13|Mult5~13\ : std_logic;
SIGNAL \inst_CE_13|Mult5~14\ : std_logic;
SIGNAL \inst_CE_13|Mult5~15\ : std_logic;
SIGNAL \inst_CE_13|Mult5~16\ : std_logic;
SIGNAL \inst_CE_13|Mult5~17\ : std_logic;
SIGNAL \inst_CE_13|Mult5~18\ : std_logic;
SIGNAL \inst_CE_13|Mult5~19\ : std_logic;
SIGNAL \inst_CE_13|Mult5~20\ : std_logic;
SIGNAL \inst_CE_13|Mult5~21\ : std_logic;
SIGNAL \inst_CE_13|Mult5~22\ : std_logic;
SIGNAL \inst_CE_13|Mult5~23\ : std_logic;
SIGNAL \inst_CE_13|Mult5~24\ : std_logic;
SIGNAL \inst_CE_13|Mult5~25\ : std_logic;
SIGNAL \inst_CE_13|Mult5~26\ : std_logic;
SIGNAL \inst_CE_13|Mult5~27\ : std_logic;
SIGNAL \inst_CE_13|Mult5~28\ : std_logic;
SIGNAL \inst_CE_13|Mult5~29\ : std_logic;
SIGNAL \inst_CE_13|Mult5~30\ : std_logic;
SIGNAL \inst_CE_13|Mult5~31\ : std_logic;
SIGNAL \inst_CE_13|Mult5~32\ : std_logic;
SIGNAL \inst_CE_13|Mult5~33\ : std_logic;
SIGNAL \inst_CE_13|Mult5~34\ : std_logic;
SIGNAL \inst_CE_13|Mult5~35\ : std_logic;
SIGNAL \inst_CE_13|Mult5~36\ : std_logic;
SIGNAL \inst_CE_13|Mult5~37\ : std_logic;
SIGNAL \inst_CE_13|Mult5~38\ : std_logic;
SIGNAL \inst_CE_13|Mult5~39\ : std_logic;
SIGNAL \inst_CE_13|Mult5~40\ : std_logic;
SIGNAL \inst_CE_13|Mult5~41\ : std_logic;
SIGNAL \inst_CE_13|Mult5~42\ : std_logic;
SIGNAL \inst_CE_13|Mult5~43\ : std_logic;
SIGNAL \inst_CE_13|Mult5~44\ : std_logic;
SIGNAL \inst_CE_13|Mult5~45\ : std_logic;
SIGNAL \inst_CE_13|Mult5~46\ : std_logic;
SIGNAL \inst_CE_13|Mult5~47\ : std_logic;
SIGNAL \inst_CE_13|Mult5~48\ : std_logic;
SIGNAL \inst_CE_13|Mult5~49\ : std_logic;
SIGNAL \inst_CE_13|Mult5~50\ : std_logic;
SIGNAL \inst_CE_13|Mult5~51\ : std_logic;
SIGNAL \inst_CE_13|Mult5~52\ : std_logic;
SIGNAL \inst_CE_13|Mult5~53\ : std_logic;
SIGNAL \inst_CE_13|Mult5~54\ : std_logic;
SIGNAL \inst_CE_13|Mult5~55\ : std_logic;
SIGNAL \inst_CE_12|Mult5~10\ : std_logic;
SIGNAL \inst_CE_12|Mult5~11\ : std_logic;
SIGNAL \inst_CE_12|Mult5~12\ : std_logic;
SIGNAL \inst_CE_12|Mult5~13\ : std_logic;
SIGNAL \inst_CE_12|Mult5~14\ : std_logic;
SIGNAL \inst_CE_12|Mult5~15\ : std_logic;
SIGNAL \inst_CE_12|Mult5~16\ : std_logic;
SIGNAL \inst_CE_12|Mult5~17\ : std_logic;
SIGNAL \inst_CE_12|Mult5~18\ : std_logic;
SIGNAL \inst_CE_12|Mult5~19\ : std_logic;
SIGNAL \inst_CE_12|Mult5~20\ : std_logic;
SIGNAL \inst_CE_12|Mult5~21\ : std_logic;
SIGNAL \inst_CE_12|Mult5~22\ : std_logic;
SIGNAL \inst_CE_12|Mult5~23\ : std_logic;
SIGNAL \inst_CE_12|Mult5~24\ : std_logic;
SIGNAL \inst_CE_12|Mult5~25\ : std_logic;
SIGNAL \inst_CE_12|Mult5~26\ : std_logic;
SIGNAL \inst_CE_12|Mult5~27\ : std_logic;
SIGNAL \inst_CE_12|Mult5~28\ : std_logic;
SIGNAL \inst_CE_12|Mult5~29\ : std_logic;
SIGNAL \inst_CE_12|Mult5~30\ : std_logic;
SIGNAL \inst_CE_12|Mult5~31\ : std_logic;
SIGNAL \inst_CE_12|Mult5~32\ : std_logic;
SIGNAL \inst_CE_12|Mult5~33\ : std_logic;
SIGNAL \inst_CE_12|Mult5~34\ : std_logic;
SIGNAL \inst_CE_12|Mult5~35\ : std_logic;
SIGNAL \inst_CE_12|Mult5~36\ : std_logic;
SIGNAL \inst_CE_12|Mult5~37\ : std_logic;
SIGNAL \inst_CE_12|Mult5~38\ : std_logic;
SIGNAL \inst_CE_12|Mult5~39\ : std_logic;
SIGNAL \inst_CE_12|Mult5~40\ : std_logic;
SIGNAL \inst_CE_12|Mult5~41\ : std_logic;
SIGNAL \inst_CE_12|Mult5~42\ : std_logic;
SIGNAL \inst_CE_12|Mult5~43\ : std_logic;
SIGNAL \inst_CE_12|Mult5~44\ : std_logic;
SIGNAL \inst_CE_12|Mult5~45\ : std_logic;
SIGNAL \inst_CE_12|Mult5~46\ : std_logic;
SIGNAL \inst_CE_12|Mult5~47\ : std_logic;
SIGNAL \inst_CE_12|Mult5~48\ : std_logic;
SIGNAL \inst_CE_12|Mult5~49\ : std_logic;
SIGNAL \inst_CE_12|Mult5~50\ : std_logic;
SIGNAL \inst_CE_12|Mult5~51\ : std_logic;
SIGNAL \inst_CE_12|Mult5~52\ : std_logic;
SIGNAL \inst_CE_12|Mult5~53\ : std_logic;
SIGNAL \inst_CE_12|Mult5~54\ : std_logic;
SIGNAL \inst_CE_12|Mult5~55\ : std_logic;
SIGNAL \inst_CE_11|Mult5~10\ : std_logic;
SIGNAL \inst_CE_11|Mult5~11\ : std_logic;
SIGNAL \inst_CE_11|Mult5~12\ : std_logic;
SIGNAL \inst_CE_11|Mult5~13\ : std_logic;
SIGNAL \inst_CE_11|Mult5~14\ : std_logic;
SIGNAL \inst_CE_11|Mult5~15\ : std_logic;
SIGNAL \inst_CE_11|Mult5~16\ : std_logic;
SIGNAL \inst_CE_11|Mult5~17\ : std_logic;
SIGNAL \inst_CE_11|Mult5~18\ : std_logic;
SIGNAL \inst_CE_11|Mult5~19\ : std_logic;
SIGNAL \inst_CE_11|Mult5~20\ : std_logic;
SIGNAL \inst_CE_11|Mult5~21\ : std_logic;
SIGNAL \inst_CE_11|Mult5~22\ : std_logic;
SIGNAL \inst_CE_11|Mult5~23\ : std_logic;
SIGNAL \inst_CE_11|Mult5~24\ : std_logic;
SIGNAL \inst_CE_11|Mult5~25\ : std_logic;
SIGNAL \inst_CE_11|Mult5~26\ : std_logic;
SIGNAL \inst_CE_11|Mult5~27\ : std_logic;
SIGNAL \inst_CE_11|Mult5~28\ : std_logic;
SIGNAL \inst_CE_11|Mult5~29\ : std_logic;
SIGNAL \inst_CE_11|Mult5~30\ : std_logic;
SIGNAL \inst_CE_11|Mult5~31\ : std_logic;
SIGNAL \inst_CE_11|Mult5~32\ : std_logic;
SIGNAL \inst_CE_11|Mult5~33\ : std_logic;
SIGNAL \inst_CE_11|Mult5~34\ : std_logic;
SIGNAL \inst_CE_11|Mult5~35\ : std_logic;
SIGNAL \inst_CE_11|Mult5~36\ : std_logic;
SIGNAL \inst_CE_11|Mult5~37\ : std_logic;
SIGNAL \inst_CE_11|Mult5~38\ : std_logic;
SIGNAL \inst_CE_11|Mult5~39\ : std_logic;
SIGNAL \inst_CE_11|Mult5~40\ : std_logic;
SIGNAL \inst_CE_11|Mult5~41\ : std_logic;
SIGNAL \inst_CE_11|Mult5~42\ : std_logic;
SIGNAL \inst_CE_11|Mult5~43\ : std_logic;
SIGNAL \inst_CE_11|Mult5~44\ : std_logic;
SIGNAL \inst_CE_11|Mult5~45\ : std_logic;
SIGNAL \inst_CE_11|Mult5~46\ : std_logic;
SIGNAL \inst_CE_11|Mult5~47\ : std_logic;
SIGNAL \inst_CE_11|Mult5~48\ : std_logic;
SIGNAL \inst_CE_11|Mult5~49\ : std_logic;
SIGNAL \inst_CE_11|Mult5~50\ : std_logic;
SIGNAL \inst_CE_11|Mult5~51\ : std_logic;
SIGNAL \inst_CE_11|Mult5~52\ : std_logic;
SIGNAL \inst_CE_11|Mult5~53\ : std_logic;
SIGNAL \inst_CE_11|Mult5~54\ : std_logic;
SIGNAL \inst_CE_11|Mult5~55\ : std_logic;
SIGNAL \inst_CE_13|Mult4~10\ : std_logic;
SIGNAL \inst_CE_13|Mult4~11\ : std_logic;
SIGNAL \inst_CE_13|Mult4~12\ : std_logic;
SIGNAL \inst_CE_13|Mult4~13\ : std_logic;
SIGNAL \inst_CE_13|Mult4~14\ : std_logic;
SIGNAL \inst_CE_13|Mult4~15\ : std_logic;
SIGNAL \inst_CE_13|Mult4~16\ : std_logic;
SIGNAL \inst_CE_13|Mult4~17\ : std_logic;
SIGNAL \inst_CE_13|Mult4~18\ : std_logic;
SIGNAL \inst_CE_13|Mult4~19\ : std_logic;
SIGNAL \inst_CE_13|Mult4~20\ : std_logic;
SIGNAL \inst_CE_13|Mult4~21\ : std_logic;
SIGNAL \inst_CE_13|Mult4~22\ : std_logic;
SIGNAL \inst_CE_13|Mult4~23\ : std_logic;
SIGNAL \inst_CE_13|Mult4~24\ : std_logic;
SIGNAL \inst_CE_13|Mult4~25\ : std_logic;
SIGNAL \inst_CE_13|Mult4~26\ : std_logic;
SIGNAL \inst_CE_13|Mult4~27\ : std_logic;
SIGNAL \inst_CE_13|Mult4~28\ : std_logic;
SIGNAL \inst_CE_13|Mult4~29\ : std_logic;
SIGNAL \inst_CE_13|Mult4~30\ : std_logic;
SIGNAL \inst_CE_13|Mult4~31\ : std_logic;
SIGNAL \inst_CE_13|Mult4~32\ : std_logic;
SIGNAL \inst_CE_13|Mult4~33\ : std_logic;
SIGNAL \inst_CE_13|Mult4~34\ : std_logic;
SIGNAL \inst_CE_13|Mult4~35\ : std_logic;
SIGNAL \inst_CE_13|Mult4~36\ : std_logic;
SIGNAL \inst_CE_13|Mult4~37\ : std_logic;
SIGNAL \inst_CE_13|Mult4~38\ : std_logic;
SIGNAL \inst_CE_13|Mult4~39\ : std_logic;
SIGNAL \inst_CE_13|Mult4~40\ : std_logic;
SIGNAL \inst_CE_13|Mult4~41\ : std_logic;
SIGNAL \inst_CE_13|Mult4~42\ : std_logic;
SIGNAL \inst_CE_13|Mult4~43\ : std_logic;
SIGNAL \inst_CE_13|Mult4~44\ : std_logic;
SIGNAL \inst_CE_13|Mult4~45\ : std_logic;
SIGNAL \inst_CE_13|Mult4~46\ : std_logic;
SIGNAL \inst_CE_13|Mult4~47\ : std_logic;
SIGNAL \inst_CE_13|Mult4~48\ : std_logic;
SIGNAL \inst_CE_13|Mult4~49\ : std_logic;
SIGNAL \inst_CE_13|Mult4~50\ : std_logic;
SIGNAL \inst_CE_13|Mult4~51\ : std_logic;
SIGNAL \inst_CE_13|Mult4~52\ : std_logic;
SIGNAL \inst_CE_13|Mult4~53\ : std_logic;
SIGNAL \inst_CE_13|Mult4~54\ : std_logic;
SIGNAL \inst_CE_13|Mult4~55\ : std_logic;
SIGNAL \inst_CE_12|Mult4~10\ : std_logic;
SIGNAL \inst_CE_12|Mult4~11\ : std_logic;
SIGNAL \inst_CE_12|Mult4~12\ : std_logic;
SIGNAL \inst_CE_12|Mult4~13\ : std_logic;
SIGNAL \inst_CE_12|Mult4~14\ : std_logic;
SIGNAL \inst_CE_12|Mult4~15\ : std_logic;
SIGNAL \inst_CE_12|Mult4~16\ : std_logic;
SIGNAL \inst_CE_12|Mult4~17\ : std_logic;
SIGNAL \inst_CE_12|Mult4~18\ : std_logic;
SIGNAL \inst_CE_12|Mult4~19\ : std_logic;
SIGNAL \inst_CE_12|Mult4~20\ : std_logic;
SIGNAL \inst_CE_12|Mult4~21\ : std_logic;
SIGNAL \inst_CE_12|Mult4~22\ : std_logic;
SIGNAL \inst_CE_12|Mult4~23\ : std_logic;
SIGNAL \inst_CE_12|Mult4~24\ : std_logic;
SIGNAL \inst_CE_12|Mult4~25\ : std_logic;
SIGNAL \inst_CE_12|Mult4~26\ : std_logic;
SIGNAL \inst_CE_12|Mult4~27\ : std_logic;
SIGNAL \inst_CE_12|Mult4~28\ : std_logic;
SIGNAL \inst_CE_12|Mult4~29\ : std_logic;
SIGNAL \inst_CE_12|Mult4~30\ : std_logic;
SIGNAL \inst_CE_12|Mult4~31\ : std_logic;
SIGNAL \inst_CE_12|Mult4~32\ : std_logic;
SIGNAL \inst_CE_12|Mult4~33\ : std_logic;
SIGNAL \inst_CE_12|Mult4~34\ : std_logic;
SIGNAL \inst_CE_12|Mult4~35\ : std_logic;
SIGNAL \inst_CE_12|Mult4~36\ : std_logic;
SIGNAL \inst_CE_12|Mult4~37\ : std_logic;
SIGNAL \inst_CE_12|Mult4~38\ : std_logic;
SIGNAL \inst_CE_12|Mult4~39\ : std_logic;
SIGNAL \inst_CE_12|Mult4~40\ : std_logic;
SIGNAL \inst_CE_12|Mult4~41\ : std_logic;
SIGNAL \inst_CE_12|Mult4~42\ : std_logic;
SIGNAL \inst_CE_12|Mult4~43\ : std_logic;
SIGNAL \inst_CE_12|Mult4~44\ : std_logic;
SIGNAL \inst_CE_12|Mult4~45\ : std_logic;
SIGNAL \inst_CE_12|Mult4~46\ : std_logic;
SIGNAL \inst_CE_12|Mult4~47\ : std_logic;
SIGNAL \inst_CE_12|Mult4~48\ : std_logic;
SIGNAL \inst_CE_12|Mult4~49\ : std_logic;
SIGNAL \inst_CE_12|Mult4~50\ : std_logic;
SIGNAL \inst_CE_12|Mult4~51\ : std_logic;
SIGNAL \inst_CE_12|Mult4~52\ : std_logic;
SIGNAL \inst_CE_12|Mult4~53\ : std_logic;
SIGNAL \inst_CE_12|Mult4~54\ : std_logic;
SIGNAL \inst_CE_12|Mult4~55\ : std_logic;
SIGNAL \inst_CE_11|Mult4~10\ : std_logic;
SIGNAL \inst_CE_11|Mult4~11\ : std_logic;
SIGNAL \inst_CE_11|Mult4~12\ : std_logic;
SIGNAL \inst_CE_11|Mult4~13\ : std_logic;
SIGNAL \inst_CE_11|Mult4~14\ : std_logic;
SIGNAL \inst_CE_11|Mult4~15\ : std_logic;
SIGNAL \inst_CE_11|Mult4~16\ : std_logic;
SIGNAL \inst_CE_11|Mult4~17\ : std_logic;
SIGNAL \inst_CE_11|Mult4~18\ : std_logic;
SIGNAL \inst_CE_11|Mult4~19\ : std_logic;
SIGNAL \inst_CE_11|Mult4~20\ : std_logic;
SIGNAL \inst_CE_11|Mult4~21\ : std_logic;
SIGNAL \inst_CE_11|Mult4~22\ : std_logic;
SIGNAL \inst_CE_11|Mult4~23\ : std_logic;
SIGNAL \inst_CE_11|Mult4~24\ : std_logic;
SIGNAL \inst_CE_11|Mult4~25\ : std_logic;
SIGNAL \inst_CE_11|Mult4~26\ : std_logic;
SIGNAL \inst_CE_11|Mult4~27\ : std_logic;
SIGNAL \inst_CE_11|Mult4~28\ : std_logic;
SIGNAL \inst_CE_11|Mult4~29\ : std_logic;
SIGNAL \inst_CE_11|Mult4~30\ : std_logic;
SIGNAL \inst_CE_11|Mult4~31\ : std_logic;
SIGNAL \inst_CE_11|Mult4~32\ : std_logic;
SIGNAL \inst_CE_11|Mult4~33\ : std_logic;
SIGNAL \inst_CE_11|Mult4~34\ : std_logic;
SIGNAL \inst_CE_11|Mult4~35\ : std_logic;
SIGNAL \inst_CE_11|Mult4~36\ : std_logic;
SIGNAL \inst_CE_11|Mult4~37\ : std_logic;
SIGNAL \inst_CE_11|Mult4~38\ : std_logic;
SIGNAL \inst_CE_11|Mult4~39\ : std_logic;
SIGNAL \inst_CE_11|Mult4~40\ : std_logic;
SIGNAL \inst_CE_11|Mult4~41\ : std_logic;
SIGNAL \inst_CE_11|Mult4~42\ : std_logic;
SIGNAL \inst_CE_11|Mult4~43\ : std_logic;
SIGNAL \inst_CE_11|Mult4~44\ : std_logic;
SIGNAL \inst_CE_11|Mult4~45\ : std_logic;
SIGNAL \inst_CE_11|Mult4~46\ : std_logic;
SIGNAL \inst_CE_11|Mult4~47\ : std_logic;
SIGNAL \inst_CE_11|Mult4~48\ : std_logic;
SIGNAL \inst_CE_11|Mult4~49\ : std_logic;
SIGNAL \inst_CE_11|Mult4~50\ : std_logic;
SIGNAL \inst_CE_11|Mult4~51\ : std_logic;
SIGNAL \inst_CE_11|Mult4~52\ : std_logic;
SIGNAL \inst_CE_11|Mult4~53\ : std_logic;
SIGNAL \inst_CE_11|Mult4~54\ : std_logic;
SIGNAL \inst_CE_11|Mult4~55\ : std_logic;
SIGNAL \n_11[3]~input_o\ : std_logic;
SIGNAL \n_11[4]~input_o\ : std_logic;
SIGNAL \n_11[5]~input_o\ : std_logic;
SIGNAL \n_11[6]~input_o\ : std_logic;
SIGNAL \n_11[7]~input_o\ : std_logic;
SIGNAL \n_12[3]~input_o\ : std_logic;
SIGNAL \n_12[4]~input_o\ : std_logic;
SIGNAL \n_12[5]~input_o\ : std_logic;
SIGNAL \n_12[6]~input_o\ : std_logic;
SIGNAL \n_12[7]~input_o\ : std_logic;
SIGNAL \n_13[3]~input_o\ : std_logic;
SIGNAL \n_13[4]~input_o\ : std_logic;
SIGNAL \n_13[5]~input_o\ : std_logic;
SIGNAL \n_13[6]~input_o\ : std_logic;
SIGNAL \n_13[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \inst_SE|sum_s[0]~0_combout\ : std_logic;
SIGNAL \w_11[8][0]~input_o\ : std_logic;
SIGNAL \w_11[8][1]~input_o\ : std_logic;
SIGNAL \w_11[8][2]~input_o\ : std_logic;
SIGNAL \w_11[8][3]~input_o\ : std_logic;
SIGNAL \w_11[8][4]~input_o\ : std_logic;
SIGNAL \w_11[8][5]~input_o\ : std_logic;
SIGNAL \w_11[8][6]~input_o\ : std_logic;
SIGNAL \w_11[8][7]~input_o\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit1~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit2~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~1_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe7~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe7~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit1~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit2~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~1_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe7~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe7~q\ : std_logic;
SIGNAL \in_data[7]~input_o\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~1_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~2\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~5_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a[1]~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~6\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~9_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~10\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~13_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~14\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~17_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~18\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~21_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~22\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~25_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~26\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~29_sumout\ : std_logic;
SIGNAL \in_data[6]~input_o\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]~feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][6]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][6]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \in_data[5]~input_o\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][5]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][5]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \in_data[4]~input_o\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][4]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][4]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \in_data[3]~input_o\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]~feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][3]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][3]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][3]~_Duplicate_3_q\ : std_logic;
SIGNAL \in_data[2]~input_o\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][2]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \in_data[1]~input_o\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][1]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \in_data[0]~input_o\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][0]~feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][0]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][0]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~1_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~2\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~5_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[1]~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~6\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~9_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~10\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~13_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~14\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~17_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~18\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~21_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~22\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~25_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~26\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~29_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a1\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][6]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a2\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][5]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][5]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a3\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][4]~feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][4]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][4]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a4\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][3]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][3]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][3]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][3]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a5\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][2]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][2]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][2]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a6\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][1]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][1]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a7\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][0]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][0]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a7\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][0]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][0]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a6\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][1]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a5\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][2]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][2]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a4\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][3]~feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][3]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][3]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][3]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][3]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a3\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][4]~feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][4]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a2\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][5]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][5]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a1\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][6]~feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][6]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][6]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \w_11[7][0]~input_o\ : std_logic;
SIGNAL \w_11[7][1]~input_o\ : std_logic;
SIGNAL \w_11[7][2]~input_o\ : std_logic;
SIGNAL \w_11[7][3]~input_o\ : std_logic;
SIGNAL \w_11[7][4]~input_o\ : std_logic;
SIGNAL \w_11[7][5]~input_o\ : std_logic;
SIGNAL \w_11[7][6]~input_o\ : std_logic;
SIGNAL \w_11[7][7]~input_o\ : std_logic;
SIGNAL \w_11[6][0]~input_o\ : std_logic;
SIGNAL \w_11[6][1]~input_o\ : std_logic;
SIGNAL \w_11[6][2]~input_o\ : std_logic;
SIGNAL \w_11[6][3]~input_o\ : std_logic;
SIGNAL \w_11[6][4]~input_o\ : std_logic;
SIGNAL \w_11[6][5]~input_o\ : std_logic;
SIGNAL \w_11[6][6]~input_o\ : std_logic;
SIGNAL \w_11[6][7]~input_o\ : std_logic;
SIGNAL \w_11[5][0]~input_o\ : std_logic;
SIGNAL \w_11[5][1]~input_o\ : std_logic;
SIGNAL \w_11[5][2]~input_o\ : std_logic;
SIGNAL \w_11[5][3]~input_o\ : std_logic;
SIGNAL \w_11[5][4]~input_o\ : std_logic;
SIGNAL \w_11[5][5]~input_o\ : std_logic;
SIGNAL \w_11[5][6]~input_o\ : std_logic;
SIGNAL \w_11[5][7]~input_o\ : std_logic;
SIGNAL \w_11[4][0]~input_o\ : std_logic;
SIGNAL \w_11[4][1]~input_o\ : std_logic;
SIGNAL \w_11[4][2]~input_o\ : std_logic;
SIGNAL \w_11[4][3]~input_o\ : std_logic;
SIGNAL \w_11[4][4]~input_o\ : std_logic;
SIGNAL \w_11[4][5]~input_o\ : std_logic;
SIGNAL \w_11[4][6]~input_o\ : std_logic;
SIGNAL \w_11[4][7]~input_o\ : std_logic;
SIGNAL \w_11[3][0]~input_o\ : std_logic;
SIGNAL \w_11[3][1]~input_o\ : std_logic;
SIGNAL \w_11[3][2]~input_o\ : std_logic;
SIGNAL \w_11[3][3]~input_o\ : std_logic;
SIGNAL \w_11[3][4]~input_o\ : std_logic;
SIGNAL \w_11[3][5]~input_o\ : std_logic;
SIGNAL \w_11[3][6]~input_o\ : std_logic;
SIGNAL \w_11[3][7]~input_o\ : std_logic;
SIGNAL \w_11[2][0]~input_o\ : std_logic;
SIGNAL \w_11[2][1]~input_o\ : std_logic;
SIGNAL \w_11[2][2]~input_o\ : std_logic;
SIGNAL \w_11[2][3]~input_o\ : std_logic;
SIGNAL \w_11[2][4]~input_o\ : std_logic;
SIGNAL \w_11[2][5]~input_o\ : std_logic;
SIGNAL \w_11[2][6]~input_o\ : std_logic;
SIGNAL \w_11[2][7]~input_o\ : std_logic;
SIGNAL \w_11[1][0]~input_o\ : std_logic;
SIGNAL \w_11[1][1]~input_o\ : std_logic;
SIGNAL \w_11[1][2]~input_o\ : std_logic;
SIGNAL \w_11[1][3]~input_o\ : std_logic;
SIGNAL \w_11[1][4]~input_o\ : std_logic;
SIGNAL \w_11[1][5]~input_o\ : std_logic;
SIGNAL \w_11[1][6]~input_o\ : std_logic;
SIGNAL \w_11[1][7]~input_o\ : std_logic;
SIGNAL \w_11[0][0]~input_o\ : std_logic;
SIGNAL \w_11[0][1]~input_o\ : std_logic;
SIGNAL \w_11[0][2]~input_o\ : std_logic;
SIGNAL \w_11[0][3]~input_o\ : std_logic;
SIGNAL \w_11[0][4]~input_o\ : std_logic;
SIGNAL \w_11[0][5]~input_o\ : std_logic;
SIGNAL \w_11[0][6]~input_o\ : std_logic;
SIGNAL \w_11[0][7]~input_o\ : std_logic;
SIGNAL \inst_CE_11|Add2~459\ : std_logic;
SIGNAL \inst_CE_11|Add2~460\ : std_logic;
SIGNAL \inst_CE_11|Add2~461\ : std_logic;
SIGNAL \inst_CE_11|Add2~462\ : std_logic;
SIGNAL \inst_CE_11|Add2~463\ : std_logic;
SIGNAL \inst_CE_11|Add2~464\ : std_logic;
SIGNAL \inst_CE_11|Add2~465\ : std_logic;
SIGNAL \inst_CE_11|Add2~466\ : std_logic;
SIGNAL \inst_CE_11|Add2~467\ : std_logic;
SIGNAL \inst_CE_11|Add2~468\ : std_logic;
SIGNAL \inst_CE_11|Add2~469\ : std_logic;
SIGNAL \inst_CE_11|Add2~470\ : std_logic;
SIGNAL \inst_CE_11|Add2~471\ : std_logic;
SIGNAL \inst_CE_11|Add2~472\ : std_logic;
SIGNAL \inst_CE_11|Add2~473\ : std_logic;
SIGNAL \inst_CE_11|Add2~474\ : std_logic;
SIGNAL \inst_CE_11|Add2~475\ : std_logic;
SIGNAL \inst_CE_11|Add2~476\ : std_logic;
SIGNAL \inst_CE_11|Add2~477\ : std_logic;
SIGNAL \inst_CE_11|Add2~478\ : std_logic;
SIGNAL \inst_CE_11|Add2~479\ : std_logic;
SIGNAL \inst_CE_11|Add2~480\ : std_logic;
SIGNAL \inst_CE_11|Add2~481\ : std_logic;
SIGNAL \inst_CE_11|Add2~482\ : std_logic;
SIGNAL \inst_CE_11|Add2~483\ : std_logic;
SIGNAL \inst_CE_11|Add2~484\ : std_logic;
SIGNAL \inst_CE_11|Add2~485\ : std_logic;
SIGNAL \inst_CE_11|Add2~486\ : std_logic;
SIGNAL \inst_CE_11|Add2~487\ : std_logic;
SIGNAL \inst_CE_11|Add2~488\ : std_logic;
SIGNAL \inst_CE_11|Add2~489\ : std_logic;
SIGNAL \inst_CE_11|Add2~490\ : std_logic;
SIGNAL \inst_CE_11|Add2~491\ : std_logic;
SIGNAL \inst_CE_11|Add2~492\ : std_logic;
SIGNAL \inst_CE_11|Add2~493\ : std_logic;
SIGNAL \inst_CE_11|Add2~494\ : std_logic;
SIGNAL \inst_CE_11|Add2~495\ : std_logic;
SIGNAL \inst_CE_11|Add2~496\ : std_logic;
SIGNAL \inst_CE_11|Add2~497\ : std_logic;
SIGNAL \inst_CE_11|Add2~498\ : std_logic;
SIGNAL \inst_CE_11|Add2~499\ : std_logic;
SIGNAL \inst_CE_11|Add2~500\ : std_logic;
SIGNAL \inst_CE_11|Add2~501\ : std_logic;
SIGNAL \inst_CE_11|Add2~502\ : std_logic;
SIGNAL \inst_CE_11|Add2~503\ : std_logic;
SIGNAL \inst_CE_11|Add2~504\ : std_logic;
SIGNAL \inst_CE_11|Add2~505\ : std_logic;
SIGNAL \inst_CE_11|Add2~506\ : std_logic;
SIGNAL \inst_CE_11|Add2~507\ : std_logic;
SIGNAL \inst_CE_11|Add2~508\ : std_logic;
SIGNAL \inst_CE_11|Add2~509\ : std_logic;
SIGNAL \inst_CE_11|Add2~510\ : std_logic;
SIGNAL \inst_CE_11|Add2~511\ : std_logic;
SIGNAL \inst_CE_11|Add2~512\ : std_logic;
SIGNAL \inst_CE_11|Add2~513\ : std_logic;
SIGNAL \inst_CE_11|Add2~514\ : std_logic;
SIGNAL \inst_CE_11|Add2~515\ : std_logic;
SIGNAL \inst_CE_11|Add2~516\ : std_logic;
SIGNAL \inst_CE_11|Add2~517\ : std_logic;
SIGNAL \inst_CE_11|Add2~518\ : std_logic;
SIGNAL \inst_CE_11|Add2~519\ : std_logic;
SIGNAL \inst_CE_11|Add2~520\ : std_logic;
SIGNAL \inst_CE_11|Add2~521\ : std_logic;
SIGNAL \inst_CE_11|Add2~522\ : std_logic;
SIGNAL \inst_CE_11|Add2~10_resulta\ : std_logic;
SIGNAL \inst_CE_11|Add2~11\ : std_logic;
SIGNAL \inst_CE_11|Add2~12\ : std_logic;
SIGNAL \inst_CE_11|Add2~13\ : std_logic;
SIGNAL \inst_CE_11|Add2~14\ : std_logic;
SIGNAL \inst_CE_11|Add2~15\ : std_logic;
SIGNAL \inst_CE_11|Add2~16\ : std_logic;
SIGNAL \inst_CE_11|Add2~17\ : std_logic;
SIGNAL \inst_CE_11|Add2~18\ : std_logic;
SIGNAL \inst_CE_11|Add2~19\ : std_logic;
SIGNAL \inst_CE_11|Add2~20\ : std_logic;
SIGNAL \inst_CE_11|Add2~21\ : std_logic;
SIGNAL \inst_CE_11|Add2~22\ : std_logic;
SIGNAL \inst_CE_11|Add2~23\ : std_logic;
SIGNAL \inst_CE_11|Add2~24\ : std_logic;
SIGNAL \inst_CE_11|Add2~25\ : std_logic;
SIGNAL \inst_CE_11|Add2~26\ : std_logic;
SIGNAL \inst_CE_11|Add2~27\ : std_logic;
SIGNAL \inst_CE_11|Mult4~mac_resulta\ : std_logic;
SIGNAL \inst_CE_11|Mult4~304\ : std_logic;
SIGNAL \inst_CE_11|Mult4~305\ : std_logic;
SIGNAL \inst_CE_11|Mult4~306\ : std_logic;
SIGNAL \inst_CE_11|Mult4~307\ : std_logic;
SIGNAL \inst_CE_11|Mult4~308\ : std_logic;
SIGNAL \inst_CE_11|Mult4~309\ : std_logic;
SIGNAL \inst_CE_11|Mult4~310\ : std_logic;
SIGNAL \inst_CE_11|Mult4~311\ : std_logic;
SIGNAL \inst_CE_11|Mult4~312\ : std_logic;
SIGNAL \inst_CE_11|Mult4~313\ : std_logic;
SIGNAL \inst_CE_11|Mult4~314\ : std_logic;
SIGNAL \inst_CE_11|Mult4~315\ : std_logic;
SIGNAL \inst_CE_11|Mult4~316\ : std_logic;
SIGNAL \inst_CE_11|Mult4~317\ : std_logic;
SIGNAL \inst_CE_11|Mult4~318\ : std_logic;
SIGNAL \inst_CE_11|Mult4~319\ : std_logic;
SIGNAL \inst_CE_11|Mult4~320\ : std_logic;
SIGNAL \inst_CE_11|Mult5~mac_resulta\ : std_logic;
SIGNAL \inst_CE_11|Mult5~304\ : std_logic;
SIGNAL \inst_CE_11|Mult5~305\ : std_logic;
SIGNAL \inst_CE_11|Mult5~306\ : std_logic;
SIGNAL \inst_CE_11|Mult5~307\ : std_logic;
SIGNAL \inst_CE_11|Mult5~308\ : std_logic;
SIGNAL \inst_CE_11|Mult5~309\ : std_logic;
SIGNAL \inst_CE_11|Mult5~310\ : std_logic;
SIGNAL \inst_CE_11|Mult5~311\ : std_logic;
SIGNAL \inst_CE_11|Mult5~312\ : std_logic;
SIGNAL \inst_CE_11|Mult5~313\ : std_logic;
SIGNAL \inst_CE_11|Mult5~314\ : std_logic;
SIGNAL \inst_CE_11|Mult5~315\ : std_logic;
SIGNAL \inst_CE_11|Mult5~316\ : std_logic;
SIGNAL \inst_CE_11|Mult5~317\ : std_logic;
SIGNAL \inst_CE_11|Mult5~318\ : std_logic;
SIGNAL \inst_CE_11|Mult5~319\ : std_logic;
SIGNAL \inst_CE_11|Mult5~320\ : std_logic;
SIGNAL \inst_CE_11|Mult6~mac_resulta\ : std_logic;
SIGNAL \inst_CE_11|Mult6~304\ : std_logic;
SIGNAL \inst_CE_11|Mult6~305\ : std_logic;
SIGNAL \inst_CE_11|Mult6~306\ : std_logic;
SIGNAL \inst_CE_11|Mult6~307\ : std_logic;
SIGNAL \inst_CE_11|Mult6~308\ : std_logic;
SIGNAL \inst_CE_11|Mult6~309\ : std_logic;
SIGNAL \inst_CE_11|Mult6~310\ : std_logic;
SIGNAL \inst_CE_11|Mult6~311\ : std_logic;
SIGNAL \inst_CE_11|Mult6~312\ : std_logic;
SIGNAL \inst_CE_11|Mult6~313\ : std_logic;
SIGNAL \inst_CE_11|Mult6~314\ : std_logic;
SIGNAL \inst_CE_11|Mult6~315\ : std_logic;
SIGNAL \inst_CE_11|Mult6~316\ : std_logic;
SIGNAL \inst_CE_11|Mult6~317\ : std_logic;
SIGNAL \inst_CE_11|Mult6~318\ : std_logic;
SIGNAL \inst_CE_11|Mult6~319\ : std_logic;
SIGNAL \inst_CE_11|Mult6~320\ : std_logic;
SIGNAL \inst_CE_11|Mult7~mac_resulta\ : std_logic;
SIGNAL \inst_CE_11|Mult7~304\ : std_logic;
SIGNAL \inst_CE_11|Mult7~305\ : std_logic;
SIGNAL \inst_CE_11|Mult7~306\ : std_logic;
SIGNAL \inst_CE_11|Mult7~307\ : std_logic;
SIGNAL \inst_CE_11|Mult7~308\ : std_logic;
SIGNAL \inst_CE_11|Mult7~309\ : std_logic;
SIGNAL \inst_CE_11|Mult7~310\ : std_logic;
SIGNAL \inst_CE_11|Mult7~311\ : std_logic;
SIGNAL \inst_CE_11|Mult7~312\ : std_logic;
SIGNAL \inst_CE_11|Mult7~313\ : std_logic;
SIGNAL \inst_CE_11|Mult7~314\ : std_logic;
SIGNAL \inst_CE_11|Mult7~315\ : std_logic;
SIGNAL \inst_CE_11|Mult7~316\ : std_logic;
SIGNAL \inst_CE_11|Mult7~317\ : std_logic;
SIGNAL \inst_CE_11|Mult7~318\ : std_logic;
SIGNAL \inst_CE_11|Mult7~319\ : std_logic;
SIGNAL \inst_CE_11|Mult7~320\ : std_logic;
SIGNAL \n_11[0]~input_o\ : std_logic;
SIGNAL \n_11[1]~input_o\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~0_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~1_combout\ : std_logic;
SIGNAL \n_11[2]~input_o\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~2_combout\ : std_logic;
SIGNAL \w_13[8][0]~input_o\ : std_logic;
SIGNAL \w_13[8][1]~input_o\ : std_logic;
SIGNAL \w_13[8][2]~input_o\ : std_logic;
SIGNAL \w_13[8][3]~input_o\ : std_logic;
SIGNAL \w_13[8][4]~input_o\ : std_logic;
SIGNAL \w_13[8][5]~input_o\ : std_logic;
SIGNAL \w_13[8][6]~input_o\ : std_logic;
SIGNAL \w_13[8][7]~input_o\ : std_logic;
SIGNAL \w_13[7][0]~input_o\ : std_logic;
SIGNAL \w_13[7][1]~input_o\ : std_logic;
SIGNAL \w_13[7][2]~input_o\ : std_logic;
SIGNAL \w_13[7][3]~input_o\ : std_logic;
SIGNAL \w_13[7][4]~input_o\ : std_logic;
SIGNAL \w_13[7][5]~input_o\ : std_logic;
SIGNAL \w_13[7][6]~input_o\ : std_logic;
SIGNAL \w_13[7][7]~input_o\ : std_logic;
SIGNAL \w_13[6][0]~input_o\ : std_logic;
SIGNAL \w_13[6][1]~input_o\ : std_logic;
SIGNAL \w_13[6][2]~input_o\ : std_logic;
SIGNAL \w_13[6][3]~input_o\ : std_logic;
SIGNAL \w_13[6][4]~input_o\ : std_logic;
SIGNAL \w_13[6][5]~input_o\ : std_logic;
SIGNAL \w_13[6][6]~input_o\ : std_logic;
SIGNAL \w_13[6][7]~input_o\ : std_logic;
SIGNAL \w_13[5][0]~input_o\ : std_logic;
SIGNAL \w_13[5][1]~input_o\ : std_logic;
SIGNAL \w_13[5][2]~input_o\ : std_logic;
SIGNAL \w_13[5][3]~input_o\ : std_logic;
SIGNAL \w_13[5][4]~input_o\ : std_logic;
SIGNAL \w_13[5][5]~input_o\ : std_logic;
SIGNAL \w_13[5][6]~input_o\ : std_logic;
SIGNAL \w_13[5][7]~input_o\ : std_logic;
SIGNAL \w_13[4][0]~input_o\ : std_logic;
SIGNAL \w_13[4][1]~input_o\ : std_logic;
SIGNAL \w_13[4][2]~input_o\ : std_logic;
SIGNAL \w_13[4][3]~input_o\ : std_logic;
SIGNAL \w_13[4][4]~input_o\ : std_logic;
SIGNAL \w_13[4][5]~input_o\ : std_logic;
SIGNAL \w_13[4][6]~input_o\ : std_logic;
SIGNAL \w_13[4][7]~input_o\ : std_logic;
SIGNAL \w_13[3][0]~input_o\ : std_logic;
SIGNAL \w_13[3][1]~input_o\ : std_logic;
SIGNAL \w_13[3][2]~input_o\ : std_logic;
SIGNAL \w_13[3][3]~input_o\ : std_logic;
SIGNAL \w_13[3][4]~input_o\ : std_logic;
SIGNAL \w_13[3][5]~input_o\ : std_logic;
SIGNAL \w_13[3][6]~input_o\ : std_logic;
SIGNAL \w_13[3][7]~input_o\ : std_logic;
SIGNAL \w_13[2][0]~input_o\ : std_logic;
SIGNAL \w_13[2][1]~input_o\ : std_logic;
SIGNAL \w_13[2][2]~input_o\ : std_logic;
SIGNAL \w_13[2][3]~input_o\ : std_logic;
SIGNAL \w_13[2][4]~input_o\ : std_logic;
SIGNAL \w_13[2][5]~input_o\ : std_logic;
SIGNAL \w_13[2][6]~input_o\ : std_logic;
SIGNAL \w_13[2][7]~input_o\ : std_logic;
SIGNAL \w_13[1][0]~input_o\ : std_logic;
SIGNAL \w_13[1][1]~input_o\ : std_logic;
SIGNAL \w_13[1][2]~input_o\ : std_logic;
SIGNAL \w_13[1][3]~input_o\ : std_logic;
SIGNAL \w_13[1][4]~input_o\ : std_logic;
SIGNAL \w_13[1][5]~input_o\ : std_logic;
SIGNAL \w_13[1][6]~input_o\ : std_logic;
SIGNAL \w_13[1][7]~input_o\ : std_logic;
SIGNAL \w_13[0][0]~input_o\ : std_logic;
SIGNAL \w_13[0][1]~input_o\ : std_logic;
SIGNAL \w_13[0][2]~input_o\ : std_logic;
SIGNAL \w_13[0][3]~input_o\ : std_logic;
SIGNAL \w_13[0][4]~input_o\ : std_logic;
SIGNAL \w_13[0][5]~input_o\ : std_logic;
SIGNAL \w_13[0][6]~input_o\ : std_logic;
SIGNAL \w_13[0][7]~input_o\ : std_logic;
SIGNAL \inst_CE_13|Add2~459\ : std_logic;
SIGNAL \inst_CE_13|Add2~460\ : std_logic;
SIGNAL \inst_CE_13|Add2~461\ : std_logic;
SIGNAL \inst_CE_13|Add2~462\ : std_logic;
SIGNAL \inst_CE_13|Add2~463\ : std_logic;
SIGNAL \inst_CE_13|Add2~464\ : std_logic;
SIGNAL \inst_CE_13|Add2~465\ : std_logic;
SIGNAL \inst_CE_13|Add2~466\ : std_logic;
SIGNAL \inst_CE_13|Add2~467\ : std_logic;
SIGNAL \inst_CE_13|Add2~468\ : std_logic;
SIGNAL \inst_CE_13|Add2~469\ : std_logic;
SIGNAL \inst_CE_13|Add2~470\ : std_logic;
SIGNAL \inst_CE_13|Add2~471\ : std_logic;
SIGNAL \inst_CE_13|Add2~472\ : std_logic;
SIGNAL \inst_CE_13|Add2~473\ : std_logic;
SIGNAL \inst_CE_13|Add2~474\ : std_logic;
SIGNAL \inst_CE_13|Add2~475\ : std_logic;
SIGNAL \inst_CE_13|Add2~476\ : std_logic;
SIGNAL \inst_CE_13|Add2~477\ : std_logic;
SIGNAL \inst_CE_13|Add2~478\ : std_logic;
SIGNAL \inst_CE_13|Add2~479\ : std_logic;
SIGNAL \inst_CE_13|Add2~480\ : std_logic;
SIGNAL \inst_CE_13|Add2~481\ : std_logic;
SIGNAL \inst_CE_13|Add2~482\ : std_logic;
SIGNAL \inst_CE_13|Add2~483\ : std_logic;
SIGNAL \inst_CE_13|Add2~484\ : std_logic;
SIGNAL \inst_CE_13|Add2~485\ : std_logic;
SIGNAL \inst_CE_13|Add2~486\ : std_logic;
SIGNAL \inst_CE_13|Add2~487\ : std_logic;
SIGNAL \inst_CE_13|Add2~488\ : std_logic;
SIGNAL \inst_CE_13|Add2~489\ : std_logic;
SIGNAL \inst_CE_13|Add2~490\ : std_logic;
SIGNAL \inst_CE_13|Add2~491\ : std_logic;
SIGNAL \inst_CE_13|Add2~492\ : std_logic;
SIGNAL \inst_CE_13|Add2~493\ : std_logic;
SIGNAL \inst_CE_13|Add2~494\ : std_logic;
SIGNAL \inst_CE_13|Add2~495\ : std_logic;
SIGNAL \inst_CE_13|Add2~496\ : std_logic;
SIGNAL \inst_CE_13|Add2~497\ : std_logic;
SIGNAL \inst_CE_13|Add2~498\ : std_logic;
SIGNAL \inst_CE_13|Add2~499\ : std_logic;
SIGNAL \inst_CE_13|Add2~500\ : std_logic;
SIGNAL \inst_CE_13|Add2~501\ : std_logic;
SIGNAL \inst_CE_13|Add2~502\ : std_logic;
SIGNAL \inst_CE_13|Add2~503\ : std_logic;
SIGNAL \inst_CE_13|Add2~504\ : std_logic;
SIGNAL \inst_CE_13|Add2~505\ : std_logic;
SIGNAL \inst_CE_13|Add2~506\ : std_logic;
SIGNAL \inst_CE_13|Add2~507\ : std_logic;
SIGNAL \inst_CE_13|Add2~508\ : std_logic;
SIGNAL \inst_CE_13|Add2~509\ : std_logic;
SIGNAL \inst_CE_13|Add2~510\ : std_logic;
SIGNAL \inst_CE_13|Add2~511\ : std_logic;
SIGNAL \inst_CE_13|Add2~512\ : std_logic;
SIGNAL \inst_CE_13|Add2~513\ : std_logic;
SIGNAL \inst_CE_13|Add2~514\ : std_logic;
SIGNAL \inst_CE_13|Add2~515\ : std_logic;
SIGNAL \inst_CE_13|Add2~516\ : std_logic;
SIGNAL \inst_CE_13|Add2~517\ : std_logic;
SIGNAL \inst_CE_13|Add2~518\ : std_logic;
SIGNAL \inst_CE_13|Add2~519\ : std_logic;
SIGNAL \inst_CE_13|Add2~520\ : std_logic;
SIGNAL \inst_CE_13|Add2~521\ : std_logic;
SIGNAL \inst_CE_13|Add2~522\ : std_logic;
SIGNAL \inst_CE_13|Add2~10_resulta\ : std_logic;
SIGNAL \inst_CE_13|Add2~11\ : std_logic;
SIGNAL \inst_CE_13|Add2~12\ : std_logic;
SIGNAL \inst_CE_13|Add2~13\ : std_logic;
SIGNAL \inst_CE_13|Add2~14\ : std_logic;
SIGNAL \inst_CE_13|Add2~15\ : std_logic;
SIGNAL \inst_CE_13|Add2~16\ : std_logic;
SIGNAL \inst_CE_13|Add2~17\ : std_logic;
SIGNAL \inst_CE_13|Add2~18\ : std_logic;
SIGNAL \inst_CE_13|Add2~19\ : std_logic;
SIGNAL \inst_CE_13|Add2~20\ : std_logic;
SIGNAL \inst_CE_13|Add2~21\ : std_logic;
SIGNAL \inst_CE_13|Add2~22\ : std_logic;
SIGNAL \inst_CE_13|Add2~23\ : std_logic;
SIGNAL \inst_CE_13|Add2~24\ : std_logic;
SIGNAL \inst_CE_13|Add2~25\ : std_logic;
SIGNAL \inst_CE_13|Add2~26\ : std_logic;
SIGNAL \inst_CE_13|Add2~27\ : std_logic;
SIGNAL \inst_CE_13|Mult4~mac_resulta\ : std_logic;
SIGNAL \inst_CE_13|Mult4~304\ : std_logic;
SIGNAL \inst_CE_13|Mult4~305\ : std_logic;
SIGNAL \inst_CE_13|Mult4~306\ : std_logic;
SIGNAL \inst_CE_13|Mult4~307\ : std_logic;
SIGNAL \inst_CE_13|Mult4~308\ : std_logic;
SIGNAL \inst_CE_13|Mult4~309\ : std_logic;
SIGNAL \inst_CE_13|Mult4~310\ : std_logic;
SIGNAL \inst_CE_13|Mult4~311\ : std_logic;
SIGNAL \inst_CE_13|Mult4~312\ : std_logic;
SIGNAL \inst_CE_13|Mult4~313\ : std_logic;
SIGNAL \inst_CE_13|Mult4~314\ : std_logic;
SIGNAL \inst_CE_13|Mult4~315\ : std_logic;
SIGNAL \inst_CE_13|Mult4~316\ : std_logic;
SIGNAL \inst_CE_13|Mult4~317\ : std_logic;
SIGNAL \inst_CE_13|Mult4~318\ : std_logic;
SIGNAL \inst_CE_13|Mult4~319\ : std_logic;
SIGNAL \inst_CE_13|Mult4~320\ : std_logic;
SIGNAL \inst_CE_13|Mult5~mac_resulta\ : std_logic;
SIGNAL \inst_CE_13|Mult5~304\ : std_logic;
SIGNAL \inst_CE_13|Mult5~305\ : std_logic;
SIGNAL \inst_CE_13|Mult5~306\ : std_logic;
SIGNAL \inst_CE_13|Mult5~307\ : std_logic;
SIGNAL \inst_CE_13|Mult5~308\ : std_logic;
SIGNAL \inst_CE_13|Mult5~309\ : std_logic;
SIGNAL \inst_CE_13|Mult5~310\ : std_logic;
SIGNAL \inst_CE_13|Mult5~311\ : std_logic;
SIGNAL \inst_CE_13|Mult5~312\ : std_logic;
SIGNAL \inst_CE_13|Mult5~313\ : std_logic;
SIGNAL \inst_CE_13|Mult5~314\ : std_logic;
SIGNAL \inst_CE_13|Mult5~315\ : std_logic;
SIGNAL \inst_CE_13|Mult5~316\ : std_logic;
SIGNAL \inst_CE_13|Mult5~317\ : std_logic;
SIGNAL \inst_CE_13|Mult5~318\ : std_logic;
SIGNAL \inst_CE_13|Mult5~319\ : std_logic;
SIGNAL \inst_CE_13|Mult5~320\ : std_logic;
SIGNAL \inst_CE_13|Mult6~mac_resulta\ : std_logic;
SIGNAL \inst_CE_13|Mult6~304\ : std_logic;
SIGNAL \inst_CE_13|Mult6~305\ : std_logic;
SIGNAL \inst_CE_13|Mult6~306\ : std_logic;
SIGNAL \inst_CE_13|Mult6~307\ : std_logic;
SIGNAL \inst_CE_13|Mult6~308\ : std_logic;
SIGNAL \inst_CE_13|Mult6~309\ : std_logic;
SIGNAL \inst_CE_13|Mult6~310\ : std_logic;
SIGNAL \inst_CE_13|Mult6~311\ : std_logic;
SIGNAL \inst_CE_13|Mult6~312\ : std_logic;
SIGNAL \inst_CE_13|Mult6~313\ : std_logic;
SIGNAL \inst_CE_13|Mult6~314\ : std_logic;
SIGNAL \inst_CE_13|Mult6~315\ : std_logic;
SIGNAL \inst_CE_13|Mult6~316\ : std_logic;
SIGNAL \inst_CE_13|Mult6~317\ : std_logic;
SIGNAL \inst_CE_13|Mult6~318\ : std_logic;
SIGNAL \inst_CE_13|Mult6~319\ : std_logic;
SIGNAL \inst_CE_13|Mult6~320\ : std_logic;
SIGNAL \inst_CE_13|Mult7~mac_resulta\ : std_logic;
SIGNAL \inst_CE_13|Mult7~304\ : std_logic;
SIGNAL \inst_CE_13|Mult7~305\ : std_logic;
SIGNAL \inst_CE_13|Mult7~306\ : std_logic;
SIGNAL \inst_CE_13|Mult7~307\ : std_logic;
SIGNAL \inst_CE_13|Mult7~308\ : std_logic;
SIGNAL \inst_CE_13|Mult7~309\ : std_logic;
SIGNAL \inst_CE_13|Mult7~310\ : std_logic;
SIGNAL \inst_CE_13|Mult7~311\ : std_logic;
SIGNAL \inst_CE_13|Mult7~312\ : std_logic;
SIGNAL \inst_CE_13|Mult7~313\ : std_logic;
SIGNAL \inst_CE_13|Mult7~314\ : std_logic;
SIGNAL \inst_CE_13|Mult7~315\ : std_logic;
SIGNAL \inst_CE_13|Mult7~316\ : std_logic;
SIGNAL \inst_CE_13|Mult7~317\ : std_logic;
SIGNAL \inst_CE_13|Mult7~318\ : std_logic;
SIGNAL \inst_CE_13|Mult7~319\ : std_logic;
SIGNAL \inst_CE_13|Mult7~320\ : std_logic;
SIGNAL \n_13[0]~input_o\ : std_logic;
SIGNAL \n_13[1]~input_o\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~0_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~1_combout\ : std_logic;
SIGNAL \n_13[2]~input_o\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~2_combout\ : std_logic;
SIGNAL \n_12[2]~input_o\ : std_logic;
SIGNAL \w_12[8][0]~input_o\ : std_logic;
SIGNAL \w_12[8][1]~input_o\ : std_logic;
SIGNAL \w_12[8][2]~input_o\ : std_logic;
SIGNAL \w_12[8][3]~input_o\ : std_logic;
SIGNAL \w_12[8][4]~input_o\ : std_logic;
SIGNAL \w_12[8][5]~input_o\ : std_logic;
SIGNAL \w_12[8][6]~input_o\ : std_logic;
SIGNAL \w_12[8][7]~input_o\ : std_logic;
SIGNAL \w_12[7][0]~input_o\ : std_logic;
SIGNAL \w_12[7][1]~input_o\ : std_logic;
SIGNAL \w_12[7][2]~input_o\ : std_logic;
SIGNAL \w_12[7][3]~input_o\ : std_logic;
SIGNAL \w_12[7][4]~input_o\ : std_logic;
SIGNAL \w_12[7][5]~input_o\ : std_logic;
SIGNAL \w_12[7][6]~input_o\ : std_logic;
SIGNAL \w_12[7][7]~input_o\ : std_logic;
SIGNAL \w_12[6][0]~input_o\ : std_logic;
SIGNAL \w_12[6][1]~input_o\ : std_logic;
SIGNAL \w_12[6][2]~input_o\ : std_logic;
SIGNAL \w_12[6][3]~input_o\ : std_logic;
SIGNAL \w_12[6][4]~input_o\ : std_logic;
SIGNAL \w_12[6][5]~input_o\ : std_logic;
SIGNAL \w_12[6][6]~input_o\ : std_logic;
SIGNAL \w_12[6][7]~input_o\ : std_logic;
SIGNAL \w_12[5][0]~input_o\ : std_logic;
SIGNAL \w_12[5][1]~input_o\ : std_logic;
SIGNAL \w_12[5][2]~input_o\ : std_logic;
SIGNAL \w_12[5][3]~input_o\ : std_logic;
SIGNAL \w_12[5][4]~input_o\ : std_logic;
SIGNAL \w_12[5][5]~input_o\ : std_logic;
SIGNAL \w_12[5][6]~input_o\ : std_logic;
SIGNAL \w_12[5][7]~input_o\ : std_logic;
SIGNAL \w_12[4][0]~input_o\ : std_logic;
SIGNAL \w_12[4][1]~input_o\ : std_logic;
SIGNAL \w_12[4][2]~input_o\ : std_logic;
SIGNAL \w_12[4][3]~input_o\ : std_logic;
SIGNAL \w_12[4][4]~input_o\ : std_logic;
SIGNAL \w_12[4][5]~input_o\ : std_logic;
SIGNAL \w_12[4][6]~input_o\ : std_logic;
SIGNAL \w_12[4][7]~input_o\ : std_logic;
SIGNAL \w_12[3][0]~input_o\ : std_logic;
SIGNAL \w_12[3][1]~input_o\ : std_logic;
SIGNAL \w_12[3][2]~input_o\ : std_logic;
SIGNAL \w_12[3][3]~input_o\ : std_logic;
SIGNAL \w_12[3][4]~input_o\ : std_logic;
SIGNAL \w_12[3][5]~input_o\ : std_logic;
SIGNAL \w_12[3][6]~input_o\ : std_logic;
SIGNAL \w_12[3][7]~input_o\ : std_logic;
SIGNAL \w_12[2][0]~input_o\ : std_logic;
SIGNAL \w_12[2][1]~input_o\ : std_logic;
SIGNAL \w_12[2][2]~input_o\ : std_logic;
SIGNAL \w_12[2][3]~input_o\ : std_logic;
SIGNAL \w_12[2][4]~input_o\ : std_logic;
SIGNAL \w_12[2][5]~input_o\ : std_logic;
SIGNAL \w_12[2][6]~input_o\ : std_logic;
SIGNAL \w_12[2][7]~input_o\ : std_logic;
SIGNAL \w_12[1][0]~input_o\ : std_logic;
SIGNAL \w_12[1][1]~input_o\ : std_logic;
SIGNAL \w_12[1][2]~input_o\ : std_logic;
SIGNAL \w_12[1][3]~input_o\ : std_logic;
SIGNAL \w_12[1][4]~input_o\ : std_logic;
SIGNAL \w_12[1][5]~input_o\ : std_logic;
SIGNAL \w_12[1][6]~input_o\ : std_logic;
SIGNAL \w_12[1][7]~input_o\ : std_logic;
SIGNAL \w_12[0][0]~input_o\ : std_logic;
SIGNAL \w_12[0][1]~input_o\ : std_logic;
SIGNAL \w_12[0][2]~input_o\ : std_logic;
SIGNAL \w_12[0][3]~input_o\ : std_logic;
SIGNAL \w_12[0][4]~input_o\ : std_logic;
SIGNAL \w_12[0][5]~input_o\ : std_logic;
SIGNAL \w_12[0][6]~input_o\ : std_logic;
SIGNAL \w_12[0][7]~input_o\ : std_logic;
SIGNAL \inst_CE_12|Add2~459\ : std_logic;
SIGNAL \inst_CE_12|Add2~460\ : std_logic;
SIGNAL \inst_CE_12|Add2~461\ : std_logic;
SIGNAL \inst_CE_12|Add2~462\ : std_logic;
SIGNAL \inst_CE_12|Add2~463\ : std_logic;
SIGNAL \inst_CE_12|Add2~464\ : std_logic;
SIGNAL \inst_CE_12|Add2~465\ : std_logic;
SIGNAL \inst_CE_12|Add2~466\ : std_logic;
SIGNAL \inst_CE_12|Add2~467\ : std_logic;
SIGNAL \inst_CE_12|Add2~468\ : std_logic;
SIGNAL \inst_CE_12|Add2~469\ : std_logic;
SIGNAL \inst_CE_12|Add2~470\ : std_logic;
SIGNAL \inst_CE_12|Add2~471\ : std_logic;
SIGNAL \inst_CE_12|Add2~472\ : std_logic;
SIGNAL \inst_CE_12|Add2~473\ : std_logic;
SIGNAL \inst_CE_12|Add2~474\ : std_logic;
SIGNAL \inst_CE_12|Add2~475\ : std_logic;
SIGNAL \inst_CE_12|Add2~476\ : std_logic;
SIGNAL \inst_CE_12|Add2~477\ : std_logic;
SIGNAL \inst_CE_12|Add2~478\ : std_logic;
SIGNAL \inst_CE_12|Add2~479\ : std_logic;
SIGNAL \inst_CE_12|Add2~480\ : std_logic;
SIGNAL \inst_CE_12|Add2~481\ : std_logic;
SIGNAL \inst_CE_12|Add2~482\ : std_logic;
SIGNAL \inst_CE_12|Add2~483\ : std_logic;
SIGNAL \inst_CE_12|Add2~484\ : std_logic;
SIGNAL \inst_CE_12|Add2~485\ : std_logic;
SIGNAL \inst_CE_12|Add2~486\ : std_logic;
SIGNAL \inst_CE_12|Add2~487\ : std_logic;
SIGNAL \inst_CE_12|Add2~488\ : std_logic;
SIGNAL \inst_CE_12|Add2~489\ : std_logic;
SIGNAL \inst_CE_12|Add2~490\ : std_logic;
SIGNAL \inst_CE_12|Add2~491\ : std_logic;
SIGNAL \inst_CE_12|Add2~492\ : std_logic;
SIGNAL \inst_CE_12|Add2~493\ : std_logic;
SIGNAL \inst_CE_12|Add2~494\ : std_logic;
SIGNAL \inst_CE_12|Add2~495\ : std_logic;
SIGNAL \inst_CE_12|Add2~496\ : std_logic;
SIGNAL \inst_CE_12|Add2~497\ : std_logic;
SIGNAL \inst_CE_12|Add2~498\ : std_logic;
SIGNAL \inst_CE_12|Add2~499\ : std_logic;
SIGNAL \inst_CE_12|Add2~500\ : std_logic;
SIGNAL \inst_CE_12|Add2~501\ : std_logic;
SIGNAL \inst_CE_12|Add2~502\ : std_logic;
SIGNAL \inst_CE_12|Add2~503\ : std_logic;
SIGNAL \inst_CE_12|Add2~504\ : std_logic;
SIGNAL \inst_CE_12|Add2~505\ : std_logic;
SIGNAL \inst_CE_12|Add2~506\ : std_logic;
SIGNAL \inst_CE_12|Add2~507\ : std_logic;
SIGNAL \inst_CE_12|Add2~508\ : std_logic;
SIGNAL \inst_CE_12|Add2~509\ : std_logic;
SIGNAL \inst_CE_12|Add2~510\ : std_logic;
SIGNAL \inst_CE_12|Add2~511\ : std_logic;
SIGNAL \inst_CE_12|Add2~512\ : std_logic;
SIGNAL \inst_CE_12|Add2~513\ : std_logic;
SIGNAL \inst_CE_12|Add2~514\ : std_logic;
SIGNAL \inst_CE_12|Add2~515\ : std_logic;
SIGNAL \inst_CE_12|Add2~516\ : std_logic;
SIGNAL \inst_CE_12|Add2~517\ : std_logic;
SIGNAL \inst_CE_12|Add2~518\ : std_logic;
SIGNAL \inst_CE_12|Add2~519\ : std_logic;
SIGNAL \inst_CE_12|Add2~520\ : std_logic;
SIGNAL \inst_CE_12|Add2~521\ : std_logic;
SIGNAL \inst_CE_12|Add2~522\ : std_logic;
SIGNAL \inst_CE_12|Add2~10_resulta\ : std_logic;
SIGNAL \inst_CE_12|Add2~11\ : std_logic;
SIGNAL \inst_CE_12|Add2~12\ : std_logic;
SIGNAL \inst_CE_12|Add2~13\ : std_logic;
SIGNAL \inst_CE_12|Add2~14\ : std_logic;
SIGNAL \inst_CE_12|Add2~15\ : std_logic;
SIGNAL \inst_CE_12|Add2~16\ : std_logic;
SIGNAL \inst_CE_12|Add2~17\ : std_logic;
SIGNAL \inst_CE_12|Add2~18\ : std_logic;
SIGNAL \inst_CE_12|Add2~19\ : std_logic;
SIGNAL \inst_CE_12|Add2~20\ : std_logic;
SIGNAL \inst_CE_12|Add2~21\ : std_logic;
SIGNAL \inst_CE_12|Add2~22\ : std_logic;
SIGNAL \inst_CE_12|Add2~23\ : std_logic;
SIGNAL \inst_CE_12|Add2~24\ : std_logic;
SIGNAL \inst_CE_12|Add2~25\ : std_logic;
SIGNAL \inst_CE_12|Add2~26\ : std_logic;
SIGNAL \inst_CE_12|Add2~27\ : std_logic;
SIGNAL \inst_CE_12|Mult4~mac_resulta\ : std_logic;
SIGNAL \inst_CE_12|Mult4~304\ : std_logic;
SIGNAL \inst_CE_12|Mult4~305\ : std_logic;
SIGNAL \inst_CE_12|Mult4~306\ : std_logic;
SIGNAL \inst_CE_12|Mult4~307\ : std_logic;
SIGNAL \inst_CE_12|Mult4~308\ : std_logic;
SIGNAL \inst_CE_12|Mult4~309\ : std_logic;
SIGNAL \inst_CE_12|Mult4~310\ : std_logic;
SIGNAL \inst_CE_12|Mult4~311\ : std_logic;
SIGNAL \inst_CE_12|Mult4~312\ : std_logic;
SIGNAL \inst_CE_12|Mult4~313\ : std_logic;
SIGNAL \inst_CE_12|Mult4~314\ : std_logic;
SIGNAL \inst_CE_12|Mult4~315\ : std_logic;
SIGNAL \inst_CE_12|Mult4~316\ : std_logic;
SIGNAL \inst_CE_12|Mult4~317\ : std_logic;
SIGNAL \inst_CE_12|Mult4~318\ : std_logic;
SIGNAL \inst_CE_12|Mult4~319\ : std_logic;
SIGNAL \inst_CE_12|Mult4~320\ : std_logic;
SIGNAL \inst_CE_12|Mult5~mac_resulta\ : std_logic;
SIGNAL \inst_CE_12|Mult5~304\ : std_logic;
SIGNAL \inst_CE_12|Mult5~305\ : std_logic;
SIGNAL \inst_CE_12|Mult5~306\ : std_logic;
SIGNAL \inst_CE_12|Mult5~307\ : std_logic;
SIGNAL \inst_CE_12|Mult5~308\ : std_logic;
SIGNAL \inst_CE_12|Mult5~309\ : std_logic;
SIGNAL \inst_CE_12|Mult5~310\ : std_logic;
SIGNAL \inst_CE_12|Mult5~311\ : std_logic;
SIGNAL \inst_CE_12|Mult5~312\ : std_logic;
SIGNAL \inst_CE_12|Mult5~313\ : std_logic;
SIGNAL \inst_CE_12|Mult5~314\ : std_logic;
SIGNAL \inst_CE_12|Mult5~315\ : std_logic;
SIGNAL \inst_CE_12|Mult5~316\ : std_logic;
SIGNAL \inst_CE_12|Mult5~317\ : std_logic;
SIGNAL \inst_CE_12|Mult5~318\ : std_logic;
SIGNAL \inst_CE_12|Mult5~319\ : std_logic;
SIGNAL \inst_CE_12|Mult5~320\ : std_logic;
SIGNAL \inst_CE_12|Mult6~mac_resulta\ : std_logic;
SIGNAL \inst_CE_12|Mult6~304\ : std_logic;
SIGNAL \inst_CE_12|Mult6~305\ : std_logic;
SIGNAL \inst_CE_12|Mult6~306\ : std_logic;
SIGNAL \inst_CE_12|Mult6~307\ : std_logic;
SIGNAL \inst_CE_12|Mult6~308\ : std_logic;
SIGNAL \inst_CE_12|Mult6~309\ : std_logic;
SIGNAL \inst_CE_12|Mult6~310\ : std_logic;
SIGNAL \inst_CE_12|Mult6~311\ : std_logic;
SIGNAL \inst_CE_12|Mult6~312\ : std_logic;
SIGNAL \inst_CE_12|Mult6~313\ : std_logic;
SIGNAL \inst_CE_12|Mult6~314\ : std_logic;
SIGNAL \inst_CE_12|Mult6~315\ : std_logic;
SIGNAL \inst_CE_12|Mult6~316\ : std_logic;
SIGNAL \inst_CE_12|Mult6~317\ : std_logic;
SIGNAL \inst_CE_12|Mult6~318\ : std_logic;
SIGNAL \inst_CE_12|Mult6~319\ : std_logic;
SIGNAL \inst_CE_12|Mult6~320\ : std_logic;
SIGNAL \inst_CE_12|Mult7~mac_resulta\ : std_logic;
SIGNAL \inst_CE_12|Mult7~304\ : std_logic;
SIGNAL \inst_CE_12|Mult7~305\ : std_logic;
SIGNAL \inst_CE_12|Mult7~306\ : std_logic;
SIGNAL \inst_CE_12|Mult7~307\ : std_logic;
SIGNAL \inst_CE_12|Mult7~308\ : std_logic;
SIGNAL \inst_CE_12|Mult7~309\ : std_logic;
SIGNAL \inst_CE_12|Mult7~310\ : std_logic;
SIGNAL \inst_CE_12|Mult7~311\ : std_logic;
SIGNAL \inst_CE_12|Mult7~312\ : std_logic;
SIGNAL \inst_CE_12|Mult7~313\ : std_logic;
SIGNAL \inst_CE_12|Mult7~314\ : std_logic;
SIGNAL \inst_CE_12|Mult7~315\ : std_logic;
SIGNAL \inst_CE_12|Mult7~316\ : std_logic;
SIGNAL \inst_CE_12|Mult7~317\ : std_logic;
SIGNAL \inst_CE_12|Mult7~318\ : std_logic;
SIGNAL \inst_CE_12|Mult7~319\ : std_logic;
SIGNAL \inst_CE_12|Mult7~320\ : std_logic;
SIGNAL \n_12[0]~input_o\ : std_logic;
SIGNAL \n_12[1]~input_o\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~1_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~0_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~2_combout\ : std_logic;
SIGNAL \inst_SE|_~1_sumout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~3_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~4_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~5_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~3_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~4_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~5_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~4_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~3_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~5_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~9_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~18_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~19_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~18_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~9_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~19_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~9_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~18_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~19_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~6_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~16_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~17_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~6_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~16_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~17_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~16_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~6_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~17_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~14_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~15_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~14_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~15_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~14_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~15_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~12_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~13_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~12_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~13_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~12_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~13_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~10_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~11_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~10_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~11_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~10_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~11_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~7_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~8_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~7_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~8_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~7_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~8_combout\ : std_logic;
SIGNAL \inst_SE|_~2\ : std_logic;
SIGNAL \inst_SE|_~3\ : std_logic;
SIGNAL \inst_SE|_~10\ : std_logic;
SIGNAL \inst_SE|_~11\ : std_logic;
SIGNAL \inst_SE|_~14\ : std_logic;
SIGNAL \inst_SE|_~15\ : std_logic;
SIGNAL \inst_SE|_~18\ : std_logic;
SIGNAL \inst_SE|_~19\ : std_logic;
SIGNAL \inst_SE|_~22\ : std_logic;
SIGNAL \inst_SE|_~23\ : std_logic;
SIGNAL \inst_SE|_~26\ : std_logic;
SIGNAL \inst_SE|_~27\ : std_logic;
SIGNAL \inst_SE|_~30\ : std_logic;
SIGNAL \inst_SE|_~31\ : std_logic;
SIGNAL \inst_SE|_~5_sumout\ : std_logic;
SIGNAL \inst_SE|_~9_sumout\ : std_logic;
SIGNAL \inst_SE|_~13_sumout\ : std_logic;
SIGNAL \inst_SE|_~17_sumout\ : std_logic;
SIGNAL \inst_SE|_~21_sumout\ : std_logic;
SIGNAL \inst_SE|_~25_sumout\ : std_logic;
SIGNAL \inst_SE|_~29_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_CE_12|sums\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_CE_11|sums\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|sums\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_SE|sum_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_in_data[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_in_data[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_in_data[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_n_11[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_n_11[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_n_11[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_n_12[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_n_12[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_n_12[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_n_13[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_n_13[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_n_13[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_enable~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit0~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit1~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit2~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit3~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit4~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit5~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit0~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit6~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit1~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit7~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit2~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~1_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit3~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_op_2~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit4~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_dffe3a\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_dffe7~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit5~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[2][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[2][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[2][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[2][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit6~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[0][6]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[0][5]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[0][3]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[0][2]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit7~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[1][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[1][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[1][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[1][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~1_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_op_2~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_dffe3a\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_dffe7~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][7]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][6]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][5]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][4]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][2]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][1]~q\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~19_combout\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~18_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~19_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~18_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~19_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~18_combout\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~17_combout\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~16_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~17_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~16_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~17_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~16_combout\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~15_combout\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~14_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~15_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~14_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~15_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~14_combout\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~13_combout\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~12_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~13_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~12_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~13_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~12_combout\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~11_combout\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~10_combout\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~9_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~11_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~10_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~9_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~11_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~10_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~9_combout\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~8_combout\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~7_combout\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~6_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~8_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~7_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~6_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~8_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~7_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~6_combout\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~5_combout\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~4_combout\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~3_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~5_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~4_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~3_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~5_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~4_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~3_combout\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~2_combout\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~1_combout\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_ShiftRight0~0_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~2_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~1_combout\ : std_logic;
SIGNAL \inst_CE_12|ALT_INV_ShiftRight0~0_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~2_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~1_combout\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_ShiftRight0~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[1][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[1][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[1][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[1][3]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[1][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[2][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[2][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[2][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[2][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][7]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][6]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][5]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][4]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][2]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][1]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][0]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[1][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[1][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[1][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita3~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita4~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita5~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita6~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita7~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_op_1~5_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita7~1_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita7~1_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita3~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita4~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a1\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a3\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a4\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a0~portbdataout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita5~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita6~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita7~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_op_1~5_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita7~1_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita7~1_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_CE_11|ALT_INV_sums\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst_CE_12|ALT_INV_sums\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst_CE_13|ALT_INV_sums\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a3\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a0~portbdataout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_enable <= enable;
ww_in_data <= in_data;
ww_w_11 <= w_11;
ww_w_12 <= w_12;
ww_w_13 <= w_13;
ww_n_11 <= n_11;
ww_n_12 <= n_12;
ww_n_13 <= n_13;
out_data <= ww_out_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst_CE_13|Add2~10_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_13|Add2~10_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_13|Add2~10_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_13|Add2~10_AX_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][6]~q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][5]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][4]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][3]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][2]~q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][1]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][0]~q\);

\inst_CE_13|Add2~10_AY_bus\ <= (\w_13[3][7]~input_o\ & \w_13[3][7]~input_o\ & \w_13[3][7]~input_o\ & \w_13[3][7]~input_o\ & \w_13[3][7]~input_o\ & \w_13[3][7]~input_o\ & \w_13[3][7]~input_o\ & \w_13[3][7]~input_o\ & \w_13[3][7]~input_o\ & 
\w_13[3][7]~input_o\ & \w_13[3][7]~input_o\ & \w_13[3][6]~input_o\ & \w_13[3][5]~input_o\ & \w_13[3][4]~input_o\ & \w_13[3][3]~input_o\ & \w_13[3][2]~input_o\ & \w_13[3][1]~input_o\ & \w_13[3][0]~input_o\);

\inst_CE_13|Add2~10_BX_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][6]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][3]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][0]~_Duplicate_3_q\);

\inst_CE_13|Add2~10_BY_bus\ <= (\w_13[2][7]~input_o\ & \w_13[2][7]~input_o\ & \w_13[2][7]~input_o\ & \w_13[2][7]~input_o\ & \w_13[2][7]~input_o\ & \w_13[2][7]~input_o\ & \w_13[2][7]~input_o\ & \w_13[2][7]~input_o\ & \w_13[2][7]~input_o\ & 
\w_13[2][7]~input_o\ & \w_13[2][7]~input_o\ & \w_13[2][6]~input_o\ & \w_13[2][5]~input_o\ & \w_13[2][4]~input_o\ & \w_13[2][3]~input_o\ & \w_13[2][2]~input_o\ & \w_13[2][1]~input_o\ & \w_13[2][0]~input_o\);

\inst_CE_13|Add2~10_CHAININ_bus\ <= (\inst_CE_13|Add2~522\ & \inst_CE_13|Add2~521\ & \inst_CE_13|Add2~520\ & \inst_CE_13|Add2~519\ & \inst_CE_13|Add2~518\ & \inst_CE_13|Add2~517\ & \inst_CE_13|Add2~516\ & \inst_CE_13|Add2~515\ & \inst_CE_13|Add2~514\ & 
\inst_CE_13|Add2~513\ & \inst_CE_13|Add2~512\ & \inst_CE_13|Add2~511\ & \inst_CE_13|Add2~510\ & \inst_CE_13|Add2~509\ & \inst_CE_13|Add2~508\ & \inst_CE_13|Add2~507\ & \inst_CE_13|Add2~506\ & \inst_CE_13|Add2~505\ & \inst_CE_13|Add2~504\ & 
\inst_CE_13|Add2~503\ & \inst_CE_13|Add2~502\ & \inst_CE_13|Add2~501\ & \inst_CE_13|Add2~500\ & \inst_CE_13|Add2~499\ & \inst_CE_13|Add2~498\ & \inst_CE_13|Add2~497\ & \inst_CE_13|Add2~496\ & \inst_CE_13|Add2~495\ & \inst_CE_13|Add2~494\ & 
\inst_CE_13|Add2~493\ & \inst_CE_13|Add2~492\ & \inst_CE_13|Add2~491\ & \inst_CE_13|Add2~490\ & \inst_CE_13|Add2~489\ & \inst_CE_13|Add2~488\ & \inst_CE_13|Add2~487\ & \inst_CE_13|Add2~486\ & \inst_CE_13|Add2~485\ & \inst_CE_13|Add2~484\ & 
\inst_CE_13|Add2~483\ & \inst_CE_13|Add2~482\ & \inst_CE_13|Add2~481\ & \inst_CE_13|Add2~480\ & \inst_CE_13|Add2~479\ & \inst_CE_13|Add2~478\ & \inst_CE_13|Add2~477\ & \inst_CE_13|Add2~476\ & \inst_CE_13|Add2~475\ & \inst_CE_13|Add2~474\ & 
\inst_CE_13|Add2~473\ & \inst_CE_13|Add2~472\ & \inst_CE_13|Add2~471\ & \inst_CE_13|Add2~470\ & \inst_CE_13|Add2~469\ & \inst_CE_13|Add2~468\ & \inst_CE_13|Add2~467\ & \inst_CE_13|Add2~466\ & \inst_CE_13|Add2~465\ & \inst_CE_13|Add2~464\ & 
\inst_CE_13|Add2~463\ & \inst_CE_13|Add2~462\ & \inst_CE_13|Add2~461\ & \inst_CE_13|Add2~460\ & \inst_CE_13|Add2~459\);

\inst_CE_13|Add2~10_resulta\ <= \inst_CE_13|Add2~10_RESULTA_bus\(0);
\inst_CE_13|Add2~11\ <= \inst_CE_13|Add2~10_RESULTA_bus\(1);
\inst_CE_13|Add2~12\ <= \inst_CE_13|Add2~10_RESULTA_bus\(2);
\inst_CE_13|Add2~13\ <= \inst_CE_13|Add2~10_RESULTA_bus\(3);
\inst_CE_13|Add2~14\ <= \inst_CE_13|Add2~10_RESULTA_bus\(4);
\inst_CE_13|Add2~15\ <= \inst_CE_13|Add2~10_RESULTA_bus\(5);
\inst_CE_13|Add2~16\ <= \inst_CE_13|Add2~10_RESULTA_bus\(6);
\inst_CE_13|Add2~17\ <= \inst_CE_13|Add2~10_RESULTA_bus\(7);
\inst_CE_13|Add2~18\ <= \inst_CE_13|Add2~10_RESULTA_bus\(8);
\inst_CE_13|Add2~19\ <= \inst_CE_13|Add2~10_RESULTA_bus\(9);
\inst_CE_13|Add2~20\ <= \inst_CE_13|Add2~10_RESULTA_bus\(10);
\inst_CE_13|Add2~21\ <= \inst_CE_13|Add2~10_RESULTA_bus\(11);
\inst_CE_13|Add2~22\ <= \inst_CE_13|Add2~10_RESULTA_bus\(12);
\inst_CE_13|Add2~23\ <= \inst_CE_13|Add2~10_RESULTA_bus\(13);
\inst_CE_13|Add2~24\ <= \inst_CE_13|Add2~10_RESULTA_bus\(14);
\inst_CE_13|Add2~25\ <= \inst_CE_13|Add2~10_RESULTA_bus\(15);
\inst_CE_13|Add2~26\ <= \inst_CE_13|Add2~10_RESULTA_bus\(16);
\inst_CE_13|Add2~27\ <= \inst_CE_13|Add2~10_RESULTA_bus\(17);
\inst_CE_13|Add2~28\ <= \inst_CE_13|Add2~10_RESULTA_bus\(18);
\inst_CE_13|Add2~29\ <= \inst_CE_13|Add2~10_RESULTA_bus\(19);
\inst_CE_13|Add2~30\ <= \inst_CE_13|Add2~10_RESULTA_bus\(20);
\inst_CE_13|Add2~31\ <= \inst_CE_13|Add2~10_RESULTA_bus\(21);
\inst_CE_13|Add2~32\ <= \inst_CE_13|Add2~10_RESULTA_bus\(22);
\inst_CE_13|Add2~33\ <= \inst_CE_13|Add2~10_RESULTA_bus\(23);
\inst_CE_13|Add2~34\ <= \inst_CE_13|Add2~10_RESULTA_bus\(24);
\inst_CE_13|Add2~35\ <= \inst_CE_13|Add2~10_RESULTA_bus\(25);
\inst_CE_13|Add2~36\ <= \inst_CE_13|Add2~10_RESULTA_bus\(26);
\inst_CE_13|Add2~37\ <= \inst_CE_13|Add2~10_RESULTA_bus\(27);
\inst_CE_13|Add2~38\ <= \inst_CE_13|Add2~10_RESULTA_bus\(28);
\inst_CE_13|Add2~39\ <= \inst_CE_13|Add2~10_RESULTA_bus\(29);
\inst_CE_13|Add2~40\ <= \inst_CE_13|Add2~10_RESULTA_bus\(30);
\inst_CE_13|Add2~41\ <= \inst_CE_13|Add2~10_RESULTA_bus\(31);
\inst_CE_13|Add2~42\ <= \inst_CE_13|Add2~10_RESULTA_bus\(32);
\inst_CE_13|Add2~43\ <= \inst_CE_13|Add2~10_RESULTA_bus\(33);
\inst_CE_13|Add2~44\ <= \inst_CE_13|Add2~10_RESULTA_bus\(34);
\inst_CE_13|Add2~45\ <= \inst_CE_13|Add2~10_RESULTA_bus\(35);
\inst_CE_13|Add2~46\ <= \inst_CE_13|Add2~10_RESULTA_bus\(36);
\inst_CE_13|Add2~47\ <= \inst_CE_13|Add2~10_RESULTA_bus\(37);
\inst_CE_13|Add2~48\ <= \inst_CE_13|Add2~10_RESULTA_bus\(38);
\inst_CE_13|Add2~49\ <= \inst_CE_13|Add2~10_RESULTA_bus\(39);
\inst_CE_13|Add2~50\ <= \inst_CE_13|Add2~10_RESULTA_bus\(40);
\inst_CE_13|Add2~51\ <= \inst_CE_13|Add2~10_RESULTA_bus\(41);
\inst_CE_13|Add2~52\ <= \inst_CE_13|Add2~10_RESULTA_bus\(42);
\inst_CE_13|Add2~53\ <= \inst_CE_13|Add2~10_RESULTA_bus\(43);
\inst_CE_13|Add2~54\ <= \inst_CE_13|Add2~10_RESULTA_bus\(44);
\inst_CE_13|Add2~55\ <= \inst_CE_13|Add2~10_RESULTA_bus\(45);
\inst_CE_13|Add2~56\ <= \inst_CE_13|Add2~10_RESULTA_bus\(46);
\inst_CE_13|Add2~57\ <= \inst_CE_13|Add2~10_RESULTA_bus\(47);
\inst_CE_13|Add2~58\ <= \inst_CE_13|Add2~10_RESULTA_bus\(48);
\inst_CE_13|Add2~59\ <= \inst_CE_13|Add2~10_RESULTA_bus\(49);
\inst_CE_13|Add2~60\ <= \inst_CE_13|Add2~10_RESULTA_bus\(50);
\inst_CE_13|Add2~61\ <= \inst_CE_13|Add2~10_RESULTA_bus\(51);
\inst_CE_13|Add2~62\ <= \inst_CE_13|Add2~10_RESULTA_bus\(52);
\inst_CE_13|Add2~63\ <= \inst_CE_13|Add2~10_RESULTA_bus\(53);
\inst_CE_13|Add2~64\ <= \inst_CE_13|Add2~10_RESULTA_bus\(54);
\inst_CE_13|Add2~65\ <= \inst_CE_13|Add2~10_RESULTA_bus\(55);
\inst_CE_13|Add2~66\ <= \inst_CE_13|Add2~10_RESULTA_bus\(56);
\inst_CE_13|Add2~67\ <= \inst_CE_13|Add2~10_RESULTA_bus\(57);
\inst_CE_13|Add2~68\ <= \inst_CE_13|Add2~10_RESULTA_bus\(58);
\inst_CE_13|Add2~69\ <= \inst_CE_13|Add2~10_RESULTA_bus\(59);
\inst_CE_13|Add2~70\ <= \inst_CE_13|Add2~10_RESULTA_bus\(60);
\inst_CE_13|Add2~71\ <= \inst_CE_13|Add2~10_RESULTA_bus\(61);
\inst_CE_13|Add2~72\ <= \inst_CE_13|Add2~10_RESULTA_bus\(62);
\inst_CE_13|Add2~73\ <= \inst_CE_13|Add2~10_RESULTA_bus\(63);

\inst_CE_12|Add2~10_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_12|Add2~10_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_12|Add2~10_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_12|Add2~10_AX_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][6]~q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][5]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][4]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][3]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][2]~q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][1]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][0]~q\);

\inst_CE_12|Add2~10_AY_bus\ <= (\w_12[3][7]~input_o\ & \w_12[3][7]~input_o\ & \w_12[3][7]~input_o\ & \w_12[3][7]~input_o\ & \w_12[3][7]~input_o\ & \w_12[3][7]~input_o\ & \w_12[3][7]~input_o\ & \w_12[3][7]~input_o\ & \w_12[3][7]~input_o\ & 
\w_12[3][7]~input_o\ & \w_12[3][7]~input_o\ & \w_12[3][6]~input_o\ & \w_12[3][5]~input_o\ & \w_12[3][4]~input_o\ & \w_12[3][3]~input_o\ & \w_12[3][2]~input_o\ & \w_12[3][1]~input_o\ & \w_12[3][0]~input_o\);

\inst_CE_12|Add2~10_BX_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][6]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][3]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][0]~_Duplicate_3_q\);

\inst_CE_12|Add2~10_BY_bus\ <= (\w_12[2][7]~input_o\ & \w_12[2][7]~input_o\ & \w_12[2][7]~input_o\ & \w_12[2][7]~input_o\ & \w_12[2][7]~input_o\ & \w_12[2][7]~input_o\ & \w_12[2][7]~input_o\ & \w_12[2][7]~input_o\ & \w_12[2][7]~input_o\ & 
\w_12[2][7]~input_o\ & \w_12[2][7]~input_o\ & \w_12[2][6]~input_o\ & \w_12[2][5]~input_o\ & \w_12[2][4]~input_o\ & \w_12[2][3]~input_o\ & \w_12[2][2]~input_o\ & \w_12[2][1]~input_o\ & \w_12[2][0]~input_o\);

\inst_CE_12|Add2~10_CHAININ_bus\ <= (\inst_CE_12|Add2~522\ & \inst_CE_12|Add2~521\ & \inst_CE_12|Add2~520\ & \inst_CE_12|Add2~519\ & \inst_CE_12|Add2~518\ & \inst_CE_12|Add2~517\ & \inst_CE_12|Add2~516\ & \inst_CE_12|Add2~515\ & \inst_CE_12|Add2~514\ & 
\inst_CE_12|Add2~513\ & \inst_CE_12|Add2~512\ & \inst_CE_12|Add2~511\ & \inst_CE_12|Add2~510\ & \inst_CE_12|Add2~509\ & \inst_CE_12|Add2~508\ & \inst_CE_12|Add2~507\ & \inst_CE_12|Add2~506\ & \inst_CE_12|Add2~505\ & \inst_CE_12|Add2~504\ & 
\inst_CE_12|Add2~503\ & \inst_CE_12|Add2~502\ & \inst_CE_12|Add2~501\ & \inst_CE_12|Add2~500\ & \inst_CE_12|Add2~499\ & \inst_CE_12|Add2~498\ & \inst_CE_12|Add2~497\ & \inst_CE_12|Add2~496\ & \inst_CE_12|Add2~495\ & \inst_CE_12|Add2~494\ & 
\inst_CE_12|Add2~493\ & \inst_CE_12|Add2~492\ & \inst_CE_12|Add2~491\ & \inst_CE_12|Add2~490\ & \inst_CE_12|Add2~489\ & \inst_CE_12|Add2~488\ & \inst_CE_12|Add2~487\ & \inst_CE_12|Add2~486\ & \inst_CE_12|Add2~485\ & \inst_CE_12|Add2~484\ & 
\inst_CE_12|Add2~483\ & \inst_CE_12|Add2~482\ & \inst_CE_12|Add2~481\ & \inst_CE_12|Add2~480\ & \inst_CE_12|Add2~479\ & \inst_CE_12|Add2~478\ & \inst_CE_12|Add2~477\ & \inst_CE_12|Add2~476\ & \inst_CE_12|Add2~475\ & \inst_CE_12|Add2~474\ & 
\inst_CE_12|Add2~473\ & \inst_CE_12|Add2~472\ & \inst_CE_12|Add2~471\ & \inst_CE_12|Add2~470\ & \inst_CE_12|Add2~469\ & \inst_CE_12|Add2~468\ & \inst_CE_12|Add2~467\ & \inst_CE_12|Add2~466\ & \inst_CE_12|Add2~465\ & \inst_CE_12|Add2~464\ & 
\inst_CE_12|Add2~463\ & \inst_CE_12|Add2~462\ & \inst_CE_12|Add2~461\ & \inst_CE_12|Add2~460\ & \inst_CE_12|Add2~459\);

\inst_CE_12|Add2~10_resulta\ <= \inst_CE_12|Add2~10_RESULTA_bus\(0);
\inst_CE_12|Add2~11\ <= \inst_CE_12|Add2~10_RESULTA_bus\(1);
\inst_CE_12|Add2~12\ <= \inst_CE_12|Add2~10_RESULTA_bus\(2);
\inst_CE_12|Add2~13\ <= \inst_CE_12|Add2~10_RESULTA_bus\(3);
\inst_CE_12|Add2~14\ <= \inst_CE_12|Add2~10_RESULTA_bus\(4);
\inst_CE_12|Add2~15\ <= \inst_CE_12|Add2~10_RESULTA_bus\(5);
\inst_CE_12|Add2~16\ <= \inst_CE_12|Add2~10_RESULTA_bus\(6);
\inst_CE_12|Add2~17\ <= \inst_CE_12|Add2~10_RESULTA_bus\(7);
\inst_CE_12|Add2~18\ <= \inst_CE_12|Add2~10_RESULTA_bus\(8);
\inst_CE_12|Add2~19\ <= \inst_CE_12|Add2~10_RESULTA_bus\(9);
\inst_CE_12|Add2~20\ <= \inst_CE_12|Add2~10_RESULTA_bus\(10);
\inst_CE_12|Add2~21\ <= \inst_CE_12|Add2~10_RESULTA_bus\(11);
\inst_CE_12|Add2~22\ <= \inst_CE_12|Add2~10_RESULTA_bus\(12);
\inst_CE_12|Add2~23\ <= \inst_CE_12|Add2~10_RESULTA_bus\(13);
\inst_CE_12|Add2~24\ <= \inst_CE_12|Add2~10_RESULTA_bus\(14);
\inst_CE_12|Add2~25\ <= \inst_CE_12|Add2~10_RESULTA_bus\(15);
\inst_CE_12|Add2~26\ <= \inst_CE_12|Add2~10_RESULTA_bus\(16);
\inst_CE_12|Add2~27\ <= \inst_CE_12|Add2~10_RESULTA_bus\(17);
\inst_CE_12|Add2~28\ <= \inst_CE_12|Add2~10_RESULTA_bus\(18);
\inst_CE_12|Add2~29\ <= \inst_CE_12|Add2~10_RESULTA_bus\(19);
\inst_CE_12|Add2~30\ <= \inst_CE_12|Add2~10_RESULTA_bus\(20);
\inst_CE_12|Add2~31\ <= \inst_CE_12|Add2~10_RESULTA_bus\(21);
\inst_CE_12|Add2~32\ <= \inst_CE_12|Add2~10_RESULTA_bus\(22);
\inst_CE_12|Add2~33\ <= \inst_CE_12|Add2~10_RESULTA_bus\(23);
\inst_CE_12|Add2~34\ <= \inst_CE_12|Add2~10_RESULTA_bus\(24);
\inst_CE_12|Add2~35\ <= \inst_CE_12|Add2~10_RESULTA_bus\(25);
\inst_CE_12|Add2~36\ <= \inst_CE_12|Add2~10_RESULTA_bus\(26);
\inst_CE_12|Add2~37\ <= \inst_CE_12|Add2~10_RESULTA_bus\(27);
\inst_CE_12|Add2~38\ <= \inst_CE_12|Add2~10_RESULTA_bus\(28);
\inst_CE_12|Add2~39\ <= \inst_CE_12|Add2~10_RESULTA_bus\(29);
\inst_CE_12|Add2~40\ <= \inst_CE_12|Add2~10_RESULTA_bus\(30);
\inst_CE_12|Add2~41\ <= \inst_CE_12|Add2~10_RESULTA_bus\(31);
\inst_CE_12|Add2~42\ <= \inst_CE_12|Add2~10_RESULTA_bus\(32);
\inst_CE_12|Add2~43\ <= \inst_CE_12|Add2~10_RESULTA_bus\(33);
\inst_CE_12|Add2~44\ <= \inst_CE_12|Add2~10_RESULTA_bus\(34);
\inst_CE_12|Add2~45\ <= \inst_CE_12|Add2~10_RESULTA_bus\(35);
\inst_CE_12|Add2~46\ <= \inst_CE_12|Add2~10_RESULTA_bus\(36);
\inst_CE_12|Add2~47\ <= \inst_CE_12|Add2~10_RESULTA_bus\(37);
\inst_CE_12|Add2~48\ <= \inst_CE_12|Add2~10_RESULTA_bus\(38);
\inst_CE_12|Add2~49\ <= \inst_CE_12|Add2~10_RESULTA_bus\(39);
\inst_CE_12|Add2~50\ <= \inst_CE_12|Add2~10_RESULTA_bus\(40);
\inst_CE_12|Add2~51\ <= \inst_CE_12|Add2~10_RESULTA_bus\(41);
\inst_CE_12|Add2~52\ <= \inst_CE_12|Add2~10_RESULTA_bus\(42);
\inst_CE_12|Add2~53\ <= \inst_CE_12|Add2~10_RESULTA_bus\(43);
\inst_CE_12|Add2~54\ <= \inst_CE_12|Add2~10_RESULTA_bus\(44);
\inst_CE_12|Add2~55\ <= \inst_CE_12|Add2~10_RESULTA_bus\(45);
\inst_CE_12|Add2~56\ <= \inst_CE_12|Add2~10_RESULTA_bus\(46);
\inst_CE_12|Add2~57\ <= \inst_CE_12|Add2~10_RESULTA_bus\(47);
\inst_CE_12|Add2~58\ <= \inst_CE_12|Add2~10_RESULTA_bus\(48);
\inst_CE_12|Add2~59\ <= \inst_CE_12|Add2~10_RESULTA_bus\(49);
\inst_CE_12|Add2~60\ <= \inst_CE_12|Add2~10_RESULTA_bus\(50);
\inst_CE_12|Add2~61\ <= \inst_CE_12|Add2~10_RESULTA_bus\(51);
\inst_CE_12|Add2~62\ <= \inst_CE_12|Add2~10_RESULTA_bus\(52);
\inst_CE_12|Add2~63\ <= \inst_CE_12|Add2~10_RESULTA_bus\(53);
\inst_CE_12|Add2~64\ <= \inst_CE_12|Add2~10_RESULTA_bus\(54);
\inst_CE_12|Add2~65\ <= \inst_CE_12|Add2~10_RESULTA_bus\(55);
\inst_CE_12|Add2~66\ <= \inst_CE_12|Add2~10_RESULTA_bus\(56);
\inst_CE_12|Add2~67\ <= \inst_CE_12|Add2~10_RESULTA_bus\(57);
\inst_CE_12|Add2~68\ <= \inst_CE_12|Add2~10_RESULTA_bus\(58);
\inst_CE_12|Add2~69\ <= \inst_CE_12|Add2~10_RESULTA_bus\(59);
\inst_CE_12|Add2~70\ <= \inst_CE_12|Add2~10_RESULTA_bus\(60);
\inst_CE_12|Add2~71\ <= \inst_CE_12|Add2~10_RESULTA_bus\(61);
\inst_CE_12|Add2~72\ <= \inst_CE_12|Add2~10_RESULTA_bus\(62);
\inst_CE_12|Add2~73\ <= \inst_CE_12|Add2~10_RESULTA_bus\(63);

\inst_CE_11|Add2~10_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_11|Add2~10_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_11|Add2~10_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_11|Add2~10_AX_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][6]~q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][5]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][4]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][3]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][2]~q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][1]~q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][0]~q\);

\inst_CE_11|Add2~10_AY_bus\ <= (\w_11[3][7]~input_o\ & \w_11[3][7]~input_o\ & \w_11[3][7]~input_o\ & \w_11[3][7]~input_o\ & \w_11[3][7]~input_o\ & \w_11[3][7]~input_o\ & \w_11[3][7]~input_o\ & \w_11[3][7]~input_o\ & \w_11[3][7]~input_o\ & 
\w_11[3][7]~input_o\ & \w_11[3][7]~input_o\ & \w_11[3][6]~input_o\ & \w_11[3][5]~input_o\ & \w_11[3][4]~input_o\ & \w_11[3][3]~input_o\ & \w_11[3][2]~input_o\ & \w_11[3][1]~input_o\ & \w_11[3][0]~input_o\);

\inst_CE_11|Add2~10_BX_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][6]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][3]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][0]~_Duplicate_3_q\);

\inst_CE_11|Add2~10_BY_bus\ <= (\w_11[2][7]~input_o\ & \w_11[2][7]~input_o\ & \w_11[2][7]~input_o\ & \w_11[2][7]~input_o\ & \w_11[2][7]~input_o\ & \w_11[2][7]~input_o\ & \w_11[2][7]~input_o\ & \w_11[2][7]~input_o\ & \w_11[2][7]~input_o\ & 
\w_11[2][7]~input_o\ & \w_11[2][7]~input_o\ & \w_11[2][6]~input_o\ & \w_11[2][5]~input_o\ & \w_11[2][4]~input_o\ & \w_11[2][3]~input_o\ & \w_11[2][2]~input_o\ & \w_11[2][1]~input_o\ & \w_11[2][0]~input_o\);

\inst_CE_11|Add2~10_CHAININ_bus\ <= (\inst_CE_11|Add2~522\ & \inst_CE_11|Add2~521\ & \inst_CE_11|Add2~520\ & \inst_CE_11|Add2~519\ & \inst_CE_11|Add2~518\ & \inst_CE_11|Add2~517\ & \inst_CE_11|Add2~516\ & \inst_CE_11|Add2~515\ & \inst_CE_11|Add2~514\ & 
\inst_CE_11|Add2~513\ & \inst_CE_11|Add2~512\ & \inst_CE_11|Add2~511\ & \inst_CE_11|Add2~510\ & \inst_CE_11|Add2~509\ & \inst_CE_11|Add2~508\ & \inst_CE_11|Add2~507\ & \inst_CE_11|Add2~506\ & \inst_CE_11|Add2~505\ & \inst_CE_11|Add2~504\ & 
\inst_CE_11|Add2~503\ & \inst_CE_11|Add2~502\ & \inst_CE_11|Add2~501\ & \inst_CE_11|Add2~500\ & \inst_CE_11|Add2~499\ & \inst_CE_11|Add2~498\ & \inst_CE_11|Add2~497\ & \inst_CE_11|Add2~496\ & \inst_CE_11|Add2~495\ & \inst_CE_11|Add2~494\ & 
\inst_CE_11|Add2~493\ & \inst_CE_11|Add2~492\ & \inst_CE_11|Add2~491\ & \inst_CE_11|Add2~490\ & \inst_CE_11|Add2~489\ & \inst_CE_11|Add2~488\ & \inst_CE_11|Add2~487\ & \inst_CE_11|Add2~486\ & \inst_CE_11|Add2~485\ & \inst_CE_11|Add2~484\ & 
\inst_CE_11|Add2~483\ & \inst_CE_11|Add2~482\ & \inst_CE_11|Add2~481\ & \inst_CE_11|Add2~480\ & \inst_CE_11|Add2~479\ & \inst_CE_11|Add2~478\ & \inst_CE_11|Add2~477\ & \inst_CE_11|Add2~476\ & \inst_CE_11|Add2~475\ & \inst_CE_11|Add2~474\ & 
\inst_CE_11|Add2~473\ & \inst_CE_11|Add2~472\ & \inst_CE_11|Add2~471\ & \inst_CE_11|Add2~470\ & \inst_CE_11|Add2~469\ & \inst_CE_11|Add2~468\ & \inst_CE_11|Add2~467\ & \inst_CE_11|Add2~466\ & \inst_CE_11|Add2~465\ & \inst_CE_11|Add2~464\ & 
\inst_CE_11|Add2~463\ & \inst_CE_11|Add2~462\ & \inst_CE_11|Add2~461\ & \inst_CE_11|Add2~460\ & \inst_CE_11|Add2~459\);

\inst_CE_11|Add2~10_resulta\ <= \inst_CE_11|Add2~10_RESULTA_bus\(0);
\inst_CE_11|Add2~11\ <= \inst_CE_11|Add2~10_RESULTA_bus\(1);
\inst_CE_11|Add2~12\ <= \inst_CE_11|Add2~10_RESULTA_bus\(2);
\inst_CE_11|Add2~13\ <= \inst_CE_11|Add2~10_RESULTA_bus\(3);
\inst_CE_11|Add2~14\ <= \inst_CE_11|Add2~10_RESULTA_bus\(4);
\inst_CE_11|Add2~15\ <= \inst_CE_11|Add2~10_RESULTA_bus\(5);
\inst_CE_11|Add2~16\ <= \inst_CE_11|Add2~10_RESULTA_bus\(6);
\inst_CE_11|Add2~17\ <= \inst_CE_11|Add2~10_RESULTA_bus\(7);
\inst_CE_11|Add2~18\ <= \inst_CE_11|Add2~10_RESULTA_bus\(8);
\inst_CE_11|Add2~19\ <= \inst_CE_11|Add2~10_RESULTA_bus\(9);
\inst_CE_11|Add2~20\ <= \inst_CE_11|Add2~10_RESULTA_bus\(10);
\inst_CE_11|Add2~21\ <= \inst_CE_11|Add2~10_RESULTA_bus\(11);
\inst_CE_11|Add2~22\ <= \inst_CE_11|Add2~10_RESULTA_bus\(12);
\inst_CE_11|Add2~23\ <= \inst_CE_11|Add2~10_RESULTA_bus\(13);
\inst_CE_11|Add2~24\ <= \inst_CE_11|Add2~10_RESULTA_bus\(14);
\inst_CE_11|Add2~25\ <= \inst_CE_11|Add2~10_RESULTA_bus\(15);
\inst_CE_11|Add2~26\ <= \inst_CE_11|Add2~10_RESULTA_bus\(16);
\inst_CE_11|Add2~27\ <= \inst_CE_11|Add2~10_RESULTA_bus\(17);
\inst_CE_11|Add2~28\ <= \inst_CE_11|Add2~10_RESULTA_bus\(18);
\inst_CE_11|Add2~29\ <= \inst_CE_11|Add2~10_RESULTA_bus\(19);
\inst_CE_11|Add2~30\ <= \inst_CE_11|Add2~10_RESULTA_bus\(20);
\inst_CE_11|Add2~31\ <= \inst_CE_11|Add2~10_RESULTA_bus\(21);
\inst_CE_11|Add2~32\ <= \inst_CE_11|Add2~10_RESULTA_bus\(22);
\inst_CE_11|Add2~33\ <= \inst_CE_11|Add2~10_RESULTA_bus\(23);
\inst_CE_11|Add2~34\ <= \inst_CE_11|Add2~10_RESULTA_bus\(24);
\inst_CE_11|Add2~35\ <= \inst_CE_11|Add2~10_RESULTA_bus\(25);
\inst_CE_11|Add2~36\ <= \inst_CE_11|Add2~10_RESULTA_bus\(26);
\inst_CE_11|Add2~37\ <= \inst_CE_11|Add2~10_RESULTA_bus\(27);
\inst_CE_11|Add2~38\ <= \inst_CE_11|Add2~10_RESULTA_bus\(28);
\inst_CE_11|Add2~39\ <= \inst_CE_11|Add2~10_RESULTA_bus\(29);
\inst_CE_11|Add2~40\ <= \inst_CE_11|Add2~10_RESULTA_bus\(30);
\inst_CE_11|Add2~41\ <= \inst_CE_11|Add2~10_RESULTA_bus\(31);
\inst_CE_11|Add2~42\ <= \inst_CE_11|Add2~10_RESULTA_bus\(32);
\inst_CE_11|Add2~43\ <= \inst_CE_11|Add2~10_RESULTA_bus\(33);
\inst_CE_11|Add2~44\ <= \inst_CE_11|Add2~10_RESULTA_bus\(34);
\inst_CE_11|Add2~45\ <= \inst_CE_11|Add2~10_RESULTA_bus\(35);
\inst_CE_11|Add2~46\ <= \inst_CE_11|Add2~10_RESULTA_bus\(36);
\inst_CE_11|Add2~47\ <= \inst_CE_11|Add2~10_RESULTA_bus\(37);
\inst_CE_11|Add2~48\ <= \inst_CE_11|Add2~10_RESULTA_bus\(38);
\inst_CE_11|Add2~49\ <= \inst_CE_11|Add2~10_RESULTA_bus\(39);
\inst_CE_11|Add2~50\ <= \inst_CE_11|Add2~10_RESULTA_bus\(40);
\inst_CE_11|Add2~51\ <= \inst_CE_11|Add2~10_RESULTA_bus\(41);
\inst_CE_11|Add2~52\ <= \inst_CE_11|Add2~10_RESULTA_bus\(42);
\inst_CE_11|Add2~53\ <= \inst_CE_11|Add2~10_RESULTA_bus\(43);
\inst_CE_11|Add2~54\ <= \inst_CE_11|Add2~10_RESULTA_bus\(44);
\inst_CE_11|Add2~55\ <= \inst_CE_11|Add2~10_RESULTA_bus\(45);
\inst_CE_11|Add2~56\ <= \inst_CE_11|Add2~10_RESULTA_bus\(46);
\inst_CE_11|Add2~57\ <= \inst_CE_11|Add2~10_RESULTA_bus\(47);
\inst_CE_11|Add2~58\ <= \inst_CE_11|Add2~10_RESULTA_bus\(48);
\inst_CE_11|Add2~59\ <= \inst_CE_11|Add2~10_RESULTA_bus\(49);
\inst_CE_11|Add2~60\ <= \inst_CE_11|Add2~10_RESULTA_bus\(50);
\inst_CE_11|Add2~61\ <= \inst_CE_11|Add2~10_RESULTA_bus\(51);
\inst_CE_11|Add2~62\ <= \inst_CE_11|Add2~10_RESULTA_bus\(52);
\inst_CE_11|Add2~63\ <= \inst_CE_11|Add2~10_RESULTA_bus\(53);
\inst_CE_11|Add2~64\ <= \inst_CE_11|Add2~10_RESULTA_bus\(54);
\inst_CE_11|Add2~65\ <= \inst_CE_11|Add2~10_RESULTA_bus\(55);
\inst_CE_11|Add2~66\ <= \inst_CE_11|Add2~10_RESULTA_bus\(56);
\inst_CE_11|Add2~67\ <= \inst_CE_11|Add2~10_RESULTA_bus\(57);
\inst_CE_11|Add2~68\ <= \inst_CE_11|Add2~10_RESULTA_bus\(58);
\inst_CE_11|Add2~69\ <= \inst_CE_11|Add2~10_RESULTA_bus\(59);
\inst_CE_11|Add2~70\ <= \inst_CE_11|Add2~10_RESULTA_bus\(60);
\inst_CE_11|Add2~71\ <= \inst_CE_11|Add2~10_RESULTA_bus\(61);
\inst_CE_11|Add2~72\ <= \inst_CE_11|Add2~10_RESULTA_bus\(62);
\inst_CE_11|Add2~73\ <= \inst_CE_11|Add2~10_RESULTA_bus\(63);

\inst_CE_13|Add2~332_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_13|Add2~332_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_13|Add2~332_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_13|Add2~332_AX_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][6]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][0]~_Duplicate_3_q\);

\inst_CE_13|Add2~332_AY_bus\ <= (\w_13[1][7]~input_o\ & \w_13[1][7]~input_o\ & \w_13[1][7]~input_o\ & \w_13[1][7]~input_o\ & \w_13[1][7]~input_o\ & \w_13[1][7]~input_o\ & \w_13[1][7]~input_o\ & \w_13[1][7]~input_o\ & \w_13[1][7]~input_o\ & 
\w_13[1][7]~input_o\ & \w_13[1][7]~input_o\ & \w_13[1][6]~input_o\ & \w_13[1][5]~input_o\ & \w_13[1][4]~input_o\ & \w_13[1][3]~input_o\ & \w_13[1][2]~input_o\ & \w_13[1][1]~input_o\ & \w_13[1][0]~input_o\);

\inst_CE_13|Add2~332_BX_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][5]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][4]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][0]~q\);

\inst_CE_13|Add2~332_BY_bus\ <= (\w_13[0][7]~input_o\ & \w_13[0][7]~input_o\ & \w_13[0][7]~input_o\ & \w_13[0][7]~input_o\ & \w_13[0][7]~input_o\ & \w_13[0][7]~input_o\ & \w_13[0][7]~input_o\ & \w_13[0][7]~input_o\ & \w_13[0][7]~input_o\ & 
\w_13[0][7]~input_o\ & \w_13[0][7]~input_o\ & \w_13[0][6]~input_o\ & \w_13[0][5]~input_o\ & \w_13[0][4]~input_o\ & \w_13[0][3]~input_o\ & \w_13[0][2]~input_o\ & \w_13[0][1]~input_o\ & \w_13[0][0]~input_o\);

\inst_CE_13|Add2~332_resulta\ <= \inst_CE_13|Add2~332_RESULTA_bus\(0);
\inst_CE_13|Add2~333\ <= \inst_CE_13|Add2~332_RESULTA_bus\(1);
\inst_CE_13|Add2~334\ <= \inst_CE_13|Add2~332_RESULTA_bus\(2);
\inst_CE_13|Add2~335\ <= \inst_CE_13|Add2~332_RESULTA_bus\(3);
\inst_CE_13|Add2~336\ <= \inst_CE_13|Add2~332_RESULTA_bus\(4);
\inst_CE_13|Add2~337\ <= \inst_CE_13|Add2~332_RESULTA_bus\(5);
\inst_CE_13|Add2~338\ <= \inst_CE_13|Add2~332_RESULTA_bus\(6);
\inst_CE_13|Add2~339\ <= \inst_CE_13|Add2~332_RESULTA_bus\(7);
\inst_CE_13|Add2~340\ <= \inst_CE_13|Add2~332_RESULTA_bus\(8);
\inst_CE_13|Add2~341\ <= \inst_CE_13|Add2~332_RESULTA_bus\(9);
\inst_CE_13|Add2~342\ <= \inst_CE_13|Add2~332_RESULTA_bus\(10);
\inst_CE_13|Add2~343\ <= \inst_CE_13|Add2~332_RESULTA_bus\(11);
\inst_CE_13|Add2~344\ <= \inst_CE_13|Add2~332_RESULTA_bus\(12);
\inst_CE_13|Add2~345\ <= \inst_CE_13|Add2~332_RESULTA_bus\(13);
\inst_CE_13|Add2~346\ <= \inst_CE_13|Add2~332_RESULTA_bus\(14);
\inst_CE_13|Add2~347\ <= \inst_CE_13|Add2~332_RESULTA_bus\(15);
\inst_CE_13|Add2~348\ <= \inst_CE_13|Add2~332_RESULTA_bus\(16);
\inst_CE_13|Add2~349\ <= \inst_CE_13|Add2~332_RESULTA_bus\(17);
\inst_CE_13|Add2~350\ <= \inst_CE_13|Add2~332_RESULTA_bus\(18);
\inst_CE_13|Add2~351\ <= \inst_CE_13|Add2~332_RESULTA_bus\(19);
\inst_CE_13|Add2~352\ <= \inst_CE_13|Add2~332_RESULTA_bus\(20);
\inst_CE_13|Add2~353\ <= \inst_CE_13|Add2~332_RESULTA_bus\(21);
\inst_CE_13|Add2~354\ <= \inst_CE_13|Add2~332_RESULTA_bus\(22);
\inst_CE_13|Add2~355\ <= \inst_CE_13|Add2~332_RESULTA_bus\(23);
\inst_CE_13|Add2~356\ <= \inst_CE_13|Add2~332_RESULTA_bus\(24);
\inst_CE_13|Add2~357\ <= \inst_CE_13|Add2~332_RESULTA_bus\(25);
\inst_CE_13|Add2~358\ <= \inst_CE_13|Add2~332_RESULTA_bus\(26);
\inst_CE_13|Add2~359\ <= \inst_CE_13|Add2~332_RESULTA_bus\(27);
\inst_CE_13|Add2~360\ <= \inst_CE_13|Add2~332_RESULTA_bus\(28);
\inst_CE_13|Add2~361\ <= \inst_CE_13|Add2~332_RESULTA_bus\(29);
\inst_CE_13|Add2~362\ <= \inst_CE_13|Add2~332_RESULTA_bus\(30);
\inst_CE_13|Add2~363\ <= \inst_CE_13|Add2~332_RESULTA_bus\(31);
\inst_CE_13|Add2~364\ <= \inst_CE_13|Add2~332_RESULTA_bus\(32);
\inst_CE_13|Add2~365\ <= \inst_CE_13|Add2~332_RESULTA_bus\(33);
\inst_CE_13|Add2~366\ <= \inst_CE_13|Add2~332_RESULTA_bus\(34);
\inst_CE_13|Add2~367\ <= \inst_CE_13|Add2~332_RESULTA_bus\(35);
\inst_CE_13|Add2~368\ <= \inst_CE_13|Add2~332_RESULTA_bus\(36);
\inst_CE_13|Add2~369\ <= \inst_CE_13|Add2~332_RESULTA_bus\(37);
\inst_CE_13|Add2~370\ <= \inst_CE_13|Add2~332_RESULTA_bus\(38);
\inst_CE_13|Add2~371\ <= \inst_CE_13|Add2~332_RESULTA_bus\(39);
\inst_CE_13|Add2~372\ <= \inst_CE_13|Add2~332_RESULTA_bus\(40);
\inst_CE_13|Add2~373\ <= \inst_CE_13|Add2~332_RESULTA_bus\(41);
\inst_CE_13|Add2~374\ <= \inst_CE_13|Add2~332_RESULTA_bus\(42);
\inst_CE_13|Add2~375\ <= \inst_CE_13|Add2~332_RESULTA_bus\(43);
\inst_CE_13|Add2~376\ <= \inst_CE_13|Add2~332_RESULTA_bus\(44);
\inst_CE_13|Add2~377\ <= \inst_CE_13|Add2~332_RESULTA_bus\(45);
\inst_CE_13|Add2~378\ <= \inst_CE_13|Add2~332_RESULTA_bus\(46);
\inst_CE_13|Add2~379\ <= \inst_CE_13|Add2~332_RESULTA_bus\(47);
\inst_CE_13|Add2~380\ <= \inst_CE_13|Add2~332_RESULTA_bus\(48);
\inst_CE_13|Add2~381\ <= \inst_CE_13|Add2~332_RESULTA_bus\(49);
\inst_CE_13|Add2~382\ <= \inst_CE_13|Add2~332_RESULTA_bus\(50);
\inst_CE_13|Add2~383\ <= \inst_CE_13|Add2~332_RESULTA_bus\(51);
\inst_CE_13|Add2~384\ <= \inst_CE_13|Add2~332_RESULTA_bus\(52);
\inst_CE_13|Add2~385\ <= \inst_CE_13|Add2~332_RESULTA_bus\(53);
\inst_CE_13|Add2~386\ <= \inst_CE_13|Add2~332_RESULTA_bus\(54);
\inst_CE_13|Add2~387\ <= \inst_CE_13|Add2~332_RESULTA_bus\(55);
\inst_CE_13|Add2~388\ <= \inst_CE_13|Add2~332_RESULTA_bus\(56);
\inst_CE_13|Add2~389\ <= \inst_CE_13|Add2~332_RESULTA_bus\(57);
\inst_CE_13|Add2~390\ <= \inst_CE_13|Add2~332_RESULTA_bus\(58);
\inst_CE_13|Add2~391\ <= \inst_CE_13|Add2~332_RESULTA_bus\(59);
\inst_CE_13|Add2~392\ <= \inst_CE_13|Add2~332_RESULTA_bus\(60);
\inst_CE_13|Add2~393\ <= \inst_CE_13|Add2~332_RESULTA_bus\(61);
\inst_CE_13|Add2~394\ <= \inst_CE_13|Add2~332_RESULTA_bus\(62);
\inst_CE_13|Add2~395\ <= \inst_CE_13|Add2~332_RESULTA_bus\(63);

\inst_CE_13|Add2~459\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(0);
\inst_CE_13|Add2~460\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(1);
\inst_CE_13|Add2~461\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(2);
\inst_CE_13|Add2~462\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(3);
\inst_CE_13|Add2~463\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(4);
\inst_CE_13|Add2~464\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(5);
\inst_CE_13|Add2~465\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(6);
\inst_CE_13|Add2~466\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(7);
\inst_CE_13|Add2~467\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(8);
\inst_CE_13|Add2~468\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(9);
\inst_CE_13|Add2~469\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(10);
\inst_CE_13|Add2~470\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(11);
\inst_CE_13|Add2~471\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(12);
\inst_CE_13|Add2~472\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(13);
\inst_CE_13|Add2~473\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(14);
\inst_CE_13|Add2~474\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(15);
\inst_CE_13|Add2~475\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(16);
\inst_CE_13|Add2~476\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(17);
\inst_CE_13|Add2~477\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(18);
\inst_CE_13|Add2~478\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(19);
\inst_CE_13|Add2~479\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(20);
\inst_CE_13|Add2~480\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(21);
\inst_CE_13|Add2~481\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(22);
\inst_CE_13|Add2~482\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(23);
\inst_CE_13|Add2~483\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(24);
\inst_CE_13|Add2~484\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(25);
\inst_CE_13|Add2~485\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(26);
\inst_CE_13|Add2~486\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(27);
\inst_CE_13|Add2~487\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(28);
\inst_CE_13|Add2~488\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(29);
\inst_CE_13|Add2~489\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(30);
\inst_CE_13|Add2~490\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(31);
\inst_CE_13|Add2~491\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(32);
\inst_CE_13|Add2~492\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(33);
\inst_CE_13|Add2~493\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(34);
\inst_CE_13|Add2~494\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(35);
\inst_CE_13|Add2~495\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(36);
\inst_CE_13|Add2~496\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(37);
\inst_CE_13|Add2~497\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(38);
\inst_CE_13|Add2~498\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(39);
\inst_CE_13|Add2~499\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(40);
\inst_CE_13|Add2~500\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(41);
\inst_CE_13|Add2~501\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(42);
\inst_CE_13|Add2~502\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(43);
\inst_CE_13|Add2~503\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(44);
\inst_CE_13|Add2~504\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(45);
\inst_CE_13|Add2~505\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(46);
\inst_CE_13|Add2~506\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(47);
\inst_CE_13|Add2~507\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(48);
\inst_CE_13|Add2~508\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(49);
\inst_CE_13|Add2~509\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(50);
\inst_CE_13|Add2~510\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(51);
\inst_CE_13|Add2~511\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(52);
\inst_CE_13|Add2~512\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(53);
\inst_CE_13|Add2~513\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(54);
\inst_CE_13|Add2~514\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(55);
\inst_CE_13|Add2~515\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(56);
\inst_CE_13|Add2~516\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(57);
\inst_CE_13|Add2~517\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(58);
\inst_CE_13|Add2~518\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(59);
\inst_CE_13|Add2~519\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(60);
\inst_CE_13|Add2~520\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(61);
\inst_CE_13|Add2~521\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(62);
\inst_CE_13|Add2~522\ <= \inst_CE_13|Add2~332_CHAINOUT_bus\(63);

\inst_CE_12|Add2~332_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_12|Add2~332_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_12|Add2~332_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_12|Add2~332_AX_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][6]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][0]~_Duplicate_3_q\);

\inst_CE_12|Add2~332_AY_bus\ <= (\w_12[1][7]~input_o\ & \w_12[1][7]~input_o\ & \w_12[1][7]~input_o\ & \w_12[1][7]~input_o\ & \w_12[1][7]~input_o\ & \w_12[1][7]~input_o\ & \w_12[1][7]~input_o\ & \w_12[1][7]~input_o\ & \w_12[1][7]~input_o\ & 
\w_12[1][7]~input_o\ & \w_12[1][7]~input_o\ & \w_12[1][6]~input_o\ & \w_12[1][5]~input_o\ & \w_12[1][4]~input_o\ & \w_12[1][3]~input_o\ & \w_12[1][2]~input_o\ & \w_12[1][1]~input_o\ & \w_12[1][0]~input_o\);

\inst_CE_12|Add2~332_BX_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][5]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][4]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][0]~q\);

\inst_CE_12|Add2~332_BY_bus\ <= (\w_12[0][7]~input_o\ & \w_12[0][7]~input_o\ & \w_12[0][7]~input_o\ & \w_12[0][7]~input_o\ & \w_12[0][7]~input_o\ & \w_12[0][7]~input_o\ & \w_12[0][7]~input_o\ & \w_12[0][7]~input_o\ & \w_12[0][7]~input_o\ & 
\w_12[0][7]~input_o\ & \w_12[0][7]~input_o\ & \w_12[0][6]~input_o\ & \w_12[0][5]~input_o\ & \w_12[0][4]~input_o\ & \w_12[0][3]~input_o\ & \w_12[0][2]~input_o\ & \w_12[0][1]~input_o\ & \w_12[0][0]~input_o\);

\inst_CE_12|Add2~332_resulta\ <= \inst_CE_12|Add2~332_RESULTA_bus\(0);
\inst_CE_12|Add2~333\ <= \inst_CE_12|Add2~332_RESULTA_bus\(1);
\inst_CE_12|Add2~334\ <= \inst_CE_12|Add2~332_RESULTA_bus\(2);
\inst_CE_12|Add2~335\ <= \inst_CE_12|Add2~332_RESULTA_bus\(3);
\inst_CE_12|Add2~336\ <= \inst_CE_12|Add2~332_RESULTA_bus\(4);
\inst_CE_12|Add2~337\ <= \inst_CE_12|Add2~332_RESULTA_bus\(5);
\inst_CE_12|Add2~338\ <= \inst_CE_12|Add2~332_RESULTA_bus\(6);
\inst_CE_12|Add2~339\ <= \inst_CE_12|Add2~332_RESULTA_bus\(7);
\inst_CE_12|Add2~340\ <= \inst_CE_12|Add2~332_RESULTA_bus\(8);
\inst_CE_12|Add2~341\ <= \inst_CE_12|Add2~332_RESULTA_bus\(9);
\inst_CE_12|Add2~342\ <= \inst_CE_12|Add2~332_RESULTA_bus\(10);
\inst_CE_12|Add2~343\ <= \inst_CE_12|Add2~332_RESULTA_bus\(11);
\inst_CE_12|Add2~344\ <= \inst_CE_12|Add2~332_RESULTA_bus\(12);
\inst_CE_12|Add2~345\ <= \inst_CE_12|Add2~332_RESULTA_bus\(13);
\inst_CE_12|Add2~346\ <= \inst_CE_12|Add2~332_RESULTA_bus\(14);
\inst_CE_12|Add2~347\ <= \inst_CE_12|Add2~332_RESULTA_bus\(15);
\inst_CE_12|Add2~348\ <= \inst_CE_12|Add2~332_RESULTA_bus\(16);
\inst_CE_12|Add2~349\ <= \inst_CE_12|Add2~332_RESULTA_bus\(17);
\inst_CE_12|Add2~350\ <= \inst_CE_12|Add2~332_RESULTA_bus\(18);
\inst_CE_12|Add2~351\ <= \inst_CE_12|Add2~332_RESULTA_bus\(19);
\inst_CE_12|Add2~352\ <= \inst_CE_12|Add2~332_RESULTA_bus\(20);
\inst_CE_12|Add2~353\ <= \inst_CE_12|Add2~332_RESULTA_bus\(21);
\inst_CE_12|Add2~354\ <= \inst_CE_12|Add2~332_RESULTA_bus\(22);
\inst_CE_12|Add2~355\ <= \inst_CE_12|Add2~332_RESULTA_bus\(23);
\inst_CE_12|Add2~356\ <= \inst_CE_12|Add2~332_RESULTA_bus\(24);
\inst_CE_12|Add2~357\ <= \inst_CE_12|Add2~332_RESULTA_bus\(25);
\inst_CE_12|Add2~358\ <= \inst_CE_12|Add2~332_RESULTA_bus\(26);
\inst_CE_12|Add2~359\ <= \inst_CE_12|Add2~332_RESULTA_bus\(27);
\inst_CE_12|Add2~360\ <= \inst_CE_12|Add2~332_RESULTA_bus\(28);
\inst_CE_12|Add2~361\ <= \inst_CE_12|Add2~332_RESULTA_bus\(29);
\inst_CE_12|Add2~362\ <= \inst_CE_12|Add2~332_RESULTA_bus\(30);
\inst_CE_12|Add2~363\ <= \inst_CE_12|Add2~332_RESULTA_bus\(31);
\inst_CE_12|Add2~364\ <= \inst_CE_12|Add2~332_RESULTA_bus\(32);
\inst_CE_12|Add2~365\ <= \inst_CE_12|Add2~332_RESULTA_bus\(33);
\inst_CE_12|Add2~366\ <= \inst_CE_12|Add2~332_RESULTA_bus\(34);
\inst_CE_12|Add2~367\ <= \inst_CE_12|Add2~332_RESULTA_bus\(35);
\inst_CE_12|Add2~368\ <= \inst_CE_12|Add2~332_RESULTA_bus\(36);
\inst_CE_12|Add2~369\ <= \inst_CE_12|Add2~332_RESULTA_bus\(37);
\inst_CE_12|Add2~370\ <= \inst_CE_12|Add2~332_RESULTA_bus\(38);
\inst_CE_12|Add2~371\ <= \inst_CE_12|Add2~332_RESULTA_bus\(39);
\inst_CE_12|Add2~372\ <= \inst_CE_12|Add2~332_RESULTA_bus\(40);
\inst_CE_12|Add2~373\ <= \inst_CE_12|Add2~332_RESULTA_bus\(41);
\inst_CE_12|Add2~374\ <= \inst_CE_12|Add2~332_RESULTA_bus\(42);
\inst_CE_12|Add2~375\ <= \inst_CE_12|Add2~332_RESULTA_bus\(43);
\inst_CE_12|Add2~376\ <= \inst_CE_12|Add2~332_RESULTA_bus\(44);
\inst_CE_12|Add2~377\ <= \inst_CE_12|Add2~332_RESULTA_bus\(45);
\inst_CE_12|Add2~378\ <= \inst_CE_12|Add2~332_RESULTA_bus\(46);
\inst_CE_12|Add2~379\ <= \inst_CE_12|Add2~332_RESULTA_bus\(47);
\inst_CE_12|Add2~380\ <= \inst_CE_12|Add2~332_RESULTA_bus\(48);
\inst_CE_12|Add2~381\ <= \inst_CE_12|Add2~332_RESULTA_bus\(49);
\inst_CE_12|Add2~382\ <= \inst_CE_12|Add2~332_RESULTA_bus\(50);
\inst_CE_12|Add2~383\ <= \inst_CE_12|Add2~332_RESULTA_bus\(51);
\inst_CE_12|Add2~384\ <= \inst_CE_12|Add2~332_RESULTA_bus\(52);
\inst_CE_12|Add2~385\ <= \inst_CE_12|Add2~332_RESULTA_bus\(53);
\inst_CE_12|Add2~386\ <= \inst_CE_12|Add2~332_RESULTA_bus\(54);
\inst_CE_12|Add2~387\ <= \inst_CE_12|Add2~332_RESULTA_bus\(55);
\inst_CE_12|Add2~388\ <= \inst_CE_12|Add2~332_RESULTA_bus\(56);
\inst_CE_12|Add2~389\ <= \inst_CE_12|Add2~332_RESULTA_bus\(57);
\inst_CE_12|Add2~390\ <= \inst_CE_12|Add2~332_RESULTA_bus\(58);
\inst_CE_12|Add2~391\ <= \inst_CE_12|Add2~332_RESULTA_bus\(59);
\inst_CE_12|Add2~392\ <= \inst_CE_12|Add2~332_RESULTA_bus\(60);
\inst_CE_12|Add2~393\ <= \inst_CE_12|Add2~332_RESULTA_bus\(61);
\inst_CE_12|Add2~394\ <= \inst_CE_12|Add2~332_RESULTA_bus\(62);
\inst_CE_12|Add2~395\ <= \inst_CE_12|Add2~332_RESULTA_bus\(63);

\inst_CE_12|Add2~459\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(0);
\inst_CE_12|Add2~460\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(1);
\inst_CE_12|Add2~461\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(2);
\inst_CE_12|Add2~462\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(3);
\inst_CE_12|Add2~463\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(4);
\inst_CE_12|Add2~464\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(5);
\inst_CE_12|Add2~465\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(6);
\inst_CE_12|Add2~466\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(7);
\inst_CE_12|Add2~467\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(8);
\inst_CE_12|Add2~468\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(9);
\inst_CE_12|Add2~469\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(10);
\inst_CE_12|Add2~470\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(11);
\inst_CE_12|Add2~471\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(12);
\inst_CE_12|Add2~472\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(13);
\inst_CE_12|Add2~473\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(14);
\inst_CE_12|Add2~474\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(15);
\inst_CE_12|Add2~475\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(16);
\inst_CE_12|Add2~476\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(17);
\inst_CE_12|Add2~477\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(18);
\inst_CE_12|Add2~478\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(19);
\inst_CE_12|Add2~479\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(20);
\inst_CE_12|Add2~480\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(21);
\inst_CE_12|Add2~481\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(22);
\inst_CE_12|Add2~482\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(23);
\inst_CE_12|Add2~483\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(24);
\inst_CE_12|Add2~484\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(25);
\inst_CE_12|Add2~485\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(26);
\inst_CE_12|Add2~486\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(27);
\inst_CE_12|Add2~487\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(28);
\inst_CE_12|Add2~488\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(29);
\inst_CE_12|Add2~489\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(30);
\inst_CE_12|Add2~490\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(31);
\inst_CE_12|Add2~491\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(32);
\inst_CE_12|Add2~492\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(33);
\inst_CE_12|Add2~493\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(34);
\inst_CE_12|Add2~494\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(35);
\inst_CE_12|Add2~495\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(36);
\inst_CE_12|Add2~496\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(37);
\inst_CE_12|Add2~497\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(38);
\inst_CE_12|Add2~498\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(39);
\inst_CE_12|Add2~499\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(40);
\inst_CE_12|Add2~500\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(41);
\inst_CE_12|Add2~501\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(42);
\inst_CE_12|Add2~502\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(43);
\inst_CE_12|Add2~503\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(44);
\inst_CE_12|Add2~504\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(45);
\inst_CE_12|Add2~505\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(46);
\inst_CE_12|Add2~506\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(47);
\inst_CE_12|Add2~507\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(48);
\inst_CE_12|Add2~508\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(49);
\inst_CE_12|Add2~509\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(50);
\inst_CE_12|Add2~510\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(51);
\inst_CE_12|Add2~511\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(52);
\inst_CE_12|Add2~512\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(53);
\inst_CE_12|Add2~513\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(54);
\inst_CE_12|Add2~514\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(55);
\inst_CE_12|Add2~515\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(56);
\inst_CE_12|Add2~516\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(57);
\inst_CE_12|Add2~517\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(58);
\inst_CE_12|Add2~518\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(59);
\inst_CE_12|Add2~519\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(60);
\inst_CE_12|Add2~520\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(61);
\inst_CE_12|Add2~521\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(62);
\inst_CE_12|Add2~522\ <= \inst_CE_12|Add2~332_CHAINOUT_bus\(63);

\inst_CE_11|Add2~332_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_11|Add2~332_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_11|Add2~332_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_11|Add2~332_AX_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][6]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][0]~_Duplicate_3_q\);

\inst_CE_11|Add2~332_AY_bus\ <= (\w_11[1][7]~input_o\ & \w_11[1][7]~input_o\ & \w_11[1][7]~input_o\ & \w_11[1][7]~input_o\ & \w_11[1][7]~input_o\ & \w_11[1][7]~input_o\ & \w_11[1][7]~input_o\ & \w_11[1][7]~input_o\ & \w_11[1][7]~input_o\ & 
\w_11[1][7]~input_o\ & \w_11[1][7]~input_o\ & \w_11[1][6]~input_o\ & \w_11[1][5]~input_o\ & \w_11[1][4]~input_o\ & \w_11[1][3]~input_o\ & \w_11[1][2]~input_o\ & \w_11[1][1]~input_o\ & \w_11[1][0]~input_o\);

\inst_CE_11|Add2~332_BX_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][5]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][4]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][0]~q\);

\inst_CE_11|Add2~332_BY_bus\ <= (\w_11[0][7]~input_o\ & \w_11[0][7]~input_o\ & \w_11[0][7]~input_o\ & \w_11[0][7]~input_o\ & \w_11[0][7]~input_o\ & \w_11[0][7]~input_o\ & \w_11[0][7]~input_o\ & \w_11[0][7]~input_o\ & \w_11[0][7]~input_o\ & 
\w_11[0][7]~input_o\ & \w_11[0][7]~input_o\ & \w_11[0][6]~input_o\ & \w_11[0][5]~input_o\ & \w_11[0][4]~input_o\ & \w_11[0][3]~input_o\ & \w_11[0][2]~input_o\ & \w_11[0][1]~input_o\ & \w_11[0][0]~input_o\);

\inst_CE_11|Add2~332_resulta\ <= \inst_CE_11|Add2~332_RESULTA_bus\(0);
\inst_CE_11|Add2~333\ <= \inst_CE_11|Add2~332_RESULTA_bus\(1);
\inst_CE_11|Add2~334\ <= \inst_CE_11|Add2~332_RESULTA_bus\(2);
\inst_CE_11|Add2~335\ <= \inst_CE_11|Add2~332_RESULTA_bus\(3);
\inst_CE_11|Add2~336\ <= \inst_CE_11|Add2~332_RESULTA_bus\(4);
\inst_CE_11|Add2~337\ <= \inst_CE_11|Add2~332_RESULTA_bus\(5);
\inst_CE_11|Add2~338\ <= \inst_CE_11|Add2~332_RESULTA_bus\(6);
\inst_CE_11|Add2~339\ <= \inst_CE_11|Add2~332_RESULTA_bus\(7);
\inst_CE_11|Add2~340\ <= \inst_CE_11|Add2~332_RESULTA_bus\(8);
\inst_CE_11|Add2~341\ <= \inst_CE_11|Add2~332_RESULTA_bus\(9);
\inst_CE_11|Add2~342\ <= \inst_CE_11|Add2~332_RESULTA_bus\(10);
\inst_CE_11|Add2~343\ <= \inst_CE_11|Add2~332_RESULTA_bus\(11);
\inst_CE_11|Add2~344\ <= \inst_CE_11|Add2~332_RESULTA_bus\(12);
\inst_CE_11|Add2~345\ <= \inst_CE_11|Add2~332_RESULTA_bus\(13);
\inst_CE_11|Add2~346\ <= \inst_CE_11|Add2~332_RESULTA_bus\(14);
\inst_CE_11|Add2~347\ <= \inst_CE_11|Add2~332_RESULTA_bus\(15);
\inst_CE_11|Add2~348\ <= \inst_CE_11|Add2~332_RESULTA_bus\(16);
\inst_CE_11|Add2~349\ <= \inst_CE_11|Add2~332_RESULTA_bus\(17);
\inst_CE_11|Add2~350\ <= \inst_CE_11|Add2~332_RESULTA_bus\(18);
\inst_CE_11|Add2~351\ <= \inst_CE_11|Add2~332_RESULTA_bus\(19);
\inst_CE_11|Add2~352\ <= \inst_CE_11|Add2~332_RESULTA_bus\(20);
\inst_CE_11|Add2~353\ <= \inst_CE_11|Add2~332_RESULTA_bus\(21);
\inst_CE_11|Add2~354\ <= \inst_CE_11|Add2~332_RESULTA_bus\(22);
\inst_CE_11|Add2~355\ <= \inst_CE_11|Add2~332_RESULTA_bus\(23);
\inst_CE_11|Add2~356\ <= \inst_CE_11|Add2~332_RESULTA_bus\(24);
\inst_CE_11|Add2~357\ <= \inst_CE_11|Add2~332_RESULTA_bus\(25);
\inst_CE_11|Add2~358\ <= \inst_CE_11|Add2~332_RESULTA_bus\(26);
\inst_CE_11|Add2~359\ <= \inst_CE_11|Add2~332_RESULTA_bus\(27);
\inst_CE_11|Add2~360\ <= \inst_CE_11|Add2~332_RESULTA_bus\(28);
\inst_CE_11|Add2~361\ <= \inst_CE_11|Add2~332_RESULTA_bus\(29);
\inst_CE_11|Add2~362\ <= \inst_CE_11|Add2~332_RESULTA_bus\(30);
\inst_CE_11|Add2~363\ <= \inst_CE_11|Add2~332_RESULTA_bus\(31);
\inst_CE_11|Add2~364\ <= \inst_CE_11|Add2~332_RESULTA_bus\(32);
\inst_CE_11|Add2~365\ <= \inst_CE_11|Add2~332_RESULTA_bus\(33);
\inst_CE_11|Add2~366\ <= \inst_CE_11|Add2~332_RESULTA_bus\(34);
\inst_CE_11|Add2~367\ <= \inst_CE_11|Add2~332_RESULTA_bus\(35);
\inst_CE_11|Add2~368\ <= \inst_CE_11|Add2~332_RESULTA_bus\(36);
\inst_CE_11|Add2~369\ <= \inst_CE_11|Add2~332_RESULTA_bus\(37);
\inst_CE_11|Add2~370\ <= \inst_CE_11|Add2~332_RESULTA_bus\(38);
\inst_CE_11|Add2~371\ <= \inst_CE_11|Add2~332_RESULTA_bus\(39);
\inst_CE_11|Add2~372\ <= \inst_CE_11|Add2~332_RESULTA_bus\(40);
\inst_CE_11|Add2~373\ <= \inst_CE_11|Add2~332_RESULTA_bus\(41);
\inst_CE_11|Add2~374\ <= \inst_CE_11|Add2~332_RESULTA_bus\(42);
\inst_CE_11|Add2~375\ <= \inst_CE_11|Add2~332_RESULTA_bus\(43);
\inst_CE_11|Add2~376\ <= \inst_CE_11|Add2~332_RESULTA_bus\(44);
\inst_CE_11|Add2~377\ <= \inst_CE_11|Add2~332_RESULTA_bus\(45);
\inst_CE_11|Add2~378\ <= \inst_CE_11|Add2~332_RESULTA_bus\(46);
\inst_CE_11|Add2~379\ <= \inst_CE_11|Add2~332_RESULTA_bus\(47);
\inst_CE_11|Add2~380\ <= \inst_CE_11|Add2~332_RESULTA_bus\(48);
\inst_CE_11|Add2~381\ <= \inst_CE_11|Add2~332_RESULTA_bus\(49);
\inst_CE_11|Add2~382\ <= \inst_CE_11|Add2~332_RESULTA_bus\(50);
\inst_CE_11|Add2~383\ <= \inst_CE_11|Add2~332_RESULTA_bus\(51);
\inst_CE_11|Add2~384\ <= \inst_CE_11|Add2~332_RESULTA_bus\(52);
\inst_CE_11|Add2~385\ <= \inst_CE_11|Add2~332_RESULTA_bus\(53);
\inst_CE_11|Add2~386\ <= \inst_CE_11|Add2~332_RESULTA_bus\(54);
\inst_CE_11|Add2~387\ <= \inst_CE_11|Add2~332_RESULTA_bus\(55);
\inst_CE_11|Add2~388\ <= \inst_CE_11|Add2~332_RESULTA_bus\(56);
\inst_CE_11|Add2~389\ <= \inst_CE_11|Add2~332_RESULTA_bus\(57);
\inst_CE_11|Add2~390\ <= \inst_CE_11|Add2~332_RESULTA_bus\(58);
\inst_CE_11|Add2~391\ <= \inst_CE_11|Add2~332_RESULTA_bus\(59);
\inst_CE_11|Add2~392\ <= \inst_CE_11|Add2~332_RESULTA_bus\(60);
\inst_CE_11|Add2~393\ <= \inst_CE_11|Add2~332_RESULTA_bus\(61);
\inst_CE_11|Add2~394\ <= \inst_CE_11|Add2~332_RESULTA_bus\(62);
\inst_CE_11|Add2~395\ <= \inst_CE_11|Add2~332_RESULTA_bus\(63);

\inst_CE_11|Add2~459\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(0);
\inst_CE_11|Add2~460\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(1);
\inst_CE_11|Add2~461\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(2);
\inst_CE_11|Add2~462\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(3);
\inst_CE_11|Add2~463\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(4);
\inst_CE_11|Add2~464\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(5);
\inst_CE_11|Add2~465\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(6);
\inst_CE_11|Add2~466\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(7);
\inst_CE_11|Add2~467\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(8);
\inst_CE_11|Add2~468\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(9);
\inst_CE_11|Add2~469\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(10);
\inst_CE_11|Add2~470\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(11);
\inst_CE_11|Add2~471\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(12);
\inst_CE_11|Add2~472\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(13);
\inst_CE_11|Add2~473\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(14);
\inst_CE_11|Add2~474\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(15);
\inst_CE_11|Add2~475\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(16);
\inst_CE_11|Add2~476\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(17);
\inst_CE_11|Add2~477\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(18);
\inst_CE_11|Add2~478\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(19);
\inst_CE_11|Add2~479\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(20);
\inst_CE_11|Add2~480\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(21);
\inst_CE_11|Add2~481\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(22);
\inst_CE_11|Add2~482\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(23);
\inst_CE_11|Add2~483\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(24);
\inst_CE_11|Add2~484\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(25);
\inst_CE_11|Add2~485\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(26);
\inst_CE_11|Add2~486\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(27);
\inst_CE_11|Add2~487\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(28);
\inst_CE_11|Add2~488\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(29);
\inst_CE_11|Add2~489\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(30);
\inst_CE_11|Add2~490\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(31);
\inst_CE_11|Add2~491\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(32);
\inst_CE_11|Add2~492\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(33);
\inst_CE_11|Add2~493\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(34);
\inst_CE_11|Add2~494\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(35);
\inst_CE_11|Add2~495\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(36);
\inst_CE_11|Add2~496\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(37);
\inst_CE_11|Add2~497\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(38);
\inst_CE_11|Add2~498\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(39);
\inst_CE_11|Add2~499\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(40);
\inst_CE_11|Add2~500\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(41);
\inst_CE_11|Add2~501\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(42);
\inst_CE_11|Add2~502\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(43);
\inst_CE_11|Add2~503\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(44);
\inst_CE_11|Add2~504\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(45);
\inst_CE_11|Add2~505\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(46);
\inst_CE_11|Add2~506\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(47);
\inst_CE_11|Add2~507\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(48);
\inst_CE_11|Add2~508\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(49);
\inst_CE_11|Add2~509\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(50);
\inst_CE_11|Add2~510\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(51);
\inst_CE_11|Add2~511\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(52);
\inst_CE_11|Add2~512\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(53);
\inst_CE_11|Add2~513\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(54);
\inst_CE_11|Add2~514\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(55);
\inst_CE_11|Add2~515\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(56);
\inst_CE_11|Add2~516\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(57);
\inst_CE_11|Add2~517\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(58);
\inst_CE_11|Add2~518\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(59);
\inst_CE_11|Add2~519\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(60);
\inst_CE_11|Add2~520\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(61);
\inst_CE_11|Add2~521\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(62);
\inst_CE_11|Add2~522\ <= \inst_CE_11|Add2~332_CHAINOUT_bus\(63);

\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][0]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][2]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][5]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][7]~_Duplicate_6_q\);

\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTAADDR_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(7) & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBADDR_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a\(7) & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a\(6) & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a\(5) & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a\(4) & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a\(3) & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a\(2) & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a\(0));

\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ <= \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(0);
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a1\ <= \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(1);
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a2\ <= \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(2);
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a3\ <= \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(3);
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a4\ <= \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(4);
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a5\ <= \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(5);
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a6\ <= \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(6);
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a7\ <= \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(7);

\inst_CE_13|Mult8~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_13|Mult8~mac_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\inst_CE_13|Mult8~mac_ENA_bus\ <= (vcc & \enable~input_o\ & \inst_SE|sum_s[0]~0_combout\);

\inst_CE_13|Mult8~mac_AX_bus\ <= (\w_13[8][7]~input_o\ & \w_13[8][7]~input_o\ & \w_13[8][7]~input_o\ & \w_13[8][7]~input_o\ & \w_13[8][7]~input_o\ & \w_13[8][7]~input_o\ & \w_13[8][7]~input_o\ & \w_13[8][7]~input_o\ & \w_13[8][7]~input_o\ & 
\w_13[8][7]~input_o\ & \w_13[8][7]~input_o\ & \w_13[8][6]~input_o\ & \w_13[8][5]~input_o\ & \w_13[8][4]~input_o\ & \w_13[8][3]~input_o\ & \w_13[8][2]~input_o\ & \w_13[8][1]~input_o\ & \w_13[8][0]~input_o\);

\inst_CE_13|Mult8~mac_AY_bus\ <= (\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][6]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][3]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][0]~_Duplicate_3_q\);

\inst_CE_13|Mult8~mac_BX_bus\ <= (\inst_CE_13|Mult7~320\ & \inst_CE_13|Mult7~320\ & \inst_CE_13|Mult7~320\ & \inst_CE_13|Mult7~320\ & \inst_CE_13|Mult7~320\ & \inst_CE_13|Mult7~320\ & \inst_CE_13|Mult7~320\ & \inst_CE_13|Mult7~320\ & 
\inst_CE_13|Mult7~320\ & \inst_CE_13|Mult7~320\ & \inst_CE_13|Mult7~320\ & \inst_CE_13|Mult7~320\ & \inst_CE_13|Mult7~320\ & \inst_CE_13|Mult7~320\ & \inst_CE_13|Mult7~320\ & \inst_CE_13|Mult7~320\ & \inst_CE_13|Mult7~320\ & \inst_CE_13|Mult7~320\);

\inst_CE_13|Mult8~mac_BY_bus\ <= (\inst_CE_13|Mult7~320\ & \inst_CE_13|Mult7~319\ & \inst_CE_13|Mult7~318\ & \inst_CE_13|Mult7~317\ & \inst_CE_13|Mult7~316\ & \inst_CE_13|Mult7~315\ & \inst_CE_13|Mult7~314\ & \inst_CE_13|Mult7~313\ & 
\inst_CE_13|Mult7~312\ & \inst_CE_13|Mult7~311\ & \inst_CE_13|Mult7~310\ & \inst_CE_13|Mult7~309\ & \inst_CE_13|Mult7~308\ & \inst_CE_13|Mult7~307\ & \inst_CE_13|Mult7~306\ & \inst_CE_13|Mult7~305\ & \inst_CE_13|Mult7~304\ & \inst_CE_13|Mult7~mac_resulta\
);

\inst_CE_13|sums\(0) <= \inst_CE_13|Mult8~mac_RESULTA_bus\(0);
\inst_CE_13|sums\(1) <= \inst_CE_13|Mult8~mac_RESULTA_bus\(1);
\inst_CE_13|sums\(2) <= \inst_CE_13|Mult8~mac_RESULTA_bus\(2);
\inst_CE_13|sums\(3) <= \inst_CE_13|Mult8~mac_RESULTA_bus\(3);
\inst_CE_13|sums\(4) <= \inst_CE_13|Mult8~mac_RESULTA_bus\(4);
\inst_CE_13|sums\(5) <= \inst_CE_13|Mult8~mac_RESULTA_bus\(5);
\inst_CE_13|sums\(6) <= \inst_CE_13|Mult8~mac_RESULTA_bus\(6);
\inst_CE_13|sums\(7) <= \inst_CE_13|Mult8~mac_RESULTA_bus\(7);
\inst_CE_13|sums\(8) <= \inst_CE_13|Mult8~mac_RESULTA_bus\(8);
\inst_CE_13|sums\(9) <= \inst_CE_13|Mult8~mac_RESULTA_bus\(9);
\inst_CE_13|sums\(10) <= \inst_CE_13|Mult8~mac_RESULTA_bus\(10);
\inst_CE_13|sums\(11) <= \inst_CE_13|Mult8~mac_RESULTA_bus\(11);
\inst_CE_13|sums\(12) <= \inst_CE_13|Mult8~mac_RESULTA_bus\(12);
\inst_CE_13|sums\(13) <= \inst_CE_13|Mult8~mac_RESULTA_bus\(13);
\inst_CE_13|sums\(14) <= \inst_CE_13|Mult8~mac_RESULTA_bus\(14);
\inst_CE_13|Mult8~318\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(15);
\inst_CE_13|Mult8~319\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(16);
\inst_CE_13|Mult8~320\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(17);
\inst_CE_13|Mult8~10\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(18);
\inst_CE_13|Mult8~11\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(19);
\inst_CE_13|Mult8~12\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(20);
\inst_CE_13|Mult8~13\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(21);
\inst_CE_13|Mult8~14\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(22);
\inst_CE_13|Mult8~15\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(23);
\inst_CE_13|Mult8~16\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(24);
\inst_CE_13|Mult8~17\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(25);
\inst_CE_13|Mult8~18\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(26);
\inst_CE_13|Mult8~19\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(27);
\inst_CE_13|Mult8~20\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(28);
\inst_CE_13|Mult8~21\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(29);
\inst_CE_13|Mult8~22\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(30);
\inst_CE_13|Mult8~23\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(31);
\inst_CE_13|Mult8~24\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(32);
\inst_CE_13|Mult8~25\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(33);
\inst_CE_13|Mult8~26\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(34);
\inst_CE_13|Mult8~27\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(35);
\inst_CE_13|Mult8~28\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(36);
\inst_CE_13|Mult8~29\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(37);
\inst_CE_13|Mult8~30\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(38);
\inst_CE_13|Mult8~31\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(39);
\inst_CE_13|Mult8~32\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(40);
\inst_CE_13|Mult8~33\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(41);
\inst_CE_13|Mult8~34\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(42);
\inst_CE_13|Mult8~35\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(43);
\inst_CE_13|Mult8~36\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(44);
\inst_CE_13|Mult8~37\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(45);
\inst_CE_13|Mult8~38\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(46);
\inst_CE_13|Mult8~39\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(47);
\inst_CE_13|Mult8~40\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(48);
\inst_CE_13|Mult8~41\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(49);
\inst_CE_13|Mult8~42\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(50);
\inst_CE_13|Mult8~43\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(51);
\inst_CE_13|Mult8~44\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(52);
\inst_CE_13|Mult8~45\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(53);
\inst_CE_13|Mult8~46\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(54);
\inst_CE_13|Mult8~47\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(55);
\inst_CE_13|Mult8~48\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(56);
\inst_CE_13|Mult8~49\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(57);
\inst_CE_13|Mult8~50\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(58);
\inst_CE_13|Mult8~51\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(59);
\inst_CE_13|Mult8~52\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(60);
\inst_CE_13|Mult8~53\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(61);
\inst_CE_13|Mult8~54\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(62);
\inst_CE_13|Mult8~55\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(63);

\inst_CE_12|Mult8~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_12|Mult8~mac_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\inst_CE_12|Mult8~mac_ENA_bus\ <= (vcc & \enable~input_o\ & \inst_SE|sum_s[0]~0_combout\);

\inst_CE_12|Mult8~mac_AX_bus\ <= (\w_12[8][7]~input_o\ & \w_12[8][7]~input_o\ & \w_12[8][7]~input_o\ & \w_12[8][7]~input_o\ & \w_12[8][7]~input_o\ & \w_12[8][7]~input_o\ & \w_12[8][7]~input_o\ & \w_12[8][7]~input_o\ & \w_12[8][7]~input_o\ & 
\w_12[8][7]~input_o\ & \w_12[8][7]~input_o\ & \w_12[8][6]~input_o\ & \w_12[8][5]~input_o\ & \w_12[8][4]~input_o\ & \w_12[8][3]~input_o\ & \w_12[8][2]~input_o\ & \w_12[8][1]~input_o\ & \w_12[8][0]~input_o\);

\inst_CE_12|Mult8~mac_AY_bus\ <= (\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][6]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][3]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][0]~_Duplicate_3_q\);

\inst_CE_12|Mult8~mac_BX_bus\ <= (\inst_CE_12|Mult7~320\ & \inst_CE_12|Mult7~320\ & \inst_CE_12|Mult7~320\ & \inst_CE_12|Mult7~320\ & \inst_CE_12|Mult7~320\ & \inst_CE_12|Mult7~320\ & \inst_CE_12|Mult7~320\ & \inst_CE_12|Mult7~320\ & 
\inst_CE_12|Mult7~320\ & \inst_CE_12|Mult7~320\ & \inst_CE_12|Mult7~320\ & \inst_CE_12|Mult7~320\ & \inst_CE_12|Mult7~320\ & \inst_CE_12|Mult7~320\ & \inst_CE_12|Mult7~320\ & \inst_CE_12|Mult7~320\ & \inst_CE_12|Mult7~320\ & \inst_CE_12|Mult7~320\);

\inst_CE_12|Mult8~mac_BY_bus\ <= (\inst_CE_12|Mult7~320\ & \inst_CE_12|Mult7~319\ & \inst_CE_12|Mult7~318\ & \inst_CE_12|Mult7~317\ & \inst_CE_12|Mult7~316\ & \inst_CE_12|Mult7~315\ & \inst_CE_12|Mult7~314\ & \inst_CE_12|Mult7~313\ & 
\inst_CE_12|Mult7~312\ & \inst_CE_12|Mult7~311\ & \inst_CE_12|Mult7~310\ & \inst_CE_12|Mult7~309\ & \inst_CE_12|Mult7~308\ & \inst_CE_12|Mult7~307\ & \inst_CE_12|Mult7~306\ & \inst_CE_12|Mult7~305\ & \inst_CE_12|Mult7~304\ & \inst_CE_12|Mult7~mac_resulta\
);

\inst_CE_12|sums\(0) <= \inst_CE_12|Mult8~mac_RESULTA_bus\(0);
\inst_CE_12|sums\(1) <= \inst_CE_12|Mult8~mac_RESULTA_bus\(1);
\inst_CE_12|sums\(2) <= \inst_CE_12|Mult8~mac_RESULTA_bus\(2);
\inst_CE_12|sums\(3) <= \inst_CE_12|Mult8~mac_RESULTA_bus\(3);
\inst_CE_12|sums\(4) <= \inst_CE_12|Mult8~mac_RESULTA_bus\(4);
\inst_CE_12|sums\(5) <= \inst_CE_12|Mult8~mac_RESULTA_bus\(5);
\inst_CE_12|sums\(6) <= \inst_CE_12|Mult8~mac_RESULTA_bus\(6);
\inst_CE_12|sums\(7) <= \inst_CE_12|Mult8~mac_RESULTA_bus\(7);
\inst_CE_12|sums\(8) <= \inst_CE_12|Mult8~mac_RESULTA_bus\(8);
\inst_CE_12|sums\(9) <= \inst_CE_12|Mult8~mac_RESULTA_bus\(9);
\inst_CE_12|sums\(10) <= \inst_CE_12|Mult8~mac_RESULTA_bus\(10);
\inst_CE_12|sums\(11) <= \inst_CE_12|Mult8~mac_RESULTA_bus\(11);
\inst_CE_12|sums\(12) <= \inst_CE_12|Mult8~mac_RESULTA_bus\(12);
\inst_CE_12|sums\(13) <= \inst_CE_12|Mult8~mac_RESULTA_bus\(13);
\inst_CE_12|sums\(14) <= \inst_CE_12|Mult8~mac_RESULTA_bus\(14);
\inst_CE_12|Mult8~318\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(15);
\inst_CE_12|Mult8~319\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(16);
\inst_CE_12|Mult8~320\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(17);
\inst_CE_12|Mult8~10\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(18);
\inst_CE_12|Mult8~11\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(19);
\inst_CE_12|Mult8~12\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(20);
\inst_CE_12|Mult8~13\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(21);
\inst_CE_12|Mult8~14\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(22);
\inst_CE_12|Mult8~15\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(23);
\inst_CE_12|Mult8~16\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(24);
\inst_CE_12|Mult8~17\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(25);
\inst_CE_12|Mult8~18\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(26);
\inst_CE_12|Mult8~19\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(27);
\inst_CE_12|Mult8~20\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(28);
\inst_CE_12|Mult8~21\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(29);
\inst_CE_12|Mult8~22\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(30);
\inst_CE_12|Mult8~23\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(31);
\inst_CE_12|Mult8~24\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(32);
\inst_CE_12|Mult8~25\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(33);
\inst_CE_12|Mult8~26\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(34);
\inst_CE_12|Mult8~27\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(35);
\inst_CE_12|Mult8~28\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(36);
\inst_CE_12|Mult8~29\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(37);
\inst_CE_12|Mult8~30\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(38);
\inst_CE_12|Mult8~31\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(39);
\inst_CE_12|Mult8~32\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(40);
\inst_CE_12|Mult8~33\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(41);
\inst_CE_12|Mult8~34\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(42);
\inst_CE_12|Mult8~35\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(43);
\inst_CE_12|Mult8~36\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(44);
\inst_CE_12|Mult8~37\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(45);
\inst_CE_12|Mult8~38\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(46);
\inst_CE_12|Mult8~39\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(47);
\inst_CE_12|Mult8~40\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(48);
\inst_CE_12|Mult8~41\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(49);
\inst_CE_12|Mult8~42\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(50);
\inst_CE_12|Mult8~43\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(51);
\inst_CE_12|Mult8~44\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(52);
\inst_CE_12|Mult8~45\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(53);
\inst_CE_12|Mult8~46\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(54);
\inst_CE_12|Mult8~47\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(55);
\inst_CE_12|Mult8~48\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(56);
\inst_CE_12|Mult8~49\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(57);
\inst_CE_12|Mult8~50\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(58);
\inst_CE_12|Mult8~51\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(59);
\inst_CE_12|Mult8~52\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(60);
\inst_CE_12|Mult8~53\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(61);
\inst_CE_12|Mult8~54\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(62);
\inst_CE_12|Mult8~55\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(63);

\inst_CE_11|Mult8~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_11|Mult8~mac_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\inst_CE_11|Mult8~mac_ENA_bus\ <= (vcc & \enable~input_o\ & \inst_SE|sum_s[0]~0_combout\);

\inst_CE_11|Mult8~mac_AX_bus\ <= (\w_11[8][7]~input_o\ & \w_11[8][7]~input_o\ & \w_11[8][7]~input_o\ & \w_11[8][7]~input_o\ & \w_11[8][7]~input_o\ & \w_11[8][7]~input_o\ & \w_11[8][7]~input_o\ & \w_11[8][7]~input_o\ & \w_11[8][7]~input_o\ & 
\w_11[8][7]~input_o\ & \w_11[8][7]~input_o\ & \w_11[8][6]~input_o\ & \w_11[8][5]~input_o\ & \w_11[8][4]~input_o\ & \w_11[8][3]~input_o\ & \w_11[8][2]~input_o\ & \w_11[8][1]~input_o\ & \w_11[8][0]~input_o\);

\inst_CE_11|Mult8~mac_AY_bus\ <= (\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][6]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][3]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][0]~_Duplicate_3_q\);

\inst_CE_11|Mult8~mac_BX_bus\ <= (\inst_CE_11|Mult7~320\ & \inst_CE_11|Mult7~320\ & \inst_CE_11|Mult7~320\ & \inst_CE_11|Mult7~320\ & \inst_CE_11|Mult7~320\ & \inst_CE_11|Mult7~320\ & \inst_CE_11|Mult7~320\ & \inst_CE_11|Mult7~320\ & 
\inst_CE_11|Mult7~320\ & \inst_CE_11|Mult7~320\ & \inst_CE_11|Mult7~320\ & \inst_CE_11|Mult7~320\ & \inst_CE_11|Mult7~320\ & \inst_CE_11|Mult7~320\ & \inst_CE_11|Mult7~320\ & \inst_CE_11|Mult7~320\ & \inst_CE_11|Mult7~320\ & \inst_CE_11|Mult7~320\);

\inst_CE_11|Mult8~mac_BY_bus\ <= (\inst_CE_11|Mult7~320\ & \inst_CE_11|Mult7~319\ & \inst_CE_11|Mult7~318\ & \inst_CE_11|Mult7~317\ & \inst_CE_11|Mult7~316\ & \inst_CE_11|Mult7~315\ & \inst_CE_11|Mult7~314\ & \inst_CE_11|Mult7~313\ & 
\inst_CE_11|Mult7~312\ & \inst_CE_11|Mult7~311\ & \inst_CE_11|Mult7~310\ & \inst_CE_11|Mult7~309\ & \inst_CE_11|Mult7~308\ & \inst_CE_11|Mult7~307\ & \inst_CE_11|Mult7~306\ & \inst_CE_11|Mult7~305\ & \inst_CE_11|Mult7~304\ & \inst_CE_11|Mult7~mac_resulta\
);

\inst_CE_11|sums\(0) <= \inst_CE_11|Mult8~mac_RESULTA_bus\(0);
\inst_CE_11|sums\(1) <= \inst_CE_11|Mult8~mac_RESULTA_bus\(1);
\inst_CE_11|sums\(2) <= \inst_CE_11|Mult8~mac_RESULTA_bus\(2);
\inst_CE_11|sums\(3) <= \inst_CE_11|Mult8~mac_RESULTA_bus\(3);
\inst_CE_11|sums\(4) <= \inst_CE_11|Mult8~mac_RESULTA_bus\(4);
\inst_CE_11|sums\(5) <= \inst_CE_11|Mult8~mac_RESULTA_bus\(5);
\inst_CE_11|sums\(6) <= \inst_CE_11|Mult8~mac_RESULTA_bus\(6);
\inst_CE_11|sums\(7) <= \inst_CE_11|Mult8~mac_RESULTA_bus\(7);
\inst_CE_11|sums\(8) <= \inst_CE_11|Mult8~mac_RESULTA_bus\(8);
\inst_CE_11|sums\(9) <= \inst_CE_11|Mult8~mac_RESULTA_bus\(9);
\inst_CE_11|sums\(10) <= \inst_CE_11|Mult8~mac_RESULTA_bus\(10);
\inst_CE_11|sums\(11) <= \inst_CE_11|Mult8~mac_RESULTA_bus\(11);
\inst_CE_11|sums\(12) <= \inst_CE_11|Mult8~mac_RESULTA_bus\(12);
\inst_CE_11|sums\(13) <= \inst_CE_11|Mult8~mac_RESULTA_bus\(13);
\inst_CE_11|sums\(14) <= \inst_CE_11|Mult8~mac_RESULTA_bus\(14);
\inst_CE_11|Mult8~318\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(15);
\inst_CE_11|Mult8~319\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(16);
\inst_CE_11|Mult8~320\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(17);
\inst_CE_11|Mult8~10\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(18);
\inst_CE_11|Mult8~11\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(19);
\inst_CE_11|Mult8~12\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(20);
\inst_CE_11|Mult8~13\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(21);
\inst_CE_11|Mult8~14\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(22);
\inst_CE_11|Mult8~15\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(23);
\inst_CE_11|Mult8~16\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(24);
\inst_CE_11|Mult8~17\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(25);
\inst_CE_11|Mult8~18\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(26);
\inst_CE_11|Mult8~19\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(27);
\inst_CE_11|Mult8~20\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(28);
\inst_CE_11|Mult8~21\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(29);
\inst_CE_11|Mult8~22\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(30);
\inst_CE_11|Mult8~23\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(31);
\inst_CE_11|Mult8~24\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(32);
\inst_CE_11|Mult8~25\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(33);
\inst_CE_11|Mult8~26\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(34);
\inst_CE_11|Mult8~27\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(35);
\inst_CE_11|Mult8~28\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(36);
\inst_CE_11|Mult8~29\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(37);
\inst_CE_11|Mult8~30\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(38);
\inst_CE_11|Mult8~31\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(39);
\inst_CE_11|Mult8~32\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(40);
\inst_CE_11|Mult8~33\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(41);
\inst_CE_11|Mult8~34\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(42);
\inst_CE_11|Mult8~35\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(43);
\inst_CE_11|Mult8~36\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(44);
\inst_CE_11|Mult8~37\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(45);
\inst_CE_11|Mult8~38\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(46);
\inst_CE_11|Mult8~39\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(47);
\inst_CE_11|Mult8~40\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(48);
\inst_CE_11|Mult8~41\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(49);
\inst_CE_11|Mult8~42\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(50);
\inst_CE_11|Mult8~43\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(51);
\inst_CE_11|Mult8~44\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(52);
\inst_CE_11|Mult8~45\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(53);
\inst_CE_11|Mult8~46\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(54);
\inst_CE_11|Mult8~47\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(55);
\inst_CE_11|Mult8~48\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(56);
\inst_CE_11|Mult8~49\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(57);
\inst_CE_11|Mult8~50\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(58);
\inst_CE_11|Mult8~51\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(59);
\inst_CE_11|Mult8~52\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(60);
\inst_CE_11|Mult8~53\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(61);
\inst_CE_11|Mult8~54\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(62);
\inst_CE_11|Mult8~55\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(63);

\inst_CE_13|Mult7~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_13|Mult7~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_13|Mult7~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_13|Mult7~mac_AX_bus\ <= (\w_13[7][7]~input_o\ & \w_13[7][7]~input_o\ & \w_13[7][7]~input_o\ & \w_13[7][7]~input_o\ & \w_13[7][7]~input_o\ & \w_13[7][7]~input_o\ & \w_13[7][7]~input_o\ & \w_13[7][7]~input_o\ & \w_13[7][7]~input_o\ & 
\w_13[7][7]~input_o\ & \w_13[7][7]~input_o\ & \w_13[7][6]~input_o\ & \w_13[7][5]~input_o\ & \w_13[7][4]~input_o\ & \w_13[7][3]~input_o\ & \w_13[7][2]~input_o\ & \w_13[7][1]~input_o\ & \w_13[7][0]~input_o\);

\inst_CE_13|Mult7~mac_AY_bus\ <= (\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][6]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][3]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3_q\);

\inst_CE_13|Mult7~mac_BX_bus\ <= (\inst_CE_13|Mult6~320\ & \inst_CE_13|Mult6~320\ & \inst_CE_13|Mult6~320\ & \inst_CE_13|Mult6~320\ & \inst_CE_13|Mult6~320\ & \inst_CE_13|Mult6~320\ & \inst_CE_13|Mult6~320\ & \inst_CE_13|Mult6~320\ & 
\inst_CE_13|Mult6~320\ & \inst_CE_13|Mult6~320\ & \inst_CE_13|Mult6~320\ & \inst_CE_13|Mult6~320\ & \inst_CE_13|Mult6~320\ & \inst_CE_13|Mult6~320\ & \inst_CE_13|Mult6~320\ & \inst_CE_13|Mult6~320\ & \inst_CE_13|Mult6~320\ & \inst_CE_13|Mult6~320\);

\inst_CE_13|Mult7~mac_BY_bus\ <= (\inst_CE_13|Mult6~320\ & \inst_CE_13|Mult6~319\ & \inst_CE_13|Mult6~318\ & \inst_CE_13|Mult6~317\ & \inst_CE_13|Mult6~316\ & \inst_CE_13|Mult6~315\ & \inst_CE_13|Mult6~314\ & \inst_CE_13|Mult6~313\ & 
\inst_CE_13|Mult6~312\ & \inst_CE_13|Mult6~311\ & \inst_CE_13|Mult6~310\ & \inst_CE_13|Mult6~309\ & \inst_CE_13|Mult6~308\ & \inst_CE_13|Mult6~307\ & \inst_CE_13|Mult6~306\ & \inst_CE_13|Mult6~305\ & \inst_CE_13|Mult6~304\ & \inst_CE_13|Mult6~mac_resulta\
);

\inst_CE_13|Mult7~mac_resulta\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(0);
\inst_CE_13|Mult7~304\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(1);
\inst_CE_13|Mult7~305\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(2);
\inst_CE_13|Mult7~306\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(3);
\inst_CE_13|Mult7~307\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(4);
\inst_CE_13|Mult7~308\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(5);
\inst_CE_13|Mult7~309\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(6);
\inst_CE_13|Mult7~310\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(7);
\inst_CE_13|Mult7~311\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(8);
\inst_CE_13|Mult7~312\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(9);
\inst_CE_13|Mult7~313\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(10);
\inst_CE_13|Mult7~314\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(11);
\inst_CE_13|Mult7~315\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(12);
\inst_CE_13|Mult7~316\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(13);
\inst_CE_13|Mult7~317\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(14);
\inst_CE_13|Mult7~318\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(15);
\inst_CE_13|Mult7~319\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(16);
\inst_CE_13|Mult7~320\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(17);
\inst_CE_13|Mult7~10\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(18);
\inst_CE_13|Mult7~11\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(19);
\inst_CE_13|Mult7~12\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(20);
\inst_CE_13|Mult7~13\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(21);
\inst_CE_13|Mult7~14\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(22);
\inst_CE_13|Mult7~15\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(23);
\inst_CE_13|Mult7~16\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(24);
\inst_CE_13|Mult7~17\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(25);
\inst_CE_13|Mult7~18\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(26);
\inst_CE_13|Mult7~19\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(27);
\inst_CE_13|Mult7~20\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(28);
\inst_CE_13|Mult7~21\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(29);
\inst_CE_13|Mult7~22\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(30);
\inst_CE_13|Mult7~23\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(31);
\inst_CE_13|Mult7~24\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(32);
\inst_CE_13|Mult7~25\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(33);
\inst_CE_13|Mult7~26\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(34);
\inst_CE_13|Mult7~27\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(35);
\inst_CE_13|Mult7~28\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(36);
\inst_CE_13|Mult7~29\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(37);
\inst_CE_13|Mult7~30\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(38);
\inst_CE_13|Mult7~31\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(39);
\inst_CE_13|Mult7~32\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(40);
\inst_CE_13|Mult7~33\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(41);
\inst_CE_13|Mult7~34\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(42);
\inst_CE_13|Mult7~35\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(43);
\inst_CE_13|Mult7~36\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(44);
\inst_CE_13|Mult7~37\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(45);
\inst_CE_13|Mult7~38\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(46);
\inst_CE_13|Mult7~39\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(47);
\inst_CE_13|Mult7~40\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(48);
\inst_CE_13|Mult7~41\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(49);
\inst_CE_13|Mult7~42\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(50);
\inst_CE_13|Mult7~43\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(51);
\inst_CE_13|Mult7~44\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(52);
\inst_CE_13|Mult7~45\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(53);
\inst_CE_13|Mult7~46\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(54);
\inst_CE_13|Mult7~47\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(55);
\inst_CE_13|Mult7~48\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(56);
\inst_CE_13|Mult7~49\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(57);
\inst_CE_13|Mult7~50\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(58);
\inst_CE_13|Mult7~51\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(59);
\inst_CE_13|Mult7~52\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(60);
\inst_CE_13|Mult7~53\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(61);
\inst_CE_13|Mult7~54\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(62);
\inst_CE_13|Mult7~55\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(63);

\inst_CE_12|Mult7~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_12|Mult7~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_12|Mult7~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_12|Mult7~mac_AX_bus\ <= (\w_12[7][7]~input_o\ & \w_12[7][7]~input_o\ & \w_12[7][7]~input_o\ & \w_12[7][7]~input_o\ & \w_12[7][7]~input_o\ & \w_12[7][7]~input_o\ & \w_12[7][7]~input_o\ & \w_12[7][7]~input_o\ & \w_12[7][7]~input_o\ & 
\w_12[7][7]~input_o\ & \w_12[7][7]~input_o\ & \w_12[7][6]~input_o\ & \w_12[7][5]~input_o\ & \w_12[7][4]~input_o\ & \w_12[7][3]~input_o\ & \w_12[7][2]~input_o\ & \w_12[7][1]~input_o\ & \w_12[7][0]~input_o\);

\inst_CE_12|Mult7~mac_AY_bus\ <= (\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][6]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][3]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3_q\);

\inst_CE_12|Mult7~mac_BX_bus\ <= (\inst_CE_12|Mult6~320\ & \inst_CE_12|Mult6~320\ & \inst_CE_12|Mult6~320\ & \inst_CE_12|Mult6~320\ & \inst_CE_12|Mult6~320\ & \inst_CE_12|Mult6~320\ & \inst_CE_12|Mult6~320\ & \inst_CE_12|Mult6~320\ & 
\inst_CE_12|Mult6~320\ & \inst_CE_12|Mult6~320\ & \inst_CE_12|Mult6~320\ & \inst_CE_12|Mult6~320\ & \inst_CE_12|Mult6~320\ & \inst_CE_12|Mult6~320\ & \inst_CE_12|Mult6~320\ & \inst_CE_12|Mult6~320\ & \inst_CE_12|Mult6~320\ & \inst_CE_12|Mult6~320\);

\inst_CE_12|Mult7~mac_BY_bus\ <= (\inst_CE_12|Mult6~320\ & \inst_CE_12|Mult6~319\ & \inst_CE_12|Mult6~318\ & \inst_CE_12|Mult6~317\ & \inst_CE_12|Mult6~316\ & \inst_CE_12|Mult6~315\ & \inst_CE_12|Mult6~314\ & \inst_CE_12|Mult6~313\ & 
\inst_CE_12|Mult6~312\ & \inst_CE_12|Mult6~311\ & \inst_CE_12|Mult6~310\ & \inst_CE_12|Mult6~309\ & \inst_CE_12|Mult6~308\ & \inst_CE_12|Mult6~307\ & \inst_CE_12|Mult6~306\ & \inst_CE_12|Mult6~305\ & \inst_CE_12|Mult6~304\ & \inst_CE_12|Mult6~mac_resulta\
);

\inst_CE_12|Mult7~mac_resulta\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(0);
\inst_CE_12|Mult7~304\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(1);
\inst_CE_12|Mult7~305\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(2);
\inst_CE_12|Mult7~306\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(3);
\inst_CE_12|Mult7~307\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(4);
\inst_CE_12|Mult7~308\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(5);
\inst_CE_12|Mult7~309\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(6);
\inst_CE_12|Mult7~310\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(7);
\inst_CE_12|Mult7~311\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(8);
\inst_CE_12|Mult7~312\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(9);
\inst_CE_12|Mult7~313\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(10);
\inst_CE_12|Mult7~314\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(11);
\inst_CE_12|Mult7~315\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(12);
\inst_CE_12|Mult7~316\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(13);
\inst_CE_12|Mult7~317\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(14);
\inst_CE_12|Mult7~318\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(15);
\inst_CE_12|Mult7~319\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(16);
\inst_CE_12|Mult7~320\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(17);
\inst_CE_12|Mult7~10\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(18);
\inst_CE_12|Mult7~11\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(19);
\inst_CE_12|Mult7~12\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(20);
\inst_CE_12|Mult7~13\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(21);
\inst_CE_12|Mult7~14\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(22);
\inst_CE_12|Mult7~15\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(23);
\inst_CE_12|Mult7~16\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(24);
\inst_CE_12|Mult7~17\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(25);
\inst_CE_12|Mult7~18\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(26);
\inst_CE_12|Mult7~19\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(27);
\inst_CE_12|Mult7~20\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(28);
\inst_CE_12|Mult7~21\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(29);
\inst_CE_12|Mult7~22\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(30);
\inst_CE_12|Mult7~23\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(31);
\inst_CE_12|Mult7~24\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(32);
\inst_CE_12|Mult7~25\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(33);
\inst_CE_12|Mult7~26\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(34);
\inst_CE_12|Mult7~27\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(35);
\inst_CE_12|Mult7~28\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(36);
\inst_CE_12|Mult7~29\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(37);
\inst_CE_12|Mult7~30\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(38);
\inst_CE_12|Mult7~31\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(39);
\inst_CE_12|Mult7~32\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(40);
\inst_CE_12|Mult7~33\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(41);
\inst_CE_12|Mult7~34\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(42);
\inst_CE_12|Mult7~35\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(43);
\inst_CE_12|Mult7~36\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(44);
\inst_CE_12|Mult7~37\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(45);
\inst_CE_12|Mult7~38\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(46);
\inst_CE_12|Mult7~39\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(47);
\inst_CE_12|Mult7~40\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(48);
\inst_CE_12|Mult7~41\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(49);
\inst_CE_12|Mult7~42\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(50);
\inst_CE_12|Mult7~43\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(51);
\inst_CE_12|Mult7~44\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(52);
\inst_CE_12|Mult7~45\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(53);
\inst_CE_12|Mult7~46\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(54);
\inst_CE_12|Mult7~47\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(55);
\inst_CE_12|Mult7~48\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(56);
\inst_CE_12|Mult7~49\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(57);
\inst_CE_12|Mult7~50\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(58);
\inst_CE_12|Mult7~51\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(59);
\inst_CE_12|Mult7~52\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(60);
\inst_CE_12|Mult7~53\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(61);
\inst_CE_12|Mult7~54\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(62);
\inst_CE_12|Mult7~55\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(63);

\inst_CE_11|Mult7~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_11|Mult7~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_11|Mult7~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_11|Mult7~mac_AX_bus\ <= (\w_11[7][7]~input_o\ & \w_11[7][7]~input_o\ & \w_11[7][7]~input_o\ & \w_11[7][7]~input_o\ & \w_11[7][7]~input_o\ & \w_11[7][7]~input_o\ & \w_11[7][7]~input_o\ & \w_11[7][7]~input_o\ & \w_11[7][7]~input_o\ & 
\w_11[7][7]~input_o\ & \w_11[7][7]~input_o\ & \w_11[7][6]~input_o\ & \w_11[7][5]~input_o\ & \w_11[7][4]~input_o\ & \w_11[7][3]~input_o\ & \w_11[7][2]~input_o\ & \w_11[7][1]~input_o\ & \w_11[7][0]~input_o\);

\inst_CE_11|Mult7~mac_AY_bus\ <= (\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][6]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][3]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3_q\);

\inst_CE_11|Mult7~mac_BX_bus\ <= (\inst_CE_11|Mult6~320\ & \inst_CE_11|Mult6~320\ & \inst_CE_11|Mult6~320\ & \inst_CE_11|Mult6~320\ & \inst_CE_11|Mult6~320\ & \inst_CE_11|Mult6~320\ & \inst_CE_11|Mult6~320\ & \inst_CE_11|Mult6~320\ & 
\inst_CE_11|Mult6~320\ & \inst_CE_11|Mult6~320\ & \inst_CE_11|Mult6~320\ & \inst_CE_11|Mult6~320\ & \inst_CE_11|Mult6~320\ & \inst_CE_11|Mult6~320\ & \inst_CE_11|Mult6~320\ & \inst_CE_11|Mult6~320\ & \inst_CE_11|Mult6~320\ & \inst_CE_11|Mult6~320\);

\inst_CE_11|Mult7~mac_BY_bus\ <= (\inst_CE_11|Mult6~320\ & \inst_CE_11|Mult6~319\ & \inst_CE_11|Mult6~318\ & \inst_CE_11|Mult6~317\ & \inst_CE_11|Mult6~316\ & \inst_CE_11|Mult6~315\ & \inst_CE_11|Mult6~314\ & \inst_CE_11|Mult6~313\ & 
\inst_CE_11|Mult6~312\ & \inst_CE_11|Mult6~311\ & \inst_CE_11|Mult6~310\ & \inst_CE_11|Mult6~309\ & \inst_CE_11|Mult6~308\ & \inst_CE_11|Mult6~307\ & \inst_CE_11|Mult6~306\ & \inst_CE_11|Mult6~305\ & \inst_CE_11|Mult6~304\ & \inst_CE_11|Mult6~mac_resulta\
);

\inst_CE_11|Mult7~mac_resulta\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(0);
\inst_CE_11|Mult7~304\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(1);
\inst_CE_11|Mult7~305\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(2);
\inst_CE_11|Mult7~306\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(3);
\inst_CE_11|Mult7~307\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(4);
\inst_CE_11|Mult7~308\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(5);
\inst_CE_11|Mult7~309\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(6);
\inst_CE_11|Mult7~310\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(7);
\inst_CE_11|Mult7~311\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(8);
\inst_CE_11|Mult7~312\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(9);
\inst_CE_11|Mult7~313\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(10);
\inst_CE_11|Mult7~314\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(11);
\inst_CE_11|Mult7~315\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(12);
\inst_CE_11|Mult7~316\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(13);
\inst_CE_11|Mult7~317\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(14);
\inst_CE_11|Mult7~318\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(15);
\inst_CE_11|Mult7~319\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(16);
\inst_CE_11|Mult7~320\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(17);
\inst_CE_11|Mult7~10\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(18);
\inst_CE_11|Mult7~11\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(19);
\inst_CE_11|Mult7~12\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(20);
\inst_CE_11|Mult7~13\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(21);
\inst_CE_11|Mult7~14\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(22);
\inst_CE_11|Mult7~15\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(23);
\inst_CE_11|Mult7~16\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(24);
\inst_CE_11|Mult7~17\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(25);
\inst_CE_11|Mult7~18\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(26);
\inst_CE_11|Mult7~19\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(27);
\inst_CE_11|Mult7~20\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(28);
\inst_CE_11|Mult7~21\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(29);
\inst_CE_11|Mult7~22\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(30);
\inst_CE_11|Mult7~23\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(31);
\inst_CE_11|Mult7~24\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(32);
\inst_CE_11|Mult7~25\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(33);
\inst_CE_11|Mult7~26\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(34);
\inst_CE_11|Mult7~27\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(35);
\inst_CE_11|Mult7~28\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(36);
\inst_CE_11|Mult7~29\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(37);
\inst_CE_11|Mult7~30\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(38);
\inst_CE_11|Mult7~31\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(39);
\inst_CE_11|Mult7~32\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(40);
\inst_CE_11|Mult7~33\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(41);
\inst_CE_11|Mult7~34\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(42);
\inst_CE_11|Mult7~35\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(43);
\inst_CE_11|Mult7~36\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(44);
\inst_CE_11|Mult7~37\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(45);
\inst_CE_11|Mult7~38\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(46);
\inst_CE_11|Mult7~39\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(47);
\inst_CE_11|Mult7~40\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(48);
\inst_CE_11|Mult7~41\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(49);
\inst_CE_11|Mult7~42\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(50);
\inst_CE_11|Mult7~43\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(51);
\inst_CE_11|Mult7~44\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(52);
\inst_CE_11|Mult7~45\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(53);
\inst_CE_11|Mult7~46\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(54);
\inst_CE_11|Mult7~47\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(55);
\inst_CE_11|Mult7~48\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(56);
\inst_CE_11|Mult7~49\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(57);
\inst_CE_11|Mult7~50\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(58);
\inst_CE_11|Mult7~51\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(59);
\inst_CE_11|Mult7~52\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(60);
\inst_CE_11|Mult7~53\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(61);
\inst_CE_11|Mult7~54\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(62);
\inst_CE_11|Mult7~55\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(63);

\inst_CE_13|Mult6~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_13|Mult6~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_13|Mult6~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_13|Mult6~mac_AX_bus\ <= (\w_13[6][7]~input_o\ & \w_13[6][7]~input_o\ & \w_13[6][7]~input_o\ & \w_13[6][7]~input_o\ & \w_13[6][7]~input_o\ & \w_13[6][7]~input_o\ & \w_13[6][7]~input_o\ & \w_13[6][7]~input_o\ & \w_13[6][7]~input_o\ & 
\w_13[6][7]~input_o\ & \w_13[6][7]~input_o\ & \w_13[6][6]~input_o\ & \w_13[6][5]~input_o\ & \w_13[6][4]~input_o\ & \w_13[6][3]~input_o\ & \w_13[6][2]~input_o\ & \w_13[6][1]~input_o\ & \w_13[6][0]~input_o\);

\inst_CE_13|Mult6~mac_AY_bus\ <= (\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][6]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][5]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][4]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][3]~q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][2]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][1]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][0]~q\);

\inst_CE_13|Mult6~mac_BX_bus\ <= (\inst_CE_13|Mult5~320\ & \inst_CE_13|Mult5~320\ & \inst_CE_13|Mult5~320\ & \inst_CE_13|Mult5~320\ & \inst_CE_13|Mult5~320\ & \inst_CE_13|Mult5~320\ & \inst_CE_13|Mult5~320\ & \inst_CE_13|Mult5~320\ & 
\inst_CE_13|Mult5~320\ & \inst_CE_13|Mult5~320\ & \inst_CE_13|Mult5~320\ & \inst_CE_13|Mult5~320\ & \inst_CE_13|Mult5~320\ & \inst_CE_13|Mult5~320\ & \inst_CE_13|Mult5~320\ & \inst_CE_13|Mult5~320\ & \inst_CE_13|Mult5~320\ & \inst_CE_13|Mult5~320\);

\inst_CE_13|Mult6~mac_BY_bus\ <= (\inst_CE_13|Mult5~320\ & \inst_CE_13|Mult5~319\ & \inst_CE_13|Mult5~318\ & \inst_CE_13|Mult5~317\ & \inst_CE_13|Mult5~316\ & \inst_CE_13|Mult5~315\ & \inst_CE_13|Mult5~314\ & \inst_CE_13|Mult5~313\ & 
\inst_CE_13|Mult5~312\ & \inst_CE_13|Mult5~311\ & \inst_CE_13|Mult5~310\ & \inst_CE_13|Mult5~309\ & \inst_CE_13|Mult5~308\ & \inst_CE_13|Mult5~307\ & \inst_CE_13|Mult5~306\ & \inst_CE_13|Mult5~305\ & \inst_CE_13|Mult5~304\ & \inst_CE_13|Mult5~mac_resulta\
);

\inst_CE_13|Mult6~mac_resulta\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(0);
\inst_CE_13|Mult6~304\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(1);
\inst_CE_13|Mult6~305\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(2);
\inst_CE_13|Mult6~306\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(3);
\inst_CE_13|Mult6~307\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(4);
\inst_CE_13|Mult6~308\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(5);
\inst_CE_13|Mult6~309\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(6);
\inst_CE_13|Mult6~310\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(7);
\inst_CE_13|Mult6~311\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(8);
\inst_CE_13|Mult6~312\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(9);
\inst_CE_13|Mult6~313\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(10);
\inst_CE_13|Mult6~314\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(11);
\inst_CE_13|Mult6~315\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(12);
\inst_CE_13|Mult6~316\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(13);
\inst_CE_13|Mult6~317\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(14);
\inst_CE_13|Mult6~318\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(15);
\inst_CE_13|Mult6~319\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(16);
\inst_CE_13|Mult6~320\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(17);
\inst_CE_13|Mult6~10\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(18);
\inst_CE_13|Mult6~11\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(19);
\inst_CE_13|Mult6~12\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(20);
\inst_CE_13|Mult6~13\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(21);
\inst_CE_13|Mult6~14\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(22);
\inst_CE_13|Mult6~15\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(23);
\inst_CE_13|Mult6~16\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(24);
\inst_CE_13|Mult6~17\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(25);
\inst_CE_13|Mult6~18\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(26);
\inst_CE_13|Mult6~19\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(27);
\inst_CE_13|Mult6~20\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(28);
\inst_CE_13|Mult6~21\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(29);
\inst_CE_13|Mult6~22\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(30);
\inst_CE_13|Mult6~23\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(31);
\inst_CE_13|Mult6~24\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(32);
\inst_CE_13|Mult6~25\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(33);
\inst_CE_13|Mult6~26\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(34);
\inst_CE_13|Mult6~27\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(35);
\inst_CE_13|Mult6~28\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(36);
\inst_CE_13|Mult6~29\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(37);
\inst_CE_13|Mult6~30\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(38);
\inst_CE_13|Mult6~31\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(39);
\inst_CE_13|Mult6~32\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(40);
\inst_CE_13|Mult6~33\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(41);
\inst_CE_13|Mult6~34\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(42);
\inst_CE_13|Mult6~35\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(43);
\inst_CE_13|Mult6~36\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(44);
\inst_CE_13|Mult6~37\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(45);
\inst_CE_13|Mult6~38\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(46);
\inst_CE_13|Mult6~39\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(47);
\inst_CE_13|Mult6~40\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(48);
\inst_CE_13|Mult6~41\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(49);
\inst_CE_13|Mult6~42\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(50);
\inst_CE_13|Mult6~43\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(51);
\inst_CE_13|Mult6~44\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(52);
\inst_CE_13|Mult6~45\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(53);
\inst_CE_13|Mult6~46\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(54);
\inst_CE_13|Mult6~47\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(55);
\inst_CE_13|Mult6~48\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(56);
\inst_CE_13|Mult6~49\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(57);
\inst_CE_13|Mult6~50\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(58);
\inst_CE_13|Mult6~51\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(59);
\inst_CE_13|Mult6~52\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(60);
\inst_CE_13|Mult6~53\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(61);
\inst_CE_13|Mult6~54\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(62);
\inst_CE_13|Mult6~55\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(63);

\inst_CE_12|Mult6~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_12|Mult6~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_12|Mult6~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_12|Mult6~mac_AX_bus\ <= (\w_12[6][7]~input_o\ & \w_12[6][7]~input_o\ & \w_12[6][7]~input_o\ & \w_12[6][7]~input_o\ & \w_12[6][7]~input_o\ & \w_12[6][7]~input_o\ & \w_12[6][7]~input_o\ & \w_12[6][7]~input_o\ & \w_12[6][7]~input_o\ & 
\w_12[6][7]~input_o\ & \w_12[6][7]~input_o\ & \w_12[6][6]~input_o\ & \w_12[6][5]~input_o\ & \w_12[6][4]~input_o\ & \w_12[6][3]~input_o\ & \w_12[6][2]~input_o\ & \w_12[6][1]~input_o\ & \w_12[6][0]~input_o\);

\inst_CE_12|Mult6~mac_AY_bus\ <= (\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][6]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][5]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][4]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][3]~q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][2]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][1]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][0]~q\);

\inst_CE_12|Mult6~mac_BX_bus\ <= (\inst_CE_12|Mult5~320\ & \inst_CE_12|Mult5~320\ & \inst_CE_12|Mult5~320\ & \inst_CE_12|Mult5~320\ & \inst_CE_12|Mult5~320\ & \inst_CE_12|Mult5~320\ & \inst_CE_12|Mult5~320\ & \inst_CE_12|Mult5~320\ & 
\inst_CE_12|Mult5~320\ & \inst_CE_12|Mult5~320\ & \inst_CE_12|Mult5~320\ & \inst_CE_12|Mult5~320\ & \inst_CE_12|Mult5~320\ & \inst_CE_12|Mult5~320\ & \inst_CE_12|Mult5~320\ & \inst_CE_12|Mult5~320\ & \inst_CE_12|Mult5~320\ & \inst_CE_12|Mult5~320\);

\inst_CE_12|Mult6~mac_BY_bus\ <= (\inst_CE_12|Mult5~320\ & \inst_CE_12|Mult5~319\ & \inst_CE_12|Mult5~318\ & \inst_CE_12|Mult5~317\ & \inst_CE_12|Mult5~316\ & \inst_CE_12|Mult5~315\ & \inst_CE_12|Mult5~314\ & \inst_CE_12|Mult5~313\ & 
\inst_CE_12|Mult5~312\ & \inst_CE_12|Mult5~311\ & \inst_CE_12|Mult5~310\ & \inst_CE_12|Mult5~309\ & \inst_CE_12|Mult5~308\ & \inst_CE_12|Mult5~307\ & \inst_CE_12|Mult5~306\ & \inst_CE_12|Mult5~305\ & \inst_CE_12|Mult5~304\ & \inst_CE_12|Mult5~mac_resulta\
);

\inst_CE_12|Mult6~mac_resulta\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(0);
\inst_CE_12|Mult6~304\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(1);
\inst_CE_12|Mult6~305\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(2);
\inst_CE_12|Mult6~306\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(3);
\inst_CE_12|Mult6~307\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(4);
\inst_CE_12|Mult6~308\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(5);
\inst_CE_12|Mult6~309\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(6);
\inst_CE_12|Mult6~310\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(7);
\inst_CE_12|Mult6~311\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(8);
\inst_CE_12|Mult6~312\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(9);
\inst_CE_12|Mult6~313\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(10);
\inst_CE_12|Mult6~314\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(11);
\inst_CE_12|Mult6~315\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(12);
\inst_CE_12|Mult6~316\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(13);
\inst_CE_12|Mult6~317\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(14);
\inst_CE_12|Mult6~318\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(15);
\inst_CE_12|Mult6~319\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(16);
\inst_CE_12|Mult6~320\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(17);
\inst_CE_12|Mult6~10\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(18);
\inst_CE_12|Mult6~11\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(19);
\inst_CE_12|Mult6~12\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(20);
\inst_CE_12|Mult6~13\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(21);
\inst_CE_12|Mult6~14\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(22);
\inst_CE_12|Mult6~15\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(23);
\inst_CE_12|Mult6~16\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(24);
\inst_CE_12|Mult6~17\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(25);
\inst_CE_12|Mult6~18\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(26);
\inst_CE_12|Mult6~19\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(27);
\inst_CE_12|Mult6~20\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(28);
\inst_CE_12|Mult6~21\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(29);
\inst_CE_12|Mult6~22\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(30);
\inst_CE_12|Mult6~23\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(31);
\inst_CE_12|Mult6~24\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(32);
\inst_CE_12|Mult6~25\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(33);
\inst_CE_12|Mult6~26\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(34);
\inst_CE_12|Mult6~27\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(35);
\inst_CE_12|Mult6~28\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(36);
\inst_CE_12|Mult6~29\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(37);
\inst_CE_12|Mult6~30\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(38);
\inst_CE_12|Mult6~31\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(39);
\inst_CE_12|Mult6~32\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(40);
\inst_CE_12|Mult6~33\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(41);
\inst_CE_12|Mult6~34\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(42);
\inst_CE_12|Mult6~35\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(43);
\inst_CE_12|Mult6~36\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(44);
\inst_CE_12|Mult6~37\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(45);
\inst_CE_12|Mult6~38\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(46);
\inst_CE_12|Mult6~39\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(47);
\inst_CE_12|Mult6~40\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(48);
\inst_CE_12|Mult6~41\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(49);
\inst_CE_12|Mult6~42\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(50);
\inst_CE_12|Mult6~43\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(51);
\inst_CE_12|Mult6~44\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(52);
\inst_CE_12|Mult6~45\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(53);
\inst_CE_12|Mult6~46\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(54);
\inst_CE_12|Mult6~47\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(55);
\inst_CE_12|Mult6~48\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(56);
\inst_CE_12|Mult6~49\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(57);
\inst_CE_12|Mult6~50\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(58);
\inst_CE_12|Mult6~51\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(59);
\inst_CE_12|Mult6~52\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(60);
\inst_CE_12|Mult6~53\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(61);
\inst_CE_12|Mult6~54\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(62);
\inst_CE_12|Mult6~55\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(63);

\inst_CE_11|Mult6~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_11|Mult6~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_11|Mult6~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_11|Mult6~mac_AX_bus\ <= (\w_11[6][7]~input_o\ & \w_11[6][7]~input_o\ & \w_11[6][7]~input_o\ & \w_11[6][7]~input_o\ & \w_11[6][7]~input_o\ & \w_11[6][7]~input_o\ & \w_11[6][7]~input_o\ & \w_11[6][7]~input_o\ & \w_11[6][7]~input_o\ & 
\w_11[6][7]~input_o\ & \w_11[6][7]~input_o\ & \w_11[6][6]~input_o\ & \w_11[6][5]~input_o\ & \w_11[6][4]~input_o\ & \w_11[6][3]~input_o\ & \w_11[6][2]~input_o\ & \w_11[6][1]~input_o\ & \w_11[6][0]~input_o\);

\inst_CE_11|Mult6~mac_AY_bus\ <= (\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][6]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][5]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][4]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][3]~q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][2]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][1]~q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][0]~q\);

\inst_CE_11|Mult6~mac_BX_bus\ <= (\inst_CE_11|Mult5~320\ & \inst_CE_11|Mult5~320\ & \inst_CE_11|Mult5~320\ & \inst_CE_11|Mult5~320\ & \inst_CE_11|Mult5~320\ & \inst_CE_11|Mult5~320\ & \inst_CE_11|Mult5~320\ & \inst_CE_11|Mult5~320\ & 
\inst_CE_11|Mult5~320\ & \inst_CE_11|Mult5~320\ & \inst_CE_11|Mult5~320\ & \inst_CE_11|Mult5~320\ & \inst_CE_11|Mult5~320\ & \inst_CE_11|Mult5~320\ & \inst_CE_11|Mult5~320\ & \inst_CE_11|Mult5~320\ & \inst_CE_11|Mult5~320\ & \inst_CE_11|Mult5~320\);

\inst_CE_11|Mult6~mac_BY_bus\ <= (\inst_CE_11|Mult5~320\ & \inst_CE_11|Mult5~319\ & \inst_CE_11|Mult5~318\ & \inst_CE_11|Mult5~317\ & \inst_CE_11|Mult5~316\ & \inst_CE_11|Mult5~315\ & \inst_CE_11|Mult5~314\ & \inst_CE_11|Mult5~313\ & 
\inst_CE_11|Mult5~312\ & \inst_CE_11|Mult5~311\ & \inst_CE_11|Mult5~310\ & \inst_CE_11|Mult5~309\ & \inst_CE_11|Mult5~308\ & \inst_CE_11|Mult5~307\ & \inst_CE_11|Mult5~306\ & \inst_CE_11|Mult5~305\ & \inst_CE_11|Mult5~304\ & \inst_CE_11|Mult5~mac_resulta\
);

\inst_CE_11|Mult6~mac_resulta\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(0);
\inst_CE_11|Mult6~304\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(1);
\inst_CE_11|Mult6~305\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(2);
\inst_CE_11|Mult6~306\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(3);
\inst_CE_11|Mult6~307\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(4);
\inst_CE_11|Mult6~308\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(5);
\inst_CE_11|Mult6~309\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(6);
\inst_CE_11|Mult6~310\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(7);
\inst_CE_11|Mult6~311\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(8);
\inst_CE_11|Mult6~312\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(9);
\inst_CE_11|Mult6~313\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(10);
\inst_CE_11|Mult6~314\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(11);
\inst_CE_11|Mult6~315\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(12);
\inst_CE_11|Mult6~316\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(13);
\inst_CE_11|Mult6~317\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(14);
\inst_CE_11|Mult6~318\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(15);
\inst_CE_11|Mult6~319\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(16);
\inst_CE_11|Mult6~320\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(17);
\inst_CE_11|Mult6~10\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(18);
\inst_CE_11|Mult6~11\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(19);
\inst_CE_11|Mult6~12\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(20);
\inst_CE_11|Mult6~13\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(21);
\inst_CE_11|Mult6~14\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(22);
\inst_CE_11|Mult6~15\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(23);
\inst_CE_11|Mult6~16\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(24);
\inst_CE_11|Mult6~17\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(25);
\inst_CE_11|Mult6~18\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(26);
\inst_CE_11|Mult6~19\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(27);
\inst_CE_11|Mult6~20\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(28);
\inst_CE_11|Mult6~21\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(29);
\inst_CE_11|Mult6~22\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(30);
\inst_CE_11|Mult6~23\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(31);
\inst_CE_11|Mult6~24\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(32);
\inst_CE_11|Mult6~25\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(33);
\inst_CE_11|Mult6~26\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(34);
\inst_CE_11|Mult6~27\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(35);
\inst_CE_11|Mult6~28\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(36);
\inst_CE_11|Mult6~29\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(37);
\inst_CE_11|Mult6~30\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(38);
\inst_CE_11|Mult6~31\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(39);
\inst_CE_11|Mult6~32\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(40);
\inst_CE_11|Mult6~33\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(41);
\inst_CE_11|Mult6~34\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(42);
\inst_CE_11|Mult6~35\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(43);
\inst_CE_11|Mult6~36\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(44);
\inst_CE_11|Mult6~37\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(45);
\inst_CE_11|Mult6~38\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(46);
\inst_CE_11|Mult6~39\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(47);
\inst_CE_11|Mult6~40\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(48);
\inst_CE_11|Mult6~41\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(49);
\inst_CE_11|Mult6~42\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(50);
\inst_CE_11|Mult6~43\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(51);
\inst_CE_11|Mult6~44\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(52);
\inst_CE_11|Mult6~45\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(53);
\inst_CE_11|Mult6~46\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(54);
\inst_CE_11|Mult6~47\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(55);
\inst_CE_11|Mult6~48\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(56);
\inst_CE_11|Mult6~49\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(57);
\inst_CE_11|Mult6~50\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(58);
\inst_CE_11|Mult6~51\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(59);
\inst_CE_11|Mult6~52\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(60);
\inst_CE_11|Mult6~53\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(61);
\inst_CE_11|Mult6~54\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(62);
\inst_CE_11|Mult6~55\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(63);

\inst_CE_13|Mult5~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_13|Mult5~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_13|Mult5~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_13|Mult5~mac_AX_bus\ <= (\w_13[5][7]~input_o\ & \w_13[5][7]~input_o\ & \w_13[5][7]~input_o\ & \w_13[5][7]~input_o\ & \w_13[5][7]~input_o\ & \w_13[5][7]~input_o\ & \w_13[5][7]~input_o\ & \w_13[5][7]~input_o\ & \w_13[5][7]~input_o\ & 
\w_13[5][7]~input_o\ & \w_13[5][7]~input_o\ & \w_13[5][6]~input_o\ & \w_13[5][5]~input_o\ & \w_13[5][4]~input_o\ & \w_13[5][3]~input_o\ & \w_13[5][2]~input_o\ & \w_13[5][1]~input_o\ & \w_13[5][0]~input_o\);

\inst_CE_13|Mult5~mac_AY_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][3]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][0]~_Duplicate_3_q\);

\inst_CE_13|Mult5~mac_BX_bus\ <= (\inst_CE_13|Mult4~320\ & \inst_CE_13|Mult4~320\ & \inst_CE_13|Mult4~320\ & \inst_CE_13|Mult4~320\ & \inst_CE_13|Mult4~320\ & \inst_CE_13|Mult4~320\ & \inst_CE_13|Mult4~320\ & \inst_CE_13|Mult4~320\ & 
\inst_CE_13|Mult4~320\ & \inst_CE_13|Mult4~320\ & \inst_CE_13|Mult4~320\ & \inst_CE_13|Mult4~320\ & \inst_CE_13|Mult4~320\ & \inst_CE_13|Mult4~320\ & \inst_CE_13|Mult4~320\ & \inst_CE_13|Mult4~320\ & \inst_CE_13|Mult4~320\ & \inst_CE_13|Mult4~320\);

\inst_CE_13|Mult5~mac_BY_bus\ <= (\inst_CE_13|Mult4~320\ & \inst_CE_13|Mult4~319\ & \inst_CE_13|Mult4~318\ & \inst_CE_13|Mult4~317\ & \inst_CE_13|Mult4~316\ & \inst_CE_13|Mult4~315\ & \inst_CE_13|Mult4~314\ & \inst_CE_13|Mult4~313\ & 
\inst_CE_13|Mult4~312\ & \inst_CE_13|Mult4~311\ & \inst_CE_13|Mult4~310\ & \inst_CE_13|Mult4~309\ & \inst_CE_13|Mult4~308\ & \inst_CE_13|Mult4~307\ & \inst_CE_13|Mult4~306\ & \inst_CE_13|Mult4~305\ & \inst_CE_13|Mult4~304\ & \inst_CE_13|Mult4~mac_resulta\
);

\inst_CE_13|Mult5~mac_resulta\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(0);
\inst_CE_13|Mult5~304\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(1);
\inst_CE_13|Mult5~305\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(2);
\inst_CE_13|Mult5~306\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(3);
\inst_CE_13|Mult5~307\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(4);
\inst_CE_13|Mult5~308\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(5);
\inst_CE_13|Mult5~309\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(6);
\inst_CE_13|Mult5~310\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(7);
\inst_CE_13|Mult5~311\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(8);
\inst_CE_13|Mult5~312\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(9);
\inst_CE_13|Mult5~313\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(10);
\inst_CE_13|Mult5~314\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(11);
\inst_CE_13|Mult5~315\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(12);
\inst_CE_13|Mult5~316\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(13);
\inst_CE_13|Mult5~317\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(14);
\inst_CE_13|Mult5~318\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(15);
\inst_CE_13|Mult5~319\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(16);
\inst_CE_13|Mult5~320\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(17);
\inst_CE_13|Mult5~10\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(18);
\inst_CE_13|Mult5~11\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(19);
\inst_CE_13|Mult5~12\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(20);
\inst_CE_13|Mult5~13\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(21);
\inst_CE_13|Mult5~14\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(22);
\inst_CE_13|Mult5~15\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(23);
\inst_CE_13|Mult5~16\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(24);
\inst_CE_13|Mult5~17\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(25);
\inst_CE_13|Mult5~18\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(26);
\inst_CE_13|Mult5~19\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(27);
\inst_CE_13|Mult5~20\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(28);
\inst_CE_13|Mult5~21\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(29);
\inst_CE_13|Mult5~22\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(30);
\inst_CE_13|Mult5~23\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(31);
\inst_CE_13|Mult5~24\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(32);
\inst_CE_13|Mult5~25\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(33);
\inst_CE_13|Mult5~26\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(34);
\inst_CE_13|Mult5~27\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(35);
\inst_CE_13|Mult5~28\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(36);
\inst_CE_13|Mult5~29\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(37);
\inst_CE_13|Mult5~30\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(38);
\inst_CE_13|Mult5~31\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(39);
\inst_CE_13|Mult5~32\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(40);
\inst_CE_13|Mult5~33\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(41);
\inst_CE_13|Mult5~34\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(42);
\inst_CE_13|Mult5~35\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(43);
\inst_CE_13|Mult5~36\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(44);
\inst_CE_13|Mult5~37\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(45);
\inst_CE_13|Mult5~38\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(46);
\inst_CE_13|Mult5~39\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(47);
\inst_CE_13|Mult5~40\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(48);
\inst_CE_13|Mult5~41\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(49);
\inst_CE_13|Mult5~42\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(50);
\inst_CE_13|Mult5~43\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(51);
\inst_CE_13|Mult5~44\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(52);
\inst_CE_13|Mult5~45\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(53);
\inst_CE_13|Mult5~46\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(54);
\inst_CE_13|Mult5~47\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(55);
\inst_CE_13|Mult5~48\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(56);
\inst_CE_13|Mult5~49\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(57);
\inst_CE_13|Mult5~50\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(58);
\inst_CE_13|Mult5~51\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(59);
\inst_CE_13|Mult5~52\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(60);
\inst_CE_13|Mult5~53\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(61);
\inst_CE_13|Mult5~54\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(62);
\inst_CE_13|Mult5~55\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(63);

\inst_CE_12|Mult5~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_12|Mult5~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_12|Mult5~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_12|Mult5~mac_AX_bus\ <= (\w_12[5][7]~input_o\ & \w_12[5][7]~input_o\ & \w_12[5][7]~input_o\ & \w_12[5][7]~input_o\ & \w_12[5][7]~input_o\ & \w_12[5][7]~input_o\ & \w_12[5][7]~input_o\ & \w_12[5][7]~input_o\ & \w_12[5][7]~input_o\ & 
\w_12[5][7]~input_o\ & \w_12[5][7]~input_o\ & \w_12[5][6]~input_o\ & \w_12[5][5]~input_o\ & \w_12[5][4]~input_o\ & \w_12[5][3]~input_o\ & \w_12[5][2]~input_o\ & \w_12[5][1]~input_o\ & \w_12[5][0]~input_o\);

\inst_CE_12|Mult5~mac_AY_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][3]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][0]~_Duplicate_3_q\);

\inst_CE_12|Mult5~mac_BX_bus\ <= (\inst_CE_12|Mult4~320\ & \inst_CE_12|Mult4~320\ & \inst_CE_12|Mult4~320\ & \inst_CE_12|Mult4~320\ & \inst_CE_12|Mult4~320\ & \inst_CE_12|Mult4~320\ & \inst_CE_12|Mult4~320\ & \inst_CE_12|Mult4~320\ & 
\inst_CE_12|Mult4~320\ & \inst_CE_12|Mult4~320\ & \inst_CE_12|Mult4~320\ & \inst_CE_12|Mult4~320\ & \inst_CE_12|Mult4~320\ & \inst_CE_12|Mult4~320\ & \inst_CE_12|Mult4~320\ & \inst_CE_12|Mult4~320\ & \inst_CE_12|Mult4~320\ & \inst_CE_12|Mult4~320\);

\inst_CE_12|Mult5~mac_BY_bus\ <= (\inst_CE_12|Mult4~320\ & \inst_CE_12|Mult4~319\ & \inst_CE_12|Mult4~318\ & \inst_CE_12|Mult4~317\ & \inst_CE_12|Mult4~316\ & \inst_CE_12|Mult4~315\ & \inst_CE_12|Mult4~314\ & \inst_CE_12|Mult4~313\ & 
\inst_CE_12|Mult4~312\ & \inst_CE_12|Mult4~311\ & \inst_CE_12|Mult4~310\ & \inst_CE_12|Mult4~309\ & \inst_CE_12|Mult4~308\ & \inst_CE_12|Mult4~307\ & \inst_CE_12|Mult4~306\ & \inst_CE_12|Mult4~305\ & \inst_CE_12|Mult4~304\ & \inst_CE_12|Mult4~mac_resulta\
);

\inst_CE_12|Mult5~mac_resulta\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(0);
\inst_CE_12|Mult5~304\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(1);
\inst_CE_12|Mult5~305\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(2);
\inst_CE_12|Mult5~306\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(3);
\inst_CE_12|Mult5~307\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(4);
\inst_CE_12|Mult5~308\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(5);
\inst_CE_12|Mult5~309\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(6);
\inst_CE_12|Mult5~310\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(7);
\inst_CE_12|Mult5~311\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(8);
\inst_CE_12|Mult5~312\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(9);
\inst_CE_12|Mult5~313\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(10);
\inst_CE_12|Mult5~314\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(11);
\inst_CE_12|Mult5~315\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(12);
\inst_CE_12|Mult5~316\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(13);
\inst_CE_12|Mult5~317\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(14);
\inst_CE_12|Mult5~318\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(15);
\inst_CE_12|Mult5~319\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(16);
\inst_CE_12|Mult5~320\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(17);
\inst_CE_12|Mult5~10\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(18);
\inst_CE_12|Mult5~11\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(19);
\inst_CE_12|Mult5~12\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(20);
\inst_CE_12|Mult5~13\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(21);
\inst_CE_12|Mult5~14\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(22);
\inst_CE_12|Mult5~15\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(23);
\inst_CE_12|Mult5~16\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(24);
\inst_CE_12|Mult5~17\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(25);
\inst_CE_12|Mult5~18\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(26);
\inst_CE_12|Mult5~19\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(27);
\inst_CE_12|Mult5~20\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(28);
\inst_CE_12|Mult5~21\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(29);
\inst_CE_12|Mult5~22\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(30);
\inst_CE_12|Mult5~23\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(31);
\inst_CE_12|Mult5~24\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(32);
\inst_CE_12|Mult5~25\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(33);
\inst_CE_12|Mult5~26\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(34);
\inst_CE_12|Mult5~27\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(35);
\inst_CE_12|Mult5~28\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(36);
\inst_CE_12|Mult5~29\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(37);
\inst_CE_12|Mult5~30\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(38);
\inst_CE_12|Mult5~31\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(39);
\inst_CE_12|Mult5~32\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(40);
\inst_CE_12|Mult5~33\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(41);
\inst_CE_12|Mult5~34\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(42);
\inst_CE_12|Mult5~35\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(43);
\inst_CE_12|Mult5~36\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(44);
\inst_CE_12|Mult5~37\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(45);
\inst_CE_12|Mult5~38\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(46);
\inst_CE_12|Mult5~39\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(47);
\inst_CE_12|Mult5~40\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(48);
\inst_CE_12|Mult5~41\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(49);
\inst_CE_12|Mult5~42\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(50);
\inst_CE_12|Mult5~43\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(51);
\inst_CE_12|Mult5~44\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(52);
\inst_CE_12|Mult5~45\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(53);
\inst_CE_12|Mult5~46\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(54);
\inst_CE_12|Mult5~47\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(55);
\inst_CE_12|Mult5~48\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(56);
\inst_CE_12|Mult5~49\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(57);
\inst_CE_12|Mult5~50\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(58);
\inst_CE_12|Mult5~51\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(59);
\inst_CE_12|Mult5~52\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(60);
\inst_CE_12|Mult5~53\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(61);
\inst_CE_12|Mult5~54\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(62);
\inst_CE_12|Mult5~55\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(63);

\inst_CE_11|Mult5~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_11|Mult5~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_11|Mult5~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_11|Mult5~mac_AX_bus\ <= (\w_11[5][7]~input_o\ & \w_11[5][7]~input_o\ & \w_11[5][7]~input_o\ & \w_11[5][7]~input_o\ & \w_11[5][7]~input_o\ & \w_11[5][7]~input_o\ & \w_11[5][7]~input_o\ & \w_11[5][7]~input_o\ & \w_11[5][7]~input_o\ & 
\w_11[5][7]~input_o\ & \w_11[5][7]~input_o\ & \w_11[5][6]~input_o\ & \w_11[5][5]~input_o\ & \w_11[5][4]~input_o\ & \w_11[5][3]~input_o\ & \w_11[5][2]~input_o\ & \w_11[5][1]~input_o\ & \w_11[5][0]~input_o\);

\inst_CE_11|Mult5~mac_AY_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][3]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][0]~_Duplicate_3_q\);

\inst_CE_11|Mult5~mac_BX_bus\ <= (\inst_CE_11|Mult4~320\ & \inst_CE_11|Mult4~320\ & \inst_CE_11|Mult4~320\ & \inst_CE_11|Mult4~320\ & \inst_CE_11|Mult4~320\ & \inst_CE_11|Mult4~320\ & \inst_CE_11|Mult4~320\ & \inst_CE_11|Mult4~320\ & 
\inst_CE_11|Mult4~320\ & \inst_CE_11|Mult4~320\ & \inst_CE_11|Mult4~320\ & \inst_CE_11|Mult4~320\ & \inst_CE_11|Mult4~320\ & \inst_CE_11|Mult4~320\ & \inst_CE_11|Mult4~320\ & \inst_CE_11|Mult4~320\ & \inst_CE_11|Mult4~320\ & \inst_CE_11|Mult4~320\);

\inst_CE_11|Mult5~mac_BY_bus\ <= (\inst_CE_11|Mult4~320\ & \inst_CE_11|Mult4~319\ & \inst_CE_11|Mult4~318\ & \inst_CE_11|Mult4~317\ & \inst_CE_11|Mult4~316\ & \inst_CE_11|Mult4~315\ & \inst_CE_11|Mult4~314\ & \inst_CE_11|Mult4~313\ & 
\inst_CE_11|Mult4~312\ & \inst_CE_11|Mult4~311\ & \inst_CE_11|Mult4~310\ & \inst_CE_11|Mult4~309\ & \inst_CE_11|Mult4~308\ & \inst_CE_11|Mult4~307\ & \inst_CE_11|Mult4~306\ & \inst_CE_11|Mult4~305\ & \inst_CE_11|Mult4~304\ & \inst_CE_11|Mult4~mac_resulta\
);

\inst_CE_11|Mult5~mac_resulta\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(0);
\inst_CE_11|Mult5~304\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(1);
\inst_CE_11|Mult5~305\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(2);
\inst_CE_11|Mult5~306\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(3);
\inst_CE_11|Mult5~307\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(4);
\inst_CE_11|Mult5~308\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(5);
\inst_CE_11|Mult5~309\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(6);
\inst_CE_11|Mult5~310\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(7);
\inst_CE_11|Mult5~311\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(8);
\inst_CE_11|Mult5~312\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(9);
\inst_CE_11|Mult5~313\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(10);
\inst_CE_11|Mult5~314\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(11);
\inst_CE_11|Mult5~315\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(12);
\inst_CE_11|Mult5~316\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(13);
\inst_CE_11|Mult5~317\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(14);
\inst_CE_11|Mult5~318\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(15);
\inst_CE_11|Mult5~319\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(16);
\inst_CE_11|Mult5~320\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(17);
\inst_CE_11|Mult5~10\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(18);
\inst_CE_11|Mult5~11\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(19);
\inst_CE_11|Mult5~12\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(20);
\inst_CE_11|Mult5~13\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(21);
\inst_CE_11|Mult5~14\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(22);
\inst_CE_11|Mult5~15\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(23);
\inst_CE_11|Mult5~16\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(24);
\inst_CE_11|Mult5~17\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(25);
\inst_CE_11|Mult5~18\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(26);
\inst_CE_11|Mult5~19\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(27);
\inst_CE_11|Mult5~20\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(28);
\inst_CE_11|Mult5~21\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(29);
\inst_CE_11|Mult5~22\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(30);
\inst_CE_11|Mult5~23\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(31);
\inst_CE_11|Mult5~24\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(32);
\inst_CE_11|Mult5~25\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(33);
\inst_CE_11|Mult5~26\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(34);
\inst_CE_11|Mult5~27\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(35);
\inst_CE_11|Mult5~28\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(36);
\inst_CE_11|Mult5~29\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(37);
\inst_CE_11|Mult5~30\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(38);
\inst_CE_11|Mult5~31\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(39);
\inst_CE_11|Mult5~32\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(40);
\inst_CE_11|Mult5~33\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(41);
\inst_CE_11|Mult5~34\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(42);
\inst_CE_11|Mult5~35\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(43);
\inst_CE_11|Mult5~36\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(44);
\inst_CE_11|Mult5~37\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(45);
\inst_CE_11|Mult5~38\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(46);
\inst_CE_11|Mult5~39\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(47);
\inst_CE_11|Mult5~40\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(48);
\inst_CE_11|Mult5~41\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(49);
\inst_CE_11|Mult5~42\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(50);
\inst_CE_11|Mult5~43\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(51);
\inst_CE_11|Mult5~44\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(52);
\inst_CE_11|Mult5~45\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(53);
\inst_CE_11|Mult5~46\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(54);
\inst_CE_11|Mult5~47\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(55);
\inst_CE_11|Mult5~48\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(56);
\inst_CE_11|Mult5~49\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(57);
\inst_CE_11|Mult5~50\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(58);
\inst_CE_11|Mult5~51\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(59);
\inst_CE_11|Mult5~52\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(60);
\inst_CE_11|Mult5~53\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(61);
\inst_CE_11|Mult5~54\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(62);
\inst_CE_11|Mult5~55\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(63);

\inst_CE_13|Mult4~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_13|Mult4~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_13|Mult4~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_13|Mult4~mac_AX_bus\ <= (\w_13[4][7]~input_o\ & \w_13[4][7]~input_o\ & \w_13[4][7]~input_o\ & \w_13[4][7]~input_o\ & \w_13[4][7]~input_o\ & \w_13[4][7]~input_o\ & \w_13[4][7]~input_o\ & \w_13[4][7]~input_o\ & \w_13[4][7]~input_o\ & 
\w_13[4][7]~input_o\ & \w_13[4][7]~input_o\ & \w_13[4][6]~input_o\ & \w_13[4][5]~input_o\ & \w_13[4][4]~input_o\ & \w_13[4][3]~input_o\ & \w_13[4][2]~input_o\ & \w_13[4][1]~input_o\ & \w_13[4][0]~input_o\);

\inst_CE_13|Mult4~mac_AY_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][3]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3_q\);

\inst_CE_13|Mult4~mac_BX_bus\ <= (\inst_CE_13|Add2~27\ & \inst_CE_13|Add2~27\ & \inst_CE_13|Add2~27\ & \inst_CE_13|Add2~27\ & \inst_CE_13|Add2~27\ & \inst_CE_13|Add2~27\ & \inst_CE_13|Add2~27\ & \inst_CE_13|Add2~27\ & \inst_CE_13|Add2~27\ & 
\inst_CE_13|Add2~27\ & \inst_CE_13|Add2~27\ & \inst_CE_13|Add2~27\ & \inst_CE_13|Add2~27\ & \inst_CE_13|Add2~27\ & \inst_CE_13|Add2~27\ & \inst_CE_13|Add2~27\ & \inst_CE_13|Add2~27\ & \inst_CE_13|Add2~27\);

\inst_CE_13|Mult4~mac_BY_bus\ <= (\inst_CE_13|Add2~27\ & \inst_CE_13|Add2~26\ & \inst_CE_13|Add2~25\ & \inst_CE_13|Add2~24\ & \inst_CE_13|Add2~23\ & \inst_CE_13|Add2~22\ & \inst_CE_13|Add2~21\ & \inst_CE_13|Add2~20\ & \inst_CE_13|Add2~19\ & 
\inst_CE_13|Add2~18\ & \inst_CE_13|Add2~17\ & \inst_CE_13|Add2~16\ & \inst_CE_13|Add2~15\ & \inst_CE_13|Add2~14\ & \inst_CE_13|Add2~13\ & \inst_CE_13|Add2~12\ & \inst_CE_13|Add2~11\ & \inst_CE_13|Add2~10_resulta\);

\inst_CE_13|Mult4~mac_resulta\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(0);
\inst_CE_13|Mult4~304\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(1);
\inst_CE_13|Mult4~305\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(2);
\inst_CE_13|Mult4~306\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(3);
\inst_CE_13|Mult4~307\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(4);
\inst_CE_13|Mult4~308\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(5);
\inst_CE_13|Mult4~309\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(6);
\inst_CE_13|Mult4~310\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(7);
\inst_CE_13|Mult4~311\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(8);
\inst_CE_13|Mult4~312\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(9);
\inst_CE_13|Mult4~313\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(10);
\inst_CE_13|Mult4~314\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(11);
\inst_CE_13|Mult4~315\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(12);
\inst_CE_13|Mult4~316\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(13);
\inst_CE_13|Mult4~317\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(14);
\inst_CE_13|Mult4~318\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(15);
\inst_CE_13|Mult4~319\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(16);
\inst_CE_13|Mult4~320\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(17);
\inst_CE_13|Mult4~10\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(18);
\inst_CE_13|Mult4~11\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(19);
\inst_CE_13|Mult4~12\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(20);
\inst_CE_13|Mult4~13\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(21);
\inst_CE_13|Mult4~14\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(22);
\inst_CE_13|Mult4~15\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(23);
\inst_CE_13|Mult4~16\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(24);
\inst_CE_13|Mult4~17\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(25);
\inst_CE_13|Mult4~18\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(26);
\inst_CE_13|Mult4~19\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(27);
\inst_CE_13|Mult4~20\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(28);
\inst_CE_13|Mult4~21\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(29);
\inst_CE_13|Mult4~22\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(30);
\inst_CE_13|Mult4~23\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(31);
\inst_CE_13|Mult4~24\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(32);
\inst_CE_13|Mult4~25\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(33);
\inst_CE_13|Mult4~26\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(34);
\inst_CE_13|Mult4~27\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(35);
\inst_CE_13|Mult4~28\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(36);
\inst_CE_13|Mult4~29\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(37);
\inst_CE_13|Mult4~30\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(38);
\inst_CE_13|Mult4~31\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(39);
\inst_CE_13|Mult4~32\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(40);
\inst_CE_13|Mult4~33\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(41);
\inst_CE_13|Mult4~34\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(42);
\inst_CE_13|Mult4~35\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(43);
\inst_CE_13|Mult4~36\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(44);
\inst_CE_13|Mult4~37\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(45);
\inst_CE_13|Mult4~38\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(46);
\inst_CE_13|Mult4~39\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(47);
\inst_CE_13|Mult4~40\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(48);
\inst_CE_13|Mult4~41\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(49);
\inst_CE_13|Mult4~42\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(50);
\inst_CE_13|Mult4~43\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(51);
\inst_CE_13|Mult4~44\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(52);
\inst_CE_13|Mult4~45\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(53);
\inst_CE_13|Mult4~46\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(54);
\inst_CE_13|Mult4~47\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(55);
\inst_CE_13|Mult4~48\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(56);
\inst_CE_13|Mult4~49\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(57);
\inst_CE_13|Mult4~50\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(58);
\inst_CE_13|Mult4~51\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(59);
\inst_CE_13|Mult4~52\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(60);
\inst_CE_13|Mult4~53\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(61);
\inst_CE_13|Mult4~54\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(62);
\inst_CE_13|Mult4~55\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(63);

\inst_CE_12|Mult4~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_12|Mult4~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_12|Mult4~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_12|Mult4~mac_AX_bus\ <= (\w_12[4][7]~input_o\ & \w_12[4][7]~input_o\ & \w_12[4][7]~input_o\ & \w_12[4][7]~input_o\ & \w_12[4][7]~input_o\ & \w_12[4][7]~input_o\ & \w_12[4][7]~input_o\ & \w_12[4][7]~input_o\ & \w_12[4][7]~input_o\ & 
\w_12[4][7]~input_o\ & \w_12[4][7]~input_o\ & \w_12[4][6]~input_o\ & \w_12[4][5]~input_o\ & \w_12[4][4]~input_o\ & \w_12[4][3]~input_o\ & \w_12[4][2]~input_o\ & \w_12[4][1]~input_o\ & \w_12[4][0]~input_o\);

\inst_CE_12|Mult4~mac_AY_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][3]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3_q\);

\inst_CE_12|Mult4~mac_BX_bus\ <= (\inst_CE_12|Add2~27\ & \inst_CE_12|Add2~27\ & \inst_CE_12|Add2~27\ & \inst_CE_12|Add2~27\ & \inst_CE_12|Add2~27\ & \inst_CE_12|Add2~27\ & \inst_CE_12|Add2~27\ & \inst_CE_12|Add2~27\ & \inst_CE_12|Add2~27\ & 
\inst_CE_12|Add2~27\ & \inst_CE_12|Add2~27\ & \inst_CE_12|Add2~27\ & \inst_CE_12|Add2~27\ & \inst_CE_12|Add2~27\ & \inst_CE_12|Add2~27\ & \inst_CE_12|Add2~27\ & \inst_CE_12|Add2~27\ & \inst_CE_12|Add2~27\);

\inst_CE_12|Mult4~mac_BY_bus\ <= (\inst_CE_12|Add2~27\ & \inst_CE_12|Add2~26\ & \inst_CE_12|Add2~25\ & \inst_CE_12|Add2~24\ & \inst_CE_12|Add2~23\ & \inst_CE_12|Add2~22\ & \inst_CE_12|Add2~21\ & \inst_CE_12|Add2~20\ & \inst_CE_12|Add2~19\ & 
\inst_CE_12|Add2~18\ & \inst_CE_12|Add2~17\ & \inst_CE_12|Add2~16\ & \inst_CE_12|Add2~15\ & \inst_CE_12|Add2~14\ & \inst_CE_12|Add2~13\ & \inst_CE_12|Add2~12\ & \inst_CE_12|Add2~11\ & \inst_CE_12|Add2~10_resulta\);

\inst_CE_12|Mult4~mac_resulta\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(0);
\inst_CE_12|Mult4~304\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(1);
\inst_CE_12|Mult4~305\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(2);
\inst_CE_12|Mult4~306\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(3);
\inst_CE_12|Mult4~307\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(4);
\inst_CE_12|Mult4~308\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(5);
\inst_CE_12|Mult4~309\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(6);
\inst_CE_12|Mult4~310\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(7);
\inst_CE_12|Mult4~311\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(8);
\inst_CE_12|Mult4~312\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(9);
\inst_CE_12|Mult4~313\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(10);
\inst_CE_12|Mult4~314\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(11);
\inst_CE_12|Mult4~315\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(12);
\inst_CE_12|Mult4~316\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(13);
\inst_CE_12|Mult4~317\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(14);
\inst_CE_12|Mult4~318\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(15);
\inst_CE_12|Mult4~319\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(16);
\inst_CE_12|Mult4~320\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(17);
\inst_CE_12|Mult4~10\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(18);
\inst_CE_12|Mult4~11\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(19);
\inst_CE_12|Mult4~12\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(20);
\inst_CE_12|Mult4~13\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(21);
\inst_CE_12|Mult4~14\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(22);
\inst_CE_12|Mult4~15\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(23);
\inst_CE_12|Mult4~16\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(24);
\inst_CE_12|Mult4~17\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(25);
\inst_CE_12|Mult4~18\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(26);
\inst_CE_12|Mult4~19\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(27);
\inst_CE_12|Mult4~20\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(28);
\inst_CE_12|Mult4~21\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(29);
\inst_CE_12|Mult4~22\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(30);
\inst_CE_12|Mult4~23\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(31);
\inst_CE_12|Mult4~24\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(32);
\inst_CE_12|Mult4~25\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(33);
\inst_CE_12|Mult4~26\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(34);
\inst_CE_12|Mult4~27\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(35);
\inst_CE_12|Mult4~28\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(36);
\inst_CE_12|Mult4~29\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(37);
\inst_CE_12|Mult4~30\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(38);
\inst_CE_12|Mult4~31\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(39);
\inst_CE_12|Mult4~32\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(40);
\inst_CE_12|Mult4~33\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(41);
\inst_CE_12|Mult4~34\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(42);
\inst_CE_12|Mult4~35\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(43);
\inst_CE_12|Mult4~36\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(44);
\inst_CE_12|Mult4~37\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(45);
\inst_CE_12|Mult4~38\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(46);
\inst_CE_12|Mult4~39\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(47);
\inst_CE_12|Mult4~40\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(48);
\inst_CE_12|Mult4~41\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(49);
\inst_CE_12|Mult4~42\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(50);
\inst_CE_12|Mult4~43\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(51);
\inst_CE_12|Mult4~44\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(52);
\inst_CE_12|Mult4~45\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(53);
\inst_CE_12|Mult4~46\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(54);
\inst_CE_12|Mult4~47\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(55);
\inst_CE_12|Mult4~48\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(56);
\inst_CE_12|Mult4~49\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(57);
\inst_CE_12|Mult4~50\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(58);
\inst_CE_12|Mult4~51\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(59);
\inst_CE_12|Mult4~52\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(60);
\inst_CE_12|Mult4~53\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(61);
\inst_CE_12|Mult4~54\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(62);
\inst_CE_12|Mult4~55\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(63);

\inst_CE_11|Mult4~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_11|Mult4~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_11|Mult4~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_11|Mult4~mac_AX_bus\ <= (\w_11[4][7]~input_o\ & \w_11[4][7]~input_o\ & \w_11[4][7]~input_o\ & \w_11[4][7]~input_o\ & \w_11[4][7]~input_o\ & \w_11[4][7]~input_o\ & \w_11[4][7]~input_o\ & \w_11[4][7]~input_o\ & \w_11[4][7]~input_o\ & 
\w_11[4][7]~input_o\ & \w_11[4][7]~input_o\ & \w_11[4][6]~input_o\ & \w_11[4][5]~input_o\ & \w_11[4][4]~input_o\ & \w_11[4][3]~input_o\ & \w_11[4][2]~input_o\ & \w_11[4][1]~input_o\ & \w_11[4][0]~input_o\);

\inst_CE_11|Mult4~mac_AY_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][3]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3_q\);

\inst_CE_11|Mult4~mac_BX_bus\ <= (\inst_CE_11|Add2~27\ & \inst_CE_11|Add2~27\ & \inst_CE_11|Add2~27\ & \inst_CE_11|Add2~27\ & \inst_CE_11|Add2~27\ & \inst_CE_11|Add2~27\ & \inst_CE_11|Add2~27\ & \inst_CE_11|Add2~27\ & \inst_CE_11|Add2~27\ & 
\inst_CE_11|Add2~27\ & \inst_CE_11|Add2~27\ & \inst_CE_11|Add2~27\ & \inst_CE_11|Add2~27\ & \inst_CE_11|Add2~27\ & \inst_CE_11|Add2~27\ & \inst_CE_11|Add2~27\ & \inst_CE_11|Add2~27\ & \inst_CE_11|Add2~27\);

\inst_CE_11|Mult4~mac_BY_bus\ <= (\inst_CE_11|Add2~27\ & \inst_CE_11|Add2~26\ & \inst_CE_11|Add2~25\ & \inst_CE_11|Add2~24\ & \inst_CE_11|Add2~23\ & \inst_CE_11|Add2~22\ & \inst_CE_11|Add2~21\ & \inst_CE_11|Add2~20\ & \inst_CE_11|Add2~19\ & 
\inst_CE_11|Add2~18\ & \inst_CE_11|Add2~17\ & \inst_CE_11|Add2~16\ & \inst_CE_11|Add2~15\ & \inst_CE_11|Add2~14\ & \inst_CE_11|Add2~13\ & \inst_CE_11|Add2~12\ & \inst_CE_11|Add2~11\ & \inst_CE_11|Add2~10_resulta\);

\inst_CE_11|Mult4~mac_resulta\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(0);
\inst_CE_11|Mult4~304\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(1);
\inst_CE_11|Mult4~305\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(2);
\inst_CE_11|Mult4~306\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(3);
\inst_CE_11|Mult4~307\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(4);
\inst_CE_11|Mult4~308\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(5);
\inst_CE_11|Mult4~309\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(6);
\inst_CE_11|Mult4~310\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(7);
\inst_CE_11|Mult4~311\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(8);
\inst_CE_11|Mult4~312\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(9);
\inst_CE_11|Mult4~313\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(10);
\inst_CE_11|Mult4~314\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(11);
\inst_CE_11|Mult4~315\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(12);
\inst_CE_11|Mult4~316\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(13);
\inst_CE_11|Mult4~317\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(14);
\inst_CE_11|Mult4~318\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(15);
\inst_CE_11|Mult4~319\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(16);
\inst_CE_11|Mult4~320\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(17);
\inst_CE_11|Mult4~10\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(18);
\inst_CE_11|Mult4~11\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(19);
\inst_CE_11|Mult4~12\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(20);
\inst_CE_11|Mult4~13\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(21);
\inst_CE_11|Mult4~14\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(22);
\inst_CE_11|Mult4~15\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(23);
\inst_CE_11|Mult4~16\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(24);
\inst_CE_11|Mult4~17\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(25);
\inst_CE_11|Mult4~18\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(26);
\inst_CE_11|Mult4~19\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(27);
\inst_CE_11|Mult4~20\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(28);
\inst_CE_11|Mult4~21\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(29);
\inst_CE_11|Mult4~22\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(30);
\inst_CE_11|Mult4~23\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(31);
\inst_CE_11|Mult4~24\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(32);
\inst_CE_11|Mult4~25\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(33);
\inst_CE_11|Mult4~26\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(34);
\inst_CE_11|Mult4~27\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(35);
\inst_CE_11|Mult4~28\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(36);
\inst_CE_11|Mult4~29\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(37);
\inst_CE_11|Mult4~30\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(38);
\inst_CE_11|Mult4~31\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(39);
\inst_CE_11|Mult4~32\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(40);
\inst_CE_11|Mult4~33\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(41);
\inst_CE_11|Mult4~34\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(42);
\inst_CE_11|Mult4~35\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(43);
\inst_CE_11|Mult4~36\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(44);
\inst_CE_11|Mult4~37\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(45);
\inst_CE_11|Mult4~38\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(46);
\inst_CE_11|Mult4~39\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(47);
\inst_CE_11|Mult4~40\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(48);
\inst_CE_11|Mult4~41\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(49);
\inst_CE_11|Mult4~42\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(50);
\inst_CE_11|Mult4~43\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(51);
\inst_CE_11|Mult4~44\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(52);
\inst_CE_11|Mult4~45\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(53);
\inst_CE_11|Mult4~46\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(54);
\inst_CE_11|Mult4~47\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(55);
\inst_CE_11|Mult4~48\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(56);
\inst_CE_11|Mult4~49\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(57);
\inst_CE_11|Mult4~50\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(58);
\inst_CE_11|Mult4~51\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(59);
\inst_CE_11|Mult4~52\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(60);
\inst_CE_11|Mult4~53\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(61);
\inst_CE_11|Mult4~54\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(62);
\inst_CE_11|Mult4~55\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(63);

\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][0]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][2]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][5]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][7]~_Duplicate_6_q\);

\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTAADDR_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(7) & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBADDR_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a\(7) & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a\(6) & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a\(5) & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a\(4) & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a\(3) & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a\(2) & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a\(0));

\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ <= \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(0);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a1\ <= \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(1);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a2\ <= \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(2);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a3\ <= \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(3);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a4\ <= \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(4);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a5\ <= \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(5);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a6\ <= \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(6);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a7\ <= \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(7);
\ALT_INV_in_data[6]~input_o\ <= NOT \in_data[6]~input_o\;
\ALT_INV_in_data[3]~input_o\ <= NOT \in_data[3]~input_o\;
\ALT_INV_in_data[0]~input_o\ <= NOT \in_data[0]~input_o\;
\ALT_INV_n_11[0]~input_o\ <= NOT \n_11[0]~input_o\;
\ALT_INV_n_11[1]~input_o\ <= NOT \n_11[1]~input_o\;
\ALT_INV_n_11[2]~input_o\ <= NOT \n_11[2]~input_o\;
\ALT_INV_n_12[0]~input_o\ <= NOT \n_12[0]~input_o\;
\ALT_INV_n_12[1]~input_o\ <= NOT \n_12[1]~input_o\;
\ALT_INV_n_12[2]~input_o\ <= NOT \n_12[2]~input_o\;
\ALT_INV_n_13[0]~input_o\ <= NOT \n_13[0]~input_o\;
\ALT_INV_n_13[1]~input_o\ <= NOT \n_13[1]~input_o\;
\ALT_INV_n_13[2]~input_o\ <= NOT \n_13[2]~input_o\;
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit0~q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit1~q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit1~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit2~q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit2~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit3~q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit4~q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit5~q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit0~q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit6~q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit1~q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit1~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit7~q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit2~q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit2~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~1_combout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~0_combout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit3~q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_op_2~0_combout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0_combout\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit4~q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_dffe3a\(1) <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a\(1);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_dffe7~q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe7~q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit5~q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[2][5]~_Duplicate_3_q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][5]~_Duplicate_3_q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[2][4]~_Duplicate_3_q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][4]~_Duplicate_3_q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[2][2]~_Duplicate_3_q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][2]~_Duplicate_3_q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[2][1]~_Duplicate_3_q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][1]~_Duplicate_3_q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit6~q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~q\;
\inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[0][6]~q\ <= NOT \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][6]~q\;
\inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[0][5]~q\ <= NOT \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][5]~q\;
\inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[0][3]~q\ <= NOT \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][3]~q\;
\inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[0][2]~q\ <= NOT \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][2]~q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit7~q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~q\;
\inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[1][7]~_Duplicate_6_q\ <= NOT \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\;
\inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[1][5]~_Duplicate_3_q\ <= NOT \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3_q\;
\inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[1][2]~_Duplicate_3_q\ <= NOT \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3_q\;
\inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[1][0]~_Duplicate_3_q\ <= NOT \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3_q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~1_combout\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~0_combout\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_op_2~0_combout\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_2~0_combout\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_dffe3a\(1) <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a\(1);
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_dffe7~q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe7~q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][7]~q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][6]~q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]~q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][5]~q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][5]~q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][4]~q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][4]~q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][2]~q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]~q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][1]~q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]~q\;
\inst_CE_11|ALT_INV_ShiftRight0~19_combout\ <= NOT \inst_CE_11|ShiftRight0~19_combout\;
\inst_CE_11|ALT_INV_ShiftRight0~18_combout\ <= NOT \inst_CE_11|ShiftRight0~18_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~19_combout\ <= NOT \inst_CE_12|ShiftRight0~19_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~18_combout\ <= NOT \inst_CE_12|ShiftRight0~18_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~19_combout\ <= NOT \inst_CE_13|ShiftRight0~19_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~18_combout\ <= NOT \inst_CE_13|ShiftRight0~18_combout\;
\inst_CE_11|ALT_INV_ShiftRight0~17_combout\ <= NOT \inst_CE_11|ShiftRight0~17_combout\;
\inst_CE_11|ALT_INV_ShiftRight0~16_combout\ <= NOT \inst_CE_11|ShiftRight0~16_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~17_combout\ <= NOT \inst_CE_12|ShiftRight0~17_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~16_combout\ <= NOT \inst_CE_12|ShiftRight0~16_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~17_combout\ <= NOT \inst_CE_13|ShiftRight0~17_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~16_combout\ <= NOT \inst_CE_13|ShiftRight0~16_combout\;
\inst_CE_11|ALT_INV_ShiftRight0~15_combout\ <= NOT \inst_CE_11|ShiftRight0~15_combout\;
\inst_CE_11|ALT_INV_ShiftRight0~14_combout\ <= NOT \inst_CE_11|ShiftRight0~14_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~15_combout\ <= NOT \inst_CE_12|ShiftRight0~15_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~14_combout\ <= NOT \inst_CE_12|ShiftRight0~14_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~15_combout\ <= NOT \inst_CE_13|ShiftRight0~15_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~14_combout\ <= NOT \inst_CE_13|ShiftRight0~14_combout\;
\inst_CE_11|ALT_INV_ShiftRight0~13_combout\ <= NOT \inst_CE_11|ShiftRight0~13_combout\;
\inst_CE_11|ALT_INV_ShiftRight0~12_combout\ <= NOT \inst_CE_11|ShiftRight0~12_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~13_combout\ <= NOT \inst_CE_12|ShiftRight0~13_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~12_combout\ <= NOT \inst_CE_12|ShiftRight0~12_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~13_combout\ <= NOT \inst_CE_13|ShiftRight0~13_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~12_combout\ <= NOT \inst_CE_13|ShiftRight0~12_combout\;
\inst_CE_11|ALT_INV_ShiftRight0~11_combout\ <= NOT \inst_CE_11|ShiftRight0~11_combout\;
\inst_CE_11|ALT_INV_ShiftRight0~10_combout\ <= NOT \inst_CE_11|ShiftRight0~10_combout\;
\inst_CE_11|ALT_INV_ShiftRight0~9_combout\ <= NOT \inst_CE_11|ShiftRight0~9_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~11_combout\ <= NOT \inst_CE_12|ShiftRight0~11_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~10_combout\ <= NOT \inst_CE_12|ShiftRight0~10_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~9_combout\ <= NOT \inst_CE_12|ShiftRight0~9_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~11_combout\ <= NOT \inst_CE_13|ShiftRight0~11_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~10_combout\ <= NOT \inst_CE_13|ShiftRight0~10_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~9_combout\ <= NOT \inst_CE_13|ShiftRight0~9_combout\;
\inst_CE_11|ALT_INV_ShiftRight0~8_combout\ <= NOT \inst_CE_11|ShiftRight0~8_combout\;
\inst_CE_11|ALT_INV_ShiftRight0~7_combout\ <= NOT \inst_CE_11|ShiftRight0~7_combout\;
\inst_CE_11|ALT_INV_ShiftRight0~6_combout\ <= NOT \inst_CE_11|ShiftRight0~6_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~8_combout\ <= NOT \inst_CE_12|ShiftRight0~8_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~7_combout\ <= NOT \inst_CE_12|ShiftRight0~7_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~6_combout\ <= NOT \inst_CE_12|ShiftRight0~6_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~8_combout\ <= NOT \inst_CE_13|ShiftRight0~8_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~7_combout\ <= NOT \inst_CE_13|ShiftRight0~7_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~6_combout\ <= NOT \inst_CE_13|ShiftRight0~6_combout\;
\inst_CE_11|ALT_INV_ShiftRight0~5_combout\ <= NOT \inst_CE_11|ShiftRight0~5_combout\;
\inst_CE_11|ALT_INV_ShiftRight0~4_combout\ <= NOT \inst_CE_11|ShiftRight0~4_combout\;
\inst_CE_11|ALT_INV_ShiftRight0~3_combout\ <= NOT \inst_CE_11|ShiftRight0~3_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~5_combout\ <= NOT \inst_CE_12|ShiftRight0~5_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~4_combout\ <= NOT \inst_CE_12|ShiftRight0~4_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~3_combout\ <= NOT \inst_CE_12|ShiftRight0~3_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~5_combout\ <= NOT \inst_CE_13|ShiftRight0~5_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~4_combout\ <= NOT \inst_CE_13|ShiftRight0~4_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~3_combout\ <= NOT \inst_CE_13|ShiftRight0~3_combout\;
\inst_CE_11|ALT_INV_ShiftRight0~2_combout\ <= NOT \inst_CE_11|ShiftRight0~2_combout\;
\inst_CE_11|ALT_INV_ShiftRight0~1_combout\ <= NOT \inst_CE_11|ShiftRight0~1_combout\;
\inst_CE_11|ALT_INV_ShiftRight0~0_combout\ <= NOT \inst_CE_11|ShiftRight0~0_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~2_combout\ <= NOT \inst_CE_12|ShiftRight0~2_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~1_combout\ <= NOT \inst_CE_12|ShiftRight0~1_combout\;
\inst_CE_12|ALT_INV_ShiftRight0~0_combout\ <= NOT \inst_CE_12|ShiftRight0~0_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~2_combout\ <= NOT \inst_CE_13|ShiftRight0~2_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~1_combout\ <= NOT \inst_CE_13|ShiftRight0~1_combout\;
\inst_CE_13|ALT_INV_ShiftRight0~0_combout\ <= NOT \inst_CE_13|ShiftRight0~0_combout\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[1][7]~_Duplicate_6_q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[1][5]~_Duplicate_3_q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3_q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[1][4]~_Duplicate_3_q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3_q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[1][3]~_Duplicate_3_q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3_q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[1][1]~_Duplicate_3_q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3_q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[2][6]~_Duplicate_3_q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][6]~_Duplicate_3_q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[2][5]~_Duplicate_3_q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3_q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[2][4]~_Duplicate_3_q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3_q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[2][0]~_Duplicate_3_q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][0]~_Duplicate_3_q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][7]~q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][6]~q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][6]~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][5]~q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][5]~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][4]~q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][4]~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][2]~q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][2]~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][1]~q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][1]~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][0]~q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][0]~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[1][7]~_Duplicate_6_q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[1][6]~_Duplicate_3_q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3_q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[1][0]~_Duplicate_3_q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3_q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita3~sumout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~sumout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita4~sumout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~sumout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita5~sumout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~sumout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita6~sumout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~sumout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita7~sumout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~sumout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_op_1~5_sumout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~5_sumout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita7~1_sumout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1_sumout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita7~1_sumout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~1_sumout\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita3~sumout\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~sumout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(7) <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(7);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(6) <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(5) <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(4) <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(3) <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2) <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1) <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0) <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0);
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita4~sumout\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~sumout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a1\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a1\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a3\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a3\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a4\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a4\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a0~portbdataout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita5~sumout\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~sumout\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita6~sumout\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~sumout\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita7~sumout\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~sumout\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_op_1~5_sumout\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~5_sumout\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita7~1_sumout\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1_sumout\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita7~1_sumout\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~1_sumout\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(7) <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(7);
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(6) <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6);
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(5) <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5);
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(4) <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4);
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(3) <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3);
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2) <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2);
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1) <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1);
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0) <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0);
\inst_CE_11|ALT_INV_sums\(14) <= NOT \inst_CE_11|sums\(14);
\inst_CE_11|ALT_INV_sums\(13) <= NOT \inst_CE_11|sums\(13);
\inst_CE_11|ALT_INV_sums\(12) <= NOT \inst_CE_11|sums\(12);
\inst_CE_11|ALT_INV_sums\(11) <= NOT \inst_CE_11|sums\(11);
\inst_CE_11|ALT_INV_sums\(10) <= NOT \inst_CE_11|sums\(10);
\inst_CE_11|ALT_INV_sums\(9) <= NOT \inst_CE_11|sums\(9);
\inst_CE_11|ALT_INV_sums\(8) <= NOT \inst_CE_11|sums\(8);
\inst_CE_11|ALT_INV_sums\(7) <= NOT \inst_CE_11|sums\(7);
\inst_CE_11|ALT_INV_sums\(6) <= NOT \inst_CE_11|sums\(6);
\inst_CE_11|ALT_INV_sums\(5) <= NOT \inst_CE_11|sums\(5);
\inst_CE_11|ALT_INV_sums\(4) <= NOT \inst_CE_11|sums\(4);
\inst_CE_11|ALT_INV_sums\(3) <= NOT \inst_CE_11|sums\(3);
\inst_CE_11|ALT_INV_sums\(2) <= NOT \inst_CE_11|sums\(2);
\inst_CE_11|ALT_INV_sums\(1) <= NOT \inst_CE_11|sums\(1);
\inst_CE_11|ALT_INV_sums\(0) <= NOT \inst_CE_11|sums\(0);
\inst_CE_12|ALT_INV_sums\(14) <= NOT \inst_CE_12|sums\(14);
\inst_CE_12|ALT_INV_sums\(13) <= NOT \inst_CE_12|sums\(13);
\inst_CE_12|ALT_INV_sums\(12) <= NOT \inst_CE_12|sums\(12);
\inst_CE_12|ALT_INV_sums\(11) <= NOT \inst_CE_12|sums\(11);
\inst_CE_12|ALT_INV_sums\(10) <= NOT \inst_CE_12|sums\(10);
\inst_CE_12|ALT_INV_sums\(9) <= NOT \inst_CE_12|sums\(9);
\inst_CE_12|ALT_INV_sums\(8) <= NOT \inst_CE_12|sums\(8);
\inst_CE_12|ALT_INV_sums\(7) <= NOT \inst_CE_12|sums\(7);
\inst_CE_12|ALT_INV_sums\(6) <= NOT \inst_CE_12|sums\(6);
\inst_CE_12|ALT_INV_sums\(5) <= NOT \inst_CE_12|sums\(5);
\inst_CE_12|ALT_INV_sums\(4) <= NOT \inst_CE_12|sums\(4);
\inst_CE_12|ALT_INV_sums\(3) <= NOT \inst_CE_12|sums\(3);
\inst_CE_12|ALT_INV_sums\(2) <= NOT \inst_CE_12|sums\(2);
\inst_CE_12|ALT_INV_sums\(1) <= NOT \inst_CE_12|sums\(1);
\inst_CE_12|ALT_INV_sums\(0) <= NOT \inst_CE_12|sums\(0);
\inst_CE_13|ALT_INV_sums\(14) <= NOT \inst_CE_13|sums\(14);
\inst_CE_13|ALT_INV_sums\(13) <= NOT \inst_CE_13|sums\(13);
\inst_CE_13|ALT_INV_sums\(12) <= NOT \inst_CE_13|sums\(12);
\inst_CE_13|ALT_INV_sums\(11) <= NOT \inst_CE_13|sums\(11);
\inst_CE_13|ALT_INV_sums\(10) <= NOT \inst_CE_13|sums\(10);
\inst_CE_13|ALT_INV_sums\(9) <= NOT \inst_CE_13|sums\(9);
\inst_CE_13|ALT_INV_sums\(8) <= NOT \inst_CE_13|sums\(8);
\inst_CE_13|ALT_INV_sums\(7) <= NOT \inst_CE_13|sums\(7);
\inst_CE_13|ALT_INV_sums\(6) <= NOT \inst_CE_13|sums\(6);
\inst_CE_13|ALT_INV_sums\(5) <= NOT \inst_CE_13|sums\(5);
\inst_CE_13|ALT_INV_sums\(4) <= NOT \inst_CE_13|sums\(4);
\inst_CE_13|ALT_INV_sums\(3) <= NOT \inst_CE_13|sums\(3);
\inst_CE_13|ALT_INV_sums\(2) <= NOT \inst_CE_13|sums\(2);
\inst_CE_13|ALT_INV_sums\(1) <= NOT \inst_CE_13|sums\(1);
\inst_CE_13|ALT_INV_sums\(0) <= NOT \inst_CE_13|sums\(0);
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a3\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a3\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a0~portbdataout\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\;

-- Location: IOOBUF_X123_Y0_N102
\out_data[0]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_SE|sum_s\(0),
	devoe => ww_devoe,
	o => ww_out_data(0));

-- Location: IOOBUF_X123_Y0_N46
\out_data[1]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_SE|sum_s\(1),
	devoe => ww_devoe,
	o => ww_out_data(1));

-- Location: IOOBUF_X129_Y0_N74
\out_data[2]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_SE|sum_s\(2),
	devoe => ww_devoe,
	o => ww_out_data(2));

-- Location: IOOBUF_X129_Y0_N102
\out_data[3]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_SE|sum_s\(3),
	devoe => ww_devoe,
	o => ww_out_data(3));

-- Location: IOOBUF_X129_Y0_N130
\out_data[4]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_SE|sum_s\(4),
	devoe => ww_devoe,
	o => ww_out_data(4));

-- Location: IOOBUF_X20_Y0_N74
\out_data[5]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_SE|sum_s\(5),
	devoe => ww_devoe,
	o => ww_out_data(5));

-- Location: IOOBUF_X129_Y0_N46
\out_data[6]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_SE|sum_s\(6),
	devoe => ww_devoe,
	o => ww_out_data(6));

-- Location: IOOBUF_X90_Y129_N74
\out_data[7]~output\ : stratixv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_data(7));

-- Location: IOIBUF_X162_Y0_N1
\clk~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : stratixv_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X70_Y0_N101
\reset_n~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: IOIBUF_X70_Y0_N73
\enable~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: MLABCELL_X65_Y21_N54
\inst_SE|sum_s[0]~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_SE|sum_s[0]~0_combout\ = ( \reset_n~input_o\ & ( \enable~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_reset_n~input_o\,
	dataf => \ALT_INV_enable~input_o\,
	combout => \inst_SE|sum_s[0]~0_combout\);

-- Location: IOIBUF_X19_Y0_N1
\w_11[8][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(8)(0),
	o => \w_11[8][0]~input_o\);

-- Location: IOIBUF_X136_Y0_N129
\w_11[8][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(8)(1),
	o => \w_11[8][1]~input_o\);

-- Location: IOIBUF_X59_Y129_N85
\w_11[8][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(8)(2),
	o => \w_11[8][2]~input_o\);

-- Location: IOIBUF_X57_Y129_N129
\w_11[8][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(8)(3),
	o => \w_11[8][3]~input_o\);

-- Location: IOIBUF_X19_Y0_N29
\w_11[8][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(8)(4),
	o => \w_11[8][4]~input_o\);

-- Location: IOIBUF_X136_Y0_N73
\w_11[8][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(8)(5),
	o => \w_11[8][5]~input_o\);

-- Location: IOIBUF_X135_Y0_N1
\w_11[8][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(8)(6),
	o => \w_11[8][6]~input_o\);

-- Location: IOIBUF_X17_Y0_N129
\w_11[8][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(8)(7),
	o => \w_11[8][7]~input_o\);

-- Location: LABCELL_X68_Y16_N30
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~sumout\ = SUM(( VCC ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~q\ ) + ( !VCC ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~COUT\ = CARRY(( VCC ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit0~q\,
	cin => GND,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~COUT\);

-- Location: LABCELL_X68_Y16_N24
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~1_sumout\ & ( \enable~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enable~input_o\,
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita7~1_sumout\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\);

-- Location: FF_X68_Y16_N23
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~sumout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~q\);

-- Location: LABCELL_X68_Y16_N33
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~sumout\ = SUM(( VCC ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit1~q\ ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~COUT\ = CARRY(( VCC ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit1~q\ ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit1~q\,
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~COUT\);

-- Location: FF_X68_Y16_N2
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~sumout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit1~q\);

-- Location: LABCELL_X68_Y16_N36
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~sumout\ = SUM(( VCC ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit2~q\ ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~COUT\ = CARRY(( VCC ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit2~q\ ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit2~q\,
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~COUT\);

-- Location: FF_X68_Y16_N14
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~sumout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit2~q\);

-- Location: LABCELL_X68_Y16_N39
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~sumout\ = SUM(( VCC ) + ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~q\ ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~COUT\ = CARRY(( VCC ) + ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~q\ ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit3~q\,
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~COUT\);

-- Location: LABCELL_X68_Y16_N15
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~0_combout\ = ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita3~sumout\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~0_combout\);

-- Location: FF_X68_Y16_N16
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~q\);

-- Location: LABCELL_X68_Y16_N42
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~sumout\ = SUM(( VCC ) + ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~q\ ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~COUT\ = CARRY(( VCC ) + ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~q\ ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit4~q\,
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~COUT\);

-- Location: LABCELL_X68_Y16_N18
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~0_combout\ = ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita4~sumout\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~0_combout\);

-- Location: FF_X68_Y16_N20
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~q\);

-- Location: LABCELL_X68_Y16_N45
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~sumout\ = SUM(( VCC ) + ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~q\ ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~COUT\ = CARRY(( VCC ) + ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~q\ ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit5~q\,
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~COUT\);

-- Location: LABCELL_X68_Y16_N3
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~0_combout\ = ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita5~sumout\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~0_combout\);

-- Location: FF_X68_Y16_N5
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~q\);

-- Location: LABCELL_X68_Y16_N48
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~sumout\ = SUM(( VCC ) + ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~q\ ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~COUT\ = CARRY(( VCC ) + ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~q\ ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit6~q\,
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~COUT\);

-- Location: LABCELL_X68_Y16_N6
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~0_combout\ = ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita6~sumout\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~0_combout\);

-- Location: FF_X68_Y16_N34
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~0_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~q\);

-- Location: LABCELL_X68_Y16_N51
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~sumout\ = SUM(( VCC ) + ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~q\ ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~COUT\ = CARRY(( VCC ) + ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~q\ ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit7~q\,
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~COUT\);

-- Location: LABCELL_X68_Y16_N9
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~0_combout\ = !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita7~sumout\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~0_combout\);

-- Location: FF_X68_Y16_N10
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~q\);

-- Location: LABCELL_X68_Y16_N54
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~1\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~1_sumout\ = SUM(( GND ) + ( GND ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~1_sumout\);

-- Location: LABCELL_X68_Y12_N30
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe7~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe7~0_combout\ = ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita7~1_sumout\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe7~0_combout\);

-- Location: FF_X68_Y12_N31
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe7~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe7~q\);

-- Location: LABCELL_X68_Y6_N0
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~sumout\ = SUM(( VCC ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~q\ ) + ( !VCC ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~COUT\ = CARRY(( VCC ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit0~q\,
	cin => GND,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~COUT\);

-- Location: LABCELL_X68_Y6_N57
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~1_sumout\ & ( \enable~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita7~1_sumout\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\);

-- Location: FF_X68_Y6_N38
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~sumout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~q\);

-- Location: LABCELL_X68_Y6_N3
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~sumout\ = SUM(( VCC ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit1~q\ ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~COUT\ ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~COUT\ = CARRY(( VCC ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit1~q\ ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit1~q\,
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~COUT\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~COUT\);

-- Location: FF_X68_Y6_N50
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~sumout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit1~q\);

-- Location: LABCELL_X68_Y6_N6
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~sumout\ = SUM(( VCC ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit2~q\ ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~COUT\ ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~COUT\ = CARRY(( VCC ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit2~q\ ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit2~q\,
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~COUT\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~COUT\);

-- Location: FF_X68_Y6_N43
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~sumout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit2~q\);

-- Location: LABCELL_X68_Y6_N9
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~sumout\ = SUM(( VCC ) + ( !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~q\ ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~COUT\ ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~COUT\ = CARRY(( VCC ) + ( !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~q\ ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit3~q\,
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~COUT\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~COUT\);

-- Location: LABCELL_X68_Y6_N54
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~0_combout\ = ( !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita3~sumout\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~0_combout\);

-- Location: FF_X68_Y6_N56
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~q\);

-- Location: LABCELL_X68_Y6_N12
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~sumout\ = SUM(( VCC ) + ( !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~q\ ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~COUT\ ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~COUT\ = CARRY(( VCC ) + ( !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~q\ ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit4~q\,
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~COUT\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~COUT\);

-- Location: LABCELL_X68_Y6_N45
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~0_combout\ = !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita4~sumout\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~0_combout\);

-- Location: FF_X68_Y6_N47
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~q\);

-- Location: LABCELL_X68_Y6_N15
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~sumout\ = SUM(( VCC ) + ( !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~q\ ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~COUT\ ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~COUT\ = CARRY(( VCC ) + ( !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~q\ ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit5~q\,
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~COUT\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~COUT\);

-- Location: LABCELL_X68_Y6_N39
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~0_combout\ = ( !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita5~sumout\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~0_combout\);

-- Location: FF_X68_Y6_N41
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~q\);

-- Location: LABCELL_X68_Y6_N18
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~sumout\ = SUM(( VCC ) + ( !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~q\ ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~COUT\ ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~COUT\ = CARRY(( VCC ) + ( !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~q\ ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit6~q\,
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~COUT\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~COUT\);

-- Location: LABCELL_X68_Y6_N51
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~0_combout\ = !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita6~sumout\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~0_combout\);

-- Location: FF_X68_Y6_N53
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~q\);

-- Location: LABCELL_X68_Y6_N21
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~sumout\ = SUM(( VCC ) + ( !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~q\ ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~COUT\ ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~COUT\ = CARRY(( VCC ) + ( !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~q\ ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit7~q\,
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~COUT\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~COUT\);

-- Location: LABCELL_X68_Y6_N48
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~0_combout\ = ( !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita7~sumout\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~0_combout\);

-- Location: FF_X68_Y6_N5
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~0_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~q\);

-- Location: LABCELL_X68_Y6_N24
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~1\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~1_sumout\ = SUM(( GND ) + ( GND ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~COUT\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~1_sumout\);

-- Location: LABCELL_X68_Y6_N30
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe7~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe7~0_combout\ = ( !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita7~1_sumout\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe7~0_combout\);

-- Location: FF_X68_Y6_N31
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe7~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe7~q\);

-- Location: IOIBUF_X66_Y0_N73
\in_data[7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(7),
	o => \in_data[7]~input_o\);

-- Location: FF_X65_Y4_N58
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \in_data[7]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\);

-- Location: MLABCELL_X65_Y7_N21
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6feeder_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][7]~q\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6feeder_combout\);

-- Location: FF_X65_Y7_N23
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\);

-- Location: MLABCELL_X65_Y6_N33
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6feeder_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[1][7]~_Duplicate_6_q\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6feeder_combout\);

-- Location: FF_X65_Y6_N35
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\);

-- Location: FF_X65_Y6_N32
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][7]~_Duplicate_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][7]~_Duplicate_6_q\);

-- Location: MLABCELL_X70_Y6_N0
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\ = SUM(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ = CARRY(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\);

-- Location: MLABCELL_X70_Y6_N3
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\ = SUM(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ = CARRY(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\);

-- Location: FF_X70_Y6_N5
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\,
	sclr => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1));

-- Location: MLABCELL_X70_Y6_N6
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~sumout\ = SUM(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ = CARRY(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\);

-- Location: FF_X70_Y6_N8
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~sumout\,
	sclr => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2));

-- Location: MLABCELL_X70_Y6_N9
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~sumout\ = SUM(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ = CARRY(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(3),
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\);

-- Location: FF_X70_Y6_N11
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~sumout\,
	sclr => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3));

-- Location: MLABCELL_X70_Y6_N12
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~sumout\ = SUM(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ = CARRY(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(4),
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\);

-- Location: FF_X70_Y6_N14
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~sumout\,
	sclr => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4));

-- Location: MLABCELL_X70_Y6_N15
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~sumout\ = SUM(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\ = CARRY(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(5),
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\);

-- Location: FF_X70_Y6_N17
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~sumout\,
	sclr => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5));

-- Location: MLABCELL_X70_Y6_N18
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~sumout\ = SUM(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\ ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\ = CARRY(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(6),
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\);

-- Location: FF_X70_Y6_N20
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~sumout\,
	sclr => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6));

-- Location: MLABCELL_X70_Y6_N21
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~sumout\ = SUM(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(7) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\ ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~COUT\ = CARRY(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(7) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(7),
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~COUT\);

-- Location: FF_X70_Y6_N23
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~sumout\,
	sclr => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(7));

-- Location: MLABCELL_X70_Y6_N24
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1_sumout\ = SUM(( GND ) + ( GND ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~COUT\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1_sumout\);

-- Location: MLABCELL_X67_Y6_N48
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_2~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_2~0_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) & ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) & ( (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & 
-- (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(3),
	datac => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(5),
	datad => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(7),
	datae => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(6),
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(4),
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_2~0_combout\);

-- Location: MLABCELL_X70_Y6_N54
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|cout_actual\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1_sumout\ ) ) # ( !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & ( 
-- ((\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) & (!\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_2~0_combout\))) # (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101001111000011110100111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	datab => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	datac => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita7~1_sumout\,
	datad => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_op_2~0_combout\,
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\);

-- Location: FF_X70_Y6_N2
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\,
	sclr => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

-- Location: MLABCELL_X70_Y6_N30
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~1\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~1_sumout\ = SUM(( VCC ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( !VCC ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~2\ = CARRY(( VCC ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~1_sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~2\);

-- Location: FF_X70_Y6_N31
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~1_sumout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a\(0));

-- Location: MLABCELL_X67_Y6_N27
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) & ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) & ( (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(7) & 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(7),
	datad => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(5),
	datae => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(6),
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(4),
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\);

-- Location: MLABCELL_X70_Y6_N57
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ & ( 
-- (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) & (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & 
-- (!\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	datab => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	datac => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(3),
	datad => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~0_combout\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\);

-- Location: MLABCELL_X70_Y6_N33
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~5\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~5_sumout\ = SUM(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) ) + ( 
-- (!\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_2~0_combout\ & !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\) ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~2\ ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~6\ = CARRY(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) ) + ( 
-- (!\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_2~0_combout\ & !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\) ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_op_2~0_combout\,
	datad => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~1_combout\,
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~2\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~5_sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~6\);

-- Location: LABCELL_X68_Y6_N42
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a[1]~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a[1]~0_combout\ = ( !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_op_1~5_sumout\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a[1]~0_combout\);

-- Location: FF_X68_Y6_N8
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a[1]~0_combout\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a\(1));

-- Location: LABCELL_X68_Y6_N36
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a[1]~_wirecell\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ = ( !\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_dffe3a\(1),
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\);

-- Location: MLABCELL_X70_Y6_N36
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~9\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~9_sumout\ = SUM(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~6\ ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~10\ = CARRY(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~6\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~9_sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~10\);

-- Location: FF_X70_Y6_N37
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~9_sumout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a\(2));

-- Location: MLABCELL_X70_Y6_N39
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~13\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~13_sumout\ = SUM(( (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\) # 
-- (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_2~0_combout\) ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~10\ 
-- ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~14\ = CARRY(( (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\) # (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_2~0_combout\) 
-- ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(3),
	datac => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_op_2~0_combout\,
	datad => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~1_combout\,
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~10\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~13_sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~14\);

-- Location: FF_X70_Y6_N41
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~13_sumout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a\(3));

-- Location: MLABCELL_X70_Y6_N42
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~17\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~17_sumout\ = SUM(( GND ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~14\ ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~18\ = CARRY(( GND ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(4),
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~14\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~17_sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~18\);

-- Location: FF_X70_Y6_N43
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~17_sumout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a\(4));

-- Location: MLABCELL_X70_Y6_N45
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~21\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~21_sumout\ = SUM(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~18\ ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~22\ = CARRY(( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(5),
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~18\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~21_sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~22\);

-- Location: FF_X70_Y6_N47
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~21_sumout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a\(5));

-- Location: MLABCELL_X70_Y6_N48
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~25\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~25_sumout\ = SUM(( GND ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~22\ ))
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~26\ = CARRY(( GND ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(6),
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~22\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~25_sumout\,
	cout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~26\);

-- Location: FF_X70_Y6_N49
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~25_sumout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a\(6));

-- Location: MLABCELL_X70_Y6_N51
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~29\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~29_sumout\ = SUM(( GND ) + ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(7) ) + ( 
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(7),
	cin => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~26\,
	sumout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~29_sumout\);

-- Location: FF_X70_Y6_N52
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|op_1~29_sumout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|dffe3a\(7));

-- Location: IOIBUF_X62_Y0_N45
\in_data[6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(6),
	o => \in_data[6]~input_o\);

-- Location: LABCELL_X63_Y4_N24
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]~feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]~feeder_combout\ = ( \in_data[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_in_data[6]~input_o\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]~feeder_combout\);

-- Location: FF_X63_Y4_N25
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]~q\);

-- Location: MLABCELL_X65_Y7_N27
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][6]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][6]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][6]~q\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][6]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y7_N29
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][6]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][6]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][6]~_Duplicate_3_q\);

-- Location: FF_X65_Y6_N56
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][6]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][6]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][6]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y6_N39
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][6]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][6]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][6]~_Duplicate_3_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[2][6]~_Duplicate_3_q\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][6]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y6_N40
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][6]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][6]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][6]~_Duplicate_3_q\);

-- Location: IOIBUF_X62_Y0_N101
\in_data[5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(5),
	o => \in_data[5]~input_o\);

-- Location: FF_X63_Y4_N5
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \in_data[5]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][5]~q\);

-- Location: MLABCELL_X65_Y7_N54
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][5]~q\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y7_N56
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y6_N15
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[1][5]~_Duplicate_3_q\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y6_N17
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y6_N54
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][5]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][5]~_Duplicate_3feeder_combout\ = \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[2][5]~_Duplicate_3_q\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][5]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y6_N55
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][5]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][5]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][5]~_Duplicate_3_q\);

-- Location: IOIBUF_X66_Y0_N101
\in_data[4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(4),
	o => \in_data[4]~input_o\);

-- Location: FF_X65_Y4_N47
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \in_data[4]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][4]~q\);

-- Location: MLABCELL_X65_Y7_N36
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][4]~q\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y7_N38
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y6_N3
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[1][4]~_Duplicate_3_q\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y6_N5
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y6_N48
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][4]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][4]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[2][4]~_Duplicate_3_q\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][4]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y6_N49
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][4]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][4]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][4]~_Duplicate_3_q\);

-- Location: IOIBUF_X77_Y0_N1
\in_data[3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(3),
	o => \in_data[3]~input_o\);

-- Location: MLABCELL_X65_Y4_N36
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]~feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]~feeder_combout\ = ( \in_data[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_in_data[3]~input_o\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]~feeder_combout\);

-- Location: FF_X65_Y4_N37
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]~q\);

-- Location: FF_X65_Y7_N44
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y6_N27
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][3]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][3]~_Duplicate_3feeder_combout\ = \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[1][3]~_Duplicate_3_q\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][3]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y6_N29
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][3]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][3]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][3]~_Duplicate_3_q\);

-- Location: FF_X65_Y6_N28
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][3]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][3]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][3]~_Duplicate_3_q\);

-- Location: IOIBUF_X66_Y0_N129
\in_data[2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(2),
	o => \in_data[2]~input_o\);

-- Location: FF_X65_Y4_N13
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \in_data[2]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]~q\);

-- Location: MLABCELL_X65_Y7_N15
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][2]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][2]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][2]~q\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][2]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y7_N17
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][2]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][2]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][2]~_Duplicate_3_q\);

-- Location: FF_X65_Y6_N26
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][2]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][2]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][2]~_Duplicate_3_q\);

-- Location: FF_X65_Y6_N37
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][2]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][2]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][2]~_Duplicate_3_q\);

-- Location: IOIBUF_X77_Y0_N85
\in_data[1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(1),
	o => \in_data[1]~input_o\);

-- Location: FF_X65_Y4_N25
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \in_data[1]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]~q\);

-- Location: MLABCELL_X65_Y7_N3
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][1]~q\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y7_N5
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y6_N0
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][1]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][1]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[1][1]~_Duplicate_3_q\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][1]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y6_N2
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][1]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][1]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][1]~_Duplicate_3_q\);

-- Location: FF_X65_Y6_N23
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][1]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][1]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][1]~_Duplicate_3_q\);

-- Location: IOIBUF_X66_Y0_N45
\in_data[0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(0),
	o => \in_data[0]~input_o\);

-- Location: MLABCELL_X65_Y4_N21
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][0]~feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][0]~feeder_combout\ = ( \in_data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_in_data[0]~input_o\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][0]~feeder_combout\);

-- Location: FF_X65_Y4_N22
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][0]~q\);

-- Location: FF_X65_Y7_N8
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][0]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][0]~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][0]~_Duplicate_3_q\);

-- Location: FF_X65_Y6_N47
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][0]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][0]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][0]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y6_N57
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][0]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][0]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][0]~_Duplicate_3_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[2][0]~_Duplicate_3_q\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][0]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y6_N59
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][0]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][0]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][0]~_Duplicate_3_q\);

-- Location: M20K_X69_Y6_N0
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0\ : stratixv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "neighExtractor:inst_NE|taps:\taps_inst:0:gen_1:gen1_inst|altshift_taps:cell_rtl_0|shift_taps_pd41:auto_generated|altsyncram_v0h1:altsyncram5|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 250,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_out_clear => "clear0",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 250,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	clk1 => \clk~inputCLKENA0_outclk\,
	ena0 => \enable~input_o\,
	ena1 => \enable~input_o\,
	clr0 => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|ALT_INV_dffe7~q\,
	portadatain => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTADATAIN_bus\,
	portaaddr => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTAADDR_bus\,
	portbaddr => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X65_Y6_N21
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~feeder_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a0~portbdataout\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~feeder_combout\);

-- Location: FF_X65_Y6_N22
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\);

-- Location: MLABCELL_X65_Y8_N12
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][7]~q\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6feeder_combout\);

-- Location: FF_X65_Y8_N14
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\);

-- Location: MLABCELL_X65_Y10_N45
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[1][7]~_Duplicate_6_q\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6feeder_combout\);

-- Location: FF_X65_Y10_N47
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\);

-- Location: FF_X65_Y12_N55
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][7]~_Duplicate_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][7]~_Duplicate_6_q\);

-- Location: LABCELL_X68_Y12_N0
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ = CARRY(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\);

-- Location: LABCELL_X68_Y12_N3
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ = CARRY(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\);

-- Location: FF_X68_Y12_N5
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\,
	sclr => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1));

-- Location: LABCELL_X68_Y12_N6
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ = CARRY(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\);

-- Location: FF_X68_Y12_N8
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~sumout\,
	sclr => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2));

-- Location: LABCELL_X68_Y12_N9
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ = CARRY(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(3),
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\);

-- Location: FF_X68_Y12_N11
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~sumout\,
	sclr => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3));

-- Location: LABCELL_X68_Y12_N12
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ = CARRY(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(4),
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\);

-- Location: FF_X68_Y12_N14
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~sumout\,
	sclr => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4));

-- Location: LABCELL_X68_Y12_N15
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\ = CARRY(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(5),
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\);

-- Location: FF_X68_Y12_N17
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~sumout\,
	sclr => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5));

-- Location: LABCELL_X68_Y12_N18
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\ = CARRY(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(6),
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\);

-- Location: FF_X68_Y12_N20
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~sumout\,
	sclr => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6));

-- Location: LABCELL_X68_Y12_N21
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(7) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~COUT\ = CARRY(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(7) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(7),
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~COUT\);

-- Location: FF_X68_Y12_N23
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~sumout\,
	sclr => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(7));

-- Location: LABCELL_X68_Y12_N51
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) & ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(7) & ( (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) & 
-- (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(4),
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(3),
	datad => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(6),
	datae => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(5),
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(7),
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0_combout\);

-- Location: LABCELL_X68_Y12_N24
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1_sumout\ = SUM(( GND ) + ( GND ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1_sumout\);

-- Location: LABCELL_X68_Y12_N54
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|cout_actual\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1_sumout\ & ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) ) # ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1_sumout\ & ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) & ( (!\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & 
-- (!\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0_combout\)) ) ) ) # ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1_sumout\ & ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000110000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	datad => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_op_2~0_combout\,
	datae => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita7~1_sumout\,
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\);

-- Location: FF_X68_Y12_N2
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\,
	sclr => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

-- Location: MLABCELL_X70_Y12_N0
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~1\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~1_sumout\ = SUM(( VCC ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( !VCC ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~2\ = CARRY(( VCC ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~1_sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~2\);

-- Location: FF_X70_Y12_N1
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~1_sumout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a\(0));

-- Location: MLABCELL_X70_Y12_N54
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(7) & ( 
-- (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) & (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) & 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(5),
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(6),
	datad => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(4),
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(7),
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\);

-- Location: MLABCELL_X70_Y12_N48
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ & ( (!\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & 
-- (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(3),
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	datad => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	datae => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~0_combout\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\);

-- Location: MLABCELL_X70_Y12_N3
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~5\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~5_sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) ) + ( 
-- (!\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0_combout\ & !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\) ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~2\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~6\ = CARRY(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) ) + ( 
-- (!\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0_combout\ & !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\) ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_op_2~0_combout\,
	datad => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~1_combout\,
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~2\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~5_sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~6\);

-- Location: MLABCELL_X70_Y12_N36
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[1]~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[1]~0_combout\ = ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_op_1~5_sumout\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[1]~0_combout\);

-- Location: FF_X70_Y12_N38
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[1]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a\(1));

-- Location: MLABCELL_X70_Y12_N57
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[1]~_wirecell\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ = ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_dffe3a\(1),
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\);

-- Location: MLABCELL_X70_Y12_N6
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~9\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~9_sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~6\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~10\ = CARRY(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~6\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~9_sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~10\);

-- Location: FF_X70_Y12_N8
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~9_sumout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a\(2));

-- Location: MLABCELL_X70_Y12_N9
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~13\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~13_sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) ) + ( 
-- (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\) # (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0_combout\) ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~10\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~14\ = CARRY(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) ) + ( 
-- (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\) # (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0_combout\) ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(3),
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_op_2~0_combout\,
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~1_combout\,
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~10\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~13_sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~14\);

-- Location: FF_X70_Y12_N10
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~13_sumout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a\(3));

-- Location: MLABCELL_X70_Y12_N12
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~17\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~17_sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~14\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~18\ = CARRY(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(4),
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~14\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~17_sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~18\);

-- Location: FF_X70_Y12_N13
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~17_sumout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a\(4));

-- Location: MLABCELL_X70_Y12_N15
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~21\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~21_sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~18\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~22\ = CARRY(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(5),
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~18\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~21_sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~22\);

-- Location: FF_X70_Y12_N16
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~21_sumout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a\(5));

-- Location: MLABCELL_X70_Y12_N18
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~25\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~25_sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~22\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~26\ = CARRY(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(6),
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~22\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~25_sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~26\);

-- Location: FF_X70_Y12_N20
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~25_sumout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a\(6));

-- Location: MLABCELL_X70_Y12_N21
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~29\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~29_sumout\ = SUM(( GND ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(7) ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(7),
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~26\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~29_sumout\);

-- Location: FF_X70_Y12_N23
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~29_sumout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a\(7));

-- Location: FF_X65_Y6_N20
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a1\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][6]~q\);

-- Location: MLABCELL_X65_Y8_N39
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][6]~q\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y8_N41
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y10_N24
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[1][6]~_Duplicate_3_q\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y10_N26
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3_q\);

-- Location: FF_X65_Y12_N49
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][6]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][6]~_Duplicate_3_q\);

-- Location: FF_X65_Y6_N58
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a2\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][5]~q\);

-- Location: MLABCELL_X65_Y8_N18
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][5]~q\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y8_N20
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3_q\);

-- Location: FF_X65_Y10_N11
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][5]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][5]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y12_N12
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][5]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][5]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][5]~_Duplicate_3_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[2][5]~_Duplicate_3_q\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][5]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y12_N14
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][5]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][5]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][5]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y6_N51
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][4]~feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][4]~feeder_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a3\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a3\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][4]~feeder_combout\);

-- Location: FF_X65_Y6_N53
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][4]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][4]~q\);

-- Location: MLABCELL_X65_Y8_N24
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][4]~q\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y8_N26
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3_q\);

-- Location: FF_X65_Y10_N17
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][4]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][4]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y12_N15
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][4]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][4]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][4]~_Duplicate_3_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[2][4]~_Duplicate_3_q\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][4]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y12_N16
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][4]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][4]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][4]~_Duplicate_3_q\);

-- Location: FF_X65_Y6_N11
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a4\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][3]~q\);

-- Location: FF_X65_Y8_N53
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][3]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][3]~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][3]~_Duplicate_3_q\);

-- Location: FF_X65_Y10_N59
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][3]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][3]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][3]~_Duplicate_3_q\);

-- Location: FF_X65_Y12_N28
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][3]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][3]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][3]~_Duplicate_3_q\);

-- Location: FF_X65_Y6_N44
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a5\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][2]~q\);

-- Location: MLABCELL_X65_Y8_N42
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][2]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][2]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][2]~q\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][2]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y8_N44
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][2]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][2]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][2]~_Duplicate_3_q\);

-- Location: FF_X65_Y10_N53
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][2]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][2]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][2]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y12_N0
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][2]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][2]~_Duplicate_3feeder_combout\ = \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][2]~_Duplicate_3_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[2][2]~_Duplicate_3_q\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][2]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y12_N1
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][2]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][2]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][2]~_Duplicate_3_q\);

-- Location: FF_X65_Y6_N8
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a6\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][1]~q\);

-- Location: MLABCELL_X65_Y8_N33
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][1]~q\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y8_N35
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3_q\);

-- Location: FF_X65_Y10_N32
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][1]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][1]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y12_N39
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][1]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][1]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][1]~_Duplicate_3_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[2][1]~_Duplicate_3_q\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][1]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y12_N40
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][1]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][1]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][1]~_Duplicate_3_q\);

-- Location: FF_X65_Y6_N14
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a7\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][0]~q\);

-- Location: MLABCELL_X65_Y8_N54
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3feeder_combout\ = \inst_NE|taps_inst:1:gen_i:geni_inst|cell[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[0][0]~q\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y8_N56
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y10_N36
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][0]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][0]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[1][0]~_Duplicate_3_q\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][0]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y10_N38
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][0]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][0]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][0]~_Duplicate_3_q\);

-- Location: FF_X65_Y12_N46
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][0]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][0]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][0]~_Duplicate_3_q\);

-- Location: M20K_X69_Y12_N0
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0\ : stratixv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "neighExtractor:inst_NE|taps:\taps_inst:1:gen_i:geni_inst|altshift_taps:cell_rtl_0|shift_taps_pd41:auto_generated|altsyncram_v0h1:altsyncram5|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 250,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_out_clear => "clear0",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 250,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	clk1 => \clk~inputCLKENA0_outclk\,
	ena0 => \enable~input_o\,
	ena1 => \enable~input_o\,
	clr0 => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_dffe7~q\,
	portadatain => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTADATAIN_bus\,
	portaaddr => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTAADDR_bus\,
	portbaddr => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\);

-- Location: FF_X65_Y12_N26
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a7\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][0]~q\);

-- Location: FF_X65_Y19_N5
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][0]~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y21_N48
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][0]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][0]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[1][0]~_Duplicate_3_q\,
	combout => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][0]~_Duplicate_3feeder_combout\);

-- Location: FF_X65_Y21_N50
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][0]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][0]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][0]~_Duplicate_3_q\);

-- Location: FF_X65_Y12_N20
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a6\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][1]~q\);

-- Location: FF_X65_Y19_N20
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][1]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][1]~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][1]~_Duplicate_3_q\);

-- Location: FF_X65_Y21_N38
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][1]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][1]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][1]~_Duplicate_3_q\);

-- Location: FF_X65_Y12_N11
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a5\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][2]~q\);

-- Location: LABCELL_X63_Y19_N9
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[0][2]~q\,
	combout => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3feeder_combout\);

-- Location: FF_X63_Y19_N11
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3_q\);

-- Location: LABCELL_X63_Y19_N54
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][2]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][2]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[1][2]~_Duplicate_3_q\,
	combout => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][2]~_Duplicate_3feeder_combout\);

-- Location: FF_X63_Y19_N56
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][2]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][2]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][2]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y12_N42
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][3]~feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][3]~feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a4\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a4\,
	combout => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][3]~feeder_combout\);

-- Location: FF_X65_Y12_N43
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][3]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][3]~q\);

-- Location: LABCELL_X63_Y19_N24
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][3]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][3]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[0][3]~q\,
	combout => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][3]~_Duplicate_3feeder_combout\);

-- Location: FF_X63_Y19_N26
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][3]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][3]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][3]~_Duplicate_3_q\);

-- Location: FF_X63_Y19_N14
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][3]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][3]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][3]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y12_N6
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][4]~feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][4]~feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a3\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a3\,
	combout => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][4]~feeder_combout\);

-- Location: FF_X65_Y12_N7
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][4]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][4]~q\);

-- Location: FF_X65_Y19_N29
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][4]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][4]~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][4]~_Duplicate_3_q\);

-- Location: FF_X65_Y21_N17
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][4]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][4]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][4]~_Duplicate_3_q\);

-- Location: FF_X65_Y12_N5
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a2\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][5]~q\);

-- Location: LABCELL_X63_Y19_N39
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[0][5]~q\,
	combout => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3feeder_combout\);

-- Location: FF_X63_Y19_N41
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3_q\);

-- Location: LABCELL_X63_Y19_N18
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][5]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][5]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[1][5]~_Duplicate_3_q\,
	combout => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][5]~_Duplicate_3feeder_combout\);

-- Location: FF_X63_Y19_N20
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][5]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][5]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][5]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y12_N30
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][6]~feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][6]~feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a1\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a1\,
	combout => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][6]~feeder_combout\);

-- Location: FF_X65_Y12_N32
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][6]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][6]~q\);

-- Location: LABCELL_X63_Y19_N33
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][6]~_Duplicate_3feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][6]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[0][6]~q\,
	combout => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][6]~_Duplicate_3feeder_combout\);

-- Location: FF_X63_Y19_N35
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][6]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][6]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][6]~_Duplicate_3_q\);

-- Location: FF_X63_Y19_N38
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][6]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][6]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][6]~_Duplicate_3_q\);

-- Location: MLABCELL_X65_Y12_N51
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a0~portbdataout\,
	combout => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~feeder_combout\);

-- Location: FF_X65_Y12_N53
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\);

-- Location: FF_X65_Y19_N35
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[0][7]~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\);

-- Location: MLABCELL_X65_Y21_N24
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6feeder\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6feeder_combout\ = ( \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[1][7]~_Duplicate_6_q\,
	combout => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6feeder_combout\);

-- Location: FF_X65_Y21_N26
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\);

-- Location: IOIBUF_X20_Y0_N45
\w_11[7][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(7)(0),
	o => \w_11[7][0]~input_o\);

-- Location: IOIBUF_X136_Y0_N101
\w_11[7][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(7)(1),
	o => \w_11[7][1]~input_o\);

-- Location: IOIBUF_X59_Y129_N57
\w_11[7][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(7)(2),
	o => \w_11[7][2]~input_o\);

-- Location: IOIBUF_X22_Y0_N45
\w_11[7][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(7)(3),
	o => \w_11[7][3]~input_o\);

-- Location: IOIBUF_X20_Y0_N129
\w_11[7][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(7)(4),
	o => \w_11[7][4]~input_o\);

-- Location: IOIBUF_X0_Y8_N60
\w_11[7][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(7)(5),
	o => \w_11[7][5]~input_o\);

-- Location: IOIBUF_X20_Y0_N101
\w_11[7][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(7)(6),
	o => \w_11[7][6]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\w_11[7][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(7)(7),
	o => \w_11[7][7]~input_o\);

-- Location: IOIBUF_X127_Y0_N57
\w_11[6][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(6)(0),
	o => \w_11[6][0]~input_o\);

-- Location: IOIBUF_X139_Y0_N45
\w_11[6][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(6)(1),
	o => \w_11[6][1]~input_o\);

-- Location: IOIBUF_X133_Y0_N101
\w_11[6][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(6)(2),
	o => \w_11[6][2]~input_o\);

-- Location: IOIBUF_X70_Y129_N129
\w_11[6][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(6)(3),
	o => \w_11[6][3]~input_o\);

-- Location: IOIBUF_X133_Y0_N45
\w_11[6][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(6)(4),
	o => \w_11[6][4]~input_o\);

-- Location: IOIBUF_X24_Y0_N57
\w_11[6][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(6)(5),
	o => \w_11[6][5]~input_o\);

-- Location: IOIBUF_X24_Y0_N85
\w_11[6][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(6)(6),
	o => \w_11[6][6]~input_o\);

-- Location: IOIBUF_X22_Y0_N73
\w_11[6][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(6)(7),
	o => \w_11[6][7]~input_o\);

-- Location: IOIBUF_X112_Y0_N73
\w_11[5][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(5)(0),
	o => \w_11[5][0]~input_o\);

-- Location: IOIBUF_X27_Y0_N45
\w_11[5][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(5)(1),
	o => \w_11[5][1]~input_o\);

-- Location: IOIBUF_X117_Y0_N129
\w_11[5][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(5)(2),
	o => \w_11[5][2]~input_o\);

-- Location: IOIBUF_X112_Y0_N101
\w_11[5][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(5)(3),
	o => \w_11[5][3]~input_o\);

-- Location: IOIBUF_X25_Y0_N45
\w_11[5][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(5)(4),
	o => \w_11[5][4]~input_o\);

-- Location: IOIBUF_X112_Y0_N129
\w_11[5][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(5)(5),
	o => \w_11[5][5]~input_o\);

-- Location: IOIBUF_X22_Y0_N101
\w_11[5][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(5)(6),
	o => \w_11[5][6]~input_o\);

-- Location: IOIBUF_X27_Y0_N129
\w_11[5][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(5)(7),
	o => \w_11[5][7]~input_o\);

-- Location: IOIBUF_X117_Y0_N45
\w_11[4][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(4)(0),
	o => \w_11[4][0]~input_o\);

-- Location: IOIBUF_X25_Y0_N129
\w_11[4][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(4)(1),
	o => \w_11[4][1]~input_o\);

-- Location: IOIBUF_X19_Y0_N85
\w_11[4][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(4)(2),
	o => \w_11[4][2]~input_o\);

-- Location: IOIBUF_X17_Y0_N45
\w_11[4][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(4)(3),
	o => \w_11[4][3]~input_o\);

-- Location: IOIBUF_X112_Y0_N45
\w_11[4][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(4)(4),
	o => \w_11[4][4]~input_o\);

-- Location: IOIBUF_X25_Y0_N73
\w_11[4][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(4)(5),
	o => \w_11[4][5]~input_o\);

-- Location: IOIBUF_X116_Y0_N57
\w_11[4][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(4)(6),
	o => \w_11[4][6]~input_o\);

-- Location: IOIBUF_X0_Y7_N104
\w_11[4][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(4)(7),
	o => \w_11[4][7]~input_o\);

-- Location: IOIBUF_X59_Y0_N85
\w_11[3][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(3)(0),
	o => \w_11[3][0]~input_o\);

-- Location: IOIBUF_X59_Y0_N57
\w_11[3][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(3)(1),
	o => \w_11[3][1]~input_o\);

-- Location: IOIBUF_X57_Y0_N101
\w_11[3][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(3)(2),
	o => \w_11[3][2]~input_o\);

-- Location: IOIBUF_X57_Y0_N45
\w_11[3][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(3)(3),
	o => \w_11[3][3]~input_o\);

-- Location: IOIBUF_X62_Y0_N129
\w_11[3][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(3)(4),
	o => \w_11[3][4]~input_o\);

-- Location: IOIBUF_X69_Y0_N57
\w_11[3][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(3)(5),
	o => \w_11[3][5]~input_o\);

-- Location: IOIBUF_X74_Y0_N73
\w_11[3][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(3)(6),
	o => \w_11[3][6]~input_o\);

-- Location: IOIBUF_X69_Y0_N85
\w_11[3][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(3)(7),
	o => \w_11[3][7]~input_o\);

-- Location: IOIBUF_X57_Y0_N129
\w_11[2][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(2)(0),
	o => \w_11[2][0]~input_o\);

-- Location: IOIBUF_X62_Y0_N73
\w_11[2][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(2)(1),
	o => \w_11[2][1]~input_o\);

-- Location: IOIBUF_X69_Y0_N29
\w_11[2][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(2)(2),
	o => \w_11[2][2]~input_o\);

-- Location: IOIBUF_X59_Y0_N1
\w_11[2][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(2)(3),
	o => \w_11[2][3]~input_o\);

-- Location: IOIBUF_X70_Y0_N129
\w_11[2][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(2)(4),
	o => \w_11[2][4]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\w_11[2][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(2)(5),
	o => \w_11[2][5]~input_o\);

-- Location: IOIBUF_X59_Y0_N29
\w_11[2][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(2)(6),
	o => \w_11[2][6]~input_o\);

-- Location: IOIBUF_X70_Y0_N45
\w_11[2][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(2)(7),
	o => \w_11[2][7]~input_o\);

-- Location: IOIBUF_X54_Y0_N73
\w_11[1][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(1)(0),
	o => \w_11[1][0]~input_o\);

-- Location: IOIBUF_X57_Y0_N73
\w_11[1][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(1)(1),
	o => \w_11[1][1]~input_o\);

-- Location: IOIBUF_X49_Y0_N129
\w_11[1][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(1)(2),
	o => \w_11[1][2]~input_o\);

-- Location: IOIBUF_X51_Y0_N85
\w_11[1][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(1)(3),
	o => \w_11[1][3]~input_o\);

-- Location: IOIBUF_X74_Y0_N101
\w_11[1][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(1)(4),
	o => \w_11[1][4]~input_o\);

-- Location: IOIBUF_X54_Y0_N129
\w_11[1][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(1)(5),
	o => \w_11[1][5]~input_o\);

-- Location: IOIBUF_X74_Y0_N45
\w_11[1][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(1)(6),
	o => \w_11[1][6]~input_o\);

-- Location: IOIBUF_X77_Y0_N29
\w_11[1][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(1)(7),
	o => \w_11[1][7]~input_o\);

-- Location: IOIBUF_X74_Y0_N129
\w_11[0][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(0)(0),
	o => \w_11[0][0]~input_o\);

-- Location: IOIBUF_X54_Y0_N45
\w_11[0][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(0)(1),
	o => \w_11[0][1]~input_o\);

-- Location: IOIBUF_X54_Y0_N101
\w_11[0][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(0)(2),
	o => \w_11[0][2]~input_o\);

-- Location: IOIBUF_X79_Y0_N73
\w_11[0][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(0)(3),
	o => \w_11[0][3]~input_o\);

-- Location: IOIBUF_X51_Y0_N1
\w_11[0][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(0)(4),
	o => \w_11[0][4]~input_o\);

-- Location: IOIBUF_X79_Y0_N129
\w_11[0][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(0)(5),
	o => \w_11[0][5]~input_o\);

-- Location: IOIBUF_X84_Y0_N57
\w_11[0][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(0)(6),
	o => \w_11[0][6]~input_o\);

-- Location: IOIBUF_X77_Y0_N57
\w_11[0][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(0)(7),
	o => \w_11[0][7]~input_o\);

-- Location: DSP_X64_Y3_N0
\inst_CE_11|Add2~332\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "0",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof4",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "true",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_11|Add2~332_ACLR_bus\,
	clk => \inst_CE_11|Add2~332_CLK_bus\,
	ena => \inst_CE_11|Add2~332_ENA_bus\,
	ax => \inst_CE_11|Add2~332_AX_bus\,
	ay => \inst_CE_11|Add2~332_AY_bus\,
	bx => \inst_CE_11|Add2~332_BX_bus\,
	by => \inst_CE_11|Add2~332_BY_bus\,
	resulta => \inst_CE_11|Add2~332_RESULTA_bus\,
	chainout => \inst_CE_11|Add2~332_CHAINOUT_bus\);

-- Location: DSP_X64_Y2_N0
\inst_CE_11|Add2~10\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "0",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 1,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof4",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "true",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_11|Add2~10_ACLR_bus\,
	clk => \inst_CE_11|Add2~10_CLK_bus\,
	ena => \inst_CE_11|Add2~10_ENA_bus\,
	ax => \inst_CE_11|Add2~10_AX_bus\,
	ay => \inst_CE_11|Add2~10_AY_bus\,
	bx => \inst_CE_11|Add2~10_BX_bus\,
	by => \inst_CE_11|Add2~10_BY_bus\,
	chainin => \inst_CE_11|Add2~10_CHAININ_bus\,
	resulta => \inst_CE_11|Add2~10_RESULTA_bus\);

-- Location: DSP_X64_Y10_N0
\inst_CE_11|Mult4~mac\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_11|Mult4~mac_ACLR_bus\,
	clk => \inst_CE_11|Mult4~mac_CLK_bus\,
	ena => \inst_CE_11|Mult4~mac_ENA_bus\,
	ax => \inst_CE_11|Mult4~mac_AX_bus\,
	ay => \inst_CE_11|Mult4~mac_AY_bus\,
	bx => \inst_CE_11|Mult4~mac_BX_bus\,
	by => \inst_CE_11|Mult4~mac_BY_bus\,
	resulta => \inst_CE_11|Mult4~mac_RESULTA_bus\);

-- Location: DSP_X64_Y11_N0
\inst_CE_11|Mult5~mac\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_11|Mult5~mac_ACLR_bus\,
	clk => \inst_CE_11|Mult5~mac_CLK_bus\,
	ena => \inst_CE_11|Mult5~mac_ENA_bus\,
	ax => \inst_CE_11|Mult5~mac_AX_bus\,
	ay => \inst_CE_11|Mult5~mac_AY_bus\,
	bx => \inst_CE_11|Mult5~mac_BX_bus\,
	by => \inst_CE_11|Mult5~mac_BY_bus\,
	resulta => \inst_CE_11|Mult5~mac_RESULTA_bus\);

-- Location: DSP_X64_Y14_N0
\inst_CE_11|Mult6~mac\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_11|Mult6~mac_ACLR_bus\,
	clk => \inst_CE_11|Mult6~mac_CLK_bus\,
	ena => \inst_CE_11|Mult6~mac_ENA_bus\,
	ax => \inst_CE_11|Mult6~mac_AX_bus\,
	ay => \inst_CE_11|Mult6~mac_AY_bus\,
	bx => \inst_CE_11|Mult6~mac_BX_bus\,
	by => \inst_CE_11|Mult6~mac_BY_bus\,
	resulta => \inst_CE_11|Mult6~mac_RESULTA_bus\);

-- Location: DSP_X64_Y15_N0
\inst_CE_11|Mult7~mac\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_11|Mult7~mac_ACLR_bus\,
	clk => \inst_CE_11|Mult7~mac_CLK_bus\,
	ena => \inst_CE_11|Mult7~mac_ENA_bus\,
	ax => \inst_CE_11|Mult7~mac_AX_bus\,
	ay => \inst_CE_11|Mult7~mac_AY_bus\,
	bx => \inst_CE_11|Mult7~mac_BX_bus\,
	by => \inst_CE_11|Mult7~mac_BY_bus\,
	resulta => \inst_CE_11|Mult7~mac_RESULTA_bus\);

-- Location: DSP_X64_Y16_N0
\inst_CE_11|Mult8~mac\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "1",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "0",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_11|Mult8~mac_ACLR_bus\,
	clk => \inst_CE_11|Mult8~mac_CLK_bus\,
	ena => \inst_CE_11|Mult8~mac_ENA_bus\,
	ax => \inst_CE_11|Mult8~mac_AX_bus\,
	ay => \inst_CE_11|Mult8~mac_AY_bus\,
	bx => \inst_CE_11|Mult8~mac_BX_bus\,
	by => \inst_CE_11|Mult8~mac_BY_bus\,
	resulta => \inst_CE_11|Mult8~mac_RESULTA_bus\);

-- Location: IOIBUF_X133_Y0_N129
\n_11[0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_11(0),
	o => \n_11[0]~input_o\);

-- Location: IOIBUF_X85_Y0_N129
\n_11[1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_11(1),
	o => \n_11[1]~input_o\);

-- Location: LABCELL_X63_Y16_N48
\inst_CE_11|ShiftRight0~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~0_combout\ = ( \n_11[0]~input_o\ & ( \n_11[1]~input_o\ & ( \inst_CE_11|sums\(7) ) ) ) # ( !\n_11[0]~input_o\ & ( \n_11[1]~input_o\ & ( \inst_CE_11|sums\(6) ) ) ) # ( \n_11[0]~input_o\ & ( !\n_11[1]~input_o\ & ( \inst_CE_11|sums\(5) 
-- ) ) ) # ( !\n_11[0]~input_o\ & ( !\n_11[1]~input_o\ & ( \inst_CE_11|sums\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_sums\(6),
	datab => \inst_CE_11|ALT_INV_sums\(7),
	datac => \inst_CE_11|ALT_INV_sums\(4),
	datad => \inst_CE_11|ALT_INV_sums\(5),
	datae => \ALT_INV_n_11[0]~input_o\,
	dataf => \ALT_INV_n_11[1]~input_o\,
	combout => \inst_CE_11|ShiftRight0~0_combout\);

-- Location: LABCELL_X63_Y16_N6
\inst_CE_11|ShiftRight0~1\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~1_combout\ = ( \n_11[0]~input_o\ & ( \inst_CE_11|sums\(3) & ( (\inst_CE_11|sums\(1)) # (\n_11[1]~input_o\) ) ) ) # ( !\n_11[0]~input_o\ & ( \inst_CE_11|sums\(3) & ( (!\n_11[1]~input_o\ & ((\inst_CE_11|sums\(0)))) # 
-- (\n_11[1]~input_o\ & (\inst_CE_11|sums\(2))) ) ) ) # ( \n_11[0]~input_o\ & ( !\inst_CE_11|sums\(3) & ( (!\n_11[1]~input_o\ & \inst_CE_11|sums\(1)) ) ) ) # ( !\n_11[0]~input_o\ & ( !\inst_CE_11|sums\(3) & ( (!\n_11[1]~input_o\ & ((\inst_CE_11|sums\(0)))) # 
-- (\n_11[1]~input_o\ & (\inst_CE_11|sums\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000011000000110000010001110111010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_sums\(2),
	datab => \ALT_INV_n_11[1]~input_o\,
	datac => \inst_CE_11|ALT_INV_sums\(1),
	datad => \inst_CE_11|ALT_INV_sums\(0),
	datae => \ALT_INV_n_11[0]~input_o\,
	dataf => \inst_CE_11|ALT_INV_sums\(3),
	combout => \inst_CE_11|ShiftRight0~1_combout\);

-- Location: IOIBUF_X84_Y0_N85
\n_11[2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_11(2),
	o => \n_11[2]~input_o\);

-- Location: MLABCELL_X65_Y16_N0
\inst_CE_11|ShiftRight0~2\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~2_combout\ = ( \inst_CE_11|ShiftRight0~1_combout\ & ( \n_11[2]~input_o\ & ( \inst_CE_11|ShiftRight0~0_combout\ ) ) ) # ( !\inst_CE_11|ShiftRight0~1_combout\ & ( \n_11[2]~input_o\ & ( \inst_CE_11|ShiftRight0~0_combout\ ) ) ) # ( 
-- \inst_CE_11|ShiftRight0~1_combout\ & ( !\n_11[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_CE_11|ALT_INV_ShiftRight0~0_combout\,
	datae => \inst_CE_11|ALT_INV_ShiftRight0~1_combout\,
	dataf => \ALT_INV_n_11[2]~input_o\,
	combout => \inst_CE_11|ShiftRight0~2_combout\);

-- Location: IOIBUF_X139_Y0_N73
\w_13[8][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(8)(0),
	o => \w_13[8][0]~input_o\);

-- Location: IOIBUF_X62_Y129_N73
\w_13[8][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(8)(1),
	o => \w_13[8][1]~input_o\);

-- Location: IOIBUF_X66_Y129_N45
\w_13[8][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(8)(2),
	o => \w_13[8][2]~input_o\);

-- Location: IOIBUF_X210_Y8_N32
\w_13[8][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(8)(3),
	o => \w_13[8][3]~input_o\);

-- Location: IOIBUF_X62_Y129_N129
\w_13[8][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(8)(4),
	o => \w_13[8][4]~input_o\);

-- Location: IOIBUF_X0_Y8_N32
\w_13[8][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(8)(5),
	o => \w_13[8][5]~input_o\);

-- Location: IOIBUF_X166_Y0_N129
\w_13[8][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(8)(6),
	o => \w_13[8][6]~input_o\);

-- Location: IOIBUF_X154_Y0_N45
\w_13[8][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(8)(7),
	o => \w_13[8][7]~input_o\);

-- Location: IOIBUF_X10_Y0_N73
\w_13[7][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(7)(0),
	o => \w_13[7][0]~input_o\);

-- Location: IOIBUF_X59_Y129_N1
\w_13[7][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(7)(1),
	o => \w_13[7][1]~input_o\);

-- Location: IOIBUF_X0_Y7_N132
\w_13[7][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(7)(2),
	o => \w_13[7][2]~input_o\);

-- Location: IOIBUF_X62_Y129_N45
\w_13[7][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(7)(3),
	o => \w_13[7][3]~input_o\);

-- Location: IOIBUF_X9_Y0_N85
\w_13[7][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(7)(4),
	o => \w_13[7][4]~input_o\);

-- Location: IOIBUF_X144_Y0_N73
\w_13[7][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(7)(5),
	o => \w_13[7][5]~input_o\);

-- Location: IOIBUF_X141_Y0_N57
\w_13[7][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(7)(6),
	o => \w_13[7][6]~input_o\);

-- Location: IOIBUF_X0_Y7_N76
\w_13[7][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(7)(7),
	o => \w_13[7][7]~input_o\);

-- Location: IOIBUF_X12_Y0_N73
\w_13[6][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(6)(0),
	o => \w_13[6][0]~input_o\);

-- Location: IOIBUF_X0_Y8_N4
\w_13[6][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(6)(1),
	o => \w_13[6][1]~input_o\);

-- Location: IOIBUF_X12_Y0_N101
\w_13[6][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(6)(2),
	o => \w_13[6][2]~input_o\);

-- Location: IOIBUF_X141_Y0_N85
\w_13[6][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(6)(3),
	o => \w_13[6][3]~input_o\);

-- Location: IOIBUF_X144_Y0_N45
\w_13[6][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(6)(4),
	o => \w_13[6][4]~input_o\);

-- Location: IOIBUF_X139_Y0_N129
\w_13[6][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(6)(5),
	o => \w_13[6][5]~input_o\);

-- Location: IOIBUF_X59_Y129_N29
\w_13[6][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(6)(6),
	o => \w_13[6][6]~input_o\);

-- Location: IOIBUF_X148_Y0_N73
\w_13[6][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(6)(7),
	o => \w_13[6][7]~input_o\);

-- Location: IOIBUF_X74_Y129_N101
\w_13[5][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(5)(0),
	o => \w_13[5][0]~input_o\);

-- Location: IOIBUF_X127_Y0_N85
\w_13[5][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(5)(1),
	o => \w_13[5][1]~input_o\);

-- Location: IOIBUF_X116_Y0_N29
\w_13[5][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(5)(2),
	o => \w_13[5][2]~input_o\);

-- Location: IOIBUF_X127_Y0_N29
\w_13[5][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(5)(3),
	o => \w_13[5][3]~input_o\);

-- Location: IOIBUF_X117_Y0_N73
\w_13[5][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(5)(4),
	o => \w_13[5][4]~input_o\);

-- Location: IOIBUF_X57_Y129_N45
\w_13[5][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(5)(5),
	o => \w_13[5][5]~input_o\);

-- Location: IOIBUF_X22_Y0_N129
\w_13[5][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(5)(6),
	o => \w_13[5][6]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\w_13[5][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(5)(7),
	o => \w_13[5][7]~input_o\);

-- Location: IOIBUF_X29_Y0_N29
\w_13[4][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(4)(0),
	o => \w_13[4][0]~input_o\);

-- Location: IOIBUF_X31_Y0_N101
\w_13[4][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(4)(1),
	o => \w_13[4][1]~input_o\);

-- Location: IOIBUF_X29_Y0_N57
\w_13[4][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(4)(2),
	o => \w_13[4][2]~input_o\);

-- Location: IOIBUF_X31_Y0_N129
\w_13[4][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(4)(3),
	o => \w_13[4][3]~input_o\);

-- Location: IOIBUF_X27_Y0_N73
\w_13[4][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(4)(4),
	o => \w_13[4][4]~input_o\);

-- Location: IOIBUF_X95_Y0_N45
\w_13[4][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(4)(5),
	o => \w_13[4][5]~input_o\);

-- Location: IOIBUF_X27_Y0_N101
\w_13[4][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(4)(6),
	o => \w_13[4][6]~input_o\);

-- Location: IOIBUF_X25_Y0_N101
\w_13[4][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(4)(7),
	o => \w_13[4][7]~input_o\);

-- Location: IOIBUF_X79_Y0_N45
\w_13[3][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(3)(0),
	o => \w_13[3][0]~input_o\);

-- Location: IOIBUF_X46_Y0_N101
\w_13[3][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(3)(1),
	o => \w_13[3][1]~input_o\);

-- Location: IOIBUF_X85_Y0_N45
\w_13[3][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(3)(2),
	o => \w_13[3][2]~input_o\);

-- Location: IOIBUF_X82_Y0_N101
\w_13[3][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(3)(3),
	o => \w_13[3][3]~input_o\);

-- Location: IOIBUF_X49_Y0_N45
\w_13[3][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(3)(4),
	o => \w_13[3][4]~input_o\);

-- Location: IOIBUF_X82_Y0_N129
\w_13[3][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(3)(5),
	o => \w_13[3][5]~input_o\);

-- Location: IOIBUF_X82_Y0_N73
\w_13[3][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(3)(6),
	o => \w_13[3][6]~input_o\);

-- Location: IOIBUF_X51_Y0_N57
\w_13[3][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(3)(7),
	o => \w_13[3][7]~input_o\);

-- Location: IOIBUF_X85_Y0_N101
\w_13[2][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(2)(0),
	o => \w_13[2][0]~input_o\);

-- Location: IOIBUF_X46_Y0_N129
\w_13[2][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(2)(1),
	o => \w_13[2][1]~input_o\);

-- Location: IOIBUF_X51_Y0_N29
\w_13[2][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(2)(2),
	o => \w_13[2][2]~input_o\);

-- Location: IOIBUF_X49_Y0_N73
\w_13[2][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(2)(3),
	o => \w_13[2][3]~input_o\);

-- Location: IOIBUF_X49_Y0_N101
\w_13[2][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(2)(4),
	o => \w_13[2][4]~input_o\);

-- Location: IOIBUF_X85_Y0_N73
\w_13[2][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(2)(5),
	o => \w_13[2][5]~input_o\);

-- Location: IOIBUF_X79_Y0_N101
\w_13[2][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(2)(6),
	o => \w_13[2][6]~input_o\);

-- Location: IOIBUF_X82_Y0_N45
\w_13[2][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(2)(7),
	o => \w_13[2][7]~input_o\);

-- Location: IOIBUF_X89_Y0_N1
\w_13[1][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(1)(0),
	o => \w_13[1][0]~input_o\);

-- Location: IOIBUF_X87_Y0_N129
\w_13[1][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(1)(1),
	o => \w_13[1][1]~input_o\);

-- Location: IOIBUF_X46_Y0_N73
\w_13[1][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(1)(2),
	o => \w_13[1][2]~input_o\);

-- Location: IOIBUF_X87_Y0_N101
\w_13[1][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(1)(3),
	o => \w_13[1][3]~input_o\);

-- Location: IOIBUF_X87_Y0_N45
\w_13[1][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(1)(4),
	o => \w_13[1][4]~input_o\);

-- Location: IOIBUF_X42_Y0_N101
\w_13[1][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(1)(5),
	o => \w_13[1][5]~input_o\);

-- Location: IOIBUF_X46_Y0_N45
\w_13[1][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(1)(6),
	o => \w_13[1][6]~input_o\);

-- Location: IOIBUF_X90_Y0_N129
\w_13[1][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(1)(7),
	o => \w_13[1][7]~input_o\);

-- Location: IOIBUF_X87_Y0_N73
\w_13[0][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(0)(0),
	o => \w_13[0][0]~input_o\);

-- Location: IOIBUF_X14_Y0_N85
\w_13[0][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(0)(1),
	o => \w_13[0][1]~input_o\);

-- Location: IOIBUF_X44_Y0_N29
\w_13[0][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(0)(2),
	o => \w_13[0][2]~input_o\);

-- Location: IOIBUF_X35_Y0_N45
\w_13[0][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(0)(3),
	o => \w_13[0][3]~input_o\);

-- Location: IOIBUF_X89_Y0_N29
\w_13[0][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(0)(4),
	o => \w_13[0][4]~input_o\);

-- Location: IOIBUF_X42_Y0_N73
\w_13[0][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(0)(5),
	o => \w_13[0][5]~input_o\);

-- Location: IOIBUF_X42_Y0_N129
\w_13[0][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(0)(6),
	o => \w_13[0][6]~input_o\);

-- Location: IOIBUF_X35_Y0_N73
\w_13[0][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(0)(7),
	o => \w_13[0][7]~input_o\);

-- Location: DSP_X64_Y5_N0
\inst_CE_13|Add2~332\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "0",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof4",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "true",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_13|Add2~332_ACLR_bus\,
	clk => \inst_CE_13|Add2~332_CLK_bus\,
	ena => \inst_CE_13|Add2~332_ENA_bus\,
	ax => \inst_CE_13|Add2~332_AX_bus\,
	ay => \inst_CE_13|Add2~332_AY_bus\,
	bx => \inst_CE_13|Add2~332_BX_bus\,
	by => \inst_CE_13|Add2~332_BY_bus\,
	resulta => \inst_CE_13|Add2~332_RESULTA_bus\,
	chainout => \inst_CE_13|Add2~332_CHAINOUT_bus\);

-- Location: DSP_X64_Y4_N0
\inst_CE_13|Add2~10\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "0",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 1,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof4",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "true",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_13|Add2~10_ACLR_bus\,
	clk => \inst_CE_13|Add2~10_CLK_bus\,
	ena => \inst_CE_13|Add2~10_ENA_bus\,
	ax => \inst_CE_13|Add2~10_AX_bus\,
	ay => \inst_CE_13|Add2~10_AY_bus\,
	bx => \inst_CE_13|Add2~10_BX_bus\,
	by => \inst_CE_13|Add2~10_BY_bus\,
	chainin => \inst_CE_13|Add2~10_CHAININ_bus\,
	resulta => \inst_CE_13|Add2~10_RESULTA_bus\);

-- Location: DSP_X64_Y8_N0
\inst_CE_13|Mult4~mac\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_13|Mult4~mac_ACLR_bus\,
	clk => \inst_CE_13|Mult4~mac_CLK_bus\,
	ena => \inst_CE_13|Mult4~mac_ENA_bus\,
	ax => \inst_CE_13|Mult4~mac_AX_bus\,
	ay => \inst_CE_13|Mult4~mac_AY_bus\,
	bx => \inst_CE_13|Mult4~mac_BX_bus\,
	by => \inst_CE_13|Mult4~mac_BY_bus\,
	resulta => \inst_CE_13|Mult4~mac_RESULTA_bus\);

-- Location: DSP_X64_Y12_N0
\inst_CE_13|Mult5~mac\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_13|Mult5~mac_ACLR_bus\,
	clk => \inst_CE_13|Mult5~mac_CLK_bus\,
	ena => \inst_CE_13|Mult5~mac_ENA_bus\,
	ax => \inst_CE_13|Mult5~mac_AX_bus\,
	ay => \inst_CE_13|Mult5~mac_AY_bus\,
	bx => \inst_CE_13|Mult5~mac_BX_bus\,
	by => \inst_CE_13|Mult5~mac_BY_bus\,
	resulta => \inst_CE_13|Mult5~mac_RESULTA_bus\);

-- Location: DSP_X64_Y20_N0
\inst_CE_13|Mult6~mac\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_13|Mult6~mac_ACLR_bus\,
	clk => \inst_CE_13|Mult6~mac_CLK_bus\,
	ena => \inst_CE_13|Mult6~mac_ENA_bus\,
	ax => \inst_CE_13|Mult6~mac_AX_bus\,
	ay => \inst_CE_13|Mult6~mac_AY_bus\,
	bx => \inst_CE_13|Mult6~mac_BX_bus\,
	by => \inst_CE_13|Mult6~mac_BY_bus\,
	resulta => \inst_CE_13|Mult6~mac_RESULTA_bus\);

-- Location: DSP_X64_Y21_N0
\inst_CE_13|Mult7~mac\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_13|Mult7~mac_ACLR_bus\,
	clk => \inst_CE_13|Mult7~mac_CLK_bus\,
	ena => \inst_CE_13|Mult7~mac_ENA_bus\,
	ax => \inst_CE_13|Mult7~mac_AX_bus\,
	ay => \inst_CE_13|Mult7~mac_AY_bus\,
	bx => \inst_CE_13|Mult7~mac_BX_bus\,
	by => \inst_CE_13|Mult7~mac_BY_bus\,
	resulta => \inst_CE_13|Mult7~mac_RESULTA_bus\);

-- Location: DSP_X64_Y22_N0
\inst_CE_13|Mult8~mac\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "1",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "0",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_13|Mult8~mac_ACLR_bus\,
	clk => \inst_CE_13|Mult8~mac_CLK_bus\,
	ena => \inst_CE_13|Mult8~mac_ENA_bus\,
	ax => \inst_CE_13|Mult8~mac_AX_bus\,
	ay => \inst_CE_13|Mult8~mac_AY_bus\,
	bx => \inst_CE_13|Mult8~mac_BX_bus\,
	by => \inst_CE_13|Mult8~mac_BY_bus\,
	resulta => \inst_CE_13|Mult8~mac_RESULTA_bus\);

-- Location: IOIBUF_X0_Y8_N88
\n_13[0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_13(0),
	o => \n_13[0]~input_o\);

-- Location: IOIBUF_X117_Y0_N101
\n_13[1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_13(1),
	o => \n_13[1]~input_o\);

-- Location: MLABCELL_X65_Y18_N48
\inst_CE_13|ShiftRight0~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~0_combout\ = ( \n_13[0]~input_o\ & ( \n_13[1]~input_o\ & ( \inst_CE_13|sums\(7) ) ) ) # ( !\n_13[0]~input_o\ & ( \n_13[1]~input_o\ & ( \inst_CE_13|sums\(6) ) ) ) # ( \n_13[0]~input_o\ & ( !\n_13[1]~input_o\ & ( \inst_CE_13|sums\(5) 
-- ) ) ) # ( !\n_13[0]~input_o\ & ( !\n_13[1]~input_o\ & ( \inst_CE_13|sums\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_sums\(6),
	datab => \inst_CE_13|ALT_INV_sums\(7),
	datac => \inst_CE_13|ALT_INV_sums\(5),
	datad => \inst_CE_13|ALT_INV_sums\(4),
	datae => \ALT_INV_n_13[0]~input_o\,
	dataf => \ALT_INV_n_13[1]~input_o\,
	combout => \inst_CE_13|ShiftRight0~0_combout\);

-- Location: MLABCELL_X65_Y18_N42
\inst_CE_13|ShiftRight0~1\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~1_combout\ = ( \inst_CE_13|sums\(1) & ( \n_13[1]~input_o\ & ( (!\n_13[0]~input_o\ & ((\inst_CE_13|sums\(2)))) # (\n_13[0]~input_o\ & (\inst_CE_13|sums\(3))) ) ) ) # ( !\inst_CE_13|sums\(1) & ( \n_13[1]~input_o\ & ( 
-- (!\n_13[0]~input_o\ & ((\inst_CE_13|sums\(2)))) # (\n_13[0]~input_o\ & (\inst_CE_13|sums\(3))) ) ) ) # ( \inst_CE_13|sums\(1) & ( !\n_13[1]~input_o\ & ( (\n_13[0]~input_o\) # (\inst_CE_13|sums\(0)) ) ) ) # ( !\inst_CE_13|sums\(1) & ( !\n_13[1]~input_o\ & 
-- ( (\inst_CE_13|sums\(0) & !\n_13[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_sums\(3),
	datab => \inst_CE_13|ALT_INV_sums\(0),
	datac => \ALT_INV_n_13[0]~input_o\,
	datad => \inst_CE_13|ALT_INV_sums\(2),
	datae => \inst_CE_13|ALT_INV_sums\(1),
	dataf => \ALT_INV_n_13[1]~input_o\,
	combout => \inst_CE_13|ShiftRight0~1_combout\);

-- Location: IOIBUF_X84_Y0_N29
\n_13[2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_13(2),
	o => \n_13[2]~input_o\);

-- Location: MLABCELL_X65_Y16_N51
\inst_CE_13|ShiftRight0~2\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~2_combout\ = ( \n_13[2]~input_o\ & ( \inst_CE_13|ShiftRight0~0_combout\ ) ) # ( !\n_13[2]~input_o\ & ( \inst_CE_13|ShiftRight0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_CE_13|ALT_INV_ShiftRight0~0_combout\,
	datac => \inst_CE_13|ALT_INV_ShiftRight0~1_combout\,
	dataf => \ALT_INV_n_13[2]~input_o\,
	combout => \inst_CE_13|ShiftRight0~2_combout\);

-- Location: IOIBUF_X84_Y0_N1
\n_12[2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_12(2),
	o => \n_12[2]~input_o\);

-- Location: IOIBUF_X136_Y0_N45
\w_12[8][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(8)(0),
	o => \w_12[8][0]~input_o\);

-- Location: IOIBUF_X158_Y0_N101
\w_12[8][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(8)(1),
	o => \w_12[8][1]~input_o\);

-- Location: IOIBUF_X12_Y0_N45
\w_12[8][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(8)(2),
	o => \w_12[8][2]~input_o\);

-- Location: IOIBUF_X12_Y0_N129
\w_12[8][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(8)(3),
	o => \w_12[8][3]~input_o\);

-- Location: IOIBUF_X144_Y0_N129
\w_12[8][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(8)(4),
	o => \w_12[8][4]~input_o\);

-- Location: IOIBUF_X116_Y0_N85
\w_12[8][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(8)(5),
	o => \w_12[8][5]~input_o\);

-- Location: IOIBUF_X10_Y0_N129
\w_12[8][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(8)(6),
	o => \w_12[8][6]~input_o\);

-- Location: IOIBUF_X10_Y0_N101
\w_12[8][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(8)(7),
	o => \w_12[8][7]~input_o\);

-- Location: IOIBUF_X123_Y0_N129
\w_12[7][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(7)(0),
	o => \w_12[7][0]~input_o\);

-- Location: IOIBUF_X135_Y0_N85
\w_12[7][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(7)(1),
	o => \w_12[7][1]~input_o\);

-- Location: IOIBUF_X70_Y129_N45
\w_12[7][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(7)(2),
	o => \w_12[7][2]~input_o\);

-- Location: IOIBUF_X17_Y0_N101
\w_12[7][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(7)(3),
	o => \w_12[7][3]~input_o\);

-- Location: IOIBUF_X135_Y0_N29
\w_12[7][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(7)(4),
	o => \w_12[7][4]~input_o\);

-- Location: IOIBUF_X14_Y0_N29
\w_12[7][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(7)(5),
	o => \w_12[7][5]~input_o\);

-- Location: IOIBUF_X57_Y129_N101
\w_12[7][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(7)(6),
	o => \w_12[7][6]~input_o\);

-- Location: IOIBUF_X17_Y0_N73
\w_12[7][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(7)(7),
	o => \w_12[7][7]~input_o\);

-- Location: IOIBUF_X123_Y0_N73
\w_12[6][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(6)(0),
	o => \w_12[6][0]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\w_12[6][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(6)(1),
	o => \w_12[6][1]~input_o\);

-- Location: IOIBUF_X139_Y0_N101
\w_12[6][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(6)(2),
	o => \w_12[6][2]~input_o\);

-- Location: IOIBUF_X15_Y0_N73
\w_12[6][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(6)(3),
	o => \w_12[6][3]~input_o\);

-- Location: IOIBUF_X0_Y6_N76
\w_12[6][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(6)(4),
	o => \w_12[6][4]~input_o\);

-- Location: IOIBUF_X135_Y0_N57
\w_12[6][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(6)(5),
	o => \w_12[6][5]~input_o\);

-- Location: IOIBUF_X15_Y0_N129
\w_12[6][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(6)(6),
	o => \w_12[6][6]~input_o\);

-- Location: IOIBUF_X15_Y0_N101
\w_12[6][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(6)(7),
	o => \w_12[6][7]~input_o\);

-- Location: IOIBUF_X127_Y0_N1
\w_12[5][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(5)(0),
	o => \w_12[5][0]~input_o\);

-- Location: IOIBUF_X141_Y0_N29
\w_12[5][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(5)(1),
	o => \w_12[5][1]~input_o\);

-- Location: IOIBUF_X0_Y9_N48
\w_12[5][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(5)(2),
	o => \w_12[5][2]~input_o\);

-- Location: IOIBUF_X144_Y0_N101
\w_12[5][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(5)(3),
	o => \w_12[5][3]~input_o\);

-- Location: IOIBUF_X0_Y7_N48
\w_12[5][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(5)(4),
	o => \w_12[5][4]~input_o\);

-- Location: IOIBUF_X0_Y9_N132
\w_12[5][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(5)(5),
	o => \w_12[5][5]~input_o\);

-- Location: IOIBUF_X14_Y0_N57
\w_12[5][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(5)(6),
	o => \w_12[5][6]~input_o\);

-- Location: IOIBUF_X19_Y0_N57
\w_12[5][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(5)(7),
	o => \w_12[5][7]~input_o\);

-- Location: IOIBUF_X0_Y9_N104
\w_12[4][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(4)(0),
	o => \w_12[4][0]~input_o\);

-- Location: IOIBUF_X116_Y0_N1
\w_12[4][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(4)(1),
	o => \w_12[4][1]~input_o\);

-- Location: IOIBUF_X95_Y0_N73
\w_12[4][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(4)(2),
	o => \w_12[4][2]~input_o\);

-- Location: IOIBUF_X95_Y0_N129
\w_12[4][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(4)(3),
	o => \w_12[4][3]~input_o\);

-- Location: IOIBUF_X0_Y3_N82
\w_12[4][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(4)(4),
	o => \w_12[4][4]~input_o\);

-- Location: IOIBUF_X0_Y9_N76
\w_12[4][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(4)(5),
	o => \w_12[4][5]~input_o\);

-- Location: IOIBUF_X57_Y129_N73
\w_12[4][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(4)(6),
	o => \w_12[4][6]~input_o\);

-- Location: IOIBUF_X15_Y0_N45
\w_12[4][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(4)(7),
	o => \w_12[4][7]~input_o\);

-- Location: IOIBUF_X44_Y0_N1
\w_12[3][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(3)(0),
	o => \w_12[3][0]~input_o\);

-- Location: IOIBUF_X92_Y0_N73
\w_12[3][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(3)(1),
	o => \w_12[3][1]~input_o\);

-- Location: IOIBUF_X38_Y0_N57
\w_12[3][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(3)(2),
	o => \w_12[3][2]~input_o\);

-- Location: IOIBUF_X44_Y0_N57
\w_12[3][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(3)(3),
	o => \w_12[3][3]~input_o\);

-- Location: IOIBUF_X90_Y0_N73
\w_12[3][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(3)(4),
	o => \w_12[3][4]~input_o\);

-- Location: IOIBUF_X42_Y0_N45
\w_12[3][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(3)(5),
	o => \w_12[3][5]~input_o\);

-- Location: IOIBUF_X44_Y0_N85
\w_12[3][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(3)(6),
	o => \w_12[3][6]~input_o\);

-- Location: IOIBUF_X39_Y0_N129
\w_12[3][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(3)(7),
	o => \w_12[3][7]~input_o\);

-- Location: IOIBUF_X89_Y0_N57
\w_12[2][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(2)(0),
	o => \w_12[2][0]~input_o\);

-- Location: IOIBUF_X38_Y0_N29
\w_12[2][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(2)(1),
	o => \w_12[2][1]~input_o\);

-- Location: IOIBUF_X92_Y0_N129
\w_12[2][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(2)(2),
	o => \w_12[2][2]~input_o\);

-- Location: IOIBUF_X39_Y0_N73
\w_12[2][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(2)(3),
	o => \w_12[2][3]~input_o\);

-- Location: IOIBUF_X39_Y0_N45
\w_12[2][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(2)(4),
	o => \w_12[2][4]~input_o\);

-- Location: IOIBUF_X89_Y0_N85
\w_12[2][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(2)(5),
	o => \w_12[2][5]~input_o\);

-- Location: IOIBUF_X38_Y0_N85
\w_12[2][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(2)(6),
	o => \w_12[2][6]~input_o\);

-- Location: IOIBUF_X39_Y0_N101
\w_12[2][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(2)(7),
	o => \w_12[2][7]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\w_12[1][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(1)(0),
	o => \w_12[1][0]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\w_12[1][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(1)(1),
	o => \w_12[1][1]~input_o\);

-- Location: IOIBUF_X90_Y0_N101
\w_12[1][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(1)(2),
	o => \w_12[1][2]~input_o\);

-- Location: IOIBUF_X95_Y0_N101
\w_12[1][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(1)(3),
	o => \w_12[1][3]~input_o\);

-- Location: IOIBUF_X35_Y0_N129
\w_12[1][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(1)(4),
	o => \w_12[1][4]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\w_12[1][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(1)(5),
	o => \w_12[1][5]~input_o\);

-- Location: IOIBUF_X94_Y0_N85
\w_12[1][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(1)(6),
	o => \w_12[1][6]~input_o\);

-- Location: IOIBUF_X29_Y0_N85
\w_12[1][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(1)(7),
	o => \w_12[1][7]~input_o\);

-- Location: IOIBUF_X31_Y0_N45
\w_12[0][0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(0)(0),
	o => \w_12[0][0]~input_o\);

-- Location: IOIBUF_X35_Y0_N101
\w_12[0][1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(0)(1),
	o => \w_12[0][1]~input_o\);

-- Location: IOIBUF_X92_Y0_N45
\w_12[0][2]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(0)(2),
	o => \w_12[0][2]~input_o\);

-- Location: IOIBUF_X92_Y0_N101
\w_12[0][3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(0)(3),
	o => \w_12[0][3]~input_o\);

-- Location: IOIBUF_X90_Y0_N45
\w_12[0][4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(0)(4),
	o => \w_12[0][4]~input_o\);

-- Location: IOIBUF_X94_Y0_N57
\w_12[0][5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(0)(5),
	o => \w_12[0][5]~input_o\);

-- Location: IOIBUF_X94_Y0_N29
\w_12[0][6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(0)(6),
	o => \w_12[0][6]~input_o\);

-- Location: IOIBUF_X31_Y0_N73
\w_12[0][7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(0)(7),
	o => \w_12[0][7]~input_o\);

-- Location: DSP_X64_Y7_N0
\inst_CE_12|Add2~332\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "0",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof4",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "true",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_12|Add2~332_ACLR_bus\,
	clk => \inst_CE_12|Add2~332_CLK_bus\,
	ena => \inst_CE_12|Add2~332_ENA_bus\,
	ax => \inst_CE_12|Add2~332_AX_bus\,
	ay => \inst_CE_12|Add2~332_AY_bus\,
	bx => \inst_CE_12|Add2~332_BX_bus\,
	by => \inst_CE_12|Add2~332_BY_bus\,
	resulta => \inst_CE_12|Add2~332_RESULTA_bus\,
	chainout => \inst_CE_12|Add2~332_CHAINOUT_bus\);

-- Location: DSP_X64_Y6_N0
\inst_CE_12|Add2~10\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "0",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 1,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof4",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "true",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_12|Add2~10_ACLR_bus\,
	clk => \inst_CE_12|Add2~10_CLK_bus\,
	ena => \inst_CE_12|Add2~10_ENA_bus\,
	ax => \inst_CE_12|Add2~10_AX_bus\,
	ay => \inst_CE_12|Add2~10_AY_bus\,
	bx => \inst_CE_12|Add2~10_BX_bus\,
	by => \inst_CE_12|Add2~10_BY_bus\,
	chainin => \inst_CE_12|Add2~10_CHAININ_bus\,
	resulta => \inst_CE_12|Add2~10_RESULTA_bus\);

-- Location: DSP_X64_Y9_N0
\inst_CE_12|Mult4~mac\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_12|Mult4~mac_ACLR_bus\,
	clk => \inst_CE_12|Mult4~mac_CLK_bus\,
	ena => \inst_CE_12|Mult4~mac_ENA_bus\,
	ax => \inst_CE_12|Mult4~mac_AX_bus\,
	ay => \inst_CE_12|Mult4~mac_AY_bus\,
	bx => \inst_CE_12|Mult4~mac_BX_bus\,
	by => \inst_CE_12|Mult4~mac_BY_bus\,
	resulta => \inst_CE_12|Mult4~mac_RESULTA_bus\);

-- Location: DSP_X64_Y13_N0
\inst_CE_12|Mult5~mac\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_12|Mult5~mac_ACLR_bus\,
	clk => \inst_CE_12|Mult5~mac_CLK_bus\,
	ena => \inst_CE_12|Mult5~mac_ENA_bus\,
	ax => \inst_CE_12|Mult5~mac_AX_bus\,
	ay => \inst_CE_12|Mult5~mac_AY_bus\,
	bx => \inst_CE_12|Mult5~mac_BX_bus\,
	by => \inst_CE_12|Mult5~mac_BY_bus\,
	resulta => \inst_CE_12|Mult5~mac_RESULTA_bus\);

-- Location: DSP_X64_Y17_N0
\inst_CE_12|Mult6~mac\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_12|Mult6~mac_ACLR_bus\,
	clk => \inst_CE_12|Mult6~mac_CLK_bus\,
	ena => \inst_CE_12|Mult6~mac_ENA_bus\,
	ax => \inst_CE_12|Mult6~mac_AX_bus\,
	ay => \inst_CE_12|Mult6~mac_AY_bus\,
	bx => \inst_CE_12|Mult6~mac_BX_bus\,
	by => \inst_CE_12|Mult6~mac_BY_bus\,
	resulta => \inst_CE_12|Mult6~mac_RESULTA_bus\);

-- Location: DSP_X64_Y18_N0
\inst_CE_12|Mult7~mac\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_12|Mult7~mac_ACLR_bus\,
	clk => \inst_CE_12|Mult7~mac_CLK_bus\,
	ena => \inst_CE_12|Mult7~mac_ENA_bus\,
	ax => \inst_CE_12|Mult7~mac_AX_bus\,
	ay => \inst_CE_12|Mult7~mac_AY_bus\,
	bx => \inst_CE_12|Mult7~mac_BX_bus\,
	by => \inst_CE_12|Mult7~mac_BY_bus\,
	resulta => \inst_CE_12|Mult7~mac_RESULTA_bus\);

-- Location: DSP_X64_Y19_N0
\inst_CE_12|Mult8~mac\ : stratixv_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "1",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	complex_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "0",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst_CE_12|Mult8~mac_ACLR_bus\,
	clk => \inst_CE_12|Mult8~mac_CLK_bus\,
	ena => \inst_CE_12|Mult8~mac_ENA_bus\,
	ax => \inst_CE_12|Mult8~mac_AX_bus\,
	ay => \inst_CE_12|Mult8~mac_AY_bus\,
	bx => \inst_CE_12|Mult8~mac_BX_bus\,
	by => \inst_CE_12|Mult8~mac_BY_bus\,
	resulta => \inst_CE_12|Mult8~mac_RESULTA_bus\);

-- Location: IOIBUF_X133_Y0_N73
\n_12[0]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_12(0),
	o => \n_12[0]~input_o\);

-- Location: IOIBUF_X62_Y129_N101
\n_12[1]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_12(1),
	o => \n_12[1]~input_o\);

-- Location: MLABCELL_X65_Y19_N42
\inst_CE_12|ShiftRight0~1\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~1_combout\ = ( \n_12[1]~input_o\ & ( \inst_CE_12|sums\(2) & ( (!\n_12[0]~input_o\) # (\inst_CE_12|sums\(3)) ) ) ) # ( !\n_12[1]~input_o\ & ( \inst_CE_12|sums\(2) & ( (!\n_12[0]~input_o\ & ((\inst_CE_12|sums\(0)))) # 
-- (\n_12[0]~input_o\ & (\inst_CE_12|sums\(1))) ) ) ) # ( \n_12[1]~input_o\ & ( !\inst_CE_12|sums\(2) & ( (\inst_CE_12|sums\(3) & \n_12[0]~input_o\) ) ) ) # ( !\n_12[1]~input_o\ & ( !\inst_CE_12|sums\(2) & ( (!\n_12[0]~input_o\ & ((\inst_CE_12|sums\(0)))) # 
-- (\n_12[0]~input_o\ & (\inst_CE_12|sums\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000110000001100000101111101011111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_sums\(1),
	datab => \inst_CE_12|ALT_INV_sums\(3),
	datac => \ALT_INV_n_12[0]~input_o\,
	datad => \inst_CE_12|ALT_INV_sums\(0),
	datae => \ALT_INV_n_12[1]~input_o\,
	dataf => \inst_CE_12|ALT_INV_sums\(2),
	combout => \inst_CE_12|ShiftRight0~1_combout\);

-- Location: MLABCELL_X65_Y19_N0
\inst_CE_12|ShiftRight0~0\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~0_combout\ = ( \inst_CE_12|sums\(4) & ( \inst_CE_12|sums\(6) & ( (!\n_12[0]~input_o\) # ((!\n_12[1]~input_o\ & (\inst_CE_12|sums\(5))) # (\n_12[1]~input_o\ & ((\inst_CE_12|sums\(7))))) ) ) ) # ( !\inst_CE_12|sums\(4) & ( 
-- \inst_CE_12|sums\(6) & ( (!\n_12[1]~input_o\ & (\inst_CE_12|sums\(5) & (\n_12[0]~input_o\))) # (\n_12[1]~input_o\ & (((!\n_12[0]~input_o\) # (\inst_CE_12|sums\(7))))) ) ) ) # ( \inst_CE_12|sums\(4) & ( !\inst_CE_12|sums\(6) & ( (!\n_12[1]~input_o\ & 
-- (((!\n_12[0]~input_o\)) # (\inst_CE_12|sums\(5)))) # (\n_12[1]~input_o\ & (((\n_12[0]~input_o\ & \inst_CE_12|sums\(7))))) ) ) ) # ( !\inst_CE_12|sums\(4) & ( !\inst_CE_12|sums\(6) & ( (\n_12[0]~input_o\ & ((!\n_12[1]~input_o\ & (\inst_CE_12|sums\(5))) # 
-- (\n_12[1]~input_o\ & ((\inst_CE_12|sums\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111110001001100011100110100001101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_sums\(5),
	datab => \ALT_INV_n_12[1]~input_o\,
	datac => \ALT_INV_n_12[0]~input_o\,
	datad => \inst_CE_12|ALT_INV_sums\(7),
	datae => \inst_CE_12|ALT_INV_sums\(4),
	dataf => \inst_CE_12|ALT_INV_sums\(6),
	combout => \inst_CE_12|ShiftRight0~0_combout\);

-- Location: MLABCELL_X65_Y16_N18
\inst_CE_12|ShiftRight0~2\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~2_combout\ = ( \inst_CE_12|ShiftRight0~0_combout\ & ( (\inst_CE_12|ShiftRight0~1_combout\) # (\n_12[2]~input_o\) ) ) # ( !\inst_CE_12|ShiftRight0~0_combout\ & ( (!\n_12[2]~input_o\ & \inst_CE_12|ShiftRight0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n_12[2]~input_o\,
	datac => \inst_CE_12|ALT_INV_ShiftRight0~1_combout\,
	dataf => \inst_CE_12|ALT_INV_ShiftRight0~0_combout\,
	combout => \inst_CE_12|ShiftRight0~2_combout\);

-- Location: LABCELL_X66_Y16_N30
\inst_SE|_~1\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_SE|_~1_sumout\ = SUM(( !\inst_CE_11|ShiftRight0~2_combout\ $ (!\inst_CE_13|ShiftRight0~2_combout\ $ (\inst_CE_12|ShiftRight0~2_combout\)) ) + ( !VCC ) + ( !VCC ))
-- \inst_SE|_~2\ = CARRY(( !\inst_CE_11|ShiftRight0~2_combout\ $ (!\inst_CE_13|ShiftRight0~2_combout\ $ (\inst_CE_12|ShiftRight0~2_combout\)) ) + ( !VCC ) + ( !VCC ))
-- \inst_SE|_~3\ = SHARE((!\inst_CE_11|ShiftRight0~2_combout\ & (\inst_CE_13|ShiftRight0~2_combout\ & \inst_CE_12|ShiftRight0~2_combout\)) # (\inst_CE_11|ShiftRight0~2_combout\ & ((\inst_CE_12|ShiftRight0~2_combout\) # (\inst_CE_13|ShiftRight0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst_CE_11|ALT_INV_ShiftRight0~2_combout\,
	datac => \inst_CE_13|ALT_INV_ShiftRight0~2_combout\,
	datad => \inst_CE_12|ALT_INV_ShiftRight0~2_combout\,
	cin => GND,
	sharein => GND,
	sumout => \inst_SE|_~1_sumout\,
	cout => \inst_SE|_~2\,
	shareout => \inst_SE|_~3\);

-- Location: LABCELL_X63_Y16_N24
\inst_CE_11|ShiftRight0~3\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~3_combout\ = ( \n_11[0]~input_o\ & ( \inst_CE_11|sums\(7) & ( (!\n_11[1]~input_o\ & (\inst_CE_11|sums\(8))) # (\n_11[1]~input_o\ & ((\inst_CE_11|sums\(10)))) ) ) ) # ( !\n_11[0]~input_o\ & ( \inst_CE_11|sums\(7) & ( 
-- (!\n_11[1]~input_o\) # (\inst_CE_11|sums\(9)) ) ) ) # ( \n_11[0]~input_o\ & ( !\inst_CE_11|sums\(7) & ( (!\n_11[1]~input_o\ & (\inst_CE_11|sums\(8))) # (\n_11[1]~input_o\ & ((\inst_CE_11|sums\(10)))) ) ) ) # ( !\n_11[0]~input_o\ & ( !\inst_CE_11|sums\(7) 
-- & ( (\n_11[1]~input_o\ & \inst_CE_11|sums\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100110101001111110000111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_sums\(8),
	datab => \inst_CE_11|ALT_INV_sums\(10),
	datac => \ALT_INV_n_11[1]~input_o\,
	datad => \inst_CE_11|ALT_INV_sums\(9),
	datae => \ALT_INV_n_11[0]~input_o\,
	dataf => \inst_CE_11|ALT_INV_sums\(7),
	combout => \inst_CE_11|ShiftRight0~3_combout\);

-- Location: MLABCELL_X65_Y16_N54
\inst_CE_11|ShiftRight0~4\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~4_combout\ = ( \n_11[1]~input_o\ & ( \inst_CE_11|sums\(13) & ( (!\n_11[0]~input_o\) # (\inst_CE_11|sums\(14)) ) ) ) # ( !\n_11[1]~input_o\ & ( \inst_CE_11|sums\(13) & ( (!\n_11[0]~input_o\ & (\inst_CE_11|sums\(11))) # 
-- (\n_11[0]~input_o\ & ((\inst_CE_11|sums\(12)))) ) ) ) # ( \n_11[1]~input_o\ & ( !\inst_CE_11|sums\(13) & ( (\inst_CE_11|sums\(14) & \n_11[0]~input_o\) ) ) ) # ( !\n_11[1]~input_o\ & ( !\inst_CE_11|sums\(13) & ( (!\n_11[0]~input_o\ & 
-- (\inst_CE_11|sums\(11))) # (\n_11[0]~input_o\ & ((\inst_CE_11|sums\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000011001101010101000011111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_sums\(11),
	datab => \inst_CE_11|ALT_INV_sums\(14),
	datac => \inst_CE_11|ALT_INV_sums\(12),
	datad => \ALT_INV_n_11[0]~input_o\,
	datae => \ALT_INV_n_11[1]~input_o\,
	dataf => \inst_CE_11|ALT_INV_sums\(13),
	combout => \inst_CE_11|ShiftRight0~4_combout\);

-- Location: LABCELL_X66_Y16_N9
\inst_CE_11|ShiftRight0~5\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~5_combout\ = ( \inst_CE_11|ShiftRight0~4_combout\ & ( (\n_11[2]~input_o\) # (\inst_CE_11|ShiftRight0~3_combout\) ) ) # ( !\inst_CE_11|ShiftRight0~4_combout\ & ( (\inst_CE_11|ShiftRight0~3_combout\ & !\n_11[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_ShiftRight0~3_combout\,
	datad => \ALT_INV_n_11[2]~input_o\,
	dataf => \inst_CE_11|ALT_INV_ShiftRight0~4_combout\,
	combout => \inst_CE_11|ShiftRight0~5_combout\);

-- Location: MLABCELL_X65_Y18_N36
\inst_CE_13|ShiftRight0~3\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~3_combout\ = ( \inst_CE_13|sums\(8) & ( \n_13[1]~input_o\ & ( (!\n_13[0]~input_o\ & (\inst_CE_13|sums\(9))) # (\n_13[0]~input_o\ & ((\inst_CE_13|sums\(10)))) ) ) ) # ( !\inst_CE_13|sums\(8) & ( \n_13[1]~input_o\ & ( 
-- (!\n_13[0]~input_o\ & (\inst_CE_13|sums\(9))) # (\n_13[0]~input_o\ & ((\inst_CE_13|sums\(10)))) ) ) ) # ( \inst_CE_13|sums\(8) & ( !\n_13[1]~input_o\ & ( (\inst_CE_13|sums\(7)) # (\n_13[0]~input_o\) ) ) ) # ( !\inst_CE_13|sums\(8) & ( !\n_13[1]~input_o\ & 
-- ( (!\n_13[0]~input_o\ & \inst_CE_13|sums\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_sums\(9),
	datab => \inst_CE_13|ALT_INV_sums\(10),
	datac => \ALT_INV_n_13[0]~input_o\,
	datad => \inst_CE_13|ALT_INV_sums\(7),
	datae => \inst_CE_13|ALT_INV_sums\(8),
	dataf => \ALT_INV_n_13[1]~input_o\,
	combout => \inst_CE_13|ShiftRight0~3_combout\);

-- Location: LABCELL_X63_Y18_N15
\inst_CE_13|ShiftRight0~4\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~4_combout\ = ( \n_13[1]~input_o\ & ( \inst_CE_13|sums\(12) & ( (!\n_13[0]~input_o\ & (\inst_CE_13|sums\(13))) # (\n_13[0]~input_o\ & ((\inst_CE_13|sums\(14)))) ) ) ) # ( !\n_13[1]~input_o\ & ( \inst_CE_13|sums\(12) & ( 
-- (\inst_CE_13|sums\(11)) # (\n_13[0]~input_o\) ) ) ) # ( \n_13[1]~input_o\ & ( !\inst_CE_13|sums\(12) & ( (!\n_13[0]~input_o\ & (\inst_CE_13|sums\(13))) # (\n_13[0]~input_o\ & ((\inst_CE_13|sums\(14)))) ) ) ) # ( !\n_13[1]~input_o\ & ( 
-- !\inst_CE_13|sums\(12) & ( (!\n_13[0]~input_o\ & \inst_CE_13|sums\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001000100111011101011111010111110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_13[0]~input_o\,
	datab => \inst_CE_13|ALT_INV_sums\(13),
	datac => \inst_CE_13|ALT_INV_sums\(11),
	datad => \inst_CE_13|ALT_INV_sums\(14),
	datae => \ALT_INV_n_13[1]~input_o\,
	dataf => \inst_CE_13|ALT_INV_sums\(12),
	combout => \inst_CE_13|ShiftRight0~4_combout\);

-- Location: LABCELL_X66_Y16_N0
\inst_CE_13|ShiftRight0~5\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~5_combout\ = (!\n_13[2]~input_o\ & (\inst_CE_13|ShiftRight0~3_combout\)) # (\n_13[2]~input_o\ & ((\inst_CE_13|ShiftRight0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_ShiftRight0~3_combout\,
	datab => \ALT_INV_n_13[2]~input_o\,
	datac => \inst_CE_13|ALT_INV_ShiftRight0~4_combout\,
	combout => \inst_CE_13|ShiftRight0~5_combout\);

-- Location: LABCELL_X63_Y19_N0
\inst_CE_12|ShiftRight0~4\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~4_combout\ = ( \inst_CE_12|sums\(12) & ( \inst_CE_12|sums\(13) & ( (!\n_12[1]~input_o\ & (((\inst_CE_12|sums\(11)) # (\n_12[0]~input_o\)))) # (\n_12[1]~input_o\ & (((!\n_12[0]~input_o\)) # (\inst_CE_12|sums\(14)))) ) ) ) # ( 
-- !\inst_CE_12|sums\(12) & ( \inst_CE_12|sums\(13) & ( (!\n_12[1]~input_o\ & (((!\n_12[0]~input_o\ & \inst_CE_12|sums\(11))))) # (\n_12[1]~input_o\ & (((!\n_12[0]~input_o\)) # (\inst_CE_12|sums\(14)))) ) ) ) # ( \inst_CE_12|sums\(12) & ( 
-- !\inst_CE_12|sums\(13) & ( (!\n_12[1]~input_o\ & (((\inst_CE_12|sums\(11)) # (\n_12[0]~input_o\)))) # (\n_12[1]~input_o\ & (\inst_CE_12|sums\(14) & (\n_12[0]~input_o\))) ) ) ) # ( !\inst_CE_12|sums\(12) & ( !\inst_CE_12|sums\(13) & ( (!\n_12[1]~input_o\ & 
-- (((!\n_12[0]~input_o\ & \inst_CE_12|sums\(11))))) # (\n_12[1]~input_o\ & (\inst_CE_12|sums\(14) & (\n_12[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001000011011100110100110001111100010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_sums\(14),
	datab => \ALT_INV_n_12[1]~input_o\,
	datac => \ALT_INV_n_12[0]~input_o\,
	datad => \inst_CE_12|ALT_INV_sums\(11),
	datae => \inst_CE_12|ALT_INV_sums\(12),
	dataf => \inst_CE_12|ALT_INV_sums\(13),
	combout => \inst_CE_12|ShiftRight0~4_combout\);

-- Location: MLABCELL_X65_Y19_N39
\inst_CE_12|ShiftRight0~3\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~3_combout\ = ( \inst_CE_12|sums\(8) & ( \inst_CE_12|sums\(9) & ( (!\n_12[0]~input_o\ & (((\n_12[1]~input_o\)) # (\inst_CE_12|sums\(7)))) # (\n_12[0]~input_o\ & (((!\n_12[1]~input_o\) # (\inst_CE_12|sums\(10))))) ) ) ) # ( 
-- !\inst_CE_12|sums\(8) & ( \inst_CE_12|sums\(9) & ( (!\n_12[0]~input_o\ & (((\n_12[1]~input_o\)) # (\inst_CE_12|sums\(7)))) # (\n_12[0]~input_o\ & (((\n_12[1]~input_o\ & \inst_CE_12|sums\(10))))) ) ) ) # ( \inst_CE_12|sums\(8) & ( !\inst_CE_12|sums\(9) & ( 
-- (!\n_12[0]~input_o\ & (\inst_CE_12|sums\(7) & (!\n_12[1]~input_o\))) # (\n_12[0]~input_o\ & (((!\n_12[1]~input_o\) # (\inst_CE_12|sums\(10))))) ) ) ) # ( !\inst_CE_12|sums\(8) & ( !\inst_CE_12|sums\(9) & ( (!\n_12[0]~input_o\ & (\inst_CE_12|sums\(7) & 
-- (!\n_12[1]~input_o\))) # (\n_12[0]~input_o\ & (((\n_12[1]~input_o\ & \inst_CE_12|sums\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101011100000111010100101010001011110111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_12[0]~input_o\,
	datab => \inst_CE_12|ALT_INV_sums\(7),
	datac => \ALT_INV_n_12[1]~input_o\,
	datad => \inst_CE_12|ALT_INV_sums\(10),
	datae => \inst_CE_12|ALT_INV_sums\(8),
	dataf => \inst_CE_12|ALT_INV_sums\(9),
	combout => \inst_CE_12|ShiftRight0~3_combout\);

-- Location: MLABCELL_X65_Y19_N57
\inst_CE_12|ShiftRight0~5\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~5_combout\ = ( \inst_CE_12|ShiftRight0~3_combout\ & ( (!\n_12[2]~input_o\) # (\inst_CE_12|ShiftRight0~4_combout\) ) ) # ( !\inst_CE_12|ShiftRight0~3_combout\ & ( (\n_12[2]~input_o\ & \inst_CE_12|ShiftRight0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n_12[2]~input_o\,
	datad => \inst_CE_12|ALT_INV_ShiftRight0~4_combout\,
	dataf => \inst_CE_12|ALT_INV_ShiftRight0~3_combout\,
	combout => \inst_CE_12|ShiftRight0~5_combout\);

-- Location: LABCELL_X63_Y16_N54
\inst_CE_11|ShiftRight0~9\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~9_combout\ = ( \n_11[0]~input_o\ & ( \inst_CE_11|sums\(7) & ( (!\n_11[1]~input_o\) # (\inst_CE_11|sums\(9)) ) ) ) # ( !\n_11[0]~input_o\ & ( \inst_CE_11|sums\(7) & ( (!\n_11[1]~input_o\ & (\inst_CE_11|sums\(6))) # 
-- (\n_11[1]~input_o\ & ((\inst_CE_11|sums\(8)))) ) ) ) # ( \n_11[0]~input_o\ & ( !\inst_CE_11|sums\(7) & ( (\n_11[1]~input_o\ & \inst_CE_11|sums\(9)) ) ) ) # ( !\n_11[0]~input_o\ & ( !\inst_CE_11|sums\(7) & ( (!\n_11[1]~input_o\ & (\inst_CE_11|sums\(6))) # 
-- (\n_11[1]~input_o\ & ((\inst_CE_11|sums\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000100010001000100001010010111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_11[1]~input_o\,
	datab => \inst_CE_11|ALT_INV_sums\(9),
	datac => \inst_CE_11|ALT_INV_sums\(6),
	datad => \inst_CE_11|ALT_INV_sums\(8),
	datae => \ALT_INV_n_11[0]~input_o\,
	dataf => \inst_CE_11|ALT_INV_sums\(7),
	combout => \inst_CE_11|ShiftRight0~9_combout\);

-- Location: MLABCELL_X65_Y16_N30
\inst_CE_11|ShiftRight0~18\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~18_combout\ = ( \n_11[1]~input_o\ & ( \inst_CE_11|sums\(13) & ( (\n_11[0]~input_o\) # (\inst_CE_11|sums\(12)) ) ) ) # ( !\n_11[1]~input_o\ & ( \inst_CE_11|sums\(13) & ( (!\n_11[0]~input_o\ & (\inst_CE_11|sums\(10))) # 
-- (\n_11[0]~input_o\ & ((\inst_CE_11|sums\(11)))) ) ) ) # ( \n_11[1]~input_o\ & ( !\inst_CE_11|sums\(13) & ( (\inst_CE_11|sums\(12) & !\n_11[0]~input_o\) ) ) ) # ( !\n_11[1]~input_o\ & ( !\inst_CE_11|sums\(13) & ( (!\n_11[0]~input_o\ & 
-- (\inst_CE_11|sums\(10))) # (\n_11[0]~input_o\ & ((\inst_CE_11|sums\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111010101010000000000110011000011110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_sums\(12),
	datab => \inst_CE_11|ALT_INV_sums\(10),
	datac => \inst_CE_11|ALT_INV_sums\(11),
	datad => \ALT_INV_n_11[0]~input_o\,
	datae => \ALT_INV_n_11[1]~input_o\,
	dataf => \inst_CE_11|ALT_INV_sums\(13),
	combout => \inst_CE_11|ShiftRight0~18_combout\);

-- Location: MLABCELL_X65_Y16_N6
\inst_CE_11|ShiftRight0~19\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~19_combout\ = ( \inst_CE_11|ShiftRight0~18_combout\ & ( (\n_11[2]~input_o\) # (\inst_CE_11|ShiftRight0~9_combout\) ) ) # ( !\inst_CE_11|ShiftRight0~18_combout\ & ( (\inst_CE_11|ShiftRight0~9_combout\ & !\n_11[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_ShiftRight0~9_combout\,
	datab => \ALT_INV_n_11[2]~input_o\,
	dataf => \inst_CE_11|ALT_INV_ShiftRight0~18_combout\,
	combout => \inst_CE_11|ShiftRight0~19_combout\);

-- Location: LABCELL_X63_Y18_N6
\inst_CE_13|ShiftRight0~18\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~18_combout\ = ( \n_13[1]~input_o\ & ( \inst_CE_13|sums\(13) & ( (\n_13[0]~input_o\) # (\inst_CE_13|sums\(12)) ) ) ) # ( !\n_13[1]~input_o\ & ( \inst_CE_13|sums\(13) & ( (!\n_13[0]~input_o\ & (\inst_CE_13|sums\(10))) # 
-- (\n_13[0]~input_o\ & ((\inst_CE_13|sums\(11)))) ) ) ) # ( \n_13[1]~input_o\ & ( !\inst_CE_13|sums\(13) & ( (\inst_CE_13|sums\(12) & !\n_13[0]~input_o\) ) ) ) # ( !\n_13[1]~input_o\ & ( !\inst_CE_13|sums\(13) & ( (!\n_13[0]~input_o\ & 
-- (\inst_CE_13|sums\(10))) # (\n_13[0]~input_o\ & ((\inst_CE_13|sums\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111010100000101000000110000001111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_sums\(12),
	datab => \inst_CE_13|ALT_INV_sums\(10),
	datac => \ALT_INV_n_13[0]~input_o\,
	datad => \inst_CE_13|ALT_INV_sums\(11),
	datae => \ALT_INV_n_13[1]~input_o\,
	dataf => \inst_CE_13|ALT_INV_sums\(13),
	combout => \inst_CE_13|ShiftRight0~18_combout\);

-- Location: MLABCELL_X65_Y18_N6
\inst_CE_13|ShiftRight0~9\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~9_combout\ = ( \n_13[0]~input_o\ & ( \n_13[1]~input_o\ & ( \inst_CE_13|sums\(9) ) ) ) # ( !\n_13[0]~input_o\ & ( \n_13[1]~input_o\ & ( \inst_CE_13|sums\(8) ) ) ) # ( \n_13[0]~input_o\ & ( !\n_13[1]~input_o\ & ( \inst_CE_13|sums\(7) 
-- ) ) ) # ( !\n_13[0]~input_o\ & ( !\n_13[1]~input_o\ & ( \inst_CE_13|sums\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_sums\(9),
	datab => \inst_CE_13|ALT_INV_sums\(7),
	datac => \inst_CE_13|ALT_INV_sums\(6),
	datad => \inst_CE_13|ALT_INV_sums\(8),
	datae => \ALT_INV_n_13[0]~input_o\,
	dataf => \ALT_INV_n_13[1]~input_o\,
	combout => \inst_CE_13|ShiftRight0~9_combout\);

-- Location: LABCELL_X66_Y16_N18
\inst_CE_13|ShiftRight0~19\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~19_combout\ = ( \n_13[2]~input_o\ & ( \inst_CE_13|ShiftRight0~18_combout\ ) ) # ( !\n_13[2]~input_o\ & ( \inst_CE_13|ShiftRight0~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_CE_13|ALT_INV_ShiftRight0~18_combout\,
	datad => \inst_CE_13|ALT_INV_ShiftRight0~9_combout\,
	dataf => \ALT_INV_n_13[2]~input_o\,
	combout => \inst_CE_13|ShiftRight0~19_combout\);

-- Location: MLABCELL_X65_Y19_N48
\inst_CE_12|ShiftRight0~9\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~9_combout\ = ( \inst_CE_12|sums\(7) & ( \n_12[0]~input_o\ & ( (!\n_12[1]~input_o\) # (\inst_CE_12|sums\(9)) ) ) ) # ( !\inst_CE_12|sums\(7) & ( \n_12[0]~input_o\ & ( (\n_12[1]~input_o\ & \inst_CE_12|sums\(9)) ) ) ) # ( 
-- \inst_CE_12|sums\(7) & ( !\n_12[0]~input_o\ & ( (!\n_12[1]~input_o\ & (\inst_CE_12|sums\(6))) # (\n_12[1]~input_o\ & ((\inst_CE_12|sums\(8)))) ) ) ) # ( !\inst_CE_12|sums\(7) & ( !\n_12[0]~input_o\ & ( (!\n_12[1]~input_o\ & (\inst_CE_12|sums\(6))) # 
-- (\n_12[1]~input_o\ & ((\inst_CE_12|sums\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_sums\(6),
	datab => \ALT_INV_n_12[1]~input_o\,
	datac => \inst_CE_12|ALT_INV_sums\(8),
	datad => \inst_CE_12|ALT_INV_sums\(9),
	datae => \inst_CE_12|ALT_INV_sums\(7),
	dataf => \ALT_INV_n_12[0]~input_o\,
	combout => \inst_CE_12|ShiftRight0~9_combout\);

-- Location: LABCELL_X63_Y19_N48
\inst_CE_12|ShiftRight0~18\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~18_combout\ = ( \inst_CE_12|sums\(10) & ( \inst_CE_12|sums\(13) & ( (!\n_12[0]~input_o\ & ((!\n_12[1]~input_o\) # ((\inst_CE_12|sums\(12))))) # (\n_12[0]~input_o\ & (((\inst_CE_12|sums\(11))) # (\n_12[1]~input_o\))) ) ) ) # ( 
-- !\inst_CE_12|sums\(10) & ( \inst_CE_12|sums\(13) & ( (!\n_12[0]~input_o\ & (\n_12[1]~input_o\ & (\inst_CE_12|sums\(12)))) # (\n_12[0]~input_o\ & (((\inst_CE_12|sums\(11))) # (\n_12[1]~input_o\))) ) ) ) # ( \inst_CE_12|sums\(10) & ( !\inst_CE_12|sums\(13) 
-- & ( (!\n_12[0]~input_o\ & ((!\n_12[1]~input_o\) # ((\inst_CE_12|sums\(12))))) # (\n_12[0]~input_o\ & (!\n_12[1]~input_o\ & ((\inst_CE_12|sums\(11))))) ) ) ) # ( !\inst_CE_12|sums\(10) & ( !\inst_CE_12|sums\(13) & ( (!\n_12[0]~input_o\ & (\n_12[1]~input_o\ 
-- & (\inst_CE_12|sums\(12)))) # (\n_12[0]~input_o\ & (!\n_12[1]~input_o\ & ((\inst_CE_12|sums\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_12[0]~input_o\,
	datab => \ALT_INV_n_12[1]~input_o\,
	datac => \inst_CE_12|ALT_INV_sums\(12),
	datad => \inst_CE_12|ALT_INV_sums\(11),
	datae => \inst_CE_12|ALT_INV_sums\(10),
	dataf => \inst_CE_12|ALT_INV_sums\(13),
	combout => \inst_CE_12|ShiftRight0~18_combout\);

-- Location: LABCELL_X66_Y16_N21
\inst_CE_12|ShiftRight0~19\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~19_combout\ = ( \inst_CE_12|ShiftRight0~18_combout\ & ( (\inst_CE_12|ShiftRight0~9_combout\) # (\n_12[2]~input_o\) ) ) # ( !\inst_CE_12|ShiftRight0~18_combout\ & ( (!\n_12[2]~input_o\ & \inst_CE_12|ShiftRight0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_n_12[2]~input_o\,
	datad => \inst_CE_12|ALT_INV_ShiftRight0~9_combout\,
	dataf => \inst_CE_12|ALT_INV_ShiftRight0~18_combout\,
	combout => \inst_CE_12|ShiftRight0~19_combout\);

-- Location: MLABCELL_X65_Y19_N12
\inst_CE_12|ShiftRight0~6\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~6_combout\ = ( \inst_CE_12|sums\(8) & ( \inst_CE_12|sums\(6) & ( ((!\n_12[1]~input_o\ & (\inst_CE_12|sums\(5))) # (\n_12[1]~input_o\ & ((\inst_CE_12|sums\(7))))) # (\n_12[0]~input_o\) ) ) ) # ( !\inst_CE_12|sums\(8) & ( 
-- \inst_CE_12|sums\(6) & ( (!\n_12[1]~input_o\ & (((\n_12[0]~input_o\)) # (\inst_CE_12|sums\(5)))) # (\n_12[1]~input_o\ & (((!\n_12[0]~input_o\ & \inst_CE_12|sums\(7))))) ) ) ) # ( \inst_CE_12|sums\(8) & ( !\inst_CE_12|sums\(6) & ( (!\n_12[1]~input_o\ & 
-- (\inst_CE_12|sums\(5) & (!\n_12[0]~input_o\))) # (\n_12[1]~input_o\ & (((\inst_CE_12|sums\(7)) # (\n_12[0]~input_o\)))) ) ) ) # ( !\inst_CE_12|sums\(8) & ( !\inst_CE_12|sums\(6) & ( (!\n_12[0]~input_o\ & ((!\n_12[1]~input_o\ & (\inst_CE_12|sums\(5))) # 
-- (\n_12[1]~input_o\ & ((\inst_CE_12|sums\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000110111001101001100011111000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_sums\(5),
	datab => \ALT_INV_n_12[1]~input_o\,
	datac => \ALT_INV_n_12[0]~input_o\,
	datad => \inst_CE_12|ALT_INV_sums\(7),
	datae => \inst_CE_12|ALT_INV_sums\(8),
	dataf => \inst_CE_12|ALT_INV_sums\(6),
	combout => \inst_CE_12|ShiftRight0~6_combout\);

-- Location: LABCELL_X63_Y19_N42
\inst_CE_12|ShiftRight0~16\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~16_combout\ = ( \inst_CE_12|sums\(10) & ( \inst_CE_12|sums\(9) & ( (!\n_12[1]~input_o\) # ((!\n_12[0]~input_o\ & ((\inst_CE_12|sums\(11)))) # (\n_12[0]~input_o\ & (\inst_CE_12|sums\(12)))) ) ) ) # ( !\inst_CE_12|sums\(10) & ( 
-- \inst_CE_12|sums\(9) & ( (!\n_12[0]~input_o\ & ((!\n_12[1]~input_o\) # ((\inst_CE_12|sums\(11))))) # (\n_12[0]~input_o\ & (\n_12[1]~input_o\ & (\inst_CE_12|sums\(12)))) ) ) ) # ( \inst_CE_12|sums\(10) & ( !\inst_CE_12|sums\(9) & ( (!\n_12[0]~input_o\ & 
-- (\n_12[1]~input_o\ & ((\inst_CE_12|sums\(11))))) # (\n_12[0]~input_o\ & ((!\n_12[1]~input_o\) # ((\inst_CE_12|sums\(12))))) ) ) ) # ( !\inst_CE_12|sums\(10) & ( !\inst_CE_12|sums\(9) & ( (\n_12[1]~input_o\ & ((!\n_12[0]~input_o\ & 
-- ((\inst_CE_12|sums\(11)))) # (\n_12[0]~input_o\ & (\inst_CE_12|sums\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_12[0]~input_o\,
	datab => \ALT_INV_n_12[1]~input_o\,
	datac => \inst_CE_12|ALT_INV_sums\(12),
	datad => \inst_CE_12|ALT_INV_sums\(11),
	datae => \inst_CE_12|ALT_INV_sums\(10),
	dataf => \inst_CE_12|ALT_INV_sums\(9),
	combout => \inst_CE_12|ShiftRight0~16_combout\);

-- Location: MLABCELL_X65_Y16_N39
\inst_CE_12|ShiftRight0~17\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~17_combout\ = ( \n_12[2]~input_o\ & ( \inst_CE_12|ShiftRight0~16_combout\ ) ) # ( !\n_12[2]~input_o\ & ( \inst_CE_12|ShiftRight0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_ShiftRight0~6_combout\,
	datac => \inst_CE_12|ALT_INV_ShiftRight0~16_combout\,
	dataf => \ALT_INV_n_12[2]~input_o\,
	combout => \inst_CE_12|ShiftRight0~17_combout\);

-- Location: MLABCELL_X65_Y18_N54
\inst_CE_13|ShiftRight0~6\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~6_combout\ = ( \n_13[0]~input_o\ & ( \n_13[1]~input_o\ & ( \inst_CE_13|sums\(8) ) ) ) # ( !\n_13[0]~input_o\ & ( \n_13[1]~input_o\ & ( \inst_CE_13|sums\(7) ) ) ) # ( \n_13[0]~input_o\ & ( !\n_13[1]~input_o\ & ( \inst_CE_13|sums\(6) 
-- ) ) ) # ( !\n_13[0]~input_o\ & ( !\n_13[1]~input_o\ & ( \inst_CE_13|sums\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_sums\(5),
	datab => \inst_CE_13|ALT_INV_sums\(7),
	datac => \inst_CE_13|ALT_INV_sums\(6),
	datad => \inst_CE_13|ALT_INV_sums\(8),
	datae => \ALT_INV_n_13[0]~input_o\,
	dataf => \ALT_INV_n_13[1]~input_o\,
	combout => \inst_CE_13|ShiftRight0~6_combout\);

-- Location: MLABCELL_X65_Y18_N30
\inst_CE_13|ShiftRight0~16\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~16_combout\ = ( \inst_CE_13|sums\(12) & ( \n_13[1]~input_o\ & ( (\n_13[0]~input_o\) # (\inst_CE_13|sums\(11)) ) ) ) # ( !\inst_CE_13|sums\(12) & ( \n_13[1]~input_o\ & ( (\inst_CE_13|sums\(11) & !\n_13[0]~input_o\) ) ) ) # ( 
-- \inst_CE_13|sums\(12) & ( !\n_13[1]~input_o\ & ( (!\n_13[0]~input_o\ & (\inst_CE_13|sums\(9))) # (\n_13[0]~input_o\ & ((\inst_CE_13|sums\(10)))) ) ) ) # ( !\inst_CE_13|sums\(12) & ( !\n_13[1]~input_o\ & ( (!\n_13[0]~input_o\ & (\inst_CE_13|sums\(9))) # 
-- (\n_13[0]~input_o\ & ((\inst_CE_13|sums\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_sums\(9),
	datab => \inst_CE_13|ALT_INV_sums\(11),
	datac => \ALT_INV_n_13[0]~input_o\,
	datad => \inst_CE_13|ALT_INV_sums\(10),
	datae => \inst_CE_13|ALT_INV_sums\(12),
	dataf => \ALT_INV_n_13[1]~input_o\,
	combout => \inst_CE_13|ShiftRight0~16_combout\);

-- Location: LABCELL_X66_Y16_N54
\inst_CE_13|ShiftRight0~17\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~17_combout\ = ( \inst_CE_13|ShiftRight0~16_combout\ & ( (\n_13[2]~input_o\) # (\inst_CE_13|ShiftRight0~6_combout\) ) ) # ( !\inst_CE_13|ShiftRight0~16_combout\ & ( (\inst_CE_13|ShiftRight0~6_combout\ & !\n_13[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_ShiftRight0~6_combout\,
	datac => \ALT_INV_n_13[2]~input_o\,
	dataf => \inst_CE_13|ALT_INV_ShiftRight0~16_combout\,
	combout => \inst_CE_13|ShiftRight0~17_combout\);

-- Location: MLABCELL_X65_Y16_N12
\inst_CE_11|ShiftRight0~16\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~16_combout\ = ( \n_11[0]~input_o\ & ( \inst_CE_11|sums\(9) & ( (!\n_11[1]~input_o\ & ((\inst_CE_11|sums\(10)))) # (\n_11[1]~input_o\ & (\inst_CE_11|sums\(12))) ) ) ) # ( !\n_11[0]~input_o\ & ( \inst_CE_11|sums\(9) & ( 
-- (!\n_11[1]~input_o\) # (\inst_CE_11|sums\(11)) ) ) ) # ( \n_11[0]~input_o\ & ( !\inst_CE_11|sums\(9) & ( (!\n_11[1]~input_o\ & ((\inst_CE_11|sums\(10)))) # (\n_11[1]~input_o\ & (\inst_CE_11|sums\(12))) ) ) ) # ( !\n_11[0]~input_o\ & ( 
-- !\inst_CE_11|sums\(9) & ( (\inst_CE_11|sums\(11) & \n_11[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_sums\(11),
	datab => \ALT_INV_n_11[1]~input_o\,
	datac => \inst_CE_11|ALT_INV_sums\(12),
	datad => \inst_CE_11|ALT_INV_sums\(10),
	datae => \ALT_INV_n_11[0]~input_o\,
	dataf => \inst_CE_11|ALT_INV_sums\(9),
	combout => \inst_CE_11|ShiftRight0~16_combout\);

-- Location: LABCELL_X63_Y16_N18
\inst_CE_11|ShiftRight0~6\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~6_combout\ = ( \n_11[0]~input_o\ & ( \inst_CE_11|sums\(7) & ( (!\n_11[1]~input_o\ & ((\inst_CE_11|sums\(6)))) # (\n_11[1]~input_o\ & (\inst_CE_11|sums\(8))) ) ) ) # ( !\n_11[0]~input_o\ & ( \inst_CE_11|sums\(7) & ( 
-- (\inst_CE_11|sums\(5)) # (\n_11[1]~input_o\) ) ) ) # ( \n_11[0]~input_o\ & ( !\inst_CE_11|sums\(7) & ( (!\n_11[1]~input_o\ & ((\inst_CE_11|sums\(6)))) # (\n_11[1]~input_o\ & (\inst_CE_11|sums\(8))) ) ) ) # ( !\n_11[0]~input_o\ & ( !\inst_CE_11|sums\(7) & 
-- ( (!\n_11[1]~input_o\ & \inst_CE_11|sums\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000110110001101101010101111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_11[1]~input_o\,
	datab => \inst_CE_11|ALT_INV_sums\(8),
	datac => \inst_CE_11|ALT_INV_sums\(6),
	datad => \inst_CE_11|ALT_INV_sums\(5),
	datae => \ALT_INV_n_11[0]~input_o\,
	dataf => \inst_CE_11|ALT_INV_sums\(7),
	combout => \inst_CE_11|ShiftRight0~6_combout\);

-- Location: LABCELL_X66_Y16_N15
\inst_CE_11|ShiftRight0~17\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~17_combout\ = ( \inst_CE_11|ShiftRight0~6_combout\ & ( (!\n_11[2]~input_o\) # (\inst_CE_11|ShiftRight0~16_combout\) ) ) # ( !\inst_CE_11|ShiftRight0~6_combout\ & ( (\n_11[2]~input_o\ & \inst_CE_11|ShiftRight0~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_11[2]~input_o\,
	datac => \inst_CE_11|ALT_INV_ShiftRight0~16_combout\,
	dataf => \inst_CE_11|ALT_INV_ShiftRight0~6_combout\,
	combout => \inst_CE_11|ShiftRight0~17_combout\);

-- Location: MLABCELL_X65_Y19_N21
\inst_CE_12|ShiftRight0~14\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~14_combout\ = ( \inst_CE_12|sums\(8) & ( \inst_CE_12|sums\(11) & ( (!\n_12[0]~input_o\ & (((!\n_12[1]~input_o\) # (\inst_CE_12|sums\(10))))) # (\n_12[0]~input_o\ & (((\n_12[1]~input_o\)) # (\inst_CE_12|sums\(9)))) ) ) ) # ( 
-- !\inst_CE_12|sums\(8) & ( \inst_CE_12|sums\(11) & ( (!\n_12[0]~input_o\ & (((\n_12[1]~input_o\ & \inst_CE_12|sums\(10))))) # (\n_12[0]~input_o\ & (((\n_12[1]~input_o\)) # (\inst_CE_12|sums\(9)))) ) ) ) # ( \inst_CE_12|sums\(8) & ( !\inst_CE_12|sums\(11) & 
-- ( (!\n_12[0]~input_o\ & (((!\n_12[1]~input_o\) # (\inst_CE_12|sums\(10))))) # (\n_12[0]~input_o\ & (\inst_CE_12|sums\(9) & (!\n_12[1]~input_o\))) ) ) ) # ( !\inst_CE_12|sums\(8) & ( !\inst_CE_12|sums\(11) & ( (!\n_12[0]~input_o\ & (((\n_12[1]~input_o\ & 
-- \inst_CE_12|sums\(10))))) # (\n_12[0]~input_o\ & (\inst_CE_12|sums\(9) & (!\n_12[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_12[0]~input_o\,
	datab => \inst_CE_12|ALT_INV_sums\(9),
	datac => \ALT_INV_n_12[1]~input_o\,
	datad => \inst_CE_12|ALT_INV_sums\(10),
	datae => \inst_CE_12|ALT_INV_sums\(8),
	dataf => \inst_CE_12|ALT_INV_sums\(11),
	combout => \inst_CE_12|ShiftRight0~14_combout\);

-- Location: MLABCELL_X65_Y16_N45
\inst_CE_12|ShiftRight0~15\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~15_combout\ = ( \inst_CE_12|ShiftRight0~14_combout\ & ( \n_12[2]~input_o\ ) ) # ( \inst_CE_12|ShiftRight0~14_combout\ & ( !\n_12[2]~input_o\ & ( \inst_CE_12|ShiftRight0~0_combout\ ) ) ) # ( !\inst_CE_12|ShiftRight0~14_combout\ & ( 
-- !\n_12[2]~input_o\ & ( \inst_CE_12|ShiftRight0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_ShiftRight0~0_combout\,
	datae => \inst_CE_12|ALT_INV_ShiftRight0~14_combout\,
	dataf => \ALT_INV_n_12[2]~input_o\,
	combout => \inst_CE_12|ShiftRight0~15_combout\);

-- Location: LABCELL_X63_Y16_N36
\inst_CE_11|ShiftRight0~14\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~14_combout\ = ( \n_11[0]~input_o\ & ( \inst_CE_11|sums\(8) & ( (!\n_11[1]~input_o\ & ((\inst_CE_11|sums\(9)))) # (\n_11[1]~input_o\ & (\inst_CE_11|sums\(11))) ) ) ) # ( !\n_11[0]~input_o\ & ( \inst_CE_11|sums\(8) & ( 
-- (!\n_11[1]~input_o\) # (\inst_CE_11|sums\(10)) ) ) ) # ( \n_11[0]~input_o\ & ( !\inst_CE_11|sums\(8) & ( (!\n_11[1]~input_o\ & ((\inst_CE_11|sums\(9)))) # (\n_11[1]~input_o\ & (\inst_CE_11|sums\(11))) ) ) ) # ( !\n_11[0]~input_o\ & ( !\inst_CE_11|sums\(8) 
-- & ( (\n_11[1]~input_o\ & \inst_CE_11|sums\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001101010011010111110000111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_sums\(11),
	datab => \inst_CE_11|ALT_INV_sums\(9),
	datac => \ALT_INV_n_11[1]~input_o\,
	datad => \inst_CE_11|ALT_INV_sums\(10),
	datae => \ALT_INV_n_11[0]~input_o\,
	dataf => \inst_CE_11|ALT_INV_sums\(8),
	combout => \inst_CE_11|ShiftRight0~14_combout\);

-- Location: MLABCELL_X65_Y16_N21
\inst_CE_11|ShiftRight0~15\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~15_combout\ = ( \n_11[2]~input_o\ & ( \inst_CE_11|ShiftRight0~14_combout\ ) ) # ( !\n_11[2]~input_o\ & ( \inst_CE_11|ShiftRight0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_ShiftRight0~14_combout\,
	datad => \inst_CE_11|ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_n_11[2]~input_o\,
	combout => \inst_CE_11|ShiftRight0~15_combout\);

-- Location: MLABCELL_X65_Y18_N12
\inst_CE_13|ShiftRight0~14\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~14_combout\ = ( \inst_CE_13|sums\(8) & ( \n_13[1]~input_o\ & ( (!\n_13[0]~input_o\ & ((\inst_CE_13|sums\(10)))) # (\n_13[0]~input_o\ & (\inst_CE_13|sums\(11))) ) ) ) # ( !\inst_CE_13|sums\(8) & ( \n_13[1]~input_o\ & ( 
-- (!\n_13[0]~input_o\ & ((\inst_CE_13|sums\(10)))) # (\n_13[0]~input_o\ & (\inst_CE_13|sums\(11))) ) ) ) # ( \inst_CE_13|sums\(8) & ( !\n_13[1]~input_o\ & ( (!\n_13[0]~input_o\) # (\inst_CE_13|sums\(9)) ) ) ) # ( !\inst_CE_13|sums\(8) & ( !\n_13[1]~input_o\ 
-- & ( (\inst_CE_13|sums\(9) & \n_13[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_sums\(9),
	datab => \inst_CE_13|ALT_INV_sums\(11),
	datac => \ALT_INV_n_13[0]~input_o\,
	datad => \inst_CE_13|ALT_INV_sums\(10),
	datae => \inst_CE_13|ALT_INV_sums\(8),
	dataf => \ALT_INV_n_13[1]~input_o\,
	combout => \inst_CE_13|ShiftRight0~14_combout\);

-- Location: MLABCELL_X65_Y16_N36
\inst_CE_13|ShiftRight0~15\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~15_combout\ = ( \inst_CE_13|ShiftRight0~0_combout\ & ( (!\n_13[2]~input_o\) # (\inst_CE_13|ShiftRight0~14_combout\) ) ) # ( !\inst_CE_13|ShiftRight0~0_combout\ & ( (\inst_CE_13|ShiftRight0~14_combout\ & \n_13[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_CE_13|ALT_INV_ShiftRight0~14_combout\,
	datac => \ALT_INV_n_13[2]~input_o\,
	dataf => \inst_CE_13|ALT_INV_ShiftRight0~0_combout\,
	combout => \inst_CE_13|ShiftRight0~15_combout\);

-- Location: LABCELL_X63_Y16_N42
\inst_CE_11|ShiftRight0~12\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~12_combout\ = ( \inst_CE_11|sums\(4) & ( \inst_CE_11|sums\(3) & ( (!\n_11[1]~input_o\) # ((!\n_11[0]~input_o\ & (\inst_CE_11|sums\(5))) # (\n_11[0]~input_o\ & ((\inst_CE_11|sums\(6))))) ) ) ) # ( !\inst_CE_11|sums\(4) & ( 
-- \inst_CE_11|sums\(3) & ( (!\n_11[1]~input_o\ & (((!\n_11[0]~input_o\)))) # (\n_11[1]~input_o\ & ((!\n_11[0]~input_o\ & (\inst_CE_11|sums\(5))) # (\n_11[0]~input_o\ & ((\inst_CE_11|sums\(6)))))) ) ) ) # ( \inst_CE_11|sums\(4) & ( !\inst_CE_11|sums\(3) & ( 
-- (!\n_11[1]~input_o\ & (((\n_11[0]~input_o\)))) # (\n_11[1]~input_o\ & ((!\n_11[0]~input_o\ & (\inst_CE_11|sums\(5))) # (\n_11[0]~input_o\ & ((\inst_CE_11|sums\(6)))))) ) ) ) # ( !\inst_CE_11|sums\(4) & ( !\inst_CE_11|sums\(3) & ( (\n_11[1]~input_o\ & 
-- ((!\n_11[0]~input_o\ & (\inst_CE_11|sums\(5))) # (\n_11[0]~input_o\ & ((\inst_CE_11|sums\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_11[1]~input_o\,
	datab => \inst_CE_11|ALT_INV_sums\(5),
	datac => \inst_CE_11|ALT_INV_sums\(6),
	datad => \ALT_INV_n_11[0]~input_o\,
	datae => \inst_CE_11|ALT_INV_sums\(4),
	dataf => \inst_CE_11|ALT_INV_sums\(3),
	combout => \inst_CE_11|ShiftRight0~12_combout\);

-- Location: LABCELL_X66_Y16_N12
\inst_CE_11|ShiftRight0~13\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~13_combout\ = ( \inst_CE_11|ShiftRight0~12_combout\ & ( (!\n_11[2]~input_o\) # (\inst_CE_11|ShiftRight0~3_combout\) ) ) # ( !\inst_CE_11|ShiftRight0~12_combout\ & ( (\n_11[2]~input_o\ & \inst_CE_11|ShiftRight0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_11[2]~input_o\,
	datac => \inst_CE_11|ALT_INV_ShiftRight0~3_combout\,
	dataf => \inst_CE_11|ALT_INV_ShiftRight0~12_combout\,
	combout => \inst_CE_11|ShiftRight0~13_combout\);

-- Location: MLABCELL_X65_Y18_N18
\inst_CE_13|ShiftRight0~12\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~12_combout\ = ( \inst_CE_13|sums\(6) & ( \inst_CE_13|sums\(3) & ( (!\n_13[0]~input_o\ & ((!\n_13[1]~input_o\) # ((\inst_CE_13|sums\(5))))) # (\n_13[0]~input_o\ & (((\inst_CE_13|sums\(4))) # (\n_13[1]~input_o\))) ) ) ) # ( 
-- !\inst_CE_13|sums\(6) & ( \inst_CE_13|sums\(3) & ( (!\n_13[0]~input_o\ & ((!\n_13[1]~input_o\) # ((\inst_CE_13|sums\(5))))) # (\n_13[0]~input_o\ & (!\n_13[1]~input_o\ & ((\inst_CE_13|sums\(4))))) ) ) ) # ( \inst_CE_13|sums\(6) & ( !\inst_CE_13|sums\(3) & 
-- ( (!\n_13[0]~input_o\ & (\n_13[1]~input_o\ & (\inst_CE_13|sums\(5)))) # (\n_13[0]~input_o\ & (((\inst_CE_13|sums\(4))) # (\n_13[1]~input_o\))) ) ) ) # ( !\inst_CE_13|sums\(6) & ( !\inst_CE_13|sums\(3) & ( (!\n_13[0]~input_o\ & (\n_13[1]~input_o\ & 
-- (\inst_CE_13|sums\(5)))) # (\n_13[0]~input_o\ & (!\n_13[1]~input_o\ & ((\inst_CE_13|sums\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_13[0]~input_o\,
	datab => \ALT_INV_n_13[1]~input_o\,
	datac => \inst_CE_13|ALT_INV_sums\(5),
	datad => \inst_CE_13|ALT_INV_sums\(4),
	datae => \inst_CE_13|ALT_INV_sums\(6),
	dataf => \inst_CE_13|ALT_INV_sums\(3),
	combout => \inst_CE_13|ShiftRight0~12_combout\);

-- Location: LABCELL_X66_Y16_N3
\inst_CE_13|ShiftRight0~13\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~13_combout\ = (!\n_13[2]~input_o\ & ((\inst_CE_13|ShiftRight0~12_combout\))) # (\n_13[2]~input_o\ & (\inst_CE_13|ShiftRight0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_ShiftRight0~3_combout\,
	datab => \ALT_INV_n_13[2]~input_o\,
	datac => \inst_CE_13|ALT_INV_ShiftRight0~12_combout\,
	combout => \inst_CE_13|ShiftRight0~13_combout\);

-- Location: MLABCELL_X65_Y19_N24
\inst_CE_12|ShiftRight0~12\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~12_combout\ = ( \n_12[0]~input_o\ & ( \inst_CE_12|sums\(5) & ( (!\n_12[1]~input_o\ & (\inst_CE_12|sums\(4))) # (\n_12[1]~input_o\ & ((\inst_CE_12|sums\(6)))) ) ) ) # ( !\n_12[0]~input_o\ & ( \inst_CE_12|sums\(5) & ( 
-- (\n_12[1]~input_o\) # (\inst_CE_12|sums\(3)) ) ) ) # ( \n_12[0]~input_o\ & ( !\inst_CE_12|sums\(5) & ( (!\n_12[1]~input_o\ & (\inst_CE_12|sums\(4))) # (\n_12[1]~input_o\ & ((\inst_CE_12|sums\(6)))) ) ) ) # ( !\n_12[0]~input_o\ & ( !\inst_CE_12|sums\(5) & 
-- ( (\inst_CE_12|sums\(3) & !\n_12[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000010101010000111100110011111111110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_sums\(4),
	datab => \inst_CE_12|ALT_INV_sums\(3),
	datac => \inst_CE_12|ALT_INV_sums\(6),
	datad => \ALT_INV_n_12[1]~input_o\,
	datae => \ALT_INV_n_12[0]~input_o\,
	dataf => \inst_CE_12|ALT_INV_sums\(5),
	combout => \inst_CE_12|ShiftRight0~12_combout\);

-- Location: MLABCELL_X65_Y19_N54
\inst_CE_12|ShiftRight0~13\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~13_combout\ = ( \inst_CE_12|ShiftRight0~3_combout\ & ( (\inst_CE_12|ShiftRight0~12_combout\) # (\n_12[2]~input_o\) ) ) # ( !\inst_CE_12|ShiftRight0~3_combout\ & ( (!\n_12[2]~input_o\ & \inst_CE_12|ShiftRight0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n_12[2]~input_o\,
	datac => \inst_CE_12|ALT_INV_ShiftRight0~12_combout\,
	dataf => \inst_CE_12|ALT_INV_ShiftRight0~3_combout\,
	combout => \inst_CE_12|ShiftRight0~13_combout\);

-- Location: MLABCELL_X65_Y19_N6
\inst_CE_12|ShiftRight0~10\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~10_combout\ = ( \n_12[1]~input_o\ & ( \n_12[0]~input_o\ & ( \inst_CE_12|sums\(5) ) ) ) # ( !\n_12[1]~input_o\ & ( \n_12[0]~input_o\ & ( \inst_CE_12|sums\(3) ) ) ) # ( \n_12[1]~input_o\ & ( !\n_12[0]~input_o\ & ( 
-- \inst_CE_12|sums\(4) ) ) ) # ( !\n_12[1]~input_o\ & ( !\n_12[0]~input_o\ & ( \inst_CE_12|sums\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_sums\(5),
	datab => \inst_CE_12|ALT_INV_sums\(3),
	datac => \inst_CE_12|ALT_INV_sums\(2),
	datad => \inst_CE_12|ALT_INV_sums\(4),
	datae => \ALT_INV_n_12[1]~input_o\,
	dataf => \ALT_INV_n_12[0]~input_o\,
	combout => \inst_CE_12|ShiftRight0~10_combout\);

-- Location: LABCELL_X66_Y16_N57
\inst_CE_12|ShiftRight0~11\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~11_combout\ = (!\n_12[2]~input_o\ & ((\inst_CE_12|ShiftRight0~10_combout\))) # (\n_12[2]~input_o\ & (\inst_CE_12|ShiftRight0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_CE_12|ALT_INV_ShiftRight0~9_combout\,
	datac => \ALT_INV_n_12[2]~input_o\,
	datad => \inst_CE_12|ALT_INV_ShiftRight0~10_combout\,
	combout => \inst_CE_12|ShiftRight0~11_combout\);

-- Location: LABCELL_X63_Y16_N12
\inst_CE_11|ShiftRight0~10\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~10_combout\ = ( \inst_CE_11|sums\(4) & ( \inst_CE_11|sums\(2) & ( (!\n_11[0]~input_o\) # ((!\n_11[1]~input_o\ & ((\inst_CE_11|sums\(3)))) # (\n_11[1]~input_o\ & (\inst_CE_11|sums\(5)))) ) ) ) # ( !\inst_CE_11|sums\(4) & ( 
-- \inst_CE_11|sums\(2) & ( (!\n_11[1]~input_o\ & (((!\n_11[0]~input_o\) # (\inst_CE_11|sums\(3))))) # (\n_11[1]~input_o\ & (\inst_CE_11|sums\(5) & ((\n_11[0]~input_o\)))) ) ) ) # ( \inst_CE_11|sums\(4) & ( !\inst_CE_11|sums\(2) & ( (!\n_11[1]~input_o\ & 
-- (((\inst_CE_11|sums\(3) & \n_11[0]~input_o\)))) # (\n_11[1]~input_o\ & (((!\n_11[0]~input_o\)) # (\inst_CE_11|sums\(5)))) ) ) ) # ( !\inst_CE_11|sums\(4) & ( !\inst_CE_11|sums\(2) & ( (\n_11[0]~input_o\ & ((!\n_11[1]~input_o\ & ((\inst_CE_11|sums\(3)))) # 
-- (\n_11[1]~input_o\ & (\inst_CE_11|sums\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101110101010000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_11[1]~input_o\,
	datab => \inst_CE_11|ALT_INV_sums\(5),
	datac => \inst_CE_11|ALT_INV_sums\(3),
	datad => \ALT_INV_n_11[0]~input_o\,
	datae => \inst_CE_11|ALT_INV_sums\(4),
	dataf => \inst_CE_11|ALT_INV_sums\(2),
	combout => \inst_CE_11|ShiftRight0~10_combout\);

-- Location: MLABCELL_X65_Y16_N9
\inst_CE_11|ShiftRight0~11\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~11_combout\ = ( \inst_CE_11|ShiftRight0~10_combout\ & ( (!\n_11[2]~input_o\) # (\inst_CE_11|ShiftRight0~9_combout\) ) ) # ( !\inst_CE_11|ShiftRight0~10_combout\ & ( (\inst_CE_11|ShiftRight0~9_combout\ & \n_11[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_ShiftRight0~9_combout\,
	datab => \ALT_INV_n_11[2]~input_o\,
	dataf => \inst_CE_11|ALT_INV_ShiftRight0~10_combout\,
	combout => \inst_CE_11|ShiftRight0~11_combout\);

-- Location: MLABCELL_X65_Y18_N0
\inst_CE_13|ShiftRight0~10\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~10_combout\ = ( \n_13[0]~input_o\ & ( \n_13[1]~input_o\ & ( \inst_CE_13|sums\(5) ) ) ) # ( !\n_13[0]~input_o\ & ( \n_13[1]~input_o\ & ( \inst_CE_13|sums\(4) ) ) ) # ( \n_13[0]~input_o\ & ( !\n_13[1]~input_o\ & ( 
-- \inst_CE_13|sums\(3) ) ) ) # ( !\n_13[0]~input_o\ & ( !\n_13[1]~input_o\ & ( \inst_CE_13|sums\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_sums\(5),
	datab => \inst_CE_13|ALT_INV_sums\(4),
	datac => \inst_CE_13|ALT_INV_sums\(3),
	datad => \inst_CE_13|ALT_INV_sums\(2),
	datae => \ALT_INV_n_13[0]~input_o\,
	dataf => \ALT_INV_n_13[1]~input_o\,
	combout => \inst_CE_13|ShiftRight0~10_combout\);

-- Location: LABCELL_X66_Y16_N6
\inst_CE_13|ShiftRight0~11\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~11_combout\ = ( \n_13[2]~input_o\ & ( \inst_CE_13|ShiftRight0~9_combout\ ) ) # ( !\n_13[2]~input_o\ & ( \inst_CE_13|ShiftRight0~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_CE_13|ALT_INV_ShiftRight0~10_combout\,
	datad => \inst_CE_13|ALT_INV_ShiftRight0~9_combout\,
	dataf => \ALT_INV_n_13[2]~input_o\,
	combout => \inst_CE_13|ShiftRight0~11_combout\);

-- Location: LABCELL_X63_Y16_N0
\inst_CE_11|ShiftRight0~7\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~7_combout\ = ( \inst_CE_11|sums\(4) & ( \inst_CE_11|sums\(3) & ( ((!\n_11[0]~input_o\ & (\inst_CE_11|sums\(1))) # (\n_11[0]~input_o\ & ((\inst_CE_11|sums\(2))))) # (\n_11[1]~input_o\) ) ) ) # ( !\inst_CE_11|sums\(4) & ( 
-- \inst_CE_11|sums\(3) & ( (!\n_11[0]~input_o\ & (((\n_11[1]~input_o\)) # (\inst_CE_11|sums\(1)))) # (\n_11[0]~input_o\ & (((\inst_CE_11|sums\(2) & !\n_11[1]~input_o\)))) ) ) ) # ( \inst_CE_11|sums\(4) & ( !\inst_CE_11|sums\(3) & ( (!\n_11[0]~input_o\ & 
-- (\inst_CE_11|sums\(1) & ((!\n_11[1]~input_o\)))) # (\n_11[0]~input_o\ & (((\n_11[1]~input_o\) # (\inst_CE_11|sums\(2))))) ) ) ) # ( !\inst_CE_11|sums\(4) & ( !\inst_CE_11|sums\(3) & ( (!\n_11[1]~input_o\ & ((!\n_11[0]~input_o\ & (\inst_CE_11|sums\(1))) # 
-- (\n_11[0]~input_o\ & ((\inst_CE_11|sums\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_sums\(1),
	datab => \ALT_INV_n_11[0]~input_o\,
	datac => \inst_CE_11|ALT_INV_sums\(2),
	datad => \ALT_INV_n_11[1]~input_o\,
	datae => \inst_CE_11|ALT_INV_sums\(4),
	dataf => \inst_CE_11|ALT_INV_sums\(3),
	combout => \inst_CE_11|ShiftRight0~7_combout\);

-- Location: LABCELL_X66_Y16_N24
\inst_CE_11|ShiftRight0~8\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~8_combout\ = ( \inst_CE_11|ShiftRight0~6_combout\ & ( (\inst_CE_11|ShiftRight0~7_combout\) # (\n_11[2]~input_o\) ) ) # ( !\inst_CE_11|ShiftRight0~6_combout\ & ( (!\n_11[2]~input_o\ & \inst_CE_11|ShiftRight0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_n_11[2]~input_o\,
	datad => \inst_CE_11|ALT_INV_ShiftRight0~7_combout\,
	dataf => \inst_CE_11|ALT_INV_ShiftRight0~6_combout\,
	combout => \inst_CE_11|ShiftRight0~8_combout\);

-- Location: MLABCELL_X65_Y19_N30
\inst_CE_12|ShiftRight0~7\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~7_combout\ = ( \inst_CE_12|sums\(4) & ( \inst_CE_12|sums\(1) & ( (!\n_12[0]~input_o\ & (((!\n_12[1]~input_o\) # (\inst_CE_12|sums\(3))))) # (\n_12[0]~input_o\ & (((\n_12[1]~input_o\)) # (\inst_CE_12|sums\(2)))) ) ) ) # ( 
-- !\inst_CE_12|sums\(4) & ( \inst_CE_12|sums\(1) & ( (!\n_12[0]~input_o\ & (((!\n_12[1]~input_o\) # (\inst_CE_12|sums\(3))))) # (\n_12[0]~input_o\ & (\inst_CE_12|sums\(2) & ((!\n_12[1]~input_o\)))) ) ) ) # ( \inst_CE_12|sums\(4) & ( !\inst_CE_12|sums\(1) & 
-- ( (!\n_12[0]~input_o\ & (((\inst_CE_12|sums\(3) & \n_12[1]~input_o\)))) # (\n_12[0]~input_o\ & (((\n_12[1]~input_o\)) # (\inst_CE_12|sums\(2)))) ) ) ) # ( !\inst_CE_12|sums\(4) & ( !\inst_CE_12|sums\(1) & ( (!\n_12[0]~input_o\ & (((\inst_CE_12|sums\(3) & 
-- \n_12[1]~input_o\)))) # (\n_12[0]~input_o\ & (\inst_CE_12|sums\(2) & ((!\n_12[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111111110101001100001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_sums\(2),
	datab => \inst_CE_12|ALT_INV_sums\(3),
	datac => \ALT_INV_n_12[0]~input_o\,
	datad => \ALT_INV_n_12[1]~input_o\,
	datae => \inst_CE_12|ALT_INV_sums\(4),
	dataf => \inst_CE_12|ALT_INV_sums\(1),
	combout => \inst_CE_12|ShiftRight0~7_combout\);

-- Location: MLABCELL_X65_Y16_N27
\inst_CE_12|ShiftRight0~8\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~8_combout\ = ( \inst_CE_12|ShiftRight0~6_combout\ & ( (\n_12[2]~input_o\) # (\inst_CE_12|ShiftRight0~7_combout\) ) ) # ( !\inst_CE_12|ShiftRight0~6_combout\ & ( (\inst_CE_12|ShiftRight0~7_combout\ & !\n_12[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_ShiftRight0~7_combout\,
	datac => \ALT_INV_n_12[2]~input_o\,
	dataf => \inst_CE_12|ALT_INV_ShiftRight0~6_combout\,
	combout => \inst_CE_12|ShiftRight0~8_combout\);

-- Location: MLABCELL_X65_Y18_N24
\inst_CE_13|ShiftRight0~7\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~7_combout\ = ( \inst_CE_13|sums\(1) & ( \n_13[1]~input_o\ & ( (!\n_13[0]~input_o\ & (\inst_CE_13|sums\(3))) # (\n_13[0]~input_o\ & ((\inst_CE_13|sums\(4)))) ) ) ) # ( !\inst_CE_13|sums\(1) & ( \n_13[1]~input_o\ & ( 
-- (!\n_13[0]~input_o\ & (\inst_CE_13|sums\(3))) # (\n_13[0]~input_o\ & ((\inst_CE_13|sums\(4)))) ) ) ) # ( \inst_CE_13|sums\(1) & ( !\n_13[1]~input_o\ & ( (!\n_13[0]~input_o\) # (\inst_CE_13|sums\(2)) ) ) ) # ( !\inst_CE_13|sums\(1) & ( !\n_13[1]~input_o\ & 
-- ( (\n_13[0]~input_o\ & \inst_CE_13|sums\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_sums\(3),
	datab => \inst_CE_13|ALT_INV_sums\(4),
	datac => \ALT_INV_n_13[0]~input_o\,
	datad => \inst_CE_13|ALT_INV_sums\(2),
	datae => \inst_CE_13|ALT_INV_sums\(1),
	dataf => \ALT_INV_n_13[1]~input_o\,
	combout => \inst_CE_13|ShiftRight0~7_combout\);

-- Location: LABCELL_X66_Y16_N27
\inst_CE_13|ShiftRight0~8\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~8_combout\ = ( \inst_CE_13|ShiftRight0~6_combout\ & ( (\inst_CE_13|ShiftRight0~7_combout\) # (\n_13[2]~input_o\) ) ) # ( !\inst_CE_13|ShiftRight0~6_combout\ & ( (!\n_13[2]~input_o\ & \inst_CE_13|ShiftRight0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_n_13[2]~input_o\,
	datad => \inst_CE_13|ALT_INV_ShiftRight0~7_combout\,
	dataf => \inst_CE_13|ALT_INV_ShiftRight0~6_combout\,
	combout => \inst_CE_13|ShiftRight0~8_combout\);

-- Location: LABCELL_X66_Y16_N33
\inst_SE|_~9\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_SE|_~9_sumout\ = SUM(( !\inst_CE_11|ShiftRight0~8_combout\ $ (!\inst_CE_12|ShiftRight0~8_combout\ $ (\inst_CE_13|ShiftRight0~8_combout\)) ) + ( \inst_SE|_~3\ ) + ( \inst_SE|_~2\ ))
-- \inst_SE|_~10\ = CARRY(( !\inst_CE_11|ShiftRight0~8_combout\ $ (!\inst_CE_12|ShiftRight0~8_combout\ $ (\inst_CE_13|ShiftRight0~8_combout\)) ) + ( \inst_SE|_~3\ ) + ( \inst_SE|_~2\ ))
-- \inst_SE|_~11\ = SHARE((!\inst_CE_11|ShiftRight0~8_combout\ & (\inst_CE_12|ShiftRight0~8_combout\ & \inst_CE_13|ShiftRight0~8_combout\)) # (\inst_CE_11|ShiftRight0~8_combout\ & ((\inst_CE_13|ShiftRight0~8_combout\) # 
-- (\inst_CE_12|ShiftRight0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_ShiftRight0~8_combout\,
	datac => \inst_CE_12|ALT_INV_ShiftRight0~8_combout\,
	datad => \inst_CE_13|ALT_INV_ShiftRight0~8_combout\,
	cin => \inst_SE|_~2\,
	sharein => \inst_SE|_~3\,
	sumout => \inst_SE|_~9_sumout\,
	cout => \inst_SE|_~10\,
	shareout => \inst_SE|_~11\);

-- Location: LABCELL_X66_Y16_N36
\inst_SE|_~13\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_SE|_~13_sumout\ = SUM(( !\inst_CE_12|ShiftRight0~11_combout\ $ (!\inst_CE_11|ShiftRight0~11_combout\ $ (\inst_CE_13|ShiftRight0~11_combout\)) ) + ( \inst_SE|_~11\ ) + ( \inst_SE|_~10\ ))
-- \inst_SE|_~14\ = CARRY(( !\inst_CE_12|ShiftRight0~11_combout\ $ (!\inst_CE_11|ShiftRight0~11_combout\ $ (\inst_CE_13|ShiftRight0~11_combout\)) ) + ( \inst_SE|_~11\ ) + ( \inst_SE|_~10\ ))
-- \inst_SE|_~15\ = SHARE((!\inst_CE_12|ShiftRight0~11_combout\ & (\inst_CE_11|ShiftRight0~11_combout\ & \inst_CE_13|ShiftRight0~11_combout\)) # (\inst_CE_12|ShiftRight0~11_combout\ & ((\inst_CE_13|ShiftRight0~11_combout\) # 
-- (\inst_CE_11|ShiftRight0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst_CE_12|ALT_INV_ShiftRight0~11_combout\,
	datac => \inst_CE_11|ALT_INV_ShiftRight0~11_combout\,
	datad => \inst_CE_13|ALT_INV_ShiftRight0~11_combout\,
	cin => \inst_SE|_~10\,
	sharein => \inst_SE|_~11\,
	sumout => \inst_SE|_~13_sumout\,
	cout => \inst_SE|_~14\,
	shareout => \inst_SE|_~15\);

-- Location: LABCELL_X66_Y16_N39
\inst_SE|_~17\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_SE|_~17_sumout\ = SUM(( !\inst_CE_11|ShiftRight0~13_combout\ $ (!\inst_CE_13|ShiftRight0~13_combout\ $ (\inst_CE_12|ShiftRight0~13_combout\)) ) + ( \inst_SE|_~15\ ) + ( \inst_SE|_~14\ ))
-- \inst_SE|_~18\ = CARRY(( !\inst_CE_11|ShiftRight0~13_combout\ $ (!\inst_CE_13|ShiftRight0~13_combout\ $ (\inst_CE_12|ShiftRight0~13_combout\)) ) + ( \inst_SE|_~15\ ) + ( \inst_SE|_~14\ ))
-- \inst_SE|_~19\ = SHARE((!\inst_CE_11|ShiftRight0~13_combout\ & (\inst_CE_13|ShiftRight0~13_combout\ & \inst_CE_12|ShiftRight0~13_combout\)) # (\inst_CE_11|ShiftRight0~13_combout\ & ((\inst_CE_12|ShiftRight0~13_combout\) # 
-- (\inst_CE_13|ShiftRight0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_ShiftRight0~13_combout\,
	datac => \inst_CE_13|ALT_INV_ShiftRight0~13_combout\,
	datad => \inst_CE_12|ALT_INV_ShiftRight0~13_combout\,
	cin => \inst_SE|_~14\,
	sharein => \inst_SE|_~15\,
	sumout => \inst_SE|_~17_sumout\,
	cout => \inst_SE|_~18\,
	shareout => \inst_SE|_~19\);

-- Location: LABCELL_X66_Y16_N42
\inst_SE|_~21\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_SE|_~21_sumout\ = SUM(( !\inst_CE_12|ShiftRight0~15_combout\ $ (!\inst_CE_11|ShiftRight0~15_combout\ $ (\inst_CE_13|ShiftRight0~15_combout\)) ) + ( \inst_SE|_~19\ ) + ( \inst_SE|_~18\ ))
-- \inst_SE|_~22\ = CARRY(( !\inst_CE_12|ShiftRight0~15_combout\ $ (!\inst_CE_11|ShiftRight0~15_combout\ $ (\inst_CE_13|ShiftRight0~15_combout\)) ) + ( \inst_SE|_~19\ ) + ( \inst_SE|_~18\ ))
-- \inst_SE|_~23\ = SHARE((!\inst_CE_12|ShiftRight0~15_combout\ & (\inst_CE_11|ShiftRight0~15_combout\ & \inst_CE_13|ShiftRight0~15_combout\)) # (\inst_CE_12|ShiftRight0~15_combout\ & ((\inst_CE_13|ShiftRight0~15_combout\) # 
-- (\inst_CE_11|ShiftRight0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst_CE_12|ALT_INV_ShiftRight0~15_combout\,
	datac => \inst_CE_11|ALT_INV_ShiftRight0~15_combout\,
	datad => \inst_CE_13|ALT_INV_ShiftRight0~15_combout\,
	cin => \inst_SE|_~18\,
	sharein => \inst_SE|_~19\,
	sumout => \inst_SE|_~21_sumout\,
	cout => \inst_SE|_~22\,
	shareout => \inst_SE|_~23\);

-- Location: LABCELL_X66_Y16_N45
\inst_SE|_~25\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_SE|_~25_sumout\ = SUM(( !\inst_CE_12|ShiftRight0~17_combout\ $ (!\inst_CE_13|ShiftRight0~17_combout\ $ (\inst_CE_11|ShiftRight0~17_combout\)) ) + ( \inst_SE|_~23\ ) + ( \inst_SE|_~22\ ))
-- \inst_SE|_~26\ = CARRY(( !\inst_CE_12|ShiftRight0~17_combout\ $ (!\inst_CE_13|ShiftRight0~17_combout\ $ (\inst_CE_11|ShiftRight0~17_combout\)) ) + ( \inst_SE|_~23\ ) + ( \inst_SE|_~22\ ))
-- \inst_SE|_~27\ = SHARE((!\inst_CE_12|ShiftRight0~17_combout\ & (\inst_CE_13|ShiftRight0~17_combout\ & \inst_CE_11|ShiftRight0~17_combout\)) # (\inst_CE_12|ShiftRight0~17_combout\ & ((\inst_CE_11|ShiftRight0~17_combout\) # 
-- (\inst_CE_13|ShiftRight0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_ShiftRight0~17_combout\,
	datac => \inst_CE_13|ALT_INV_ShiftRight0~17_combout\,
	datad => \inst_CE_11|ALT_INV_ShiftRight0~17_combout\,
	cin => \inst_SE|_~22\,
	sharein => \inst_SE|_~23\,
	sumout => \inst_SE|_~25_sumout\,
	cout => \inst_SE|_~26\,
	shareout => \inst_SE|_~27\);

-- Location: LABCELL_X66_Y16_N48
\inst_SE|_~29\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_SE|_~29_sumout\ = SUM(( !\inst_CE_11|ShiftRight0~19_combout\ $ (!\inst_CE_13|ShiftRight0~19_combout\ $ (\inst_CE_12|ShiftRight0~19_combout\)) ) + ( \inst_SE|_~27\ ) + ( \inst_SE|_~26\ ))
-- \inst_SE|_~30\ = CARRY(( !\inst_CE_11|ShiftRight0~19_combout\ $ (!\inst_CE_13|ShiftRight0~19_combout\ $ (\inst_CE_12|ShiftRight0~19_combout\)) ) + ( \inst_SE|_~27\ ) + ( \inst_SE|_~26\ ))
-- \inst_SE|_~31\ = SHARE((!\inst_CE_11|ShiftRight0~19_combout\ & (\inst_CE_13|ShiftRight0~19_combout\ & \inst_CE_12|ShiftRight0~19_combout\)) # (\inst_CE_11|ShiftRight0~19_combout\ & ((\inst_CE_12|ShiftRight0~19_combout\) # 
-- (\inst_CE_13|ShiftRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_ShiftRight0~19_combout\,
	datac => \inst_CE_13|ALT_INV_ShiftRight0~19_combout\,
	datad => \inst_CE_12|ALT_INV_ShiftRight0~19_combout\,
	cin => \inst_SE|_~26\,
	sharein => \inst_SE|_~27\,
	sumout => \inst_SE|_~29_sumout\,
	cout => \inst_SE|_~30\,
	shareout => \inst_SE|_~31\);

-- Location: LABCELL_X66_Y16_N51
\inst_SE|_~5\ : stratixv_lcell_comb
-- Equation(s):
-- \inst_SE|_~5_sumout\ = SUM(( !\inst_CE_11|ShiftRight0~5_combout\ $ (!\inst_CE_13|ShiftRight0~5_combout\ $ (\inst_CE_12|ShiftRight0~5_combout\)) ) + ( \inst_SE|_~31\ ) + ( \inst_SE|_~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst_CE_11|ALT_INV_ShiftRight0~5_combout\,
	datac => \inst_CE_13|ALT_INV_ShiftRight0~5_combout\,
	datad => \inst_CE_12|ALT_INV_ShiftRight0~5_combout\,
	cin => \inst_SE|_~30\,
	sharein => \inst_SE|_~31\,
	sumout => \inst_SE|_~5_sumout\);

-- Location: FF_X66_Y16_N31
\inst_SE|sum_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_SE|_~1_sumout\,
	sclr => \inst_SE|_~5_sumout\,
	ena => \inst_SE|sum_s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SE|sum_s\(0));

-- Location: FF_X66_Y16_N34
\inst_SE|sum_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_SE|_~9_sumout\,
	sclr => \inst_SE|_~5_sumout\,
	ena => \inst_SE|sum_s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SE|sum_s\(1));

-- Location: FF_X66_Y16_N37
\inst_SE|sum_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_SE|_~13_sumout\,
	sclr => \inst_SE|_~5_sumout\,
	ena => \inst_SE|sum_s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SE|sum_s\(2));

-- Location: FF_X66_Y16_N40
\inst_SE|sum_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_SE|_~17_sumout\,
	sclr => \inst_SE|_~5_sumout\,
	ena => \inst_SE|sum_s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SE|sum_s\(3));

-- Location: FF_X66_Y16_N43
\inst_SE|sum_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_SE|_~21_sumout\,
	sclr => \inst_SE|_~5_sumout\,
	ena => \inst_SE|sum_s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SE|sum_s\(4));

-- Location: FF_X66_Y16_N46
\inst_SE|sum_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_SE|_~25_sumout\,
	sclr => \inst_SE|_~5_sumout\,
	ena => \inst_SE|sum_s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SE|sum_s\(5));

-- Location: FF_X66_Y16_N49
\inst_SE|sum_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_SE|_~29_sumout\,
	sclr => \inst_SE|_~5_sumout\,
	ena => \inst_SE|sum_s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SE|sum_s\(6));

-- Location: IOIBUF_X95_Y129_N101
\n_11[3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_11(3),
	o => \n_11[3]~input_o\);

-- Location: IOIBUF_X144_Y129_N101
\n_11[4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_11(4),
	o => \n_11[4]~input_o\);

-- Location: IOIBUF_X35_Y129_N73
\n_11[5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_11(5),
	o => \n_11[5]~input_o\);

-- Location: IOIBUF_X210_Y125_N132
\n_11[6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_11(6),
	o => \n_11[6]~input_o\);

-- Location: IOIBUF_X199_Y129_N73
\n_11[7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_11(7),
	o => \n_11[7]~input_o\);

-- Location: IOIBUF_X0_Y2_N62
\n_12[3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_12(3),
	o => \n_12[3]~input_o\);

-- Location: IOIBUF_X77_Y129_N29
\n_12[4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_12(4),
	o => \n_12[4]~input_o\);

-- Location: IOIBUF_X87_Y129_N129
\n_12[5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_12(5),
	o => \n_12[5]~input_o\);

-- Location: IOIBUF_X210_Y125_N104
\n_12[6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_12(6),
	o => \n_12[6]~input_o\);

-- Location: IOIBUF_X5_Y129_N73
\n_12[7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_12(7),
	o => \n_12[7]~input_o\);

-- Location: IOIBUF_X166_Y129_N101
\n_13[3]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_13(3),
	o => \n_13[3]~input_o\);

-- Location: IOIBUF_X206_Y0_N57
\n_13[4]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_13(4),
	o => \n_13[4]~input_o\);

-- Location: IOIBUF_X210_Y8_N88
\n_13[5]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_13(5),
	o => \n_13[5]~input_o\);

-- Location: IOIBUF_X0_Y121_N60
\n_13[6]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_13(6),
	o => \n_13[6]~input_o\);

-- Location: IOIBUF_X186_Y0_N57
\n_13[7]~input\ : stratixv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_13(7),
	o => \n_13[7]~input_o\);

-- Location: MLABCELL_X51_Y53_N0
\~QUARTUS_CREATED_GND~I\ : stratixv_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


