# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/LabHLS_RS2016_4/LabHLS_RS2016_4.cache/wt [current_project]
set_property parent.project_path C:/LabHLS_RS2016_4/LabHLS_RS2016_4.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths c:/reed_solomon_erasure/ProjRSErasure/SolutionX/impl/ip [current_project]
set_property ip_output_repo c:/LabHLS_RS2016_4/LabHLS_RS2016_4.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/LabHLS_RS2016_4/LabHLS_RS2016_4.srcs/sources_1/imports/lab3/meta_harden.v
  C:/LabHLS_RS2016_4/LabHLS_RS2016_4.srcs/sources_1/imports/lab3/uart_baud_gen.v
  C:/LabHLS_RS2016_4/LabHLS_RS2016_4.srcs/sources_1/imports/lab3/uart_rx_ctl.v
  C:/LabHLS_RS2016_4/LabHLS_RS2016_4.srcs/sources_1/new/StateMachine.v
  C:/LabHLS_RS2016_4/LabHLS_RS2016_4.srcs/sources_1/imports/lab3/uart_rx.v
  C:/LabHLS_RS2016_4/LabHLS_RS2016_4.srcs/sources_1/new/topmodule.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/LabHLS_RS2016_4/LabHLS_RS2016_4.srcs/constrs_1/imports/lab3/uart_led_pins_basys3.xdc
set_property used_in_implementation false [get_files C:/LabHLS_RS2016_4/LabHLS_RS2016_4.srcs/constrs_1/imports/lab3/uart_led_pins_basys3.xdc]

read_xdc C:/LabHLS_RS2016_4/LabHLS_RS2016_4.srcs/constrs_1/imports/lab3/uart_led_timing.xdc
set_property used_in_implementation false [get_files C:/LabHLS_RS2016_4/LabHLS_RS2016_4.srcs/constrs_1/imports/lab3/uart_led_timing.xdc]


synth_design -top topmodule -part xc7a35tcpg236-1 -flatten_hierarchy full


write_checkpoint -force -noxdef topmodule.dcp

catch { report_utilization -file topmodule_utilization_synth.rpt -pb topmodule_utilization_synth.pb }
