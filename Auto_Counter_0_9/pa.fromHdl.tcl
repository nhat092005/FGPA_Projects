
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Auto_Counter_0_9 -dir "/home/ise/Working_Space/Week6/Auto_Counter_0_9/planAhead_run_2" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Auto_Counter_0_9.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {clockDiv_Enable.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Auto_Bidirectional_Counter.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Auto_Counter_0_9.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Auto_Counter_0_9 $srcset
add_files [list {Auto_Counter_0_9.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
