
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Dem_0_9_AND_9_0 -dir "/home/ise/Working_Space/Week6/Dem_0_9_AND_9_0/planAhead_run_2" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Dem_0_9_AND_9_0_Single.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {SynCounter4bit_Bidirectional.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {clockDiv_Enable.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Dem_0_9_AND_9_0_Single.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Dem_0_9_AND_9_0_Single $srcset
add_files [list {Dem_0_9_AND_9_0_Single.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
