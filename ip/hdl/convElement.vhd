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
        clk         :   in  std_logic;
        reset_n     :   in  std_logic;
        enable      :   in  std_logic;

        data_in     :   in  pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
        kernel_in   :   in  pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
        norm_in     :   in  std_logic_vector(PIXEL_SIZE-1 downto 0);
        data_out    :   out std_logic_vector(PIXEL_SIZE-1 downto 0)
    );
end convElement;

architecture bhv of convElement is

    -- Signals
    type	pixel_array_1 is array (0 to KERNEL_SIZE * KERNEL_SIZE - 1) of signed (PIXEL_SIZE downto 0);
	type	pixel_array_2 is array (0 to KERNEL_SIZE * KERNEL_SIZE - 1) of signed (PIXEL_SIZE + PIXEL_SIZE +1 downto 0);
	signal	data_s	    :	pixel_array_1 ;
	signal	kernel_s	:	pixel_array_1 ;
	signal	sums		:	signed (PIXEL_SIZE + PIXEL_SIZE +1 downto 0);
	signal	norm_s		:	integer range 0 to PIXEL_SIZE-1;
	signal 	res    		:	signed (PIXEL_SIZE + PIXEL_SIZE + 1  downto 0);

    begin
        SIGNED_CAST     :   for i in 0 to ( KERNEL_SIZE * KERNEL_SIZE - 1 ) generate
            data_s(i)      <=  signed(data_s(i)(data_s(i)'LEFT') & (data_in(i)));
            kernel_s(i)    <=  signed(kernel_in(i)(kernel_in(i)'LEFT) & (kernel_in(i)));
    end generate;

    process(clk)
        -- Variables

        variable mul    :   pixel_array_2;
        variable sum    :   signed (PIXEL_SIZE + PIXEL_SIZE + 1 downto 0):= (others=>'0');

        begin

            if (reset_n ='0') then
                sum := (others=>'0');
            elsif (RISING_EDGE(clk)) then
                if (enable='1') then

                    Product : for i in 0 to (KERNEL_SIZE * KERNEL_SIZE-1) loop
                        mul(i) := data_s(i) * kernel_s(i);
                    end loop;

                    Summation : for i in 0 to (KERNEL_SIZE * KERNEL_SIZE-1) loop
                        sum := sum + mul(i);
                    end loop;

                    -- ReLu : Activation function must be applied AFTER summing all the convolutions of the neuron
                    -- if (sum(sum'left) = '1')	then
    				--     sum := (others => '0');
    				-- end if;
                    sums	<=	sum;
                    end if;
            end if;
    end process;

    norm_s  <=  to_integer (unsigned(norm_in));
    res     <=  sums SRA norm_s;
    data_out <= std_logic_vector (res(PIXEL_SIZE -1  downto 0));

end bhv;
