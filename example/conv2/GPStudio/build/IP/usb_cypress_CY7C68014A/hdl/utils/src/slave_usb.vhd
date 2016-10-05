-- **************************************************************************
--	Enable_gen 
-- **************************************************************************
-- 03/12/2014
--------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

-- entity "uses" the package   
-- use work.ComFlow_pkg.all;

entity  slave_usb is 
  generic (
	DATA_WIDTH : integer := 32
    );
  port(
	clk_i : in std_logic;
	rst_n_i : in std_logic;
				
	addr_i : in std_logic_vector(3 DOWNTO 0);		--(addr_rel_0_o),
	wr_i : in std_logic;			--(wr_0_o),
	datawr_i : in std_logic_vector(DATA_WIDTH-1 downto 0);

	enable_usb_o : out std_logic;
	enable_in0_o : out std_logic;
	enable_in1_o : out std_logic;
	enable_in2_o : out std_logic;
	enable_in3_o : out std_logic	
    );
end  slave_usb;

architecture rtl of  slave_usb is

constant ENABLE_USB_ADDR : integer := 0;
constant ENABLE_IN0_ADDR : integer := 1;
constant ENABLE_IN1_ADDR : integer := 2;
constant ENABLE_IN2_ADDR : integer := 3;
constant ENABLE_IN3_ADDR : integer := 4;


begin

REG:process (clk_i, rst_n_i) 
begin
	if (rst_n_i = '0') then	
		enable_usb_o <= '0';
		enable_in0_o <= '0';
		enable_in1_o <= '0';
		enable_in2_o <= '0';
		enable_in3_o <= '0';
	elsif rising_edge(clk_i) then
		if(wr_i = '1') then
			case addr_i is
				when std_logic_vector(to_unsigned(ENABLE_USB_ADDR,4)) =>		
					enable_usb_o <= datawr_i(0);
				when std_logic_vector(to_unsigned(ENABLE_IN0_ADDR,4)) =>		
					enable_in0_o <= datawr_i(0);
				when std_logic_vector(to_unsigned(ENABLE_IN1_ADDR,4)) =>		
					enable_in1_o <= datawr_i(0);
				when std_logic_vector(to_unsigned(ENABLE_IN2_ADDR,4)) =>		
					enable_in2_o <= datawr_i(0);
				when std_logic_vector(to_unsigned(ENABLE_IN3_ADDR,4)) =>		
					enable_in3_o <= datawr_i(0);
				when others =>
			end case;
		end if;	
	end if;
end process;



end rtl;

