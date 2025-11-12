
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Led_7_Anode -dir "/home/ise/Working_Space/Week3/Led_7_Anode/planAhead_run_3" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "gm_led_7doan.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {gm_led_7doan.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top gm_led_7doan $srcset
add_files [list {gm_led_7doan.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
