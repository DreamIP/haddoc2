#define MASTER_ADDR_WIDTH 0x06		// size of bus master adress in bits

// ======================== mt9 at 0x00 (0) : mt9 ========================
#define MT9_REG_BASE                       	0x00      // (0) 

//----- params 
#define MT9_ENABLE_REG_OFFSET              	0x00      // (0) 
	#define MT9_ENABLE_REG_OFFSET_ENABLE_MASK       	0x00000001

#define MT9_FLOWLENGHT_REG_OFFSET          	0x01      // (1) 
#define MT9_XSTART_REG_OFFSET              	0x02      // (2) 
#define MT9_YSTART_REG_OFFSET              	0x03      // (3) 
#define MT9_XEND_REG_OFFSET                	0x04      // (4) 
#define MT9_YEND_REG_OFFSET                	0x05      // (5) 
#define MT9_MODE_REG_OFFSET                	0x06      // (6) 
	#define MT9_MODE_REG_OFFSET_AUTOEXP_MASK        	0x00000001
	#define MT9_MODE_REG_OFFSET_FLIPY_MASK          	0x00000002
	#define MT9_MODE_REG_OFFSET_FLIPX_MASK          	0x00000004
	#define MT9_MODE_REG_OFFSET_BINNING_MASK        	0x00000008

#define MT9_INTEGTIME_REG_OFFSET           	0x07      // (7) 
#define MT9_LINELENGHT_REG_OFFSET          	0x08      // (8) 
#define MT9_AUTOEXPTARGET_REG_OFFSET       	0x09      // (9) 
#define MT9_AUTOEXPVMIN_REG_OFFSET         	0x0A      // (10) 
#define MT9_AUTOEXPVMAX_REG_OFFSET         	0x0B      // (11) 
#define MT9_AUTOEXPMINSTEP_REG_OFFSET      	0x0C      // (12) 
#define MT9_AUTOEXPMAXSTEP_REG_OFFSET      	0x0D      // (13) 
#define MT9_AUTOEXPDAMPOFSET_REG_OFFSET    	0x0E      // (14) 
#define MT9_AUTOEXPDAMPGAIN_REG_OFFSET     	0x0F      // (15) 
#define MT9_AUTOEXPDAMPMAX_REG_OFFSET      	0x10      // (16) 
	#define RESOLUTION_320*240                      	0x00000000
	#define RESOLUTION_640*480                      	0x00000001
	#define RESOLUTION_800*600                      	0x00000002
	#define RESOLUTION_1024*768                     	0x00000003
	#define RESOLUTION_1280*1024                    	0x00000004

// ============== usb at 0x20 (32) : usb_cypress_CY7C68014A ==============
#define USB_REG_BASE                       	0x20      // (32) 

//----- generics 
#define USB_IN0_NBWORDS_GENERIC_VALUE      	32768     // (32768) 
#define USB_IN1_NBWORDS_GENERIC_VALUE      	32768     // (32768) 
#define USB_IN2_NBWORDS_GENERIC_VALUE      	32768     // (32768) 
#define USB_IN3_NBWORDS_GENERIC_VALUE      	32768     // (32768) 
#define USB_OUT0_NBWORDS_GENERIC_VALUE     	1024      // (1024) 
#define USB_OUT1_NBWORDS_GENERIC_VALUE     	1024      // (1024) 
#define USB_MASTER_ADDR_WIDTH_GENERIC_VALUE	6         // (6) 

//----- params 
#define USB_STATUS_REG_OFFSET              	0x00      // (0) 
	#define USB_STATUS_REG_OFFSET_ENABLE_MASK       	0x00000001

#define USB_FLOW_IN0_REG_OFFSET            	0x01      // (1) 
	#define USB_FLOW_IN0_REG_OFFSET_ENABLE_MASK     	0x00000001

#define USB_FLOW_IN1_REG_OFFSET            	0x02      // (2) 
	#define USB_FLOW_IN1_REG_OFFSET_ENABLE_MASK     	0x00000001

#define USB_FLOW_IN2_REG_OFFSET            	0x03      // (3) 
	#define USB_FLOW_IN2_REG_OFFSET_ENABLE_MASK     	0x00000001

#define USB_FLOW_IN3_REG_OFFSET            	0x04      // (4) 
	#define USB_FLOW_IN3_REG_OFFSET_ENABLE_MASK     	0x00000001


// =================== conv2 at 0x30 (48) : conv2.proc ===================
#define CONV2_REG_BASE                     	0x30      // (48) An example of a CNN Layer

//----- generics 
#define CONV2_IMAGE_WIDTH_GENERIC_VALUE    	320       // (320) An example of a CNN Layer

//----- params 
#define CONV2_CONTROL_REG_OFFSET           	0x00      // (0) An example of a CNN Layer
	#define CONV2_CONTROL_REG_OFFSET_ENABLE_MASK    	0x00000001


// ============================ used drivers =============================
#define MT9 1
#define USB_CYPRESS_CY7C68014A 1
#define CONV2.PROC 1
