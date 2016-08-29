---------------------------------------------------------------------------------
-- Design Name 	: neighExtractor
-- File Name   	: neighExtractor.vhd
-- Function    	: Extracts a generic neighborhood from serial in_data
-- Coder       	: Kamel Eddine ABDELOUAHAB
-- Institution 	: Institut Pascal
---------------------------------------------------------------------------------

--                          ------------------
--                         |                  |
--          in_data    --->|                  | ---> out_data
--          enable     --->|        NE        |(pixel_array of size NEIGH_SIZE)
--          reset_n    --->|                  |
--          clk        --->|                  |
--                          ------------------


library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.conv_types.all;

entity neighExtractor is

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
        neigh		      	:	out	pix_array (0 to (NEIGH_SIZE * NEIGH_SIZE)- 1)
    );
end neighExtractor;

architecture rtl of neighExtractor is

    -- signals
    signal pixel_out        :   pixel_array(0 to NEIGH_SIZE-1);
    signal pixel_out        :   pixel_array(0 to NEIGH_SIZE-1);

    -- components
    component taps
    generic (
        PIXEL_SIZE		:	integer;
		TAPS_WIDTH		:	integer;
		NEIGH_SIZE		:	integer
	);

	port (
		clk				:	in	std_logic;
		reset_n			:	in	std_logic;
		enable			:	in	std_logic;
		in_data			:	in	std_logic_vector (PIXEL_SIZE-1 downto 0);
		taps_data		:	out	pixel_array (0 to NEIGH_SIZE -1 );
		out_data		:	out	std_logic_vector (PIXEL_SIZE-1 downto 0)
	);
    end component;

    begin
    ----------------------------------------------------
    -- SUPER FOR GENERATE : GO
    ----------------------------------------------------
        taps_inst	:	for i in 0 to NEIGH_SIZE-1 generate
            -- First line
            gen_1 : if i=0 generate
                gen1_inst : taps
                generic map(
                    PIXEL_SIZE  => PIXEL_SIZE,
                    TAPS_WIDTH  => IMAGE_WIDTH,
                    NEIGH_SIZE  => NEIGH_SIZE
                )
                port map(
                    clk			=> clk,
                    reset_n		=> reset_n,
                    enable		=> enable,
                    in_data		=> in_data,
                    taps_data	=> out_data(0 to NEIGH_SIZE-1),
                    out_data	=> pix_out(0)
                );
            end generate gen_1;

            -- line i
            gen_i : if i>0 and i<NEIGH_SIZE-1 generate
                geni_inst : taps
                generic map(
                    PIXEL_SIZE  => PIXEL_SIZE,
                    TAPS_WIDTH  => IMAGE_WIDTH,
                    NEIGH_SIZE  => NEIGH_SIZE
                )
                port map(
                    clk			=> clk,
                    reset_n		=> reset_n,
                    enable		=> enable,
                    in_data		=> in_data,
                    taps_data	=> out_data(i * NEIGH_SIZE to NEIGH_SIZE*(i+1)-1),
                    out_data	=> pix_out(i)
                );
            end generate gen_i;

            -- Last line
            gen_last : if i=0 generate
                gen_last_inst : taps
                generic map(
                    PIXEL_SIZE  => PIXEL_SIZE,
                    TAPS_WIDTH  => IMAGE_WIDTH,
                    NEIGH_SIZE  => NEIGH_SIZE
                )
                port map(
                    clk			=> clk,
                    reset_n		=> reset_n,
                    enable		=> enable,
                    in_data		=> in_data,
                    taps_data	=> out_data((NEIGH_SIZE-1) * NEIGH_SIZE to NEIGH_SIZE*NEIGH_SIZE),
                    out_data	=> OPEN
                );
            end generate gen_last;
        end generate taps_inst;
end architecture;
