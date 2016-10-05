library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
library std;

entity pi is
	generic (
		CLK_PROC_FREQ : integer
	);
	port (
		clk_proc            : in std_logic;
		reset               : in std_logic;

		--======================= Masters =======================

		--------------------- bus_master_usb --------------------
		usb_master_addr_i   : in std_logic_vector(5 downto 0);
		usb_master_wr_i     : in std_logic;
		usb_master_rd_i     : in std_logic;
		usb_master_datawr_i : in std_logic_vector(31 downto 0);
		usb_master_datard_o : out std_logic_vector(31 downto 0);

		--======================= Slaves ========================

		----------------------- bus_sl_mt9 ----------------------
		mt9_addr_rel_o      : out std_logic_vector(4 downto 0);
		mt9_wr_o            : out std_logic;
		mt9_rd_o            : out std_logic;
		mt9_datawr_o        : out std_logic_vector(31 downto 0);
		mt9_datard_i        : in std_logic_vector(31 downto 0);

		----------------------- bus_sl_usb ----------------------
		usb_addr_rel_o      : out std_logic_vector(3 downto 0);
		usb_wr_o            : out std_logic;
		usb_rd_o            : out std_logic;
		usb_datawr_o        : out std_logic_vector(31 downto 0);
		usb_datard_i        : in std_logic_vector(31 downto 0);

		---------------------- bus_sl_conv2 ---------------------
		conv2_addr_rel_o    : out std_logic_vector(1 downto 0);
		conv2_wr_o          : out std_logic;
		conv2_rd_o          : out std_logic;
		conv2_datawr_o      : out std_logic_vector(31 downto 0);
		conv2_datard_i      : in std_logic_vector(31 downto 0)
	);
end pi;

architecture rtl of pi is
	signal cs_mt9_s   : std_logic;
	signal cs_usb_s   : std_logic;
	signal cs_conv2_s : std_logic;

begin

-- mt9 slave at addr : 0 to 31
mt9_wr_o <= cs_mt9_s and usb_master_wr_i;
mt9_rd_o <= cs_mt9_s and usb_master_rd_i;
mt9_addr_rel_o <= usb_master_addr_i(4 downto 0);
mt9_datawr_o <= usb_master_datawr_i;

decode_mt9 : process(usb_master_addr_i)
begin
	if(usb_master_addr_i(5 downto 5) = std_logic_vector(to_unsigned(0, 1))) then
		cs_mt9_s <= '1';
	else
		cs_mt9_s <= '0';
	end if;
end process;

-- usb slave at addr : 32 to 47
usb_wr_o <= cs_usb_s and usb_master_wr_i;
usb_rd_o <= cs_usb_s and usb_master_rd_i;
usb_addr_rel_o <= usb_master_addr_i(3 downto 0);
usb_datawr_o <= usb_master_datawr_i;

decode_usb : process(usb_master_addr_i)
begin
	if(usb_master_addr_i(5 downto 4) = std_logic_vector(to_unsigned(2, 2))) then
		cs_usb_s <= '1';
	else
		cs_usb_s <= '0';
	end if;
end process;

-- conv2 slave at addr : 48 to 51
conv2_wr_o <= cs_conv2_s and usb_master_wr_i;
conv2_rd_o <= cs_conv2_s and usb_master_rd_i;
conv2_addr_rel_o <= usb_master_addr_i(1 downto 0);
conv2_datawr_o <= usb_master_datawr_i;

decode_conv2 : process(usb_master_addr_i)
begin
	if(usb_master_addr_i(5 downto 2) = std_logic_vector(to_unsigned(12, 4))) then
		cs_conv2_s <= '1';
	else
		cs_conv2_s <= '0';
	end if;
end process;

-- data mux foreach master
usb_master_datard_o <=
	mt9_datard_i when (usb_master_addr_i(5 downto 5) = std_logic_vector(to_unsigned(0, 1))) else
	usb_datard_i when (usb_master_addr_i(5 downto 4) = std_logic_vector(to_unsigned(2, 2))) else
	conv2_datard_i when (usb_master_addr_i(5 downto 2) = std_logic_vector(to_unsigned(12, 4))) else
	(others => '0');

end rtl;
