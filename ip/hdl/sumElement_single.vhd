library ieee;
	use	ieee.std_logic_unsigned.all;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

--
--                    ----------------
--                   |                |
-- in_data   ________|                |______ out_data
-- in_dv     ________|                |______ out_dv
-- in_fv     ________|       SE       |______ ou_fv
--                   |    (single)    |
-- in_bias  _________|                |
--                   |                |
--                    ----------------



entity sumElement_single is

    generic(
        PIXEL_SIZE      :   integer
    );

    port(
        clk	            :	in 	std_logic;
        reset_n	        :	in	std_logic;
        enable          :	in	std_logic;

        in_data         :   in  std_logic_vector (PIXEL_SIZE - 1 downto 0);
        in_dv           :   in  std_logic;
        in_fv           :   in  std_logic;
        in_bias         :   in  std_logic_vector (PIXEL_SIZE - 1 downto 0);

        out_data        :   out std_logic_vector (PIXEL_SIZE - 1 downto 0);
        out_dv          :   out std_logic;
        out_fv          :   out std_logic
    );
end entity;
--
architecture bhv of sumElement_single is

    signal  sum_s       :   signed (PIXEL_SIZE-1 downto 0);

    begin
    process(clk)
        variable sum    :   signed (PIXEL_SIZE-1 downto 0);
    -- TODO : Overflow management

        begin
            if (reset_n ='0') then
                sum   := (others=>'0');
            elsif (RISING_EDGE(clk)) then
                if (enable='1') then
                    sum  := signed(in_data) + signed(in_bias);

                    if (sum(sum'left) = '1')	then
                        sum := (others => '0');
                    end if;

                    sum_s <= sum;
                end if;
            end if;
        end process;


    out_data <= std_logic_vector (sum_s);

    --------------------------------------------------------------------------
    -- DataValid and FlowValid Management :
    --------------------------------------------------------------------------
    -- out_dv => '1' when all in_dvs (plural) are at 1
    -- TODO : Unary operators : Only supported in VHDL-2008

    out_dv <= in_dv;
    out_fv <= in_fv;
    end bhv;
