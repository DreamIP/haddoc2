library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

-- MaxElement design file : returns the maximum value of a generic sized input array
--


entity maxElement is

    generic(
        PIXEL_SIZE      :   integer;
        KERNEL_SIZE     :   integer
    );

    port (
        clk	            :	in 	std_logic;
        reset_n	        :	in	std_logic;
        enable          :   in  std_logic;

        in_data         :   in  pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
        in_dv           :   in  std_logic;
        in_fv           :   in  std_logic;

        out_data        :   out std_logic_vector (PIXEL_SIZE - 1 downto 0);
        out_dv          :   out std_logic;
        out_fv          :   out std_logic
);
end entity;

architecture bhv of maxElement is
    -------------------------------------------
    -- SIGNALS
    -------------------------------------------
    type   pixel_array_signed is array ( integer range <> ) of signed ( PIXEL_SIZE-1 downto 0 );
    signal	unsigned_data	:	pixel_array_unsigned (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
    signal s_max           :   std_logic_vector(PIXEL_SIZE-1 downto 0);




    -- Cast data as signed
    begin
    CAST : for i in 0 to (KERNEL_SIZE - 1) generate
        unsigned_data(i)      <=  signed(in_data(i));
    end generate;


    -- Compute Max of neighborhood
    process(clk)
        variable v_max  : signed (PIXEL_SIZE - 1 downto 0);
        begin

            if (reset_n ='0') then
                v_max  := (others=>'0');
                s_max  <= (others=>'0');

            elsif (RISING_EDGE(clk)) then

                if (enable='1') then
                    if(in_fv  = '1') then
                        if(in_dv  = '1') then
                                -- compute MAX
                                v_max := signed_data(0);
                                MAX_LOOP : for i in 0 to (KERNEL_SIZE * KERNEL_SIZE - 1) loop
                                    if (signed_data(i) > v_max) then
                                        v_max := signed_data(i);
                                    end if;
                                end loop;
                                s_max <= std_logic_vector(v_max);
                                v_max := (others=>'0');

                        end if;
                    end if;
                end if;
            end if;


    end process;

    out_data <= s_max;
    out_dv   <= in_dv;
    out_fv   <= in_fv;


end bhv;
