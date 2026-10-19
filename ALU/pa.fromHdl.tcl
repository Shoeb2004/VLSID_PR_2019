
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name ALU -dir "C:/Xilinx/42279/ALU/planAhead_run_2" -part xc3s250epq208-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "ALU_4bit.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ALU_4bit.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top ALU_4bit $srcset
add_files [list {ALU_4bit.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s250epq208-5
