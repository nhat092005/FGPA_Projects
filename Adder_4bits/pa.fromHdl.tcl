
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Adder_4bits -dir "/home/ise/Working_Space/Chapter_2/Adder_4bits/planAhead_run_3" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Adder_4bits.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {FullAdder.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Adder_4bits.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Adder_4bits $srcset
add_files [list {Adder_4bits.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
