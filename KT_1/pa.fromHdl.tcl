
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name KT_1 -dir "/home/ise/Working_Space/Chapter_2/KT_1/planAhead_run_2" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "KT_1.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Mux4_1_E_High.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Demux1_4_E_High.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {KT_1.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top KT_1 $srcset
add_files [list {KT_1.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
