---------------------------------------------------------------------------------
-- Design Name 	: neighExtractor
-- File Name   	: neighExtractor.vhd
-- Function    	: Extracts a generic neighborhood from serial in_data
-- Coder       	: Kamel Eddine ABDELOUAHAB
-- Institution 	: Institut Pascal
---------------------------------------------------------------------------------

--                          ------------------
--          reset_n    --->|                  |
--          clk        --->|                  |
--          enable     --->|                  |
--          			   |                  |---> out_data (pixel_array of size KERNEL_SIZE²)
--          			   |        NE        |---> out_dv
--          			   |                  |---> out_fv
--          in_data    --->|                  |---> out_valid
--          in_dv      --->|                  |
--          in_fv      --->|				  |
--          			   |				  |
--							------------------

--                        out_data(0)      out_data(1)      out_data(2)
--                           ^                 ^                 ^
--                           |                 |                 |
--               -------     |     -------     |     -------     |    ---------------------------
--              |        |   |    |        |   |    |        |   |   |                           |
--  in_data --->|        |---|--> |        |---|--> |        |---|-->|          BUFFER           |---> to_P1
--              |        |        |        |        |        |       |                           |
--               -------           -------           -------          ---------------------------
--                        out_data(3)      out_data(4)      out_data(5)
--                           ^                 ^                 ^
--                           |                 |                 |
--               -------     |     -------     |     -------     |    ---------------------------
--              |        |   |    |        |   |    |        |   |   |                           |
--  P1      --->|        |---|--> |        |---|--> |        |---|-->|          BUFFER           |---> to_P2
--              |        |        |        |        |        |       |                           |
--               -------           -------           -------          ---------------------------
--                        out_data(6)      out_data(7)      out_data(8)
--                           ^                 ^                 ^
--                           |                 |                 |
--               -------     |     -------     |     -------     |    ---------------------------
--              |        |   |    |        |   |    |        |   |   |                           |
--  P2      --->|        |---|--> |        |---|--> |        |---|-->|          BUFFER           |---> OPEN
--              |        |        |        |        |        |       |                           |
--               -------           -------           -------          ---------------------------

library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

entity neighExtractor is

    generic(
		PIXEL_SIZE      :   integer;
		IMAGE_WIDTH     :   integer;
		KERNEL_SIZE     :   integer
	);

    port(
		clk	            :	in 	std_logic;
        reset_n	        :	in	std_logic;
        enable	        :	in	std_logic;

        in_data         :	in 	std_logic_vector((PIXEL_SIZE-1) downto 0);
        in_dv	        :	in	std_logic;
        in_fv	        :	in	std_logic;

        out_data        :	out	pixel_array (0 to (KERNEL_SIZE * KERNEL_SIZE)- 1);
        out_dv			:	out std_logic;
        out_fv			:	out std_logic
    );
end neighExtractor;

architecture rtl of neighExtractor is

    -- signals
    signal pixel_out    :   pixel_array(0 to KERNEL_SIZE-1);

    -- components
    component taps
    generic (
        PIXEL_SIZE		:	integer;
		TAPS_WIDTH		:	integer;
		KERNEL_SIZE		:	integer
	);

	port (
		clk				:	in	std_logic;
		reset_n			:	in	std_logic;
		enable			:	in	std_logic;
		in_data			:	in	std_logic_vector (PIXEL_SIZE-1 downto 0);
		taps_data		:	out	pixel_array (0 to KERNEL_SIZE -1 );
		out_data		:	out	std_logic_vector (PIXEL_SIZE-1 downto 0)
	);
    end component;


	component bit_taps
	generic (
		TAPS_WIDTH		:	integer
	);

	port (
		clk             :   in  std_logic;
		reset_n         :   in  std_logic;
		enable	        :	in	std_logic;
		in_data			:	in	std_logic;
		out_data		:	out	std_logic
		);
	end component;

	signal all_valid    :  std_logic;
	signal s_valid    :  std_logic;
	signal tmp_dv    	:  std_logic;
	signal tmp_fv    	:  std_logic;

    begin

    -- All valid : Logic and
    all_valid    <=    in_dv and in_fv;
    s_valid      <=    all_valid and enable;
    ----------------------------------------------------
    -- SUPER FOR GENERATE : GO
    ----------------------------------------------------


        taps_inst	:	for i in 0 to KERNEL_SIZE-1 generate
            -- First line
            gen_1 : if i=0 generate
                gen1_inst : taps
                generic map(
                    PIXEL_SIZE  => PIXEL_SIZE,
                    TAPS_WIDTH  => IMAGE_WIDTH - 1,
                    KERNEL_SIZE => KERNEL_SIZE
                )
                port map(
                    clk			=> clk,
                    reset_n		=> reset_n,
                    enable		=> s_valid,
                    in_data		=> in_data,
                    taps_data	=> out_data(0 to KERNEL_SIZE-1),
                    out_data	=> pixel_out(0)
                );
            end generate gen_1;

            -- line i
            gen_i : if i>0 and i<KERNEL_SIZE-1 generate
                geni_inst : taps
                generic map(
                    PIXEL_SIZE   => PIXEL_SIZE,
                    TAPS_WIDTH   => IMAGE_WIDTH - 1,
                    KERNEL_SIZE  => KERNEL_SIZE
                )
                port map(
                    clk			 => clk,
                    reset_n		 => reset_n,
                    enable	 	 => s_valid,
                    in_data		 => pixel_out(i-1),
                    taps_data	 => out_data(i * KERNEL_SIZE to KERNEL_SIZE*(i+1)-1),
                    out_data	 => pixel_out(i)
                );
            end generate gen_i;

            -- Last line
            gen_last : if i= (KERNEL_SIZE-1) generate
                gen_last_inst : taps
                generic map(
                    PIXEL_SIZE  => PIXEL_SIZE,
                    TAPS_WIDTH  => IMAGE_WIDTH - 1,
                    KERNEL_SIZE => KERNEL_SIZE
                )
                port map(
                    clk			=> clk,
                    reset_n		=> reset_n,
                    enable		=> s_valid,
                    in_data		=> pixel_out(i-1),
                    taps_data	=> out_data((KERNEL_SIZE-1) * KERNEL_SIZE to KERNEL_SIZE*KERNEL_SIZE - 1),
                    out_data	=> OPEN
                );
            end generate gen_last;
        end generate taps_inst;


    --------------------------------------------------------------------------
    -- Manage out_dv and out_fv
    --------------------------------------------------------------------------

    -- Delay untill all the taps latches are written on 
    dv_proc : process(clk)
    -- 10 bits is enought to bufferize 1024 Pixels
    variable cmp : unsigned (9 downto 0) :=(others => '0');
    begin
        if (reset_n = '0') then
            cmp := (others => '0');
            tmp_dv <='0';
        elsif (rising_edge(clk)) then
            if(s_valid = '1') then
                if (cmp > to_unsigned(IMAGE_WIDTH,10)) then
                    tmp_dv <= '1';
                else
                    cmp := cmp + "0000000001";
                    tmp_dv <= '0';
                end if;
            end if;
        end if;
    end process;

    fv_proc : process(clk)
    variable cmp : unsigned (9 downto 0) :=(others => '0');
    begin
        if (reset_n = '0') then
            cmp := (others => '0');
            tmp_fv <='0';
        elsif (rising_edge(clk)) then
            if(s_valid = '1') then
                if (cmp > to_unsigned(IMAGE_WIDTH,10)) then
                    tmp_fv <= '1';
                else
                    cmp := cmp + "0000000001";
                    tmp_fv <= '0';
                end if;
            end if;
        end if;
    end process;

    -- dv_buff : bit_taps
	-- generic map(
		-- TAPS_WIDTH => (KERNEL_SIZE-1) * IMAGE_WIDTH + KERNEL_SIZE
	-- )
	-- port map (
		-- clk        => clk,
		-- reset_n    => reset_n,
		-- enable	   => s_valid,
		-- in_data	   => in_dv,
		-- out_data   => tmp_dv
	-- );
	   ------------------------------------------------------------------------
	-- fv_buff : bit_taps
	-- generic map(
		-- TAPS_WIDTH 	=> (KERNEL_SIZE-1) * IMAGE_WIDTH + KERNEL_SIZE
	-- )
	-- port map (
		-- clk        	=> clk,
		-- reset_n    	=> reset_n,
		-- enable	   	=> s_valid,
		-- in_data	   	=> in_fv,
		-- out_data   	=> tmp_fv
	-- );

    out_dv <= tmp_dv and in_dv;
    out_fv <= tmp_fv and in_fv;

end architecture;
