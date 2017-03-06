---------------------------------------------------------------------------------
-- Design Name 	: convElement : A parrellel MAC unit
-- Coder       	: Kamel ABDELOUAHAB
-- Institution 	: Institut Pascal  - 2016
---------------------------------------------------------------------------------


library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
   use ieee.math_real.all;

-- I'm sorry for this ...
library altera_mf;
    use altera_mf.altera_mf_components.all;
    

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
        in_dv    	  :   in  std_logic;
        in_fv    	  :   in  std_logic;
        in_kernel   :   in  pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
        out_data    :   out std_logic_vector(SUM_WIDTH - 1 downto 0);
        out_dv      :   out std_logic;
        out_fv      :   out std_logic

    );
end convElement;

architecture bhv of convElement is

    --------------------------------------------------------------------------
    -- SIGNALS
    --------------------------------------------------------------------------
    -- Signed Pixel Array 
    type   signed_pixel_array is array ( integer range <> ) of signed (  PIXEL_SIZE-1 downto 0);
    type   signed_mult_array  is array ( integer range <> ) of signed (2*PIXEL_SIZE-1 downto 0);
    
    signal s_data   : signed_pixel_array (0 to KERNEL_SIZE*KERNEL_SIZE - 1) := (others=>(others=>'0'));
    signal s_kernel : signed_pixel_array (0 to KERNEL_SIZE*KERNEL_SIZE - 1) := (others=>(others=>'0'));
    signal s_mult   : signed_mult_array  (0 to KERNEL_SIZE*KERNEL_SIZE - 1) := (others=>(others=>'0'));
    signal s_mac    : std_logic_vector   (SUM_WIDTH - 1 downto 0) := (others=>'0');
    signal all_valid: std_logic :='0';
    signal s_mult_altera : ALTERA_MF_LOGIC_2D (KERNEL_SIZE * KERNEL_SIZE - 1 downto 0, 2*PIXEL_SIZE-1 downto 0);
	 
    --------------------------------------------------------------------------
    -- ARCHITECTURE
    --------------------------------------------------------------------------
    begin
	 
		  --------------------------------------------------------------------------
        -- MULTIPLICATION ACCUMULATION
        --------------------------------------------------------------------------
        
		  -- Cast into signed arrays
        cast_loop : for i in 0 to (KERNEL_SIZE * KERNEL_SIZE - 1) generate
            s_data(i)   <= signed(in_data(i));
            s_kernel(i) <= signed(in_kernel(i));
        end generate cast_loop;
        
        -- Multiplication
        mult_loop : for i in 0 to (KERNEL_SIZE * KERNEL_SIZE - 1) generate
            s_mult(i)   <= s_data(i) * s_kernel(i);
        end generate mult_loop;
        
        -- Parrallel addition: 
        -- 1. Altera array type
			-- See signal declarations above
        
        -- 2. From 1D array of signed to 2D array of std_logic (std_logic and NOT std_logic_vector)
        
        elementwise_loop : for e in KERNEL_SIZE * KERNEL_SIZE - 1 downto 0 generate
				bitwise_loop : for b in 2*PIXEL_SIZE-1 downto 0 generate
				
					s_mult_altera(e,b) <= s_mult(e)(b);
				
				end generate bitwise_loop ;
		  end generate elementwise_loop;
        
		  -- 3. Altera IP instantiation
		  parallel_add_component : parallel_add
        GENERIC MAP (
            msw_subtract 		=> "NO",
            pipeline 			=> 0,
            representation 	=> "SIGNED",
            result_alignment 	=> "LSB",
            shift 				=> 0,
            size 					=> KERNEL_SIZE * KERNEL_SIZE,
            width 				=> 2*PIXEL_SIZE,
            widthr 				=> SUM_WIDTH,
            lpm_type 			=> "parallel_add"
        )
        PORT MAP (
            data    => s_mult_altera,
            result  => s_mac
        );    
    
        
		  -- Manage out_dv and out_fv : Synchronize with process
        dvfv_proc : process(clk)
        begin
            if(reset_n = '0') then
                out_dv <= '0';
                out_fv <= '0';
                -- out_data  <= (others=>'0');
            elsif(rising_edge(clk)) then
--                if (all_valid = '1') then
                out_dv <= in_dv;
                out_fv <= in_fv;
            end if;
        end process;
        --------------------------------------------------------------------------
        out_data   <=   std_logic_vector(s_mac);


end bhv;
