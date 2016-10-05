library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
library std;
library altera_mf;
use altera_mf.all;

entity ci is
	generic (
		CLK_PROC_FREQ   : integer;
		CLK_50M_I_FREQ  : integer;
		CLK_125M_I_FREQ : integer;
		CLK_USB_FREQ    : integer
	);
	port (
		clk_proc     : in std_logic;
		clk_50M_i    : in std_logic;
		clk_125M_i   : in std_logic;
		clk_usb      : in std_logic;
		clk_9M       : out std_logic;
		clk_50k      : out std_logic;
		clk_100k_180 : out std_logic;
		reset        : in std_logic
	);
end ci;

architecture rtl of ci is
	signal pll0_in  : std_logic_vector (1 downto 0);
	signal pll0_out : std_logic_vector (4 downto 0);

	COMPONENT altpll
	GENERIC (
		bandwidth_type		: STRING;
		clk0_divide_by		: NATURAL;
		clk0_duty_cycle		: NATURAL;
		clk0_multiply_by		: NATURAL;
		clk0_phase_shift		: STRING;
		clk1_divide_by		: NATURAL;
		clk1_duty_cycle		: NATURAL;
		clk1_multiply_by		: NATURAL;
		clk1_phase_shift		: STRING;
		clk2_divide_by		: NATURAL;
		clk2_duty_cycle		: NATURAL;
		clk2_multiply_by		: NATURAL;
		clk2_phase_shift		: STRING;
		clk3_divide_by		: NATURAL;
		clk3_duty_cycle		: NATURAL;
		clk3_multiply_by		: NATURAL;
		clk3_phase_shift		: STRING;
		clk4_divide_by		: NATURAL;
		clk4_duty_cycle		: NATURAL;
		clk4_multiply_by		: NATURAL;
		clk4_phase_shift		: STRING;
		compensate_clock		: STRING;
		inclk0_input_frequency		: NATURAL;
		intended_device_family		: STRING;
		lpm_hint		: STRING;
		lpm_type		: STRING;
		operation_mode		: STRING;
		pll_type		: STRING;
		port_activeclock		: STRING;
		port_areset		: STRING;
		port_clkbad0		: STRING;
		port_clkbad1		: STRING;
		port_clkloss		: STRING;
		port_clkswitch		: STRING;
		port_configupdate		: STRING;
		port_fbin		: STRING;
		port_inclk0		: STRING;
		port_inclk1		: STRING;
		port_locked		: STRING;
		port_pfdena		: STRING;
		port_phasecounterselect		: STRING;
		port_phasedone		: STRING;
		port_phasestep		: STRING;
		port_phaseupdown		: STRING;
		port_pllena		: STRING;
		port_scanaclr		: STRING;
		port_scanclk		: STRING;
		port_scanclkena		: STRING;
		port_scandata		: STRING;
		port_scandataout		: STRING;
		port_scandone		: STRING;
		port_scanread		: STRING;
		port_scanwrite		: STRING;
		port_clk0		: STRING;
		port_clk1		: STRING;
		port_clk2		: STRING;
		port_clk3		: STRING;
		port_clk4		: STRING;
		port_clkena0		: STRING;
		port_clkena1		: STRING;
		port_clkena2		: STRING;
		port_clkena3		: STRING;
		port_clkena4		: STRING;
		port_extclk0		: STRING;
		port_extclk1		: STRING;
		port_extclk2		: STRING;
		port_extclk3		: STRING;
		width_clock		: NATURAL
	);
	PORT (
			areset : IN STD_LOGIC;
			clk	: OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
			inclk	: IN STD_LOGIC_VECTOR (1 DOWNTO 0)
	);
	END COMPONENT;

begin
	pll0 : altpll
	GENERIC MAP (
		bandwidth_type => "AUTO",
		compensate_clock => "CLK0",
		intended_device_family => "Cyclone III",
		lpm_hint => "CBX_MODULE_PREFIX=pll",
		lpm_type => "altpll",
		operation_mode => "NORMAL",
		pll_type => "AUTO",
		port_inclk0 => "PORT_USED",
		port_activeclock => "PORT_UNUSED",
		port_areset => "PORT_USED",
		port_clkbad0 => "PORT_UNUSED",
		port_clkbad1 => "PORT_UNUSED",
		port_clkloss => "PORT_UNUSED",
		port_clkswitch => "PORT_UNUSED",
		port_configupdate => "PORT_UNUSED",
		port_fbin => "PORT_UNUSED",
		port_inclk1 => "PORT_UNUSED",
		port_locked => "PORT_UNUSED",
		port_pfdena => "PORT_UNUSED",
		port_phasecounterselect => "PORT_UNUSED",
		port_phasedone => "PORT_UNUSED",
		port_phasestep => "PORT_UNUSED",
		port_phaseupdown => "PORT_UNUSED",
		port_pllena => "PORT_UNUSED",
		port_scanaclr => "PORT_UNUSED",
		port_scanclk => "PORT_UNUSED",
		port_scanclkena => "PORT_UNUSED",
		port_scandata => "PORT_UNUSED",
		port_scandataout => "PORT_UNUSED",
		port_scandone => "PORT_UNUSED",
		port_scanread => "PORT_UNUSED",
		port_scanwrite => "PORT_UNUSED",
		port_clkena0 => "PORT_UNUSED",
		port_clkena1 => "PORT_UNUSED",
		port_clkena2 => "PORT_UNUSED",
		port_clkena3 => "PORT_UNUSED",
		port_clkena4 => "PORT_UNUSED",
		port_extclk0 => "PORT_UNUSED",
		port_extclk1 => "PORT_UNUSED",
		port_extclk2 => "PORT_UNUSED",
		port_extclk3 => "PORT_UNUSED",
		inclk0_input_frequency => 20000,
		-- clk0 at 9 MHz 0° shifted
		port_clk0 => "PORT_USED",
		clk0_duty_cycle => 50,
		clk0_divide_by => 50,
		clk0_multiply_by => 9,
		clk0_phase_shift => "0",
		-- clk1 at 50 kHz 0° shifted
		port_clk1 => "PORT_USED",
		clk1_duty_cycle => 50,
		clk1_divide_by => 1000,
		clk1_multiply_by => 1,
		clk1_phase_shift => "0",
		-- clk2 at 100 kHz 180° shifted
		port_clk2 => "PORT_USED",
		clk2_duty_cycle => 50,
		clk2_divide_by => 500,
		clk2_multiply_by => 1,
		clk2_phase_shift => "5000000",
		port_clk3 => "PORT_UNUSED",
		clk3_duty_cycle => 50,
		clk3_divide_by => 1,
		clk3_multiply_by => 1,
		clk3_phase_shift => "0",
		port_clk4 => "PORT_UNUSED",
		clk4_duty_cycle => 50,
		clk4_divide_by => 1,
		clk4_multiply_by => 1,
		clk4_phase_shift => "0",
		width_clock => 5
	)
	PORT MAP (
		areset => not(reset),
		inclk => pll0_in,
		clk => pll0_out
	);
	clk_9M <= pll0_out(0);
	clk_50k <= pll0_out(1);
	clk_100k_180 <= pll0_out(2);
	pll0_in(0) <= clk_50M_i;


end rtl;
