library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;
    use ieee.math_real.all;


library work;
	use work.cnn_types.all;

entity convElement is

    generic(
        KERNEL_SIZE :   integer;
        PIXEL_SIZE  :   integer
    );

    port(
        clk         :   in  std_logic;
        reset_n     :   in  std_logic;
        enable      :   in  std_logic;
        in_data     :   in  pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
        in_dv    	:   in  std_logic;
        in_fv    	:   in  std_logic;
        in_kernel   :   in  pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
        out_data    :   out std_logic_vector(SUM_WIDTH - 1 downto 0);
        out_dv    	:   out std_logic;
        out_fv    	:   out std_logic

    );
end convElement;

architecture bhv of convElement is

    --------------------------------------------------------------------------
    -- SIGNALS
    --------------------------------------------------------------------------
    type   spa_ini is array ( integer range <> ) of signed (   PIXEL_SIZE-1 downto 0);
    type   spa_mul is array ( integer range <> ) of signed ( 2*PIXEL_SIZE-1 downto 0);


    signal s_data    : spa_ini (0 to KERNEL_SIZE * KERNEL_SIZE - 1) := (others=>(others=>'0'));
    signal s_kernel  : spa_ini (0 to KERNEL_SIZE * KERNEL_SIZE - 1) := (others=>(others=>'0'));

    signal s_sum     : signed (SUM_WIDTH - 1 downto 0) := (others=>'0');
    signal all_valid : std_logic :='0';

    --------------------------------------------------------------------------
    -- ARCHITECTURE
    --------------------------------------------------------------------------
    begin
        -- Cast into signed arrays
        cast_loop : for i in 0 to (KERNEL_SIZE * KERNEL_SIZE - 1) generate
            s_data(i)   <= signed(in_data(i));
            s_kernel(i) <= signed(in_kernel(i));
        end generate cast_loop;

        -- all_valid
        all_valid <= enable and in_dv and in_fv;

        --------------------------------------------------------------------------
        -- MULTIPLICATION ACCUMULATION
        --------------------------------------------------------------------------
        mac_proc : process(clk)
        variable v_sum : signed  (SUM_WIDTH - 1 downto 0) := (others=>'0');
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
                        v_mul(i) := s_data(i) * s_kernel(i);
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
        out_data   <=   std_logic_vector(s_sum);


end bhv;
