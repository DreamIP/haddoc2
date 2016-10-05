
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
-- library std;
library work;
use work.ComFlow_pkg.all;

entity usb_sm is
  port(
    usb_ifclk    : in    std_logic;
    usb_flaga    : in    std_logic;
    usb_flagb    : in    std_logic;
    usb_flagc    : in    std_logic;
    usb_flagd    : in    std_logic;
    usb_fd_io    : inout std_logic_vector(15 downto 0);
    usb_sloe     : out   std_logic;
    usb_slrd     : out   std_logic;
    usb_slwr     : out   std_logic;
    usb_pktend   : out   std_logic;
    usb_addr     : out   std_logic_vector(1 downto 0);
    
	usb_rst		  : in 	std_logic;
	 
	flow_in_data_o  : out   std_logic_vector(15 downto 0);
	flow_in_wr_o	: out   std_logic;
	flow_in_full_i: in   std_logic;
	flow_in_end_o : out std_logic;
	 
	flow_out_data_i  : in   std_logic_vector(15 downto 0);
	flow_out_rd_o	: out   std_logic;
	flow_out_empty_i: in   std_logic;
	flow_out_rdy_i : in std_logic
    );
end usb_sm;

architecture rtl of usb_sm is

  type sm is (idle, rd, wr, wr_end,WaitOneCycleBeforeWr);
  signal state : sm := idle;
  
  signal write_enable : std_logic;
  signal flow_out_rdy_r : std_logic:='0';
  signal usb_flaga_r :std_logic :='0';
  signal status_rdy_r : std_logic:='0';

  signal flow_out_empty_i_r : std_logic :='0';
  signal fifo_tx_flow_rdy_s : std_logic:='0';
  
  
begin

  process(usb_ifclk,usb_rst)
  begin
	 if (usb_rst = '0') then
		state <= idle;
				 
		flow_in_wr_o <= '0';
		flow_out_rd_o <= '0';
		flow_in_end_o <= '0';

		usb_addr        <= "00";  -- Connected to End Point 2 - OUT - (EP2 = "00")
		usb_sloe        <= '1';
		usb_slrd        <= '1';
		usb_slwr        <= '1';
		usb_pktend      <= '1';
		
		write_enable    <= '0';
		usb_fd_io       <= (others => 'Z');
		flow_out_rdy_r	<= '0';
		-- end_status_wr_s <='0';
		-- status_nb := (others=>'0');
		
		flow_out_empty_i_r <= '0';
		 
    elsif(rising_edge(usb_ifclk))then
	
	flow_out_rdy_r <= flow_out_rdy_i;
	flow_out_empty_i_r <= flow_out_empty_i;
	
      case state is
        when idle =>
          -- EZ-USB Interface : Do Nothing
          usb_addr   <= "00";  -- Connected to End Point 2 - OUT - (EP2 = "00")
         
		  usb_sloe   <= '1';
          usb_slrd   <= '1';
          usb_slwr   <= '1';
          usb_pktend <= '1';
		  flow_in_end_o <= '0';
         
          usb_fd_io  <= (others => 'Z');
			 
		 flow_in_wr_o <= '0';
		 flow_out_rd_o <= '0';
		 -- end_status_wr_s <='0';
		 
          if(usb_flaga = '1')then -- flaga : EP2 pas vide
            state <= rd;
			usb_sloe <= '0';
            usb_slrd <= '0';
		  -- elsif(status_rdy_s = '1' and usb_flagd='1')then
			-- state <= ReturnStatus;
          elsif(flow_out_rdy_i = '1' and usb_flagd='1')then
              state <= WaitOneCycleBeforeWr;
			  usb_sloe   <= '1'; -- for test
			  flow_out_rd_o <= '1';
          else
            state <= idle;
          end if;

		
        when rd =>
          -- EZ-USB Interface : Read Request to EP2
          usb_addr   <= "00";  -- Connected to End Point 2 (EP2 = "00")
          usb_slwr   <= '1';
          usb_pktend <= '1';
		  flow_in_end_o <='0';
		  
          if(usb_flaga = '1')then
            usb_sloe <= '0';
            usb_slrd <= '0';
			-- ecrire usb_fd_io dans fifo EP2
			if flow_in_full_i = '0' then 
				--TODO: inversion octets pour USB
				flow_in_data_o(15 downto 8) <= usb_fd_io(7 downto 0);
				flow_in_data_o(7 downto 0) <= usb_fd_io(15 downto 8);
				usb_fd_io <= (others => 'Z');
				flow_in_wr_o <= '1';
			else
				flow_in_wr_o <= '0';
				
			end if;	
            state <= rd;
          
		  else
			flow_in_wr_o <= '0';
			usb_pktend <='0';
			flow_in_end_o <='1';
            state <= idle;
          end if;

		when WaitOneCycleBeforeWr =>
			state <= wr;
			usb_addr   <= "10"; 
 
        when wr =>
          usb_addr   <= "10";  -- Connected to End Point 6 - IN - (EP6 = "10")
          usb_sloe   <= '1';
          usb_slrd   <= '1';
          usb_pktend <= '1';
			 
          if(usb_flagd = '1') then -- flagd : EP6 pas plein
            usb_slwr  <= '0';
			
			if (flow_out_rdy_i = '1') then		
					flow_out_rd_o <= '1';
					-- TODO:inversion pour USB
					usb_fd_io(7 downto 0) <= flow_out_data_i(15 downto 8) ; 
					usb_fd_io(15 downto 8) <= flow_out_data_i(7 downto 0) ; 		
					state           <= wr;
					
            elsif(flow_out_rdy_r='1'and flow_out_rdy_i = '0') then
					-- flow_out_rd_o <='0';
					-- state <= wr_end;
					-- usb_pktend <= '1';
					-- usb_slwr        <= '1';
					usb_fd_io(7 downto 0) <= flow_out_data_i(15 downto 8) ; 
					usb_fd_io(15 downto 8) <= flow_out_data_i(7 downto 0) ; 
					
					usb_pktend <= '0'; 
					flow_out_rd_o <='0';
					state <= wr_end;		
			else
					state <= wr_end;
            end if;
          else
            usb_slwr <= '1';
            state <= idle;
          end if;

			
		-- Waiting for usb_start_read falling to zero
        when wr_end =>
			usb_pktend <= '1';
			usb_slwr        <= '1';
			state   <= idle;
			
		end case;
    end if;
  end process;
  

end rtl;
