
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Dem_BCD_0_59 -dir "/home/ise/Working_Space/Week6/Dem_BCD_0_59/planAhead_run_2" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Dem_BCD_0_59.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {SynCounter4bit_WithEnable.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {clockDiv.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Dem_BCD_0_59.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Dem_BCD_0_59 $srcset
add_files [list {Dem_BCD_0_59.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
