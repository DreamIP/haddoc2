---------------------------------------------------------------------------------
-- Design Name 	: neighExtractor
-- File Name   	: neighExtractor.vhd
-- Function    	: Extracts a generic neighborhood from serial in_data
-- Coder       	: Kamel Eddine ABDELOUAHAB
-- Institution 	: Institut Pascal
---------------------------------------------------------------------------------

--                        taps_data(0)                            taps_data(KERNEL_SIZE-1)
--                           ^                                       ^
--                           |                                       |
--               -------     |     -------               -------     |    ---------------------------
--              |        |   |    |        |            |        |   |   |                           |
--  in_data --->|        |---|--> |        |--  ...  -> |        |---|-->|          BUFFER           |---> out_data
--              |        |        |        |            |        |       |  SIZE =(TAPS_WIDTH-KERNEL)|
--              |        |        |        |            |        |       |                           |
--               -------           -------               -------          ---------------------------

library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;


entity taps  is
	generic (
        PIXEL_SIZE		:	integer;
		TAPS_WIDTH		:	integer;
		KERNEL_SIZE		:	integer
	);

	port (
		clk				:	in	std_logic;
		reset_n			:	in	std_logic;
		enable		    :	in	std_logic;
		in_data			:	in	std_logic_vector (PIXEL_SIZE-1 downto 0);
		taps_data		:	out	pixel_array (0 to KERNEL_SIZE -1 );
		out_data		:	out	std_logic_vector (PIXEL_SIZE-1 downto 0)
	);
end taps;


architecture bhv of taps is

	signal cell		:	pixel_array (0 to TAPS_WIDTH-1);

	begin

	process(clk)
		variable i		:	integer := 0;
		begin

			if ( reset_n = '0' )	then
				cell 		<=  (others =>(others => '0'));
				out_data	<=	(others => '0');
				taps_data	<=	(others =>(others => '0'));

			elsif (rising_edge(clk)) then

				if (enable='1') then
                    taps_data <= cell(0 to KERNEL_SIZE-1);
					cell(0)	<=	in_data;
					for i in 1 to (TAPS_WIDTH-1) loop
						cell(i) <= cell(i-1);
					end loop;
				out_data <= cell(TAPS_WIDTH-1);
				end if;
			end if;
	end process;
end bhv;
