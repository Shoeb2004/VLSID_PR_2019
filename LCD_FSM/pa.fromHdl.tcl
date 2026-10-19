
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name LCD_FSM -dir "C:/Xilinx/42279/LCD_FSM/planAhead_run_1" -part xc3s250epq208-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "LCD_FSM.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {LCD_FSM.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top LCD_FSM $srcset
add_files [list {LCD_FSM.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s250epq208-5
