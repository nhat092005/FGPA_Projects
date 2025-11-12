
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Chon_Xung_Ngo_Ra -dir "/home/ise/Working_Space/Week5/Chon_Xung_Ngo_Ra/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Chon_Xung_Ngo_Ra.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {clockDiv.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Mux4_1.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ClockDivision.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Chon_Xung_Ngo_Ra.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Chon_Xung_Ngo_Ra $srcset
add_files [list {Chon_Xung_Ngo_Ra.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
