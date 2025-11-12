
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Sang_Dan_Tat_Dan -dir "/home/ise/Working_Space/Week7/Sang_Dan_Tat_Dan/planAhead_run_3" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Sang_Dan_Tat_Dan_05Hz.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {TickGen.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Sang_Dan_Tat_Dan.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Sang_Dan_Tat_Dan_05Hz.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Sang_Dan_Tat_Dan_05Hz $srcset
add_files [list {Sang_Dan_Tat_Dan_05Hz.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
