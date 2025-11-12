
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Led_Don_Sang_Chay -dir "/home/ise/Working_Space/Week7/Led_Don_Sang_Chay/planAhead_run_4" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Led_Don_Sang_Chay_05Hz.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {TickGen.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Led_Don_Sang_Chay.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Led_Don_Sang_Chay_05Hz.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Led_Don_Sang_Chay_05Hz $srcset
add_files [list {Led_Don_Sang_Chay_05Hz.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
