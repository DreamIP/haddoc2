
# ----------------------------------------------------------------------------
# Global configuration
# ----------------------------------------------------------------------------

set usb_freq_mhz 48.000


# ----------------------------------------------------------------------------
# Time Information
# ----------------------------------------------------------------------------

set_time_format \
  -unit ns \
  -decimal_places 3

# ----------------------------------------------------------------------------
# Create Clock
# ----------------------------------------------------------------------------
create_clock \
  -name "usb_ifclk" \
  -period [expr {1000/$usb_freq_mhz}] \
  [get_ports {usb_ifclk}]

# ----------------------------------------------------------------------------
# Create Generated Clock
# ----------------------------------------------------------------------------

derive_pll_clocks -create_base_clocks

# Automatically calculate clock uncertainty to jitter and other effects.
derive_clock_uncertainty

# ----------------------------------------------------------------------------
# Create Clock Group
# ----------------------------------------------------------------------------

set_clock_groups -asynchronous \
-group { \
  usb_ifclk \
} 



# ----------------------------------------------------------------------------
# Timing constraints
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------- usb_if ---
  set_input_delay \
    -clock usb_ifclk \
    -max 0.000 \
    [get_ports usb_flag*]
    
  set_input_delay \
    -clock usb_ifclk \
    -min 0.000 \
    [get_ports usb_flag*]  
    
  set_output_delay \
    -clock usb_ifclk \
    -min 0.000 \
    [get_ports { \
      usb_sloe \
      usb_slrd \
      usb_slwr \
      usb_pktend \
      usb_addr[*] \
      } \
    ]  
    
  set_output_delay \
    -clock usb_ifclk \
    -max 0.000 \
    [get_ports { \
      usb_sloe \
      usb_slrd \
      usb_slwr \
      usb_pktend \
      usb_addr[*] \
      } \
    ]  
		
  set_output_delay \
    -clock usb_ifclk \
    -max 0.000 \
    [get_ports usb_fd_io[*]]  
    
  set_output_delay \
    -clock usb_ifclk \
    -min 0.000 \
    [get_ports usb_fd_io[*]] 		

  set_input_delay \
    -clock usb_ifclk \
    -max 0.000 \
    [get_ports usb_fd_io[*]]  
    
  set_input_delay \
    -clock usb_ifclk \
    -min 0.000 \
    [get_ports usb_fd_io[*]]      

	 # peut etre a verifier .. 
#	set_max_delay \
		-from {usb_sm:USB_SM_INST|usb_fd_io[*]~en} \
		-to [get_ports {usb_fd_io[*]}] 14.000		
		
	set_input_delay -clock usb_ifclk -max 0.000  [get_ports usb_rst]
	set_max_delay -from [get_ports {usb_rst}] -to {*} 14