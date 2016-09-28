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

        in_data     :   in  pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
        in_kernel   :   in  pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
        in_norm     :   in  std_logic_vector(PIXEL_SIZE-1 downto 0);

        out_data    :   out std_logic_vector(PIXEL_SIZE-1 downto 0)
    );
end convElement;

architecture bhv of convElement is

    -- Signals
    type	pixel_array_s1 is array (0 to KERNEL_SIZE * KERNEL_SIZE - 1) of signed (PIXEL_SIZE downto 0);
	type	pixel_array_s2 is array (0 to KERNEL_SIZE * KERNEL_SIZE - 1) of signed (PIXEL_SIZE + PIXEL_SIZE +1 downto 0);
	signal	data_s	    :	pixel_array_s1 ;
	signal	kernel_s	:	pixel_array_s1 ;
	signal	sums		:	signed (PIXEL_SIZE + PIXEL_SIZE +1 downto 0);
	signal	norm_s		:	integer range 0 to PIXEL_SIZE-1;
	signal 	res    		:	signed (PIXEL_SIZE + PIXEL_SIZE + 1  downto 0);

    begin
        SIGNED_CAST     :   for i in 0 to ( KERNEL_SIZE * KERNEL_SIZE - 1 ) generate
            data_s(i)      <=  signed(in_data(i)(in_data(i)'LEFT) & (in_data(i)));
            kernel_s(i)    <=  signed(in_kernel(i)(in_kernel(i)'LEFT) & (in_kernel(i)));
        end generate;

    process(clk)
        -- Variables

        variable mul    :   pixel_array_s2;
        variable sum    :   signed (PIXEL_SIZE + PIXEL_SIZE + 1 downto 0):= (others=>'0');

        begin

            if (reset_n ='0') then
                sum := (others=>'0');
            elsif (RISING_EDGE(clk)) then
                if (enable='1') then

                    Product : for i in 0 to (KERNEL_SIZE * KERNEL_SIZE-1) loop
                        mul(i) := data_s(i) * kernel_s(i);
                    end loop;
                    
                    sum     := (others=>'0');
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

    norm_s  <=  to_integer (unsigned(in_norm));
    res     <=  SHIFT_RIGHT (sums,norm_s);
    out_data <= std_logic_vector (res(PIXEL_SIZE -1  downto 0));

end bhv;
