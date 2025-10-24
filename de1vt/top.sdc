## Generated SDC file "top.sdc"

## Copyright (C) 2019  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and any partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details, at
## https://fpgasoftware.intel.com/eula.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.1.1 Build 646 04/11/2019 SJ Standard Edition"

## DATE    "Sun Oct 19 00:08:27 2025"

##
## DEVICE  "EP4CE6E22C8"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clkin} -period 20.000 -waveform { 0.000 10.000 } [get_ports {clkin}]
create_clock -name {vgaclk} -period 20.000 -waveform { 0.000 10.000 } [get_nets {vt0|vga0|vgaclk}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]} -source [get_pins {pll0|altpll_component|auto_generated|pll1|inclk[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 5 -master_clock {clkin} [get_pins {pll0|altpll_component|auto_generated|pll1|clk[0]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -rise_to [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -fall_to [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -rise_to [get_clocks {clkin}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -rise_to [get_clocks {clkin}] -hold 0.070  
set_clock_uncertainty -rise_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -fall_to [get_clocks {clkin}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -fall_to [get_clocks {clkin}] -hold 0.070  
set_clock_uncertainty -rise_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -rise_to [get_clocks {vgaclk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -rise_to [get_clocks {vgaclk}] -hold 0.070  
set_clock_uncertainty -rise_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -fall_to [get_clocks {vgaclk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -fall_to [get_clocks {vgaclk}] -hold 0.070  
set_clock_uncertainty -fall_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -rise_to [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -fall_to [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -rise_to [get_clocks {clkin}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -rise_to [get_clocks {clkin}] -hold 0.070  
set_clock_uncertainty -fall_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -fall_to [get_clocks {clkin}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -fall_to [get_clocks {clkin}] -hold 0.070  
set_clock_uncertainty -fall_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -rise_to [get_clocks {vgaclk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -rise_to [get_clocks {vgaclk}] -hold 0.070  
set_clock_uncertainty -fall_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -fall_to [get_clocks {vgaclk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -fall_to [get_clocks {vgaclk}] -hold 0.070  
set_clock_uncertainty -rise_from [get_clocks {clkin}] -rise_to [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -setup 0.070  
set_clock_uncertainty -rise_from [get_clocks {clkin}] -rise_to [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -hold 0.100  
set_clock_uncertainty -rise_from [get_clocks {clkin}] -fall_to [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -setup 0.070  
set_clock_uncertainty -rise_from [get_clocks {clkin}] -fall_to [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -hold 0.100  
set_clock_uncertainty -rise_from [get_clocks {clkin}] -rise_to [get_clocks {clkin}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clkin}] -fall_to [get_clocks {clkin}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clkin}] -rise_to [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -setup 0.070  
set_clock_uncertainty -fall_from [get_clocks {clkin}] -rise_to [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -hold 0.100  
set_clock_uncertainty -fall_from [get_clocks {clkin}] -fall_to [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -setup 0.070  
set_clock_uncertainty -fall_from [get_clocks {clkin}] -fall_to [get_clocks {pll:pll0|altpll:altpll_component|pll_altpll:auto_generated|wire_pll1_clk[0]}] -hold 0.100  
set_clock_uncertainty -fall_from [get_clocks {clkin}] -rise_to [get_clocks {clkin}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clkin}] -fall_to [get_clocks {clkin}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {vgaclk}] -rise_to [get_clocks {clkin}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {vgaclk}] -fall_to [get_clocks {clkin}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {vgaclk}] -rise_to [get_clocks {vgaclk}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {vgaclk}] -fall_to [get_clocks {vgaclk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {vgaclk}] -rise_to [get_clocks {clkin}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {vgaclk}] -fall_to [get_clocks {clkin}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {vgaclk}] -rise_to [get_clocks {vgaclk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {vgaclk}] -fall_to [get_clocks {vgaclk}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************

set_false_path -from [get_ports {rx resetbtn ps2k_c ps2k_d}] -to *
set_false_path -from * -to [get_ports {tx vgab[0] vgab[1] vgag[0] vgag[1] vgah vgar[0] vgar[1] vgav audio}]
#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

