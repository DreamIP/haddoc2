library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

entity sumElement_tb is
end entity;

architecture tb of sumElement_tb is

    ---------------------------------------------------------
    --	C.U.T
    ---------------------------------------------------------
    component sumElement is

        generic(
            PIXEL_SIZE      :   integer;
            NB_CONVED       :   integer
        );

        port(
            in_data         :   pixel_array (0 to NB_CONVED - 1);
            clk	            :	in 	std_logic;
            reset_n	        :	in	std_logic;
            enable          :	in	std_logic;
            out_data        :   out std_logic_vector (PIXEL_SIZE - 1 downto 0)
        );
    end component;

    ---------------------------------------------------------
	--	SIGNALS
	---------------------------------------------------------
    signal s_clk       : std_logic;
    signal s_reset_n   : std_logic;
    signal s_enable    : std_logic;

    signal s_data_in   : pixel_array (0 to 4);
    signal s_data_out  : std_logic_vector (7 downto 0);

    begin
    --------------------------------------------------------
    --	C.U.T INSTANSTATION
    ---------------------------------------------------------
        cut : sumElement
        generic map(
            PIXEL_SIZE  => 8,
            NB_CONVED   => 5
        )

        port map(
            in_data     =>   s_data_in,
            clk	        =>   s_clk,
            reset_n	    =>   s_reset_n,
            enable      =>   s_enable,
            out_data    =>   s_data_out
        );


        ---------------------------------------------------------
        --	STIMULUS
        ---------------------------------------------------------
        -- Clock
        s_enable 	<=	'1' ;
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
            for i in 0 to 4 loop

                -- s_data_in(i) <= std_logic_vector(to_signed(i,PIXEL_SIZE));
                -- wait for 40 ns;

                s_data_in(i) <= std_logic_vector(to_signed(5,PIXEL_SIZE));
                wait for 40 ns;
                --
                -- s_data_in(i) <= std_logic_vector(to_signed(-2,PIXEL_SIZE));
                -- wait for 40 ns;

            end loop;
        end process;




end architecture;
