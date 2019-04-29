
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Lab_3_bs3528_nsa325_Task_2 -dir "C:/Users/bs3528/Documents/GitHub/vhdl-craziness/Lab_3_bs3528_nsa325/Task_2/VHDL/planAhead_run_1" -part xc3s100ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/bs3528/Documents/GitHub/vhdl-craziness/Lab_3_bs3528_nsa325/Task_2/VHDL/t_controller.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/bs3528/Documents/GitHub/vhdl-craziness/Lab_3_bs3528_nsa325/Task_2/VHDL} }
set_property target_constrs_file "t_controller_mapping.ucf" [current_fileset -constrset]
add_files [list {t_controller_mapping.ucf}] -fileset [get_property constrset [current_run]]
link_design
