
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Encoder2_4 -dir "/home/ise/Working_Space/Encoder2_4/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Encoder4_2.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Encoder4_2.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Encoder4_2 $srcset
add_files [list {Encoder4_2.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
