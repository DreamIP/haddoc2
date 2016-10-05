library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
library std;

entity mt9_config_slave is
	port (
		clk_proc			: in std_logic;
		reset_n				: in std_logic;
		
		------------------------- bus_sl ------------------------
		addr_rel_i			: in std_logic_vector(4 downto 0);
		wr_i				: in std_logic;
		rd_i				: in std_logic;
		datawr_i			: in std_logic_vector(31 downto 0);
		datard_o			: out std_logic_vector(31 downto 0);
		
		-- connections to video sampler
		enable_o			: out std_logic;
		flowlength_o		: out std_logic_vector(31 downto 0);
		
		-- connections to mt9_config_i2c
		xstart_o			: out std_logic_vector(15 downto 0);
		ystart_o			: out std_logic_vector(15 downto 0);
		xend_o				: out std_logic_vector(15 downto 0);
		yend_o				: out std_logic_vector(15 downto 0);
		autoexp_o			: out std_logic;
		autoexptarget_o		: out std_logic_vector(15 downto 0);
		autoexpvmin_o		: out std_logic_vector(15 downto 0);
		autoexpvmax_o		: out std_logic_vector(15 downto 0);
		autoexpstepmin_o	: out std_logic_vector(15 downto 0);
		autoexpstepmax_o	: out std_logic_vector(15 downto 0);
		autoexpdampofset_o	: out std_logic_vector(15 downto 0);
		autoexpdampgain_o	: out std_logic_vector(15 downto 0);
		autoexpdampmax_o	: out std_logic_vector(15 downto 0);
		flipvert_o			: out std_logic;
		mirrorx_o			: out std_logic;
		binning_o			: out std_logic;
		integtime_o			: out std_logic_vector(15 downto 0);
		linelenght_o		: out std_logic_vector(15 downto 0);
		need_to_reconf_o	: out std_logic
	);
end mt9_config_slave;

architecture rtl of mt9_config_slave is
	constant ENABLE_REG_ADDR			: natural := 0;
	constant FLOWLENGHT_REG_ADDR		: natural := 1;
	constant XSTART_REG_ADDR			: natural := 2;
	constant YSTART_REG_ADDR			: natural := 3;
	constant XEND_REG_ADDR				: natural := 4;
	constant YEND_REG_ADDR				: natural := 5;
	constant MODE_REG_ADDR				: natural := 6;
	constant INTEGTIME_REG_ADDR			: natural := 7;
	constant LINE_LENGHT_REG_ADDR		: natural := 8;
	constant AUTOEXPTARGET_REG_ADDR		: natural := 9;
	constant AUTOEXPVMIN_REG_ADDR		: natural := 10;
	constant AUTOEXPVMAX_REG_ADDR		: natural := 11;
	constant AUTOEXPMINSTEP_REG_ADDR	: natural := 12;
	constant AUTOEXPMAXSTEP_REG_ADDR	: natural := 13;
	constant AUTOEXPDAMPOFSET_REG_ADDR	: natural := 14;
	constant AUTOEXPDAMPGAIN_REG_ADDR	: natural := 15;
	constant AUTOEXPDAMPMAX_REG_ADDR	: natural := 16;
	
	signal data_out : std_logic_vector(31 downto 0);

	signal enable_reg : std_logic;
	signal flowlength_reg : std_logic_vector(31 downto 0);
	
	signal xstart_reg			: std_logic_vector(15 downto 0);
	signal ystart_reg			: std_logic_vector(15 downto 0);
	signal xend_reg				: std_logic_vector(15 downto 0);
	signal yend_reg				: std_logic_vector(15 downto 0);
	signal autoexp_reg			: std_logic;
	signal autoexptarget_reg	: std_logic_vector(15 downto 0);
	signal autoexpvmin_reg		: std_logic_vector(15 downto 0);
	signal autoexpvmax_reg		: std_logic_vector(15 downto 0);
	signal autoexpstepmin_reg	: std_logic_vector(15 downto 0);
	signal autoexpstepmax_reg	: std_logic_vector(15 downto 0);
	signal autoexpdampofset_reg	: std_logic_vector(15 downto 0);
	signal autoexpdampgain_reg	: std_logic_vector(15 downto 0);
	signal autoexpdampmax_reg	: std_logic_vector(15 downto 0);
	signal flipvert_reg			: std_logic;
	signal mirrorx_reg			: std_logic;
	signal binning_reg			: std_logic;
	signal integtime_reg		: std_logic_vector(15 downto 0);
	signal linelenght_reg		: std_logic_vector(15 downto 0);

begin

	write_reg : process (clk_proc, reset_n)
	begin
		if(reset_n='0') then
			enable_reg <= '0';
			flowlength_reg <= std_logic_vector(to_unsigned(320*240, 32));
			
			xstart_reg <= std_logic_vector(to_unsigned(0, 16));
			ystart_reg <= std_logic_vector(to_unsigned(0, 16));
			xend_reg <= std_logic_vector(to_unsigned(320, 16));
			yend_reg <= std_logic_vector(to_unsigned(240, 16));
			autoexp_reg <= '0';
			autoexptarget_reg <= x"002C";
			autoexpvmin_reg <= x"0001";
			autoexpvmax_reg <= x"02A0";
			autoexpstepmin_reg <= x"0070";
			autoexpstepmax_reg <= x"0008";
			autoexpdampofset_reg <= x"0200";
			autoexpdampgain_reg <= x"0200";
			autoexpdampmax_reg <= x"0140";
			flipvert_reg <= '0';
			mirrorx_reg <= '0';
			binning_reg <= '0';
			integtime_reg <= x"00E6";
			linelenght_reg <= std_logic_vector(to_unsigned(1650, 16));
			need_to_reconf_o <= '1';
		elsif(rising_edge(clk_proc)) then
			need_to_reconf_o <= '0';
			if(wr_i='1') then
				case addr_rel_i is
					when std_logic_vector(to_unsigned(ENABLE_REG_ADDR, 5))=>
						enable_reg <= datawr_i(0);
					when std_logic_vector(to_unsigned(FLOWLENGHT_REG_ADDR, 5))=>
						flowlength_reg <= datawr_i;
					when std_logic_vector(to_unsigned(XSTART_REG_ADDR, 5))=>
						xstart_reg <= datawr_i(15 downto 0);
						need_to_reconf_o <= '1';
					when std_logic_vector(to_unsigned(YSTART_REG_ADDR, 5))=>
						ystart_reg <= datawr_i(15 downto 0);
						need_to_reconf_o <= '1';
					when std_logic_vector(to_unsigned(XEND_REG_ADDR, 5))=>
						xend_reg <= datawr_i(15 downto 0);
						need_to_reconf_o <= '1';
					when std_logic_vector(to_unsigned(YEND_REG_ADDR, 5))=>
						yend_reg <= datawr_i(15 downto 0);
						need_to_reconf_o <= '1';
					when std_logic_vector(to_unsigned(MODE_REG_ADDR, 5))=>
						autoexp_reg <= datawr_i(0);
						flipvert_reg <= datawr_i(1);
						mirrorx_reg <= datawr_i(2);
						binning_reg <= datawr_i(3);
						need_to_reconf_o <= '1';
					when std_logic_vector(to_unsigned(INTEGTIME_REG_ADDR, 5))=>
						integtime_reg <= datawr_i(15 downto 0);
						need_to_reconf_o <= '1';
					when std_logic_vector(to_unsigned(LINE_LENGHT_REG_ADDR, 5))=>
						linelenght_reg <= datawr_i(15 downto 0);
						need_to_reconf_o <= '1';
					when std_logic_vector(to_unsigned(AUTOEXPTARGET_REG_ADDR, 5))=>
						autoexptarget_reg <= datawr_i(15 downto 0);
						need_to_reconf_o <= '1';
					when std_logic_vector(to_unsigned(AUTOEXPVMIN_REG_ADDR, 5))=>
						autoexpvmin_reg <= datawr_i(15 downto 0);
						need_to_reconf_o <= '1';
					when std_logic_vector(to_unsigned(AUTOEXPVMAX_REG_ADDR, 5))=>
						autoexpvmax_reg <= datawr_i(15 downto 0);
						need_to_reconf_o <= '1';
					when std_logic_vector(to_unsigned(AUTOEXPMINSTEP_REG_ADDR, 5))=>
						autoexpstepmin_reg <= datawr_i(15 downto 0);
						need_to_reconf_o <= '1';
					when std_logic_vector(to_unsigned(AUTOEXPMAXSTEP_REG_ADDR, 5))=>
						autoexpstepmax_reg <= datawr_i(15 downto 0);
						need_to_reconf_o <= '1';
					when std_logic_vector(to_unsigned(AUTOEXPDAMPOFSET_REG_ADDR, 5))=>
						autoexpdampofset_reg <= datawr_i(15 downto 0);
						need_to_reconf_o <= '1';
					when std_logic_vector(to_unsigned(AUTOEXPDAMPGAIN_REG_ADDR, 5))=>
						autoexpdampgain_reg <= datawr_i(15 downto 0);
						need_to_reconf_o <= '1';
					when std_logic_vector(to_unsigned(AUTOEXPDAMPMAX_REG_ADDR, 5))=>
						autoexpdampmax_reg <= datawr_i(15 downto 0);
						need_to_reconf_o <= '1';
					when others=>
				end case;
			end if;
		end if;
	end process;
	
	read_reg : process (clk_proc, reset_n)
	begin
		if(reset_n='0') then
			data_out <= (others => '0');
		elsif(rising_edge(clk_proc)) then
			if(rd_i='1') then
				case addr_rel_i is
					when std_logic_vector(to_unsigned(ENABLE_REG_ADDR, 5))=>
						data_out <= x"0000000" & "000" & enable_reg;
					when std_logic_vector(to_unsigned(FLOWLENGHT_REG_ADDR, 5))=>
						data_out <= flowlength_reg;
					when std_logic_vector(to_unsigned(XSTART_REG_ADDR, 5))=>
						data_out <= x"0000" & xstart_reg;
					when std_logic_vector(to_unsigned(YSTART_REG_ADDR, 5))=>
						data_out <= x"0000" & ystart_reg;
					when std_logic_vector(to_unsigned(XEND_REG_ADDR, 5))=>
						data_out <= x"0000" & xend_reg;
					when std_logic_vector(to_unsigned(YEND_REG_ADDR, 5))=>
						data_out <= x"0000" & yend_reg;
					when std_logic_vector(to_unsigned(MODE_REG_ADDR, 5))=>
						data_out <= x"0000000" & binning_reg & mirrorx_reg & flipvert_reg & autoexp_reg;
					when std_logic_vector(to_unsigned(INTEGTIME_REG_ADDR, 5))=>
						data_out <= x"0000" & integtime_reg;
					when std_logic_vector(to_unsigned(LINE_LENGHT_REG_ADDR, 5))=>
						data_out <= x"0000" & linelenght_reg;
					when std_logic_vector(to_unsigned(AUTOEXPTARGET_REG_ADDR, 5))=>
						data_out <= x"0000" & autoexptarget_reg;
					when std_logic_vector(to_unsigned(AUTOEXPVMIN_REG_ADDR, 5))=>
						data_out <= x"0000" & autoexpvmin_reg;
					when std_logic_vector(to_unsigned(AUTOEXPVMAX_REG_ADDR, 5))=>
						data_out <= x"0000" & autoexpvmax_reg;
					when std_logic_vector(to_unsigned(AUTOEXPMINSTEP_REG_ADDR, 5))=>
						data_out <= x"0000" & autoexpstepmin_reg;
					when std_logic_vector(to_unsigned(AUTOEXPMAXSTEP_REG_ADDR, 5))=>
						data_out <= x"0000" & autoexpstepmax_reg;
					when std_logic_vector(to_unsigned(AUTOEXPDAMPOFSET_REG_ADDR, 5))=>
						data_out <= x"0000" & autoexpdampofset_reg;
					when std_logic_vector(to_unsigned(AUTOEXPDAMPGAIN_REG_ADDR, 5))=>
						data_out <= x"0000" & autoexpdampgain_reg;
					when std_logic_vector(to_unsigned(AUTOEXPDAMPMAX_REG_ADDR, 5))=>
						data_out <= x"0000" & autoexpdampmax_reg;
					when others=>
				end case;
			end if;
		end if;
	end process;
	
	datard_o <= data_out;
	
	enable_o <= enable_reg;
	flowlength_o <= flowlength_reg;
	xstart_o <= xstart_reg;
	ystart_o <= ystart_reg;
	xend_o <= xend_reg;
	yend_o <= yend_reg;
	autoexp_o <= autoexp_reg;
	flipvert_o <= flipvert_reg;
	mirrorx_o <= mirrorx_reg;
	binning_o <= binning_reg;
	integtime_o <= integtime_reg;
	linelenght_o <= linelenght_reg;
	autoexptarget_o <= autoexptarget_reg;
	autoexpvmin_o <= autoexpvmin_reg;
	autoexpvmax_o <= autoexpvmax_reg;
	autoexpstepmin_o <= autoexpstepmin_reg;
	autoexpstepmax_o <= autoexpstepmax_reg;
	autoexpdampofset_o <= autoexpdampofset_reg;
	autoexpdampgain_o <= autoexpdampgain_reg;
	autoexpdampmax_o <= autoexpdampmax_reg;
	
end rtl;
