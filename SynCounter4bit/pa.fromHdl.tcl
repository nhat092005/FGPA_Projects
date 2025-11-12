
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name SynCounter4bit -dir "/home/ise/Working_Space/Week5/SynCounter4bit/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Dem_0_9.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {SynCounter4bit.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {clockDiv.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Dem_0_9.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Dem_0_9 $srcset
add_files [list {Dem_0_9.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
