library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

entity convElement is

    generic(
        KERNEL_SIZE :    integer;
        PIXEL_SIZE  :    integer
    );

    port(
        clk         :   in std_logic;
        reset_n     :   in std_logic;
        enable      :   in std_logic;

        data_in     :   in pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
        kernel_in   :   in pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
        norm_in     :   in std_logic_vector(PIXEL_SIZE-1 downto 0);
        data_out    :   in std_logic_vector(PIXEL_SIZE-1 downto 0)
    );
end convElement;

architecture bhv of convElement is

    -- Signals
    type	pixel_array_1 is array (0 to NEIGH_SIZE * NEIGH_SIZE - 1) of signed (PIXEL_SIZE downto 0);
	type	pixel_array_2 is array (0 to NEIGH_SIZE * NEIGH_SIZE - 1) of signed (PIXEL_SIZE + PIXEL_SIZE +1 downto 0);
	signal	data_s	    :	pixel_array_1 ;
	signal	kernel_s	:	pixel_array_1 ;
	signal	sums		:	signed (PIXEL_SIZE + PIXEL_SIZE +1 downto 0);
	signal	norm_s		:	integer range 0 to PIXEL_SIZE-1;
	signal 	res    		:	signed (PIXEL_SIZE + PIXEL_SIZE + 1  downto 0);

    begin
        SIGNED_CAST     :   for i in 0 to ( NEIGH_SIZE * NEIGH_SIZE - 1 ) generate
            data_s      <=  signed('0' & data_in(i));
            kernel_s    <=  signed(kernel_in(i)(kernel_in(i)'LEFT) & kernel_in(i));
    end generate;

    process(clk)
        -- Variables

        variable mul    :   pixel_array_2;
        variable sum    :   signed (PIXEL_SIZE + PIXEL_SIZE + 1 downto 0):= (others=>'0');

        begin





end bhv;
