
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name UNI_Shift_Register -dir "C:/Xilinx/42279/UNI_Shift_Register/planAhead_run_1" -part xc3s250epq208-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "UNI_Shift_Register.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {UNI_Shift_Register.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top UNI_Shift_Register $srcset
add_files [list {UNI_Shift_Register.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s250epq208-5
