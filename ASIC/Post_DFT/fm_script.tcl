
###################################################################
########################### Variables #############################
###################################################################
set SSLIB "/home/IC/chain_test/std_cells/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/IC/chain_test/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/chain_test/std_cells/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"


###################################################################
############################ Guidance #############################
###################################################################

# Synopsys setup variable
set synopsys_auto_setup true

# Formality Setup File
set_svf "/home/IC/chain_test/dft/chain.svf"

###################################################################
###################### Reference Container ########################
###################################################################

# Read Reference Design Verilog Files
read_verilog -container Ref "/home/IC/chain_test/RTL_dft/chain.v"
read_verilog -container Ref "/home/IC/chain_test/RTL_dft/ClkDiv.v"
read_verilog -container Ref "/home/IC/chain_test/RTL_dft/comb_4.v"
read_verilog -container Ref "/home/IC/chain_test/RTL_dft/counter_1bit.v"
read_verilog -container Ref "/home/IC/chain_test/RTL_dft/counter_2bit.v"
read_verilog -container Ref "/home/IC/chain_test/RTL_dft/DUC.v"
read_verilog -container Ref "/home/IC/chain_test/RTL_dft/HFB_Comb4_Comb4.v"
read_verilog -container Ref "/home/IC/chain_test/RTL_dft/mux4_to_1.v"
read_verilog -container Ref "/home/IC/chain_test/RTL_dft/mux2X1.v"
read_verilog -container Ref "/home/IC/chain_test/RTL_dft/up_sample_2.v"
read_verilog -container Ref "/home/IC/chain_test/RTL_dft/segma_1.v"

# Read Reference technology libraries
read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

# set the top Reference Design 
set_reference_design MIMO
set_top MIMO


###################################################################
#################### Implementation Container #####################
###################################################################

# Read Implementation Design Files
read_verilog -container Imp -netlist "/home/IC/chain_test/dft/MIMO_dft.v"

# Read Implementation technology libraries
read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

# set the top Implementation Design
set_implementation_design MIMO
set_top MIMO

###################### Matching Compare points ####################

match

######################### Run Verification ########################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting ############################# 
report_passing_points > "passing_points.rpt"
report_failing_points > "failing_points.rpt"
report_aborted_points > "aborted_points.rpt"
report_unverified_points > "unverified_points.rpt"

diagnose
analyze_points -failing


start_gui

