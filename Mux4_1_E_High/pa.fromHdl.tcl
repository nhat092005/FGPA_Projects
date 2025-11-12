
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Mux4_1_E_High -dir "/home/ise/Working_Space/Week3/Mux4_1_E_High/planAhead_run_2" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Mux4_1_E_High.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Mux4_1_E_High.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Mux4_1_E_High $srcset
add_files [list {Mux4_1_E_High.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
