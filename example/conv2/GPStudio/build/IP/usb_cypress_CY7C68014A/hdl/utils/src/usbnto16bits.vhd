
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- N TO 16 BITS Adaptateur
-- valeurs possibles entrée 8,16,32 
-- tester avec 1, 2, 4 avec le code en 8to16, çà devrait fonctionner ou presque ...

-- ALtera libray used for 32 to 16 bits scfifo component
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

use ieee.math_real.all;

entity usbnto16bits is
		generic (
			INPUT_SIZE: integer;
			FIFO_DEPTH : integer := 32
		);
		port ( 
			rst_n_i  		: in  std_logic;
			clk_i  			: in  std_logic;		
			frame_valid_i	: in  std_logic;					
			data_valid_i	: in  std_logic;					
			data_i			: in  std_logic_vector(INPUT_SIZE-1 downto 0);
			frame_valid_o	: out std_logic;
			data_valid_o	: out std_logic;
			data_o			: out std_logic_vector(15 downto 0) 
		);
end usbnto16bits;


architecture rtl of usbnto16bits is

-- signaux pour inf a 16bits
constant CPT_MAX : integer := 16/INPUT_SIZE;
type state_t is (Initial,WaitSd);
signal state : state_t := Initial;
--signal tmp : std_logic_vector(15 downto 0):=(others=>'0');
signal tmp8bits : std_logic_vector(7 downto 0):=(others=>'0');


-- signaux pour fonctionnement 32 to 16
type state_32t is (Initial,SendLSB,DumpLastMSB,DumpLastLSB,SyncSignal);
signal state_32b : state_32t := Initial;

signal tmp16bits : std_logic_vector(15 downto 0):=(others=>'0');
signal fifo_empty_s: std_logic:='0';
signal databuf : std_logic_vector(31 downto 0):=(others=>'0');
signal aclr_s : std_logic:='0';
signal rdreq_s : std_logic:='0';
signal usedw_s: std_logic_vector(integer(ceil(log2(real(FIFO_DEPTH))))-1 downto 0):=(others=>'0');
signal fifo_empty_r: std_logic :='0';


begin

label_16bits : if INPUT_SIZE=16 generate
	frame_valid_o <= frame_valid_i;
	data_valid_o <= data_valid_i;
	data_o <= data_i;
end generate label_16bits;


label_32bits : if INPUT_SIZE=32 generate

aclr_s <= not(rst_n_i);

with state_32b select
rdreq_s <=  not(fifo_empty_s) when Initial,
			'0' when SendLSB ,
			'0' when others;
			
FIFO : component scfifo
	GENERIC MAP(
		intended_device_family => "Cyclone III",
		lpm_numwords => FIFO_DEPTH,
		lpm_showahead => "OFF",
		lpm_type => "scfifo",
		lpm_width => 32,
		lpm_widthu => integer(ceil(log2(real(FIFO_DEPTH)))),
		overflow_checking => "ON",
		underflow_checking => "ON",
		use_eab => "ON"
)
	PORT map 
	(
		data		=> data_i,
		rdreq		=> rdreq_s,
		clock		=> clk_i,
		wrreq		=> data_valid_i,
		aclr 		=> aclr_s ,
		q			=> databuf,
		empty => fifo_empty_s,
		usedw => usedw_s,
		full	=> open
	);
	
process(clk_i,rst_n_i)

begin

	if (rst_n_i = '0') then 
		state_32b <= Initial;
		frame_valid_o <= '0';
		data_valid_o <='0';
		data_o <=  (others=>'0');
		tmp16bits <=  (others=>'0');
		fifo_empty_r <= '1';
--		rdreq_s <= '0';
		
	elsif rising_edge(clk_i) then
	--	frame_valid_o <=  frame_valid_i;
		data_valid_o <='0';
		fifo_empty_r <= fifo_empty_s;
		
		case state_32b is
		
			when Initial =>
			
				if (frame_valid_i = '1') then
					frame_valid_o <='1';
				end if;
				
				
				if( fifo_empty_r = '0' ) then
				
					data_o <= databuf(31 downto 16);
					data_valid_o <='1';

					tmp16bits <= databuf(15 downto 0);
					state_32b <= SendLSB;
				end if;
			
			when SendLSB =>
					data_o <= tmp16bits ;
					data_valid_o <='1';
					state_32b <= Initial;
					
					-- Dernière donnée : cas particulier
					if(fifo_empty_s = '1') then
						state_32b <= DumpLastMSB;
					end if;
				
			when DumpLastMSB =>
				data_valid_o <='1';
				data_o <= databuf(31 downto 16);
				state_32b <= DumpLastLSB;
				
			when DumpLastLSB =>
				data_valid_o <='1';
				data_o <= databuf(15 downto 0);
				state_32b <= SyncSignal;
				
			when SyncSignal =>
				if (frame_valid_i = '0') then
					frame_valid_o <='0';
					data_valid_o <='0';
				end if;
				
				state_32b <= Initial;
		end case;
	end if;
end process;

end generate label_32bits;

-- Fonctionnement 8 TO 16bits
label_8bits : if INPUT_SIZE = 8 generate
process(clk_i,rst_n_i)
begin

	if (rst_n_i = '0') then 
		state <= Initial;
		frame_valid_o <= '0';
		data_valid_o <='0';
		data_o <=  (others=>'0');
		tmp8bits <=  (others=>'0');
	elsif rising_edge(clk_i) then
		frame_valid_o <=  frame_valid_i;
		data_valid_o <='0';
		
		case state is
			when Initial =>
				if data_valid_i ='1' and frame_valid_i='1' then
					data_valid_o <='0';
					tmp8bits <= data_i;
					state <= WaitSd;
				end if;
			
			when WaitSd =>
				if data_valid_i ='1' and frame_valid_i='1' then
					data_o <= tmp8bits & data_i;
					data_valid_o <='1';
					state <= Initial;
				end if;
		end case;
	end if;
end process;
end generate label_8bits;

-- Fonctionnement non verifie pour INPUT_SIZE < 8
-- label_inf8bits : if INPUT_SIZE < 8 generate
-- process(clk_i,rst_n_i)
-- variable cpt : integer range 0 to CPT_MAX := 0;
-- begin

	-- if (rst_n_i = '0') then 
		-- state <= Initial;
		-- frame_valid_o <= '0';
		-- data_valid_o <='0';
		-- data_o <=  (others=>'0');
		-- tmp <=  (others=>'0');
		-- cpt = 0;
	-- elsif rising_edge(clk_i) then
		-- frame_valid_o <=  frame_valid_i;
		-- data_valid_o <='0';
		
		-- case state is
		
			-- when Initial =>
				-- if data_valid_i ='1' then
					-- tmp (INPUT_SIZE-1 downto 0) <= data_i;
					-- tmp sll INPUT_SIZE;
					-- cpt = cpt + 1;
					-- if (cpt = CPT_MAX) then
						-- state <= WaitSd;
						-- cpt = 0;
					-- end if;
				-- end if;
				
			
			-- when WaitSd =>
				-- if data_valid_i ='1' then
					-- data_o <= tmp ;
					-- data_valid_o <='1';
					-- state <= Initial;
				-- end if;
		-- end case;
	-- end if;
-- end process;
-- end generate label_inf8bits;

end rtl;
