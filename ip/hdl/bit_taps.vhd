library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;


entity bit_taps  is
	generic (
	   TAPS_WIDTH	:	integer
	);

	port (
	   clk          :   in  std_logic;
       reset_n      :   in  std_logic;
       enable	    :	in	std_logic;
       in_data		:   in	std_logic;
       out_data		:	out	std_logic
	);
	end bit_taps;

	architecture bhv of bit_taps is

	signal cell	:	std_logic_vector (0 to TAPS_WIDTH-1);

	begin
	process(clk)
	variable i		:	integer := 0;
		begin

		if ( reset_n = '0' )	then
			cell        <= (others => '0');
			out_data	<=	'0';

		elsif	(rising_edge(clk))	then
			if	(enable='1') then
				cell(0) 	<= 	in_data;

				for i in 1 to  (TAPS_WIDTH-1) loop
					cell(i)	<=	cell(i-1);
				end loop;

				out_data	<=	cell(TAPS_WIDTH - 1);

			end if;
		end if;
end process;
end bhv;
