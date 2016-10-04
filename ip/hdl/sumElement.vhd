library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

--
--                    ----------------
--                   |                |
-- in_data(0)________|                |______ out_data
-- in_data(1)________|                |______ out_dv
-- in_data(2)________|                |______ ou_fv
--   ...             |                |
--                   |       SE       |
-- in_dv(0)__________|                |
-- in_dv(1)__________|                |
-- ...               |                |
-- in_fv(0)__________|                |
-- in_fv(1)__________|                |
--                    ----------------



entity sumElement is

    generic(
        PIXEL_SIZE      :   integer;
        NB_IN_FLOWS     :   integer
    );

    port(
        clk	            :	in 	std_logic;
        reset_n	        :	in	std_logic;
        enable          :	in	std_logic;

        in_data         :   in pixel_array (0 to NB_IN_FLOWS - 1);
        in_dv           :   in std_logic_vector(0 to NB_IN_FLOWS - 1);
        in_fv           :   in std_logic_vector(0 to NB_IN_FLOWS - 1);

        out_data        :   out std_logic_vector (PIXEL_SIZE - 1 downto 0);
        out_dv          :   out std_logic;
        out_fv          :   out std_logic
    );
end entity;
--
architecture bhv of sumElement is

    type pixel_array_signed is array (0 to NB_IN_FLOWS - 1) of signed (PIXEL_SIZE -1 downto 0);
    signal	data_s	    :	pixel_array_signed ;
    signal  sum_s       :   signed (PIXEL_SIZE - 1 downto 0);
    signal  tmp_dv      :   std_logic;
    signal  tmp_fv      :   std_logic;

    -- Cast Pixels in signed
    begin
    CAST : for i in 0 to (NB_IN_FLOWS - 1) generate
        data_s(i)      <=  signed(in_data(i));
    end generate;



    process(clk)
    -- TODO : Overflow management
        variable sum    :   signed (PIXEL_SIZE - 1  downto 0);
        begin
            if (reset_n ='0') then
                sum := (others=>'0');
            elsif (RISING_EDGE(clk)) then
                if (enable='1') then

                    sum     := (others=>'0');

                    SUM_LOOP : for i in 0 to (NB_IN_FLOWS - 1) loop
                        sum := sum + data_s(i);
                    end loop;
    -- ReLU Activation Function : 0 threshold
                    if (sum(sum'left) = '1')	then
                        sum := (others => '0');
                    end if;

                    sum_s	<=	sum;
                end if;
            end if;
        end process;


    out_data <= std_logic_vector (sum_s);

    --------------------------------------------------------------------------
    -- DataValid and FlowValid Management :
    --------------------------------------------------------------------------
    -- out_dv => '1' when all in in_dvs (plural) are at 1
    -- Unary operators : Only supported in VHDL-2008
    out_dv <= and in_dv;
    out_fv <= and in_fv;
end bhv;
