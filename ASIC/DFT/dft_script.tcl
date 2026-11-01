########################### Define Top Module ############################
set top_module MIMO

set_svf  chain.svf
##################### Define Working Library Directory ######################
define_design_lib work -path ./work

################## Design Compiler Library Files #setup ######################
lappend search_path /home/IC/chain_test/std_cells
lappend search_path /home/IC/chain_test/RTL_dft

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

set target_library [list $SSLIB $TTLIB $FFLIB]
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################
analyze -format verilog [glob /home/IC/chain_test/RTL_dft/*.v]
elaborate -lib work MIMO
current_design $top_module
link 
check_design

#################### Define Design Constraints #########################
source -echo ./cons.tcl

#################### Architecture Scan Chains #########################
set_scan_configuration -clock_mixing no_mix -style multiplexed_flip_flop -replace true -max_length 600  

###################### Mapping and optimization ########################
compile -scan

################################################################### 
# Setting Test Timing Variables
################################################################### 

# Preclock Measure Protocol (default protocol)
set test_default_period 100
set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 20
set test_default_strobe_width 0

########################## Define DFT Signals ##########################
set_dft_signal -port [get_ports scan_clk]  -type ScanClock   -view existing_dft  -timing {30 60}
set_dft_signal -port [get_ports scan_rst]  -type Reset       -view existing_dft  -active_state 0
set_dft_signal -port [get_ports test_mode] -type Constant    -view existing_dft  -active_state 1 
set_dft_signal -port [get_ports test_mode] -type TestMode    -view spec          -active_state 1 
set_dft_signal -port [get_ports SE]        -type ScanEnable  -view spec          -active_state 1 -usage scan
set_dft_signal -port [get_ports SI]        -type ScanDataIn  -view spec 
set_dft_signal -port [get_ports SO]        -type ScanDataOut -view spec  


#set_dft_configuration -fix_clock enable -fix_reset enable -fix_set enable
#set_autofix_configuration -type clock -method mux
#set_autofix_configuration -type reset -method mux
# -----------------------------------------------------------------------

############################# Create Test Protocol #####################
create_test_protocol
                            
###################### Pre-DFT Design Rule Checking ####################
dft_drc -verbose

############################# Preview DFT ##############################
preview_dft -show scan_summary

############################# Insert DFT ###############################
insert_dft

######################## Optimize Logic post DFT #######################
compile -scan -incremental

###################### Design Rule Checking post DFT ###################
dft_drc -verbose -coverage_estimate

set_svf   -off
####################### reporting & Writing Files ##########################
change_name -hier -rule verilog
write_file -format verilog -hierarchy -output MIMO_dft.v
write_file -format verilog -hierarchy -output MIMO_dft.ddc
write_sdf           MIMO_dft.sdf
write_sdc  -nosplit MIMO_dft.sdc
####################### reporting ##########################################

report_area -hierarchy > area_dft.rpt
report_power -hierarchy > power_dft.rpt
report_timing -delay_type min > hold_dft.rpt
report_timing -delay_type max > setup_dft.rpt
report_clock -attributes > clocks_dft.rpt
report_constraint -all_violators > constraints_dft.rpt

