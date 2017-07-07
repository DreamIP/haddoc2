------------------------------------------------------------------------------
-- Title      : convElement
-- Project    : Haddoc2
------------------------------------------------------------------------------
-- File       : convElement.vhd
-- Author     : K. Abdelouahab
-- Company    : Institut Pascal
-- Last update: 07-07-2017
------------------------------------------------------------------------------
-- Description: The design of parrallel Multiply-ACcumulate architecture that
--              processes one pixel/clock top. (K x K) elements are generated
--				to do so. This IP is plugged with the neighExtractor entity to
--				process convolutions
------------------------------------------------------------------------------


library ieee;
	use	ieee.std_logic_1164.all;
	use ieee.std_logic_signed.all;
    use ieee.math_real.all;


library work;
	use work.cnn_types.all;
	use work.bitwidths.all;

entity convElement is

    generic(
        PIXEL_SIZE    :   integer;
        KERNEL_SIZE   :   integer;
        KERNEL_VALUE  :   pixel_array
    );

    port(
        clk         :   in  std_logic;
        reset_n     :   in  std_logic;
        enable      :   in  std_logic;
        in_data     :   in  pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
        in_dv    	:   in  std_logic;
        in_fv    	:   in  std_logic;
        out_data    :   out std_logic_vector(SUM_WIDTH - 1 downto 0);
        out_dv    	:   out std_logic;
        out_fv    	:   out std_logic

    );
end convElement;

architecture bhv of convElement is

    --------------------------------------------------------------------------
    -- SIGNALS
    --------------------------------------------------------------------------
    -- type   spa_ini is array ( integer range <> ) of signed (   PIXEL_SIZE-1 downto 0);
    type   spa_mul is array ( integer range <> ) of std_logic_vector ( 2*PIXEL_SIZE-1 downto 0);


    -- signal s_data    : spa_ini (0 to KERNEL_SIZE * KERNEL_SIZE - 1) := (others=>(others=>'0'));
    -- signal s_kernel  : spa_ini (0 to KERNEL_SIZE * KERNEL_SIZE - 1) := (others=>(others=>'0'));

    signal s_sum     : std_logic_vector (SUM_WIDTH - 1 downto 0) := (others=>'0');
    signal all_valid : std_logic :='0';

    --------------------------------------------------------------------------
    -- ARCHITECTURE
    --------------------------------------------------------------------------
    begin
		-- 07/07/2017 : DEPRECATED - Using std_logic_signed now
        -- Cast into signed arrays
        -- cast_loop : for i in 0 to (KERNEL_SIZE * KERNEL_SIZE - 1) generate
        --     s_data(i)   <= signed(in_data(i));
        --     s_kernel(i) <= signed(in_kernel(i));
        -- end generate cast_loop;

        -- all_valid
        all_valid <= enable and in_dv and in_fv;

        --------------------------------------------------------------------------
        -- MULTIPLICATION ACCUMULATION
        --------------------------------------------------------------------------
        mac_proc : process(clk)
        variable v_sum :  std_logic_vector  (SUM_WIDTH - 1 downto 0) := (others=>'0');
        variable v_mul :  spa_mul (0 to KERNEL_SIZE * KERNEL_SIZE - 1) := (others=>(others=>'0'));
        begin
            if(reset_n = '0') then
                v_mul := (others=>(others=>'0'));
                v_sum := (others=>'0');
                s_sum <= (others=>'0');
            elsif(rising_edge(clk)) then
                if (all_valid = '1') then

                    -- Multiplication
                    mul_loop : for i in 0 to (KERNEL_SIZE * KERNEL_SIZE - 1) loop
                        v_mul(i) := in_data(i) * KERNEL_VALUE(i);
                    end loop;

                    -- Accumulation
                    sum_loop : for i in 0 to (KERNEL_SIZE * KERNEL_SIZE - 1) loop
                        v_sum := v_sum + v_mul(i);
                    end loop;

                    -- Write in reg
                    s_sum <= v_sum;
                    v_sum := (others=>'0');

                end if;
                -- Manage out_dv and out_fv : Synchronize with process
                out_dv <= in_dv;
                out_fv <= in_fv;
            end if;
        end process;
        --------------------------------------------------------------------------
        out_data   <=   (s_sum);


end bhv;
