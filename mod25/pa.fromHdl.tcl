
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name mod25 -dir "C:/Xilinx/42279/mod25/planAhead_run_1" -part xc3s250epq208-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "mod25.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {mod25.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top mod25 $srcset
add_files [list {mod25.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s250epq208-5
