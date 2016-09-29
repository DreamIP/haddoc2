#!/usr/bin/tclsh

proc c_lib {} {
    set path_to_quartus /home/kamel/altera/15.1/quartus

    vlib altera_mf
	    vmap altera_mf altera_mf
	    vcom -work altera_mf -2002 -explicit $path_to_quartus/eda/sim_lib/altera_mf_components.vhd
	    vcom -work altera_mf  $path_to_quartus/eda/sim_lib/altera_mf.vhd

}

proc c {} {
    set path_to_ips /home/kamel/dev/haddoc2/ip/hdl
    set path_to_projectfiles /home/kamel/dev/haddoc2/example/hdl
    vlib work
    vmap work work

    vcom -93 -work work $path_to_ips/cnn_types.vhd
    vcom -93 -work work $path_to_ips/taps.vhd
    vcom -93 -work work $path_to_ips/neighExtractor.vhd
    vcom -93 -work work $path_to_ips/maxElement.vhd

    vcom -93 -work work $path_to_projectfiles/PoolLayer1.vhd
    vcom -93 -work work -work work ./PoolLayer1_tb.vhd

    # vcom -93 -work work $path_to_ips/convElement.vhd
    # vcom -93 -work work $path_to_ips/sumElement.vhd

    # vcom -93 -work work $path_to_projectfiles/FirstLayer.vhd
    # vcom -93 -work work ./FirstLayer_tb.vhd


}

proc s {} {
  vsim -novopt -t 1ps -L altera_mf  -L cyclonex work.PoolLayer1_tb

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
