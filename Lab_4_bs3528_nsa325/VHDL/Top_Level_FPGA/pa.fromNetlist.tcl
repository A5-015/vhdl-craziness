
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Processor -dir "C:/Users/bs3528/Documents/GitHub/vhdl-craziness/Lab_4_bs3528_nsa325/VHDL/Top_Level_FPGA/planAhead_run_2" -part xc3s100ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/bs3528/Documents/GitHub/vhdl-craziness/Lab_4_bs3528_nsa325/VHDL/Top_Level_FPGA/top_FPGA.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/bs3528/Documents/GitHub/vhdl-craziness/Lab_4_bs3528_nsa325/VHDL/Top_Level_FPGA} }
set_property target_constrs_file "top_FPGA.ucf" [current_fileset -constrset]
add_files [list {top_FPGA.ucf}] -fileset [get_property constrset [current_run]]
link_design
