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
        NB_IN_FLOWS     :   integer
    );

    port (
        in_data         :   pixel_array (0 to NB_IN_FLOWS - 1);
        clk	            :	in 	std_logic;
        reset_n	        :	in	std_logic;
        enable          :	in	std_logic;
        out_data        :   out std_logic_vector (PIXEL_SIZE - 1 downto 0)
);
end entity;

architecture bhv of maxElement is
    -------------------------------------------
    -- SIGNALS
    -------------------------------------------
    signal	signed_data	    :	pixel_array_signed ;
    signal  s_max           :   std_logic_vector(PIXEL_SIZE-1 downto 0);

    begin
    CAST : for i in 0 to (NB_IN_FLOWS - 1) generate
        signed_data(i)      <=  signed(in_data(i));
    end generate;

    -- Max
    process(clk)
        variable v_max : signed (PIXEL_SIZE - 1 downto 0);
        begin
            if (reset_n ='0') then
                v_max := (others=>'0');
            elsif (RISING_EDGE(clk)) then
                if (enable='1') then

                    MAX_LOOP : for i in 0 to (NB_IN_FLOWS - 1) loop
                        if (signed_data(i) > v_max) then
                            v_max := signed_data(i);
                        end if;
                    end loop;

                out_data <= v_max;
                v_max := (others=>'0');
                end if;
            end if;
        end process;

end bhv;
