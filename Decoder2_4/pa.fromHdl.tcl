
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Decoder2_4 -dir "/home/ise/Working_Space/Chapter_2/Decoder2_4/planAhead_run_4" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Decoder2_4.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Decoder2_4.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Decoder2_4 $srcset
add_files [list {Decoder2_4.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
