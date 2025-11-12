
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Decoder3_8 -dir "/home/ise/Working_Space/Chapter_2/Decoder3_8/planAhead_run_3" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Decoder3_8.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Decoder3_8.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Decoder3_8 $srcset
add_files [list {Decoder3_8.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
