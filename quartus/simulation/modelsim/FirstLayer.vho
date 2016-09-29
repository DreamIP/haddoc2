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

-- DATE "09/28/2016 17:45:25"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
LIBRARY WORK;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
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
-- n_11[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_11[4]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_11[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_11[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_11[7]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_12[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_12[4]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_12[5]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_12[6]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_12[7]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_13[3]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_13[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_13[5]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_13[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_13[7]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[2]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[3]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[4]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[5]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[6]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_13[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_13[1]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_13[0]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_12[2]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_12[1]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_12[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_11[2]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_11[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_11[0]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[8][0]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[8][1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[8][2]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[8][3]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[8][4]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[8][5]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[8][6]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[8][7]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[8][0]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[8][1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[8][2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[8][3]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[8][4]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[8][5]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[8][6]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[8][7]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[8][0]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[8][1]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[8][2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[8][3]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[8][4]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[8][5]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[8][6]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[8][7]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[7][0]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[7][1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[7][2]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[7][3]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[7][4]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[7][5]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[7][6]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[7][7]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[7][0]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[7][1]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[7][2]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[7][3]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[7][4]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[7][5]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[7][6]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[7][7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[7][0]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[7][1]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[7][2]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[7][3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[7][4]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[7][5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[7][6]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[7][7]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[6][0]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[6][1]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[6][2]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[6][3]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[6][4]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[6][5]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[6][6]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[6][7]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[6][0]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[6][1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[6][2]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[6][3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[6][4]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[6][5]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[6][6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[6][7]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[6][0]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[6][1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[6][2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[6][3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[6][4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[6][5]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[6][6]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[6][7]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[5][0]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[5][1]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[5][2]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[5][3]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[5][4]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[5][5]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[5][6]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[5][7]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[5][0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[5][1]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[5][2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[5][3]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[5][4]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[5][5]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[5][6]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[5][7]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[5][0]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[5][1]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[5][2]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[5][3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[5][4]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[5][5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[5][6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[5][7]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[4][0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[4][1]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[4][2]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[4][3]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[4][4]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[4][5]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[4][6]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[4][7]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[4][0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[4][1]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[4][2]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[4][3]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[4][4]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[4][5]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[4][6]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[4][7]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[4][0]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[4][1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[4][2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[4][3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[4][4]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[4][5]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[4][6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[4][7]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[3][0]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[3][1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[3][2]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[3][3]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[3][4]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[3][5]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[3][6]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[3][7]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[3][0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[3][1]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[3][2]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[3][3]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[3][4]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[3][5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[3][6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[3][7]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[3][0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[3][1]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[3][2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[3][3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[3][4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[3][5]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[3][6]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[3][7]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[2][0]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[2][1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[2][2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[2][3]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[2][4]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[2][5]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[2][6]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[2][7]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[2][0]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[2][1]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[2][2]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[2][3]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[2][4]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[2][5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[2][6]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[2][7]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[2][0]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[2][1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[2][2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[2][3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[2][4]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[2][5]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[2][6]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[2][7]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[1][0]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[1][1]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[1][2]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[1][3]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[1][4]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[1][5]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[1][6]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[1][7]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[0][0]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[0][1]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[0][2]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[0][3]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[0][4]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[0][5]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[0][6]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_13[0][7]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[1][0]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[1][1]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[1][2]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[1][3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[1][4]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[1][5]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[1][6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[1][7]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[0][0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[0][1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[0][2]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[0][3]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[0][4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[0][5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[0][6]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_12[0][7]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[1][0]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[1][1]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[1][2]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[1][3]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[1][4]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[1][5]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[1][6]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[1][7]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[0][0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[0][1]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[0][2]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[0][3]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[0][4]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[0][5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[0][6]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_11[0][7]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[0]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[1]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[3]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[4]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[5]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[6]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[7]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \inst_CE_13|Mult8~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_13|Mult8~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult8~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult8~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult8~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_13|Mult8~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult8~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult8~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_12|Mult8~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_12|Mult8~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult8~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult8~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult8~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_12|Mult8~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult8~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult8~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_11|Mult8~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_11|Mult8~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult8~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult8~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult8~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_11|Mult8~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult8~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult8~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_13|Mult7~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_13|Mult7~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult7~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult7~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult7~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_13|Mult7~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult7~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult7~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_12|Mult7~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_12|Mult7~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult7~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult7~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult7~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_12|Mult7~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult7~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult7~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_11|Mult7~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_11|Mult7~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult7~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult7~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult7~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_11|Mult7~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult7~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult7~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_13|Mult6~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_13|Mult6~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult6~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult6~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult6~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_13|Mult6~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult6~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult6~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_12|Mult6~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_12|Mult6~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult6~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult6~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult6~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_12|Mult6~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult6~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult6~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_11|Mult6~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_11|Mult6~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult6~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult6~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult6~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_11|Mult6~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult6~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult6~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_13|Mult5~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_13|Mult5~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult5~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult5~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult5~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_13|Mult5~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult5~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult5~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_12|Mult5~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_12|Mult5~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult5~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult5~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult5~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_12|Mult5~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult5~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult5~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_11|Mult5~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_11|Mult5~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult5~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult5~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult5~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_11|Mult5~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult5~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult5~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \inst_CE_13|Mult4~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_13|Mult4~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult4~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult4~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult4~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_13|Mult4~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult4~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult4~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_12|Mult4~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_12|Mult4~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult4~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult4~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult4~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_12|Mult4~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult4~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult4~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_11|Mult4~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_11|Mult4~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult4~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult4~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult4~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_11|Mult4~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult4~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult4~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_13|Mult3~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_13|Mult3~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult3~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult3~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult3~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_13|Mult3~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult3~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult3~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_12|Mult3~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_12|Mult3~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult3~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult3~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult3~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_12|Mult3~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult3~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult3~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_11|Mult3~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_11|Mult3~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult3~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult3~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult3~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_11|Mult3~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult3~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult3~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_13|Mult2~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_13|Mult2~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult2~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Mult2~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult2~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_13|Mult2~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult2~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Mult2~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_12|Mult2~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_12|Mult2~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult2~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Mult2~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult2~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_12|Mult2~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult2~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Mult2~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_11|Mult2~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_11|Mult2~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult2~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Mult2~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult2~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_11|Mult2~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult2~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Mult2~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_13|Add0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_13|Add0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Add0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_13|Add0~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Add0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_13|Add0~8_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|Add0~8_BY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_13|Add0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_12|Add0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_12|Add0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Add0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_12|Add0~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Add0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_12|Add0~8_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|Add0~8_BY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_12|Add0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_11|Add0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_CE_11|Add0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Add0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CE_11|Add0~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Add0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_11|Add0~8_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_11|Add0~8_BY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst_CE_11|Add0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst_CE_13|Mult8~337\ : std_logic;
SIGNAL \inst_CE_13|Mult8~338\ : std_logic;
SIGNAL \inst_CE_13|Mult8~339\ : std_logic;
SIGNAL \inst_CE_13|Mult8~8\ : std_logic;
SIGNAL \inst_CE_13|Mult8~9\ : std_logic;
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
SIGNAL \inst_CE_12|Mult8~337\ : std_logic;
SIGNAL \inst_CE_12|Mult8~338\ : std_logic;
SIGNAL \inst_CE_12|Mult8~339\ : std_logic;
SIGNAL \inst_CE_12|Mult8~8\ : std_logic;
SIGNAL \inst_CE_12|Mult8~9\ : std_logic;
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
SIGNAL \inst_CE_11|Mult8~337\ : std_logic;
SIGNAL \inst_CE_11|Mult8~338\ : std_logic;
SIGNAL \inst_CE_11|Mult8~339\ : std_logic;
SIGNAL \inst_CE_11|Mult8~8\ : std_logic;
SIGNAL \inst_CE_11|Mult8~9\ : std_logic;
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
SIGNAL \inst_CE_13|Mult7~8\ : std_logic;
SIGNAL \inst_CE_13|Mult7~9\ : std_logic;
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
SIGNAL \inst_CE_12|Mult7~8\ : std_logic;
SIGNAL \inst_CE_12|Mult7~9\ : std_logic;
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
SIGNAL \inst_CE_11|Mult7~8\ : std_logic;
SIGNAL \inst_CE_11|Mult7~9\ : std_logic;
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
SIGNAL \inst_CE_13|Mult6~8\ : std_logic;
SIGNAL \inst_CE_13|Mult6~9\ : std_logic;
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
SIGNAL \inst_CE_12|Mult6~8\ : std_logic;
SIGNAL \inst_CE_12|Mult6~9\ : std_logic;
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
SIGNAL \inst_CE_11|Mult6~8\ : std_logic;
SIGNAL \inst_CE_11|Mult6~9\ : std_logic;
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
SIGNAL \inst_CE_13|Mult5~8\ : std_logic;
SIGNAL \inst_CE_13|Mult5~9\ : std_logic;
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
SIGNAL \inst_CE_12|Mult5~8\ : std_logic;
SIGNAL \inst_CE_12|Mult5~9\ : std_logic;
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
SIGNAL \inst_CE_11|Mult5~8\ : std_logic;
SIGNAL \inst_CE_11|Mult5~9\ : std_logic;
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
SIGNAL \inst_CE_13|Mult4~8\ : std_logic;
SIGNAL \inst_CE_13|Mult4~9\ : std_logic;
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
SIGNAL \inst_CE_12|Mult4~8\ : std_logic;
SIGNAL \inst_CE_12|Mult4~9\ : std_logic;
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
SIGNAL \inst_CE_11|Mult4~8\ : std_logic;
SIGNAL \inst_CE_11|Mult4~9\ : std_logic;
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
SIGNAL \inst_CE_13|Mult3~8\ : std_logic;
SIGNAL \inst_CE_13|Mult3~9\ : std_logic;
SIGNAL \inst_CE_13|Mult3~10\ : std_logic;
SIGNAL \inst_CE_13|Mult3~11\ : std_logic;
SIGNAL \inst_CE_13|Mult3~12\ : std_logic;
SIGNAL \inst_CE_13|Mult3~13\ : std_logic;
SIGNAL \inst_CE_13|Mult3~14\ : std_logic;
SIGNAL \inst_CE_13|Mult3~15\ : std_logic;
SIGNAL \inst_CE_13|Mult3~16\ : std_logic;
SIGNAL \inst_CE_13|Mult3~17\ : std_logic;
SIGNAL \inst_CE_13|Mult3~18\ : std_logic;
SIGNAL \inst_CE_13|Mult3~19\ : std_logic;
SIGNAL \inst_CE_13|Mult3~20\ : std_logic;
SIGNAL \inst_CE_13|Mult3~21\ : std_logic;
SIGNAL \inst_CE_13|Mult3~22\ : std_logic;
SIGNAL \inst_CE_13|Mult3~23\ : std_logic;
SIGNAL \inst_CE_13|Mult3~24\ : std_logic;
SIGNAL \inst_CE_13|Mult3~25\ : std_logic;
SIGNAL \inst_CE_13|Mult3~26\ : std_logic;
SIGNAL \inst_CE_13|Mult3~27\ : std_logic;
SIGNAL \inst_CE_13|Mult3~28\ : std_logic;
SIGNAL \inst_CE_13|Mult3~29\ : std_logic;
SIGNAL \inst_CE_13|Mult3~30\ : std_logic;
SIGNAL \inst_CE_13|Mult3~31\ : std_logic;
SIGNAL \inst_CE_13|Mult3~32\ : std_logic;
SIGNAL \inst_CE_13|Mult3~33\ : std_logic;
SIGNAL \inst_CE_13|Mult3~34\ : std_logic;
SIGNAL \inst_CE_13|Mult3~35\ : std_logic;
SIGNAL \inst_CE_13|Mult3~36\ : std_logic;
SIGNAL \inst_CE_13|Mult3~37\ : std_logic;
SIGNAL \inst_CE_13|Mult3~38\ : std_logic;
SIGNAL \inst_CE_13|Mult3~39\ : std_logic;
SIGNAL \inst_CE_13|Mult3~40\ : std_logic;
SIGNAL \inst_CE_13|Mult3~41\ : std_logic;
SIGNAL \inst_CE_13|Mult3~42\ : std_logic;
SIGNAL \inst_CE_13|Mult3~43\ : std_logic;
SIGNAL \inst_CE_13|Mult3~44\ : std_logic;
SIGNAL \inst_CE_13|Mult3~45\ : std_logic;
SIGNAL \inst_CE_13|Mult3~46\ : std_logic;
SIGNAL \inst_CE_13|Mult3~47\ : std_logic;
SIGNAL \inst_CE_13|Mult3~48\ : std_logic;
SIGNAL \inst_CE_13|Mult3~49\ : std_logic;
SIGNAL \inst_CE_13|Mult3~50\ : std_logic;
SIGNAL \inst_CE_13|Mult3~51\ : std_logic;
SIGNAL \inst_CE_13|Mult3~52\ : std_logic;
SIGNAL \inst_CE_13|Mult3~53\ : std_logic;
SIGNAL \inst_CE_12|Mult3~8\ : std_logic;
SIGNAL \inst_CE_12|Mult3~9\ : std_logic;
SIGNAL \inst_CE_12|Mult3~10\ : std_logic;
SIGNAL \inst_CE_12|Mult3~11\ : std_logic;
SIGNAL \inst_CE_12|Mult3~12\ : std_logic;
SIGNAL \inst_CE_12|Mult3~13\ : std_logic;
SIGNAL \inst_CE_12|Mult3~14\ : std_logic;
SIGNAL \inst_CE_12|Mult3~15\ : std_logic;
SIGNAL \inst_CE_12|Mult3~16\ : std_logic;
SIGNAL \inst_CE_12|Mult3~17\ : std_logic;
SIGNAL \inst_CE_12|Mult3~18\ : std_logic;
SIGNAL \inst_CE_12|Mult3~19\ : std_logic;
SIGNAL \inst_CE_12|Mult3~20\ : std_logic;
SIGNAL \inst_CE_12|Mult3~21\ : std_logic;
SIGNAL \inst_CE_12|Mult3~22\ : std_logic;
SIGNAL \inst_CE_12|Mult3~23\ : std_logic;
SIGNAL \inst_CE_12|Mult3~24\ : std_logic;
SIGNAL \inst_CE_12|Mult3~25\ : std_logic;
SIGNAL \inst_CE_12|Mult3~26\ : std_logic;
SIGNAL \inst_CE_12|Mult3~27\ : std_logic;
SIGNAL \inst_CE_12|Mult3~28\ : std_logic;
SIGNAL \inst_CE_12|Mult3~29\ : std_logic;
SIGNAL \inst_CE_12|Mult3~30\ : std_logic;
SIGNAL \inst_CE_12|Mult3~31\ : std_logic;
SIGNAL \inst_CE_12|Mult3~32\ : std_logic;
SIGNAL \inst_CE_12|Mult3~33\ : std_logic;
SIGNAL \inst_CE_12|Mult3~34\ : std_logic;
SIGNAL \inst_CE_12|Mult3~35\ : std_logic;
SIGNAL \inst_CE_12|Mult3~36\ : std_logic;
SIGNAL \inst_CE_12|Mult3~37\ : std_logic;
SIGNAL \inst_CE_12|Mult3~38\ : std_logic;
SIGNAL \inst_CE_12|Mult3~39\ : std_logic;
SIGNAL \inst_CE_12|Mult3~40\ : std_logic;
SIGNAL \inst_CE_12|Mult3~41\ : std_logic;
SIGNAL \inst_CE_12|Mult3~42\ : std_logic;
SIGNAL \inst_CE_12|Mult3~43\ : std_logic;
SIGNAL \inst_CE_12|Mult3~44\ : std_logic;
SIGNAL \inst_CE_12|Mult3~45\ : std_logic;
SIGNAL \inst_CE_12|Mult3~46\ : std_logic;
SIGNAL \inst_CE_12|Mult3~47\ : std_logic;
SIGNAL \inst_CE_12|Mult3~48\ : std_logic;
SIGNAL \inst_CE_12|Mult3~49\ : std_logic;
SIGNAL \inst_CE_12|Mult3~50\ : std_logic;
SIGNAL \inst_CE_12|Mult3~51\ : std_logic;
SIGNAL \inst_CE_12|Mult3~52\ : std_logic;
SIGNAL \inst_CE_12|Mult3~53\ : std_logic;
SIGNAL \inst_CE_11|Mult3~8\ : std_logic;
SIGNAL \inst_CE_11|Mult3~9\ : std_logic;
SIGNAL \inst_CE_11|Mult3~10\ : std_logic;
SIGNAL \inst_CE_11|Mult3~11\ : std_logic;
SIGNAL \inst_CE_11|Mult3~12\ : std_logic;
SIGNAL \inst_CE_11|Mult3~13\ : std_logic;
SIGNAL \inst_CE_11|Mult3~14\ : std_logic;
SIGNAL \inst_CE_11|Mult3~15\ : std_logic;
SIGNAL \inst_CE_11|Mult3~16\ : std_logic;
SIGNAL \inst_CE_11|Mult3~17\ : std_logic;
SIGNAL \inst_CE_11|Mult3~18\ : std_logic;
SIGNAL \inst_CE_11|Mult3~19\ : std_logic;
SIGNAL \inst_CE_11|Mult3~20\ : std_logic;
SIGNAL \inst_CE_11|Mult3~21\ : std_logic;
SIGNAL \inst_CE_11|Mult3~22\ : std_logic;
SIGNAL \inst_CE_11|Mult3~23\ : std_logic;
SIGNAL \inst_CE_11|Mult3~24\ : std_logic;
SIGNAL \inst_CE_11|Mult3~25\ : std_logic;
SIGNAL \inst_CE_11|Mult3~26\ : std_logic;
SIGNAL \inst_CE_11|Mult3~27\ : std_logic;
SIGNAL \inst_CE_11|Mult3~28\ : std_logic;
SIGNAL \inst_CE_11|Mult3~29\ : std_logic;
SIGNAL \inst_CE_11|Mult3~30\ : std_logic;
SIGNAL \inst_CE_11|Mult3~31\ : std_logic;
SIGNAL \inst_CE_11|Mult3~32\ : std_logic;
SIGNAL \inst_CE_11|Mult3~33\ : std_logic;
SIGNAL \inst_CE_11|Mult3~34\ : std_logic;
SIGNAL \inst_CE_11|Mult3~35\ : std_logic;
SIGNAL \inst_CE_11|Mult3~36\ : std_logic;
SIGNAL \inst_CE_11|Mult3~37\ : std_logic;
SIGNAL \inst_CE_11|Mult3~38\ : std_logic;
SIGNAL \inst_CE_11|Mult3~39\ : std_logic;
SIGNAL \inst_CE_11|Mult3~40\ : std_logic;
SIGNAL \inst_CE_11|Mult3~41\ : std_logic;
SIGNAL \inst_CE_11|Mult3~42\ : std_logic;
SIGNAL \inst_CE_11|Mult3~43\ : std_logic;
SIGNAL \inst_CE_11|Mult3~44\ : std_logic;
SIGNAL \inst_CE_11|Mult3~45\ : std_logic;
SIGNAL \inst_CE_11|Mult3~46\ : std_logic;
SIGNAL \inst_CE_11|Mult3~47\ : std_logic;
SIGNAL \inst_CE_11|Mult3~48\ : std_logic;
SIGNAL \inst_CE_11|Mult3~49\ : std_logic;
SIGNAL \inst_CE_11|Mult3~50\ : std_logic;
SIGNAL \inst_CE_11|Mult3~51\ : std_logic;
SIGNAL \inst_CE_11|Mult3~52\ : std_logic;
SIGNAL \inst_CE_11|Mult3~53\ : std_logic;
SIGNAL \inst_CE_13|Mult2~8\ : std_logic;
SIGNAL \inst_CE_13|Mult2~9\ : std_logic;
SIGNAL \inst_CE_13|Mult2~10\ : std_logic;
SIGNAL \inst_CE_13|Mult2~11\ : std_logic;
SIGNAL \inst_CE_13|Mult2~12\ : std_logic;
SIGNAL \inst_CE_13|Mult2~13\ : std_logic;
SIGNAL \inst_CE_13|Mult2~14\ : std_logic;
SIGNAL \inst_CE_13|Mult2~15\ : std_logic;
SIGNAL \inst_CE_13|Mult2~16\ : std_logic;
SIGNAL \inst_CE_13|Mult2~17\ : std_logic;
SIGNAL \inst_CE_13|Mult2~18\ : std_logic;
SIGNAL \inst_CE_13|Mult2~19\ : std_logic;
SIGNAL \inst_CE_13|Mult2~20\ : std_logic;
SIGNAL \inst_CE_13|Mult2~21\ : std_logic;
SIGNAL \inst_CE_13|Mult2~22\ : std_logic;
SIGNAL \inst_CE_13|Mult2~23\ : std_logic;
SIGNAL \inst_CE_13|Mult2~24\ : std_logic;
SIGNAL \inst_CE_13|Mult2~25\ : std_logic;
SIGNAL \inst_CE_13|Mult2~26\ : std_logic;
SIGNAL \inst_CE_13|Mult2~27\ : std_logic;
SIGNAL \inst_CE_13|Mult2~28\ : std_logic;
SIGNAL \inst_CE_13|Mult2~29\ : std_logic;
SIGNAL \inst_CE_13|Mult2~30\ : std_logic;
SIGNAL \inst_CE_13|Mult2~31\ : std_logic;
SIGNAL \inst_CE_13|Mult2~32\ : std_logic;
SIGNAL \inst_CE_13|Mult2~33\ : std_logic;
SIGNAL \inst_CE_13|Mult2~34\ : std_logic;
SIGNAL \inst_CE_13|Mult2~35\ : std_logic;
SIGNAL \inst_CE_13|Mult2~36\ : std_logic;
SIGNAL \inst_CE_13|Mult2~37\ : std_logic;
SIGNAL \inst_CE_13|Mult2~38\ : std_logic;
SIGNAL \inst_CE_13|Mult2~39\ : std_logic;
SIGNAL \inst_CE_13|Mult2~40\ : std_logic;
SIGNAL \inst_CE_13|Mult2~41\ : std_logic;
SIGNAL \inst_CE_13|Mult2~42\ : std_logic;
SIGNAL \inst_CE_13|Mult2~43\ : std_logic;
SIGNAL \inst_CE_13|Mult2~44\ : std_logic;
SIGNAL \inst_CE_13|Mult2~45\ : std_logic;
SIGNAL \inst_CE_13|Mult2~46\ : std_logic;
SIGNAL \inst_CE_13|Mult2~47\ : std_logic;
SIGNAL \inst_CE_13|Mult2~48\ : std_logic;
SIGNAL \inst_CE_13|Mult2~49\ : std_logic;
SIGNAL \inst_CE_13|Mult2~50\ : std_logic;
SIGNAL \inst_CE_13|Mult2~51\ : std_logic;
SIGNAL \inst_CE_13|Mult2~52\ : std_logic;
SIGNAL \inst_CE_13|Mult2~53\ : std_logic;
SIGNAL \inst_CE_12|Mult2~8\ : std_logic;
SIGNAL \inst_CE_12|Mult2~9\ : std_logic;
SIGNAL \inst_CE_12|Mult2~10\ : std_logic;
SIGNAL \inst_CE_12|Mult2~11\ : std_logic;
SIGNAL \inst_CE_12|Mult2~12\ : std_logic;
SIGNAL \inst_CE_12|Mult2~13\ : std_logic;
SIGNAL \inst_CE_12|Mult2~14\ : std_logic;
SIGNAL \inst_CE_12|Mult2~15\ : std_logic;
SIGNAL \inst_CE_12|Mult2~16\ : std_logic;
SIGNAL \inst_CE_12|Mult2~17\ : std_logic;
SIGNAL \inst_CE_12|Mult2~18\ : std_logic;
SIGNAL \inst_CE_12|Mult2~19\ : std_logic;
SIGNAL \inst_CE_12|Mult2~20\ : std_logic;
SIGNAL \inst_CE_12|Mult2~21\ : std_logic;
SIGNAL \inst_CE_12|Mult2~22\ : std_logic;
SIGNAL \inst_CE_12|Mult2~23\ : std_logic;
SIGNAL \inst_CE_12|Mult2~24\ : std_logic;
SIGNAL \inst_CE_12|Mult2~25\ : std_logic;
SIGNAL \inst_CE_12|Mult2~26\ : std_logic;
SIGNAL \inst_CE_12|Mult2~27\ : std_logic;
SIGNAL \inst_CE_12|Mult2~28\ : std_logic;
SIGNAL \inst_CE_12|Mult2~29\ : std_logic;
SIGNAL \inst_CE_12|Mult2~30\ : std_logic;
SIGNAL \inst_CE_12|Mult2~31\ : std_logic;
SIGNAL \inst_CE_12|Mult2~32\ : std_logic;
SIGNAL \inst_CE_12|Mult2~33\ : std_logic;
SIGNAL \inst_CE_12|Mult2~34\ : std_logic;
SIGNAL \inst_CE_12|Mult2~35\ : std_logic;
SIGNAL \inst_CE_12|Mult2~36\ : std_logic;
SIGNAL \inst_CE_12|Mult2~37\ : std_logic;
SIGNAL \inst_CE_12|Mult2~38\ : std_logic;
SIGNAL \inst_CE_12|Mult2~39\ : std_logic;
SIGNAL \inst_CE_12|Mult2~40\ : std_logic;
SIGNAL \inst_CE_12|Mult2~41\ : std_logic;
SIGNAL \inst_CE_12|Mult2~42\ : std_logic;
SIGNAL \inst_CE_12|Mult2~43\ : std_logic;
SIGNAL \inst_CE_12|Mult2~44\ : std_logic;
SIGNAL \inst_CE_12|Mult2~45\ : std_logic;
SIGNAL \inst_CE_12|Mult2~46\ : std_logic;
SIGNAL \inst_CE_12|Mult2~47\ : std_logic;
SIGNAL \inst_CE_12|Mult2~48\ : std_logic;
SIGNAL \inst_CE_12|Mult2~49\ : std_logic;
SIGNAL \inst_CE_12|Mult2~50\ : std_logic;
SIGNAL \inst_CE_12|Mult2~51\ : std_logic;
SIGNAL \inst_CE_12|Mult2~52\ : std_logic;
SIGNAL \inst_CE_12|Mult2~53\ : std_logic;
SIGNAL \inst_CE_11|Mult2~8\ : std_logic;
SIGNAL \inst_CE_11|Mult2~9\ : std_logic;
SIGNAL \inst_CE_11|Mult2~10\ : std_logic;
SIGNAL \inst_CE_11|Mult2~11\ : std_logic;
SIGNAL \inst_CE_11|Mult2~12\ : std_logic;
SIGNAL \inst_CE_11|Mult2~13\ : std_logic;
SIGNAL \inst_CE_11|Mult2~14\ : std_logic;
SIGNAL \inst_CE_11|Mult2~15\ : std_logic;
SIGNAL \inst_CE_11|Mult2~16\ : std_logic;
SIGNAL \inst_CE_11|Mult2~17\ : std_logic;
SIGNAL \inst_CE_11|Mult2~18\ : std_logic;
SIGNAL \inst_CE_11|Mult2~19\ : std_logic;
SIGNAL \inst_CE_11|Mult2~20\ : std_logic;
SIGNAL \inst_CE_11|Mult2~21\ : std_logic;
SIGNAL \inst_CE_11|Mult2~22\ : std_logic;
SIGNAL \inst_CE_11|Mult2~23\ : std_logic;
SIGNAL \inst_CE_11|Mult2~24\ : std_logic;
SIGNAL \inst_CE_11|Mult2~25\ : std_logic;
SIGNAL \inst_CE_11|Mult2~26\ : std_logic;
SIGNAL \inst_CE_11|Mult2~27\ : std_logic;
SIGNAL \inst_CE_11|Mult2~28\ : std_logic;
SIGNAL \inst_CE_11|Mult2~29\ : std_logic;
SIGNAL \inst_CE_11|Mult2~30\ : std_logic;
SIGNAL \inst_CE_11|Mult2~31\ : std_logic;
SIGNAL \inst_CE_11|Mult2~32\ : std_logic;
SIGNAL \inst_CE_11|Mult2~33\ : std_logic;
SIGNAL \inst_CE_11|Mult2~34\ : std_logic;
SIGNAL \inst_CE_11|Mult2~35\ : std_logic;
SIGNAL \inst_CE_11|Mult2~36\ : std_logic;
SIGNAL \inst_CE_11|Mult2~37\ : std_logic;
SIGNAL \inst_CE_11|Mult2~38\ : std_logic;
SIGNAL \inst_CE_11|Mult2~39\ : std_logic;
SIGNAL \inst_CE_11|Mult2~40\ : std_logic;
SIGNAL \inst_CE_11|Mult2~41\ : std_logic;
SIGNAL \inst_CE_11|Mult2~42\ : std_logic;
SIGNAL \inst_CE_11|Mult2~43\ : std_logic;
SIGNAL \inst_CE_11|Mult2~44\ : std_logic;
SIGNAL \inst_CE_11|Mult2~45\ : std_logic;
SIGNAL \inst_CE_11|Mult2~46\ : std_logic;
SIGNAL \inst_CE_11|Mult2~47\ : std_logic;
SIGNAL \inst_CE_11|Mult2~48\ : std_logic;
SIGNAL \inst_CE_11|Mult2~49\ : std_logic;
SIGNAL \inst_CE_11|Mult2~50\ : std_logic;
SIGNAL \inst_CE_11|Mult2~51\ : std_logic;
SIGNAL \inst_CE_11|Mult2~52\ : std_logic;
SIGNAL \inst_CE_11|Mult2~53\ : std_logic;
SIGNAL \inst_CE_13|Add0~26\ : std_logic;
SIGNAL \inst_CE_13|Add0~27\ : std_logic;
SIGNAL \inst_CE_13|Add0~28\ : std_logic;
SIGNAL \inst_CE_13|Add0~29\ : std_logic;
SIGNAL \inst_CE_13|Add0~30\ : std_logic;
SIGNAL \inst_CE_13|Add0~31\ : std_logic;
SIGNAL \inst_CE_13|Add0~32\ : std_logic;
SIGNAL \inst_CE_13|Add0~33\ : std_logic;
SIGNAL \inst_CE_13|Add0~34\ : std_logic;
SIGNAL \inst_CE_13|Add0~35\ : std_logic;
SIGNAL \inst_CE_13|Add0~36\ : std_logic;
SIGNAL \inst_CE_13|Add0~37\ : std_logic;
SIGNAL \inst_CE_13|Add0~38\ : std_logic;
SIGNAL \inst_CE_13|Add0~39\ : std_logic;
SIGNAL \inst_CE_13|Add0~40\ : std_logic;
SIGNAL \inst_CE_13|Add0~41\ : std_logic;
SIGNAL \inst_CE_13|Add0~42\ : std_logic;
SIGNAL \inst_CE_13|Add0~43\ : std_logic;
SIGNAL \inst_CE_13|Add0~44\ : std_logic;
SIGNAL \inst_CE_13|Add0~45\ : std_logic;
SIGNAL \inst_CE_13|Add0~46\ : std_logic;
SIGNAL \inst_CE_13|Add0~47\ : std_logic;
SIGNAL \inst_CE_13|Add0~48\ : std_logic;
SIGNAL \inst_CE_13|Add0~49\ : std_logic;
SIGNAL \inst_CE_13|Add0~50\ : std_logic;
SIGNAL \inst_CE_13|Add0~51\ : std_logic;
SIGNAL \inst_CE_13|Add0~52\ : std_logic;
SIGNAL \inst_CE_13|Add0~53\ : std_logic;
SIGNAL \inst_CE_13|Add0~54\ : std_logic;
SIGNAL \inst_CE_13|Add0~55\ : std_logic;
SIGNAL \inst_CE_13|Add0~56\ : std_logic;
SIGNAL \inst_CE_13|Add0~57\ : std_logic;
SIGNAL \inst_CE_13|Add0~58\ : std_logic;
SIGNAL \inst_CE_13|Add0~59\ : std_logic;
SIGNAL \inst_CE_13|Add0~60\ : std_logic;
SIGNAL \inst_CE_13|Add0~61\ : std_logic;
SIGNAL \inst_CE_13|Add0~62\ : std_logic;
SIGNAL \inst_CE_13|Add0~63\ : std_logic;
SIGNAL \inst_CE_13|Add0~64\ : std_logic;
SIGNAL \inst_CE_13|Add0~65\ : std_logic;
SIGNAL \inst_CE_13|Add0~66\ : std_logic;
SIGNAL \inst_CE_13|Add0~67\ : std_logic;
SIGNAL \inst_CE_13|Add0~68\ : std_logic;
SIGNAL \inst_CE_13|Add0~69\ : std_logic;
SIGNAL \inst_CE_13|Add0~70\ : std_logic;
SIGNAL \inst_CE_13|Add0~71\ : std_logic;
SIGNAL \inst_CE_12|Add0~26\ : std_logic;
SIGNAL \inst_CE_12|Add0~27\ : std_logic;
SIGNAL \inst_CE_12|Add0~28\ : std_logic;
SIGNAL \inst_CE_12|Add0~29\ : std_logic;
SIGNAL \inst_CE_12|Add0~30\ : std_logic;
SIGNAL \inst_CE_12|Add0~31\ : std_logic;
SIGNAL \inst_CE_12|Add0~32\ : std_logic;
SIGNAL \inst_CE_12|Add0~33\ : std_logic;
SIGNAL \inst_CE_12|Add0~34\ : std_logic;
SIGNAL \inst_CE_12|Add0~35\ : std_logic;
SIGNAL \inst_CE_12|Add0~36\ : std_logic;
SIGNAL \inst_CE_12|Add0~37\ : std_logic;
SIGNAL \inst_CE_12|Add0~38\ : std_logic;
SIGNAL \inst_CE_12|Add0~39\ : std_logic;
SIGNAL \inst_CE_12|Add0~40\ : std_logic;
SIGNAL \inst_CE_12|Add0~41\ : std_logic;
SIGNAL \inst_CE_12|Add0~42\ : std_logic;
SIGNAL \inst_CE_12|Add0~43\ : std_logic;
SIGNAL \inst_CE_12|Add0~44\ : std_logic;
SIGNAL \inst_CE_12|Add0~45\ : std_logic;
SIGNAL \inst_CE_12|Add0~46\ : std_logic;
SIGNAL \inst_CE_12|Add0~47\ : std_logic;
SIGNAL \inst_CE_12|Add0~48\ : std_logic;
SIGNAL \inst_CE_12|Add0~49\ : std_logic;
SIGNAL \inst_CE_12|Add0~50\ : std_logic;
SIGNAL \inst_CE_12|Add0~51\ : std_logic;
SIGNAL \inst_CE_12|Add0~52\ : std_logic;
SIGNAL \inst_CE_12|Add0~53\ : std_logic;
SIGNAL \inst_CE_12|Add0~54\ : std_logic;
SIGNAL \inst_CE_12|Add0~55\ : std_logic;
SIGNAL \inst_CE_12|Add0~56\ : std_logic;
SIGNAL \inst_CE_12|Add0~57\ : std_logic;
SIGNAL \inst_CE_12|Add0~58\ : std_logic;
SIGNAL \inst_CE_12|Add0~59\ : std_logic;
SIGNAL \inst_CE_12|Add0~60\ : std_logic;
SIGNAL \inst_CE_12|Add0~61\ : std_logic;
SIGNAL \inst_CE_12|Add0~62\ : std_logic;
SIGNAL \inst_CE_12|Add0~63\ : std_logic;
SIGNAL \inst_CE_12|Add0~64\ : std_logic;
SIGNAL \inst_CE_12|Add0~65\ : std_logic;
SIGNAL \inst_CE_12|Add0~66\ : std_logic;
SIGNAL \inst_CE_12|Add0~67\ : std_logic;
SIGNAL \inst_CE_12|Add0~68\ : std_logic;
SIGNAL \inst_CE_12|Add0~69\ : std_logic;
SIGNAL \inst_CE_12|Add0~70\ : std_logic;
SIGNAL \inst_CE_12|Add0~71\ : std_logic;
SIGNAL \inst_CE_11|Add0~26\ : std_logic;
SIGNAL \inst_CE_11|Add0~27\ : std_logic;
SIGNAL \inst_CE_11|Add0~28\ : std_logic;
SIGNAL \inst_CE_11|Add0~29\ : std_logic;
SIGNAL \inst_CE_11|Add0~30\ : std_logic;
SIGNAL \inst_CE_11|Add0~31\ : std_logic;
SIGNAL \inst_CE_11|Add0~32\ : std_logic;
SIGNAL \inst_CE_11|Add0~33\ : std_logic;
SIGNAL \inst_CE_11|Add0~34\ : std_logic;
SIGNAL \inst_CE_11|Add0~35\ : std_logic;
SIGNAL \inst_CE_11|Add0~36\ : std_logic;
SIGNAL \inst_CE_11|Add0~37\ : std_logic;
SIGNAL \inst_CE_11|Add0~38\ : std_logic;
SIGNAL \inst_CE_11|Add0~39\ : std_logic;
SIGNAL \inst_CE_11|Add0~40\ : std_logic;
SIGNAL \inst_CE_11|Add0~41\ : std_logic;
SIGNAL \inst_CE_11|Add0~42\ : std_logic;
SIGNAL \inst_CE_11|Add0~43\ : std_logic;
SIGNAL \inst_CE_11|Add0~44\ : std_logic;
SIGNAL \inst_CE_11|Add0~45\ : std_logic;
SIGNAL \inst_CE_11|Add0~46\ : std_logic;
SIGNAL \inst_CE_11|Add0~47\ : std_logic;
SIGNAL \inst_CE_11|Add0~48\ : std_logic;
SIGNAL \inst_CE_11|Add0~49\ : std_logic;
SIGNAL \inst_CE_11|Add0~50\ : std_logic;
SIGNAL \inst_CE_11|Add0~51\ : std_logic;
SIGNAL \inst_CE_11|Add0~52\ : std_logic;
SIGNAL \inst_CE_11|Add0~53\ : std_logic;
SIGNAL \inst_CE_11|Add0~54\ : std_logic;
SIGNAL \inst_CE_11|Add0~55\ : std_logic;
SIGNAL \inst_CE_11|Add0~56\ : std_logic;
SIGNAL \inst_CE_11|Add0~57\ : std_logic;
SIGNAL \inst_CE_11|Add0~58\ : std_logic;
SIGNAL \inst_CE_11|Add0~59\ : std_logic;
SIGNAL \inst_CE_11|Add0~60\ : std_logic;
SIGNAL \inst_CE_11|Add0~61\ : std_logic;
SIGNAL \inst_CE_11|Add0~62\ : std_logic;
SIGNAL \inst_CE_11|Add0~63\ : std_logic;
SIGNAL \inst_CE_11|Add0~64\ : std_logic;
SIGNAL \inst_CE_11|Add0~65\ : std_logic;
SIGNAL \inst_CE_11|Add0~66\ : std_logic;
SIGNAL \inst_CE_11|Add0~67\ : std_logic;
SIGNAL \inst_CE_11|Add0~68\ : std_logic;
SIGNAL \inst_CE_11|Add0~69\ : std_logic;
SIGNAL \inst_CE_11|Add0~70\ : std_logic;
SIGNAL \inst_CE_11|Add0~71\ : std_logic;
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
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~1_combout\ : std_logic;
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
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~1_sumout\ : std_logic;
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
SIGNAL \in_data[7]~input_o\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][7]~_Duplicate_6feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \in_data[6]~input_o\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \in_data[5]~input_o\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][5]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \in_data[4]~input_o\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][4]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \in_data[3]~input_o\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][3]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][3]~_Duplicate_3_q\ : std_logic;
SIGNAL \in_data[2]~input_o\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]~feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \in_data[1]~input_o\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]~feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \in_data[0]~input_o\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][0]~feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][0]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a15\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a14\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a13\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a12\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][3]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][3]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][3]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a11\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a10\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a9\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][6]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][7]~_Duplicate_6feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a7\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a6\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a5\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a4\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][3]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][3]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a3\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a2\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a1\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ : std_logic;
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
SIGNAL \inst_CE_11|Add0~8_resulta\ : std_logic;
SIGNAL \inst_CE_11|Add0~9\ : std_logic;
SIGNAL \inst_CE_11|Add0~10\ : std_logic;
SIGNAL \inst_CE_11|Add0~11\ : std_logic;
SIGNAL \inst_CE_11|Add0~12\ : std_logic;
SIGNAL \inst_CE_11|Add0~13\ : std_logic;
SIGNAL \inst_CE_11|Add0~14\ : std_logic;
SIGNAL \inst_CE_11|Add0~15\ : std_logic;
SIGNAL \inst_CE_11|Add0~16\ : std_logic;
SIGNAL \inst_CE_11|Add0~17\ : std_logic;
SIGNAL \inst_CE_11|Add0~18\ : std_logic;
SIGNAL \inst_CE_11|Add0~19\ : std_logic;
SIGNAL \inst_CE_11|Add0~20\ : std_logic;
SIGNAL \inst_CE_11|Add0~21\ : std_logic;
SIGNAL \inst_CE_11|Add0~22\ : std_logic;
SIGNAL \inst_CE_11|Add0~23\ : std_logic;
SIGNAL \inst_CE_11|Add0~24\ : std_logic;
SIGNAL \inst_CE_11|Add0~25\ : std_logic;
SIGNAL \inst_CE_11|Mult2~mac_resulta\ : std_logic;
SIGNAL \inst_CE_11|Mult2~323\ : std_logic;
SIGNAL \inst_CE_11|Mult2~324\ : std_logic;
SIGNAL \inst_CE_11|Mult2~325\ : std_logic;
SIGNAL \inst_CE_11|Mult2~326\ : std_logic;
SIGNAL \inst_CE_11|Mult2~327\ : std_logic;
SIGNAL \inst_CE_11|Mult2~328\ : std_logic;
SIGNAL \inst_CE_11|Mult2~329\ : std_logic;
SIGNAL \inst_CE_11|Mult2~330\ : std_logic;
SIGNAL \inst_CE_11|Mult2~331\ : std_logic;
SIGNAL \inst_CE_11|Mult2~332\ : std_logic;
SIGNAL \inst_CE_11|Mult2~333\ : std_logic;
SIGNAL \inst_CE_11|Mult2~334\ : std_logic;
SIGNAL \inst_CE_11|Mult2~335\ : std_logic;
SIGNAL \inst_CE_11|Mult2~336\ : std_logic;
SIGNAL \inst_CE_11|Mult2~337\ : std_logic;
SIGNAL \inst_CE_11|Mult2~338\ : std_logic;
SIGNAL \inst_CE_11|Mult2~339\ : std_logic;
SIGNAL \inst_CE_11|Mult3~mac_resulta\ : std_logic;
SIGNAL \inst_CE_11|Mult3~323\ : std_logic;
SIGNAL \inst_CE_11|Mult3~324\ : std_logic;
SIGNAL \inst_CE_11|Mult3~325\ : std_logic;
SIGNAL \inst_CE_11|Mult3~326\ : std_logic;
SIGNAL \inst_CE_11|Mult3~327\ : std_logic;
SIGNAL \inst_CE_11|Mult3~328\ : std_logic;
SIGNAL \inst_CE_11|Mult3~329\ : std_logic;
SIGNAL \inst_CE_11|Mult3~330\ : std_logic;
SIGNAL \inst_CE_11|Mult3~331\ : std_logic;
SIGNAL \inst_CE_11|Mult3~332\ : std_logic;
SIGNAL \inst_CE_11|Mult3~333\ : std_logic;
SIGNAL \inst_CE_11|Mult3~334\ : std_logic;
SIGNAL \inst_CE_11|Mult3~335\ : std_logic;
SIGNAL \inst_CE_11|Mult3~336\ : std_logic;
SIGNAL \inst_CE_11|Mult3~337\ : std_logic;
SIGNAL \inst_CE_11|Mult3~338\ : std_logic;
SIGNAL \inst_CE_11|Mult3~339\ : std_logic;
SIGNAL \inst_CE_11|Mult4~mac_resulta\ : std_logic;
SIGNAL \inst_CE_11|Mult4~323\ : std_logic;
SIGNAL \inst_CE_11|Mult4~324\ : std_logic;
SIGNAL \inst_CE_11|Mult4~325\ : std_logic;
SIGNAL \inst_CE_11|Mult4~326\ : std_logic;
SIGNAL \inst_CE_11|Mult4~327\ : std_logic;
SIGNAL \inst_CE_11|Mult4~328\ : std_logic;
SIGNAL \inst_CE_11|Mult4~329\ : std_logic;
SIGNAL \inst_CE_11|Mult4~330\ : std_logic;
SIGNAL \inst_CE_11|Mult4~331\ : std_logic;
SIGNAL \inst_CE_11|Mult4~332\ : std_logic;
SIGNAL \inst_CE_11|Mult4~333\ : std_logic;
SIGNAL \inst_CE_11|Mult4~334\ : std_logic;
SIGNAL \inst_CE_11|Mult4~335\ : std_logic;
SIGNAL \inst_CE_11|Mult4~336\ : std_logic;
SIGNAL \inst_CE_11|Mult4~337\ : std_logic;
SIGNAL \inst_CE_11|Mult4~338\ : std_logic;
SIGNAL \inst_CE_11|Mult4~339\ : std_logic;
SIGNAL \inst_CE_11|Mult5~mac_resulta\ : std_logic;
SIGNAL \inst_CE_11|Mult5~323\ : std_logic;
SIGNAL \inst_CE_11|Mult5~324\ : std_logic;
SIGNAL \inst_CE_11|Mult5~325\ : std_logic;
SIGNAL \inst_CE_11|Mult5~326\ : std_logic;
SIGNAL \inst_CE_11|Mult5~327\ : std_logic;
SIGNAL \inst_CE_11|Mult5~328\ : std_logic;
SIGNAL \inst_CE_11|Mult5~329\ : std_logic;
SIGNAL \inst_CE_11|Mult5~330\ : std_logic;
SIGNAL \inst_CE_11|Mult5~331\ : std_logic;
SIGNAL \inst_CE_11|Mult5~332\ : std_logic;
SIGNAL \inst_CE_11|Mult5~333\ : std_logic;
SIGNAL \inst_CE_11|Mult5~334\ : std_logic;
SIGNAL \inst_CE_11|Mult5~335\ : std_logic;
SIGNAL \inst_CE_11|Mult5~336\ : std_logic;
SIGNAL \inst_CE_11|Mult5~337\ : std_logic;
SIGNAL \inst_CE_11|Mult5~338\ : std_logic;
SIGNAL \inst_CE_11|Mult5~339\ : std_logic;
SIGNAL \inst_CE_11|Mult6~mac_resulta\ : std_logic;
SIGNAL \inst_CE_11|Mult6~323\ : std_logic;
SIGNAL \inst_CE_11|Mult6~324\ : std_logic;
SIGNAL \inst_CE_11|Mult6~325\ : std_logic;
SIGNAL \inst_CE_11|Mult6~326\ : std_logic;
SIGNAL \inst_CE_11|Mult6~327\ : std_logic;
SIGNAL \inst_CE_11|Mult6~328\ : std_logic;
SIGNAL \inst_CE_11|Mult6~329\ : std_logic;
SIGNAL \inst_CE_11|Mult6~330\ : std_logic;
SIGNAL \inst_CE_11|Mult6~331\ : std_logic;
SIGNAL \inst_CE_11|Mult6~332\ : std_logic;
SIGNAL \inst_CE_11|Mult6~333\ : std_logic;
SIGNAL \inst_CE_11|Mult6~334\ : std_logic;
SIGNAL \inst_CE_11|Mult6~335\ : std_logic;
SIGNAL \inst_CE_11|Mult6~336\ : std_logic;
SIGNAL \inst_CE_11|Mult6~337\ : std_logic;
SIGNAL \inst_CE_11|Mult6~338\ : std_logic;
SIGNAL \inst_CE_11|Mult6~339\ : std_logic;
SIGNAL \inst_CE_11|Mult7~mac_resulta\ : std_logic;
SIGNAL \inst_CE_11|Mult7~323\ : std_logic;
SIGNAL \inst_CE_11|Mult7~324\ : std_logic;
SIGNAL \inst_CE_11|Mult7~325\ : std_logic;
SIGNAL \inst_CE_11|Mult7~326\ : std_logic;
SIGNAL \inst_CE_11|Mult7~327\ : std_logic;
SIGNAL \inst_CE_11|Mult7~328\ : std_logic;
SIGNAL \inst_CE_11|Mult7~329\ : std_logic;
SIGNAL \inst_CE_11|Mult7~330\ : std_logic;
SIGNAL \inst_CE_11|Mult7~331\ : std_logic;
SIGNAL \inst_CE_11|Mult7~332\ : std_logic;
SIGNAL \inst_CE_11|Mult7~333\ : std_logic;
SIGNAL \inst_CE_11|Mult7~334\ : std_logic;
SIGNAL \inst_CE_11|Mult7~335\ : std_logic;
SIGNAL \inst_CE_11|Mult7~336\ : std_logic;
SIGNAL \inst_CE_11|Mult7~337\ : std_logic;
SIGNAL \inst_CE_11|Mult7~338\ : std_logic;
SIGNAL \inst_CE_11|Mult7~339\ : std_logic;
SIGNAL \n_11[0]~input_o\ : std_logic;
SIGNAL \n_11[1]~input_o\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~1_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~0_combout\ : std_logic;
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
SIGNAL \inst_CE_13|Add0~8_resulta\ : std_logic;
SIGNAL \inst_CE_13|Add0~9\ : std_logic;
SIGNAL \inst_CE_13|Add0~10\ : std_logic;
SIGNAL \inst_CE_13|Add0~11\ : std_logic;
SIGNAL \inst_CE_13|Add0~12\ : std_logic;
SIGNAL \inst_CE_13|Add0~13\ : std_logic;
SIGNAL \inst_CE_13|Add0~14\ : std_logic;
SIGNAL \inst_CE_13|Add0~15\ : std_logic;
SIGNAL \inst_CE_13|Add0~16\ : std_logic;
SIGNAL \inst_CE_13|Add0~17\ : std_logic;
SIGNAL \inst_CE_13|Add0~18\ : std_logic;
SIGNAL \inst_CE_13|Add0~19\ : std_logic;
SIGNAL \inst_CE_13|Add0~20\ : std_logic;
SIGNAL \inst_CE_13|Add0~21\ : std_logic;
SIGNAL \inst_CE_13|Add0~22\ : std_logic;
SIGNAL \inst_CE_13|Add0~23\ : std_logic;
SIGNAL \inst_CE_13|Add0~24\ : std_logic;
SIGNAL \inst_CE_13|Add0~25\ : std_logic;
SIGNAL \inst_CE_13|Mult2~mac_resulta\ : std_logic;
SIGNAL \inst_CE_13|Mult2~323\ : std_logic;
SIGNAL \inst_CE_13|Mult2~324\ : std_logic;
SIGNAL \inst_CE_13|Mult2~325\ : std_logic;
SIGNAL \inst_CE_13|Mult2~326\ : std_logic;
SIGNAL \inst_CE_13|Mult2~327\ : std_logic;
SIGNAL \inst_CE_13|Mult2~328\ : std_logic;
SIGNAL \inst_CE_13|Mult2~329\ : std_logic;
SIGNAL \inst_CE_13|Mult2~330\ : std_logic;
SIGNAL \inst_CE_13|Mult2~331\ : std_logic;
SIGNAL \inst_CE_13|Mult2~332\ : std_logic;
SIGNAL \inst_CE_13|Mult2~333\ : std_logic;
SIGNAL \inst_CE_13|Mult2~334\ : std_logic;
SIGNAL \inst_CE_13|Mult2~335\ : std_logic;
SIGNAL \inst_CE_13|Mult2~336\ : std_logic;
SIGNAL \inst_CE_13|Mult2~337\ : std_logic;
SIGNAL \inst_CE_13|Mult2~338\ : std_logic;
SIGNAL \inst_CE_13|Mult2~339\ : std_logic;
SIGNAL \inst_CE_13|Mult3~mac_resulta\ : std_logic;
SIGNAL \inst_CE_13|Mult3~323\ : std_logic;
SIGNAL \inst_CE_13|Mult3~324\ : std_logic;
SIGNAL \inst_CE_13|Mult3~325\ : std_logic;
SIGNAL \inst_CE_13|Mult3~326\ : std_logic;
SIGNAL \inst_CE_13|Mult3~327\ : std_logic;
SIGNAL \inst_CE_13|Mult3~328\ : std_logic;
SIGNAL \inst_CE_13|Mult3~329\ : std_logic;
SIGNAL \inst_CE_13|Mult3~330\ : std_logic;
SIGNAL \inst_CE_13|Mult3~331\ : std_logic;
SIGNAL \inst_CE_13|Mult3~332\ : std_logic;
SIGNAL \inst_CE_13|Mult3~333\ : std_logic;
SIGNAL \inst_CE_13|Mult3~334\ : std_logic;
SIGNAL \inst_CE_13|Mult3~335\ : std_logic;
SIGNAL \inst_CE_13|Mult3~336\ : std_logic;
SIGNAL \inst_CE_13|Mult3~337\ : std_logic;
SIGNAL \inst_CE_13|Mult3~338\ : std_logic;
SIGNAL \inst_CE_13|Mult3~339\ : std_logic;
SIGNAL \inst_CE_13|Mult4~mac_resulta\ : std_logic;
SIGNAL \inst_CE_13|Mult4~323\ : std_logic;
SIGNAL \inst_CE_13|Mult4~324\ : std_logic;
SIGNAL \inst_CE_13|Mult4~325\ : std_logic;
SIGNAL \inst_CE_13|Mult4~326\ : std_logic;
SIGNAL \inst_CE_13|Mult4~327\ : std_logic;
SIGNAL \inst_CE_13|Mult4~328\ : std_logic;
SIGNAL \inst_CE_13|Mult4~329\ : std_logic;
SIGNAL \inst_CE_13|Mult4~330\ : std_logic;
SIGNAL \inst_CE_13|Mult4~331\ : std_logic;
SIGNAL \inst_CE_13|Mult4~332\ : std_logic;
SIGNAL \inst_CE_13|Mult4~333\ : std_logic;
SIGNAL \inst_CE_13|Mult4~334\ : std_logic;
SIGNAL \inst_CE_13|Mult4~335\ : std_logic;
SIGNAL \inst_CE_13|Mult4~336\ : std_logic;
SIGNAL \inst_CE_13|Mult4~337\ : std_logic;
SIGNAL \inst_CE_13|Mult4~338\ : std_logic;
SIGNAL \inst_CE_13|Mult4~339\ : std_logic;
SIGNAL \inst_CE_13|Mult5~mac_resulta\ : std_logic;
SIGNAL \inst_CE_13|Mult5~323\ : std_logic;
SIGNAL \inst_CE_13|Mult5~324\ : std_logic;
SIGNAL \inst_CE_13|Mult5~325\ : std_logic;
SIGNAL \inst_CE_13|Mult5~326\ : std_logic;
SIGNAL \inst_CE_13|Mult5~327\ : std_logic;
SIGNAL \inst_CE_13|Mult5~328\ : std_logic;
SIGNAL \inst_CE_13|Mult5~329\ : std_logic;
SIGNAL \inst_CE_13|Mult5~330\ : std_logic;
SIGNAL \inst_CE_13|Mult5~331\ : std_logic;
SIGNAL \inst_CE_13|Mult5~332\ : std_logic;
SIGNAL \inst_CE_13|Mult5~333\ : std_logic;
SIGNAL \inst_CE_13|Mult5~334\ : std_logic;
SIGNAL \inst_CE_13|Mult5~335\ : std_logic;
SIGNAL \inst_CE_13|Mult5~336\ : std_logic;
SIGNAL \inst_CE_13|Mult5~337\ : std_logic;
SIGNAL \inst_CE_13|Mult5~338\ : std_logic;
SIGNAL \inst_CE_13|Mult5~339\ : std_logic;
SIGNAL \inst_CE_13|Mult6~mac_resulta\ : std_logic;
SIGNAL \inst_CE_13|Mult6~323\ : std_logic;
SIGNAL \inst_CE_13|Mult6~324\ : std_logic;
SIGNAL \inst_CE_13|Mult6~325\ : std_logic;
SIGNAL \inst_CE_13|Mult6~326\ : std_logic;
SIGNAL \inst_CE_13|Mult6~327\ : std_logic;
SIGNAL \inst_CE_13|Mult6~328\ : std_logic;
SIGNAL \inst_CE_13|Mult6~329\ : std_logic;
SIGNAL \inst_CE_13|Mult6~330\ : std_logic;
SIGNAL \inst_CE_13|Mult6~331\ : std_logic;
SIGNAL \inst_CE_13|Mult6~332\ : std_logic;
SIGNAL \inst_CE_13|Mult6~333\ : std_logic;
SIGNAL \inst_CE_13|Mult6~334\ : std_logic;
SIGNAL \inst_CE_13|Mult6~335\ : std_logic;
SIGNAL \inst_CE_13|Mult6~336\ : std_logic;
SIGNAL \inst_CE_13|Mult6~337\ : std_logic;
SIGNAL \inst_CE_13|Mult6~338\ : std_logic;
SIGNAL \inst_CE_13|Mult6~339\ : std_logic;
SIGNAL \inst_CE_13|Mult7~mac_resulta\ : std_logic;
SIGNAL \inst_CE_13|Mult7~323\ : std_logic;
SIGNAL \inst_CE_13|Mult7~324\ : std_logic;
SIGNAL \inst_CE_13|Mult7~325\ : std_logic;
SIGNAL \inst_CE_13|Mult7~326\ : std_logic;
SIGNAL \inst_CE_13|Mult7~327\ : std_logic;
SIGNAL \inst_CE_13|Mult7~328\ : std_logic;
SIGNAL \inst_CE_13|Mult7~329\ : std_logic;
SIGNAL \inst_CE_13|Mult7~330\ : std_logic;
SIGNAL \inst_CE_13|Mult7~331\ : std_logic;
SIGNAL \inst_CE_13|Mult7~332\ : std_logic;
SIGNAL \inst_CE_13|Mult7~333\ : std_logic;
SIGNAL \inst_CE_13|Mult7~334\ : std_logic;
SIGNAL \inst_CE_13|Mult7~335\ : std_logic;
SIGNAL \inst_CE_13|Mult7~336\ : std_logic;
SIGNAL \inst_CE_13|Mult7~337\ : std_logic;
SIGNAL \inst_CE_13|Mult7~338\ : std_logic;
SIGNAL \inst_CE_13|Mult7~339\ : std_logic;
SIGNAL \n_13[0]~input_o\ : std_logic;
SIGNAL \n_13[1]~input_o\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~0_combout\ : std_logic;
SIGNAL \n_13[2]~input_o\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~1_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~2_combout\ : std_logic;
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
SIGNAL \inst_CE_12|Add0~8_resulta\ : std_logic;
SIGNAL \inst_CE_12|Add0~9\ : std_logic;
SIGNAL \inst_CE_12|Add0~10\ : std_logic;
SIGNAL \inst_CE_12|Add0~11\ : std_logic;
SIGNAL \inst_CE_12|Add0~12\ : std_logic;
SIGNAL \inst_CE_12|Add0~13\ : std_logic;
SIGNAL \inst_CE_12|Add0~14\ : std_logic;
SIGNAL \inst_CE_12|Add0~15\ : std_logic;
SIGNAL \inst_CE_12|Add0~16\ : std_logic;
SIGNAL \inst_CE_12|Add0~17\ : std_logic;
SIGNAL \inst_CE_12|Add0~18\ : std_logic;
SIGNAL \inst_CE_12|Add0~19\ : std_logic;
SIGNAL \inst_CE_12|Add0~20\ : std_logic;
SIGNAL \inst_CE_12|Add0~21\ : std_logic;
SIGNAL \inst_CE_12|Add0~22\ : std_logic;
SIGNAL \inst_CE_12|Add0~23\ : std_logic;
SIGNAL \inst_CE_12|Add0~24\ : std_logic;
SIGNAL \inst_CE_12|Add0~25\ : std_logic;
SIGNAL \inst_CE_12|Mult2~mac_resulta\ : std_logic;
SIGNAL \inst_CE_12|Mult2~323\ : std_logic;
SIGNAL \inst_CE_12|Mult2~324\ : std_logic;
SIGNAL \inst_CE_12|Mult2~325\ : std_logic;
SIGNAL \inst_CE_12|Mult2~326\ : std_logic;
SIGNAL \inst_CE_12|Mult2~327\ : std_logic;
SIGNAL \inst_CE_12|Mult2~328\ : std_logic;
SIGNAL \inst_CE_12|Mult2~329\ : std_logic;
SIGNAL \inst_CE_12|Mult2~330\ : std_logic;
SIGNAL \inst_CE_12|Mult2~331\ : std_logic;
SIGNAL \inst_CE_12|Mult2~332\ : std_logic;
SIGNAL \inst_CE_12|Mult2~333\ : std_logic;
SIGNAL \inst_CE_12|Mult2~334\ : std_logic;
SIGNAL \inst_CE_12|Mult2~335\ : std_logic;
SIGNAL \inst_CE_12|Mult2~336\ : std_logic;
SIGNAL \inst_CE_12|Mult2~337\ : std_logic;
SIGNAL \inst_CE_12|Mult2~338\ : std_logic;
SIGNAL \inst_CE_12|Mult2~339\ : std_logic;
SIGNAL \inst_CE_12|Mult3~mac_resulta\ : std_logic;
SIGNAL \inst_CE_12|Mult3~323\ : std_logic;
SIGNAL \inst_CE_12|Mult3~324\ : std_logic;
SIGNAL \inst_CE_12|Mult3~325\ : std_logic;
SIGNAL \inst_CE_12|Mult3~326\ : std_logic;
SIGNAL \inst_CE_12|Mult3~327\ : std_logic;
SIGNAL \inst_CE_12|Mult3~328\ : std_logic;
SIGNAL \inst_CE_12|Mult3~329\ : std_logic;
SIGNAL \inst_CE_12|Mult3~330\ : std_logic;
SIGNAL \inst_CE_12|Mult3~331\ : std_logic;
SIGNAL \inst_CE_12|Mult3~332\ : std_logic;
SIGNAL \inst_CE_12|Mult3~333\ : std_logic;
SIGNAL \inst_CE_12|Mult3~334\ : std_logic;
SIGNAL \inst_CE_12|Mult3~335\ : std_logic;
SIGNAL \inst_CE_12|Mult3~336\ : std_logic;
SIGNAL \inst_CE_12|Mult3~337\ : std_logic;
SIGNAL \inst_CE_12|Mult3~338\ : std_logic;
SIGNAL \inst_CE_12|Mult3~339\ : std_logic;
SIGNAL \inst_CE_12|Mult4~mac_resulta\ : std_logic;
SIGNAL \inst_CE_12|Mult4~323\ : std_logic;
SIGNAL \inst_CE_12|Mult4~324\ : std_logic;
SIGNAL \inst_CE_12|Mult4~325\ : std_logic;
SIGNAL \inst_CE_12|Mult4~326\ : std_logic;
SIGNAL \inst_CE_12|Mult4~327\ : std_logic;
SIGNAL \inst_CE_12|Mult4~328\ : std_logic;
SIGNAL \inst_CE_12|Mult4~329\ : std_logic;
SIGNAL \inst_CE_12|Mult4~330\ : std_logic;
SIGNAL \inst_CE_12|Mult4~331\ : std_logic;
SIGNAL \inst_CE_12|Mult4~332\ : std_logic;
SIGNAL \inst_CE_12|Mult4~333\ : std_logic;
SIGNAL \inst_CE_12|Mult4~334\ : std_logic;
SIGNAL \inst_CE_12|Mult4~335\ : std_logic;
SIGNAL \inst_CE_12|Mult4~336\ : std_logic;
SIGNAL \inst_CE_12|Mult4~337\ : std_logic;
SIGNAL \inst_CE_12|Mult4~338\ : std_logic;
SIGNAL \inst_CE_12|Mult4~339\ : std_logic;
SIGNAL \inst_CE_12|Mult5~mac_resulta\ : std_logic;
SIGNAL \inst_CE_12|Mult5~323\ : std_logic;
SIGNAL \inst_CE_12|Mult5~324\ : std_logic;
SIGNAL \inst_CE_12|Mult5~325\ : std_logic;
SIGNAL \inst_CE_12|Mult5~326\ : std_logic;
SIGNAL \inst_CE_12|Mult5~327\ : std_logic;
SIGNAL \inst_CE_12|Mult5~328\ : std_logic;
SIGNAL \inst_CE_12|Mult5~329\ : std_logic;
SIGNAL \inst_CE_12|Mult5~330\ : std_logic;
SIGNAL \inst_CE_12|Mult5~331\ : std_logic;
SIGNAL \inst_CE_12|Mult5~332\ : std_logic;
SIGNAL \inst_CE_12|Mult5~333\ : std_logic;
SIGNAL \inst_CE_12|Mult5~334\ : std_logic;
SIGNAL \inst_CE_12|Mult5~335\ : std_logic;
SIGNAL \inst_CE_12|Mult5~336\ : std_logic;
SIGNAL \inst_CE_12|Mult5~337\ : std_logic;
SIGNAL \inst_CE_12|Mult5~338\ : std_logic;
SIGNAL \inst_CE_12|Mult5~339\ : std_logic;
SIGNAL \inst_CE_12|Mult6~mac_resulta\ : std_logic;
SIGNAL \inst_CE_12|Mult6~323\ : std_logic;
SIGNAL \inst_CE_12|Mult6~324\ : std_logic;
SIGNAL \inst_CE_12|Mult6~325\ : std_logic;
SIGNAL \inst_CE_12|Mult6~326\ : std_logic;
SIGNAL \inst_CE_12|Mult6~327\ : std_logic;
SIGNAL \inst_CE_12|Mult6~328\ : std_logic;
SIGNAL \inst_CE_12|Mult6~329\ : std_logic;
SIGNAL \inst_CE_12|Mult6~330\ : std_logic;
SIGNAL \inst_CE_12|Mult6~331\ : std_logic;
SIGNAL \inst_CE_12|Mult6~332\ : std_logic;
SIGNAL \inst_CE_12|Mult6~333\ : std_logic;
SIGNAL \inst_CE_12|Mult6~334\ : std_logic;
SIGNAL \inst_CE_12|Mult6~335\ : std_logic;
SIGNAL \inst_CE_12|Mult6~336\ : std_logic;
SIGNAL \inst_CE_12|Mult6~337\ : std_logic;
SIGNAL \inst_CE_12|Mult6~338\ : std_logic;
SIGNAL \inst_CE_12|Mult6~339\ : std_logic;
SIGNAL \inst_CE_12|Mult7~mac_resulta\ : std_logic;
SIGNAL \inst_CE_12|Mult7~323\ : std_logic;
SIGNAL \inst_CE_12|Mult7~324\ : std_logic;
SIGNAL \inst_CE_12|Mult7~325\ : std_logic;
SIGNAL \inst_CE_12|Mult7~326\ : std_logic;
SIGNAL \inst_CE_12|Mult7~327\ : std_logic;
SIGNAL \inst_CE_12|Mult7~328\ : std_logic;
SIGNAL \inst_CE_12|Mult7~329\ : std_logic;
SIGNAL \inst_CE_12|Mult7~330\ : std_logic;
SIGNAL \inst_CE_12|Mult7~331\ : std_logic;
SIGNAL \inst_CE_12|Mult7~332\ : std_logic;
SIGNAL \inst_CE_12|Mult7~333\ : std_logic;
SIGNAL \inst_CE_12|Mult7~334\ : std_logic;
SIGNAL \inst_CE_12|Mult7~335\ : std_logic;
SIGNAL \inst_CE_12|Mult7~336\ : std_logic;
SIGNAL \inst_CE_12|Mult7~337\ : std_logic;
SIGNAL \inst_CE_12|Mult7~338\ : std_logic;
SIGNAL \inst_CE_12|Mult7~339\ : std_logic;
SIGNAL \n_12[1]~input_o\ : std_logic;
SIGNAL \n_12[0]~input_o\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~0_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~1_combout\ : std_logic;
SIGNAL \n_12[2]~input_o\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~2_combout\ : std_logic;
SIGNAL \inst_SE|_~1_sumout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~3_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~4_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~5_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~4_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~3_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~5_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~3_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~4_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~5_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~18_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~9_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~19_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~18_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~9_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~19_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~18_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~9_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~19_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~16_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~6_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~17_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~6_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~16_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~17_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~16_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~6_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~17_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~14_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~15_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~14_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~15_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~14_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~15_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~12_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~13_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~12_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~13_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~12_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~13_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~10_combout\ : std_logic;
SIGNAL \inst_CE_13|ShiftRight0~11_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~10_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~11_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~10_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~11_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~7_combout\ : std_logic;
SIGNAL \inst_CE_12|ShiftRight0~8_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~7_combout\ : std_logic;
SIGNAL \inst_CE_11|ShiftRight0~8_combout\ : std_logic;
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
SIGNAL \inst_CE_11|sums\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_12|sums\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_CE_13|sums\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_SE|sum_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_in_data[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_in_data[1]~input_o\ : std_logic;
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
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][3]~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit6~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[2][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit7~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~1_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_op_2~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[1][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~0_combout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[2][7]~_Duplicate_6_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[2][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_dffe3a\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_dffe7~q\ : std_logic;
SIGNAL \inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[1][7]~_Duplicate_6_q\ : std_logic;
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
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita0~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita3~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita4~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita5~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita6~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita7~sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_op_1~5_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita7~1_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita7~1_sumout\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a7\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a10\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a11\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a14\ : std_logic;
SIGNAL \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a15\ : std_logic;
SIGNAL \inst_CE_11|ALT_INV_sums\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst_CE_12|ALT_INV_sums\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \ALT_INV_in_data[7]~input_o\ : std_logic;
SIGNAL \inst_CE_13|ALT_INV_sums\ : std_logic_vector(14 DOWNTO 0);

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

\inst_CE_13|Mult8~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_13|Mult8~mac_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\inst_CE_13|Mult8~mac_ENA_bus\ <= (vcc & \enable~input_o\ & \inst_SE|sum_s[0]~0_combout\);

\inst_CE_13|Mult8~mac_AX_bus\ <= (\w_13[8][7]~input_o\ & \w_13[8][7]~input_o\ & \w_13[8][7]~input_o\ & \w_13[8][7]~input_o\ & \w_13[8][7]~input_o\ & \w_13[8][7]~input_o\ & \w_13[8][7]~input_o\ & \w_13[8][7]~input_o\ & \w_13[8][7]~input_o\ & 
\w_13[8][7]~input_o\ & \w_13[8][7]~input_o\ & \w_13[8][6]~input_o\ & \w_13[8][5]~input_o\ & \w_13[8][4]~input_o\ & \w_13[8][3]~input_o\ & \w_13[8][2]~input_o\ & \w_13[8][1]~input_o\ & \w_13[8][0]~input_o\);

\inst_CE_13|Mult8~mac_AY_bus\ <= (\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][4]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][1]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][0]~_Duplicate_3_q\);

\inst_CE_13|Mult8~mac_BX_bus\ <= (\inst_CE_13|Mult7~339\ & \inst_CE_13|Mult7~339\ & \inst_CE_13|Mult7~339\ & \inst_CE_13|Mult7~339\ & \inst_CE_13|Mult7~339\ & \inst_CE_13|Mult7~339\ & \inst_CE_13|Mult7~339\ & \inst_CE_13|Mult7~339\ & 
\inst_CE_13|Mult7~339\ & \inst_CE_13|Mult7~339\ & \inst_CE_13|Mult7~339\ & \inst_CE_13|Mult7~339\ & \inst_CE_13|Mult7~339\ & \inst_CE_13|Mult7~339\ & \inst_CE_13|Mult7~339\ & \inst_CE_13|Mult7~339\ & \inst_CE_13|Mult7~339\ & \inst_CE_13|Mult7~339\);

\inst_CE_13|Mult8~mac_BY_bus\ <= (\inst_CE_13|Mult7~339\ & \inst_CE_13|Mult7~338\ & \inst_CE_13|Mult7~337\ & \inst_CE_13|Mult7~336\ & \inst_CE_13|Mult7~335\ & \inst_CE_13|Mult7~334\ & \inst_CE_13|Mult7~333\ & \inst_CE_13|Mult7~332\ & 
\inst_CE_13|Mult7~331\ & \inst_CE_13|Mult7~330\ & \inst_CE_13|Mult7~329\ & \inst_CE_13|Mult7~328\ & \inst_CE_13|Mult7~327\ & \inst_CE_13|Mult7~326\ & \inst_CE_13|Mult7~325\ & \inst_CE_13|Mult7~324\ & \inst_CE_13|Mult7~323\ & \inst_CE_13|Mult7~mac_resulta\
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
\inst_CE_13|Mult8~337\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(15);
\inst_CE_13|Mult8~338\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(16);
\inst_CE_13|Mult8~339\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(17);
\inst_CE_13|Mult8~8\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(18);
\inst_CE_13|Mult8~9\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(19);
\inst_CE_13|Mult8~10\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(20);
\inst_CE_13|Mult8~11\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(21);
\inst_CE_13|Mult8~12\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(22);
\inst_CE_13|Mult8~13\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(23);
\inst_CE_13|Mult8~14\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(24);
\inst_CE_13|Mult8~15\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(25);
\inst_CE_13|Mult8~16\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(26);
\inst_CE_13|Mult8~17\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(27);
\inst_CE_13|Mult8~18\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(28);
\inst_CE_13|Mult8~19\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(29);
\inst_CE_13|Mult8~20\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(30);
\inst_CE_13|Mult8~21\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(31);
\inst_CE_13|Mult8~22\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(32);
\inst_CE_13|Mult8~23\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(33);
\inst_CE_13|Mult8~24\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(34);
\inst_CE_13|Mult8~25\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(35);
\inst_CE_13|Mult8~26\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(36);
\inst_CE_13|Mult8~27\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(37);
\inst_CE_13|Mult8~28\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(38);
\inst_CE_13|Mult8~29\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(39);
\inst_CE_13|Mult8~30\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(40);
\inst_CE_13|Mult8~31\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(41);
\inst_CE_13|Mult8~32\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(42);
\inst_CE_13|Mult8~33\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(43);
\inst_CE_13|Mult8~34\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(44);
\inst_CE_13|Mult8~35\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(45);
\inst_CE_13|Mult8~36\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(46);
\inst_CE_13|Mult8~37\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(47);
\inst_CE_13|Mult8~38\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(48);
\inst_CE_13|Mult8~39\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(49);
\inst_CE_13|Mult8~40\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(50);
\inst_CE_13|Mult8~41\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(51);
\inst_CE_13|Mult8~42\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(52);
\inst_CE_13|Mult8~43\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(53);
\inst_CE_13|Mult8~44\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(54);
\inst_CE_13|Mult8~45\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(55);
\inst_CE_13|Mult8~46\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(56);
\inst_CE_13|Mult8~47\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(57);
\inst_CE_13|Mult8~48\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(58);
\inst_CE_13|Mult8~49\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(59);
\inst_CE_13|Mult8~50\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(60);
\inst_CE_13|Mult8~51\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(61);
\inst_CE_13|Mult8~52\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(62);
\inst_CE_13|Mult8~53\ <= \inst_CE_13|Mult8~mac_RESULTA_bus\(63);

\inst_CE_12|Mult8~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_12|Mult8~mac_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\inst_CE_12|Mult8~mac_ENA_bus\ <= (vcc & \enable~input_o\ & \inst_SE|sum_s[0]~0_combout\);

\inst_CE_12|Mult8~mac_AX_bus\ <= (\w_12[8][7]~input_o\ & \w_12[8][7]~input_o\ & \w_12[8][7]~input_o\ & \w_12[8][7]~input_o\ & \w_12[8][7]~input_o\ & \w_12[8][7]~input_o\ & \w_12[8][7]~input_o\ & \w_12[8][7]~input_o\ & \w_12[8][7]~input_o\ & 
\w_12[8][7]~input_o\ & \w_12[8][7]~input_o\ & \w_12[8][6]~input_o\ & \w_12[8][5]~input_o\ & \w_12[8][4]~input_o\ & \w_12[8][3]~input_o\ & \w_12[8][2]~input_o\ & \w_12[8][1]~input_o\ & \w_12[8][0]~input_o\);

\inst_CE_12|Mult8~mac_AY_bus\ <= (\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][4]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][1]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][0]~_Duplicate_3_q\);

\inst_CE_12|Mult8~mac_BX_bus\ <= (\inst_CE_12|Mult7~339\ & \inst_CE_12|Mult7~339\ & \inst_CE_12|Mult7~339\ & \inst_CE_12|Mult7~339\ & \inst_CE_12|Mult7~339\ & \inst_CE_12|Mult7~339\ & \inst_CE_12|Mult7~339\ & \inst_CE_12|Mult7~339\ & 
\inst_CE_12|Mult7~339\ & \inst_CE_12|Mult7~339\ & \inst_CE_12|Mult7~339\ & \inst_CE_12|Mult7~339\ & \inst_CE_12|Mult7~339\ & \inst_CE_12|Mult7~339\ & \inst_CE_12|Mult7~339\ & \inst_CE_12|Mult7~339\ & \inst_CE_12|Mult7~339\ & \inst_CE_12|Mult7~339\);

\inst_CE_12|Mult8~mac_BY_bus\ <= (\inst_CE_12|Mult7~339\ & \inst_CE_12|Mult7~338\ & \inst_CE_12|Mult7~337\ & \inst_CE_12|Mult7~336\ & \inst_CE_12|Mult7~335\ & \inst_CE_12|Mult7~334\ & \inst_CE_12|Mult7~333\ & \inst_CE_12|Mult7~332\ & 
\inst_CE_12|Mult7~331\ & \inst_CE_12|Mult7~330\ & \inst_CE_12|Mult7~329\ & \inst_CE_12|Mult7~328\ & \inst_CE_12|Mult7~327\ & \inst_CE_12|Mult7~326\ & \inst_CE_12|Mult7~325\ & \inst_CE_12|Mult7~324\ & \inst_CE_12|Mult7~323\ & \inst_CE_12|Mult7~mac_resulta\
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
\inst_CE_12|Mult8~337\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(15);
\inst_CE_12|Mult8~338\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(16);
\inst_CE_12|Mult8~339\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(17);
\inst_CE_12|Mult8~8\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(18);
\inst_CE_12|Mult8~9\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(19);
\inst_CE_12|Mult8~10\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(20);
\inst_CE_12|Mult8~11\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(21);
\inst_CE_12|Mult8~12\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(22);
\inst_CE_12|Mult8~13\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(23);
\inst_CE_12|Mult8~14\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(24);
\inst_CE_12|Mult8~15\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(25);
\inst_CE_12|Mult8~16\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(26);
\inst_CE_12|Mult8~17\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(27);
\inst_CE_12|Mult8~18\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(28);
\inst_CE_12|Mult8~19\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(29);
\inst_CE_12|Mult8~20\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(30);
\inst_CE_12|Mult8~21\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(31);
\inst_CE_12|Mult8~22\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(32);
\inst_CE_12|Mult8~23\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(33);
\inst_CE_12|Mult8~24\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(34);
\inst_CE_12|Mult8~25\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(35);
\inst_CE_12|Mult8~26\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(36);
\inst_CE_12|Mult8~27\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(37);
\inst_CE_12|Mult8~28\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(38);
\inst_CE_12|Mult8~29\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(39);
\inst_CE_12|Mult8~30\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(40);
\inst_CE_12|Mult8~31\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(41);
\inst_CE_12|Mult8~32\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(42);
\inst_CE_12|Mult8~33\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(43);
\inst_CE_12|Mult8~34\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(44);
\inst_CE_12|Mult8~35\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(45);
\inst_CE_12|Mult8~36\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(46);
\inst_CE_12|Mult8~37\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(47);
\inst_CE_12|Mult8~38\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(48);
\inst_CE_12|Mult8~39\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(49);
\inst_CE_12|Mult8~40\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(50);
\inst_CE_12|Mult8~41\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(51);
\inst_CE_12|Mult8~42\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(52);
\inst_CE_12|Mult8~43\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(53);
\inst_CE_12|Mult8~44\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(54);
\inst_CE_12|Mult8~45\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(55);
\inst_CE_12|Mult8~46\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(56);
\inst_CE_12|Mult8~47\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(57);
\inst_CE_12|Mult8~48\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(58);
\inst_CE_12|Mult8~49\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(59);
\inst_CE_12|Mult8~50\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(60);
\inst_CE_12|Mult8~51\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(61);
\inst_CE_12|Mult8~52\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(62);
\inst_CE_12|Mult8~53\ <= \inst_CE_12|Mult8~mac_RESULTA_bus\(63);

\inst_CE_11|Mult8~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_11|Mult8~mac_CLK_bus\ <= (gnd & \clk~inputCLKENA0_outclk\ & \clk~inputCLKENA0_outclk\);

\inst_CE_11|Mult8~mac_ENA_bus\ <= (vcc & \enable~input_o\ & \inst_SE|sum_s[0]~0_combout\);

\inst_CE_11|Mult8~mac_AX_bus\ <= (\w_11[8][7]~input_o\ & \w_11[8][7]~input_o\ & \w_11[8][7]~input_o\ & \w_11[8][7]~input_o\ & \w_11[8][7]~input_o\ & \w_11[8][7]~input_o\ & \w_11[8][7]~input_o\ & \w_11[8][7]~input_o\ & \w_11[8][7]~input_o\ & 
\w_11[8][7]~input_o\ & \w_11[8][7]~input_o\ & \w_11[8][6]~input_o\ & \w_11[8][5]~input_o\ & \w_11[8][4]~input_o\ & \w_11[8][3]~input_o\ & \w_11[8][2]~input_o\ & \w_11[8][1]~input_o\ & \w_11[8][0]~input_o\);

\inst_CE_11|Mult8~mac_AY_bus\ <= (\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][4]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][1]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][0]~_Duplicate_3_q\);

\inst_CE_11|Mult8~mac_BX_bus\ <= (\inst_CE_11|Mult7~339\ & \inst_CE_11|Mult7~339\ & \inst_CE_11|Mult7~339\ & \inst_CE_11|Mult7~339\ & \inst_CE_11|Mult7~339\ & \inst_CE_11|Mult7~339\ & \inst_CE_11|Mult7~339\ & \inst_CE_11|Mult7~339\ & 
\inst_CE_11|Mult7~339\ & \inst_CE_11|Mult7~339\ & \inst_CE_11|Mult7~339\ & \inst_CE_11|Mult7~339\ & \inst_CE_11|Mult7~339\ & \inst_CE_11|Mult7~339\ & \inst_CE_11|Mult7~339\ & \inst_CE_11|Mult7~339\ & \inst_CE_11|Mult7~339\ & \inst_CE_11|Mult7~339\);

\inst_CE_11|Mult8~mac_BY_bus\ <= (\inst_CE_11|Mult7~339\ & \inst_CE_11|Mult7~338\ & \inst_CE_11|Mult7~337\ & \inst_CE_11|Mult7~336\ & \inst_CE_11|Mult7~335\ & \inst_CE_11|Mult7~334\ & \inst_CE_11|Mult7~333\ & \inst_CE_11|Mult7~332\ & 
\inst_CE_11|Mult7~331\ & \inst_CE_11|Mult7~330\ & \inst_CE_11|Mult7~329\ & \inst_CE_11|Mult7~328\ & \inst_CE_11|Mult7~327\ & \inst_CE_11|Mult7~326\ & \inst_CE_11|Mult7~325\ & \inst_CE_11|Mult7~324\ & \inst_CE_11|Mult7~323\ & \inst_CE_11|Mult7~mac_resulta\
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
\inst_CE_11|Mult8~337\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(15);
\inst_CE_11|Mult8~338\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(16);
\inst_CE_11|Mult8~339\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(17);
\inst_CE_11|Mult8~8\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(18);
\inst_CE_11|Mult8~9\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(19);
\inst_CE_11|Mult8~10\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(20);
\inst_CE_11|Mult8~11\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(21);
\inst_CE_11|Mult8~12\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(22);
\inst_CE_11|Mult8~13\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(23);
\inst_CE_11|Mult8~14\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(24);
\inst_CE_11|Mult8~15\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(25);
\inst_CE_11|Mult8~16\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(26);
\inst_CE_11|Mult8~17\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(27);
\inst_CE_11|Mult8~18\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(28);
\inst_CE_11|Mult8~19\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(29);
\inst_CE_11|Mult8~20\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(30);
\inst_CE_11|Mult8~21\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(31);
\inst_CE_11|Mult8~22\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(32);
\inst_CE_11|Mult8~23\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(33);
\inst_CE_11|Mult8~24\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(34);
\inst_CE_11|Mult8~25\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(35);
\inst_CE_11|Mult8~26\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(36);
\inst_CE_11|Mult8~27\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(37);
\inst_CE_11|Mult8~28\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(38);
\inst_CE_11|Mult8~29\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(39);
\inst_CE_11|Mult8~30\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(40);
\inst_CE_11|Mult8~31\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(41);
\inst_CE_11|Mult8~32\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(42);
\inst_CE_11|Mult8~33\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(43);
\inst_CE_11|Mult8~34\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(44);
\inst_CE_11|Mult8~35\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(45);
\inst_CE_11|Mult8~36\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(46);
\inst_CE_11|Mult8~37\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(47);
\inst_CE_11|Mult8~38\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(48);
\inst_CE_11|Mult8~39\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(49);
\inst_CE_11|Mult8~40\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(50);
\inst_CE_11|Mult8~41\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(51);
\inst_CE_11|Mult8~42\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(52);
\inst_CE_11|Mult8~43\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(53);
\inst_CE_11|Mult8~44\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(54);
\inst_CE_11|Mult8~45\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(55);
\inst_CE_11|Mult8~46\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(56);
\inst_CE_11|Mult8~47\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(57);
\inst_CE_11|Mult8~48\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(58);
\inst_CE_11|Mult8~49\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(59);
\inst_CE_11|Mult8~50\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(60);
\inst_CE_11|Mult8~51\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(61);
\inst_CE_11|Mult8~52\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(62);
\inst_CE_11|Mult8~53\ <= \inst_CE_11|Mult8~mac_RESULTA_bus\(63);

\inst_CE_13|Mult7~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_13|Mult7~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_13|Mult7~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_13|Mult7~mac_AX_bus\ <= (\w_13[7][7]~input_o\ & \w_13[7][7]~input_o\ & \w_13[7][7]~input_o\ & \w_13[7][7]~input_o\ & \w_13[7][7]~input_o\ & \w_13[7][7]~input_o\ & \w_13[7][7]~input_o\ & \w_13[7][7]~input_o\ & \w_13[7][7]~input_o\ & 
\w_13[7][7]~input_o\ & \w_13[7][7]~input_o\ & \w_13[7][6]~input_o\ & \w_13[7][5]~input_o\ & \w_13[7][4]~input_o\ & \w_13[7][3]~input_o\ & \w_13[7][2]~input_o\ & \w_13[7][1]~input_o\ & \w_13[7][0]~input_o\);

\inst_CE_13|Mult7~mac_AY_bus\ <= (\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][4]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][1]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3_q\);

\inst_CE_13|Mult7~mac_BX_bus\ <= (\inst_CE_13|Mult6~339\ & \inst_CE_13|Mult6~339\ & \inst_CE_13|Mult6~339\ & \inst_CE_13|Mult6~339\ & \inst_CE_13|Mult6~339\ & \inst_CE_13|Mult6~339\ & \inst_CE_13|Mult6~339\ & \inst_CE_13|Mult6~339\ & 
\inst_CE_13|Mult6~339\ & \inst_CE_13|Mult6~339\ & \inst_CE_13|Mult6~339\ & \inst_CE_13|Mult6~339\ & \inst_CE_13|Mult6~339\ & \inst_CE_13|Mult6~339\ & \inst_CE_13|Mult6~339\ & \inst_CE_13|Mult6~339\ & \inst_CE_13|Mult6~339\ & \inst_CE_13|Mult6~339\);

\inst_CE_13|Mult7~mac_BY_bus\ <= (\inst_CE_13|Mult6~339\ & \inst_CE_13|Mult6~338\ & \inst_CE_13|Mult6~337\ & \inst_CE_13|Mult6~336\ & \inst_CE_13|Mult6~335\ & \inst_CE_13|Mult6~334\ & \inst_CE_13|Mult6~333\ & \inst_CE_13|Mult6~332\ & 
\inst_CE_13|Mult6~331\ & \inst_CE_13|Mult6~330\ & \inst_CE_13|Mult6~329\ & \inst_CE_13|Mult6~328\ & \inst_CE_13|Mult6~327\ & \inst_CE_13|Mult6~326\ & \inst_CE_13|Mult6~325\ & \inst_CE_13|Mult6~324\ & \inst_CE_13|Mult6~323\ & \inst_CE_13|Mult6~mac_resulta\
);

\inst_CE_13|Mult7~mac_resulta\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(0);
\inst_CE_13|Mult7~323\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(1);
\inst_CE_13|Mult7~324\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(2);
\inst_CE_13|Mult7~325\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(3);
\inst_CE_13|Mult7~326\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(4);
\inst_CE_13|Mult7~327\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(5);
\inst_CE_13|Mult7~328\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(6);
\inst_CE_13|Mult7~329\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(7);
\inst_CE_13|Mult7~330\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(8);
\inst_CE_13|Mult7~331\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(9);
\inst_CE_13|Mult7~332\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(10);
\inst_CE_13|Mult7~333\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(11);
\inst_CE_13|Mult7~334\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(12);
\inst_CE_13|Mult7~335\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(13);
\inst_CE_13|Mult7~336\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(14);
\inst_CE_13|Mult7~337\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(15);
\inst_CE_13|Mult7~338\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(16);
\inst_CE_13|Mult7~339\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(17);
\inst_CE_13|Mult7~8\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(18);
\inst_CE_13|Mult7~9\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(19);
\inst_CE_13|Mult7~10\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(20);
\inst_CE_13|Mult7~11\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(21);
\inst_CE_13|Mult7~12\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(22);
\inst_CE_13|Mult7~13\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(23);
\inst_CE_13|Mult7~14\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(24);
\inst_CE_13|Mult7~15\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(25);
\inst_CE_13|Mult7~16\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(26);
\inst_CE_13|Mult7~17\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(27);
\inst_CE_13|Mult7~18\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(28);
\inst_CE_13|Mult7~19\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(29);
\inst_CE_13|Mult7~20\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(30);
\inst_CE_13|Mult7~21\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(31);
\inst_CE_13|Mult7~22\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(32);
\inst_CE_13|Mult7~23\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(33);
\inst_CE_13|Mult7~24\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(34);
\inst_CE_13|Mult7~25\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(35);
\inst_CE_13|Mult7~26\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(36);
\inst_CE_13|Mult7~27\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(37);
\inst_CE_13|Mult7~28\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(38);
\inst_CE_13|Mult7~29\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(39);
\inst_CE_13|Mult7~30\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(40);
\inst_CE_13|Mult7~31\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(41);
\inst_CE_13|Mult7~32\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(42);
\inst_CE_13|Mult7~33\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(43);
\inst_CE_13|Mult7~34\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(44);
\inst_CE_13|Mult7~35\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(45);
\inst_CE_13|Mult7~36\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(46);
\inst_CE_13|Mult7~37\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(47);
\inst_CE_13|Mult7~38\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(48);
\inst_CE_13|Mult7~39\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(49);
\inst_CE_13|Mult7~40\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(50);
\inst_CE_13|Mult7~41\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(51);
\inst_CE_13|Mult7~42\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(52);
\inst_CE_13|Mult7~43\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(53);
\inst_CE_13|Mult7~44\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(54);
\inst_CE_13|Mult7~45\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(55);
\inst_CE_13|Mult7~46\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(56);
\inst_CE_13|Mult7~47\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(57);
\inst_CE_13|Mult7~48\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(58);
\inst_CE_13|Mult7~49\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(59);
\inst_CE_13|Mult7~50\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(60);
\inst_CE_13|Mult7~51\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(61);
\inst_CE_13|Mult7~52\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(62);
\inst_CE_13|Mult7~53\ <= \inst_CE_13|Mult7~mac_RESULTA_bus\(63);

\inst_CE_12|Mult7~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_12|Mult7~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_12|Mult7~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_12|Mult7~mac_AX_bus\ <= (\w_12[7][7]~input_o\ & \w_12[7][7]~input_o\ & \w_12[7][7]~input_o\ & \w_12[7][7]~input_o\ & \w_12[7][7]~input_o\ & \w_12[7][7]~input_o\ & \w_12[7][7]~input_o\ & \w_12[7][7]~input_o\ & \w_12[7][7]~input_o\ & 
\w_12[7][7]~input_o\ & \w_12[7][7]~input_o\ & \w_12[7][6]~input_o\ & \w_12[7][5]~input_o\ & \w_12[7][4]~input_o\ & \w_12[7][3]~input_o\ & \w_12[7][2]~input_o\ & \w_12[7][1]~input_o\ & \w_12[7][0]~input_o\);

\inst_CE_12|Mult7~mac_AY_bus\ <= (\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][4]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][1]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3_q\);

\inst_CE_12|Mult7~mac_BX_bus\ <= (\inst_CE_12|Mult6~339\ & \inst_CE_12|Mult6~339\ & \inst_CE_12|Mult6~339\ & \inst_CE_12|Mult6~339\ & \inst_CE_12|Mult6~339\ & \inst_CE_12|Mult6~339\ & \inst_CE_12|Mult6~339\ & \inst_CE_12|Mult6~339\ & 
\inst_CE_12|Mult6~339\ & \inst_CE_12|Mult6~339\ & \inst_CE_12|Mult6~339\ & \inst_CE_12|Mult6~339\ & \inst_CE_12|Mult6~339\ & \inst_CE_12|Mult6~339\ & \inst_CE_12|Mult6~339\ & \inst_CE_12|Mult6~339\ & \inst_CE_12|Mult6~339\ & \inst_CE_12|Mult6~339\);

\inst_CE_12|Mult7~mac_BY_bus\ <= (\inst_CE_12|Mult6~339\ & \inst_CE_12|Mult6~338\ & \inst_CE_12|Mult6~337\ & \inst_CE_12|Mult6~336\ & \inst_CE_12|Mult6~335\ & \inst_CE_12|Mult6~334\ & \inst_CE_12|Mult6~333\ & \inst_CE_12|Mult6~332\ & 
\inst_CE_12|Mult6~331\ & \inst_CE_12|Mult6~330\ & \inst_CE_12|Mult6~329\ & \inst_CE_12|Mult6~328\ & \inst_CE_12|Mult6~327\ & \inst_CE_12|Mult6~326\ & \inst_CE_12|Mult6~325\ & \inst_CE_12|Mult6~324\ & \inst_CE_12|Mult6~323\ & \inst_CE_12|Mult6~mac_resulta\
);

\inst_CE_12|Mult7~mac_resulta\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(0);
\inst_CE_12|Mult7~323\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(1);
\inst_CE_12|Mult7~324\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(2);
\inst_CE_12|Mult7~325\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(3);
\inst_CE_12|Mult7~326\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(4);
\inst_CE_12|Mult7~327\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(5);
\inst_CE_12|Mult7~328\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(6);
\inst_CE_12|Mult7~329\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(7);
\inst_CE_12|Mult7~330\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(8);
\inst_CE_12|Mult7~331\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(9);
\inst_CE_12|Mult7~332\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(10);
\inst_CE_12|Mult7~333\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(11);
\inst_CE_12|Mult7~334\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(12);
\inst_CE_12|Mult7~335\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(13);
\inst_CE_12|Mult7~336\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(14);
\inst_CE_12|Mult7~337\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(15);
\inst_CE_12|Mult7~338\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(16);
\inst_CE_12|Mult7~339\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(17);
\inst_CE_12|Mult7~8\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(18);
\inst_CE_12|Mult7~9\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(19);
\inst_CE_12|Mult7~10\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(20);
\inst_CE_12|Mult7~11\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(21);
\inst_CE_12|Mult7~12\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(22);
\inst_CE_12|Mult7~13\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(23);
\inst_CE_12|Mult7~14\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(24);
\inst_CE_12|Mult7~15\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(25);
\inst_CE_12|Mult7~16\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(26);
\inst_CE_12|Mult7~17\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(27);
\inst_CE_12|Mult7~18\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(28);
\inst_CE_12|Mult7~19\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(29);
\inst_CE_12|Mult7~20\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(30);
\inst_CE_12|Mult7~21\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(31);
\inst_CE_12|Mult7~22\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(32);
\inst_CE_12|Mult7~23\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(33);
\inst_CE_12|Mult7~24\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(34);
\inst_CE_12|Mult7~25\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(35);
\inst_CE_12|Mult7~26\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(36);
\inst_CE_12|Mult7~27\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(37);
\inst_CE_12|Mult7~28\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(38);
\inst_CE_12|Mult7~29\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(39);
\inst_CE_12|Mult7~30\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(40);
\inst_CE_12|Mult7~31\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(41);
\inst_CE_12|Mult7~32\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(42);
\inst_CE_12|Mult7~33\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(43);
\inst_CE_12|Mult7~34\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(44);
\inst_CE_12|Mult7~35\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(45);
\inst_CE_12|Mult7~36\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(46);
\inst_CE_12|Mult7~37\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(47);
\inst_CE_12|Mult7~38\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(48);
\inst_CE_12|Mult7~39\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(49);
\inst_CE_12|Mult7~40\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(50);
\inst_CE_12|Mult7~41\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(51);
\inst_CE_12|Mult7~42\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(52);
\inst_CE_12|Mult7~43\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(53);
\inst_CE_12|Mult7~44\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(54);
\inst_CE_12|Mult7~45\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(55);
\inst_CE_12|Mult7~46\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(56);
\inst_CE_12|Mult7~47\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(57);
\inst_CE_12|Mult7~48\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(58);
\inst_CE_12|Mult7~49\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(59);
\inst_CE_12|Mult7~50\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(60);
\inst_CE_12|Mult7~51\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(61);
\inst_CE_12|Mult7~52\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(62);
\inst_CE_12|Mult7~53\ <= \inst_CE_12|Mult7~mac_RESULTA_bus\(63);

\inst_CE_11|Mult7~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_11|Mult7~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_11|Mult7~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_11|Mult7~mac_AX_bus\ <= (\w_11[7][7]~input_o\ & \w_11[7][7]~input_o\ & \w_11[7][7]~input_o\ & \w_11[7][7]~input_o\ & \w_11[7][7]~input_o\ & \w_11[7][7]~input_o\ & \w_11[7][7]~input_o\ & \w_11[7][7]~input_o\ & \w_11[7][7]~input_o\ & 
\w_11[7][7]~input_o\ & \w_11[7][7]~input_o\ & \w_11[7][6]~input_o\ & \w_11[7][5]~input_o\ & \w_11[7][4]~input_o\ & \w_11[7][3]~input_o\ & \w_11[7][2]~input_o\ & \w_11[7][1]~input_o\ & \w_11[7][0]~input_o\);

\inst_CE_11|Mult7~mac_AY_bus\ <= (\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][4]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][1]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3_q\);

\inst_CE_11|Mult7~mac_BX_bus\ <= (\inst_CE_11|Mult6~339\ & \inst_CE_11|Mult6~339\ & \inst_CE_11|Mult6~339\ & \inst_CE_11|Mult6~339\ & \inst_CE_11|Mult6~339\ & \inst_CE_11|Mult6~339\ & \inst_CE_11|Mult6~339\ & \inst_CE_11|Mult6~339\ & 
\inst_CE_11|Mult6~339\ & \inst_CE_11|Mult6~339\ & \inst_CE_11|Mult6~339\ & \inst_CE_11|Mult6~339\ & \inst_CE_11|Mult6~339\ & \inst_CE_11|Mult6~339\ & \inst_CE_11|Mult6~339\ & \inst_CE_11|Mult6~339\ & \inst_CE_11|Mult6~339\ & \inst_CE_11|Mult6~339\);

\inst_CE_11|Mult7~mac_BY_bus\ <= (\inst_CE_11|Mult6~339\ & \inst_CE_11|Mult6~338\ & \inst_CE_11|Mult6~337\ & \inst_CE_11|Mult6~336\ & \inst_CE_11|Mult6~335\ & \inst_CE_11|Mult6~334\ & \inst_CE_11|Mult6~333\ & \inst_CE_11|Mult6~332\ & 
\inst_CE_11|Mult6~331\ & \inst_CE_11|Mult6~330\ & \inst_CE_11|Mult6~329\ & \inst_CE_11|Mult6~328\ & \inst_CE_11|Mult6~327\ & \inst_CE_11|Mult6~326\ & \inst_CE_11|Mult6~325\ & \inst_CE_11|Mult6~324\ & \inst_CE_11|Mult6~323\ & \inst_CE_11|Mult6~mac_resulta\
);

\inst_CE_11|Mult7~mac_resulta\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(0);
\inst_CE_11|Mult7~323\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(1);
\inst_CE_11|Mult7~324\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(2);
\inst_CE_11|Mult7~325\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(3);
\inst_CE_11|Mult7~326\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(4);
\inst_CE_11|Mult7~327\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(5);
\inst_CE_11|Mult7~328\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(6);
\inst_CE_11|Mult7~329\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(7);
\inst_CE_11|Mult7~330\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(8);
\inst_CE_11|Mult7~331\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(9);
\inst_CE_11|Mult7~332\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(10);
\inst_CE_11|Mult7~333\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(11);
\inst_CE_11|Mult7~334\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(12);
\inst_CE_11|Mult7~335\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(13);
\inst_CE_11|Mult7~336\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(14);
\inst_CE_11|Mult7~337\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(15);
\inst_CE_11|Mult7~338\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(16);
\inst_CE_11|Mult7~339\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(17);
\inst_CE_11|Mult7~8\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(18);
\inst_CE_11|Mult7~9\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(19);
\inst_CE_11|Mult7~10\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(20);
\inst_CE_11|Mult7~11\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(21);
\inst_CE_11|Mult7~12\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(22);
\inst_CE_11|Mult7~13\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(23);
\inst_CE_11|Mult7~14\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(24);
\inst_CE_11|Mult7~15\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(25);
\inst_CE_11|Mult7~16\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(26);
\inst_CE_11|Mult7~17\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(27);
\inst_CE_11|Mult7~18\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(28);
\inst_CE_11|Mult7~19\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(29);
\inst_CE_11|Mult7~20\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(30);
\inst_CE_11|Mult7~21\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(31);
\inst_CE_11|Mult7~22\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(32);
\inst_CE_11|Mult7~23\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(33);
\inst_CE_11|Mult7~24\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(34);
\inst_CE_11|Mult7~25\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(35);
\inst_CE_11|Mult7~26\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(36);
\inst_CE_11|Mult7~27\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(37);
\inst_CE_11|Mult7~28\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(38);
\inst_CE_11|Mult7~29\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(39);
\inst_CE_11|Mult7~30\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(40);
\inst_CE_11|Mult7~31\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(41);
\inst_CE_11|Mult7~32\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(42);
\inst_CE_11|Mult7~33\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(43);
\inst_CE_11|Mult7~34\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(44);
\inst_CE_11|Mult7~35\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(45);
\inst_CE_11|Mult7~36\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(46);
\inst_CE_11|Mult7~37\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(47);
\inst_CE_11|Mult7~38\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(48);
\inst_CE_11|Mult7~39\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(49);
\inst_CE_11|Mult7~40\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(50);
\inst_CE_11|Mult7~41\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(51);
\inst_CE_11|Mult7~42\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(52);
\inst_CE_11|Mult7~43\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(53);
\inst_CE_11|Mult7~44\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(54);
\inst_CE_11|Mult7~45\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(55);
\inst_CE_11|Mult7~46\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(56);
\inst_CE_11|Mult7~47\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(57);
\inst_CE_11|Mult7~48\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(58);
\inst_CE_11|Mult7~49\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(59);
\inst_CE_11|Mult7~50\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(60);
\inst_CE_11|Mult7~51\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(61);
\inst_CE_11|Mult7~52\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(62);
\inst_CE_11|Mult7~53\ <= \inst_CE_11|Mult7~mac_RESULTA_bus\(63);

\inst_CE_13|Mult6~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_13|Mult6~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_13|Mult6~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_13|Mult6~mac_AX_bus\ <= (\w_13[6][7]~input_o\ & \w_13[6][7]~input_o\ & \w_13[6][7]~input_o\ & \w_13[6][7]~input_o\ & \w_13[6][7]~input_o\ & \w_13[6][7]~input_o\ & \w_13[6][7]~input_o\ & \w_13[6][7]~input_o\ & \w_13[6][7]~input_o\ & 
\w_13[6][7]~input_o\ & \w_13[6][7]~input_o\ & \w_13[6][6]~input_o\ & \w_13[6][5]~input_o\ & \w_13[6][4]~input_o\ & \w_13[6][3]~input_o\ & \w_13[6][2]~input_o\ & \w_13[6][1]~input_o\ & \w_13[6][0]~input_o\);

\inst_CE_13|Mult6~mac_AY_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a1\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a2\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a3\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a4\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a5\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a6\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a7\);

\inst_CE_13|Mult6~mac_BX_bus\ <= (\inst_CE_13|Mult5~339\ & \inst_CE_13|Mult5~339\ & \inst_CE_13|Mult5~339\ & \inst_CE_13|Mult5~339\ & \inst_CE_13|Mult5~339\ & \inst_CE_13|Mult5~339\ & \inst_CE_13|Mult5~339\ & \inst_CE_13|Mult5~339\ & 
\inst_CE_13|Mult5~339\ & \inst_CE_13|Mult5~339\ & \inst_CE_13|Mult5~339\ & \inst_CE_13|Mult5~339\ & \inst_CE_13|Mult5~339\ & \inst_CE_13|Mult5~339\ & \inst_CE_13|Mult5~339\ & \inst_CE_13|Mult5~339\ & \inst_CE_13|Mult5~339\ & \inst_CE_13|Mult5~339\);

\inst_CE_13|Mult6~mac_BY_bus\ <= (\inst_CE_13|Mult5~339\ & \inst_CE_13|Mult5~338\ & \inst_CE_13|Mult5~337\ & \inst_CE_13|Mult5~336\ & \inst_CE_13|Mult5~335\ & \inst_CE_13|Mult5~334\ & \inst_CE_13|Mult5~333\ & \inst_CE_13|Mult5~332\ & 
\inst_CE_13|Mult5~331\ & \inst_CE_13|Mult5~330\ & \inst_CE_13|Mult5~329\ & \inst_CE_13|Mult5~328\ & \inst_CE_13|Mult5~327\ & \inst_CE_13|Mult5~326\ & \inst_CE_13|Mult5~325\ & \inst_CE_13|Mult5~324\ & \inst_CE_13|Mult5~323\ & \inst_CE_13|Mult5~mac_resulta\
);

\inst_CE_13|Mult6~mac_resulta\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(0);
\inst_CE_13|Mult6~323\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(1);
\inst_CE_13|Mult6~324\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(2);
\inst_CE_13|Mult6~325\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(3);
\inst_CE_13|Mult6~326\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(4);
\inst_CE_13|Mult6~327\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(5);
\inst_CE_13|Mult6~328\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(6);
\inst_CE_13|Mult6~329\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(7);
\inst_CE_13|Mult6~330\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(8);
\inst_CE_13|Mult6~331\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(9);
\inst_CE_13|Mult6~332\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(10);
\inst_CE_13|Mult6~333\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(11);
\inst_CE_13|Mult6~334\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(12);
\inst_CE_13|Mult6~335\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(13);
\inst_CE_13|Mult6~336\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(14);
\inst_CE_13|Mult6~337\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(15);
\inst_CE_13|Mult6~338\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(16);
\inst_CE_13|Mult6~339\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(17);
\inst_CE_13|Mult6~8\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(18);
\inst_CE_13|Mult6~9\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(19);
\inst_CE_13|Mult6~10\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(20);
\inst_CE_13|Mult6~11\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(21);
\inst_CE_13|Mult6~12\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(22);
\inst_CE_13|Mult6~13\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(23);
\inst_CE_13|Mult6~14\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(24);
\inst_CE_13|Mult6~15\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(25);
\inst_CE_13|Mult6~16\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(26);
\inst_CE_13|Mult6~17\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(27);
\inst_CE_13|Mult6~18\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(28);
\inst_CE_13|Mult6~19\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(29);
\inst_CE_13|Mult6~20\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(30);
\inst_CE_13|Mult6~21\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(31);
\inst_CE_13|Mult6~22\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(32);
\inst_CE_13|Mult6~23\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(33);
\inst_CE_13|Mult6~24\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(34);
\inst_CE_13|Mult6~25\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(35);
\inst_CE_13|Mult6~26\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(36);
\inst_CE_13|Mult6~27\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(37);
\inst_CE_13|Mult6~28\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(38);
\inst_CE_13|Mult6~29\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(39);
\inst_CE_13|Mult6~30\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(40);
\inst_CE_13|Mult6~31\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(41);
\inst_CE_13|Mult6~32\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(42);
\inst_CE_13|Mult6~33\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(43);
\inst_CE_13|Mult6~34\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(44);
\inst_CE_13|Mult6~35\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(45);
\inst_CE_13|Mult6~36\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(46);
\inst_CE_13|Mult6~37\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(47);
\inst_CE_13|Mult6~38\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(48);
\inst_CE_13|Mult6~39\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(49);
\inst_CE_13|Mult6~40\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(50);
\inst_CE_13|Mult6~41\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(51);
\inst_CE_13|Mult6~42\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(52);
\inst_CE_13|Mult6~43\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(53);
\inst_CE_13|Mult6~44\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(54);
\inst_CE_13|Mult6~45\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(55);
\inst_CE_13|Mult6~46\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(56);
\inst_CE_13|Mult6~47\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(57);
\inst_CE_13|Mult6~48\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(58);
\inst_CE_13|Mult6~49\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(59);
\inst_CE_13|Mult6~50\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(60);
\inst_CE_13|Mult6~51\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(61);
\inst_CE_13|Mult6~52\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(62);
\inst_CE_13|Mult6~53\ <= \inst_CE_13|Mult6~mac_RESULTA_bus\(63);

\inst_CE_12|Mult6~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_12|Mult6~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_12|Mult6~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_12|Mult6~mac_AX_bus\ <= (\w_12[6][7]~input_o\ & \w_12[6][7]~input_o\ & \w_12[6][7]~input_o\ & \w_12[6][7]~input_o\ & \w_12[6][7]~input_o\ & \w_12[6][7]~input_o\ & \w_12[6][7]~input_o\ & \w_12[6][7]~input_o\ & \w_12[6][7]~input_o\ & 
\w_12[6][7]~input_o\ & \w_12[6][7]~input_o\ & \w_12[6][6]~input_o\ & \w_12[6][5]~input_o\ & \w_12[6][4]~input_o\ & \w_12[6][3]~input_o\ & \w_12[6][2]~input_o\ & \w_12[6][1]~input_o\ & \w_12[6][0]~input_o\);

\inst_CE_12|Mult6~mac_AY_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a1\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a2\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a3\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a4\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a5\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a6\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a7\);

\inst_CE_12|Mult6~mac_BX_bus\ <= (\inst_CE_12|Mult5~339\ & \inst_CE_12|Mult5~339\ & \inst_CE_12|Mult5~339\ & \inst_CE_12|Mult5~339\ & \inst_CE_12|Mult5~339\ & \inst_CE_12|Mult5~339\ & \inst_CE_12|Mult5~339\ & \inst_CE_12|Mult5~339\ & 
\inst_CE_12|Mult5~339\ & \inst_CE_12|Mult5~339\ & \inst_CE_12|Mult5~339\ & \inst_CE_12|Mult5~339\ & \inst_CE_12|Mult5~339\ & \inst_CE_12|Mult5~339\ & \inst_CE_12|Mult5~339\ & \inst_CE_12|Mult5~339\ & \inst_CE_12|Mult5~339\ & \inst_CE_12|Mult5~339\);

\inst_CE_12|Mult6~mac_BY_bus\ <= (\inst_CE_12|Mult5~339\ & \inst_CE_12|Mult5~338\ & \inst_CE_12|Mult5~337\ & \inst_CE_12|Mult5~336\ & \inst_CE_12|Mult5~335\ & \inst_CE_12|Mult5~334\ & \inst_CE_12|Mult5~333\ & \inst_CE_12|Mult5~332\ & 
\inst_CE_12|Mult5~331\ & \inst_CE_12|Mult5~330\ & \inst_CE_12|Mult5~329\ & \inst_CE_12|Mult5~328\ & \inst_CE_12|Mult5~327\ & \inst_CE_12|Mult5~326\ & \inst_CE_12|Mult5~325\ & \inst_CE_12|Mult5~324\ & \inst_CE_12|Mult5~323\ & \inst_CE_12|Mult5~mac_resulta\
);

\inst_CE_12|Mult6~mac_resulta\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(0);
\inst_CE_12|Mult6~323\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(1);
\inst_CE_12|Mult6~324\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(2);
\inst_CE_12|Mult6~325\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(3);
\inst_CE_12|Mult6~326\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(4);
\inst_CE_12|Mult6~327\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(5);
\inst_CE_12|Mult6~328\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(6);
\inst_CE_12|Mult6~329\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(7);
\inst_CE_12|Mult6~330\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(8);
\inst_CE_12|Mult6~331\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(9);
\inst_CE_12|Mult6~332\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(10);
\inst_CE_12|Mult6~333\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(11);
\inst_CE_12|Mult6~334\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(12);
\inst_CE_12|Mult6~335\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(13);
\inst_CE_12|Mult6~336\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(14);
\inst_CE_12|Mult6~337\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(15);
\inst_CE_12|Mult6~338\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(16);
\inst_CE_12|Mult6~339\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(17);
\inst_CE_12|Mult6~8\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(18);
\inst_CE_12|Mult6~9\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(19);
\inst_CE_12|Mult6~10\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(20);
\inst_CE_12|Mult6~11\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(21);
\inst_CE_12|Mult6~12\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(22);
\inst_CE_12|Mult6~13\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(23);
\inst_CE_12|Mult6~14\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(24);
\inst_CE_12|Mult6~15\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(25);
\inst_CE_12|Mult6~16\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(26);
\inst_CE_12|Mult6~17\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(27);
\inst_CE_12|Mult6~18\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(28);
\inst_CE_12|Mult6~19\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(29);
\inst_CE_12|Mult6~20\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(30);
\inst_CE_12|Mult6~21\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(31);
\inst_CE_12|Mult6~22\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(32);
\inst_CE_12|Mult6~23\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(33);
\inst_CE_12|Mult6~24\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(34);
\inst_CE_12|Mult6~25\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(35);
\inst_CE_12|Mult6~26\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(36);
\inst_CE_12|Mult6~27\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(37);
\inst_CE_12|Mult6~28\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(38);
\inst_CE_12|Mult6~29\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(39);
\inst_CE_12|Mult6~30\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(40);
\inst_CE_12|Mult6~31\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(41);
\inst_CE_12|Mult6~32\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(42);
\inst_CE_12|Mult6~33\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(43);
\inst_CE_12|Mult6~34\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(44);
\inst_CE_12|Mult6~35\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(45);
\inst_CE_12|Mult6~36\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(46);
\inst_CE_12|Mult6~37\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(47);
\inst_CE_12|Mult6~38\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(48);
\inst_CE_12|Mult6~39\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(49);
\inst_CE_12|Mult6~40\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(50);
\inst_CE_12|Mult6~41\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(51);
\inst_CE_12|Mult6~42\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(52);
\inst_CE_12|Mult6~43\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(53);
\inst_CE_12|Mult6~44\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(54);
\inst_CE_12|Mult6~45\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(55);
\inst_CE_12|Mult6~46\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(56);
\inst_CE_12|Mult6~47\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(57);
\inst_CE_12|Mult6~48\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(58);
\inst_CE_12|Mult6~49\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(59);
\inst_CE_12|Mult6~50\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(60);
\inst_CE_12|Mult6~51\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(61);
\inst_CE_12|Mult6~52\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(62);
\inst_CE_12|Mult6~53\ <= \inst_CE_12|Mult6~mac_RESULTA_bus\(63);

\inst_CE_11|Mult6~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_11|Mult6~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_11|Mult6~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_11|Mult6~mac_AX_bus\ <= (\w_11[6][7]~input_o\ & \w_11[6][7]~input_o\ & \w_11[6][7]~input_o\ & \w_11[6][7]~input_o\ & \w_11[6][7]~input_o\ & \w_11[6][7]~input_o\ & \w_11[6][7]~input_o\ & \w_11[6][7]~input_o\ & \w_11[6][7]~input_o\ & 
\w_11[6][7]~input_o\ & \w_11[6][7]~input_o\ & \w_11[6][6]~input_o\ & \w_11[6][5]~input_o\ & \w_11[6][4]~input_o\ & \w_11[6][3]~input_o\ & \w_11[6][2]~input_o\ & \w_11[6][1]~input_o\ & \w_11[6][0]~input_o\);

\inst_CE_11|Mult6~mac_AY_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a1\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a2\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a3\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a4\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a5\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a6\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a7\);

\inst_CE_11|Mult6~mac_BX_bus\ <= (\inst_CE_11|Mult5~339\ & \inst_CE_11|Mult5~339\ & \inst_CE_11|Mult5~339\ & \inst_CE_11|Mult5~339\ & \inst_CE_11|Mult5~339\ & \inst_CE_11|Mult5~339\ & \inst_CE_11|Mult5~339\ & \inst_CE_11|Mult5~339\ & 
\inst_CE_11|Mult5~339\ & \inst_CE_11|Mult5~339\ & \inst_CE_11|Mult5~339\ & \inst_CE_11|Mult5~339\ & \inst_CE_11|Mult5~339\ & \inst_CE_11|Mult5~339\ & \inst_CE_11|Mult5~339\ & \inst_CE_11|Mult5~339\ & \inst_CE_11|Mult5~339\ & \inst_CE_11|Mult5~339\);

\inst_CE_11|Mult6~mac_BY_bus\ <= (\inst_CE_11|Mult5~339\ & \inst_CE_11|Mult5~338\ & \inst_CE_11|Mult5~337\ & \inst_CE_11|Mult5~336\ & \inst_CE_11|Mult5~335\ & \inst_CE_11|Mult5~334\ & \inst_CE_11|Mult5~333\ & \inst_CE_11|Mult5~332\ & 
\inst_CE_11|Mult5~331\ & \inst_CE_11|Mult5~330\ & \inst_CE_11|Mult5~329\ & \inst_CE_11|Mult5~328\ & \inst_CE_11|Mult5~327\ & \inst_CE_11|Mult5~326\ & \inst_CE_11|Mult5~325\ & \inst_CE_11|Mult5~324\ & \inst_CE_11|Mult5~323\ & \inst_CE_11|Mult5~mac_resulta\
);

\inst_CE_11|Mult6~mac_resulta\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(0);
\inst_CE_11|Mult6~323\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(1);
\inst_CE_11|Mult6~324\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(2);
\inst_CE_11|Mult6~325\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(3);
\inst_CE_11|Mult6~326\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(4);
\inst_CE_11|Mult6~327\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(5);
\inst_CE_11|Mult6~328\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(6);
\inst_CE_11|Mult6~329\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(7);
\inst_CE_11|Mult6~330\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(8);
\inst_CE_11|Mult6~331\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(9);
\inst_CE_11|Mult6~332\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(10);
\inst_CE_11|Mult6~333\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(11);
\inst_CE_11|Mult6~334\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(12);
\inst_CE_11|Mult6~335\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(13);
\inst_CE_11|Mult6~336\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(14);
\inst_CE_11|Mult6~337\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(15);
\inst_CE_11|Mult6~338\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(16);
\inst_CE_11|Mult6~339\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(17);
\inst_CE_11|Mult6~8\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(18);
\inst_CE_11|Mult6~9\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(19);
\inst_CE_11|Mult6~10\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(20);
\inst_CE_11|Mult6~11\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(21);
\inst_CE_11|Mult6~12\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(22);
\inst_CE_11|Mult6~13\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(23);
\inst_CE_11|Mult6~14\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(24);
\inst_CE_11|Mult6~15\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(25);
\inst_CE_11|Mult6~16\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(26);
\inst_CE_11|Mult6~17\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(27);
\inst_CE_11|Mult6~18\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(28);
\inst_CE_11|Mult6~19\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(29);
\inst_CE_11|Mult6~20\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(30);
\inst_CE_11|Mult6~21\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(31);
\inst_CE_11|Mult6~22\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(32);
\inst_CE_11|Mult6~23\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(33);
\inst_CE_11|Mult6~24\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(34);
\inst_CE_11|Mult6~25\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(35);
\inst_CE_11|Mult6~26\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(36);
\inst_CE_11|Mult6~27\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(37);
\inst_CE_11|Mult6~28\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(38);
\inst_CE_11|Mult6~29\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(39);
\inst_CE_11|Mult6~30\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(40);
\inst_CE_11|Mult6~31\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(41);
\inst_CE_11|Mult6~32\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(42);
\inst_CE_11|Mult6~33\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(43);
\inst_CE_11|Mult6~34\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(44);
\inst_CE_11|Mult6~35\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(45);
\inst_CE_11|Mult6~36\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(46);
\inst_CE_11|Mult6~37\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(47);
\inst_CE_11|Mult6~38\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(48);
\inst_CE_11|Mult6~39\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(49);
\inst_CE_11|Mult6~40\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(50);
\inst_CE_11|Mult6~41\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(51);
\inst_CE_11|Mult6~42\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(52);
\inst_CE_11|Mult6~43\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(53);
\inst_CE_11|Mult6~44\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(54);
\inst_CE_11|Mult6~45\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(55);
\inst_CE_11|Mult6~46\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(56);
\inst_CE_11|Mult6~47\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(57);
\inst_CE_11|Mult6~48\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(58);
\inst_CE_11|Mult6~49\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(59);
\inst_CE_11|Mult6~50\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(60);
\inst_CE_11|Mult6~51\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(61);
\inst_CE_11|Mult6~52\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(62);
\inst_CE_11|Mult6~53\ <= \inst_CE_11|Mult6~mac_RESULTA_bus\(63);

\inst_CE_13|Mult5~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_13|Mult5~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_13|Mult5~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_13|Mult5~mac_AX_bus\ <= (\w_13[5][7]~input_o\ & \w_13[5][7]~input_o\ & \w_13[5][7]~input_o\ & \w_13[5][7]~input_o\ & \w_13[5][7]~input_o\ & \w_13[5][7]~input_o\ & \w_13[5][7]~input_o\ & \w_13[5][7]~input_o\ & \w_13[5][7]~input_o\ & 
\w_13[5][7]~input_o\ & \w_13[5][7]~input_o\ & \w_13[5][6]~input_o\ & \w_13[5][5]~input_o\ & \w_13[5][4]~input_o\ & \w_13[5][3]~input_o\ & \w_13[5][2]~input_o\ & \w_13[5][1]~input_o\ & \w_13[5][0]~input_o\);

\inst_CE_13|Mult5~mac_AY_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][4]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][1]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][0]~_Duplicate_3_q\);

\inst_CE_13|Mult5~mac_BX_bus\ <= (\inst_CE_13|Mult4~339\ & \inst_CE_13|Mult4~339\ & \inst_CE_13|Mult4~339\ & \inst_CE_13|Mult4~339\ & \inst_CE_13|Mult4~339\ & \inst_CE_13|Mult4~339\ & \inst_CE_13|Mult4~339\ & \inst_CE_13|Mult4~339\ & 
\inst_CE_13|Mult4~339\ & \inst_CE_13|Mult4~339\ & \inst_CE_13|Mult4~339\ & \inst_CE_13|Mult4~339\ & \inst_CE_13|Mult4~339\ & \inst_CE_13|Mult4~339\ & \inst_CE_13|Mult4~339\ & \inst_CE_13|Mult4~339\ & \inst_CE_13|Mult4~339\ & \inst_CE_13|Mult4~339\);

\inst_CE_13|Mult5~mac_BY_bus\ <= (\inst_CE_13|Mult4~339\ & \inst_CE_13|Mult4~338\ & \inst_CE_13|Mult4~337\ & \inst_CE_13|Mult4~336\ & \inst_CE_13|Mult4~335\ & \inst_CE_13|Mult4~334\ & \inst_CE_13|Mult4~333\ & \inst_CE_13|Mult4~332\ & 
\inst_CE_13|Mult4~331\ & \inst_CE_13|Mult4~330\ & \inst_CE_13|Mult4~329\ & \inst_CE_13|Mult4~328\ & \inst_CE_13|Mult4~327\ & \inst_CE_13|Mult4~326\ & \inst_CE_13|Mult4~325\ & \inst_CE_13|Mult4~324\ & \inst_CE_13|Mult4~323\ & \inst_CE_13|Mult4~mac_resulta\
);

\inst_CE_13|Mult5~mac_resulta\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(0);
\inst_CE_13|Mult5~323\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(1);
\inst_CE_13|Mult5~324\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(2);
\inst_CE_13|Mult5~325\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(3);
\inst_CE_13|Mult5~326\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(4);
\inst_CE_13|Mult5~327\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(5);
\inst_CE_13|Mult5~328\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(6);
\inst_CE_13|Mult5~329\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(7);
\inst_CE_13|Mult5~330\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(8);
\inst_CE_13|Mult5~331\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(9);
\inst_CE_13|Mult5~332\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(10);
\inst_CE_13|Mult5~333\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(11);
\inst_CE_13|Mult5~334\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(12);
\inst_CE_13|Mult5~335\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(13);
\inst_CE_13|Mult5~336\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(14);
\inst_CE_13|Mult5~337\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(15);
\inst_CE_13|Mult5~338\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(16);
\inst_CE_13|Mult5~339\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(17);
\inst_CE_13|Mult5~8\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(18);
\inst_CE_13|Mult5~9\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(19);
\inst_CE_13|Mult5~10\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(20);
\inst_CE_13|Mult5~11\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(21);
\inst_CE_13|Mult5~12\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(22);
\inst_CE_13|Mult5~13\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(23);
\inst_CE_13|Mult5~14\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(24);
\inst_CE_13|Mult5~15\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(25);
\inst_CE_13|Mult5~16\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(26);
\inst_CE_13|Mult5~17\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(27);
\inst_CE_13|Mult5~18\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(28);
\inst_CE_13|Mult5~19\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(29);
\inst_CE_13|Mult5~20\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(30);
\inst_CE_13|Mult5~21\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(31);
\inst_CE_13|Mult5~22\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(32);
\inst_CE_13|Mult5~23\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(33);
\inst_CE_13|Mult5~24\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(34);
\inst_CE_13|Mult5~25\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(35);
\inst_CE_13|Mult5~26\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(36);
\inst_CE_13|Mult5~27\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(37);
\inst_CE_13|Mult5~28\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(38);
\inst_CE_13|Mult5~29\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(39);
\inst_CE_13|Mult5~30\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(40);
\inst_CE_13|Mult5~31\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(41);
\inst_CE_13|Mult5~32\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(42);
\inst_CE_13|Mult5~33\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(43);
\inst_CE_13|Mult5~34\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(44);
\inst_CE_13|Mult5~35\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(45);
\inst_CE_13|Mult5~36\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(46);
\inst_CE_13|Mult5~37\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(47);
\inst_CE_13|Mult5~38\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(48);
\inst_CE_13|Mult5~39\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(49);
\inst_CE_13|Mult5~40\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(50);
\inst_CE_13|Mult5~41\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(51);
\inst_CE_13|Mult5~42\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(52);
\inst_CE_13|Mult5~43\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(53);
\inst_CE_13|Mult5~44\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(54);
\inst_CE_13|Mult5~45\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(55);
\inst_CE_13|Mult5~46\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(56);
\inst_CE_13|Mult5~47\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(57);
\inst_CE_13|Mult5~48\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(58);
\inst_CE_13|Mult5~49\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(59);
\inst_CE_13|Mult5~50\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(60);
\inst_CE_13|Mult5~51\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(61);
\inst_CE_13|Mult5~52\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(62);
\inst_CE_13|Mult5~53\ <= \inst_CE_13|Mult5~mac_RESULTA_bus\(63);

\inst_CE_12|Mult5~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_12|Mult5~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_12|Mult5~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_12|Mult5~mac_AX_bus\ <= (\w_12[5][7]~input_o\ & \w_12[5][7]~input_o\ & \w_12[5][7]~input_o\ & \w_12[5][7]~input_o\ & \w_12[5][7]~input_o\ & \w_12[5][7]~input_o\ & \w_12[5][7]~input_o\ & \w_12[5][7]~input_o\ & \w_12[5][7]~input_o\ & 
\w_12[5][7]~input_o\ & \w_12[5][7]~input_o\ & \w_12[5][6]~input_o\ & \w_12[5][5]~input_o\ & \w_12[5][4]~input_o\ & \w_12[5][3]~input_o\ & \w_12[5][2]~input_o\ & \w_12[5][1]~input_o\ & \w_12[5][0]~input_o\);

\inst_CE_12|Mult5~mac_AY_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][4]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][1]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][0]~_Duplicate_3_q\);

\inst_CE_12|Mult5~mac_BX_bus\ <= (\inst_CE_12|Mult4~339\ & \inst_CE_12|Mult4~339\ & \inst_CE_12|Mult4~339\ & \inst_CE_12|Mult4~339\ & \inst_CE_12|Mult4~339\ & \inst_CE_12|Mult4~339\ & \inst_CE_12|Mult4~339\ & \inst_CE_12|Mult4~339\ & 
\inst_CE_12|Mult4~339\ & \inst_CE_12|Mult4~339\ & \inst_CE_12|Mult4~339\ & \inst_CE_12|Mult4~339\ & \inst_CE_12|Mult4~339\ & \inst_CE_12|Mult4~339\ & \inst_CE_12|Mult4~339\ & \inst_CE_12|Mult4~339\ & \inst_CE_12|Mult4~339\ & \inst_CE_12|Mult4~339\);

\inst_CE_12|Mult5~mac_BY_bus\ <= (\inst_CE_12|Mult4~339\ & \inst_CE_12|Mult4~338\ & \inst_CE_12|Mult4~337\ & \inst_CE_12|Mult4~336\ & \inst_CE_12|Mult4~335\ & \inst_CE_12|Mult4~334\ & \inst_CE_12|Mult4~333\ & \inst_CE_12|Mult4~332\ & 
\inst_CE_12|Mult4~331\ & \inst_CE_12|Mult4~330\ & \inst_CE_12|Mult4~329\ & \inst_CE_12|Mult4~328\ & \inst_CE_12|Mult4~327\ & \inst_CE_12|Mult4~326\ & \inst_CE_12|Mult4~325\ & \inst_CE_12|Mult4~324\ & \inst_CE_12|Mult4~323\ & \inst_CE_12|Mult4~mac_resulta\
);

\inst_CE_12|Mult5~mac_resulta\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(0);
\inst_CE_12|Mult5~323\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(1);
\inst_CE_12|Mult5~324\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(2);
\inst_CE_12|Mult5~325\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(3);
\inst_CE_12|Mult5~326\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(4);
\inst_CE_12|Mult5~327\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(5);
\inst_CE_12|Mult5~328\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(6);
\inst_CE_12|Mult5~329\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(7);
\inst_CE_12|Mult5~330\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(8);
\inst_CE_12|Mult5~331\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(9);
\inst_CE_12|Mult5~332\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(10);
\inst_CE_12|Mult5~333\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(11);
\inst_CE_12|Mult5~334\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(12);
\inst_CE_12|Mult5~335\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(13);
\inst_CE_12|Mult5~336\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(14);
\inst_CE_12|Mult5~337\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(15);
\inst_CE_12|Mult5~338\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(16);
\inst_CE_12|Mult5~339\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(17);
\inst_CE_12|Mult5~8\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(18);
\inst_CE_12|Mult5~9\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(19);
\inst_CE_12|Mult5~10\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(20);
\inst_CE_12|Mult5~11\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(21);
\inst_CE_12|Mult5~12\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(22);
\inst_CE_12|Mult5~13\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(23);
\inst_CE_12|Mult5~14\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(24);
\inst_CE_12|Mult5~15\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(25);
\inst_CE_12|Mult5~16\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(26);
\inst_CE_12|Mult5~17\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(27);
\inst_CE_12|Mult5~18\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(28);
\inst_CE_12|Mult5~19\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(29);
\inst_CE_12|Mult5~20\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(30);
\inst_CE_12|Mult5~21\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(31);
\inst_CE_12|Mult5~22\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(32);
\inst_CE_12|Mult5~23\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(33);
\inst_CE_12|Mult5~24\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(34);
\inst_CE_12|Mult5~25\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(35);
\inst_CE_12|Mult5~26\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(36);
\inst_CE_12|Mult5~27\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(37);
\inst_CE_12|Mult5~28\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(38);
\inst_CE_12|Mult5~29\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(39);
\inst_CE_12|Mult5~30\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(40);
\inst_CE_12|Mult5~31\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(41);
\inst_CE_12|Mult5~32\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(42);
\inst_CE_12|Mult5~33\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(43);
\inst_CE_12|Mult5~34\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(44);
\inst_CE_12|Mult5~35\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(45);
\inst_CE_12|Mult5~36\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(46);
\inst_CE_12|Mult5~37\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(47);
\inst_CE_12|Mult5~38\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(48);
\inst_CE_12|Mult5~39\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(49);
\inst_CE_12|Mult5~40\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(50);
\inst_CE_12|Mult5~41\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(51);
\inst_CE_12|Mult5~42\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(52);
\inst_CE_12|Mult5~43\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(53);
\inst_CE_12|Mult5~44\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(54);
\inst_CE_12|Mult5~45\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(55);
\inst_CE_12|Mult5~46\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(56);
\inst_CE_12|Mult5~47\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(57);
\inst_CE_12|Mult5~48\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(58);
\inst_CE_12|Mult5~49\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(59);
\inst_CE_12|Mult5~50\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(60);
\inst_CE_12|Mult5~51\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(61);
\inst_CE_12|Mult5~52\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(62);
\inst_CE_12|Mult5~53\ <= \inst_CE_12|Mult5~mac_RESULTA_bus\(63);

\inst_CE_11|Mult5~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_11|Mult5~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_11|Mult5~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_11|Mult5~mac_AX_bus\ <= (\w_11[5][7]~input_o\ & \w_11[5][7]~input_o\ & \w_11[5][7]~input_o\ & \w_11[5][7]~input_o\ & \w_11[5][7]~input_o\ & \w_11[5][7]~input_o\ & \w_11[5][7]~input_o\ & \w_11[5][7]~input_o\ & \w_11[5][7]~input_o\ & 
\w_11[5][7]~input_o\ & \w_11[5][7]~input_o\ & \w_11[5][6]~input_o\ & \w_11[5][5]~input_o\ & \w_11[5][4]~input_o\ & \w_11[5][3]~input_o\ & \w_11[5][2]~input_o\ & \w_11[5][1]~input_o\ & \w_11[5][0]~input_o\);

\inst_CE_11|Mult5~mac_AY_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][4]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][1]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][0]~_Duplicate_3_q\);

\inst_CE_11|Mult5~mac_BX_bus\ <= (\inst_CE_11|Mult4~339\ & \inst_CE_11|Mult4~339\ & \inst_CE_11|Mult4~339\ & \inst_CE_11|Mult4~339\ & \inst_CE_11|Mult4~339\ & \inst_CE_11|Mult4~339\ & \inst_CE_11|Mult4~339\ & \inst_CE_11|Mult4~339\ & 
\inst_CE_11|Mult4~339\ & \inst_CE_11|Mult4~339\ & \inst_CE_11|Mult4~339\ & \inst_CE_11|Mult4~339\ & \inst_CE_11|Mult4~339\ & \inst_CE_11|Mult4~339\ & \inst_CE_11|Mult4~339\ & \inst_CE_11|Mult4~339\ & \inst_CE_11|Mult4~339\ & \inst_CE_11|Mult4~339\);

\inst_CE_11|Mult5~mac_BY_bus\ <= (\inst_CE_11|Mult4~339\ & \inst_CE_11|Mult4~338\ & \inst_CE_11|Mult4~337\ & \inst_CE_11|Mult4~336\ & \inst_CE_11|Mult4~335\ & \inst_CE_11|Mult4~334\ & \inst_CE_11|Mult4~333\ & \inst_CE_11|Mult4~332\ & 
\inst_CE_11|Mult4~331\ & \inst_CE_11|Mult4~330\ & \inst_CE_11|Mult4~329\ & \inst_CE_11|Mult4~328\ & \inst_CE_11|Mult4~327\ & \inst_CE_11|Mult4~326\ & \inst_CE_11|Mult4~325\ & \inst_CE_11|Mult4~324\ & \inst_CE_11|Mult4~323\ & \inst_CE_11|Mult4~mac_resulta\
);

\inst_CE_11|Mult5~mac_resulta\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(0);
\inst_CE_11|Mult5~323\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(1);
\inst_CE_11|Mult5~324\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(2);
\inst_CE_11|Mult5~325\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(3);
\inst_CE_11|Mult5~326\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(4);
\inst_CE_11|Mult5~327\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(5);
\inst_CE_11|Mult5~328\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(6);
\inst_CE_11|Mult5~329\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(7);
\inst_CE_11|Mult5~330\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(8);
\inst_CE_11|Mult5~331\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(9);
\inst_CE_11|Mult5~332\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(10);
\inst_CE_11|Mult5~333\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(11);
\inst_CE_11|Mult5~334\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(12);
\inst_CE_11|Mult5~335\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(13);
\inst_CE_11|Mult5~336\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(14);
\inst_CE_11|Mult5~337\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(15);
\inst_CE_11|Mult5~338\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(16);
\inst_CE_11|Mult5~339\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(17);
\inst_CE_11|Mult5~8\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(18);
\inst_CE_11|Mult5~9\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(19);
\inst_CE_11|Mult5~10\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(20);
\inst_CE_11|Mult5~11\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(21);
\inst_CE_11|Mult5~12\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(22);
\inst_CE_11|Mult5~13\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(23);
\inst_CE_11|Mult5~14\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(24);
\inst_CE_11|Mult5~15\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(25);
\inst_CE_11|Mult5~16\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(26);
\inst_CE_11|Mult5~17\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(27);
\inst_CE_11|Mult5~18\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(28);
\inst_CE_11|Mult5~19\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(29);
\inst_CE_11|Mult5~20\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(30);
\inst_CE_11|Mult5~21\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(31);
\inst_CE_11|Mult5~22\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(32);
\inst_CE_11|Mult5~23\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(33);
\inst_CE_11|Mult5~24\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(34);
\inst_CE_11|Mult5~25\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(35);
\inst_CE_11|Mult5~26\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(36);
\inst_CE_11|Mult5~27\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(37);
\inst_CE_11|Mult5~28\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(38);
\inst_CE_11|Mult5~29\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(39);
\inst_CE_11|Mult5~30\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(40);
\inst_CE_11|Mult5~31\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(41);
\inst_CE_11|Mult5~32\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(42);
\inst_CE_11|Mult5~33\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(43);
\inst_CE_11|Mult5~34\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(44);
\inst_CE_11|Mult5~35\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(45);
\inst_CE_11|Mult5~36\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(46);
\inst_CE_11|Mult5~37\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(47);
\inst_CE_11|Mult5~38\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(48);
\inst_CE_11|Mult5~39\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(49);
\inst_CE_11|Mult5~40\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(50);
\inst_CE_11|Mult5~41\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(51);
\inst_CE_11|Mult5~42\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(52);
\inst_CE_11|Mult5~43\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(53);
\inst_CE_11|Mult5~44\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(54);
\inst_CE_11|Mult5~45\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(55);
\inst_CE_11|Mult5~46\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(56);
\inst_CE_11|Mult5~47\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(57);
\inst_CE_11|Mult5~48\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(58);
\inst_CE_11|Mult5~49\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(59);
\inst_CE_11|Mult5~50\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(60);
\inst_CE_11|Mult5~51\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(61);
\inst_CE_11|Mult5~52\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(62);
\inst_CE_11|Mult5~53\ <= \inst_CE_11|Mult5~mac_RESULTA_bus\(63);

\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][0]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][2]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][5]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][0]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][1]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][3]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][4]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][6]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][7]~_Duplicate_6_q\);

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
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ <= \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(8);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a9\ <= \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(9);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a10\ <= \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(10);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a11\ <= \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(11);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a12\ <= \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(12);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a13\ <= \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(13);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a14\ <= \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(14);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a15\ <= \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0_PORTBDATAOUT_bus\(15);

\inst_CE_13|Mult4~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_13|Mult4~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_13|Mult4~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_13|Mult4~mac_AX_bus\ <= (\w_13[4][7]~input_o\ & \w_13[4][7]~input_o\ & \w_13[4][7]~input_o\ & \w_13[4][7]~input_o\ & \w_13[4][7]~input_o\ & \w_13[4][7]~input_o\ & \w_13[4][7]~input_o\ & \w_13[4][7]~input_o\ & \w_13[4][7]~input_o\ & 
\w_13[4][7]~input_o\ & \w_13[4][7]~input_o\ & \w_13[4][6]~input_o\ & \w_13[4][5]~input_o\ & \w_13[4][4]~input_o\ & \w_13[4][3]~input_o\ & \w_13[4][2]~input_o\ & \w_13[4][1]~input_o\ & \w_13[4][0]~input_o\);

\inst_CE_13|Mult4~mac_AY_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3_q\);

\inst_CE_13|Mult4~mac_BX_bus\ <= (\inst_CE_13|Mult3~339\ & \inst_CE_13|Mult3~339\ & \inst_CE_13|Mult3~339\ & \inst_CE_13|Mult3~339\ & \inst_CE_13|Mult3~339\ & \inst_CE_13|Mult3~339\ & \inst_CE_13|Mult3~339\ & \inst_CE_13|Mult3~339\ & 
\inst_CE_13|Mult3~339\ & \inst_CE_13|Mult3~339\ & \inst_CE_13|Mult3~339\ & \inst_CE_13|Mult3~339\ & \inst_CE_13|Mult3~339\ & \inst_CE_13|Mult3~339\ & \inst_CE_13|Mult3~339\ & \inst_CE_13|Mult3~339\ & \inst_CE_13|Mult3~339\ & \inst_CE_13|Mult3~339\);

\inst_CE_13|Mult4~mac_BY_bus\ <= (\inst_CE_13|Mult3~339\ & \inst_CE_13|Mult3~338\ & \inst_CE_13|Mult3~337\ & \inst_CE_13|Mult3~336\ & \inst_CE_13|Mult3~335\ & \inst_CE_13|Mult3~334\ & \inst_CE_13|Mult3~333\ & \inst_CE_13|Mult3~332\ & 
\inst_CE_13|Mult3~331\ & \inst_CE_13|Mult3~330\ & \inst_CE_13|Mult3~329\ & \inst_CE_13|Mult3~328\ & \inst_CE_13|Mult3~327\ & \inst_CE_13|Mult3~326\ & \inst_CE_13|Mult3~325\ & \inst_CE_13|Mult3~324\ & \inst_CE_13|Mult3~323\ & \inst_CE_13|Mult3~mac_resulta\
);

\inst_CE_13|Mult4~mac_resulta\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(0);
\inst_CE_13|Mult4~323\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(1);
\inst_CE_13|Mult4~324\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(2);
\inst_CE_13|Mult4~325\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(3);
\inst_CE_13|Mult4~326\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(4);
\inst_CE_13|Mult4~327\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(5);
\inst_CE_13|Mult4~328\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(6);
\inst_CE_13|Mult4~329\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(7);
\inst_CE_13|Mult4~330\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(8);
\inst_CE_13|Mult4~331\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(9);
\inst_CE_13|Mult4~332\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(10);
\inst_CE_13|Mult4~333\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(11);
\inst_CE_13|Mult4~334\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(12);
\inst_CE_13|Mult4~335\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(13);
\inst_CE_13|Mult4~336\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(14);
\inst_CE_13|Mult4~337\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(15);
\inst_CE_13|Mult4~338\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(16);
\inst_CE_13|Mult4~339\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(17);
\inst_CE_13|Mult4~8\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(18);
\inst_CE_13|Mult4~9\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(19);
\inst_CE_13|Mult4~10\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(20);
\inst_CE_13|Mult4~11\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(21);
\inst_CE_13|Mult4~12\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(22);
\inst_CE_13|Mult4~13\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(23);
\inst_CE_13|Mult4~14\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(24);
\inst_CE_13|Mult4~15\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(25);
\inst_CE_13|Mult4~16\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(26);
\inst_CE_13|Mult4~17\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(27);
\inst_CE_13|Mult4~18\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(28);
\inst_CE_13|Mult4~19\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(29);
\inst_CE_13|Mult4~20\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(30);
\inst_CE_13|Mult4~21\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(31);
\inst_CE_13|Mult4~22\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(32);
\inst_CE_13|Mult4~23\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(33);
\inst_CE_13|Mult4~24\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(34);
\inst_CE_13|Mult4~25\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(35);
\inst_CE_13|Mult4~26\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(36);
\inst_CE_13|Mult4~27\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(37);
\inst_CE_13|Mult4~28\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(38);
\inst_CE_13|Mult4~29\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(39);
\inst_CE_13|Mult4~30\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(40);
\inst_CE_13|Mult4~31\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(41);
\inst_CE_13|Mult4~32\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(42);
\inst_CE_13|Mult4~33\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(43);
\inst_CE_13|Mult4~34\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(44);
\inst_CE_13|Mult4~35\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(45);
\inst_CE_13|Mult4~36\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(46);
\inst_CE_13|Mult4~37\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(47);
\inst_CE_13|Mult4~38\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(48);
\inst_CE_13|Mult4~39\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(49);
\inst_CE_13|Mult4~40\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(50);
\inst_CE_13|Mult4~41\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(51);
\inst_CE_13|Mult4~42\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(52);
\inst_CE_13|Mult4~43\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(53);
\inst_CE_13|Mult4~44\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(54);
\inst_CE_13|Mult4~45\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(55);
\inst_CE_13|Mult4~46\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(56);
\inst_CE_13|Mult4~47\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(57);
\inst_CE_13|Mult4~48\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(58);
\inst_CE_13|Mult4~49\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(59);
\inst_CE_13|Mult4~50\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(60);
\inst_CE_13|Mult4~51\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(61);
\inst_CE_13|Mult4~52\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(62);
\inst_CE_13|Mult4~53\ <= \inst_CE_13|Mult4~mac_RESULTA_bus\(63);

\inst_CE_12|Mult4~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_12|Mult4~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_12|Mult4~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_12|Mult4~mac_AX_bus\ <= (\w_12[4][7]~input_o\ & \w_12[4][7]~input_o\ & \w_12[4][7]~input_o\ & \w_12[4][7]~input_o\ & \w_12[4][7]~input_o\ & \w_12[4][7]~input_o\ & \w_12[4][7]~input_o\ & \w_12[4][7]~input_o\ & \w_12[4][7]~input_o\ & 
\w_12[4][7]~input_o\ & \w_12[4][7]~input_o\ & \w_12[4][6]~input_o\ & \w_12[4][5]~input_o\ & \w_12[4][4]~input_o\ & \w_12[4][3]~input_o\ & \w_12[4][2]~input_o\ & \w_12[4][1]~input_o\ & \w_12[4][0]~input_o\);

\inst_CE_12|Mult4~mac_AY_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3_q\);

\inst_CE_12|Mult4~mac_BX_bus\ <= (\inst_CE_12|Mult3~339\ & \inst_CE_12|Mult3~339\ & \inst_CE_12|Mult3~339\ & \inst_CE_12|Mult3~339\ & \inst_CE_12|Mult3~339\ & \inst_CE_12|Mult3~339\ & \inst_CE_12|Mult3~339\ & \inst_CE_12|Mult3~339\ & 
\inst_CE_12|Mult3~339\ & \inst_CE_12|Mult3~339\ & \inst_CE_12|Mult3~339\ & \inst_CE_12|Mult3~339\ & \inst_CE_12|Mult3~339\ & \inst_CE_12|Mult3~339\ & \inst_CE_12|Mult3~339\ & \inst_CE_12|Mult3~339\ & \inst_CE_12|Mult3~339\ & \inst_CE_12|Mult3~339\);

\inst_CE_12|Mult4~mac_BY_bus\ <= (\inst_CE_12|Mult3~339\ & \inst_CE_12|Mult3~338\ & \inst_CE_12|Mult3~337\ & \inst_CE_12|Mult3~336\ & \inst_CE_12|Mult3~335\ & \inst_CE_12|Mult3~334\ & \inst_CE_12|Mult3~333\ & \inst_CE_12|Mult3~332\ & 
\inst_CE_12|Mult3~331\ & \inst_CE_12|Mult3~330\ & \inst_CE_12|Mult3~329\ & \inst_CE_12|Mult3~328\ & \inst_CE_12|Mult3~327\ & \inst_CE_12|Mult3~326\ & \inst_CE_12|Mult3~325\ & \inst_CE_12|Mult3~324\ & \inst_CE_12|Mult3~323\ & \inst_CE_12|Mult3~mac_resulta\
);

\inst_CE_12|Mult4~mac_resulta\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(0);
\inst_CE_12|Mult4~323\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(1);
\inst_CE_12|Mult4~324\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(2);
\inst_CE_12|Mult4~325\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(3);
\inst_CE_12|Mult4~326\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(4);
\inst_CE_12|Mult4~327\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(5);
\inst_CE_12|Mult4~328\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(6);
\inst_CE_12|Mult4~329\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(7);
\inst_CE_12|Mult4~330\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(8);
\inst_CE_12|Mult4~331\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(9);
\inst_CE_12|Mult4~332\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(10);
\inst_CE_12|Mult4~333\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(11);
\inst_CE_12|Mult4~334\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(12);
\inst_CE_12|Mult4~335\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(13);
\inst_CE_12|Mult4~336\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(14);
\inst_CE_12|Mult4~337\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(15);
\inst_CE_12|Mult4~338\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(16);
\inst_CE_12|Mult4~339\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(17);
\inst_CE_12|Mult4~8\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(18);
\inst_CE_12|Mult4~9\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(19);
\inst_CE_12|Mult4~10\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(20);
\inst_CE_12|Mult4~11\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(21);
\inst_CE_12|Mult4~12\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(22);
\inst_CE_12|Mult4~13\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(23);
\inst_CE_12|Mult4~14\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(24);
\inst_CE_12|Mult4~15\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(25);
\inst_CE_12|Mult4~16\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(26);
\inst_CE_12|Mult4~17\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(27);
\inst_CE_12|Mult4~18\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(28);
\inst_CE_12|Mult4~19\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(29);
\inst_CE_12|Mult4~20\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(30);
\inst_CE_12|Mult4~21\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(31);
\inst_CE_12|Mult4~22\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(32);
\inst_CE_12|Mult4~23\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(33);
\inst_CE_12|Mult4~24\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(34);
\inst_CE_12|Mult4~25\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(35);
\inst_CE_12|Mult4~26\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(36);
\inst_CE_12|Mult4~27\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(37);
\inst_CE_12|Mult4~28\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(38);
\inst_CE_12|Mult4~29\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(39);
\inst_CE_12|Mult4~30\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(40);
\inst_CE_12|Mult4~31\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(41);
\inst_CE_12|Mult4~32\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(42);
\inst_CE_12|Mult4~33\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(43);
\inst_CE_12|Mult4~34\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(44);
\inst_CE_12|Mult4~35\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(45);
\inst_CE_12|Mult4~36\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(46);
\inst_CE_12|Mult4~37\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(47);
\inst_CE_12|Mult4~38\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(48);
\inst_CE_12|Mult4~39\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(49);
\inst_CE_12|Mult4~40\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(50);
\inst_CE_12|Mult4~41\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(51);
\inst_CE_12|Mult4~42\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(52);
\inst_CE_12|Mult4~43\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(53);
\inst_CE_12|Mult4~44\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(54);
\inst_CE_12|Mult4~45\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(55);
\inst_CE_12|Mult4~46\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(56);
\inst_CE_12|Mult4~47\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(57);
\inst_CE_12|Mult4~48\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(58);
\inst_CE_12|Mult4~49\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(59);
\inst_CE_12|Mult4~50\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(60);
\inst_CE_12|Mult4~51\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(61);
\inst_CE_12|Mult4~52\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(62);
\inst_CE_12|Mult4~53\ <= \inst_CE_12|Mult4~mac_RESULTA_bus\(63);

\inst_CE_11|Mult4~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_11|Mult4~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_11|Mult4~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_11|Mult4~mac_AX_bus\ <= (\w_11[4][7]~input_o\ & \w_11[4][7]~input_o\ & \w_11[4][7]~input_o\ & \w_11[4][7]~input_o\ & \w_11[4][7]~input_o\ & \w_11[4][7]~input_o\ & \w_11[4][7]~input_o\ & \w_11[4][7]~input_o\ & \w_11[4][7]~input_o\ & 
\w_11[4][7]~input_o\ & \w_11[4][7]~input_o\ & \w_11[4][6]~input_o\ & \w_11[4][5]~input_o\ & \w_11[4][4]~input_o\ & \w_11[4][3]~input_o\ & \w_11[4][2]~input_o\ & \w_11[4][1]~input_o\ & \w_11[4][0]~input_o\);

\inst_CE_11|Mult4~mac_AY_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3_q\);

\inst_CE_11|Mult4~mac_BX_bus\ <= (\inst_CE_11|Mult3~339\ & \inst_CE_11|Mult3~339\ & \inst_CE_11|Mult3~339\ & \inst_CE_11|Mult3~339\ & \inst_CE_11|Mult3~339\ & \inst_CE_11|Mult3~339\ & \inst_CE_11|Mult3~339\ & \inst_CE_11|Mult3~339\ & 
\inst_CE_11|Mult3~339\ & \inst_CE_11|Mult3~339\ & \inst_CE_11|Mult3~339\ & \inst_CE_11|Mult3~339\ & \inst_CE_11|Mult3~339\ & \inst_CE_11|Mult3~339\ & \inst_CE_11|Mult3~339\ & \inst_CE_11|Mult3~339\ & \inst_CE_11|Mult3~339\ & \inst_CE_11|Mult3~339\);

\inst_CE_11|Mult4~mac_BY_bus\ <= (\inst_CE_11|Mult3~339\ & \inst_CE_11|Mult3~338\ & \inst_CE_11|Mult3~337\ & \inst_CE_11|Mult3~336\ & \inst_CE_11|Mult3~335\ & \inst_CE_11|Mult3~334\ & \inst_CE_11|Mult3~333\ & \inst_CE_11|Mult3~332\ & 
\inst_CE_11|Mult3~331\ & \inst_CE_11|Mult3~330\ & \inst_CE_11|Mult3~329\ & \inst_CE_11|Mult3~328\ & \inst_CE_11|Mult3~327\ & \inst_CE_11|Mult3~326\ & \inst_CE_11|Mult3~325\ & \inst_CE_11|Mult3~324\ & \inst_CE_11|Mult3~323\ & \inst_CE_11|Mult3~mac_resulta\
);

\inst_CE_11|Mult4~mac_resulta\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(0);
\inst_CE_11|Mult4~323\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(1);
\inst_CE_11|Mult4~324\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(2);
\inst_CE_11|Mult4~325\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(3);
\inst_CE_11|Mult4~326\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(4);
\inst_CE_11|Mult4~327\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(5);
\inst_CE_11|Mult4~328\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(6);
\inst_CE_11|Mult4~329\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(7);
\inst_CE_11|Mult4~330\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(8);
\inst_CE_11|Mult4~331\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(9);
\inst_CE_11|Mult4~332\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(10);
\inst_CE_11|Mult4~333\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(11);
\inst_CE_11|Mult4~334\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(12);
\inst_CE_11|Mult4~335\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(13);
\inst_CE_11|Mult4~336\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(14);
\inst_CE_11|Mult4~337\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(15);
\inst_CE_11|Mult4~338\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(16);
\inst_CE_11|Mult4~339\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(17);
\inst_CE_11|Mult4~8\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(18);
\inst_CE_11|Mult4~9\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(19);
\inst_CE_11|Mult4~10\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(20);
\inst_CE_11|Mult4~11\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(21);
\inst_CE_11|Mult4~12\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(22);
\inst_CE_11|Mult4~13\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(23);
\inst_CE_11|Mult4~14\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(24);
\inst_CE_11|Mult4~15\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(25);
\inst_CE_11|Mult4~16\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(26);
\inst_CE_11|Mult4~17\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(27);
\inst_CE_11|Mult4~18\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(28);
\inst_CE_11|Mult4~19\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(29);
\inst_CE_11|Mult4~20\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(30);
\inst_CE_11|Mult4~21\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(31);
\inst_CE_11|Mult4~22\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(32);
\inst_CE_11|Mult4~23\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(33);
\inst_CE_11|Mult4~24\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(34);
\inst_CE_11|Mult4~25\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(35);
\inst_CE_11|Mult4~26\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(36);
\inst_CE_11|Mult4~27\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(37);
\inst_CE_11|Mult4~28\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(38);
\inst_CE_11|Mult4~29\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(39);
\inst_CE_11|Mult4~30\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(40);
\inst_CE_11|Mult4~31\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(41);
\inst_CE_11|Mult4~32\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(42);
\inst_CE_11|Mult4~33\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(43);
\inst_CE_11|Mult4~34\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(44);
\inst_CE_11|Mult4~35\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(45);
\inst_CE_11|Mult4~36\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(46);
\inst_CE_11|Mult4~37\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(47);
\inst_CE_11|Mult4~38\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(48);
\inst_CE_11|Mult4~39\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(49);
\inst_CE_11|Mult4~40\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(50);
\inst_CE_11|Mult4~41\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(51);
\inst_CE_11|Mult4~42\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(52);
\inst_CE_11|Mult4~43\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(53);
\inst_CE_11|Mult4~44\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(54);
\inst_CE_11|Mult4~45\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(55);
\inst_CE_11|Mult4~46\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(56);
\inst_CE_11|Mult4~47\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(57);
\inst_CE_11|Mult4~48\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(58);
\inst_CE_11|Mult4~49\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(59);
\inst_CE_11|Mult4~50\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(60);
\inst_CE_11|Mult4~51\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(61);
\inst_CE_11|Mult4~52\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(62);
\inst_CE_11|Mult4~53\ <= \inst_CE_11|Mult4~mac_RESULTA_bus\(63);

\inst_CE_13|Mult3~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_13|Mult3~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_13|Mult3~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_13|Mult3~mac_AX_bus\ <= (\w_13[3][7]~input_o\ & \w_13[3][7]~input_o\ & \w_13[3][7]~input_o\ & \w_13[3][7]~input_o\ & \w_13[3][7]~input_o\ & \w_13[3][7]~input_o\ & \w_13[3][7]~input_o\ & \w_13[3][7]~input_o\ & \w_13[3][7]~input_o\ & 
\w_13[3][7]~input_o\ & \w_13[3][7]~input_o\ & \w_13[3][6]~input_o\ & \w_13[3][5]~input_o\ & \w_13[3][4]~input_o\ & \w_13[3][3]~input_o\ & \w_13[3][2]~input_o\ & \w_13[3][1]~input_o\ & \w_13[3][0]~input_o\);

\inst_CE_13|Mult3~mac_AY_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a9\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a10\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a11\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a12\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a13\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a14\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a15\);

\inst_CE_13|Mult3~mac_BX_bus\ <= (\inst_CE_13|Mult2~339\ & \inst_CE_13|Mult2~339\ & \inst_CE_13|Mult2~339\ & \inst_CE_13|Mult2~339\ & \inst_CE_13|Mult2~339\ & \inst_CE_13|Mult2~339\ & \inst_CE_13|Mult2~339\ & \inst_CE_13|Mult2~339\ & 
\inst_CE_13|Mult2~339\ & \inst_CE_13|Mult2~339\ & \inst_CE_13|Mult2~339\ & \inst_CE_13|Mult2~339\ & \inst_CE_13|Mult2~339\ & \inst_CE_13|Mult2~339\ & \inst_CE_13|Mult2~339\ & \inst_CE_13|Mult2~339\ & \inst_CE_13|Mult2~339\ & \inst_CE_13|Mult2~339\);

\inst_CE_13|Mult3~mac_BY_bus\ <= (\inst_CE_13|Mult2~339\ & \inst_CE_13|Mult2~338\ & \inst_CE_13|Mult2~337\ & \inst_CE_13|Mult2~336\ & \inst_CE_13|Mult2~335\ & \inst_CE_13|Mult2~334\ & \inst_CE_13|Mult2~333\ & \inst_CE_13|Mult2~332\ & 
\inst_CE_13|Mult2~331\ & \inst_CE_13|Mult2~330\ & \inst_CE_13|Mult2~329\ & \inst_CE_13|Mult2~328\ & \inst_CE_13|Mult2~327\ & \inst_CE_13|Mult2~326\ & \inst_CE_13|Mult2~325\ & \inst_CE_13|Mult2~324\ & \inst_CE_13|Mult2~323\ & \inst_CE_13|Mult2~mac_resulta\
);

\inst_CE_13|Mult3~mac_resulta\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(0);
\inst_CE_13|Mult3~323\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(1);
\inst_CE_13|Mult3~324\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(2);
\inst_CE_13|Mult3~325\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(3);
\inst_CE_13|Mult3~326\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(4);
\inst_CE_13|Mult3~327\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(5);
\inst_CE_13|Mult3~328\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(6);
\inst_CE_13|Mult3~329\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(7);
\inst_CE_13|Mult3~330\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(8);
\inst_CE_13|Mult3~331\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(9);
\inst_CE_13|Mult3~332\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(10);
\inst_CE_13|Mult3~333\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(11);
\inst_CE_13|Mult3~334\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(12);
\inst_CE_13|Mult3~335\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(13);
\inst_CE_13|Mult3~336\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(14);
\inst_CE_13|Mult3~337\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(15);
\inst_CE_13|Mult3~338\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(16);
\inst_CE_13|Mult3~339\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(17);
\inst_CE_13|Mult3~8\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(18);
\inst_CE_13|Mult3~9\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(19);
\inst_CE_13|Mult3~10\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(20);
\inst_CE_13|Mult3~11\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(21);
\inst_CE_13|Mult3~12\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(22);
\inst_CE_13|Mult3~13\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(23);
\inst_CE_13|Mult3~14\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(24);
\inst_CE_13|Mult3~15\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(25);
\inst_CE_13|Mult3~16\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(26);
\inst_CE_13|Mult3~17\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(27);
\inst_CE_13|Mult3~18\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(28);
\inst_CE_13|Mult3~19\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(29);
\inst_CE_13|Mult3~20\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(30);
\inst_CE_13|Mult3~21\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(31);
\inst_CE_13|Mult3~22\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(32);
\inst_CE_13|Mult3~23\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(33);
\inst_CE_13|Mult3~24\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(34);
\inst_CE_13|Mult3~25\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(35);
\inst_CE_13|Mult3~26\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(36);
\inst_CE_13|Mult3~27\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(37);
\inst_CE_13|Mult3~28\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(38);
\inst_CE_13|Mult3~29\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(39);
\inst_CE_13|Mult3~30\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(40);
\inst_CE_13|Mult3~31\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(41);
\inst_CE_13|Mult3~32\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(42);
\inst_CE_13|Mult3~33\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(43);
\inst_CE_13|Mult3~34\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(44);
\inst_CE_13|Mult3~35\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(45);
\inst_CE_13|Mult3~36\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(46);
\inst_CE_13|Mult3~37\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(47);
\inst_CE_13|Mult3~38\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(48);
\inst_CE_13|Mult3~39\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(49);
\inst_CE_13|Mult3~40\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(50);
\inst_CE_13|Mult3~41\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(51);
\inst_CE_13|Mult3~42\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(52);
\inst_CE_13|Mult3~43\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(53);
\inst_CE_13|Mult3~44\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(54);
\inst_CE_13|Mult3~45\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(55);
\inst_CE_13|Mult3~46\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(56);
\inst_CE_13|Mult3~47\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(57);
\inst_CE_13|Mult3~48\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(58);
\inst_CE_13|Mult3~49\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(59);
\inst_CE_13|Mult3~50\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(60);
\inst_CE_13|Mult3~51\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(61);
\inst_CE_13|Mult3~52\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(62);
\inst_CE_13|Mult3~53\ <= \inst_CE_13|Mult3~mac_RESULTA_bus\(63);

\inst_CE_12|Mult3~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_12|Mult3~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_12|Mult3~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_12|Mult3~mac_AX_bus\ <= (\w_12[3][7]~input_o\ & \w_12[3][7]~input_o\ & \w_12[3][7]~input_o\ & \w_12[3][7]~input_o\ & \w_12[3][7]~input_o\ & \w_12[3][7]~input_o\ & \w_12[3][7]~input_o\ & \w_12[3][7]~input_o\ & \w_12[3][7]~input_o\ & 
\w_12[3][7]~input_o\ & \w_12[3][7]~input_o\ & \w_12[3][6]~input_o\ & \w_12[3][5]~input_o\ & \w_12[3][4]~input_o\ & \w_12[3][3]~input_o\ & \w_12[3][2]~input_o\ & \w_12[3][1]~input_o\ & \w_12[3][0]~input_o\);

\inst_CE_12|Mult3~mac_AY_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a9\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a10\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a11\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a12\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a13\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a14\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a15\);

\inst_CE_12|Mult3~mac_BX_bus\ <= (\inst_CE_12|Mult2~339\ & \inst_CE_12|Mult2~339\ & \inst_CE_12|Mult2~339\ & \inst_CE_12|Mult2~339\ & \inst_CE_12|Mult2~339\ & \inst_CE_12|Mult2~339\ & \inst_CE_12|Mult2~339\ & \inst_CE_12|Mult2~339\ & 
\inst_CE_12|Mult2~339\ & \inst_CE_12|Mult2~339\ & \inst_CE_12|Mult2~339\ & \inst_CE_12|Mult2~339\ & \inst_CE_12|Mult2~339\ & \inst_CE_12|Mult2~339\ & \inst_CE_12|Mult2~339\ & \inst_CE_12|Mult2~339\ & \inst_CE_12|Mult2~339\ & \inst_CE_12|Mult2~339\);

\inst_CE_12|Mult3~mac_BY_bus\ <= (\inst_CE_12|Mult2~339\ & \inst_CE_12|Mult2~338\ & \inst_CE_12|Mult2~337\ & \inst_CE_12|Mult2~336\ & \inst_CE_12|Mult2~335\ & \inst_CE_12|Mult2~334\ & \inst_CE_12|Mult2~333\ & \inst_CE_12|Mult2~332\ & 
\inst_CE_12|Mult2~331\ & \inst_CE_12|Mult2~330\ & \inst_CE_12|Mult2~329\ & \inst_CE_12|Mult2~328\ & \inst_CE_12|Mult2~327\ & \inst_CE_12|Mult2~326\ & \inst_CE_12|Mult2~325\ & \inst_CE_12|Mult2~324\ & \inst_CE_12|Mult2~323\ & \inst_CE_12|Mult2~mac_resulta\
);

\inst_CE_12|Mult3~mac_resulta\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(0);
\inst_CE_12|Mult3~323\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(1);
\inst_CE_12|Mult3~324\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(2);
\inst_CE_12|Mult3~325\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(3);
\inst_CE_12|Mult3~326\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(4);
\inst_CE_12|Mult3~327\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(5);
\inst_CE_12|Mult3~328\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(6);
\inst_CE_12|Mult3~329\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(7);
\inst_CE_12|Mult3~330\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(8);
\inst_CE_12|Mult3~331\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(9);
\inst_CE_12|Mult3~332\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(10);
\inst_CE_12|Mult3~333\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(11);
\inst_CE_12|Mult3~334\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(12);
\inst_CE_12|Mult3~335\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(13);
\inst_CE_12|Mult3~336\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(14);
\inst_CE_12|Mult3~337\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(15);
\inst_CE_12|Mult3~338\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(16);
\inst_CE_12|Mult3~339\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(17);
\inst_CE_12|Mult3~8\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(18);
\inst_CE_12|Mult3~9\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(19);
\inst_CE_12|Mult3~10\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(20);
\inst_CE_12|Mult3~11\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(21);
\inst_CE_12|Mult3~12\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(22);
\inst_CE_12|Mult3~13\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(23);
\inst_CE_12|Mult3~14\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(24);
\inst_CE_12|Mult3~15\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(25);
\inst_CE_12|Mult3~16\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(26);
\inst_CE_12|Mult3~17\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(27);
\inst_CE_12|Mult3~18\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(28);
\inst_CE_12|Mult3~19\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(29);
\inst_CE_12|Mult3~20\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(30);
\inst_CE_12|Mult3~21\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(31);
\inst_CE_12|Mult3~22\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(32);
\inst_CE_12|Mult3~23\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(33);
\inst_CE_12|Mult3~24\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(34);
\inst_CE_12|Mult3~25\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(35);
\inst_CE_12|Mult3~26\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(36);
\inst_CE_12|Mult3~27\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(37);
\inst_CE_12|Mult3~28\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(38);
\inst_CE_12|Mult3~29\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(39);
\inst_CE_12|Mult3~30\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(40);
\inst_CE_12|Mult3~31\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(41);
\inst_CE_12|Mult3~32\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(42);
\inst_CE_12|Mult3~33\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(43);
\inst_CE_12|Mult3~34\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(44);
\inst_CE_12|Mult3~35\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(45);
\inst_CE_12|Mult3~36\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(46);
\inst_CE_12|Mult3~37\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(47);
\inst_CE_12|Mult3~38\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(48);
\inst_CE_12|Mult3~39\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(49);
\inst_CE_12|Mult3~40\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(50);
\inst_CE_12|Mult3~41\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(51);
\inst_CE_12|Mult3~42\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(52);
\inst_CE_12|Mult3~43\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(53);
\inst_CE_12|Mult3~44\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(54);
\inst_CE_12|Mult3~45\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(55);
\inst_CE_12|Mult3~46\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(56);
\inst_CE_12|Mult3~47\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(57);
\inst_CE_12|Mult3~48\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(58);
\inst_CE_12|Mult3~49\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(59);
\inst_CE_12|Mult3~50\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(60);
\inst_CE_12|Mult3~51\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(61);
\inst_CE_12|Mult3~52\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(62);
\inst_CE_12|Mult3~53\ <= \inst_CE_12|Mult3~mac_RESULTA_bus\(63);

\inst_CE_11|Mult3~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_11|Mult3~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_11|Mult3~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_11|Mult3~mac_AX_bus\ <= (\w_11[3][7]~input_o\ & \w_11[3][7]~input_o\ & \w_11[3][7]~input_o\ & \w_11[3][7]~input_o\ & \w_11[3][7]~input_o\ & \w_11[3][7]~input_o\ & \w_11[3][7]~input_o\ & \w_11[3][7]~input_o\ & \w_11[3][7]~input_o\ & 
\w_11[3][7]~input_o\ & \w_11[3][7]~input_o\ & \w_11[3][6]~input_o\ & \w_11[3][5]~input_o\ & \w_11[3][4]~input_o\ & \w_11[3][3]~input_o\ & \w_11[3][2]~input_o\ & \w_11[3][1]~input_o\ & \w_11[3][0]~input_o\);

\inst_CE_11|Mult3~mac_AY_bus\ <= (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a9\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a10\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a11\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a12\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a13\ & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a14\ & 
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a15\);

\inst_CE_11|Mult3~mac_BX_bus\ <= (\inst_CE_11|Mult2~339\ & \inst_CE_11|Mult2~339\ & \inst_CE_11|Mult2~339\ & \inst_CE_11|Mult2~339\ & \inst_CE_11|Mult2~339\ & \inst_CE_11|Mult2~339\ & \inst_CE_11|Mult2~339\ & \inst_CE_11|Mult2~339\ & 
\inst_CE_11|Mult2~339\ & \inst_CE_11|Mult2~339\ & \inst_CE_11|Mult2~339\ & \inst_CE_11|Mult2~339\ & \inst_CE_11|Mult2~339\ & \inst_CE_11|Mult2~339\ & \inst_CE_11|Mult2~339\ & \inst_CE_11|Mult2~339\ & \inst_CE_11|Mult2~339\ & \inst_CE_11|Mult2~339\);

\inst_CE_11|Mult3~mac_BY_bus\ <= (\inst_CE_11|Mult2~339\ & \inst_CE_11|Mult2~338\ & \inst_CE_11|Mult2~337\ & \inst_CE_11|Mult2~336\ & \inst_CE_11|Mult2~335\ & \inst_CE_11|Mult2~334\ & \inst_CE_11|Mult2~333\ & \inst_CE_11|Mult2~332\ & 
\inst_CE_11|Mult2~331\ & \inst_CE_11|Mult2~330\ & \inst_CE_11|Mult2~329\ & \inst_CE_11|Mult2~328\ & \inst_CE_11|Mult2~327\ & \inst_CE_11|Mult2~326\ & \inst_CE_11|Mult2~325\ & \inst_CE_11|Mult2~324\ & \inst_CE_11|Mult2~323\ & \inst_CE_11|Mult2~mac_resulta\
);

\inst_CE_11|Mult3~mac_resulta\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(0);
\inst_CE_11|Mult3~323\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(1);
\inst_CE_11|Mult3~324\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(2);
\inst_CE_11|Mult3~325\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(3);
\inst_CE_11|Mult3~326\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(4);
\inst_CE_11|Mult3~327\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(5);
\inst_CE_11|Mult3~328\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(6);
\inst_CE_11|Mult3~329\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(7);
\inst_CE_11|Mult3~330\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(8);
\inst_CE_11|Mult3~331\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(9);
\inst_CE_11|Mult3~332\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(10);
\inst_CE_11|Mult3~333\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(11);
\inst_CE_11|Mult3~334\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(12);
\inst_CE_11|Mult3~335\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(13);
\inst_CE_11|Mult3~336\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(14);
\inst_CE_11|Mult3~337\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(15);
\inst_CE_11|Mult3~338\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(16);
\inst_CE_11|Mult3~339\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(17);
\inst_CE_11|Mult3~8\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(18);
\inst_CE_11|Mult3~9\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(19);
\inst_CE_11|Mult3~10\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(20);
\inst_CE_11|Mult3~11\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(21);
\inst_CE_11|Mult3~12\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(22);
\inst_CE_11|Mult3~13\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(23);
\inst_CE_11|Mult3~14\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(24);
\inst_CE_11|Mult3~15\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(25);
\inst_CE_11|Mult3~16\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(26);
\inst_CE_11|Mult3~17\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(27);
\inst_CE_11|Mult3~18\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(28);
\inst_CE_11|Mult3~19\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(29);
\inst_CE_11|Mult3~20\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(30);
\inst_CE_11|Mult3~21\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(31);
\inst_CE_11|Mult3~22\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(32);
\inst_CE_11|Mult3~23\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(33);
\inst_CE_11|Mult3~24\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(34);
\inst_CE_11|Mult3~25\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(35);
\inst_CE_11|Mult3~26\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(36);
\inst_CE_11|Mult3~27\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(37);
\inst_CE_11|Mult3~28\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(38);
\inst_CE_11|Mult3~29\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(39);
\inst_CE_11|Mult3~30\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(40);
\inst_CE_11|Mult3~31\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(41);
\inst_CE_11|Mult3~32\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(42);
\inst_CE_11|Mult3~33\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(43);
\inst_CE_11|Mult3~34\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(44);
\inst_CE_11|Mult3~35\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(45);
\inst_CE_11|Mult3~36\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(46);
\inst_CE_11|Mult3~37\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(47);
\inst_CE_11|Mult3~38\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(48);
\inst_CE_11|Mult3~39\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(49);
\inst_CE_11|Mult3~40\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(50);
\inst_CE_11|Mult3~41\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(51);
\inst_CE_11|Mult3~42\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(52);
\inst_CE_11|Mult3~43\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(53);
\inst_CE_11|Mult3~44\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(54);
\inst_CE_11|Mult3~45\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(55);
\inst_CE_11|Mult3~46\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(56);
\inst_CE_11|Mult3~47\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(57);
\inst_CE_11|Mult3~48\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(58);
\inst_CE_11|Mult3~49\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(59);
\inst_CE_11|Mult3~50\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(60);
\inst_CE_11|Mult3~51\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(61);
\inst_CE_11|Mult3~52\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(62);
\inst_CE_11|Mult3~53\ <= \inst_CE_11|Mult3~mac_RESULTA_bus\(63);

\inst_CE_13|Mult2~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_13|Mult2~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_13|Mult2~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_13|Mult2~mac_AX_bus\ <= (\w_13[2][7]~input_o\ & \w_13[2][7]~input_o\ & \w_13[2][7]~input_o\ & \w_13[2][7]~input_o\ & \w_13[2][7]~input_o\ & \w_13[2][7]~input_o\ & \w_13[2][7]~input_o\ & \w_13[2][7]~input_o\ & \w_13[2][7]~input_o\ & 
\w_13[2][7]~input_o\ & \w_13[2][7]~input_o\ & \w_13[2][6]~input_o\ & \w_13[2][5]~input_o\ & \w_13[2][4]~input_o\ & \w_13[2][3]~input_o\ & \w_13[2][2]~input_o\ & \w_13[2][1]~input_o\ & \w_13[2][0]~input_o\);

\inst_CE_13|Mult2~mac_AY_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][1]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][0]~_Duplicate_3_q\);

\inst_CE_13|Mult2~mac_BX_bus\ <= (\inst_CE_13|Add0~25\ & \inst_CE_13|Add0~25\ & \inst_CE_13|Add0~25\ & \inst_CE_13|Add0~25\ & \inst_CE_13|Add0~25\ & \inst_CE_13|Add0~25\ & \inst_CE_13|Add0~25\ & \inst_CE_13|Add0~25\ & \inst_CE_13|Add0~25\ & 
\inst_CE_13|Add0~25\ & \inst_CE_13|Add0~25\ & \inst_CE_13|Add0~25\ & \inst_CE_13|Add0~25\ & \inst_CE_13|Add0~25\ & \inst_CE_13|Add0~25\ & \inst_CE_13|Add0~25\ & \inst_CE_13|Add0~25\ & \inst_CE_13|Add0~25\);

\inst_CE_13|Mult2~mac_BY_bus\ <= (\inst_CE_13|Add0~25\ & \inst_CE_13|Add0~24\ & \inst_CE_13|Add0~23\ & \inst_CE_13|Add0~22\ & \inst_CE_13|Add0~21\ & \inst_CE_13|Add0~20\ & \inst_CE_13|Add0~19\ & \inst_CE_13|Add0~18\ & \inst_CE_13|Add0~17\ & 
\inst_CE_13|Add0~16\ & \inst_CE_13|Add0~15\ & \inst_CE_13|Add0~14\ & \inst_CE_13|Add0~13\ & \inst_CE_13|Add0~12\ & \inst_CE_13|Add0~11\ & \inst_CE_13|Add0~10\ & \inst_CE_13|Add0~9\ & \inst_CE_13|Add0~8_resulta\);

\inst_CE_13|Mult2~mac_resulta\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(0);
\inst_CE_13|Mult2~323\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(1);
\inst_CE_13|Mult2~324\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(2);
\inst_CE_13|Mult2~325\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(3);
\inst_CE_13|Mult2~326\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(4);
\inst_CE_13|Mult2~327\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(5);
\inst_CE_13|Mult2~328\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(6);
\inst_CE_13|Mult2~329\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(7);
\inst_CE_13|Mult2~330\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(8);
\inst_CE_13|Mult2~331\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(9);
\inst_CE_13|Mult2~332\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(10);
\inst_CE_13|Mult2~333\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(11);
\inst_CE_13|Mult2~334\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(12);
\inst_CE_13|Mult2~335\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(13);
\inst_CE_13|Mult2~336\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(14);
\inst_CE_13|Mult2~337\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(15);
\inst_CE_13|Mult2~338\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(16);
\inst_CE_13|Mult2~339\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(17);
\inst_CE_13|Mult2~8\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(18);
\inst_CE_13|Mult2~9\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(19);
\inst_CE_13|Mult2~10\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(20);
\inst_CE_13|Mult2~11\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(21);
\inst_CE_13|Mult2~12\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(22);
\inst_CE_13|Mult2~13\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(23);
\inst_CE_13|Mult2~14\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(24);
\inst_CE_13|Mult2~15\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(25);
\inst_CE_13|Mult2~16\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(26);
\inst_CE_13|Mult2~17\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(27);
\inst_CE_13|Mult2~18\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(28);
\inst_CE_13|Mult2~19\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(29);
\inst_CE_13|Mult2~20\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(30);
\inst_CE_13|Mult2~21\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(31);
\inst_CE_13|Mult2~22\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(32);
\inst_CE_13|Mult2~23\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(33);
\inst_CE_13|Mult2~24\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(34);
\inst_CE_13|Mult2~25\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(35);
\inst_CE_13|Mult2~26\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(36);
\inst_CE_13|Mult2~27\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(37);
\inst_CE_13|Mult2~28\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(38);
\inst_CE_13|Mult2~29\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(39);
\inst_CE_13|Mult2~30\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(40);
\inst_CE_13|Mult2~31\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(41);
\inst_CE_13|Mult2~32\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(42);
\inst_CE_13|Mult2~33\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(43);
\inst_CE_13|Mult2~34\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(44);
\inst_CE_13|Mult2~35\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(45);
\inst_CE_13|Mult2~36\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(46);
\inst_CE_13|Mult2~37\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(47);
\inst_CE_13|Mult2~38\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(48);
\inst_CE_13|Mult2~39\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(49);
\inst_CE_13|Mult2~40\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(50);
\inst_CE_13|Mult2~41\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(51);
\inst_CE_13|Mult2~42\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(52);
\inst_CE_13|Mult2~43\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(53);
\inst_CE_13|Mult2~44\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(54);
\inst_CE_13|Mult2~45\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(55);
\inst_CE_13|Mult2~46\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(56);
\inst_CE_13|Mult2~47\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(57);
\inst_CE_13|Mult2~48\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(58);
\inst_CE_13|Mult2~49\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(59);
\inst_CE_13|Mult2~50\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(60);
\inst_CE_13|Mult2~51\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(61);
\inst_CE_13|Mult2~52\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(62);
\inst_CE_13|Mult2~53\ <= \inst_CE_13|Mult2~mac_RESULTA_bus\(63);

\inst_CE_12|Mult2~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_12|Mult2~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_12|Mult2~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_12|Mult2~mac_AX_bus\ <= (\w_12[2][7]~input_o\ & \w_12[2][7]~input_o\ & \w_12[2][7]~input_o\ & \w_12[2][7]~input_o\ & \w_12[2][7]~input_o\ & \w_12[2][7]~input_o\ & \w_12[2][7]~input_o\ & \w_12[2][7]~input_o\ & \w_12[2][7]~input_o\ & 
\w_12[2][7]~input_o\ & \w_12[2][7]~input_o\ & \w_12[2][6]~input_o\ & \w_12[2][5]~input_o\ & \w_12[2][4]~input_o\ & \w_12[2][3]~input_o\ & \w_12[2][2]~input_o\ & \w_12[2][1]~input_o\ & \w_12[2][0]~input_o\);

\inst_CE_12|Mult2~mac_AY_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][1]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][0]~_Duplicate_3_q\);

\inst_CE_12|Mult2~mac_BX_bus\ <= (\inst_CE_12|Add0~25\ & \inst_CE_12|Add0~25\ & \inst_CE_12|Add0~25\ & \inst_CE_12|Add0~25\ & \inst_CE_12|Add0~25\ & \inst_CE_12|Add0~25\ & \inst_CE_12|Add0~25\ & \inst_CE_12|Add0~25\ & \inst_CE_12|Add0~25\ & 
\inst_CE_12|Add0~25\ & \inst_CE_12|Add0~25\ & \inst_CE_12|Add0~25\ & \inst_CE_12|Add0~25\ & \inst_CE_12|Add0~25\ & \inst_CE_12|Add0~25\ & \inst_CE_12|Add0~25\ & \inst_CE_12|Add0~25\ & \inst_CE_12|Add0~25\);

\inst_CE_12|Mult2~mac_BY_bus\ <= (\inst_CE_12|Add0~25\ & \inst_CE_12|Add0~24\ & \inst_CE_12|Add0~23\ & \inst_CE_12|Add0~22\ & \inst_CE_12|Add0~21\ & \inst_CE_12|Add0~20\ & \inst_CE_12|Add0~19\ & \inst_CE_12|Add0~18\ & \inst_CE_12|Add0~17\ & 
\inst_CE_12|Add0~16\ & \inst_CE_12|Add0~15\ & \inst_CE_12|Add0~14\ & \inst_CE_12|Add0~13\ & \inst_CE_12|Add0~12\ & \inst_CE_12|Add0~11\ & \inst_CE_12|Add0~10\ & \inst_CE_12|Add0~9\ & \inst_CE_12|Add0~8_resulta\);

\inst_CE_12|Mult2~mac_resulta\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(0);
\inst_CE_12|Mult2~323\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(1);
\inst_CE_12|Mult2~324\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(2);
\inst_CE_12|Mult2~325\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(3);
\inst_CE_12|Mult2~326\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(4);
\inst_CE_12|Mult2~327\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(5);
\inst_CE_12|Mult2~328\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(6);
\inst_CE_12|Mult2~329\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(7);
\inst_CE_12|Mult2~330\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(8);
\inst_CE_12|Mult2~331\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(9);
\inst_CE_12|Mult2~332\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(10);
\inst_CE_12|Mult2~333\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(11);
\inst_CE_12|Mult2~334\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(12);
\inst_CE_12|Mult2~335\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(13);
\inst_CE_12|Mult2~336\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(14);
\inst_CE_12|Mult2~337\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(15);
\inst_CE_12|Mult2~338\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(16);
\inst_CE_12|Mult2~339\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(17);
\inst_CE_12|Mult2~8\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(18);
\inst_CE_12|Mult2~9\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(19);
\inst_CE_12|Mult2~10\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(20);
\inst_CE_12|Mult2~11\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(21);
\inst_CE_12|Mult2~12\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(22);
\inst_CE_12|Mult2~13\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(23);
\inst_CE_12|Mult2~14\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(24);
\inst_CE_12|Mult2~15\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(25);
\inst_CE_12|Mult2~16\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(26);
\inst_CE_12|Mult2~17\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(27);
\inst_CE_12|Mult2~18\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(28);
\inst_CE_12|Mult2~19\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(29);
\inst_CE_12|Mult2~20\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(30);
\inst_CE_12|Mult2~21\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(31);
\inst_CE_12|Mult2~22\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(32);
\inst_CE_12|Mult2~23\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(33);
\inst_CE_12|Mult2~24\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(34);
\inst_CE_12|Mult2~25\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(35);
\inst_CE_12|Mult2~26\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(36);
\inst_CE_12|Mult2~27\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(37);
\inst_CE_12|Mult2~28\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(38);
\inst_CE_12|Mult2~29\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(39);
\inst_CE_12|Mult2~30\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(40);
\inst_CE_12|Mult2~31\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(41);
\inst_CE_12|Mult2~32\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(42);
\inst_CE_12|Mult2~33\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(43);
\inst_CE_12|Mult2~34\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(44);
\inst_CE_12|Mult2~35\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(45);
\inst_CE_12|Mult2~36\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(46);
\inst_CE_12|Mult2~37\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(47);
\inst_CE_12|Mult2~38\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(48);
\inst_CE_12|Mult2~39\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(49);
\inst_CE_12|Mult2~40\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(50);
\inst_CE_12|Mult2~41\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(51);
\inst_CE_12|Mult2~42\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(52);
\inst_CE_12|Mult2~43\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(53);
\inst_CE_12|Mult2~44\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(54);
\inst_CE_12|Mult2~45\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(55);
\inst_CE_12|Mult2~46\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(56);
\inst_CE_12|Mult2~47\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(57);
\inst_CE_12|Mult2~48\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(58);
\inst_CE_12|Mult2~49\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(59);
\inst_CE_12|Mult2~50\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(60);
\inst_CE_12|Mult2~51\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(61);
\inst_CE_12|Mult2~52\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(62);
\inst_CE_12|Mult2~53\ <= \inst_CE_12|Mult2~mac_RESULTA_bus\(63);

\inst_CE_11|Mult2~mac_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_11|Mult2~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_11|Mult2~mac_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_11|Mult2~mac_AX_bus\ <= (\w_11[2][7]~input_o\ & \w_11[2][7]~input_o\ & \w_11[2][7]~input_o\ & \w_11[2][7]~input_o\ & \w_11[2][7]~input_o\ & \w_11[2][7]~input_o\ & \w_11[2][7]~input_o\ & \w_11[2][7]~input_o\ & \w_11[2][7]~input_o\ & 
\w_11[2][7]~input_o\ & \w_11[2][7]~input_o\ & \w_11[2][6]~input_o\ & \w_11[2][5]~input_o\ & \w_11[2][4]~input_o\ & \w_11[2][3]~input_o\ & \w_11[2][2]~input_o\ & \w_11[2][1]~input_o\ & \w_11[2][0]~input_o\);

\inst_CE_11|Mult2~mac_AY_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][1]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][0]~_Duplicate_3_q\);

\inst_CE_11|Mult2~mac_BX_bus\ <= (\inst_CE_11|Add0~25\ & \inst_CE_11|Add0~25\ & \inst_CE_11|Add0~25\ & \inst_CE_11|Add0~25\ & \inst_CE_11|Add0~25\ & \inst_CE_11|Add0~25\ & \inst_CE_11|Add0~25\ & \inst_CE_11|Add0~25\ & \inst_CE_11|Add0~25\ & 
\inst_CE_11|Add0~25\ & \inst_CE_11|Add0~25\ & \inst_CE_11|Add0~25\ & \inst_CE_11|Add0~25\ & \inst_CE_11|Add0~25\ & \inst_CE_11|Add0~25\ & \inst_CE_11|Add0~25\ & \inst_CE_11|Add0~25\ & \inst_CE_11|Add0~25\);

\inst_CE_11|Mult2~mac_BY_bus\ <= (\inst_CE_11|Add0~25\ & \inst_CE_11|Add0~24\ & \inst_CE_11|Add0~23\ & \inst_CE_11|Add0~22\ & \inst_CE_11|Add0~21\ & \inst_CE_11|Add0~20\ & \inst_CE_11|Add0~19\ & \inst_CE_11|Add0~18\ & \inst_CE_11|Add0~17\ & 
\inst_CE_11|Add0~16\ & \inst_CE_11|Add0~15\ & \inst_CE_11|Add0~14\ & \inst_CE_11|Add0~13\ & \inst_CE_11|Add0~12\ & \inst_CE_11|Add0~11\ & \inst_CE_11|Add0~10\ & \inst_CE_11|Add0~9\ & \inst_CE_11|Add0~8_resulta\);

\inst_CE_11|Mult2~mac_resulta\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(0);
\inst_CE_11|Mult2~323\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(1);
\inst_CE_11|Mult2~324\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(2);
\inst_CE_11|Mult2~325\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(3);
\inst_CE_11|Mult2~326\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(4);
\inst_CE_11|Mult2~327\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(5);
\inst_CE_11|Mult2~328\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(6);
\inst_CE_11|Mult2~329\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(7);
\inst_CE_11|Mult2~330\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(8);
\inst_CE_11|Mult2~331\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(9);
\inst_CE_11|Mult2~332\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(10);
\inst_CE_11|Mult2~333\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(11);
\inst_CE_11|Mult2~334\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(12);
\inst_CE_11|Mult2~335\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(13);
\inst_CE_11|Mult2~336\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(14);
\inst_CE_11|Mult2~337\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(15);
\inst_CE_11|Mult2~338\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(16);
\inst_CE_11|Mult2~339\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(17);
\inst_CE_11|Mult2~8\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(18);
\inst_CE_11|Mult2~9\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(19);
\inst_CE_11|Mult2~10\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(20);
\inst_CE_11|Mult2~11\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(21);
\inst_CE_11|Mult2~12\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(22);
\inst_CE_11|Mult2~13\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(23);
\inst_CE_11|Mult2~14\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(24);
\inst_CE_11|Mult2~15\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(25);
\inst_CE_11|Mult2~16\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(26);
\inst_CE_11|Mult2~17\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(27);
\inst_CE_11|Mult2~18\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(28);
\inst_CE_11|Mult2~19\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(29);
\inst_CE_11|Mult2~20\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(30);
\inst_CE_11|Mult2~21\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(31);
\inst_CE_11|Mult2~22\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(32);
\inst_CE_11|Mult2~23\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(33);
\inst_CE_11|Mult2~24\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(34);
\inst_CE_11|Mult2~25\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(35);
\inst_CE_11|Mult2~26\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(36);
\inst_CE_11|Mult2~27\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(37);
\inst_CE_11|Mult2~28\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(38);
\inst_CE_11|Mult2~29\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(39);
\inst_CE_11|Mult2~30\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(40);
\inst_CE_11|Mult2~31\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(41);
\inst_CE_11|Mult2~32\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(42);
\inst_CE_11|Mult2~33\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(43);
\inst_CE_11|Mult2~34\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(44);
\inst_CE_11|Mult2~35\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(45);
\inst_CE_11|Mult2~36\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(46);
\inst_CE_11|Mult2~37\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(47);
\inst_CE_11|Mult2~38\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(48);
\inst_CE_11|Mult2~39\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(49);
\inst_CE_11|Mult2~40\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(50);
\inst_CE_11|Mult2~41\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(51);
\inst_CE_11|Mult2~42\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(52);
\inst_CE_11|Mult2~43\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(53);
\inst_CE_11|Mult2~44\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(54);
\inst_CE_11|Mult2~45\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(55);
\inst_CE_11|Mult2~46\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(56);
\inst_CE_11|Mult2~47\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(57);
\inst_CE_11|Mult2~48\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(58);
\inst_CE_11|Mult2~49\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(59);
\inst_CE_11|Mult2~50\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(60);
\inst_CE_11|Mult2~51\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(61);
\inst_CE_11|Mult2~52\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(62);
\inst_CE_11|Mult2~53\ <= \inst_CE_11|Mult2~mac_RESULTA_bus\(63);

\inst_CE_13|Add0~8_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_13|Add0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_13|Add0~8_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_13|Add0~8_AX_bus\ <= (\w_13[1][7]~input_o\ & \w_13[1][7]~input_o\ & \w_13[1][7]~input_o\ & \w_13[1][7]~input_o\ & \w_13[1][7]~input_o\ & \w_13[1][7]~input_o\ & \w_13[1][7]~input_o\ & \w_13[1][7]~input_o\ & \w_13[1][7]~input_o\ & 
\w_13[1][7]~input_o\ & \w_13[1][7]~input_o\ & \w_13[1][6]~input_o\ & \w_13[1][5]~input_o\ & \w_13[1][4]~input_o\ & \w_13[1][3]~input_o\ & \w_13[1][2]~input_o\ & \w_13[1][1]~input_o\ & \w_13[1][0]~input_o\);

\inst_CE_13|Add0~8_AY_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][0]~_Duplicate_3_q\);

\inst_CE_13|Add0~8_BX_bus\ <= (\w_13[0][7]~input_o\ & \w_13[0][7]~input_o\ & \w_13[0][7]~input_o\ & \w_13[0][7]~input_o\ & \w_13[0][7]~input_o\ & \w_13[0][7]~input_o\ & \w_13[0][7]~input_o\ & \w_13[0][7]~input_o\ & \w_13[0][7]~input_o\ & 
\w_13[0][7]~input_o\ & \w_13[0][7]~input_o\ & \w_13[0][6]~input_o\ & \w_13[0][5]~input_o\ & \w_13[0][4]~input_o\ & \w_13[0][3]~input_o\ & \w_13[0][2]~input_o\ & \w_13[0][1]~input_o\ & \w_13[0][0]~input_o\);

\inst_CE_13|Add0~8_BY_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][5]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][4]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][0]~q\);

\inst_CE_13|Add0~8_resulta\ <= \inst_CE_13|Add0~8_RESULTA_bus\(0);
\inst_CE_13|Add0~9\ <= \inst_CE_13|Add0~8_RESULTA_bus\(1);
\inst_CE_13|Add0~10\ <= \inst_CE_13|Add0~8_RESULTA_bus\(2);
\inst_CE_13|Add0~11\ <= \inst_CE_13|Add0~8_RESULTA_bus\(3);
\inst_CE_13|Add0~12\ <= \inst_CE_13|Add0~8_RESULTA_bus\(4);
\inst_CE_13|Add0~13\ <= \inst_CE_13|Add0~8_RESULTA_bus\(5);
\inst_CE_13|Add0~14\ <= \inst_CE_13|Add0~8_RESULTA_bus\(6);
\inst_CE_13|Add0~15\ <= \inst_CE_13|Add0~8_RESULTA_bus\(7);
\inst_CE_13|Add0~16\ <= \inst_CE_13|Add0~8_RESULTA_bus\(8);
\inst_CE_13|Add0~17\ <= \inst_CE_13|Add0~8_RESULTA_bus\(9);
\inst_CE_13|Add0~18\ <= \inst_CE_13|Add0~8_RESULTA_bus\(10);
\inst_CE_13|Add0~19\ <= \inst_CE_13|Add0~8_RESULTA_bus\(11);
\inst_CE_13|Add0~20\ <= \inst_CE_13|Add0~8_RESULTA_bus\(12);
\inst_CE_13|Add0~21\ <= \inst_CE_13|Add0~8_RESULTA_bus\(13);
\inst_CE_13|Add0~22\ <= \inst_CE_13|Add0~8_RESULTA_bus\(14);
\inst_CE_13|Add0~23\ <= \inst_CE_13|Add0~8_RESULTA_bus\(15);
\inst_CE_13|Add0~24\ <= \inst_CE_13|Add0~8_RESULTA_bus\(16);
\inst_CE_13|Add0~25\ <= \inst_CE_13|Add0~8_RESULTA_bus\(17);
\inst_CE_13|Add0~26\ <= \inst_CE_13|Add0~8_RESULTA_bus\(18);
\inst_CE_13|Add0~27\ <= \inst_CE_13|Add0~8_RESULTA_bus\(19);
\inst_CE_13|Add0~28\ <= \inst_CE_13|Add0~8_RESULTA_bus\(20);
\inst_CE_13|Add0~29\ <= \inst_CE_13|Add0~8_RESULTA_bus\(21);
\inst_CE_13|Add0~30\ <= \inst_CE_13|Add0~8_RESULTA_bus\(22);
\inst_CE_13|Add0~31\ <= \inst_CE_13|Add0~8_RESULTA_bus\(23);
\inst_CE_13|Add0~32\ <= \inst_CE_13|Add0~8_RESULTA_bus\(24);
\inst_CE_13|Add0~33\ <= \inst_CE_13|Add0~8_RESULTA_bus\(25);
\inst_CE_13|Add0~34\ <= \inst_CE_13|Add0~8_RESULTA_bus\(26);
\inst_CE_13|Add0~35\ <= \inst_CE_13|Add0~8_RESULTA_bus\(27);
\inst_CE_13|Add0~36\ <= \inst_CE_13|Add0~8_RESULTA_bus\(28);
\inst_CE_13|Add0~37\ <= \inst_CE_13|Add0~8_RESULTA_bus\(29);
\inst_CE_13|Add0~38\ <= \inst_CE_13|Add0~8_RESULTA_bus\(30);
\inst_CE_13|Add0~39\ <= \inst_CE_13|Add0~8_RESULTA_bus\(31);
\inst_CE_13|Add0~40\ <= \inst_CE_13|Add0~8_RESULTA_bus\(32);
\inst_CE_13|Add0~41\ <= \inst_CE_13|Add0~8_RESULTA_bus\(33);
\inst_CE_13|Add0~42\ <= \inst_CE_13|Add0~8_RESULTA_bus\(34);
\inst_CE_13|Add0~43\ <= \inst_CE_13|Add0~8_RESULTA_bus\(35);
\inst_CE_13|Add0~44\ <= \inst_CE_13|Add0~8_RESULTA_bus\(36);
\inst_CE_13|Add0~45\ <= \inst_CE_13|Add0~8_RESULTA_bus\(37);
\inst_CE_13|Add0~46\ <= \inst_CE_13|Add0~8_RESULTA_bus\(38);
\inst_CE_13|Add0~47\ <= \inst_CE_13|Add0~8_RESULTA_bus\(39);
\inst_CE_13|Add0~48\ <= \inst_CE_13|Add0~8_RESULTA_bus\(40);
\inst_CE_13|Add0~49\ <= \inst_CE_13|Add0~8_RESULTA_bus\(41);
\inst_CE_13|Add0~50\ <= \inst_CE_13|Add0~8_RESULTA_bus\(42);
\inst_CE_13|Add0~51\ <= \inst_CE_13|Add0~8_RESULTA_bus\(43);
\inst_CE_13|Add0~52\ <= \inst_CE_13|Add0~8_RESULTA_bus\(44);
\inst_CE_13|Add0~53\ <= \inst_CE_13|Add0~8_RESULTA_bus\(45);
\inst_CE_13|Add0~54\ <= \inst_CE_13|Add0~8_RESULTA_bus\(46);
\inst_CE_13|Add0~55\ <= \inst_CE_13|Add0~8_RESULTA_bus\(47);
\inst_CE_13|Add0~56\ <= \inst_CE_13|Add0~8_RESULTA_bus\(48);
\inst_CE_13|Add0~57\ <= \inst_CE_13|Add0~8_RESULTA_bus\(49);
\inst_CE_13|Add0~58\ <= \inst_CE_13|Add0~8_RESULTA_bus\(50);
\inst_CE_13|Add0~59\ <= \inst_CE_13|Add0~8_RESULTA_bus\(51);
\inst_CE_13|Add0~60\ <= \inst_CE_13|Add0~8_RESULTA_bus\(52);
\inst_CE_13|Add0~61\ <= \inst_CE_13|Add0~8_RESULTA_bus\(53);
\inst_CE_13|Add0~62\ <= \inst_CE_13|Add0~8_RESULTA_bus\(54);
\inst_CE_13|Add0~63\ <= \inst_CE_13|Add0~8_RESULTA_bus\(55);
\inst_CE_13|Add0~64\ <= \inst_CE_13|Add0~8_RESULTA_bus\(56);
\inst_CE_13|Add0~65\ <= \inst_CE_13|Add0~8_RESULTA_bus\(57);
\inst_CE_13|Add0~66\ <= \inst_CE_13|Add0~8_RESULTA_bus\(58);
\inst_CE_13|Add0~67\ <= \inst_CE_13|Add0~8_RESULTA_bus\(59);
\inst_CE_13|Add0~68\ <= \inst_CE_13|Add0~8_RESULTA_bus\(60);
\inst_CE_13|Add0~69\ <= \inst_CE_13|Add0~8_RESULTA_bus\(61);
\inst_CE_13|Add0~70\ <= \inst_CE_13|Add0~8_RESULTA_bus\(62);
\inst_CE_13|Add0~71\ <= \inst_CE_13|Add0~8_RESULTA_bus\(63);

\inst_CE_12|Add0~8_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_12|Add0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_12|Add0~8_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_12|Add0~8_AX_bus\ <= (\w_12[1][7]~input_o\ & \w_12[1][7]~input_o\ & \w_12[1][7]~input_o\ & \w_12[1][7]~input_o\ & \w_12[1][7]~input_o\ & \w_12[1][7]~input_o\ & \w_12[1][7]~input_o\ & \w_12[1][7]~input_o\ & \w_12[1][7]~input_o\ & 
\w_12[1][7]~input_o\ & \w_12[1][7]~input_o\ & \w_12[1][6]~input_o\ & \w_12[1][5]~input_o\ & \w_12[1][4]~input_o\ & \w_12[1][3]~input_o\ & \w_12[1][2]~input_o\ & \w_12[1][1]~input_o\ & \w_12[1][0]~input_o\);

\inst_CE_12|Add0~8_AY_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][0]~_Duplicate_3_q\);

\inst_CE_12|Add0~8_BX_bus\ <= (\w_12[0][7]~input_o\ & \w_12[0][7]~input_o\ & \w_12[0][7]~input_o\ & \w_12[0][7]~input_o\ & \w_12[0][7]~input_o\ & \w_12[0][7]~input_o\ & \w_12[0][7]~input_o\ & \w_12[0][7]~input_o\ & \w_12[0][7]~input_o\ & 
\w_12[0][7]~input_o\ & \w_12[0][7]~input_o\ & \w_12[0][6]~input_o\ & \w_12[0][5]~input_o\ & \w_12[0][4]~input_o\ & \w_12[0][3]~input_o\ & \w_12[0][2]~input_o\ & \w_12[0][1]~input_o\ & \w_12[0][0]~input_o\);

\inst_CE_12|Add0~8_BY_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][5]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][4]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][0]~q\);

\inst_CE_12|Add0~8_resulta\ <= \inst_CE_12|Add0~8_RESULTA_bus\(0);
\inst_CE_12|Add0~9\ <= \inst_CE_12|Add0~8_RESULTA_bus\(1);
\inst_CE_12|Add0~10\ <= \inst_CE_12|Add0~8_RESULTA_bus\(2);
\inst_CE_12|Add0~11\ <= \inst_CE_12|Add0~8_RESULTA_bus\(3);
\inst_CE_12|Add0~12\ <= \inst_CE_12|Add0~8_RESULTA_bus\(4);
\inst_CE_12|Add0~13\ <= \inst_CE_12|Add0~8_RESULTA_bus\(5);
\inst_CE_12|Add0~14\ <= \inst_CE_12|Add0~8_RESULTA_bus\(6);
\inst_CE_12|Add0~15\ <= \inst_CE_12|Add0~8_RESULTA_bus\(7);
\inst_CE_12|Add0~16\ <= \inst_CE_12|Add0~8_RESULTA_bus\(8);
\inst_CE_12|Add0~17\ <= \inst_CE_12|Add0~8_RESULTA_bus\(9);
\inst_CE_12|Add0~18\ <= \inst_CE_12|Add0~8_RESULTA_bus\(10);
\inst_CE_12|Add0~19\ <= \inst_CE_12|Add0~8_RESULTA_bus\(11);
\inst_CE_12|Add0~20\ <= \inst_CE_12|Add0~8_RESULTA_bus\(12);
\inst_CE_12|Add0~21\ <= \inst_CE_12|Add0~8_RESULTA_bus\(13);
\inst_CE_12|Add0~22\ <= \inst_CE_12|Add0~8_RESULTA_bus\(14);
\inst_CE_12|Add0~23\ <= \inst_CE_12|Add0~8_RESULTA_bus\(15);
\inst_CE_12|Add0~24\ <= \inst_CE_12|Add0~8_RESULTA_bus\(16);
\inst_CE_12|Add0~25\ <= \inst_CE_12|Add0~8_RESULTA_bus\(17);
\inst_CE_12|Add0~26\ <= \inst_CE_12|Add0~8_RESULTA_bus\(18);
\inst_CE_12|Add0~27\ <= \inst_CE_12|Add0~8_RESULTA_bus\(19);
\inst_CE_12|Add0~28\ <= \inst_CE_12|Add0~8_RESULTA_bus\(20);
\inst_CE_12|Add0~29\ <= \inst_CE_12|Add0~8_RESULTA_bus\(21);
\inst_CE_12|Add0~30\ <= \inst_CE_12|Add0~8_RESULTA_bus\(22);
\inst_CE_12|Add0~31\ <= \inst_CE_12|Add0~8_RESULTA_bus\(23);
\inst_CE_12|Add0~32\ <= \inst_CE_12|Add0~8_RESULTA_bus\(24);
\inst_CE_12|Add0~33\ <= \inst_CE_12|Add0~8_RESULTA_bus\(25);
\inst_CE_12|Add0~34\ <= \inst_CE_12|Add0~8_RESULTA_bus\(26);
\inst_CE_12|Add0~35\ <= \inst_CE_12|Add0~8_RESULTA_bus\(27);
\inst_CE_12|Add0~36\ <= \inst_CE_12|Add0~8_RESULTA_bus\(28);
\inst_CE_12|Add0~37\ <= \inst_CE_12|Add0~8_RESULTA_bus\(29);
\inst_CE_12|Add0~38\ <= \inst_CE_12|Add0~8_RESULTA_bus\(30);
\inst_CE_12|Add0~39\ <= \inst_CE_12|Add0~8_RESULTA_bus\(31);
\inst_CE_12|Add0~40\ <= \inst_CE_12|Add0~8_RESULTA_bus\(32);
\inst_CE_12|Add0~41\ <= \inst_CE_12|Add0~8_RESULTA_bus\(33);
\inst_CE_12|Add0~42\ <= \inst_CE_12|Add0~8_RESULTA_bus\(34);
\inst_CE_12|Add0~43\ <= \inst_CE_12|Add0~8_RESULTA_bus\(35);
\inst_CE_12|Add0~44\ <= \inst_CE_12|Add0~8_RESULTA_bus\(36);
\inst_CE_12|Add0~45\ <= \inst_CE_12|Add0~8_RESULTA_bus\(37);
\inst_CE_12|Add0~46\ <= \inst_CE_12|Add0~8_RESULTA_bus\(38);
\inst_CE_12|Add0~47\ <= \inst_CE_12|Add0~8_RESULTA_bus\(39);
\inst_CE_12|Add0~48\ <= \inst_CE_12|Add0~8_RESULTA_bus\(40);
\inst_CE_12|Add0~49\ <= \inst_CE_12|Add0~8_RESULTA_bus\(41);
\inst_CE_12|Add0~50\ <= \inst_CE_12|Add0~8_RESULTA_bus\(42);
\inst_CE_12|Add0~51\ <= \inst_CE_12|Add0~8_RESULTA_bus\(43);
\inst_CE_12|Add0~52\ <= \inst_CE_12|Add0~8_RESULTA_bus\(44);
\inst_CE_12|Add0~53\ <= \inst_CE_12|Add0~8_RESULTA_bus\(45);
\inst_CE_12|Add0~54\ <= \inst_CE_12|Add0~8_RESULTA_bus\(46);
\inst_CE_12|Add0~55\ <= \inst_CE_12|Add0~8_RESULTA_bus\(47);
\inst_CE_12|Add0~56\ <= \inst_CE_12|Add0~8_RESULTA_bus\(48);
\inst_CE_12|Add0~57\ <= \inst_CE_12|Add0~8_RESULTA_bus\(49);
\inst_CE_12|Add0~58\ <= \inst_CE_12|Add0~8_RESULTA_bus\(50);
\inst_CE_12|Add0~59\ <= \inst_CE_12|Add0~8_RESULTA_bus\(51);
\inst_CE_12|Add0~60\ <= \inst_CE_12|Add0~8_RESULTA_bus\(52);
\inst_CE_12|Add0~61\ <= \inst_CE_12|Add0~8_RESULTA_bus\(53);
\inst_CE_12|Add0~62\ <= \inst_CE_12|Add0~8_RESULTA_bus\(54);
\inst_CE_12|Add0~63\ <= \inst_CE_12|Add0~8_RESULTA_bus\(55);
\inst_CE_12|Add0~64\ <= \inst_CE_12|Add0~8_RESULTA_bus\(56);
\inst_CE_12|Add0~65\ <= \inst_CE_12|Add0~8_RESULTA_bus\(57);
\inst_CE_12|Add0~66\ <= \inst_CE_12|Add0~8_RESULTA_bus\(58);
\inst_CE_12|Add0~67\ <= \inst_CE_12|Add0~8_RESULTA_bus\(59);
\inst_CE_12|Add0~68\ <= \inst_CE_12|Add0~8_RESULTA_bus\(60);
\inst_CE_12|Add0~69\ <= \inst_CE_12|Add0~8_RESULTA_bus\(61);
\inst_CE_12|Add0~70\ <= \inst_CE_12|Add0~8_RESULTA_bus\(62);
\inst_CE_12|Add0~71\ <= \inst_CE_12|Add0~8_RESULTA_bus\(63);

\inst_CE_11|Add0~8_ACLR_bus\ <= (gnd & NOT \reset_n~input_o\);

\inst_CE_11|Add0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst_CE_11|Add0~8_ENA_bus\ <= (vcc & vcc & \enable~input_o\);

\inst_CE_11|Add0~8_AX_bus\ <= (\w_11[1][7]~input_o\ & \w_11[1][7]~input_o\ & \w_11[1][7]~input_o\ & \w_11[1][7]~input_o\ & \w_11[1][7]~input_o\ & \w_11[1][7]~input_o\ & \w_11[1][7]~input_o\ & \w_11[1][7]~input_o\ & \w_11[1][7]~input_o\ & 
\w_11[1][7]~input_o\ & \w_11[1][7]~input_o\ & \w_11[1][6]~input_o\ & \w_11[1][5]~input_o\ & \w_11[1][4]~input_o\ & \w_11[1][3]~input_o\ & \w_11[1][2]~input_o\ & \w_11[1][1]~input_o\ & \w_11[1][0]~input_o\);

\inst_CE_11|Add0~8_AY_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][6]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][2]~_Duplicate_3_q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3_q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][0]~_Duplicate_3_q\);

\inst_CE_11|Add0~8_BX_bus\ <= (\w_11[0][7]~input_o\ & \w_11[0][7]~input_o\ & \w_11[0][7]~input_o\ & \w_11[0][7]~input_o\ & \w_11[0][7]~input_o\ & \w_11[0][7]~input_o\ & \w_11[0][7]~input_o\ & \w_11[0][7]~input_o\ & \w_11[0][7]~input_o\ & 
\w_11[0][7]~input_o\ & \w_11[0][7]~input_o\ & \w_11[0][6]~input_o\ & \w_11[0][5]~input_o\ & \w_11[0][4]~input_o\ & \w_11[0][3]~input_o\ & \w_11[0][2]~input_o\ & \w_11[0][1]~input_o\ & \w_11[0][0]~input_o\);

\inst_CE_11|Add0~8_BY_bus\ <= (\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][5]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][4]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]~q\ & 
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]~q\ & \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][0]~q\);

\inst_CE_11|Add0~8_resulta\ <= \inst_CE_11|Add0~8_RESULTA_bus\(0);
\inst_CE_11|Add0~9\ <= \inst_CE_11|Add0~8_RESULTA_bus\(1);
\inst_CE_11|Add0~10\ <= \inst_CE_11|Add0~8_RESULTA_bus\(2);
\inst_CE_11|Add0~11\ <= \inst_CE_11|Add0~8_RESULTA_bus\(3);
\inst_CE_11|Add0~12\ <= \inst_CE_11|Add0~8_RESULTA_bus\(4);
\inst_CE_11|Add0~13\ <= \inst_CE_11|Add0~8_RESULTA_bus\(5);
\inst_CE_11|Add0~14\ <= \inst_CE_11|Add0~8_RESULTA_bus\(6);
\inst_CE_11|Add0~15\ <= \inst_CE_11|Add0~8_RESULTA_bus\(7);
\inst_CE_11|Add0~16\ <= \inst_CE_11|Add0~8_RESULTA_bus\(8);
\inst_CE_11|Add0~17\ <= \inst_CE_11|Add0~8_RESULTA_bus\(9);
\inst_CE_11|Add0~18\ <= \inst_CE_11|Add0~8_RESULTA_bus\(10);
\inst_CE_11|Add0~19\ <= \inst_CE_11|Add0~8_RESULTA_bus\(11);
\inst_CE_11|Add0~20\ <= \inst_CE_11|Add0~8_RESULTA_bus\(12);
\inst_CE_11|Add0~21\ <= \inst_CE_11|Add0~8_RESULTA_bus\(13);
\inst_CE_11|Add0~22\ <= \inst_CE_11|Add0~8_RESULTA_bus\(14);
\inst_CE_11|Add0~23\ <= \inst_CE_11|Add0~8_RESULTA_bus\(15);
\inst_CE_11|Add0~24\ <= \inst_CE_11|Add0~8_RESULTA_bus\(16);
\inst_CE_11|Add0~25\ <= \inst_CE_11|Add0~8_RESULTA_bus\(17);
\inst_CE_11|Add0~26\ <= \inst_CE_11|Add0~8_RESULTA_bus\(18);
\inst_CE_11|Add0~27\ <= \inst_CE_11|Add0~8_RESULTA_bus\(19);
\inst_CE_11|Add0~28\ <= \inst_CE_11|Add0~8_RESULTA_bus\(20);
\inst_CE_11|Add0~29\ <= \inst_CE_11|Add0~8_RESULTA_bus\(21);
\inst_CE_11|Add0~30\ <= \inst_CE_11|Add0~8_RESULTA_bus\(22);
\inst_CE_11|Add0~31\ <= \inst_CE_11|Add0~8_RESULTA_bus\(23);
\inst_CE_11|Add0~32\ <= \inst_CE_11|Add0~8_RESULTA_bus\(24);
\inst_CE_11|Add0~33\ <= \inst_CE_11|Add0~8_RESULTA_bus\(25);
\inst_CE_11|Add0~34\ <= \inst_CE_11|Add0~8_RESULTA_bus\(26);
\inst_CE_11|Add0~35\ <= \inst_CE_11|Add0~8_RESULTA_bus\(27);
\inst_CE_11|Add0~36\ <= \inst_CE_11|Add0~8_RESULTA_bus\(28);
\inst_CE_11|Add0~37\ <= \inst_CE_11|Add0~8_RESULTA_bus\(29);
\inst_CE_11|Add0~38\ <= \inst_CE_11|Add0~8_RESULTA_bus\(30);
\inst_CE_11|Add0~39\ <= \inst_CE_11|Add0~8_RESULTA_bus\(31);
\inst_CE_11|Add0~40\ <= \inst_CE_11|Add0~8_RESULTA_bus\(32);
\inst_CE_11|Add0~41\ <= \inst_CE_11|Add0~8_RESULTA_bus\(33);
\inst_CE_11|Add0~42\ <= \inst_CE_11|Add0~8_RESULTA_bus\(34);
\inst_CE_11|Add0~43\ <= \inst_CE_11|Add0~8_RESULTA_bus\(35);
\inst_CE_11|Add0~44\ <= \inst_CE_11|Add0~8_RESULTA_bus\(36);
\inst_CE_11|Add0~45\ <= \inst_CE_11|Add0~8_RESULTA_bus\(37);
\inst_CE_11|Add0~46\ <= \inst_CE_11|Add0~8_RESULTA_bus\(38);
\inst_CE_11|Add0~47\ <= \inst_CE_11|Add0~8_RESULTA_bus\(39);
\inst_CE_11|Add0~48\ <= \inst_CE_11|Add0~8_RESULTA_bus\(40);
\inst_CE_11|Add0~49\ <= \inst_CE_11|Add0~8_RESULTA_bus\(41);
\inst_CE_11|Add0~50\ <= \inst_CE_11|Add0~8_RESULTA_bus\(42);
\inst_CE_11|Add0~51\ <= \inst_CE_11|Add0~8_RESULTA_bus\(43);
\inst_CE_11|Add0~52\ <= \inst_CE_11|Add0~8_RESULTA_bus\(44);
\inst_CE_11|Add0~53\ <= \inst_CE_11|Add0~8_RESULTA_bus\(45);
\inst_CE_11|Add0~54\ <= \inst_CE_11|Add0~8_RESULTA_bus\(46);
\inst_CE_11|Add0~55\ <= \inst_CE_11|Add0~8_RESULTA_bus\(47);
\inst_CE_11|Add0~56\ <= \inst_CE_11|Add0~8_RESULTA_bus\(48);
\inst_CE_11|Add0~57\ <= \inst_CE_11|Add0~8_RESULTA_bus\(49);
\inst_CE_11|Add0~58\ <= \inst_CE_11|Add0~8_RESULTA_bus\(50);
\inst_CE_11|Add0~59\ <= \inst_CE_11|Add0~8_RESULTA_bus\(51);
\inst_CE_11|Add0~60\ <= \inst_CE_11|Add0~8_RESULTA_bus\(52);
\inst_CE_11|Add0~61\ <= \inst_CE_11|Add0~8_RESULTA_bus\(53);
\inst_CE_11|Add0~62\ <= \inst_CE_11|Add0~8_RESULTA_bus\(54);
\inst_CE_11|Add0~63\ <= \inst_CE_11|Add0~8_RESULTA_bus\(55);
\inst_CE_11|Add0~64\ <= \inst_CE_11|Add0~8_RESULTA_bus\(56);
\inst_CE_11|Add0~65\ <= \inst_CE_11|Add0~8_RESULTA_bus\(57);
\inst_CE_11|Add0~66\ <= \inst_CE_11|Add0~8_RESULTA_bus\(58);
\inst_CE_11|Add0~67\ <= \inst_CE_11|Add0~8_RESULTA_bus\(59);
\inst_CE_11|Add0~68\ <= \inst_CE_11|Add0~8_RESULTA_bus\(60);
\inst_CE_11|Add0~69\ <= \inst_CE_11|Add0~8_RESULTA_bus\(61);
\inst_CE_11|Add0~70\ <= \inst_CE_11|Add0~8_RESULTA_bus\(62);
\inst_CE_11|Add0~71\ <= \inst_CE_11|Add0~8_RESULTA_bus\(63);
\ALT_INV_in_data[2]~input_o\ <= NOT \in_data[2]~input_o\;
\ALT_INV_in_data[1]~input_o\ <= NOT \in_data[1]~input_o\;
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
\inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][3]~q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit6~q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~q\;
\inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[2][7]~_Duplicate_6_q\ <= NOT \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit7~q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~1_combout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_op_2~0_combout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0_combout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[1][7]~_Duplicate_6_q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~0_combout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[2][7]~_Duplicate_6_q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[2][6]~_Duplicate_3_q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3_q\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_dffe3a\(1) <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a\(1);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_dffe7~q\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe7~q\;
\inst_NE|taps_inst:2:gen_last:gen_last_inst|ALT_INV_cell[1][7]~_Duplicate_6_q\ <= NOT \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\;
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
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita0~sumout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~sumout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita3~sumout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~sumout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita4~sumout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~sumout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita5~sumout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~sumout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita6~sumout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~sumout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita7~sumout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~sumout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_op_1~5_sumout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~5_sumout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita7~1_sumout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1_sumout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita7~1_sumout\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~1_sumout\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(7) <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(7);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(6) <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(5) <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(4) <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(3) <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2) <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1) <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0) <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0);
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a7\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a7\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a10\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a10\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a11\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a11\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a14\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a14\;
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a15\ <= NOT \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a15\;
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
\ALT_INV_in_data[7]~input_o\ <= NOT \in_data[7]~input_o\;
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

-- Location: IOOBUF_X24_Y81_N19
\out_data[0]~output\ : cyclonev_io_obuf
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

-- Location: IOOBUF_X22_Y81_N53
\out_data[1]~output\ : cyclonev_io_obuf
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

-- Location: IOOBUF_X89_Y6_N5
\out_data[2]~output\ : cyclonev_io_obuf
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

-- Location: IOOBUF_X28_Y0_N19
\out_data[3]~output\ : cyclonev_io_obuf
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

-- Location: IOOBUF_X80_Y0_N19
\out_data[4]~output\ : cyclonev_io_obuf
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

-- Location: IOOBUF_X26_Y0_N42
\out_data[5]~output\ : cyclonev_io_obuf
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

-- Location: IOOBUF_X22_Y0_N2
\out_data[6]~output\ : cyclonev_io_obuf
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

-- Location: IOOBUF_X26_Y81_N59
\out_data[7]~output\ : cyclonev_io_obuf
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

-- Location: IOIBUF_X89_Y23_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G11
\clk~inputCLKENA0\ : cyclonev_clkena
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

-- Location: IOIBUF_X40_Y0_N1
\reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LABCELL_X22_Y10_N12
\inst_SE|sum_s[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_SE|sum_s[0]~0_combout\ = ( \enable~input_o\ & ( \reset_n~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reset_n~input_o\,
	dataf => \ALT_INV_enable~input_o\,
	combout => \inst_SE|sum_s[0]~0_combout\);

-- Location: IOIBUF_X8_Y0_N18
\w_11[8][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(8)(0),
	o => \w_11[8][0]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\w_11[8][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(8)(1),
	o => \w_11[8][1]~input_o\);

-- Location: IOIBUF_X14_Y81_N52
\w_11[8][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(8)(2),
	o => \w_11[8][2]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\w_11[8][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(8)(3),
	o => \w_11[8][3]~input_o\);

-- Location: IOIBUF_X18_Y81_N75
\w_11[8][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(8)(4),
	o => \w_11[8][4]~input_o\);

-- Location: IOIBUF_X18_Y81_N58
\w_11[8][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(8)(5),
	o => \w_11[8][5]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\w_11[8][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(8)(6),
	o => \w_11[8][6]~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\w_11[8][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(8)(7),
	o => \w_11[8][7]~input_o\);

-- Location: LABCELL_X29_Y9_N0
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~sumout\ = SUM(( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~q\ ) + ( VCC ) + ( !VCC ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~COUT\ = CARRY(( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit0~q\,
	cin => GND,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~COUT\);

-- Location: LABCELL_X29_Y9_N51
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~1_combout\ = !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita0~sumout\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~1_combout\);

-- Location: LABCELL_X29_Y9_N54
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0\ : cyclonev_lcell_comb
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

-- Location: FF_X29_Y9_N53
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~1_combout\,
	clrn => \reset_n~input_o\,
	ena => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~q\);

-- Location: LABCELL_X29_Y9_N3
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit1~q\ ) + ( VCC ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~COUT\ = CARRY(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit1~q\ ) + ( VCC ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit1~q\,
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita0~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~COUT\);

-- Location: FF_X29_Y9_N5
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~sumout\,
	clrn => \reset_n~input_o\,
	ena => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit1~q\);

-- Location: LABCELL_X29_Y9_N6
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit2~q\ ) + ( VCC ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~COUT\ = CARRY(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit2~q\ ) + ( VCC ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit2~q\,
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita1~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~COUT\);

-- Location: FF_X29_Y9_N8
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~sumout\,
	clrn => \reset_n~input_o\,
	ena => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit2~q\);

-- Location: LABCELL_X29_Y9_N9
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~sumout\ = SUM(( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~q\ ) + ( VCC ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~COUT\ = CARRY(( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~q\ ) + ( VCC ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit3~q\,
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita2~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~COUT\);

-- Location: LABCELL_X29_Y9_N36
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~0_combout\ = ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita3~sumout\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit3~0_combout\);

-- Location: FF_X29_Y9_N38
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

-- Location: LABCELL_X29_Y9_N12
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~sumout\ = SUM(( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~q\ ) + ( VCC ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~COUT\ = CARRY(( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~q\ ) + ( VCC ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit4~q\,
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita3~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~COUT\);

-- Location: LABCELL_X29_Y9_N42
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~0_combout\ = ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita4~sumout\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit4~0_combout\);

-- Location: FF_X29_Y9_N44
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

-- Location: LABCELL_X29_Y9_N15
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~sumout\ = SUM(( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~q\ ) + ( VCC ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~COUT\ = CARRY(( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~q\ ) + ( VCC ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit5~q\,
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita4~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~COUT\);

-- Location: LABCELL_X29_Y9_N45
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~0_combout\ = ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita5~sumout\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit5~0_combout\);

-- Location: FF_X29_Y9_N47
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

-- Location: LABCELL_X29_Y9_N18
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~sumout\ = SUM(( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~q\ ) + ( VCC ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~COUT\ = CARRY(( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~q\ ) + ( VCC ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit6~q\,
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita5~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~COUT\);

-- Location: LABCELL_X29_Y9_N39
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~0\ : cyclonev_lcell_comb
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

-- Location: FF_X29_Y9_N41
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit6~q\);

-- Location: LABCELL_X29_Y9_N21
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~sumout\ = SUM(( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~q\ ) + ( VCC ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~COUT\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~COUT\ = CARRY(( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~q\ ) + ( VCC ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_reg_bit7~q\,
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita6~COUT\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~COUT\);

-- Location: LABCELL_X29_Y9_N48
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~0_combout\ = !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|ALT_INV_counter_comb_bita7~sumout\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_reg_bit7~0_combout\);

-- Location: FF_X29_Y9_N49
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

-- Location: LABCELL_X29_Y9_N24
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr6|counter_comb_bita7~1\ : cyclonev_lcell_comb
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

-- Location: LABCELL_X29_Y9_N30
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe7~0\ : cyclonev_lcell_comb
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

-- Location: FF_X29_Y9_N31
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

-- Location: LABCELL_X27_Y9_N30
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita0\ : cyclonev_lcell_comb
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

-- Location: LABCELL_X27_Y9_N33
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita1\ : cyclonev_lcell_comb
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

-- Location: FF_X27_Y9_N35
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

-- Location: LABCELL_X27_Y9_N36
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita2\ : cyclonev_lcell_comb
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

-- Location: FF_X27_Y9_N38
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

-- Location: LABCELL_X27_Y9_N39
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita3\ : cyclonev_lcell_comb
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

-- Location: FF_X27_Y9_N41
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

-- Location: LABCELL_X27_Y9_N42
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita4\ : cyclonev_lcell_comb
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

-- Location: FF_X27_Y9_N44
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

-- Location: LABCELL_X27_Y9_N45
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita5\ : cyclonev_lcell_comb
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

-- Location: FF_X27_Y9_N47
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

-- Location: LABCELL_X27_Y9_N48
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita6\ : cyclonev_lcell_comb
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

-- Location: FF_X27_Y9_N50
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

-- Location: LABCELL_X27_Y9_N51
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7\ : cyclonev_lcell_comb
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

-- Location: FF_X27_Y9_N53
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

-- Location: LABCELL_X27_Y9_N27
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) & ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) & ( (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(7) & 
-- (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(7),
	datab => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(3),
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(4),
	datae => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(5),
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(6),
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\);

-- Location: LABCELL_X27_Y9_N54
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1\ : cyclonev_lcell_comb
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

-- Location: MLABCELL_X28_Y9_N54
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|cout_actual\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ & ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1_sumout\ ) ) # ( !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ & ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1_sumout\ ) ) # ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ & ( 
-- !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_comb_bita7~1_sumout\ & ( (!\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & 
-- (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	datab => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	datae => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~0_combout\,
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita7~1_sumout\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|cout_actual~combout\);

-- Location: FF_X27_Y9_N32
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

-- Location: MLABCELL_X28_Y9_N3
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ & ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) ) ) # ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ & ( 
-- !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & ( (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)) # 
-- (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	datae => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~0_combout\,
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0_combout\);

-- Location: MLABCELL_X28_Y9_N18
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ & ( 
-- !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & ( (!\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & 
-- !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	datae => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~0_combout\,
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\);

-- Location: LABCELL_X27_Y9_N0
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~1_sumout\ = SUM(( (!\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0_combout\ & 
-- !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\) ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( !VCC ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~2\ = CARRY(( (!\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0_combout\ & !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\) ) 
-- + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_op_2~0_combout\,
	datab => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~1_combout\,
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~1_sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~2\);

-- Location: FF_X27_Y9_N1
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

-- Location: LABCELL_X27_Y9_N3
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~5_sumout\ = SUM(( (!\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0_combout\ & 
-- !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\) ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~2\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~6\ = CARRY(( (!\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0_combout\ & !\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\) ) 
-- + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_op_2~0_combout\,
	datab => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~1_combout\,
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~2\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~5_sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~6\);

-- Location: MLABCELL_X28_Y9_N51
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[1]~0\ : cyclonev_lcell_comb
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

-- Location: FF_X28_Y9_N53
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

-- Location: MLABCELL_X28_Y9_N48
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|dffe3a[1]~_wirecell\ : cyclonev_lcell_comb
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

-- Location: LABCELL_X27_Y9_N6
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~9\ : cyclonev_lcell_comb
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

-- Location: FF_X27_Y9_N7
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

-- Location: LABCELL_X27_Y9_N9
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~13_sumout\ = SUM(( (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\) # 
-- (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0_combout\) ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~10\ 
-- ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~14\ = CARRY(( (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cmpr4_aeb_int~1_combout\) # (\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_2~0_combout\) 
-- ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) ) + ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_op_2~0_combout\,
	datab => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~1_combout\,
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(3),
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~10\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~13_sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~14\);

-- Location: FF_X27_Y9_N11
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

-- Location: LABCELL_X27_Y9_N12
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~17_sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~14\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~18\ = CARRY(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(4),
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~14\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~17_sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~18\);

-- Location: FF_X27_Y9_N13
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

-- Location: LABCELL_X27_Y9_N15
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~21_sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~18\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~22\ = CARRY(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(5),
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~18\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~21_sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~22\);

-- Location: FF_X27_Y9_N17
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

-- Location: LABCELL_X27_Y9_N18
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~25_sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~22\ ))
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~26\ = CARRY(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(6),
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~22\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~25_sumout\,
	cout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~26\);

-- Location: FF_X27_Y9_N19
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

-- Location: LABCELL_X27_Y9_N21
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~29_sumout\ = SUM(( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|counter_reg_bit\(7) ) + ( GND ) + ( 
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(7),
	cin => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~26\,
	sumout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|op_1~29_sumout\);

-- Location: FF_X27_Y9_N23
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

-- Location: IOIBUF_X78_Y0_N18
\in_data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(7),
	o => \in_data[7]~input_o\);

-- Location: LABCELL_X53_Y5_N21
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~feeder_combout\ = ( \in_data[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_in_data[7]~input_o\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~feeder_combout\);

-- Location: FF_X53_Y5_N23
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\);

-- Location: FF_X53_Y5_N20
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][7]~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\);

-- Location: FF_X53_Y5_N5
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][7]~_Duplicate_6_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\);

-- Location: LABCELL_X53_Y9_N48
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][7]~_Duplicate_6feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][7]~_Duplicate_6feeder_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][7]~_Duplicate_6_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[2][7]~_Duplicate_6_q\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][7]~_Duplicate_6feeder_combout\);

-- Location: FF_X53_Y9_N49
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][7]~_Duplicate_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][7]~_Duplicate_6feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][7]~_Duplicate_6_q\);

-- Location: IOIBUF_X52_Y0_N35
\in_data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(6),
	o => \in_data[6]~input_o\);

-- Location: FF_X53_Y9_N32
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \in_data[6]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]~q\);

-- Location: FF_X53_Y9_N17
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][6]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][6]~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][6]~_Duplicate_3_q\);

-- Location: FF_X53_Y9_N59
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

-- Location: FF_X53_Y9_N26
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][6]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][6]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][6]~_Duplicate_3_q\);

-- Location: IOIBUF_X70_Y0_N52
\in_data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(5),
	o => \in_data[5]~input_o\);

-- Location: FF_X53_Y9_N11
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

-- Location: FF_X53_Y9_N14
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][5]~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3_q\);

-- Location: FF_X53_Y9_N29
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][5]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3_q\);

-- Location: FF_X53_Y9_N34
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][5]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][5]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][5]~_Duplicate_3_q\);

-- Location: IOIBUF_X89_Y9_N38
\in_data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(4),
	o => \in_data[4]~input_o\);

-- Location: FF_X53_Y9_N8
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

-- Location: FF_X53_Y9_N41
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][4]~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3_q\);

-- Location: FF_X53_Y9_N56
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][4]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3_q\);

-- Location: FF_X53_Y9_N52
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][4]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][4]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][4]~_Duplicate_3_q\);

-- Location: IOIBUF_X56_Y0_N52
\in_data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(3),
	o => \in_data[3]~input_o\);

-- Location: FF_X53_Y5_N56
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \in_data[3]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]~q\);

-- Location: LABCELL_X53_Y9_N42
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:0:gen_1:gen1_inst|ALT_INV_cell[0][3]~q\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3feeder_combout\);

-- Location: FF_X53_Y9_N44
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3_q\);

-- Location: FF_X53_Y9_N23
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][3]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][3]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][3]~_Duplicate_3_q\);

-- Location: FF_X53_Y9_N19
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

-- Location: IOIBUF_X56_Y0_N18
\in_data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(2),
	o => \in_data[2]~input_o\);

-- Location: LABCELL_X53_Y5_N30
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]~feeder_combout\ = ( \in_data[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_in_data[2]~input_o\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]~feeder_combout\);

-- Location: FF_X53_Y5_N32
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]~q\);

-- Location: FF_X53_Y5_N29
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][2]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][2]~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][2]~_Duplicate_3_q\);

-- Location: FF_X53_Y5_N11
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

-- Location: FF_X53_Y5_N58
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

-- Location: IOIBUF_X58_Y0_N75
\in_data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(1),
	o => \in_data[1]~input_o\);

-- Location: LABCELL_X53_Y5_N15
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]~feeder_combout\ = ( \in_data[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_in_data[1]~input_o\,
	combout => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]~feeder_combout\);

-- Location: FF_X53_Y5_N17
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]~q\);

-- Location: FF_X53_Y5_N44
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][1]~q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3_q\);

-- Location: FF_X53_Y5_N50
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][1]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[1][1]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][1]~_Duplicate_3_q\);

-- Location: FF_X53_Y5_N37
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

-- Location: IOIBUF_X70_Y0_N1
\in_data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(0),
	o => \in_data[0]~input_o\);

-- Location: LABCELL_X53_Y9_N45
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[0][0]~feeder\ : cyclonev_lcell_comb
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

-- Location: FF_X53_Y9_N47
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

-- Location: FF_X53_Y9_N38
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

-- Location: FF_X53_Y9_N5
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

-- Location: FF_X53_Y9_N2
\inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][0]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[2][0]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:0:gen_1:gen1_inst|cell[3][0]~_Duplicate_3_q\);

-- Location: M10K_X26_Y9_N0
\inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "neighExtractor:inst_NE|taps:\taps_inst:1:gen_i:geni_inst|altshift_taps:cell_rtl_0|shift_taps_h101:auto_generated|altsyncram_7mc1:altsyncram5|ALTSYNCRAM",
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
	port_a_logical_ram_depth => 251,
	port_a_logical_ram_width => 16,
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
	port_b_logical_ram_depth => 251,
	port_b_logical_ram_width => 16,
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

-- Location: LABCELL_X30_Y9_N51
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a15\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a15\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3feeder_combout\);

-- Location: FF_X30_Y9_N53
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

-- Location: FF_X30_Y9_N26
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][0]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][0]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][0]~_Duplicate_3_q\);

-- Location: FF_X30_Y9_N1
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

-- Location: LABCELL_X30_Y9_N48
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a14\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a14\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][1]~_Duplicate_3feeder_combout\);

-- Location: FF_X30_Y9_N50
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

-- Location: FF_X30_Y9_N29
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

-- Location: FF_X30_Y9_N34
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][1]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][1]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][1]~_Duplicate_3_q\);

-- Location: FF_X22_Y10_N35
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][2]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a13\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][2]~_Duplicate_3_q\);

-- Location: FF_X22_Y10_N11
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

-- Location: FF_X22_Y10_N22
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][2]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][2]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][2]~_Duplicate_3_q\);

-- Location: FF_X24_Y10_N53
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][3]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a12\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][3]~_Duplicate_3_q\);

-- Location: FF_X24_Y10_N59
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

-- Location: FF_X24_Y10_N4
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

-- Location: LABCELL_X30_Y9_N42
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a11\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a11\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][4]~_Duplicate_3feeder_combout\);

-- Location: FF_X30_Y9_N44
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

-- Location: FF_X30_Y9_N56
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

-- Location: FF_X30_Y9_N16
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][4]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][4]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][4]~_Duplicate_3_q\);

-- Location: LABCELL_X30_Y9_N45
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a10\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a10\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][5]~_Duplicate_3feeder_combout\);

-- Location: FF_X30_Y9_N47
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

-- Location: FF_X30_Y9_N41
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

-- Location: FF_X27_Y9_N25
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][5]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][5]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][5]~_Duplicate_3_q\);

-- Location: FF_X30_Y9_N14
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a9\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3_q\);

-- Location: FF_X30_Y9_N8
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][6]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3_q\);

-- Location: LABCELL_X30_Y9_N21
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][6]~_Duplicate_3feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][6]~_Duplicate_3feeder_combout\ = \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][6]~_Duplicate_3_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[2][6]~_Duplicate_3_q\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][6]~_Duplicate_3feeder_combout\);

-- Location: FF_X30_Y9_N22
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][6]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][6]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][6]~_Duplicate_3_q\);

-- Location: FF_X30_Y9_N11
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a8\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[1][7]~_Duplicate_6_q\);

-- Location: LABCELL_X31_Y12_N24
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6feeder\ : cyclonev_lcell_comb
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

-- Location: FF_X31_Y12_N26
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

-- Location: LABCELL_X30_Y9_N18
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][7]~_Duplicate_6feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][7]~_Duplicate_6feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell[2][7]~_Duplicate_6_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|ALT_INV_cell[2][7]~_Duplicate_6_q\,
	combout => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][7]~_Duplicate_6feeder_combout\);

-- Location: FF_X30_Y9_N20
\inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][7]~_Duplicate_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][7]~_Duplicate_6feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:1:gen_i:geni_inst|cell[3][7]~_Duplicate_6_q\);

-- Location: LABCELL_X22_Y7_N33
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3feeder_combout\ = ( \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a7\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ALT_INV_ram_block8a7\,
	combout => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3feeder_combout\);

-- Location: FF_X22_Y7_N35
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3_q\);

-- Location: FF_X22_Y7_N14
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][0]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][0]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][0]~_Duplicate_3_q\);

-- Location: FF_X19_Y6_N11
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][1]~_Duplicate_3\ : dffeas
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
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][1]~_Duplicate_3_q\);

-- Location: FF_X19_Y6_N56
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

-- Location: FF_X25_Y10_N17
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3\ : dffeas
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
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3_q\);

-- Location: FF_X25_Y10_N29
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][2]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][2]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][2]~_Duplicate_3_q\);

-- Location: FF_X25_Y10_N41
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][3]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a4\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][3]~_Duplicate_3_q\);

-- Location: FF_X24_Y10_N41
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

-- Location: FF_X25_Y10_N59
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][4]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a3\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][4]~_Duplicate_3_q\);

-- Location: FF_X25_Y10_N47
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

-- Location: FF_X22_Y10_N47
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3\ : dffeas
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
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3_q\);

-- Location: FF_X25_Y9_N2
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][5]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][5]~_Duplicate_3_q\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][5]~_Duplicate_3_q\);

-- Location: FF_X25_Y10_N11
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][6]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a1\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][6]~_Duplicate_3_q\);

-- Location: FF_X25_Y10_N53
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

-- Location: FF_X22_Y10_N29
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst_NE|taps_inst:1:gen_i:geni_inst|cell_rtl_0|auto_generated|altsyncram5|ram_block8a0~portbdataout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[1][7]~_Duplicate_6_q\);

-- Location: LABCELL_X19_Y6_N51
\inst_NE|taps_inst:2:gen_last:gen_last_inst|cell[2][7]~_Duplicate_6feeder\ : cyclonev_lcell_comb
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

-- Location: FF_X19_Y6_N53
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

-- Location: IOIBUF_X2_Y0_N92
\w_11[7][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(7)(0),
	o => \w_11[7][0]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\w_11[7][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(7)(1),
	o => \w_11[7][1]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\w_11[7][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(7)(2),
	o => \w_11[7][2]~input_o\);

-- Location: IOIBUF_X18_Y81_N41
\w_11[7][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(7)(3),
	o => \w_11[7][3]~input_o\);

-- Location: IOIBUF_X18_Y81_N92
\w_11[7][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(7)(4),
	o => \w_11[7][4]~input_o\);

-- Location: IOIBUF_X20_Y81_N1
\w_11[7][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(7)(5),
	o => \w_11[7][5]~input_o\);

-- Location: IOIBUF_X14_Y81_N18
\w_11[7][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(7)(6),
	o => \w_11[7][6]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\w_11[7][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(7)(7),
	o => \w_11[7][7]~input_o\);

-- Location: IOIBUF_X89_Y23_N55
\w_11[6][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(6)(0),
	o => \w_11[6][0]~input_o\);

-- Location: IOIBUF_X20_Y81_N35
\w_11[6][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(6)(1),
	o => \w_11[6][1]~input_o\);

-- Location: IOIBUF_X32_Y81_N52
\w_11[6][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(6)(2),
	o => \w_11[6][2]~input_o\);

-- Location: IOIBUF_X22_Y81_N35
\w_11[6][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(6)(3),
	o => \w_11[6][3]~input_o\);

-- Location: IOIBUF_X20_Y81_N18
\w_11[6][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(6)(4),
	o => \w_11[6][4]~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\w_11[6][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(6)(5),
	o => \w_11[6][5]~input_o\);

-- Location: IOIBUF_X20_Y81_N52
\w_11[6][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(6)(6),
	o => \w_11[6][6]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\w_11[6][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(6)(7),
	o => \w_11[6][7]~input_o\);

-- Location: IOIBUF_X89_Y23_N38
\w_11[5][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(5)(0),
	o => \w_11[5][0]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\w_11[5][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(5)(1),
	o => \w_11[5][1]~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\w_11[5][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(5)(2),
	o => \w_11[5][2]~input_o\);

-- Location: IOIBUF_X30_Y81_N35
\w_11[5][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(5)(3),
	o => \w_11[5][3]~input_o\);

-- Location: IOIBUF_X89_Y25_N55
\w_11[5][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(5)(4),
	o => \w_11[5][4]~input_o\);

-- Location: IOIBUF_X26_Y81_N75
\w_11[5][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(5)(5),
	o => \w_11[5][5]~input_o\);

-- Location: IOIBUF_X30_Y81_N18
\w_11[5][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(5)(6),
	o => \w_11[5][6]~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\w_11[5][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(5)(7),
	o => \w_11[5][7]~input_o\);

-- Location: IOIBUF_X89_Y16_N21
\w_11[4][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(4)(0),
	o => \w_11[4][0]~input_o\);

-- Location: IOIBUF_X32_Y81_N35
\w_11[4][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(4)(1),
	o => \w_11[4][1]~input_o\);

-- Location: IOIBUF_X34_Y81_N92
\w_11[4][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(4)(2),
	o => \w_11[4][2]~input_o\);

-- Location: IOIBUF_X30_Y81_N52
\w_11[4][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(4)(3),
	o => \w_11[4][3]~input_o\);

-- Location: IOIBUF_X32_Y81_N18
\w_11[4][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(4)(4),
	o => \w_11[4][4]~input_o\);

-- Location: IOIBUF_X89_Y16_N4
\w_11[4][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(4)(5),
	o => \w_11[4][5]~input_o\);

-- Location: IOIBUF_X30_Y81_N1
\w_11[4][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(4)(6),
	o => \w_11[4][6]~input_o\);

-- Location: IOIBUF_X89_Y16_N38
\w_11[4][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(4)(7),
	o => \w_11[4][7]~input_o\);

-- Location: IOIBUF_X40_Y81_N18
\w_11[3][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(3)(0),
	o => \w_11[3][0]~input_o\);

-- Location: IOIBUF_X86_Y0_N1
\w_11[3][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(3)(1),
	o => \w_11[3][1]~input_o\);

-- Location: IOIBUF_X40_Y81_N52
\w_11[3][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(3)(2),
	o => \w_11[3][2]~input_o\);

-- Location: IOIBUF_X88_Y0_N19
\w_11[3][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(3)(3),
	o => \w_11[3][3]~input_o\);

-- Location: IOIBUF_X38_Y81_N35
\w_11[3][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(3)(4),
	o => \w_11[3][4]~input_o\);

-- Location: IOIBUF_X89_Y13_N55
\w_11[3][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(3)(5),
	o => \w_11[3][5]~input_o\);

-- Location: IOIBUF_X82_Y0_N92
\w_11[3][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(3)(6),
	o => \w_11[3][6]~input_o\);

-- Location: IOIBUF_X89_Y15_N21
\w_11[3][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(3)(7),
	o => \w_11[3][7]~input_o\);

-- Location: IOIBUF_X74_Y0_N58
\w_11[2][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(2)(0),
	o => \w_11[2][0]~input_o\);

-- Location: IOIBUF_X89_Y11_N78
\w_11[2][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(2)(1),
	o => \w_11[2][1]~input_o\);

-- Location: IOIBUF_X38_Y81_N52
\w_11[2][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(2)(2),
	o => \w_11[2][2]~input_o\);

-- Location: IOIBUF_X38_Y81_N18
\w_11[2][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(2)(3),
	o => \w_11[2][3]~input_o\);

-- Location: IOIBUF_X89_Y11_N44
\w_11[2][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(2)(4),
	o => \w_11[2][4]~input_o\);

-- Location: IOIBUF_X76_Y0_N1
\w_11[2][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(2)(5),
	o => \w_11[2][5]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\w_11[2][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(2)(6),
	o => \w_11[2][6]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\w_11[2][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(2)(7),
	o => \w_11[2][7]~input_o\);

-- Location: IOIBUF_X82_Y0_N41
\w_11[1][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(1)(0),
	o => \w_11[1][0]~input_o\);

-- Location: IOIBUF_X76_Y0_N52
\w_11[1][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(1)(1),
	o => \w_11[1][1]~input_o\);

-- Location: IOIBUF_X74_Y0_N75
\w_11[1][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(1)(2),
	o => \w_11[1][2]~input_o\);

-- Location: IOIBUF_X89_Y11_N61
\w_11[1][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(1)(3),
	o => \w_11[1][3]~input_o\);

-- Location: IOIBUF_X80_Y0_N1
\w_11[1][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(1)(4),
	o => \w_11[1][4]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\w_11[1][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(1)(5),
	o => \w_11[1][5]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\w_11[1][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(1)(6),
	o => \w_11[1][6]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\w_11[1][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(1)(7),
	o => \w_11[1][7]~input_o\);

-- Location: IOIBUF_X84_Y0_N1
\w_11[0][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(0)(0),
	o => \w_11[0][0]~input_o\);

-- Location: IOIBUF_X84_Y0_N35
\w_11[0][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(0)(1),
	o => \w_11[0][1]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\w_11[0][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(0)(2),
	o => \w_11[0][2]~input_o\);

-- Location: IOIBUF_X80_Y0_N52
\w_11[0][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(0)(3),
	o => \w_11[0][3]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\w_11[0][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(0)(4),
	o => \w_11[0][4]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\w_11[0][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(0)(5),
	o => \w_11[0][5]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\w_11[0][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(0)(6),
	o => \w_11[0][6]~input_o\);

-- Location: IOIBUF_X88_Y0_N36
\w_11[0][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_11(0)(7),
	o => \w_11[0][7]~input_o\);

-- Location: DSP_X54_Y10_N0
\inst_CE_11|Add0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "0",
	by_use_scan_in => "false",
	by_width => 19,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof2",
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
	aclr => \inst_CE_11|Add0~8_ACLR_bus\,
	clk => \inst_CE_11|Add0~8_CLK_bus\,
	ena => \inst_CE_11|Add0~8_ENA_bus\,
	ax => \inst_CE_11|Add0~8_AX_bus\,
	ay => \inst_CE_11|Add0~8_AY_bus\,
	bx => \inst_CE_11|Add0~8_BX_bus\,
	by => \inst_CE_11|Add0~8_BY_bus\,
	resulta => \inst_CE_11|Add0~8_RESULTA_bus\);

-- Location: DSP_X54_Y12_N0
\inst_CE_11|Mult2~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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
	aclr => \inst_CE_11|Mult2~mac_ACLR_bus\,
	clk => \inst_CE_11|Mult2~mac_CLK_bus\,
	ena => \inst_CE_11|Mult2~mac_ENA_bus\,
	ax => \inst_CE_11|Mult2~mac_AX_bus\,
	ay => \inst_CE_11|Mult2~mac_AY_bus\,
	bx => \inst_CE_11|Mult2~mac_BX_bus\,
	by => \inst_CE_11|Mult2~mac_BY_bus\,
	resulta => \inst_CE_11|Mult2~mac_RESULTA_bus\);

-- Location: DSP_X54_Y16_N0
\inst_CE_11|Mult3~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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
	aclr => \inst_CE_11|Mult3~mac_ACLR_bus\,
	clk => \inst_CE_11|Mult3~mac_CLK_bus\,
	ena => \inst_CE_11|Mult3~mac_ENA_bus\,
	ax => \inst_CE_11|Mult3~mac_AX_bus\,
	ay => \inst_CE_11|Mult3~mac_AY_bus\,
	bx => \inst_CE_11|Mult3~mac_BX_bus\,
	by => \inst_CE_11|Mult3~mac_BY_bus\,
	resulta => \inst_CE_11|Mult3~mac_RESULTA_bus\);

-- Location: DSP_X32_Y16_N0
\inst_CE_11|Mult4~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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

-- Location: DSP_X32_Y18_N0
\inst_CE_11|Mult5~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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

-- Location: DSP_X20_Y18_N0
\inst_CE_11|Mult6~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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

-- Location: DSP_X20_Y16_N0
\inst_CE_11|Mult7~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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

-- Location: DSP_X20_Y14_N0
\inst_CE_11|Mult8~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "1",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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

-- Location: IOIBUF_X28_Y0_N35
\n_11[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_11(0),
	o => \n_11[0]~input_o\);

-- Location: IOIBUF_X26_Y81_N41
\n_11[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_11(1),
	o => \n_11[1]~input_o\);

-- Location: LABCELL_X24_Y10_N48
\inst_CE_11|ShiftRight0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~1_combout\ = ( \inst_CE_11|sums\(2) & ( \inst_CE_11|sums\(0) & ( (!\n_11[0]~input_o\) # ((!\n_11[1]~input_o\ & (\inst_CE_11|sums\(1))) # (\n_11[1]~input_o\ & ((\inst_CE_11|sums\(3))))) ) ) ) # ( !\inst_CE_11|sums\(2) & ( 
-- \inst_CE_11|sums\(0) & ( (!\n_11[0]~input_o\ & (((!\n_11[1]~input_o\)))) # (\n_11[0]~input_o\ & ((!\n_11[1]~input_o\ & (\inst_CE_11|sums\(1))) # (\n_11[1]~input_o\ & ((\inst_CE_11|sums\(3)))))) ) ) ) # ( \inst_CE_11|sums\(2) & ( !\inst_CE_11|sums\(0) & ( 
-- (!\n_11[0]~input_o\ & (((\n_11[1]~input_o\)))) # (\n_11[0]~input_o\ & ((!\n_11[1]~input_o\ & (\inst_CE_11|sums\(1))) # (\n_11[1]~input_o\ & ((\inst_CE_11|sums\(3)))))) ) ) ) # ( !\inst_CE_11|sums\(2) & ( !\inst_CE_11|sums\(0) & ( (\n_11[0]~input_o\ & 
-- ((!\n_11[1]~input_o\ & (\inst_CE_11|sums\(1))) # (\n_11[1]~input_o\ & ((\inst_CE_11|sums\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_sums\(1),
	datab => \ALT_INV_n_11[0]~input_o\,
	datac => \ALT_INV_n_11[1]~input_o\,
	datad => \inst_CE_11|ALT_INV_sums\(3),
	datae => \inst_CE_11|ALT_INV_sums\(2),
	dataf => \inst_CE_11|ALT_INV_sums\(0),
	combout => \inst_CE_11|ShiftRight0~1_combout\);

-- Location: LABCELL_X22_Y10_N30
\inst_CE_11|ShiftRight0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~0_combout\ = ( \n_11[1]~input_o\ & ( \n_11[0]~input_o\ & ( \inst_CE_11|sums\(7) ) ) ) # ( !\n_11[1]~input_o\ & ( \n_11[0]~input_o\ & ( \inst_CE_11|sums\(5) ) ) ) # ( \n_11[1]~input_o\ & ( !\n_11[0]~input_o\ & ( \inst_CE_11|sums\(6) 
-- ) ) ) # ( !\n_11[1]~input_o\ & ( !\n_11[0]~input_o\ & ( \inst_CE_11|sums\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_sums\(7),
	datab => \inst_CE_11|ALT_INV_sums\(5),
	datac => \inst_CE_11|ALT_INV_sums\(6),
	datad => \inst_CE_11|ALT_INV_sums\(4),
	datae => \ALT_INV_n_11[1]~input_o\,
	dataf => \ALT_INV_n_11[0]~input_o\,
	combout => \inst_CE_11|ShiftRight0~0_combout\);

-- Location: IOIBUF_X26_Y0_N58
\n_11[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_11(2),
	o => \n_11[2]~input_o\);

-- Location: LABCELL_X22_Y10_N15
\inst_CE_11|ShiftRight0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~2_combout\ = ( \n_11[2]~input_o\ & ( \inst_CE_11|ShiftRight0~0_combout\ ) ) # ( !\n_11[2]~input_o\ & ( \inst_CE_11|ShiftRight0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_CE_11|ALT_INV_ShiftRight0~1_combout\,
	datac => \inst_CE_11|ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_n_11[2]~input_o\,
	combout => \inst_CE_11|ShiftRight0~2_combout\);

-- Location: IOIBUF_X16_Y0_N35
\w_13[8][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(8)(0),
	o => \w_13[8][0]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\w_13[8][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(8)(1),
	o => \w_13[8][1]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\w_13[8][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(8)(2),
	o => \w_13[8][2]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\w_13[8][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(8)(3),
	o => \w_13[8][3]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\w_13[8][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(8)(4),
	o => \w_13[8][4]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\w_13[8][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(8)(5),
	o => \w_13[8][5]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\w_13[8][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(8)(6),
	o => \w_13[8][6]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\w_13[8][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(8)(7),
	o => \w_13[8][7]~input_o\);

-- Location: IOIBUF_X24_Y0_N52
\w_13[7][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(7)(0),
	o => \w_13[7][0]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\w_13[7][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(7)(1),
	o => \w_13[7][1]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\w_13[7][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(7)(2),
	o => \w_13[7][2]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\w_13[7][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(7)(3),
	o => \w_13[7][3]~input_o\);

-- Location: IOIBUF_X24_Y0_N18
\w_13[7][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(7)(4),
	o => \w_13[7][4]~input_o\);

-- Location: IOIBUF_X24_Y0_N35
\w_13[7][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(7)(5),
	o => \w_13[7][5]~input_o\);

-- Location: IOIBUF_X22_Y0_N52
\w_13[7][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(7)(6),
	o => \w_13[7][6]~input_o\);

-- Location: IOIBUF_X18_Y0_N75
\w_13[7][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(7)(7),
	o => \w_13[7][7]~input_o\);

-- Location: IOIBUF_X18_Y0_N58
\w_13[6][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(6)(0),
	o => \w_13[6][0]~input_o\);

-- Location: IOIBUF_X20_Y0_N52
\w_13[6][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(6)(1),
	o => \w_13[6][1]~input_o\);

-- Location: IOIBUF_X18_Y0_N41
\w_13[6][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(6)(2),
	o => \w_13[6][2]~input_o\);

-- Location: IOIBUF_X22_Y0_N18
\w_13[6][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(6)(3),
	o => \w_13[6][3]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\w_13[6][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(6)(4),
	o => \w_13[6][4]~input_o\);

-- Location: IOIBUF_X20_Y0_N18
\w_13[6][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(6)(5),
	o => \w_13[6][5]~input_o\);

-- Location: IOIBUF_X20_Y0_N35
\w_13[6][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(6)(6),
	o => \w_13[6][6]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\w_13[6][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(6)(7),
	o => \w_13[6][7]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\w_13[5][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(5)(0),
	o => \w_13[5][0]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\w_13[5][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(5)(1),
	o => \w_13[5][1]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\w_13[5][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(5)(2),
	o => \w_13[5][2]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\w_13[5][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(5)(3),
	o => \w_13[5][3]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\w_13[5][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(5)(4),
	o => \w_13[5][4]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\w_13[5][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(5)(5),
	o => \w_13[5][5]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\w_13[5][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(5)(6),
	o => \w_13[5][6]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\w_13[5][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(5)(7),
	o => \w_13[5][7]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\w_13[4][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(4)(0),
	o => \w_13[4][0]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\w_13[4][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(4)(1),
	o => \w_13[4][1]~input_o\);

-- Location: IOIBUF_X80_Y0_N35
\w_13[4][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(4)(2),
	o => \w_13[4][2]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\w_13[4][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(4)(3),
	o => \w_13[4][3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\w_13[4][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(4)(4),
	o => \w_13[4][4]~input_o\);

-- Location: IOIBUF_X78_Y0_N1
\w_13[4][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(4)(5),
	o => \w_13[4][5]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\w_13[4][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(4)(6),
	o => \w_13[4][6]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\w_13[4][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(4)(7),
	o => \w_13[4][7]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\w_13[3][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(3)(0),
	o => \w_13[3][0]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\w_13[3][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(3)(1),
	o => \w_13[3][1]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\w_13[3][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(3)(2),
	o => \w_13[3][2]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\w_13[3][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(3)(3),
	o => \w_13[3][3]~input_o\);

-- Location: IOIBUF_X82_Y0_N75
\w_13[3][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(3)(4),
	o => \w_13[3][4]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\w_13[3][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(3)(5),
	o => \w_13[3][5]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\w_13[3][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(3)(6),
	o => \w_13[3][6]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\w_13[3][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(3)(7),
	o => \w_13[3][7]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\w_13[2][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(2)(0),
	o => \w_13[2][0]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\w_13[2][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(2)(1),
	o => \w_13[2][1]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\w_13[2][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(2)(2),
	o => \w_13[2][2]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\w_13[2][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(2)(3),
	o => \w_13[2][3]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\w_13[2][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(2)(4),
	o => \w_13[2][4]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\w_13[2][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(2)(5),
	o => \w_13[2][5]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\w_13[2][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(2)(6),
	o => \w_13[2][6]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\w_13[2][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(2)(7),
	o => \w_13[2][7]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\w_13[1][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(1)(0),
	o => \w_13[1][0]~input_o\);

-- Location: IOIBUF_X74_Y0_N41
\w_13[1][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(1)(1),
	o => \w_13[1][1]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\w_13[1][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(1)(2),
	o => \w_13[1][2]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\w_13[1][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(1)(3),
	o => \w_13[1][3]~input_o\);

-- Location: IOIBUF_X76_Y0_N18
\w_13[1][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(1)(4),
	o => \w_13[1][4]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\w_13[1][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(1)(5),
	o => \w_13[1][5]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\w_13[1][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(1)(6),
	o => \w_13[1][6]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\w_13[1][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(1)(7),
	o => \w_13[1][7]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\w_13[0][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(0)(0),
	o => \w_13[0][0]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\w_13[0][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(0)(1),
	o => \w_13[0][1]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\w_13[0][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(0)(2),
	o => \w_13[0][2]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\w_13[0][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(0)(3),
	o => \w_13[0][3]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\w_13[0][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(0)(4),
	o => \w_13[0][4]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\w_13[0][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(0)(5),
	o => \w_13[0][5]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\w_13[0][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(0)(6),
	o => \w_13[0][6]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\w_13[0][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_13(0)(7),
	o => \w_13[0][7]~input_o\);

-- Location: DSP_X54_Y8_N0
\inst_CE_13|Add0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "0",
	by_use_scan_in => "false",
	by_width => 19,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof2",
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
	aclr => \inst_CE_13|Add0~8_ACLR_bus\,
	clk => \inst_CE_13|Add0~8_CLK_bus\,
	ena => \inst_CE_13|Add0~8_ENA_bus\,
	ax => \inst_CE_13|Add0~8_AX_bus\,
	ay => \inst_CE_13|Add0~8_AY_bus\,
	bx => \inst_CE_13|Add0~8_BX_bus\,
	by => \inst_CE_13|Add0~8_BY_bus\,
	resulta => \inst_CE_13|Add0~8_RESULTA_bus\);

-- Location: DSP_X54_Y6_N0
\inst_CE_13|Mult2~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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
	aclr => \inst_CE_13|Mult2~mac_ACLR_bus\,
	clk => \inst_CE_13|Mult2~mac_CLK_bus\,
	ena => \inst_CE_13|Mult2~mac_ENA_bus\,
	ax => \inst_CE_13|Mult2~mac_AX_bus\,
	ay => \inst_CE_13|Mult2~mac_AY_bus\,
	bx => \inst_CE_13|Mult2~mac_BX_bus\,
	by => \inst_CE_13|Mult2~mac_BY_bus\,
	resulta => \inst_CE_13|Mult2~mac_RESULTA_bus\);

-- Location: DSP_X54_Y4_N0
\inst_CE_13|Mult3~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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
	aclr => \inst_CE_13|Mult3~mac_ACLR_bus\,
	clk => \inst_CE_13|Mult3~mac_CLK_bus\,
	ena => \inst_CE_13|Mult3~mac_ENA_bus\,
	ax => \inst_CE_13|Mult3~mac_AX_bus\,
	ay => \inst_CE_13|Mult3~mac_AY_bus\,
	bx => \inst_CE_13|Mult3~mac_BX_bus\,
	by => \inst_CE_13|Mult3~mac_BY_bus\,
	resulta => \inst_CE_13|Mult3~mac_RESULTA_bus\);

-- Location: DSP_X32_Y4_N0
\inst_CE_13|Mult4~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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

-- Location: DSP_X32_Y2_N0
\inst_CE_13|Mult5~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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

-- Location: DSP_X20_Y2_N0
\inst_CE_13|Mult6~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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

-- Location: DSP_X20_Y4_N0
\inst_CE_13|Mult7~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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

-- Location: DSP_X20_Y6_N0
\inst_CE_13|Mult8~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "1",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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

-- Location: IOIBUF_X16_Y0_N52
\n_13[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_13(0),
	o => \n_13[0]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\n_13[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_13(1),
	o => \n_13[1]~input_o\);

-- Location: MLABCELL_X21_Y6_N0
\inst_CE_13|ShiftRight0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~0_combout\ = ( \inst_CE_13|sums\(4) & ( \inst_CE_13|sums\(5) & ( (!\n_13[1]~input_o\) # ((!\n_13[0]~input_o\ & (\inst_CE_13|sums\(6))) # (\n_13[0]~input_o\ & ((\inst_CE_13|sums\(7))))) ) ) ) # ( !\inst_CE_13|sums\(4) & ( 
-- \inst_CE_13|sums\(5) & ( (!\n_13[0]~input_o\ & (\inst_CE_13|sums\(6) & ((\n_13[1]~input_o\)))) # (\n_13[0]~input_o\ & (((!\n_13[1]~input_o\) # (\inst_CE_13|sums\(7))))) ) ) ) # ( \inst_CE_13|sums\(4) & ( !\inst_CE_13|sums\(5) & ( (!\n_13[0]~input_o\ & 
-- (((!\n_13[1]~input_o\)) # (\inst_CE_13|sums\(6)))) # (\n_13[0]~input_o\ & (((\inst_CE_13|sums\(7) & \n_13[1]~input_o\)))) ) ) ) # ( !\inst_CE_13|sums\(4) & ( !\inst_CE_13|sums\(5) & ( (\n_13[1]~input_o\ & ((!\n_13[0]~input_o\ & (\inst_CE_13|sums\(6))) # 
-- (\n_13[0]~input_o\ & ((\inst_CE_13|sums\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_sums\(6),
	datab => \ALT_INV_n_13[0]~input_o\,
	datac => \inst_CE_13|ALT_INV_sums\(7),
	datad => \ALT_INV_n_13[1]~input_o\,
	datae => \inst_CE_13|ALT_INV_sums\(4),
	dataf => \inst_CE_13|ALT_INV_sums\(5),
	combout => \inst_CE_13|ShiftRight0~0_combout\);

-- Location: IOIBUF_X28_Y0_N1
\n_13[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_13(2),
	o => \n_13[2]~input_o\);

-- Location: LABCELL_X19_Y6_N12
\inst_CE_13|ShiftRight0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~1_combout\ = ( \n_13[1]~input_o\ & ( \inst_CE_13|sums\(0) & ( (!\n_13[0]~input_o\ & (\inst_CE_13|sums\(2))) # (\n_13[0]~input_o\ & ((\inst_CE_13|sums\(3)))) ) ) ) # ( !\n_13[1]~input_o\ & ( \inst_CE_13|sums\(0) & ( 
-- (!\n_13[0]~input_o\) # (\inst_CE_13|sums\(1)) ) ) ) # ( \n_13[1]~input_o\ & ( !\inst_CE_13|sums\(0) & ( (!\n_13[0]~input_o\ & (\inst_CE_13|sums\(2))) # (\n_13[0]~input_o\ & ((\inst_CE_13|sums\(3)))) ) ) ) # ( !\n_13[1]~input_o\ & ( !\inst_CE_13|sums\(0) & 
-- ( (\n_13[0]~input_o\ & \inst_CE_13|sums\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000010100101111110111011101110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_13[0]~input_o\,
	datab => \inst_CE_13|ALT_INV_sums\(1),
	datac => \inst_CE_13|ALT_INV_sums\(2),
	datad => \inst_CE_13|ALT_INV_sums\(3),
	datae => \ALT_INV_n_13[1]~input_o\,
	dataf => \inst_CE_13|ALT_INV_sums\(0),
	combout => \inst_CE_13|ShiftRight0~1_combout\);

-- Location: LABCELL_X23_Y10_N24
\inst_CE_13|ShiftRight0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~2_combout\ = ( \inst_CE_13|ShiftRight0~1_combout\ & ( (!\n_13[2]~input_o\) # (\inst_CE_13|ShiftRight0~0_combout\) ) ) # ( !\inst_CE_13|ShiftRight0~1_combout\ & ( (\inst_CE_13|ShiftRight0~0_combout\ & \n_13[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_ShiftRight0~0_combout\,
	datab => \ALT_INV_n_13[2]~input_o\,
	dataf => \inst_CE_13|ALT_INV_ShiftRight0~1_combout\,
	combout => \inst_CE_13|ShiftRight0~2_combout\);

-- Location: IOIBUF_X10_Y0_N75
\w_12[8][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(8)(0),
	o => \w_12[8][0]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\w_12[8][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(8)(1),
	o => \w_12[8][1]~input_o\);

-- Location: IOIBUF_X14_Y81_N1
\w_12[8][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(8)(2),
	o => \w_12[8][2]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\w_12[8][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(8)(3),
	o => \w_12[8][3]~input_o\);

-- Location: IOIBUF_X18_Y0_N92
\w_12[8][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(8)(4),
	o => \w_12[8][4]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\w_12[8][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(8)(5),
	o => \w_12[8][5]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\w_12[8][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(8)(6),
	o => \w_12[8][6]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\w_12[8][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(8)(7),
	o => \w_12[8][7]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\w_12[7][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(7)(0),
	o => \w_12[7][0]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\w_12[7][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(7)(1),
	o => \w_12[7][1]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\w_12[7][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(7)(2),
	o => \w_12[7][2]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\w_12[7][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(7)(3),
	o => \w_12[7][3]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\w_12[7][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(7)(4),
	o => \w_12[7][4]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\w_12[7][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(7)(5),
	o => \w_12[7][5]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\w_12[7][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(7)(6),
	o => \w_12[7][6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\w_12[7][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(7)(7),
	o => \w_12[7][7]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\w_12[6][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(6)(0),
	o => \w_12[6][0]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\w_12[6][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(6)(1),
	o => \w_12[6][1]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\w_12[6][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(6)(2),
	o => \w_12[6][2]~input_o\);

-- Location: IOIBUF_X36_Y81_N18
\w_12[6][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(6)(3),
	o => \w_12[6][3]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\w_12[6][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(6)(4),
	o => \w_12[6][4]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\w_12[6][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(6)(5),
	o => \w_12[6][5]~input_o\);

-- Location: IOIBUF_X34_Y81_N41
\w_12[6][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(6)(6),
	o => \w_12[6][6]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\w_12[6][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(6)(7),
	o => \w_12[6][7]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\w_12[5][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(5)(0),
	o => \w_12[5][0]~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\w_12[5][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(5)(1),
	o => \w_12[5][1]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\w_12[5][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(5)(2),
	o => \w_12[5][2]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\w_12[5][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(5)(3),
	o => \w_12[5][3]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\w_12[5][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(5)(4),
	o => \w_12[5][4]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\w_12[5][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(5)(5),
	o => \w_12[5][5]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\w_12[5][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(5)(6),
	o => \w_12[5][6]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\w_12[5][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(5)(7),
	o => \w_12[5][7]~input_o\);

-- Location: IOIBUF_X36_Y81_N35
\w_12[4][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(4)(0),
	o => \w_12[4][0]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\w_12[4][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(4)(1),
	o => \w_12[4][1]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\w_12[4][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(4)(2),
	o => \w_12[4][2]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\w_12[4][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(4)(3),
	o => \w_12[4][3]~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\w_12[4][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(4)(4),
	o => \w_12[4][4]~input_o\);

-- Location: IOIBUF_X78_Y0_N52
\w_12[4][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(4)(5),
	o => \w_12[4][5]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\w_12[4][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(4)(6),
	o => \w_12[4][6]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\w_12[4][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(4)(7),
	o => \w_12[4][7]~input_o\);

-- Location: IOIBUF_X34_Y81_N58
\w_12[3][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(3)(0),
	o => \w_12[3][0]~input_o\);

-- Location: IOIBUF_X78_Y0_N35
\w_12[3][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(3)(1),
	o => \w_12[3][1]~input_o\);

-- Location: IOIBUF_X32_Y81_N1
\w_12[3][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(3)(2),
	o => \w_12[3][2]~input_o\);

-- Location: IOIBUF_X89_Y11_N95
\w_12[3][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(3)(3),
	o => \w_12[3][3]~input_o\);

-- Location: IOIBUF_X89_Y13_N21
\w_12[3][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(3)(4),
	o => \w_12[3][4]~input_o\);

-- Location: IOIBUF_X26_Y81_N92
\w_12[3][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(3)(5),
	o => \w_12[3][5]~input_o\);

-- Location: IOIBUF_X34_Y81_N75
\w_12[3][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(3)(6),
	o => \w_12[3][6]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\w_12[3][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(3)(7),
	o => \w_12[3][7]~input_o\);

-- Location: IOIBUF_X89_Y13_N38
\w_12[2][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(2)(0),
	o => \w_12[2][0]~input_o\);

-- Location: IOIBUF_X84_Y0_N18
\w_12[2][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(2)(1),
	o => \w_12[2][1]~input_o\);

-- Location: IOIBUF_X86_Y0_N18
\w_12[2][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(2)(2),
	o => \w_12[2][2]~input_o\);

-- Location: IOIBUF_X76_Y0_N35
\w_12[2][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(2)(3),
	o => \w_12[2][3]~input_o\);

-- Location: IOIBUF_X82_Y0_N58
\w_12[2][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(2)(4),
	o => \w_12[2][4]~input_o\);

-- Location: IOIBUF_X36_Y81_N52
\w_12[2][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(2)(5),
	o => \w_12[2][5]~input_o\);

-- Location: IOIBUF_X74_Y0_N92
\w_12[2][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(2)(6),
	o => \w_12[2][6]~input_o\);

-- Location: IOIBUF_X89_Y13_N4
\w_12[2][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(2)(7),
	o => \w_12[2][7]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\w_12[1][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(1)(0),
	o => \w_12[1][0]~input_o\);

-- Location: IOIBUF_X89_Y15_N55
\w_12[1][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(1)(1),
	o => \w_12[1][1]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\w_12[1][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(1)(2),
	o => \w_12[1][2]~input_o\);

-- Location: IOIBUF_X40_Y81_N1
\w_12[1][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(1)(3),
	o => \w_12[1][3]~input_o\);

-- Location: IOIBUF_X88_Y0_N53
\w_12[1][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(1)(4),
	o => \w_12[1][4]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\w_12[1][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(1)(5),
	o => \w_12[1][5]~input_o\);

-- Location: IOIBUF_X38_Y81_N1
\w_12[1][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(1)(6),
	o => \w_12[1][6]~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\w_12[1][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(1)(7),
	o => \w_12[1][7]~input_o\);

-- Location: IOIBUF_X40_Y81_N35
\w_12[0][0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(0)(0),
	o => \w_12[0][0]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\w_12[0][1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(0)(1),
	o => \w_12[0][1]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\w_12[0][2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(0)(2),
	o => \w_12[0][2]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\w_12[0][3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(0)(3),
	o => \w_12[0][3]~input_o\);

-- Location: IOIBUF_X89_Y15_N38
\w_12[0][4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(0)(4),
	o => \w_12[0][4]~input_o\);

-- Location: IOIBUF_X89_Y15_N4
\w_12[0][5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(0)(5),
	o => \w_12[0][5]~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\w_12[0][6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(0)(6),
	o => \w_12[0][6]~input_o\);

-- Location: IOIBUF_X89_Y16_N55
\w_12[0][7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_12(0)(7),
	o => \w_12[0][7]~input_o\);

-- Location: DSP_X54_Y18_N0
\inst_CE_12|Add0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "0",
	by_use_scan_in => "false",
	by_width => 19,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof2",
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
	aclr => \inst_CE_12|Add0~8_ACLR_bus\,
	clk => \inst_CE_12|Add0~8_CLK_bus\,
	ena => \inst_CE_12|Add0~8_ENA_bus\,
	ax => \inst_CE_12|Add0~8_AX_bus\,
	ay => \inst_CE_12|Add0~8_AY_bus\,
	bx => \inst_CE_12|Add0~8_BX_bus\,
	by => \inst_CE_12|Add0~8_BY_bus\,
	resulta => \inst_CE_12|Add0~8_RESULTA_bus\);

-- Location: DSP_X54_Y14_N0
\inst_CE_12|Mult2~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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
	aclr => \inst_CE_12|Mult2~mac_ACLR_bus\,
	clk => \inst_CE_12|Mult2~mac_CLK_bus\,
	ena => \inst_CE_12|Mult2~mac_ENA_bus\,
	ax => \inst_CE_12|Mult2~mac_AX_bus\,
	ay => \inst_CE_12|Mult2~mac_AY_bus\,
	bx => \inst_CE_12|Mult2~mac_BX_bus\,
	by => \inst_CE_12|Mult2~mac_BY_bus\,
	resulta => \inst_CE_12|Mult2~mac_RESULTA_bus\);

-- Location: DSP_X32_Y14_N0
\inst_CE_12|Mult3~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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
	aclr => \inst_CE_12|Mult3~mac_ACLR_bus\,
	clk => \inst_CE_12|Mult3~mac_CLK_bus\,
	ena => \inst_CE_12|Mult3~mac_ENA_bus\,
	ax => \inst_CE_12|Mult3~mac_AX_bus\,
	ay => \inst_CE_12|Mult3~mac_AY_bus\,
	bx => \inst_CE_12|Mult3~mac_BX_bus\,
	by => \inst_CE_12|Mult3~mac_BY_bus\,
	resulta => \inst_CE_12|Mult3~mac_RESULTA_bus\);

-- Location: DSP_X32_Y12_N0
\inst_CE_12|Mult4~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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

-- Location: DSP_X32_Y8_N0
\inst_CE_12|Mult5~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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

-- Location: DSP_X32_Y10_N0
\inst_CE_12|Mult6~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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

-- Location: DSP_X20_Y10_N0
\inst_CE_12|Mult7~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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

-- Location: DSP_X20_Y8_N0
\inst_CE_12|Mult8~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "1",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
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
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
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

-- Location: IOIBUF_X30_Y0_N52
\n_12[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_12(1),
	o => \n_12[1]~input_o\);

-- Location: IOIBUF_X24_Y81_N35
\n_12[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_12(0),
	o => \n_12[0]~input_o\);

-- Location: MLABCELL_X25_Y10_N12
\inst_CE_12|ShiftRight0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~0_combout\ = ( \inst_CE_12|sums\(4) & ( \inst_CE_12|sums\(6) & ( (!\n_12[0]~input_o\) # ((!\n_12[1]~input_o\ & (\inst_CE_12|sums\(5))) # (\n_12[1]~input_o\ & ((\inst_CE_12|sums\(7))))) ) ) ) # ( !\inst_CE_12|sums\(4) & ( 
-- \inst_CE_12|sums\(6) & ( (!\n_12[1]~input_o\ & (\inst_CE_12|sums\(5) & ((\n_12[0]~input_o\)))) # (\n_12[1]~input_o\ & (((!\n_12[0]~input_o\) # (\inst_CE_12|sums\(7))))) ) ) ) # ( \inst_CE_12|sums\(4) & ( !\inst_CE_12|sums\(6) & ( (!\n_12[1]~input_o\ & 
-- (((!\n_12[0]~input_o\)) # (\inst_CE_12|sums\(5)))) # (\n_12[1]~input_o\ & (((\inst_CE_12|sums\(7) & \n_12[0]~input_o\)))) ) ) ) # ( !\inst_CE_12|sums\(4) & ( !\inst_CE_12|sums\(6) & ( (\n_12[0]~input_o\ & ((!\n_12[1]~input_o\ & (\inst_CE_12|sums\(5))) # 
-- (\n_12[1]~input_o\ & ((\inst_CE_12|sums\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_sums\(5),
	datab => \inst_CE_12|ALT_INV_sums\(7),
	datac => \ALT_INV_n_12[1]~input_o\,
	datad => \ALT_INV_n_12[0]~input_o\,
	datae => \inst_CE_12|ALT_INV_sums\(4),
	dataf => \inst_CE_12|ALT_INV_sums\(6),
	combout => \inst_CE_12|ShiftRight0~0_combout\);

-- Location: LABCELL_X24_Y10_N0
\inst_CE_12|ShiftRight0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~1_combout\ = ( \n_12[1]~input_o\ & ( \inst_CE_12|sums\(3) & ( (\inst_CE_12|sums\(2)) # (\n_12[0]~input_o\) ) ) ) # ( !\n_12[1]~input_o\ & ( \inst_CE_12|sums\(3) & ( (!\n_12[0]~input_o\ & (\inst_CE_12|sums\(0))) # (\n_12[0]~input_o\ 
-- & ((\inst_CE_12|sums\(1)))) ) ) ) # ( \n_12[1]~input_o\ & ( !\inst_CE_12|sums\(3) & ( (!\n_12[0]~input_o\ & \inst_CE_12|sums\(2)) ) ) ) # ( !\n_12[1]~input_o\ & ( !\inst_CE_12|sums\(3) & ( (!\n_12[0]~input_o\ & (\inst_CE_12|sums\(0))) # (\n_12[0]~input_o\ 
-- & ((\inst_CE_12|sums\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000010100000101000100010011101110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_12[0]~input_o\,
	datab => \inst_CE_12|ALT_INV_sums\(0),
	datac => \inst_CE_12|ALT_INV_sums\(2),
	datad => \inst_CE_12|ALT_INV_sums\(1),
	datae => \ALT_INV_n_12[1]~input_o\,
	dataf => \inst_CE_12|ALT_INV_sums\(3),
	combout => \inst_CE_12|ShiftRight0~1_combout\);

-- Location: IOIBUF_X28_Y0_N52
\n_12[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_12(2),
	o => \n_12[2]~input_o\);

-- Location: LABCELL_X24_Y10_N18
\inst_CE_12|ShiftRight0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~2_combout\ = ( \n_12[2]~input_o\ & ( \inst_CE_12|ShiftRight0~0_combout\ ) ) # ( !\n_12[2]~input_o\ & ( \inst_CE_12|ShiftRight0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_CE_12|ALT_INV_ShiftRight0~0_combout\,
	datac => \inst_CE_12|ALT_INV_ShiftRight0~1_combout\,
	dataf => \ALT_INV_n_12[2]~input_o\,
	combout => \inst_CE_12|ShiftRight0~2_combout\);

-- Location: LABCELL_X23_Y10_N0
\inst_SE|_~1\ : cyclonev_lcell_comb
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

-- Location: MLABCELL_X21_Y6_N54
\inst_CE_13|ShiftRight0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~3_combout\ = ( \inst_CE_13|sums\(8) & ( \inst_CE_13|sums\(7) & ( (!\n_13[1]~input_o\) # ((!\n_13[0]~input_o\ & ((\inst_CE_13|sums\(9)))) # (\n_13[0]~input_o\ & (\inst_CE_13|sums\(10)))) ) ) ) # ( !\inst_CE_13|sums\(8) & ( 
-- \inst_CE_13|sums\(7) & ( (!\n_13[0]~input_o\ & (((!\n_13[1]~input_o\) # (\inst_CE_13|sums\(9))))) # (\n_13[0]~input_o\ & (\inst_CE_13|sums\(10) & ((\n_13[1]~input_o\)))) ) ) ) # ( \inst_CE_13|sums\(8) & ( !\inst_CE_13|sums\(7) & ( (!\n_13[0]~input_o\ & 
-- (((\inst_CE_13|sums\(9) & \n_13[1]~input_o\)))) # (\n_13[0]~input_o\ & (((!\n_13[1]~input_o\)) # (\inst_CE_13|sums\(10)))) ) ) ) # ( !\inst_CE_13|sums\(8) & ( !\inst_CE_13|sums\(7) & ( (\n_13[1]~input_o\ & ((!\n_13[0]~input_o\ & ((\inst_CE_13|sums\(9)))) 
-- # (\n_13[0]~input_o\ & (\inst_CE_13|sums\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_sums\(10),
	datab => \ALT_INV_n_13[0]~input_o\,
	datac => \inst_CE_13|ALT_INV_sums\(9),
	datad => \ALT_INV_n_13[1]~input_o\,
	datae => \inst_CE_13|ALT_INV_sums\(8),
	dataf => \inst_CE_13|ALT_INV_sums\(7),
	combout => \inst_CE_13|ShiftRight0~3_combout\);

-- Location: MLABCELL_X21_Y6_N24
\inst_CE_13|ShiftRight0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~4_combout\ = ( \inst_CE_13|sums\(13) & ( \n_13[1]~input_o\ & ( (!\n_13[0]~input_o\) # (\inst_CE_13|sums\(14)) ) ) ) # ( !\inst_CE_13|sums\(13) & ( \n_13[1]~input_o\ & ( (\inst_CE_13|sums\(14) & \n_13[0]~input_o\) ) ) ) # ( 
-- \inst_CE_13|sums\(13) & ( !\n_13[1]~input_o\ & ( (!\n_13[0]~input_o\ & ((\inst_CE_13|sums\(11)))) # (\n_13[0]~input_o\ & (\inst_CE_13|sums\(12))) ) ) ) # ( !\inst_CE_13|sums\(13) & ( !\n_13[1]~input_o\ & ( (!\n_13[0]~input_o\ & ((\inst_CE_13|sums\(11)))) 
-- # (\n_13[0]~input_o\ & (\inst_CE_13|sums\(12))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_sums\(12),
	datab => \inst_CE_13|ALT_INV_sums\(14),
	datac => \inst_CE_13|ALT_INV_sums\(11),
	datad => \ALT_INV_n_13[0]~input_o\,
	datae => \inst_CE_13|ALT_INV_sums\(13),
	dataf => \ALT_INV_n_13[1]~input_o\,
	combout => \inst_CE_13|ShiftRight0~4_combout\);

-- Location: MLABCELL_X21_Y6_N42
\inst_CE_13|ShiftRight0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~5_combout\ = (!\n_13[2]~input_o\ & (\inst_CE_13|ShiftRight0~3_combout\)) # (\n_13[2]~input_o\ & ((\inst_CE_13|ShiftRight0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_13[2]~input_o\,
	datab => \inst_CE_13|ALT_INV_ShiftRight0~3_combout\,
	datac => \inst_CE_13|ALT_INV_ShiftRight0~4_combout\,
	combout => \inst_CE_13|ShiftRight0~5_combout\);

-- Location: MLABCELL_X25_Y10_N24
\inst_CE_12|ShiftRight0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~4_combout\ = ( \inst_CE_12|sums\(13) & ( \n_12[1]~input_o\ & ( (!\n_12[0]~input_o\) # (\inst_CE_12|sums\(14)) ) ) ) # ( !\inst_CE_12|sums\(13) & ( \n_12[1]~input_o\ & ( (\inst_CE_12|sums\(14) & \n_12[0]~input_o\) ) ) ) # ( 
-- \inst_CE_12|sums\(13) & ( !\n_12[1]~input_o\ & ( (!\n_12[0]~input_o\ & ((\inst_CE_12|sums\(11)))) # (\n_12[0]~input_o\ & (\inst_CE_12|sums\(12))) ) ) ) # ( !\inst_CE_12|sums\(13) & ( !\n_12[1]~input_o\ & ( (!\n_12[0]~input_o\ & ((\inst_CE_12|sums\(11)))) 
-- # (\n_12[0]~input_o\ & (\inst_CE_12|sums\(12))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_sums\(14),
	datab => \ALT_INV_n_12[0]~input_o\,
	datac => \inst_CE_12|ALT_INV_sums\(12),
	datad => \inst_CE_12|ALT_INV_sums\(11),
	datae => \inst_CE_12|ALT_INV_sums\(13),
	dataf => \ALT_INV_n_12[1]~input_o\,
	combout => \inst_CE_12|ShiftRight0~4_combout\);

-- Location: MLABCELL_X25_Y10_N18
\inst_CE_12|ShiftRight0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~3_combout\ = ( \inst_CE_12|sums\(8) & ( \n_12[0]~input_o\ & ( (!\n_12[1]~input_o\) # (\inst_CE_12|sums\(10)) ) ) ) # ( !\inst_CE_12|sums\(8) & ( \n_12[0]~input_o\ & ( (\inst_CE_12|sums\(10) & \n_12[1]~input_o\) ) ) ) # ( 
-- \inst_CE_12|sums\(8) & ( !\n_12[0]~input_o\ & ( (!\n_12[1]~input_o\ & ((\inst_CE_12|sums\(7)))) # (\n_12[1]~input_o\ & (\inst_CE_12|sums\(9))) ) ) ) # ( !\inst_CE_12|sums\(8) & ( !\n_12[0]~input_o\ & ( (!\n_12[1]~input_o\ & ((\inst_CE_12|sums\(7)))) # 
-- (\n_12[1]~input_o\ & (\inst_CE_12|sums\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_sums\(10),
	datab => \inst_CE_12|ALT_INV_sums\(9),
	datac => \ALT_INV_n_12[1]~input_o\,
	datad => \inst_CE_12|ALT_INV_sums\(7),
	datae => \inst_CE_12|ALT_INV_sums\(8),
	dataf => \ALT_INV_n_12[0]~input_o\,
	combout => \inst_CE_12|ShiftRight0~3_combout\);

-- Location: LABCELL_X24_Y10_N45
\inst_CE_12|ShiftRight0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~5_combout\ = ( \inst_CE_12|ShiftRight0~3_combout\ & ( (!\n_12[2]~input_o\) # (\inst_CE_12|ShiftRight0~4_combout\) ) ) # ( !\inst_CE_12|ShiftRight0~3_combout\ & ( (\n_12[2]~input_o\ & \inst_CE_12|ShiftRight0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n_12[2]~input_o\,
	datac => \inst_CE_12|ALT_INV_ShiftRight0~4_combout\,
	dataf => \inst_CE_12|ALT_INV_ShiftRight0~3_combout\,
	combout => \inst_CE_12|ShiftRight0~5_combout\);

-- Location: LABCELL_X22_Y10_N48
\inst_CE_11|ShiftRight0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~3_combout\ = ( \inst_CE_11|sums\(7) & ( \n_11[0]~input_o\ & ( (!\n_11[1]~input_o\ & (\inst_CE_11|sums\(8))) # (\n_11[1]~input_o\ & ((\inst_CE_11|sums\(10)))) ) ) ) # ( !\inst_CE_11|sums\(7) & ( \n_11[0]~input_o\ & ( 
-- (!\n_11[1]~input_o\ & (\inst_CE_11|sums\(8))) # (\n_11[1]~input_o\ & ((\inst_CE_11|sums\(10)))) ) ) ) # ( \inst_CE_11|sums\(7) & ( !\n_11[0]~input_o\ & ( (!\n_11[1]~input_o\) # (\inst_CE_11|sums\(9)) ) ) ) # ( !\inst_CE_11|sums\(7) & ( !\n_11[0]~input_o\ 
-- & ( (\n_11[1]~input_o\ & \inst_CE_11|sums\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_sums\(8),
	datab => \ALT_INV_n_11[1]~input_o\,
	datac => \inst_CE_11|ALT_INV_sums\(10),
	datad => \inst_CE_11|ALT_INV_sums\(9),
	datae => \inst_CE_11|ALT_INV_sums\(7),
	dataf => \ALT_INV_n_11[0]~input_o\,
	combout => \inst_CE_11|ShiftRight0~3_combout\);

-- Location: LABCELL_X22_Y10_N18
\inst_CE_11|ShiftRight0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~4_combout\ = ( \inst_CE_11|sums\(11) & ( \inst_CE_11|sums\(12) & ( (!\n_11[1]~input_o\) # ((!\n_11[0]~input_o\ & ((\inst_CE_11|sums\(13)))) # (\n_11[0]~input_o\ & (\inst_CE_11|sums\(14)))) ) ) ) # ( !\inst_CE_11|sums\(11) & ( 
-- \inst_CE_11|sums\(12) & ( (!\n_11[0]~input_o\ & (((\inst_CE_11|sums\(13) & \n_11[1]~input_o\)))) # (\n_11[0]~input_o\ & (((!\n_11[1]~input_o\)) # (\inst_CE_11|sums\(14)))) ) ) ) # ( \inst_CE_11|sums\(11) & ( !\inst_CE_11|sums\(12) & ( (!\n_11[0]~input_o\ 
-- & (((!\n_11[1]~input_o\) # (\inst_CE_11|sums\(13))))) # (\n_11[0]~input_o\ & (\inst_CE_11|sums\(14) & ((\n_11[1]~input_o\)))) ) ) ) # ( !\inst_CE_11|sums\(11) & ( !\inst_CE_11|sums\(12) & ( (\n_11[1]~input_o\ & ((!\n_11[0]~input_o\ & 
-- ((\inst_CE_11|sums\(13)))) # (\n_11[0]~input_o\ & (\inst_CE_11|sums\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101111100000011010100001111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_sums\(14),
	datab => \inst_CE_11|ALT_INV_sums\(13),
	datac => \ALT_INV_n_11[0]~input_o\,
	datad => \ALT_INV_n_11[1]~input_o\,
	datae => \inst_CE_11|ALT_INV_sums\(11),
	dataf => \inst_CE_11|ALT_INV_sums\(12),
	combout => \inst_CE_11|ShiftRight0~4_combout\);

-- Location: LABCELL_X23_Y10_N54
\inst_CE_11|ShiftRight0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~5_combout\ = ( \inst_CE_11|ShiftRight0~3_combout\ & ( \inst_CE_11|ShiftRight0~4_combout\ ) ) # ( !\inst_CE_11|ShiftRight0~3_combout\ & ( \inst_CE_11|ShiftRight0~4_combout\ & ( \n_11[2]~input_o\ ) ) ) # ( 
-- \inst_CE_11|ShiftRight0~3_combout\ & ( !\inst_CE_11|ShiftRight0~4_combout\ & ( !\n_11[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_n_11[2]~input_o\,
	datae => \inst_CE_11|ALT_INV_ShiftRight0~3_combout\,
	dataf => \inst_CE_11|ALT_INV_ShiftRight0~4_combout\,
	combout => \inst_CE_11|ShiftRight0~5_combout\);

-- Location: MLABCELL_X21_Y6_N18
\inst_CE_13|ShiftRight0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~18_combout\ = ( \inst_CE_13|sums\(13) & ( \inst_CE_13|sums\(11) & ( ((!\n_13[1]~input_o\ & (\inst_CE_13|sums\(10))) # (\n_13[1]~input_o\ & ((\inst_CE_13|sums\(12))))) # (\n_13[0]~input_o\) ) ) ) # ( !\inst_CE_13|sums\(13) & ( 
-- \inst_CE_13|sums\(11) & ( (!\n_13[0]~input_o\ & ((!\n_13[1]~input_o\ & (\inst_CE_13|sums\(10))) # (\n_13[1]~input_o\ & ((\inst_CE_13|sums\(12)))))) # (\n_13[0]~input_o\ & (((!\n_13[1]~input_o\)))) ) ) ) # ( \inst_CE_13|sums\(13) & ( !\inst_CE_13|sums\(11) 
-- & ( (!\n_13[0]~input_o\ & ((!\n_13[1]~input_o\ & (\inst_CE_13|sums\(10))) # (\n_13[1]~input_o\ & ((\inst_CE_13|sums\(12)))))) # (\n_13[0]~input_o\ & (((\n_13[1]~input_o\)))) ) ) ) # ( !\inst_CE_13|sums\(13) & ( !\inst_CE_13|sums\(11) & ( 
-- (!\n_13[0]~input_o\ & ((!\n_13[1]~input_o\ & (\inst_CE_13|sums\(10))) # (\n_13[1]~input_o\ & ((\inst_CE_13|sums\(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_sums\(10),
	datab => \ALT_INV_n_13[0]~input_o\,
	datac => \inst_CE_13|ALT_INV_sums\(12),
	datad => \ALT_INV_n_13[1]~input_o\,
	datae => \inst_CE_13|ALT_INV_sums\(13),
	dataf => \inst_CE_13|ALT_INV_sums\(11),
	combout => \inst_CE_13|ShiftRight0~18_combout\);

-- Location: MLABCELL_X21_Y6_N6
\inst_CE_13|ShiftRight0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~9_combout\ = ( \inst_CE_13|sums\(6) & ( \inst_CE_13|sums\(7) & ( (!\n_13[1]~input_o\) # ((!\n_13[0]~input_o\ & (\inst_CE_13|sums\(8))) # (\n_13[0]~input_o\ & ((\inst_CE_13|sums\(9))))) ) ) ) # ( !\inst_CE_13|sums\(6) & ( 
-- \inst_CE_13|sums\(7) & ( (!\n_13[0]~input_o\ & (\inst_CE_13|sums\(8) & ((\n_13[1]~input_o\)))) # (\n_13[0]~input_o\ & (((!\n_13[1]~input_o\) # (\inst_CE_13|sums\(9))))) ) ) ) # ( \inst_CE_13|sums\(6) & ( !\inst_CE_13|sums\(7) & ( (!\n_13[0]~input_o\ & 
-- (((!\n_13[1]~input_o\)) # (\inst_CE_13|sums\(8)))) # (\n_13[0]~input_o\ & (((\inst_CE_13|sums\(9) & \n_13[1]~input_o\)))) ) ) ) # ( !\inst_CE_13|sums\(6) & ( !\inst_CE_13|sums\(7) & ( (\n_13[1]~input_o\ & ((!\n_13[0]~input_o\ & (\inst_CE_13|sums\(8))) # 
-- (\n_13[0]~input_o\ & ((\inst_CE_13|sums\(9)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_sums\(8),
	datab => \ALT_INV_n_13[0]~input_o\,
	datac => \inst_CE_13|ALT_INV_sums\(9),
	datad => \ALT_INV_n_13[1]~input_o\,
	datae => \inst_CE_13|ALT_INV_sums\(6),
	dataf => \inst_CE_13|ALT_INV_sums\(7),
	combout => \inst_CE_13|ShiftRight0~9_combout\);

-- Location: LABCELL_X23_Y10_N45
\inst_CE_13|ShiftRight0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~19_combout\ = ( \n_13[2]~input_o\ & ( \inst_CE_13|ShiftRight0~18_combout\ ) ) # ( !\n_13[2]~input_o\ & ( \inst_CE_13|ShiftRight0~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_ShiftRight0~18_combout\,
	datad => \inst_CE_13|ALT_INV_ShiftRight0~9_combout\,
	dataf => \ALT_INV_n_13[2]~input_o\,
	combout => \inst_CE_13|ShiftRight0~19_combout\);

-- Location: LABCELL_X22_Y10_N6
\inst_CE_11|ShiftRight0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~18_combout\ = ( \n_11[1]~input_o\ & ( \inst_CE_11|sums\(12) & ( (!\n_11[0]~input_o\) # (\inst_CE_11|sums\(13)) ) ) ) # ( !\n_11[1]~input_o\ & ( \inst_CE_11|sums\(12) & ( (!\n_11[0]~input_o\ & ((\inst_CE_11|sums\(10)))) # 
-- (\n_11[0]~input_o\ & (\inst_CE_11|sums\(11))) ) ) ) # ( \n_11[1]~input_o\ & ( !\inst_CE_11|sums\(12) & ( (\n_11[0]~input_o\ & \inst_CE_11|sums\(13)) ) ) ) # ( !\n_11[1]~input_o\ & ( !\inst_CE_11|sums\(12) & ( (!\n_11[0]~input_o\ & 
-- ((\inst_CE_11|sums\(10)))) # (\n_11[0]~input_o\ & (\inst_CE_11|sums\(11))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000100010001000100000101101011111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_11[0]~input_o\,
	datab => \inst_CE_11|ALT_INV_sums\(13),
	datac => \inst_CE_11|ALT_INV_sums\(11),
	datad => \inst_CE_11|ALT_INV_sums\(10),
	datae => \ALT_INV_n_11[1]~input_o\,
	dataf => \inst_CE_11|ALT_INV_sums\(12),
	combout => \inst_CE_11|ShiftRight0~18_combout\);

-- Location: LABCELL_X22_Y10_N42
\inst_CE_11|ShiftRight0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~9_combout\ = ( \inst_CE_11|sums\(8) & ( \inst_CE_11|sums\(6) & ( (!\n_11[0]~input_o\) # ((!\n_11[1]~input_o\ & (\inst_CE_11|sums\(7))) # (\n_11[1]~input_o\ & ((\inst_CE_11|sums\(9))))) ) ) ) # ( !\inst_CE_11|sums\(8) & ( 
-- \inst_CE_11|sums\(6) & ( (!\n_11[1]~input_o\ & (((!\n_11[0]~input_o\)) # (\inst_CE_11|sums\(7)))) # (\n_11[1]~input_o\ & (((\n_11[0]~input_o\ & \inst_CE_11|sums\(9))))) ) ) ) # ( \inst_CE_11|sums\(8) & ( !\inst_CE_11|sums\(6) & ( (!\n_11[1]~input_o\ & 
-- (\inst_CE_11|sums\(7) & (\n_11[0]~input_o\))) # (\n_11[1]~input_o\ & (((!\n_11[0]~input_o\) # (\inst_CE_11|sums\(9))))) ) ) ) # ( !\inst_CE_11|sums\(8) & ( !\inst_CE_11|sums\(6) & ( (\n_11[0]~input_o\ & ((!\n_11[1]~input_o\ & (\inst_CE_11|sums\(7))) # 
-- (\n_11[1]~input_o\ & ((\inst_CE_11|sums\(9)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_sums\(7),
	datab => \ALT_INV_n_11[1]~input_o\,
	datac => \ALT_INV_n_11[0]~input_o\,
	datad => \inst_CE_11|ALT_INV_sums\(9),
	datae => \inst_CE_11|ALT_INV_sums\(8),
	dataf => \inst_CE_11|ALT_INV_sums\(6),
	combout => \inst_CE_11|ShiftRight0~9_combout\);

-- Location: LABCELL_X23_Y10_N33
\inst_CE_11|ShiftRight0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~19_combout\ = ( \inst_CE_11|ShiftRight0~9_combout\ & ( (!\n_11[2]~input_o\) # (\inst_CE_11|ShiftRight0~18_combout\) ) ) # ( !\inst_CE_11|ShiftRight0~9_combout\ & ( (\n_11[2]~input_o\ & \inst_CE_11|ShiftRight0~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_11[2]~input_o\,
	datad => \inst_CE_11|ALT_INV_ShiftRight0~18_combout\,
	dataf => \inst_CE_11|ALT_INV_ShiftRight0~9_combout\,
	combout => \inst_CE_11|ShiftRight0~19_combout\);

-- Location: MLABCELL_X25_Y10_N42
\inst_CE_12|ShiftRight0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~18_combout\ = ( \inst_CE_12|sums\(13) & ( \n_12[1]~input_o\ & ( (\n_12[0]~input_o\) # (\inst_CE_12|sums\(12)) ) ) ) # ( !\inst_CE_12|sums\(13) & ( \n_12[1]~input_o\ & ( (\inst_CE_12|sums\(12) & !\n_12[0]~input_o\) ) ) ) # ( 
-- \inst_CE_12|sums\(13) & ( !\n_12[1]~input_o\ & ( (!\n_12[0]~input_o\ & (\inst_CE_12|sums\(10))) # (\n_12[0]~input_o\ & ((\inst_CE_12|sums\(11)))) ) ) ) # ( !\inst_CE_12|sums\(13) & ( !\n_12[1]~input_o\ & ( (!\n_12[0]~input_o\ & (\inst_CE_12|sums\(10))) # 
-- (\n_12[0]~input_o\ & ((\inst_CE_12|sums\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_sums\(10),
	datab => \inst_CE_12|ALT_INV_sums\(11),
	datac => \inst_CE_12|ALT_INV_sums\(12),
	datad => \ALT_INV_n_12[0]~input_o\,
	datae => \inst_CE_12|ALT_INV_sums\(13),
	dataf => \ALT_INV_n_12[1]~input_o\,
	combout => \inst_CE_12|ShiftRight0~18_combout\);

-- Location: MLABCELL_X25_Y10_N0
\inst_CE_12|ShiftRight0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~9_combout\ = ( \inst_CE_12|sums\(8) & ( \n_12[0]~input_o\ & ( (!\n_12[1]~input_o\ & (\inst_CE_12|sums\(7))) # (\n_12[1]~input_o\ & ((\inst_CE_12|sums\(9)))) ) ) ) # ( !\inst_CE_12|sums\(8) & ( \n_12[0]~input_o\ & ( 
-- (!\n_12[1]~input_o\ & (\inst_CE_12|sums\(7))) # (\n_12[1]~input_o\ & ((\inst_CE_12|sums\(9)))) ) ) ) # ( \inst_CE_12|sums\(8) & ( !\n_12[0]~input_o\ & ( (\n_12[1]~input_o\) # (\inst_CE_12|sums\(6)) ) ) ) # ( !\inst_CE_12|sums\(8) & ( !\n_12[0]~input_o\ & 
-- ( (\inst_CE_12|sums\(6) & !\n_12[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_sums\(6),
	datab => \inst_CE_12|ALT_INV_sums\(7),
	datac => \ALT_INV_n_12[1]~input_o\,
	datad => \inst_CE_12|ALT_INV_sums\(9),
	datae => \inst_CE_12|ALT_INV_sums\(8),
	dataf => \ALT_INV_n_12[0]~input_o\,
	combout => \inst_CE_12|ShiftRight0~9_combout\);

-- Location: LABCELL_X24_Y10_N9
\inst_CE_12|ShiftRight0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~19_combout\ = (!\n_12[2]~input_o\ & ((\inst_CE_12|ShiftRight0~9_combout\))) # (\n_12[2]~input_o\ & (\inst_CE_12|ShiftRight0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n_12[2]~input_o\,
	datac => \inst_CE_12|ALT_INV_ShiftRight0~18_combout\,
	datad => \inst_CE_12|ALT_INV_ShiftRight0~9_combout\,
	combout => \inst_CE_12|ShiftRight0~19_combout\);

-- Location: LABCELL_X22_Y10_N0
\inst_CE_11|ShiftRight0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~16_combout\ = ( \n_11[1]~input_o\ & ( \n_11[0]~input_o\ & ( \inst_CE_11|sums\(12) ) ) ) # ( !\n_11[1]~input_o\ & ( \n_11[0]~input_o\ & ( \inst_CE_11|sums\(10) ) ) ) # ( \n_11[1]~input_o\ & ( !\n_11[0]~input_o\ & ( 
-- \inst_CE_11|sums\(11) ) ) ) # ( !\n_11[1]~input_o\ & ( !\n_11[0]~input_o\ & ( \inst_CE_11|sums\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_sums\(12),
	datab => \inst_CE_11|ALT_INV_sums\(9),
	datac => \inst_CE_11|ALT_INV_sums\(11),
	datad => \inst_CE_11|ALT_INV_sums\(10),
	datae => \ALT_INV_n_11[1]~input_o\,
	dataf => \ALT_INV_n_11[0]~input_o\,
	combout => \inst_CE_11|ShiftRight0~16_combout\);

-- Location: LABCELL_X22_Y10_N36
\inst_CE_11|ShiftRight0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~6_combout\ = ( \inst_CE_11|sums\(7) & ( \n_11[0]~input_o\ & ( (!\n_11[1]~input_o\ & ((\inst_CE_11|sums\(6)))) # (\n_11[1]~input_o\ & (\inst_CE_11|sums\(8))) ) ) ) # ( !\inst_CE_11|sums\(7) & ( \n_11[0]~input_o\ & ( 
-- (!\n_11[1]~input_o\ & ((\inst_CE_11|sums\(6)))) # (\n_11[1]~input_o\ & (\inst_CE_11|sums\(8))) ) ) ) # ( \inst_CE_11|sums\(7) & ( !\n_11[0]~input_o\ & ( (\inst_CE_11|sums\(5)) # (\n_11[1]~input_o\) ) ) ) # ( !\inst_CE_11|sums\(7) & ( !\n_11[0]~input_o\ & 
-- ( (!\n_11[1]~input_o\ & \inst_CE_11|sums\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_sums\(8),
	datab => \ALT_INV_n_11[1]~input_o\,
	datac => \inst_CE_11|ALT_INV_sums\(6),
	datad => \inst_CE_11|ALT_INV_sums\(5),
	datae => \inst_CE_11|ALT_INV_sums\(7),
	dataf => \ALT_INV_n_11[0]~input_o\,
	combout => \inst_CE_11|ShiftRight0~6_combout\);

-- Location: LABCELL_X22_Y10_N54
\inst_CE_11|ShiftRight0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~17_combout\ = (!\n_11[2]~input_o\ & ((\inst_CE_11|ShiftRight0~6_combout\))) # (\n_11[2]~input_o\ & (\inst_CE_11|ShiftRight0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_11[2]~input_o\,
	datac => \inst_CE_11|ALT_INV_ShiftRight0~16_combout\,
	datad => \inst_CE_11|ALT_INV_ShiftRight0~6_combout\,
	combout => \inst_CE_11|ShiftRight0~17_combout\);

-- Location: MLABCELL_X21_Y6_N36
\inst_CE_13|ShiftRight0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~6_combout\ = ( \inst_CE_13|sums\(8) & ( \inst_CE_13|sums\(5) & ( (!\n_13[0]~input_o\ & (((!\n_13[1]~input_o\) # (\inst_CE_13|sums\(7))))) # (\n_13[0]~input_o\ & (((\n_13[1]~input_o\)) # (\inst_CE_13|sums\(6)))) ) ) ) # ( 
-- !\inst_CE_13|sums\(8) & ( \inst_CE_13|sums\(5) & ( (!\n_13[0]~input_o\ & (((!\n_13[1]~input_o\) # (\inst_CE_13|sums\(7))))) # (\n_13[0]~input_o\ & (\inst_CE_13|sums\(6) & ((!\n_13[1]~input_o\)))) ) ) ) # ( \inst_CE_13|sums\(8) & ( !\inst_CE_13|sums\(5) & 
-- ( (!\n_13[0]~input_o\ & (((\inst_CE_13|sums\(7) & \n_13[1]~input_o\)))) # (\n_13[0]~input_o\ & (((\n_13[1]~input_o\)) # (\inst_CE_13|sums\(6)))) ) ) ) # ( !\inst_CE_13|sums\(8) & ( !\inst_CE_13|sums\(5) & ( (!\n_13[0]~input_o\ & (((\inst_CE_13|sums\(7) & 
-- \n_13[1]~input_o\)))) # (\n_13[0]~input_o\ & (\inst_CE_13|sums\(6) & ((!\n_13[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_sums\(6),
	datab => \ALT_INV_n_13[0]~input_o\,
	datac => \inst_CE_13|ALT_INV_sums\(7),
	datad => \ALT_INV_n_13[1]~input_o\,
	datae => \inst_CE_13|ALT_INV_sums\(8),
	dataf => \inst_CE_13|ALT_INV_sums\(5),
	combout => \inst_CE_13|ShiftRight0~6_combout\);

-- Location: MLABCELL_X21_Y6_N12
\inst_CE_13|ShiftRight0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~16_combout\ = ( \inst_CE_13|sums\(10) & ( \inst_CE_13|sums\(11) & ( (!\n_13[0]~input_o\ & (((\n_13[1]~input_o\) # (\inst_CE_13|sums\(9))))) # (\n_13[0]~input_o\ & (((!\n_13[1]~input_o\)) # (\inst_CE_13|sums\(12)))) ) ) ) # ( 
-- !\inst_CE_13|sums\(10) & ( \inst_CE_13|sums\(11) & ( (!\n_13[0]~input_o\ & (((\n_13[1]~input_o\) # (\inst_CE_13|sums\(9))))) # (\n_13[0]~input_o\ & (\inst_CE_13|sums\(12) & ((\n_13[1]~input_o\)))) ) ) ) # ( \inst_CE_13|sums\(10) & ( !\inst_CE_13|sums\(11) 
-- & ( (!\n_13[0]~input_o\ & (((\inst_CE_13|sums\(9) & !\n_13[1]~input_o\)))) # (\n_13[0]~input_o\ & (((!\n_13[1]~input_o\)) # (\inst_CE_13|sums\(12)))) ) ) ) # ( !\inst_CE_13|sums\(10) & ( !\inst_CE_13|sums\(11) & ( (!\n_13[0]~input_o\ & 
-- (((\inst_CE_13|sums\(9) & !\n_13[1]~input_o\)))) # (\n_13[0]~input_o\ & (\inst_CE_13|sums\(12) & ((\n_13[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001001111110001000100001100110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_sums\(12),
	datab => \ALT_INV_n_13[0]~input_o\,
	datac => \inst_CE_13|ALT_INV_sums\(9),
	datad => \ALT_INV_n_13[1]~input_o\,
	datae => \inst_CE_13|ALT_INV_sums\(10),
	dataf => \inst_CE_13|ALT_INV_sums\(11),
	combout => \inst_CE_13|ShiftRight0~16_combout\);

-- Location: LABCELL_X23_Y10_N39
\inst_CE_13|ShiftRight0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~17_combout\ = ( \n_13[2]~input_o\ & ( \inst_CE_13|ShiftRight0~16_combout\ ) ) # ( !\n_13[2]~input_o\ & ( \inst_CE_13|ShiftRight0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_ShiftRight0~6_combout\,
	datac => \inst_CE_13|ALT_INV_ShiftRight0~16_combout\,
	dataf => \ALT_INV_n_13[2]~input_o\,
	combout => \inst_CE_13|ShiftRight0~17_combout\);

-- Location: MLABCELL_X25_Y10_N48
\inst_CE_12|ShiftRight0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~16_combout\ = ( \inst_CE_12|sums\(12) & ( \inst_CE_12|sums\(9) & ( (!\n_12[0]~input_o\ & (((!\n_12[1]~input_o\) # (\inst_CE_12|sums\(11))))) # (\n_12[0]~input_o\ & (((\n_12[1]~input_o\)) # (\inst_CE_12|sums\(10)))) ) ) ) # ( 
-- !\inst_CE_12|sums\(12) & ( \inst_CE_12|sums\(9) & ( (!\n_12[0]~input_o\ & (((!\n_12[1]~input_o\) # (\inst_CE_12|sums\(11))))) # (\n_12[0]~input_o\ & (\inst_CE_12|sums\(10) & (!\n_12[1]~input_o\))) ) ) ) # ( \inst_CE_12|sums\(12) & ( !\inst_CE_12|sums\(9) 
-- & ( (!\n_12[0]~input_o\ & (((\n_12[1]~input_o\ & \inst_CE_12|sums\(11))))) # (\n_12[0]~input_o\ & (((\n_12[1]~input_o\)) # (\inst_CE_12|sums\(10)))) ) ) ) # ( !\inst_CE_12|sums\(12) & ( !\inst_CE_12|sums\(9) & ( (!\n_12[0]~input_o\ & (((\n_12[1]~input_o\ 
-- & \inst_CE_12|sums\(11))))) # (\n_12[0]~input_o\ & (\inst_CE_12|sums\(10) & (!\n_12[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_sums\(10),
	datab => \ALT_INV_n_12[0]~input_o\,
	datac => \ALT_INV_n_12[1]~input_o\,
	datad => \inst_CE_12|ALT_INV_sums\(11),
	datae => \inst_CE_12|ALT_INV_sums\(12),
	dataf => \inst_CE_12|ALT_INV_sums\(9),
	combout => \inst_CE_12|ShiftRight0~16_combout\);

-- Location: MLABCELL_X25_Y10_N54
\inst_CE_12|ShiftRight0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~6_combout\ = ( \inst_CE_12|sums\(8) & ( \inst_CE_12|sums\(6) & ( ((!\n_12[1]~input_o\ & (\inst_CE_12|sums\(5))) # (\n_12[1]~input_o\ & ((\inst_CE_12|sums\(7))))) # (\n_12[0]~input_o\) ) ) ) # ( !\inst_CE_12|sums\(8) & ( 
-- \inst_CE_12|sums\(6) & ( (!\n_12[1]~input_o\ & (((\n_12[0]~input_o\)) # (\inst_CE_12|sums\(5)))) # (\n_12[1]~input_o\ & (((\inst_CE_12|sums\(7) & !\n_12[0]~input_o\)))) ) ) ) # ( \inst_CE_12|sums\(8) & ( !\inst_CE_12|sums\(6) & ( (!\n_12[1]~input_o\ & 
-- (\inst_CE_12|sums\(5) & ((!\n_12[0]~input_o\)))) # (\n_12[1]~input_o\ & (((\n_12[0]~input_o\) # (\inst_CE_12|sums\(7))))) ) ) ) # ( !\inst_CE_12|sums\(8) & ( !\inst_CE_12|sums\(6) & ( (!\n_12[0]~input_o\ & ((!\n_12[1]~input_o\ & (\inst_CE_12|sums\(5))) # 
-- (\n_12[1]~input_o\ & ((\inst_CE_12|sums\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111101010011111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_sums\(5),
	datab => \inst_CE_12|ALT_INV_sums\(7),
	datac => \ALT_INV_n_12[1]~input_o\,
	datad => \ALT_INV_n_12[0]~input_o\,
	datae => \inst_CE_12|ALT_INV_sums\(8),
	dataf => \inst_CE_12|ALT_INV_sums\(6),
	combout => \inst_CE_12|ShiftRight0~6_combout\);

-- Location: LABCELL_X24_Y10_N6
\inst_CE_12|ShiftRight0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~17_combout\ = (!\n_12[2]~input_o\ & ((\inst_CE_12|ShiftRight0~6_combout\))) # (\n_12[2]~input_o\ & (\inst_CE_12|ShiftRight0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n_12[2]~input_o\,
	datac => \inst_CE_12|ALT_INV_ShiftRight0~16_combout\,
	datad => \inst_CE_12|ALT_INV_ShiftRight0~6_combout\,
	combout => \inst_CE_12|ShiftRight0~17_combout\);

-- Location: MLABCELL_X25_Y10_N6
\inst_CE_12|ShiftRight0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~14_combout\ = ( \inst_CE_12|sums\(8) & ( \n_12[0]~input_o\ & ( (!\n_12[1]~input_o\ & ((\inst_CE_12|sums\(9)))) # (\n_12[1]~input_o\ & (\inst_CE_12|sums\(11))) ) ) ) # ( !\inst_CE_12|sums\(8) & ( \n_12[0]~input_o\ & ( 
-- (!\n_12[1]~input_o\ & ((\inst_CE_12|sums\(9)))) # (\n_12[1]~input_o\ & (\inst_CE_12|sums\(11))) ) ) ) # ( \inst_CE_12|sums\(8) & ( !\n_12[0]~input_o\ & ( (!\n_12[1]~input_o\) # (\inst_CE_12|sums\(10)) ) ) ) # ( !\inst_CE_12|sums\(8) & ( !\n_12[0]~input_o\ 
-- & ( (\inst_CE_12|sums\(10) & \n_12[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_sums\(10),
	datab => \inst_CE_12|ALT_INV_sums\(11),
	datac => \ALT_INV_n_12[1]~input_o\,
	datad => \inst_CE_12|ALT_INV_sums\(9),
	datae => \inst_CE_12|ALT_INV_sums\(8),
	dataf => \ALT_INV_n_12[0]~input_o\,
	combout => \inst_CE_12|ShiftRight0~14_combout\);

-- Location: LABCELL_X24_Y10_N42
\inst_CE_12|ShiftRight0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~15_combout\ = ( \inst_CE_12|ShiftRight0~0_combout\ & ( (!\n_12[2]~input_o\) # (\inst_CE_12|ShiftRight0~14_combout\) ) ) # ( !\inst_CE_12|ShiftRight0~0_combout\ & ( (\n_12[2]~input_o\ & \inst_CE_12|ShiftRight0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n_12[2]~input_o\,
	datac => \inst_CE_12|ALT_INV_ShiftRight0~14_combout\,
	dataf => \inst_CE_12|ALT_INV_ShiftRight0~0_combout\,
	combout => \inst_CE_12|ShiftRight0~15_combout\);

-- Location: MLABCELL_X21_Y6_N30
\inst_CE_13|ShiftRight0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~14_combout\ = ( \inst_CE_13|sums\(10) & ( \inst_CE_13|sums\(9) & ( (!\n_13[0]~input_o\ & (((\n_13[1]~input_o\) # (\inst_CE_13|sums\(8))))) # (\n_13[0]~input_o\ & (((!\n_13[1]~input_o\)) # (\inst_CE_13|sums\(11)))) ) ) ) # ( 
-- !\inst_CE_13|sums\(10) & ( \inst_CE_13|sums\(9) & ( (!\n_13[0]~input_o\ & (((\inst_CE_13|sums\(8) & !\n_13[1]~input_o\)))) # (\n_13[0]~input_o\ & (((!\n_13[1]~input_o\)) # (\inst_CE_13|sums\(11)))) ) ) ) # ( \inst_CE_13|sums\(10) & ( !\inst_CE_13|sums\(9) 
-- & ( (!\n_13[0]~input_o\ & (((\n_13[1]~input_o\) # (\inst_CE_13|sums\(8))))) # (\n_13[0]~input_o\ & (\inst_CE_13|sums\(11) & ((\n_13[1]~input_o\)))) ) ) ) # ( !\inst_CE_13|sums\(10) & ( !\inst_CE_13|sums\(9) & ( (!\n_13[0]~input_o\ & 
-- (((\inst_CE_13|sums\(8) & !\n_13[1]~input_o\)))) # (\n_13[0]~input_o\ & (\inst_CE_13|sums\(11) & ((\n_13[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_sums\(11),
	datab => \ALT_INV_n_13[0]~input_o\,
	datac => \inst_CE_13|ALT_INV_sums\(8),
	datad => \ALT_INV_n_13[1]~input_o\,
	datae => \inst_CE_13|ALT_INV_sums\(10),
	dataf => \inst_CE_13|ALT_INV_sums\(9),
	combout => \inst_CE_13|ShiftRight0~14_combout\);

-- Location: LABCELL_X23_Y10_N27
\inst_CE_13|ShiftRight0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~15_combout\ = ( \inst_CE_13|ShiftRight0~14_combout\ & ( (\n_13[2]~input_o\) # (\inst_CE_13|ShiftRight0~0_combout\) ) ) # ( !\inst_CE_13|ShiftRight0~14_combout\ & ( (\inst_CE_13|ShiftRight0~0_combout\ & !\n_13[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_ShiftRight0~0_combout\,
	datab => \ALT_INV_n_13[2]~input_o\,
	dataf => \inst_CE_13|ALT_INV_ShiftRight0~14_combout\,
	combout => \inst_CE_13|ShiftRight0~15_combout\);

-- Location: LABCELL_X22_Y10_N24
\inst_CE_11|ShiftRight0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~14_combout\ = ( \inst_CE_11|sums\(11) & ( \n_11[0]~input_o\ & ( (\inst_CE_11|sums\(9)) # (\n_11[1]~input_o\) ) ) ) # ( !\inst_CE_11|sums\(11) & ( \n_11[0]~input_o\ & ( (!\n_11[1]~input_o\ & \inst_CE_11|sums\(9)) ) ) ) # ( 
-- \inst_CE_11|sums\(11) & ( !\n_11[0]~input_o\ & ( (!\n_11[1]~input_o\ & ((\inst_CE_11|sums\(8)))) # (\n_11[1]~input_o\ & (\inst_CE_11|sums\(10))) ) ) ) # ( !\inst_CE_11|sums\(11) & ( !\n_11[0]~input_o\ & ( (!\n_11[1]~input_o\ & ((\inst_CE_11|sums\(8)))) # 
-- (\n_11[1]~input_o\ & (\inst_CE_11|sums\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_sums\(10),
	datab => \ALT_INV_n_11[1]~input_o\,
	datac => \inst_CE_11|ALT_INV_sums\(8),
	datad => \inst_CE_11|ALT_INV_sums\(9),
	datae => \inst_CE_11|ALT_INV_sums\(11),
	dataf => \ALT_INV_n_11[0]~input_o\,
	combout => \inst_CE_11|ShiftRight0~14_combout\);

-- Location: LABCELL_X22_Y10_N57
\inst_CE_11|ShiftRight0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~15_combout\ = ( \inst_CE_11|ShiftRight0~14_combout\ & ( (\inst_CE_11|ShiftRight0~0_combout\) # (\n_11[2]~input_o\) ) ) # ( !\inst_CE_11|ShiftRight0~14_combout\ & ( (!\n_11[2]~input_o\ & \inst_CE_11|ShiftRight0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_11[2]~input_o\,
	datac => \inst_CE_11|ALT_INV_ShiftRight0~0_combout\,
	dataf => \inst_CE_11|ALT_INV_ShiftRight0~14_combout\,
	combout => \inst_CE_11|ShiftRight0~15_combout\);

-- Location: MLABCELL_X21_Y6_N48
\inst_CE_13|ShiftRight0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~12_combout\ = ( \n_13[0]~input_o\ & ( \inst_CE_13|sums\(3) & ( (!\n_13[1]~input_o\ & (\inst_CE_13|sums\(4))) # (\n_13[1]~input_o\ & ((\inst_CE_13|sums\(6)))) ) ) ) # ( !\n_13[0]~input_o\ & ( \inst_CE_13|sums\(3) & ( 
-- (!\n_13[1]~input_o\) # (\inst_CE_13|sums\(5)) ) ) ) # ( \n_13[0]~input_o\ & ( !\inst_CE_13|sums\(3) & ( (!\n_13[1]~input_o\ & (\inst_CE_13|sums\(4))) # (\n_13[1]~input_o\ & ((\inst_CE_13|sums\(6)))) ) ) ) # ( !\n_13[0]~input_o\ & ( !\inst_CE_13|sums\(3) & 
-- ( (\n_13[1]~input_o\ & \inst_CE_13|sums\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010001110100011111001100111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_sums\(4),
	datab => \ALT_INV_n_13[1]~input_o\,
	datac => \inst_CE_13|ALT_INV_sums\(6),
	datad => \inst_CE_13|ALT_INV_sums\(5),
	datae => \ALT_INV_n_13[0]~input_o\,
	dataf => \inst_CE_13|ALT_INV_sums\(3),
	combout => \inst_CE_13|ShiftRight0~12_combout\);

-- Location: MLABCELL_X21_Y6_N45
\inst_CE_13|ShiftRight0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~13_combout\ = ( \inst_CE_13|ShiftRight0~12_combout\ & ( (!\n_13[2]~input_o\) # (\inst_CE_13|ShiftRight0~3_combout\) ) ) # ( !\inst_CE_13|ShiftRight0~12_combout\ & ( (\n_13[2]~input_o\ & \inst_CE_13|ShiftRight0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_13[2]~input_o\,
	datab => \inst_CE_13|ALT_INV_ShiftRight0~3_combout\,
	dataf => \inst_CE_13|ALT_INV_ShiftRight0~12_combout\,
	combout => \inst_CE_13|ShiftRight0~13_combout\);

-- Location: LABCELL_X24_Y10_N24
\inst_CE_11|ShiftRight0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~12_combout\ = ( \inst_CE_11|sums\(6) & ( \inst_CE_11|sums\(3) & ( (!\n_11[1]~input_o\ & (((!\n_11[0]~input_o\) # (\inst_CE_11|sums\(4))))) # (\n_11[1]~input_o\ & (((\n_11[0]~input_o\)) # (\inst_CE_11|sums\(5)))) ) ) ) # ( 
-- !\inst_CE_11|sums\(6) & ( \inst_CE_11|sums\(3) & ( (!\n_11[1]~input_o\ & (((!\n_11[0]~input_o\) # (\inst_CE_11|sums\(4))))) # (\n_11[1]~input_o\ & (\inst_CE_11|sums\(5) & (!\n_11[0]~input_o\))) ) ) ) # ( \inst_CE_11|sums\(6) & ( !\inst_CE_11|sums\(3) & ( 
-- (!\n_11[1]~input_o\ & (((\n_11[0]~input_o\ & \inst_CE_11|sums\(4))))) # (\n_11[1]~input_o\ & (((\n_11[0]~input_o\)) # (\inst_CE_11|sums\(5)))) ) ) ) # ( !\inst_CE_11|sums\(6) & ( !\inst_CE_11|sums\(3) & ( (!\n_11[1]~input_o\ & (((\n_11[0]~input_o\ & 
-- \inst_CE_11|sums\(4))))) # (\n_11[1]~input_o\ & (\inst_CE_11|sums\(5) & (!\n_11[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_11[1]~input_o\,
	datab => \inst_CE_11|ALT_INV_sums\(5),
	datac => \ALT_INV_n_11[0]~input_o\,
	datad => \inst_CE_11|ALT_INV_sums\(4),
	datae => \inst_CE_11|ALT_INV_sums\(6),
	dataf => \inst_CE_11|ALT_INV_sums\(3),
	combout => \inst_CE_11|ShiftRight0~12_combout\);

-- Location: LABCELL_X23_Y10_N42
\inst_CE_11|ShiftRight0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~13_combout\ = ( \inst_CE_11|ShiftRight0~12_combout\ & ( (!\n_11[2]~input_o\) # (\inst_CE_11|ShiftRight0~3_combout\) ) ) # ( !\inst_CE_11|ShiftRight0~12_combout\ & ( (\inst_CE_11|ShiftRight0~3_combout\ & \n_11[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_CE_11|ALT_INV_ShiftRight0~3_combout\,
	datac => \ALT_INV_n_11[2]~input_o\,
	dataf => \inst_CE_11|ALT_INV_ShiftRight0~12_combout\,
	combout => \inst_CE_11|ShiftRight0~13_combout\);

-- Location: MLABCELL_X25_Y10_N36
\inst_CE_12|ShiftRight0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~12_combout\ = ( \inst_CE_12|sums\(4) & ( \inst_CE_12|sums\(6) & ( ((!\n_12[1]~input_o\ & ((\inst_CE_12|sums\(3)))) # (\n_12[1]~input_o\ & (\inst_CE_12|sums\(5)))) # (\n_12[0]~input_o\) ) ) ) # ( !\inst_CE_12|sums\(4) & ( 
-- \inst_CE_12|sums\(6) & ( (!\n_12[0]~input_o\ & ((!\n_12[1]~input_o\ & ((\inst_CE_12|sums\(3)))) # (\n_12[1]~input_o\ & (\inst_CE_12|sums\(5))))) # (\n_12[0]~input_o\ & (((\n_12[1]~input_o\)))) ) ) ) # ( \inst_CE_12|sums\(4) & ( !\inst_CE_12|sums\(6) & ( 
-- (!\n_12[0]~input_o\ & ((!\n_12[1]~input_o\ & ((\inst_CE_12|sums\(3)))) # (\n_12[1]~input_o\ & (\inst_CE_12|sums\(5))))) # (\n_12[0]~input_o\ & (((!\n_12[1]~input_o\)))) ) ) ) # ( !\inst_CE_12|sums\(4) & ( !\inst_CE_12|sums\(6) & ( (!\n_12[0]~input_o\ & 
-- ((!\n_12[1]~input_o\ & ((\inst_CE_12|sums\(3)))) # (\n_12[1]~input_o\ & (\inst_CE_12|sums\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000111110001110011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_sums\(5),
	datab => \ALT_INV_n_12[0]~input_o\,
	datac => \ALT_INV_n_12[1]~input_o\,
	datad => \inst_CE_12|ALT_INV_sums\(3),
	datae => \inst_CE_12|ALT_INV_sums\(4),
	dataf => \inst_CE_12|ALT_INV_sums\(6),
	combout => \inst_CE_12|ShiftRight0~12_combout\);

-- Location: LABCELL_X24_Y10_N15
\inst_CE_12|ShiftRight0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~13_combout\ = ( \inst_CE_12|ShiftRight0~3_combout\ & ( (\n_12[2]~input_o\) # (\inst_CE_12|ShiftRight0~12_combout\) ) ) # ( !\inst_CE_12|ShiftRight0~3_combout\ & ( (\inst_CE_12|ShiftRight0~12_combout\ & !\n_12[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_ShiftRight0~12_combout\,
	datab => \ALT_INV_n_12[2]~input_o\,
	dataf => \inst_CE_12|ALT_INV_ShiftRight0~3_combout\,
	combout => \inst_CE_12|ShiftRight0~13_combout\);

-- Location: LABCELL_X19_Y6_N36
\inst_CE_13|ShiftRight0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~10_combout\ = ( \inst_CE_13|sums\(4) & ( \inst_CE_13|sums\(2) & ( (!\n_13[0]~input_o\) # ((!\n_13[1]~input_o\ & ((\inst_CE_13|sums\(3)))) # (\n_13[1]~input_o\ & (\inst_CE_13|sums\(5)))) ) ) ) # ( !\inst_CE_13|sums\(4) & ( 
-- \inst_CE_13|sums\(2) & ( (!\n_13[1]~input_o\ & (((!\n_13[0]~input_o\) # (\inst_CE_13|sums\(3))))) # (\n_13[1]~input_o\ & (\inst_CE_13|sums\(5) & (\n_13[0]~input_o\))) ) ) ) # ( \inst_CE_13|sums\(4) & ( !\inst_CE_13|sums\(2) & ( (!\n_13[1]~input_o\ & 
-- (((\n_13[0]~input_o\ & \inst_CE_13|sums\(3))))) # (\n_13[1]~input_o\ & (((!\n_13[0]~input_o\)) # (\inst_CE_13|sums\(5)))) ) ) ) # ( !\inst_CE_13|sums\(4) & ( !\inst_CE_13|sums\(2) & ( (\n_13[0]~input_o\ & ((!\n_13[1]~input_o\ & ((\inst_CE_13|sums\(3)))) # 
-- (\n_13[1]~input_o\ & (\inst_CE_13|sums\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_13[1]~input_o\,
	datab => \inst_CE_13|ALT_INV_sums\(5),
	datac => \ALT_INV_n_13[0]~input_o\,
	datad => \inst_CE_13|ALT_INV_sums\(3),
	datae => \inst_CE_13|ALT_INV_sums\(4),
	dataf => \inst_CE_13|ALT_INV_sums\(2),
	combout => \inst_CE_13|ShiftRight0~10_combout\);

-- Location: LABCELL_X23_Y10_N30
\inst_CE_13|ShiftRight0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~11_combout\ = ( \n_13[2]~input_o\ & ( \inst_CE_13|ShiftRight0~9_combout\ ) ) # ( !\n_13[2]~input_o\ & ( \inst_CE_13|ShiftRight0~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_CE_13|ALT_INV_ShiftRight0~9_combout\,
	datad => \inst_CE_13|ALT_INV_ShiftRight0~10_combout\,
	dataf => \ALT_INV_n_13[2]~input_o\,
	combout => \inst_CE_13|ShiftRight0~11_combout\);

-- Location: MLABCELL_X25_Y10_N30
\inst_CE_12|ShiftRight0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~10_combout\ = ( \inst_CE_12|sums\(4) & ( \inst_CE_12|sums\(5) & ( ((!\n_12[0]~input_o\ & ((\inst_CE_12|sums\(2)))) # (\n_12[0]~input_o\ & (\inst_CE_12|sums\(3)))) # (\n_12[1]~input_o\) ) ) ) # ( !\inst_CE_12|sums\(4) & ( 
-- \inst_CE_12|sums\(5) & ( (!\n_12[1]~input_o\ & ((!\n_12[0]~input_o\ & ((\inst_CE_12|sums\(2)))) # (\n_12[0]~input_o\ & (\inst_CE_12|sums\(3))))) # (\n_12[1]~input_o\ & (((\n_12[0]~input_o\)))) ) ) ) # ( \inst_CE_12|sums\(4) & ( !\inst_CE_12|sums\(5) & ( 
-- (!\n_12[1]~input_o\ & ((!\n_12[0]~input_o\ & ((\inst_CE_12|sums\(2)))) # (\n_12[0]~input_o\ & (\inst_CE_12|sums\(3))))) # (\n_12[1]~input_o\ & (((!\n_12[0]~input_o\)))) ) ) ) # ( !\inst_CE_12|sums\(4) & ( !\inst_CE_12|sums\(5) & ( (!\n_12[1]~input_o\ & 
-- ((!\n_12[0]~input_o\ & ((\inst_CE_12|sums\(2)))) # (\n_12[0]~input_o\ & (\inst_CE_12|sums\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_sums\(3),
	datab => \inst_CE_12|ALT_INV_sums\(2),
	datac => \ALT_INV_n_12[1]~input_o\,
	datad => \ALT_INV_n_12[0]~input_o\,
	datae => \inst_CE_12|ALT_INV_sums\(4),
	dataf => \inst_CE_12|ALT_INV_sums\(5),
	combout => \inst_CE_12|ShiftRight0~10_combout\);

-- Location: LABCELL_X24_Y10_N12
\inst_CE_12|ShiftRight0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~11_combout\ = ( \inst_CE_12|ShiftRight0~10_combout\ & ( (!\n_12[2]~input_o\) # (\inst_CE_12|ShiftRight0~9_combout\) ) ) # ( !\inst_CE_12|ShiftRight0~10_combout\ & ( (\n_12[2]~input_o\ & \inst_CE_12|ShiftRight0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n_12[2]~input_o\,
	datac => \inst_CE_12|ALT_INV_ShiftRight0~9_combout\,
	dataf => \inst_CE_12|ALT_INV_ShiftRight0~10_combout\,
	combout => \inst_CE_12|ShiftRight0~11_combout\);

-- Location: LABCELL_X24_Y10_N30
\inst_CE_11|ShiftRight0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~10_combout\ = ( \inst_CE_11|sums\(5) & ( \n_11[0]~input_o\ & ( (\inst_CE_11|sums\(3)) # (\n_11[1]~input_o\) ) ) ) # ( !\inst_CE_11|sums\(5) & ( \n_11[0]~input_o\ & ( (!\n_11[1]~input_o\ & \inst_CE_11|sums\(3)) ) ) ) # ( 
-- \inst_CE_11|sums\(5) & ( !\n_11[0]~input_o\ & ( (!\n_11[1]~input_o\ & (\inst_CE_11|sums\(2))) # (\n_11[1]~input_o\ & ((\inst_CE_11|sums\(4)))) ) ) ) # ( !\inst_CE_11|sums\(5) & ( !\n_11[0]~input_o\ & ( (!\n_11[1]~input_o\ & (\inst_CE_11|sums\(2))) # 
-- (\n_11[1]~input_o\ & ((\inst_CE_11|sums\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_11[1]~input_o\,
	datab => \inst_CE_11|ALT_INV_sums\(3),
	datac => \inst_CE_11|ALT_INV_sums\(2),
	datad => \inst_CE_11|ALT_INV_sums\(4),
	datae => \inst_CE_11|ALT_INV_sums\(5),
	dataf => \ALT_INV_n_11[0]~input_o\,
	combout => \inst_CE_11|ShiftRight0~10_combout\);

-- Location: LABCELL_X23_Y10_N36
\inst_CE_11|ShiftRight0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~11_combout\ = ( \n_11[2]~input_o\ & ( \inst_CE_11|ShiftRight0~9_combout\ ) ) # ( !\n_11[2]~input_o\ & ( \inst_CE_11|ShiftRight0~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_CE_11|ALT_INV_ShiftRight0~10_combout\,
	datac => \inst_CE_11|ALT_INV_ShiftRight0~9_combout\,
	dataf => \ALT_INV_n_11[2]~input_o\,
	combout => \inst_CE_11|ShiftRight0~11_combout\);

-- Location: LABCELL_X24_Y10_N36
\inst_CE_12|ShiftRight0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~7_combout\ = ( \inst_CE_12|sums\(4) & ( \inst_CE_12|sums\(2) & ( ((!\n_12[1]~input_o\ & ((\inst_CE_12|sums\(1)))) # (\n_12[1]~input_o\ & (\inst_CE_12|sums\(3)))) # (\n_12[0]~input_o\) ) ) ) # ( !\inst_CE_12|sums\(4) & ( 
-- \inst_CE_12|sums\(2) & ( (!\n_12[1]~input_o\ & (((\inst_CE_12|sums\(1)) # (\n_12[0]~input_o\)))) # (\n_12[1]~input_o\ & (\inst_CE_12|sums\(3) & (!\n_12[0]~input_o\))) ) ) ) # ( \inst_CE_12|sums\(4) & ( !\inst_CE_12|sums\(2) & ( (!\n_12[1]~input_o\ & 
-- (((!\n_12[0]~input_o\ & \inst_CE_12|sums\(1))))) # (\n_12[1]~input_o\ & (((\n_12[0]~input_o\)) # (\inst_CE_12|sums\(3)))) ) ) ) # ( !\inst_CE_12|sums\(4) & ( !\inst_CE_12|sums\(2) & ( (!\n_12[0]~input_o\ & ((!\n_12[1]~input_o\ & ((\inst_CE_12|sums\(1)))) 
-- # (\n_12[1]~input_o\ & (\inst_CE_12|sums\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_sums\(3),
	datab => \ALT_INV_n_12[1]~input_o\,
	datac => \ALT_INV_n_12[0]~input_o\,
	datad => \inst_CE_12|ALT_INV_sums\(1),
	datae => \inst_CE_12|ALT_INV_sums\(4),
	dataf => \inst_CE_12|ALT_INV_sums\(2),
	combout => \inst_CE_12|ShiftRight0~7_combout\);

-- Location: LABCELL_X23_Y10_N51
\inst_CE_12|ShiftRight0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_12|ShiftRight0~8_combout\ = ( \inst_CE_12|ShiftRight0~6_combout\ & ( (\inst_CE_12|ShiftRight0~7_combout\) # (\n_12[2]~input_o\) ) ) # ( !\inst_CE_12|ShiftRight0~6_combout\ & ( (!\n_12[2]~input_o\ & \inst_CE_12|ShiftRight0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_12[2]~input_o\,
	datac => \inst_CE_12|ALT_INV_ShiftRight0~7_combout\,
	dataf => \inst_CE_12|ALT_INV_ShiftRight0~6_combout\,
	combout => \inst_CE_12|ShiftRight0~8_combout\);

-- Location: LABCELL_X24_Y10_N54
\inst_CE_11|ShiftRight0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~7_combout\ = ( \inst_CE_11|sums\(2) & ( \n_11[0]~input_o\ & ( (!\n_11[1]~input_o\) # (\inst_CE_11|sums\(4)) ) ) ) # ( !\inst_CE_11|sums\(2) & ( \n_11[0]~input_o\ & ( (\n_11[1]~input_o\ & \inst_CE_11|sums\(4)) ) ) ) # ( 
-- \inst_CE_11|sums\(2) & ( !\n_11[0]~input_o\ & ( (!\n_11[1]~input_o\ & (\inst_CE_11|sums\(1))) # (\n_11[1]~input_o\ & ((\inst_CE_11|sums\(3)))) ) ) ) # ( !\inst_CE_11|sums\(2) & ( !\n_11[0]~input_o\ & ( (!\n_11[1]~input_o\ & (\inst_CE_11|sums\(1))) # 
-- (\n_11[1]~input_o\ & ((\inst_CE_11|sums\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_11[1]~input_o\,
	datab => \inst_CE_11|ALT_INV_sums\(4),
	datac => \inst_CE_11|ALT_INV_sums\(1),
	datad => \inst_CE_11|ALT_INV_sums\(3),
	datae => \inst_CE_11|ALT_INV_sums\(2),
	dataf => \ALT_INV_n_11[0]~input_o\,
	combout => \inst_CE_11|ShiftRight0~7_combout\);

-- Location: LABCELL_X24_Y10_N21
\inst_CE_11|ShiftRight0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_11|ShiftRight0~8_combout\ = ( \n_11[2]~input_o\ & ( \inst_CE_11|ShiftRight0~6_combout\ ) ) # ( !\n_11[2]~input_o\ & ( \inst_CE_11|ShiftRight0~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_ShiftRight0~6_combout\,
	datad => \inst_CE_11|ALT_INV_ShiftRight0~7_combout\,
	dataf => \ALT_INV_n_11[2]~input_o\,
	combout => \inst_CE_11|ShiftRight0~8_combout\);

-- Location: LABCELL_X19_Y6_N30
\inst_CE_13|ShiftRight0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~7_combout\ = ( \inst_CE_13|sums\(4) & ( \inst_CE_13|sums\(2) & ( ((!\n_13[1]~input_o\ & ((\inst_CE_13|sums\(1)))) # (\n_13[1]~input_o\ & (\inst_CE_13|sums\(3)))) # (\n_13[0]~input_o\) ) ) ) # ( !\inst_CE_13|sums\(4) & ( 
-- \inst_CE_13|sums\(2) & ( (!\n_13[1]~input_o\ & (((\inst_CE_13|sums\(1)) # (\n_13[0]~input_o\)))) # (\n_13[1]~input_o\ & (\inst_CE_13|sums\(3) & (!\n_13[0]~input_o\))) ) ) ) # ( \inst_CE_13|sums\(4) & ( !\inst_CE_13|sums\(2) & ( (!\n_13[1]~input_o\ & 
-- (((!\n_13[0]~input_o\ & \inst_CE_13|sums\(1))))) # (\n_13[1]~input_o\ & (((\n_13[0]~input_o\)) # (\inst_CE_13|sums\(3)))) ) ) ) # ( !\inst_CE_13|sums\(4) & ( !\inst_CE_13|sums\(2) & ( (!\n_13[0]~input_o\ & ((!\n_13[1]~input_o\ & ((\inst_CE_13|sums\(1)))) 
-- # (\n_13[1]~input_o\ & (\inst_CE_13|sums\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n_13[1]~input_o\,
	datab => \inst_CE_13|ALT_INV_sums\(3),
	datac => \ALT_INV_n_13[0]~input_o\,
	datad => \inst_CE_13|ALT_INV_sums\(1),
	datae => \inst_CE_13|ALT_INV_sums\(4),
	dataf => \inst_CE_13|ALT_INV_sums\(2),
	combout => \inst_CE_13|ShiftRight0~7_combout\);

-- Location: LABCELL_X23_Y10_N48
\inst_CE_13|ShiftRight0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_CE_13|ShiftRight0~8_combout\ = ( \n_13[2]~input_o\ & ( \inst_CE_13|ShiftRight0~6_combout\ ) ) # ( !\n_13[2]~input_o\ & ( \inst_CE_13|ShiftRight0~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst_CE_13|ALT_INV_ShiftRight0~7_combout\,
	datac => \inst_CE_13|ALT_INV_ShiftRight0~6_combout\,
	dataf => \ALT_INV_n_13[2]~input_o\,
	combout => \inst_CE_13|ShiftRight0~8_combout\);

-- Location: LABCELL_X23_Y10_N3
\inst_SE|_~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_SE|_~9_sumout\ = SUM(( !\inst_CE_12|ShiftRight0~8_combout\ $ (!\inst_CE_11|ShiftRight0~8_combout\ $ (\inst_CE_13|ShiftRight0~8_combout\)) ) + ( \inst_SE|_~3\ ) + ( \inst_SE|_~2\ ))
-- \inst_SE|_~10\ = CARRY(( !\inst_CE_12|ShiftRight0~8_combout\ $ (!\inst_CE_11|ShiftRight0~8_combout\ $ (\inst_CE_13|ShiftRight0~8_combout\)) ) + ( \inst_SE|_~3\ ) + ( \inst_SE|_~2\ ))
-- \inst_SE|_~11\ = SHARE((!\inst_CE_12|ShiftRight0~8_combout\ & (\inst_CE_11|ShiftRight0~8_combout\ & \inst_CE_13|ShiftRight0~8_combout\)) # (\inst_CE_12|ShiftRight0~8_combout\ & ((\inst_CE_13|ShiftRight0~8_combout\) # 
-- (\inst_CE_11|ShiftRight0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_12|ALT_INV_ShiftRight0~8_combout\,
	datac => \inst_CE_11|ALT_INV_ShiftRight0~8_combout\,
	datad => \inst_CE_13|ALT_INV_ShiftRight0~8_combout\,
	cin => \inst_SE|_~2\,
	sharein => \inst_SE|_~3\,
	sumout => \inst_SE|_~9_sumout\,
	cout => \inst_SE|_~10\,
	shareout => \inst_SE|_~11\);

-- Location: LABCELL_X23_Y10_N6
\inst_SE|_~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_SE|_~13_sumout\ = SUM(( !\inst_CE_13|ShiftRight0~11_combout\ $ (!\inst_CE_12|ShiftRight0~11_combout\ $ (\inst_CE_11|ShiftRight0~11_combout\)) ) + ( \inst_SE|_~11\ ) + ( \inst_SE|_~10\ ))
-- \inst_SE|_~14\ = CARRY(( !\inst_CE_13|ShiftRight0~11_combout\ $ (!\inst_CE_12|ShiftRight0~11_combout\ $ (\inst_CE_11|ShiftRight0~11_combout\)) ) + ( \inst_SE|_~11\ ) + ( \inst_SE|_~10\ ))
-- \inst_SE|_~15\ = SHARE((!\inst_CE_13|ShiftRight0~11_combout\ & (\inst_CE_12|ShiftRight0~11_combout\ & \inst_CE_11|ShiftRight0~11_combout\)) # (\inst_CE_13|ShiftRight0~11_combout\ & ((\inst_CE_11|ShiftRight0~11_combout\) # 
-- (\inst_CE_12|ShiftRight0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst_CE_13|ALT_INV_ShiftRight0~11_combout\,
	datac => \inst_CE_12|ALT_INV_ShiftRight0~11_combout\,
	datad => \inst_CE_11|ALT_INV_ShiftRight0~11_combout\,
	cin => \inst_SE|_~10\,
	sharein => \inst_SE|_~11\,
	sumout => \inst_SE|_~13_sumout\,
	cout => \inst_SE|_~14\,
	shareout => \inst_SE|_~15\);

-- Location: LABCELL_X23_Y10_N9
\inst_SE|_~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_SE|_~17_sumout\ = SUM(( !\inst_CE_13|ShiftRight0~13_combout\ $ (!\inst_CE_11|ShiftRight0~13_combout\ $ (\inst_CE_12|ShiftRight0~13_combout\)) ) + ( \inst_SE|_~15\ ) + ( \inst_SE|_~14\ ))
-- \inst_SE|_~18\ = CARRY(( !\inst_CE_13|ShiftRight0~13_combout\ $ (!\inst_CE_11|ShiftRight0~13_combout\ $ (\inst_CE_12|ShiftRight0~13_combout\)) ) + ( \inst_SE|_~15\ ) + ( \inst_SE|_~14\ ))
-- \inst_SE|_~19\ = SHARE((!\inst_CE_13|ShiftRight0~13_combout\ & (\inst_CE_11|ShiftRight0~13_combout\ & \inst_CE_12|ShiftRight0~13_combout\)) # (\inst_CE_13|ShiftRight0~13_combout\ & ((\inst_CE_12|ShiftRight0~13_combout\) # 
-- (\inst_CE_11|ShiftRight0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_ShiftRight0~13_combout\,
	datac => \inst_CE_11|ALT_INV_ShiftRight0~13_combout\,
	datad => \inst_CE_12|ALT_INV_ShiftRight0~13_combout\,
	cin => \inst_SE|_~14\,
	sharein => \inst_SE|_~15\,
	sumout => \inst_SE|_~17_sumout\,
	cout => \inst_SE|_~18\,
	shareout => \inst_SE|_~19\);

-- Location: LABCELL_X23_Y10_N12
\inst_SE|_~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_SE|_~21_sumout\ = SUM(( !\inst_CE_12|ShiftRight0~15_combout\ $ (!\inst_CE_13|ShiftRight0~15_combout\ $ (\inst_CE_11|ShiftRight0~15_combout\)) ) + ( \inst_SE|_~19\ ) + ( \inst_SE|_~18\ ))
-- \inst_SE|_~22\ = CARRY(( !\inst_CE_12|ShiftRight0~15_combout\ $ (!\inst_CE_13|ShiftRight0~15_combout\ $ (\inst_CE_11|ShiftRight0~15_combout\)) ) + ( \inst_SE|_~19\ ) + ( \inst_SE|_~18\ ))
-- \inst_SE|_~23\ = SHARE((!\inst_CE_12|ShiftRight0~15_combout\ & (\inst_CE_13|ShiftRight0~15_combout\ & \inst_CE_11|ShiftRight0~15_combout\)) # (\inst_CE_12|ShiftRight0~15_combout\ & ((\inst_CE_11|ShiftRight0~15_combout\) # 
-- (\inst_CE_13|ShiftRight0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst_CE_12|ALT_INV_ShiftRight0~15_combout\,
	datac => \inst_CE_13|ALT_INV_ShiftRight0~15_combout\,
	datad => \inst_CE_11|ALT_INV_ShiftRight0~15_combout\,
	cin => \inst_SE|_~18\,
	sharein => \inst_SE|_~19\,
	sumout => \inst_SE|_~21_sumout\,
	cout => \inst_SE|_~22\,
	shareout => \inst_SE|_~23\);

-- Location: LABCELL_X23_Y10_N15
\inst_SE|_~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_SE|_~25_sumout\ = SUM(( !\inst_CE_11|ShiftRight0~17_combout\ $ (!\inst_CE_13|ShiftRight0~17_combout\ $ (\inst_CE_12|ShiftRight0~17_combout\)) ) + ( \inst_SE|_~23\ ) + ( \inst_SE|_~22\ ))
-- \inst_SE|_~26\ = CARRY(( !\inst_CE_11|ShiftRight0~17_combout\ $ (!\inst_CE_13|ShiftRight0~17_combout\ $ (\inst_CE_12|ShiftRight0~17_combout\)) ) + ( \inst_SE|_~23\ ) + ( \inst_SE|_~22\ ))
-- \inst_SE|_~27\ = SHARE((!\inst_CE_11|ShiftRight0~17_combout\ & (\inst_CE_13|ShiftRight0~17_combout\ & \inst_CE_12|ShiftRight0~17_combout\)) # (\inst_CE_11|ShiftRight0~17_combout\ & ((\inst_CE_12|ShiftRight0~17_combout\) # 
-- (\inst_CE_13|ShiftRight0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_11|ALT_INV_ShiftRight0~17_combout\,
	datac => \inst_CE_13|ALT_INV_ShiftRight0~17_combout\,
	datad => \inst_CE_12|ALT_INV_ShiftRight0~17_combout\,
	cin => \inst_SE|_~22\,
	sharein => \inst_SE|_~23\,
	sumout => \inst_SE|_~25_sumout\,
	cout => \inst_SE|_~26\,
	shareout => \inst_SE|_~27\);

-- Location: LABCELL_X23_Y10_N18
\inst_SE|_~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_SE|_~29_sumout\ = SUM(( !\inst_CE_13|ShiftRight0~19_combout\ $ (!\inst_CE_11|ShiftRight0~19_combout\ $ (\inst_CE_12|ShiftRight0~19_combout\)) ) + ( \inst_SE|_~27\ ) + ( \inst_SE|_~26\ ))
-- \inst_SE|_~30\ = CARRY(( !\inst_CE_13|ShiftRight0~19_combout\ $ (!\inst_CE_11|ShiftRight0~19_combout\ $ (\inst_CE_12|ShiftRight0~19_combout\)) ) + ( \inst_SE|_~27\ ) + ( \inst_SE|_~26\ ))
-- \inst_SE|_~31\ = SHARE((!\inst_CE_13|ShiftRight0~19_combout\ & (\inst_CE_11|ShiftRight0~19_combout\ & \inst_CE_12|ShiftRight0~19_combout\)) # (\inst_CE_13|ShiftRight0~19_combout\ & ((\inst_CE_12|ShiftRight0~19_combout\) # 
-- (\inst_CE_11|ShiftRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst_CE_13|ALT_INV_ShiftRight0~19_combout\,
	datac => \inst_CE_11|ALT_INV_ShiftRight0~19_combout\,
	datad => \inst_CE_12|ALT_INV_ShiftRight0~19_combout\,
	cin => \inst_SE|_~26\,
	sharein => \inst_SE|_~27\,
	sumout => \inst_SE|_~29_sumout\,
	cout => \inst_SE|_~30\,
	shareout => \inst_SE|_~31\);

-- Location: LABCELL_X23_Y10_N21
\inst_SE|_~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_SE|_~5_sumout\ = SUM(( !\inst_CE_13|ShiftRight0~5_combout\ $ (!\inst_CE_12|ShiftRight0~5_combout\ $ (\inst_CE_11|ShiftRight0~5_combout\)) ) + ( \inst_SE|_~31\ ) + ( \inst_SE|_~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CE_13|ALT_INV_ShiftRight0~5_combout\,
	datac => \inst_CE_12|ALT_INV_ShiftRight0~5_combout\,
	datad => \inst_CE_11|ALT_INV_ShiftRight0~5_combout\,
	cin => \inst_SE|_~30\,
	sharein => \inst_SE|_~31\,
	sumout => \inst_SE|_~5_sumout\);

-- Location: FF_X23_Y10_N2
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

-- Location: FF_X23_Y10_N5
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

-- Location: FF_X23_Y10_N7
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

-- Location: FF_X23_Y10_N10
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

-- Location: FF_X23_Y10_N13
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

-- Location: FF_X23_Y10_N16
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

-- Location: FF_X23_Y10_N19
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

-- Location: IOIBUF_X12_Y81_N35
\n_11[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_11(3),
	o => \n_11[3]~input_o\);

-- Location: IOIBUF_X6_Y81_N35
\n_11[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_11(4),
	o => \n_11[4]~input_o\);

-- Location: IOIBUF_X16_Y81_N1
\n_11[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_11(5),
	o => \n_11[5]~input_o\);

-- Location: IOIBUF_X24_Y81_N1
\n_11[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_11(6),
	o => \n_11[6]~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\n_11[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_11(7),
	o => \n_11[7]~input_o\);

-- Location: IOIBUF_X36_Y81_N1
\n_12[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_12(3),
	o => \n_12[3]~input_o\);

-- Location: IOIBUF_X2_Y81_N75
\n_12[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_12(4),
	o => \n_12[4]~input_o\);

-- Location: IOIBUF_X2_Y81_N92
\n_12[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_12(5),
	o => \n_12[5]~input_o\);

-- Location: IOIBUF_X10_Y81_N58
\n_12[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_12(6),
	o => \n_12[6]~input_o\);

-- Location: IOIBUF_X10_Y81_N41
\n_12[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_12(7),
	o => \n_12[7]~input_o\);

-- Location: IOIBUF_X86_Y0_N35
\n_13[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_13(3),
	o => \n_13[3]~input_o\);

-- Location: IOIBUF_X6_Y81_N52
\n_13[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_13(4),
	o => \n_13[4]~input_o\);

-- Location: IOIBUF_X4_Y81_N18
\n_13[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_13(5),
	o => \n_13[5]~input_o\);

-- Location: IOIBUF_X16_Y81_N52
\n_13[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_13(6),
	o => \n_13[6]~input_o\);

-- Location: IOIBUF_X8_Y81_N1
\n_13[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_13(7),
	o => \n_13[7]~input_o\);

-- Location: MLABCELL_X87_Y17_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


