library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

entity PoolLayer1_tb is
end entity;

architecture tb of PoolLayer1_tb is

    ---------------------------------------------------------
    --	SIGNALS
    ---------------------------------------------------------
    signal  s_clk	     :	std_logic;
    signal  s_reset_n	 :	std_logic;
    signal  s_enable     :	std_logic;
    signal  s_in_data 	 :	std_logic_vector(7 downto 0);
    signal  s_out_data   :	std_logic_vector(7 downto 0);

    ---------------------------------------------------------
    --	C.U.T
    ---------------------------------------------------------
    component PoolLayer1 is
        generic(
            PIXEL_SIZE    :   integer;
            IMAGE_WIDTH   :   integer;
            NEIGH_SIZE    :   integer
        );
        port (
            clk	          :   in 	std_logic;
            reset_n	      :   in	std_logic;
            enable        :   in	std_logic;
            in_data 	  :   in 	std_logic_vector((PIXEL_SIZE-1) downto 0);
            out_data      :   out	std_logic_vector((PIXEL_SIZE-1) downto 0)
        );
    end component;


    begin
        ---------------------------------------------------------
        --	C.U.T INSTANSTATION
        ---------------------------------------------------------
        cut : PoolLayer1
        generic map(
            PIXEL_SIZE  => 8,
            IMAGE_WIDTH => 6,
            NEIGH_SIZE  => 2
        )

        port map(
            clk	          => s_clk,
            reset_n	      => s_reset_n,
            enable        => s_enable,
            in_data 	  => s_in_data,
            out_data      => s_out_data
        );

        ---------------------------------------------------------
        --	STIMULUS
        ---------------------------------------------------------
        -- Clock & Enable
        s_enable 	<=	'1' ;
        clk_stim : process
        begin
            s_clk <= '1';
            wait for 25 ns;
            s_clk <= '0';
            wait for 25 ns;
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
            wait for 50 ns;
            for i in 1 to 100 loop
                s_in_data <= std_logic_vector(to_unsigned(i,8));
                wait for 50 ns;
            end loop;
        end process;

end architecture;
