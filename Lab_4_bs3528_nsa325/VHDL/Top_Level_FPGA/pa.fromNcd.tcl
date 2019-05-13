
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name Processor -dir "C:/Users/bs3528/Documents/GitHub/vhdl-craziness/Lab_4_bs3528_nsa325/VHDL/Top_Level_FPGA/planAhead_run_2" -part xc3s100ecp132-4
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "C:/Users/bs3528/Documents/GitHub/vhdl-craziness/Lab_4_bs3528_nsa325/VHDL/Top_Level_FPGA/top_FPGA.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/bs3528/Documents/GitHub/vhdl-craziness/Lab_4_bs3528_nsa325/VHDL/Top_Level_FPGA} }
set_property target_constrs_file "top_FPGA.ucf" [current_fileset -constrset]
add_files [list {top_FPGA.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "C:/Users/bs3528/Documents/GitHub/vhdl-craziness/Lab_4_bs3528_nsa325/VHDL/Top_Level_FPGA/top_FPGA.ncd"
if {[catch {read_twx -name results_1 -file "C:/Users/bs3528/Documents/GitHub/vhdl-craziness/Lab_4_bs3528_nsa325/VHDL/Top_Level_FPGA/top_FPGA.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"C:/Users/bs3528/Documents/GitHub/vhdl-craziness/Lab_4_bs3528_nsa325/VHDL/Top_Level_FPGA/top_FPGA.twx\": $eInfo"
}
