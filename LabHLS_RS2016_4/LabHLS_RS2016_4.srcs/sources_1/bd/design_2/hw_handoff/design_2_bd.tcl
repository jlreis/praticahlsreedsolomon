
################################################################
# This is a generated script based on design: design_2
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_2_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_2

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set ap_clk [ create_bd_port -dir I -type clk ap_clk ]
  set ap_done [ create_bd_port -dir O ap_done ]
  set ap_idle [ create_bd_port -dir O ap_idle ]
  set ap_ready [ create_bd_port -dir O ap_ready ]
  set ap_rst [ create_bd_port -dir I -type rst ap_rst ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $ap_rst
  set ap_start [ create_bd_port -dir I ap_start ]
  set c_0 [ create_bd_port -dir O -from 7 -to 0 -type data c_0 ]
  set c_0_ap_vld [ create_bd_port -dir O c_0_ap_vld ]
  set c_1 [ create_bd_port -dir O -from 7 -to 0 -type data c_1 ]
  set c_1_ap_vld [ create_bd_port -dir O c_1_ap_vld ]
  set c_2 [ create_bd_port -dir O -from 7 -to 0 -type data c_2 ]
  set c_2_ap_vld [ create_bd_port -dir O c_2_ap_vld ]
  set c_3 [ create_bd_port -dir O -from 7 -to 0 -type data c_3 ]
  set c_3_ap_vld [ create_bd_port -dir O c_3_ap_vld ]
  set codeidx [ create_bd_port -dir I -from 7 -to 0 -type data codeidx ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $codeidx
  set codeidx_ap_vld [ create_bd_port -dir I codeidx_ap_vld ]
  set d_0 [ create_bd_port -dir I -from 7 -to 0 -type data d_0 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $d_0
  set d_1 [ create_bd_port -dir I -from 7 -to 0 -type data d_1 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $d_1
  set d_2 [ create_bd_port -dir I -from 7 -to 0 -type data d_2 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $d_2
  set d_3 [ create_bd_port -dir I -from 7 -to 0 -type data d_3 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $d_3
  set d_4 [ create_bd_port -dir I -from 7 -to 0 -type data d_4 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $d_4
  set d_5 [ create_bd_port -dir I -from 7 -to 0 -type data d_5 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $d_5
  set d_6 [ create_bd_port -dir I -from 7 -to 0 -type data d_6 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $d_6
  set d_7 [ create_bd_port -dir I -from 7 -to 0 -type data d_7 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $d_7
  set d_8 [ create_bd_port -dir I -from 7 -to 0 -type data d_8 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $d_8
  set d_9 [ create_bd_port -dir I -from 7 -to 0 -type data d_9 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $d_9
  set d_10 [ create_bd_port -dir I -from 7 -to 0 -type data d_10 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $d_10
  set d_11 [ create_bd_port -dir I -from 7 -to 0 -type data d_11 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $d_11
  set survival_pattern [ create_bd_port -dir I -from 15 -to 0 -type data survival_pattern ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $survival_pattern

  # Create instance: rs_erasure_0, and set properties
  set rs_erasure_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:rs_erasure:1.0 rs_erasure_0 ]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_ports ap_clk] [get_bd_pins rs_erasure_0/ap_clk]
  connect_bd_net -net ap_rst_1 [get_bd_ports ap_rst] [get_bd_pins rs_erasure_0/ap_rst]
  connect_bd_net -net ap_start_1 [get_bd_ports ap_start] [get_bd_pins rs_erasure_0/ap_start]
  connect_bd_net -net codeidx_1 [get_bd_ports codeidx] [get_bd_pins rs_erasure_0/codeidx]
  connect_bd_net -net codeidx_ap_vld_1 [get_bd_ports codeidx_ap_vld] [get_bd_pins rs_erasure_0/codeidx_ap_vld]
  connect_bd_net -net d_0_1 [get_bd_ports d_0] [get_bd_pins rs_erasure_0/d_0]
  connect_bd_net -net d_10_1 [get_bd_ports d_10] [get_bd_pins rs_erasure_0/d_10]
  connect_bd_net -net d_11_1 [get_bd_ports d_11] [get_bd_pins rs_erasure_0/d_11]
  connect_bd_net -net d_1_1 [get_bd_ports d_1] [get_bd_pins rs_erasure_0/d_1]
  connect_bd_net -net d_2_1 [get_bd_ports d_2] [get_bd_pins rs_erasure_0/d_2]
  connect_bd_net -net d_3_1 [get_bd_ports d_3] [get_bd_pins rs_erasure_0/d_3]
  connect_bd_net -net d_4_1 [get_bd_ports d_4] [get_bd_pins rs_erasure_0/d_4]
  connect_bd_net -net d_5_1 [get_bd_ports d_5] [get_bd_pins rs_erasure_0/d_5]
  connect_bd_net -net d_6_1 [get_bd_ports d_6] [get_bd_pins rs_erasure_0/d_6]
  connect_bd_net -net d_7_1 [get_bd_ports d_7] [get_bd_pins rs_erasure_0/d_7]
  connect_bd_net -net d_8_1 [get_bd_ports d_8] [get_bd_pins rs_erasure_0/d_8]
  connect_bd_net -net d_9_1 [get_bd_ports d_9] [get_bd_pins rs_erasure_0/d_9]
  connect_bd_net -net rs_erasure_0_ap_done [get_bd_ports ap_done] [get_bd_pins rs_erasure_0/ap_done]
  connect_bd_net -net rs_erasure_0_ap_idle [get_bd_ports ap_idle] [get_bd_pins rs_erasure_0/ap_idle]
  connect_bd_net -net rs_erasure_0_ap_ready [get_bd_ports ap_ready] [get_bd_pins rs_erasure_0/ap_ready]
  connect_bd_net -net rs_erasure_0_c_0 [get_bd_ports c_0] [get_bd_pins rs_erasure_0/c_0]
  connect_bd_net -net rs_erasure_0_c_0_ap_vld [get_bd_ports c_0_ap_vld] [get_bd_pins rs_erasure_0/c_0_ap_vld]
  connect_bd_net -net rs_erasure_0_c_1 [get_bd_ports c_1] [get_bd_pins rs_erasure_0/c_1]
  connect_bd_net -net rs_erasure_0_c_1_ap_vld [get_bd_ports c_1_ap_vld] [get_bd_pins rs_erasure_0/c_1_ap_vld]
  connect_bd_net -net rs_erasure_0_c_2 [get_bd_ports c_2] [get_bd_pins rs_erasure_0/c_2]
  connect_bd_net -net rs_erasure_0_c_2_ap_vld [get_bd_ports c_2_ap_vld] [get_bd_pins rs_erasure_0/c_2_ap_vld]
  connect_bd_net -net rs_erasure_0_c_3 [get_bd_ports c_3] [get_bd_pins rs_erasure_0/c_3]
  connect_bd_net -net rs_erasure_0_c_3_ap_vld [get_bd_ports c_3_ap_vld] [get_bd_pins rs_erasure_0/c_3_ap_vld]
  connect_bd_net -net survival_pattern_1 [get_bd_ports survival_pattern] [get_bd_pins rs_erasure_0/survival_pattern]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


