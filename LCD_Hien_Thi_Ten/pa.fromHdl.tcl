
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name LCD_Hien_Thi_Ten -dir "/home/ise/Working_Space/Week8/LCD_Hien_Thi_Ten/planAhead_run_2" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "LCD_Display_05Hz.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {LCD.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {TickGen.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {LCD_Display.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {LCD_Display_05Hz.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top LCD_Display_05Hz $srcset
add_files [list {LCD_Display_05Hz.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
