
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Demux1_8 -dir "/home/ise/Working_Space/Chapter_2/Demux1_8/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Demux1_8.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Demux1_8.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Demux1_8 $srcset
add_files [list {Demux1_8.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
