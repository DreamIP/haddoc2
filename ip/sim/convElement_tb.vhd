library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

entity convElement_tb is
end entity;

architecture tb of convElement_tb is


    ---------------------------------------------------------
	--	SIGNALS
	---------------------------------------------------------
    signal s_clk       : std_logic;
    signal s_reset_n   : std_logic;
    signal s_enable    : std_logic;

    signal s_data_in   : pixel_array (0 to 8);
    signal s_kernel_in : pixel_array (0 to 8);

    signal s_norm_in   : std_logic_vector(PIXEL_SIZE-1 downto 0);
    signal s_data_out  : std_logic_vector(PIXEL_SIZE-1 downto 0);

    ---------------------------------------------------------
	--	C.U.T
	---------------------------------------------------------
    component convElement
        generic(
            KERNEL_SIZE :    integer;
            PIXEL_SIZE  :    integer
            );

            port(
            clk         :   in  std_logic;
            reset_n     :   in  std_logic;
            enable      :   in  std_logic;

            data_in     :   in  pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
            kernel_in   :   in  pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
            norm_in     :   in  std_logic_vector(PIXEL_SIZE-1 downto 0);
            data_out    :   out std_logic_vector(PIXEL_SIZE-1 downto 0)
            );
    end component;


begin
    --------------------------------------------------------
	--	C.U.T INSTANSTATION
	---------------------------------------------------------
    cut : convElement

    generic map(
        KERNEL_SIZE => 3,
        PIXEL_SIZE  => PIXEL_SIZE
    )

    port map(
        clk         =>  s_clk,
        reset_n     =>  s_reset_n,
        enable      =>  s_enable,
        data_in     =>  s_data_in,
        kernel_in   =>  s_kernel_in,
        norm_in     =>  s_norm_in,
        data_out    =>  s_data_out
    );

    ---------------------------------------------------------
    --	STIMULUS
    ---------------------------------------------------------
    -- Clock
    s_enable 	<=	'1' ;
    s_norm_in   <=  "00000011";
    clk_stim : process
        begin
            s_clk <= '1';
            wait for 20 ns;
            s_clk <= '0';
            wait for 20 ns;
    end process;

    -- Reset
    init_reset : process
        begin
            s_reset_n 	<=	'0' ;
            wait for 50 ns ;
            s_reset_n 	<=	'1' ;
            wait for 1000 ns;
    end process;

    -- In data stimulus
    data_stim : process
    variable i	:	integer	:= 0;
    begin
        for i in 0 to 8 loop
            s_data_in(i) <= std_logic_vector(to_unsigned(i,PIXEL_SIZE));
            wait for 40 ns;
        end loop;
    end process;

    kernel_stim : process
    variable i	:	integer	:= 0;
    begin
        for i in 0 to 8 loop
            s_kernel_in(i) <= std_logic_vector(to_unsigned(1,PIXEL_SIZE));
            wait for 40 ns;
        end loop;
    end process;


end architecture;
