library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

entity FirstLayer_tb is
end entity;

architecture tb of FirstLayer_tb is

    ---------------------------------------------------------
    --	SIGNALS
    ---------------------------------------------------------
    signal  s_clk	     :	std_logic;
    signal  s_reset_n	 :	std_logic;
    signal  s_enable     :	std_logic;
    signal  s_in_data 	 :	std_logic_vector(7 downto 0);
    signal  s_w_11 	     :	pixel_array (0 to 8);
    signal  s_w_12 	     :	pixel_array (0 to 8);
    signal  s_w_13 	     :	pixel_array (0 to 8);
    signal  s_n_11 	     :	std_logic_vector(7 downto 0);
    signal  s_n_12 	     :	std_logic_vector(7 downto 0);
    signal  s_n_13 	     :	std_logic_vector(7 downto 0);
    signal  s_out_data   :	std_logic_vector(7 downto 0);

    ---------------------------------------------------------
    --	C.U.T
    ---------------------------------------------------------
    component FirstLayer
      generic(
          PIXEL_SIZE    :   integer;
          IMAGE_WIDTH   :   integer;
          KERNEL_SIZE   :   integer
    );

      port(
          clk	        :	in 	std_logic;
          reset_n	    :	in	std_logic;
          enable        :	in	std_logic;
          in_data 	    :	in 	std_logic_vector((PIXEL_SIZE-1) downto 0);
          w_11 	      	:	in 	pixel_array (0 to (KERNEL_SIZE * KERNEL_SIZE)- 1);
          w_12 	      	:	in 	pixel_array (0 to (KERNEL_SIZE * KERNEL_SIZE)- 1);
          w_13 	      	:	in 	pixel_array (0 to (KERNEL_SIZE * KERNEL_SIZE)- 1);
          n_11 	      	:	in std_logic_vector((PIXEL_SIZE-1) downto 0);
          n_12 	      	:	in std_logic_vector((PIXEL_SIZE-1) downto 0);
          n_13 	      	:	in std_logic_vector((PIXEL_SIZE-1) downto 0);
          out_data      :	out std_logic_vector (PIXEL_SIZE - 1 downto 0)
      );
    end component;

    --------------------------------------------------------------------------------
    -- BEGIN TEST BENCH
    --------------------------------------------------------------------------------

    begin
        ---------------------------------------------------------
        --	C.U.T INSTANSTATION
        ---------------------------------------------------------
        cut : FirstLayer
        generic map(
            PIXEL_SIZE    => 8,
            IMAGE_WIDTH   => 5,
            KERNEL_SIZE   => 3
        )
        port map(
            clk	          =>  s_clk,
            reset_n	      =>  s_reset_n,
            enable        =>  s_enable,
            in_data 	  =>  s_in_data,
            w_11 	      =>  s_w_11,
            w_12 	      =>  s_w_12,
            w_13 	      =>  s_w_13,
            n_11 	      =>  s_n_11,
            n_12 	      =>  s_n_12,
            n_13 	      =>  s_n_13,
            out_data      =>  s_out_data
        );

        ---------------------------------------------------------
        --	STIMULUS
        ---------------------------------------------------------
        -- Clock & Enable
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
            for i in 1 to 100 loop
                s_in_data <= std_logic_vector(to_unsigned(i,8));
                wait for 40 ns;
            end loop;
        end process;


        -- VALUES : BLUR EVERYWHERE --------------------------------
        -- Kernel 1
        s_w_11(0) <= std_logic_vector(to_unsigned(1,8));
        s_w_11(1) <= std_logic_vector(to_unsigned(1,8));
        s_w_11(2) <= std_logic_vector(to_unsigned(1,8));
        s_w_11(3) <= std_logic_vector(to_unsigned(1,8));
        s_w_11(4) <= std_logic_vector(to_unsigned(1,8));
        s_w_11(5) <= std_logic_vector(to_unsigned(1,8));
        s_w_11(6) <= std_logic_vector(to_unsigned(1,8));
        s_w_11(7) <= std_logic_vector(to_unsigned(1,8));
        s_w_11(8) <= std_logic_vector(to_unsigned(1,8));

        -- Kernel 2
        s_w_12(0) <= std_logic_vector(to_unsigned(1,8));
        s_w_12(1) <= std_logic_vector(to_unsigned(1,8));
        s_w_12(2) <= std_logic_vector(to_unsigned(1,8));
        s_w_12(3) <= std_logic_vector(to_unsigned(1,8));
        s_w_12(4) <= std_logic_vector(to_unsigned(1,8));
        s_w_12(5) <= std_logic_vector(to_unsigned(1,8));
        s_w_12(6) <= std_logic_vector(to_unsigned(1,8));
        s_w_12(7) <= std_logic_vector(to_unsigned(1,8));
        s_w_12(8) <= std_logic_vector(to_unsigned(1,8));

        -- Kernel 3
        s_w_13(0) <= std_logic_vector(to_unsigned(1,8));
        s_w_13(1) <= std_logic_vector(to_unsigned(1,8));
        s_w_13(2) <= std_logic_vector(to_unsigned(1,8));
        s_w_13(3) <= std_logic_vector(to_unsigned(1,8));
        s_w_13(4) <= std_logic_vector(to_unsigned(1,8));
        s_w_13(5) <= std_logic_vector(to_unsigned(1,8));
        s_w_13(6) <= std_logic_vector(to_unsigned(1,8));
        s_w_13(7) <= std_logic_vector(to_unsigned(1,8));
        s_w_13(8) <= std_logic_vector(to_unsigned(1,8));

        -- NORMS : devide by 9 = shift
        s_n_11    <= std_logic_vector(to_unsigned(3,8));
        s_n_12    <= std_logic_vector(to_unsigned(3,8));
        s_n_13    <= std_logic_vector(to_unsigned(3,8));

    end architecture;
