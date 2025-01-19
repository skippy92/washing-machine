set_attr init_lib_search_path /home/vlsi10/Desktop/test/scl_pdk/stdlib/fs120/liberty/lib_flow_ss

set_attr library tsl18fs120_scl_ss.lib

set_attribute init_hdl_search_path /home/vlsi10/Desktop/EC24EC4218/project1

read_hdl washing.v
elaborate 

read_sdc /home/vlsi10/Desktop/EC24EC4218/project1/washing.sdc


set_attribute syn_generic_effort medium
set_attribute syn_map_effort medium
set_attribute syn_opt_effort medium

syn_generic
syn_map
syn_opt

write_hdl > washing_netlist1.v
write_sdc > washing_sdc1.sdc

report_timing > washing_timing1.rep
report_area > washing_area1.rep
report_power > washing_power1.rep
