library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
library std;

entity fi is
	generic (
		CLK_PROC_FREQ   : integer;
		MT9_OUT_SIZE    : integer;
		USB_IN0_SIZE    : integer;
		USB_IN1_SIZE    : integer;
		USB_IN2_SIZE    : integer;
		USB_IN3_SIZE    : integer;
		USB_OUT0_SIZE   : integer;
		USB_OUT1_SIZE   : integer;
		CONV2_IN_SIZE   : integer;
		CONV2_OUT1_SIZE : integer;
		CONV2_OUT2_SIZE : integer;
		CONV2_OUT3_SIZE : integer
	);
	port (
		clk_proc        : in std_logic;
		reset           : in std_logic;

		------------------------- mt9_out -----------------------
		mt9_out_data    : in std_logic_vector(MT9_OUT_SIZE-1 downto 0);
		mt9_out_fv      : in std_logic;
		mt9_out_dv      : in std_logic;

		------------------------- usb_in0 -----------------------
		usb_in0_data    : out std_logic_vector(USB_IN0_SIZE-1 downto 0);
		usb_in0_fv      : out std_logic;
		usb_in0_dv      : out std_logic;

		------------------------- usb_in1 -----------------------
		usb_in1_data    : out std_logic_vector(USB_IN1_SIZE-1 downto 0);
		usb_in1_fv      : out std_logic;
		usb_in1_dv      : out std_logic;

		------------------------- usb_in2 -----------------------
		usb_in2_data    : out std_logic_vector(USB_IN2_SIZE-1 downto 0);
		usb_in2_fv      : out std_logic;
		usb_in2_dv      : out std_logic;

		------------------------- usb_in3 -----------------------
		usb_in3_data    : out std_logic_vector(USB_IN3_SIZE-1 downto 0);
		usb_in3_fv      : out std_logic;
		usb_in3_dv      : out std_logic;

		------------------------ usb_out0 -----------------------
		usb_out0_data   : in std_logic_vector(USB_OUT0_SIZE-1 downto 0);
		usb_out0_fv     : in std_logic;
		usb_out0_dv     : in std_logic;

		------------------------ usb_out1 -----------------------
		usb_out1_data   : in std_logic_vector(USB_OUT1_SIZE-1 downto 0);
		usb_out1_fv     : in std_logic;
		usb_out1_dv     : in std_logic;

		------------------------ conv2_in -----------------------
		conv2_in_data   : out std_logic_vector(CONV2_IN_SIZE-1 downto 0);
		conv2_in_fv     : out std_logic;
		conv2_in_dv     : out std_logic;

		----------------------- conv2_out1 ----------------------
		conv2_out1_data : in std_logic_vector(CONV2_OUT1_SIZE-1 downto 0);
		conv2_out1_fv   : in std_logic;
		conv2_out1_dv   : in std_logic;

		----------------------- conv2_out2 ----------------------
		conv2_out2_data : in std_logic_vector(CONV2_OUT2_SIZE-1 downto 0);
		conv2_out2_fv   : in std_logic;
		conv2_out2_dv   : in std_logic;

		----------------------- conv2_out3 ----------------------
		conv2_out3_data : in std_logic_vector(CONV2_OUT3_SIZE-1 downto 0);
		conv2_out3_fv   : in std_logic;
		conv2_out3_dv   : in std_logic
	);
end fi;

architecture rtl of fi is

begin
	-- usb_in0 connection
	usb_in0_data <= mt9_out_data;
	usb_in0_fv <=  mt9_out_fv;
	usb_in0_dv <=  mt9_out_dv;

	-- conv2_in connection
	conv2_in_data <= mt9_out_data;
	conv2_in_fv <=  mt9_out_fv;
	conv2_in_dv <=  mt9_out_dv;

	-- usb_in1 connection
	usb_in1_data <= conv2_out1_data;
	usb_in1_fv <=  conv2_out1_fv;
	usb_in1_dv <=  conv2_out1_dv;

	-- usb_in2 connection
	usb_in2_data <= conv2_out2_data;
	usb_in2_fv <=  conv2_out2_fv;
	usb_in2_dv <=  conv2_out2_dv;

	-- usb_in3 connection
	usb_in3_data <= conv2_out3_data;
	usb_in3_fv <=  conv2_out3_fv;
	usb_in3_dv <=  conv2_out3_dv;


end rtl;
