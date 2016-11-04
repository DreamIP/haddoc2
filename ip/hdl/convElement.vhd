library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

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
        in_norm     :   in  std_logic_vector(PIXEL_SIZE-1 downto 0);
        out_data    :   out std_logic_vector(PIXEL_SIZE-1 downto 0);
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


    signal s_data    : spa_ini (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
    signal s_kernel  : spa_ini (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
    signal s_mul     : spa_mul (0 to KERNEL_SIZE * KERNEL_SIZE - 1);

    signal s_sum     : signed  (3*PIXEL_SIZE downto 0);
    signal shift_out : signed  (3*PIXEL_SIZE downto 0);
    signal all_valid : std_logic :='0';
    signal norm      : natural   := 0 ;
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
        -- MULTIPLICATION
        --------------------------------------------------------------------------
        mul_proc : process(clk)
        begin
            if(reset_n = '0') then
                s_mul <= (others=>(others=>'0'));

            else
                if (all_valid = '1') then
                    mul_loop : for i in 0 to (KERNEL_SIZE * KERNEL_SIZE - 1) loop
                        s_mul(i) <= s_data(i) * s_kernel(i);
                    end loop;
                end if;
            end if;
        end process;

        --------------------------------------------------------------------------
        -- ACCUMULATION
        --------------------------------------------------------------------------
        sum_proc : process(clk)
        variable v_sum : signed  (3*PIXEL_SIZE downto 0) := (others=>'0');
        begin
            if(reset_n = '0') then
                s_sum <= (others=>'0');
                v_sum := (others=>'0');
            else
                if (all_valid = '1') then
                    sum_loop : for i in 0 to (KERNEL_SIZE * KERNEL_SIZE - 1) loop
                        v_sum := v_sum + s_mul(i);
                    end loop;
                    s_sum <= v_sum;
                    v_sum := (others=>'0');
                end if;
            end if;
        end process;

        --------------------------------------------------------------------------
        -- NORMALIZATION
        --------------------------------------------------------------------------
        norm       <=  to_integer(unsigned (in_norm));
        shift_out  <=  shift_right(s_sum,norm);
        out_data   <=  std_logic_vector (shift_out(PIXEL_SIZE-1 downto 0));

        --------------------------------------------------------------------------
        -- Manage out_dv and out_fv : for now, only clone in_dv and in_fv
        --------------------------------------------------------------------------
        out_dv     <=  in_dv;
        out_fv     <=  in_fv;

end bhv;
