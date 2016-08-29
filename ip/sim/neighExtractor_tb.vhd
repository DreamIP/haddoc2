library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

entity neighExtractor_tb is
end entity;

architecture tb of neighExtractor_tb is

    ---------------------------------------------------------
	--	SIGNALS
	---------------------------------------------------------
    signal s_in_data  : std_logic_vector((PIXEL_SIZE-1) downto 0);
    signal s_clk      : std_logic;
    signal s_reset_n  : std_logic;
    signal s_enable   : std_logic;
    signal s_out_data : pixel_array (0 to 8);

    ---------------------------------------------------------
	--	C.U.T
	---------------------------------------------------------
    component neighExtractor
    generic(
        PIXEL_SIZE			:	integer;
        IMAGE_WIDTH   	    :	integer;
        NEIGH_SIZE	      	:	integer
    );

    port(
        in_data 	      	:	in 	std_logic_vector((PIXEL_SIZE-1) downto 0);
        clk	      	        :	in 	std_logic;
        reset_n		      	:	in	std_logic;
        enable  	      	:	in	std_logic;
        out_data	      	:	out	pixel_array (0 to (NEIGH_SIZE * NEIGH_SIZE)- 1)
    );

    end component;

    begin
        ---------------------------------------------------------
		--	C.U.T INSTANSTATION
		---------------------------------------------------------
        cut : neighExtractor
        generic map(
            PIXEL_SIZE      => PIXEL_SIZE,
            IMAGE_WIDTH     => 5,
            NEIGH_SIZE      => 3
        )

        port map(
            in_data     => s_in_data,
            clk         => s_clk,
            reset_n     => s_reset_n,
            enable      => s_enable,
            out_data    => s_out_data
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
			for i in 1 to 100 loop
				s_in_data <= std_logic_vector(to_unsigned(i,PIXEL_SIZE));
				wait for 40 ns;
			end loop;
		end process;

        -- Enable
        -- enable_stim : process
		--	begin
		--		s_enable 	<=	'0' ;
		--		wait for 50 ns ;
		--		s_enable 	<=	'1' ;
		--		wait for 150 ns;
		--end process;

    end architecture;
