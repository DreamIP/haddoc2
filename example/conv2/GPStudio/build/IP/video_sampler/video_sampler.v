module VideoSampler(

	//inputs from camera
	pclk_i,
	href_i,
	vsync_i,

	pixel_i,

	//input from CLOCK50 domain
	clk_i,
	reset_n_i,

	// external slave
	enable_i,
	flowlength_i,

	href_count,
	pclkonhref_count,
	buffer_ovf_cnt,

	//Stream interface
	data_o,
	dv_o,
	fv_o
);

parameter DATA_WIDTH = 32;
parameter PIXEL_WIDTH = 8;
parameter FIFO_DEPTH = 2048;
parameter DEFAULT_SCR = 0;
parameter DEFAULT_FLOWLENGHT = 512*512;

parameter HREF_POLARITY = "high";
parameter VSYNC_POLARITY = "high";
//    _______    _______
// __|       |__|       |__		high
// __         __         __
//   |_______|  |_______|		low

//inputs from camera
input pclk_i;
input href_i;
input vsync_i;
input [PIXEL_WIDTH-1:0] pixel_i;

//input from CLOCK50 domain
input clk_i;
input reset_n_i;

// external slave
input enable_i;
input [DATA_WIDTH-1:0] flowlength_i;
output [DATA_WIDTH-1:0] href_count;
output [DATA_WIDTH-1:0] pclkonhref_count;
output [DATA_WIDTH-1:0] buffer_ovf_cnt;

//Flow interface
output [PIXEL_WIDTH-1:0] data_o;
output	dv_o;
output	fv_o;

parameter WAIT_ONOFF_POS =		2'b00;
parameter WAIT_FRAME_START =	2'b01;
parameter WAIT_FRAME_END =		2'b10;

parameter FVSTATE_INIT= 2'd0;
parameter FVSTATE_HBLK= 2'd1;
parameter FVSTATE_FLOW= 2'd2;
parameter FVSTATE_END = 2'd3;

reg state;

/* Debug Registers */
reg [DATA_WIDTH-1:0] href_count, href_count_new;
reg [DATA_WIDTH-1:0] pclkonhref_count, pclkonhref_count_new;
reg [DATA_WIDTH-1:0] buffer_ovf_cnt, buffer_ovf_cnt_new;

/* Internal registers */
reg [DATA_WIDTH-1:0] readdata_o, readdata_new;

/* Frame valid output generation */
reg [1:0] fvstate, fvstate_new;
reg [DATA_WIDTH-1:0] dvcount;
reg fv_d;

/* DCFIFO wrreq */
reg wrreq;

/* wire definitions */
wire scr_onoff_bit;

wire rdreq;
wire rdempty;
wire rdfull;
wire aclr_dcfifo;

/***************	VSYNC rising and falling signals	*****************/
reg [1:0] v_int_pclk;
always @ (posedge pclk_i)
	v_int_pclk <= {v_int_pclk[0], vsync_i};

wire vsync_neg_pclk;
assign vsync_neg_pclk = v_int_pclk[1] & ~v_int_pclk[0];

wire vsync_pos_pclk;
assign vsync_pos_pclk = ~v_int_pclk[1] & v_int_pclk[0];

reg [1:0] v_int_clk;
always @ (posedge clk_i)
	v_int_clk <= {v_int_clk[0], vsync_i};

wire vsync_neg_clk;
assign vsync_neg_clk = v_int_clk[1] & ~v_int_clk[0];

wire vsync_pos_clk;
assign vsync_pos_clk = ~v_int_clk[1] & v_int_clk[0];

/***************	ONOFF rise pulse generator	*****************/
reg [1:0] o_int_pclk;
always @ (posedge pclk_i)
	o_int_pclk <= {o_int_pclk[0], enable_i};

wire onoff_pclk;
assign onoff_pclk = o_int_pclk[0];

/***************	HREF pulse generator	*****************/
reg h_int_pclk;
always @ (posedge pclk_i)
	h_int_pclk <= href_i;

wire href_pos_pclk;
assign href_pos_pclk = href_i & ~h_int_pclk;

wire href_neg_pclk;
assign href_neg_pclk = ~href_i & h_int_pclk;

/***************	fv pulse generator	*****************/
reg fv_pos_clk;
always @ (posedge clk_i)
	fv_pos_clk <= ~fv_pos_clk & fv_o;

reg fv_neg_clk;
always @ (posedge clk_i)
	fv_neg_clk <= ~fv_neg_clk & fv_o;


/************************	FSM	**************************/
reg [1:0] stato_video_pclk, stato_video_pclk_new;
reg [1:0] stato_video;

always@(posedge pclk_i or negedge reset_n_i)
	if (reset_n_i == 1'b0)
		stato_video_pclk		<= WAIT_ONOFF_POS;
	else
		stato_video_pclk		<= stato_video_pclk_new;

always@(posedge clk_i or negedge reset_n_i)
	if (reset_n_i == 1'b0)
		stato_video <= WAIT_ONOFF_POS;
	else
		stato_video <= stato_video_pclk;

/*	FSM modified for continous processing
	it waits until onoff_pclk goes to 1 and then acquire!
	a later change of onoff_pclk bit is then checked when another frame
	is starting ...
*/
always@(*)
	if(onoff_pclk)
			begin
				case(stato_video_pclk)
					WAIT_ONOFF_POS:
						stato_video_pclk_new = WAIT_FRAME_START;
					WAIT_FRAME_START:
					if (VSYNC_POLARITY == "high")
						begin
							if(vsync_pos_pclk)
								stato_video_pclk_new = WAIT_FRAME_END;
							else
								stato_video_pclk_new = WAIT_FRAME_START;
						end
					else if(VSYNC_POLARITY == "low")
						begin
							if(vsync_neg_pclk)
								stato_video_pclk_new = WAIT_FRAME_END;
							else
								stato_video_pclk_new = WAIT_FRAME_START;
						end
					else
						begin
							$error("VSYNC_POLARITY wrong case (high, low)");
						end

					WAIT_FRAME_END:
						if (VSYNC_POLARITY == "high")
							begin
								if(vsync_neg_pclk)
									stato_video_pclk_new = WAIT_ONOFF_POS;
								else
									stato_video_pclk_new = WAIT_FRAME_END;
							end
						else if (VSYNC_POLARITY == "low")
							begin
								if(vsync_pos_pclk)
									stato_video_pclk_new = WAIT_ONOFF_POS;
								else
									stato_video_pclk_new = WAIT_FRAME_END;
							end
						else
							begin
								$error("VSYNC_POLARITY wrong case (high, low)");
							end

					default:
						stato_video_pclk_new	= WAIT_ONOFF_POS;
				endcase
			end
		else
			stato_video_pclk_new = WAIT_ONOFF_POS;


/*********	WRREQ generation ***********/
/*	WRREQ becomes 'high' when:
		- FSM received a ONOFF_RISE signal
		- FSM received starting frame condition
		- HREF active (depending on HREF_POLARITY parameter)
*/

always@(*)
	begin
		if (HREF_POLARITY == "high")
			begin
				wrreq = href_i & (stato_video_pclk == WAIT_FRAME_END);
			end
		else if (HREF_POLARITY == "low")
			begin
				wrreq = ~href_i & (stato_video_pclk == WAIT_FRAME_END);
			end
		else
			begin
				$error("HREF_POLARITY wrong case (high, low)");
			end
	end


assign aclr_dcfifo = ~enable_i;

dcfifo	#(
	.lpm_numwords(FIFO_DEPTH),
	.lpm_showahead("OFF"),
	.lpm_type("dcfifo"),
	.lpm_width(PIXEL_WIDTH),
	.lpm_widthu($clog2(FIFO_DEPTH)),
	.overflow_checking("ON"),
	.rdsync_delaypipe(4),
	.read_aclr_synch("ON"),
	.underflow_checking("ON"),
	.use_eab("ON"),
	.write_aclr_synch("OFF"),
	.wrsync_delaypipe(4)
) dcfifo_inst(
	.data ( pixel_i ),
	.rdclk ( clk_i ),
	.rdreq ( rdreq ),
	.wrclk ( pclk_i ),
	.wrreq ( wrreq ),
	.q ( data_o ),
	.rdempty ( rdempty ),
	.rdfull ( rdfull ),
	.wrfull(),
	.wrempty(),
	.rdusedw(),
	.wrusedw(),
	//.aclr(aclr_dcfifo)
	.aclr(aclr_dcfifo)
	);



/*****************************************************************************
 *                       Flow generator                                      *
 *****************************************************************************/

 /* DCFIFO rdreq generation */
parameter WAIT_FIFO= 1'b0;
parameter RX_FIFO =  1'b1;

assign scr_onoff_bit = (stato_video != WAIT_ONOFF_POS) & enable_i;

always@(posedge clk_i or negedge reset_n_i)
	if (reset_n_i == 1'b0)
		state <= WAIT_FIFO;
	else
		state <= (scr_onoff_bit & ~rdempty) ? RX_FIFO : WAIT_FIFO;

assign rdreq = ((state == RX_FIFO & ~rdempty) && (fvstate == FVSTATE_FLOW)) ? 1'b1 : 1'b0;

reg dv_d;
always@(posedge clk_i or negedge reset_n_i)
	if (reset_n_i == 0)
		dv_d <= 1'b0;
	else
		dv_d <= rdreq;

assign dv_o = dv_d;


/* Frame valid and data valid generation */
always@(posedge clk_i or negedge reset_n_i)
	if (reset_n_i == 0)
		fvstate <= FVSTATE_INIT;
	else
		fvstate <= fvstate_new;

always@(*)
	case(fvstate)
		FVSTATE_INIT:
			if (scr_onoff_bit)
				if (VSYNC_POLARITY == "high")
					begin
						if (vsync_pos_clk)
							fvstate_new = FVSTATE_HBLK;
						else
							fvstate_new = FVSTATE_INIT;
					end
				else if (VSYNC_POLARITY == "low")
					begin
						if (vsync_neg_clk)
							fvstate_new = FVSTATE_HBLK;
						else
							fvstate_new = FVSTATE_INIT;
					end
				else
					begin
						$error("VSYNC_POLARITY wrong case (high, low)");
					end

			else
				fvstate_new = FVSTATE_INIT;
		FVSTATE_HBLK:
			if (scr_onoff_bit)
				if (state == RX_FIFO & ~rdempty)
					fvstate_new = FVSTATE_FLOW;
				else
					fvstate_new = FVSTATE_HBLK;
			else
				fvstate_new = FVSTATE_INIT;
		FVSTATE_FLOW:
			if (scr_onoff_bit)
				if (dvcount == flowlength_i)
					fvstate_new = FVSTATE_END;
				else
					fvstate_new = FVSTATE_FLOW;
			else
				fvstate_new = FVSTATE_INIT;
		FVSTATE_END:
			if (VSYNC_POLARITY == "high")
				begin
					if (scr_onoff_bit)
						if (vsync_neg_clk)
							fvstate_new = FVSTATE_INIT;
						else
							fvstate_new = FVSTATE_END;
					else
						fvstate_new = FVSTATE_INIT;
				end
			else if (VSYNC_POLARITY == "low")
				begin
					if (scr_onoff_bit)
						if (vsync_neg_clk)
							fvstate_new = FVSTATE_INIT;
						else
							fvstate_new = FVSTATE_END;
					else
						fvstate_new = FVSTATE_INIT;
				end
			else
				begin
					$error("VSYNC_POLARITY wrong case (high, low)");
				end

		default:
			fvstate_new = FVSTATE_HBLK;
	endcase


/* dvcount */
always@(posedge clk_i or negedge reset_n_i)
	if (reset_n_i == 1'b0)
		dvcount <= 0;
	else
		if (dv_o && (dvcount != flowlength_i))
			dvcount <= dvcount + 1;
		else if (fvstate == FVSTATE_INIT)
			dvcount <= 0;

/* fv_ signal generation */

always@(posedge clk_i or negedge reset_n_i)
	if (reset_n_i == 1'b0)
		fv_d <= 0;
	else
		fv_d <= (fvstate == FVSTATE_FLOW);


assign fv_o = fv_d && (dvcount != flowlength_i);


/***********************	HREF counter	****************/
reg [DATA_WIDTH-1:0] href_count_pclk, href_count_pclk_new;

always@(posedge pclk_i or negedge reset_n_i)
	if (reset_n_i == 1'b0)
		href_count_pclk <= {DATA_WIDTH{1'b0}};
	else
		href_count_pclk <= href_count_pclk_new;

always@(*)
	case(stato_video_pclk)
		WAIT_ONOFF_POS:
			href_count_pclk_new = href_count_pclk;
		WAIT_FRAME_START:
			href_count_pclk_new = {DATA_WIDTH{1'b0}};
		WAIT_FRAME_END:
			if (HREF_POLARITY == "high")
				begin
					if(href_pos_pclk)
						href_count_pclk_new = href_count_pclk + 1;
					else
						href_count_pclk_new = href_count_pclk;
				end
			else if (HREF_POLARITY == "low")
				begin
					if(href_neg_pclk)
						href_count_pclk_new = href_count_pclk + 1;
					else
						href_count_pclk_new = href_count_pclk;
				end
			else
				begin
					$error("HREF_POLARITY wrong case (high, low)");
				end

		default:
			href_count_pclk_new = {DATA_WIDTH{1'b0}};
	endcase

/***********************	PCLK during HREF counter	****************/
reg [31:0] pclkonhref_count_pclk, pclkonhref_count_pclk_new;

always@(posedge pclk_i or negedge reset_n_i)
		if (reset_n_i == 1'b0)
				pclkonhref_count_pclk <= {DATA_WIDTH{1'b0}};
		else
				pclkonhref_count_pclk <= pclkonhref_count_pclk_new;

always@(*)
	case(stato_video_pclk)
		WAIT_ONOFF_POS:
			pclkonhref_count_pclk_new = pclkonhref_count_pclk;
		WAIT_FRAME_START:
			pclkonhref_count_pclk_new = {DATA_WIDTH{1'b0}};
		WAIT_FRAME_END:
			if (HREF_POLARITY == "high")
				begin
					if(href_i)
						pclkonhref_count_pclk_new = pclkonhref_count_pclk + 1;
					else
						pclkonhref_count_pclk_new = pclkonhref_count_pclk;
				end
			else if (HREF_POLARITY == "low")
				begin
					if(~href_i)
						pclkonhref_count_pclk_new = pclkonhref_count_pclk + 1;
					else
						pclkonhref_count_pclk_new = pclkonhref_count_pclk;
				end
			else
				begin
					$error("HREF_POLARITY wrong case (high, low)");
				end

		default:
			pclkonhref_count_pclk_new = {DATA_WIDTH{1'b0}};
	endcase

/*	Measuring if buffer_overflow occours */

always @ (*)
	begin
		if (VSYNC_POLARITY == "high")
			begin
				if(fv_pos_clk)
					buffer_ovf_cnt_new = {DATA_WIDTH{1'b0}};
				else
					if (rdfull)
						buffer_ovf_cnt_new	= buffer_ovf_cnt + 1;
					else
						buffer_ovf_cnt_new = buffer_ovf_cnt;
			end
		else if (VSYNC_POLARITY == "low")
			begin
				if(fv_neg_clk)
					buffer_ovf_cnt_new = {DATA_WIDTH{1'b0}};
				else
					if (rdfull)
						buffer_ovf_cnt_new	= buffer_ovf_cnt + 1;
					else
						buffer_ovf_cnt_new = buffer_ovf_cnt;
			end
		else
			begin
				$error("VSYNC_POLARITY wrong case (high, low)");
			end



	end

/* Internal register update */

always @ (posedge clk_i or negedge reset_n_i)
	if (reset_n_i == 1'b0)
		begin
			href_count			<= {DATA_WIDTH{1'b0}};
			pclkonhref_count	<= {DATA_WIDTH{1'b0}};
			buffer_ovf_cnt		<= {DATA_WIDTH{1'b0}};
			readdata_o			<= {DATA_WIDTH{1'b0}};
		end
	else
		begin
			href_count			<= href_count_pclk;
			pclkonhref_count	<= pclkonhref_count_pclk;
			buffer_ovf_cnt		<= buffer_ovf_cnt_new;
			readdata_o			<= readdata_new;
		end

endmodule
