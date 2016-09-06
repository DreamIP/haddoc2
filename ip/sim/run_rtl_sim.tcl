#!/usr/bin/tclsh

proc c_lib {} {
  set path_to_quartus /home/kamel/altera/13.1/quartus

  vlib altera_mf
	vmap altera_mf altera_mf
	vcom -work altera_mf -2002 -explicit $path_to_quartus/eda/sim_lib/altera_mf_components.vhd
	vcom -work altera_mf  $path_to_quartus/eda/sim_lib/altera_mf.vhd


  vlib lpm
  vmap lpm lpm
  vcom -work lpm  $path_to_quartus/eda/sim_lib/220pack.vhd
  vcom -work lpm  $path_to_quartus/eda/sim_lib/220model.vhd
}

proc c {} {

  set path_to_projectfiles /home/kamel/Seafile/Kamel/CNN/ip/hdl

  vlib work
  vmap work work


# --------------------------------------------------------------
# vcom -93 -work work $path_to_projectfiles/cnn_types.vhd
#   vcom -93 -work work $path_to_projectfiles/taps.vhd
#   vcom -93 -work work $path_to_projectfiles/neighExtractor.vhd
#   vcom -93 -work work ./neighExtractor_tb.vhd
# --------------------------------------------------------------

vcom -93 -work work $path_to_projectfiles/cnn_types.vhd
  vcom -93 -work work $path_to_projectfiles/sumFeatures.vhd
  vcom -93 -work work ./sumFeatures_tb.vhd

}

proc s {} {
  vsim -novopt -t 1ps -L altera_mf  -L cyclonex work.sumFeatures_tb

  source auto_wave.tcl
  run 8000 ns

}



#-----------------------------------------------------------------------------
# proc: mnu
#
# Display help menu
#-----------------------------------------------------------------------------

proc mnu {} {
	puts "------------"
	puts "Command list"
	puts "------------"
	puts ""
	puts " mnu   display this menu"
	puts " c_lib launch libraries compilation"
	puts " c     launch hdl compilation"
	puts " s     launch simulation"
	puts " cs    launch compil and simulation"
}

mnu
