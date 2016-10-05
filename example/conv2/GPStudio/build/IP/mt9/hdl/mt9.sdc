
# ----------------------------------------------------------------------------
# Global configuration
# ----------------------------------------------------------------------------

set mt9_pixclk_freq_mhz 33.000

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
  -name "mt9_pixclk_i" \
  -period [expr {1000/$mt9_pixclk_freq_mhz}] \
  [get_ports {mt9_pixclk_i}]

# ----------------------------------------------------------------------------
# Create Clock Group
# ----------------------------------------------------------------------------

set_clock_groups -asynchronous \
-group { \
  mt9_pixclk_i \
}

# ----------------------------------------------------------------------------
# False Path
# ----------------------------------------------------------------------------

set_false_path -to [get_ports mt9_extclk_o]
set_false_path -to [get_ports mt9_reset_n_o]
set_false_path -to [get_ports mt9_sclk_o]
set_false_path -from [get_ports mt9_sdata_io]
set_false_path -to [get_ports mt9_sdata_io]

# ----------------------------------------------------------------------------
# Timing constraints
# ----------------------------------------------------------------------------
# ----------------------------------------------------------------- mt9_if ---    
  set_input_delay \
    -clock mt9_pixclk_i \
    -max 0.000 \
    [get_ports mt9_lval_i]
    
  set_input_delay \
    -clock mt9_pixclk_i \
    -min 0.000 \
    [get_ports mt9_lval_i]  

  set_input_delay \
    -clock mt9_pixclk_i \
    -max 0.000 \
    [get_ports mt9_fval_i]
    
  set_input_delay \
    -clock mt9_pixclk_i \
    -min 0.000 \
    [get_ports mt9_fval_i]      

  set_input_delay \
    -clock mt9_pixclk_i \
    -max 0.000 \
    [get_ports mt9_data_i[*]]
    
  set_input_delay \
    -clock mt9_pixclk_i \
    -min 0.000 \
    [get_ports mt9_data_i[*]]        

