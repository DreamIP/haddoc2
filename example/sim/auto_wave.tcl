# Scan instances recursively
proc inst_scan {inst_name} {
  set sub_inst_list [lsort [find instances -recursive "$inst_name/*"]]
  set inst ""
  foreach inst $sub_inst_list {
    puts "Instance found: $inst"
    add_group $inst
    # inst_scan $inst
  }
}
proc add_wave {group_def inst_name} {
 set obj_type_list  {
  {-ports} {"I/O ports"}
  {-internal} {Internals}
  }
  foreach {obj_type obj_group_name} $obj_type_list {
    set sig_list [lsort [find signals $inst_name/*]]
    foreach sig $sig_list {
       set CMD "add wave -noupdate -hex $group_def -group $obj_group_name $obj_type $sig"
       # puts $CMD
       if { [catch {eval $CMD} fid] } {
       }
    }
  }
}
proc add_group {inst_name} {
  set ggg [split $inst_name "\ "]
  set inst_path [lindex $ggg 0]
  set group_list [split $inst_path "/"]
  # puts "group_list: $group_list"
  # puts "ggg: [lindex $ggg 0]"
  set group_def ""
  foreach i $group_list {
    if {$i != ""} {
      # puts "group: $i"
      append group_def "\-group\ \"$i\" "
    }
  }
  # puts "group_def: $group_def"
  add_wave $group_def $inst_path
}
# Scan instances in current directory
inst_scan ""

# Wave display configuration
configure wave -namecolwidth 220
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
