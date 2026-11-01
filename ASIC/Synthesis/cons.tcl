
####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set verilogout_no_tri true
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

# REF CLOCK (400 MHz)
set CLK_NAME REF_CLK
set CLK_PER 2.5

# Skew
set CLK_SETUP_SKEW 0.02
set CLK_HOLD_SKEW 0.01

#transition
set CLK_TRANS 0.05


#1. Master Clocks

create_clock -name $CLK_NAME -period $CLK_PER -waveform "0 [expr $CLK_PER/2]" [get_ports clk]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks $CLK_NAME]
set_clock_transition  $CLK_TRANS  [get_clocks $CLK_NAME]

#2. Generated clocks
#2. Generated clocks

create_generated_clock -master_clock $CLK_NAME -source [get_ports clk] \
                       -name "CLK_SEGMA" [get_port gen4/o_div_clk] \
                       -divide_by 4
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks "CLK_SEGMA"]
set_clock_uncertainty -hold $CLK_HOLD_SKEW   [get_clocks "CLK_SEGMA"]

create_generated_clock -master_clock $CLK_NAME -source [get_ports clk] \
                       -name "CLK_128" [get_port gen128/o_div_clk] \
                       -divide_by 128
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks "CLK_128"]
set_clock_uncertainty -hold $CLK_HOLD_SKEW   [get_clocks "CLK_128"]

create_generated_clock -master_clock $CLK_NAME -source [get_ports clk] \
                       -name "CLK_64" [get_port gen64/o_div_clk] \
                       -divide_by 64
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks "CLK_64"]
set_clock_uncertainty -hold $CLK_HOLD_SKEW   [get_clocks "CLK_64"]

create_generated_clock -master_clock $CLK_NAME -source [get_ports clk] \
                       -name "CLK_16" [get_port gen16/o_div_clk] \
                       -divide_by 16
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks "CLK_16"]
set_clock_uncertainty -hold $CLK_HOLD_SKEW   [get_clocks "CLK_16"]

create_generated_clock -master_clock $CLK_NAME -source [get_ports clk] \
                       -name "CLK_4" [get_port gen_4/o_div_clk] \
                       -divide_by 4
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks "CLK_4"]
set_clock_uncertainty -hold $CLK_HOLD_SKEW   [get_clocks "CLK_4"]


set_dont_touch_network [get_clocks "$CLK_NAME CLK_SEGMA CLK_128 CLK_64 CLK_4 CLK_16"]

####################################################################################
           #########################################################
             #### Section 2 : Clocks Relationship ####
           #########################################################
####################################################################################

#set_clock_groups -asynchronous \
   # -group [get_clocks "$CLK_NAME "] \
   # -group [get_clocks "CLK_SEGMA"] \
   # -group [get_clocks "CLK_128"] \
   # -group [get_clocks "CLK_64"] \
   # -group [get_clocks "CLK_4"] \
   #-group [get_clocks  "CLK_16"]

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

set in_delay  [expr 0.2*$CLK_PER]
set out_delay [expr 0.2*$CLK_PER]

#Constrain Input Paths
set_input_delay $in_delay -clock $CLK_NAME [get_port I]
set_input_delay $in_delay -clock $CLK_NAME [get_port Q]

#Constrain Output Paths
set_output_delay $out_delay -clock $CLK_NAME [get_port out]


####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port I]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port Q]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 0.8 [get_port out]


####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################

#set_wire_load_model -name tsmc13_wl30 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c

####################################################################################


