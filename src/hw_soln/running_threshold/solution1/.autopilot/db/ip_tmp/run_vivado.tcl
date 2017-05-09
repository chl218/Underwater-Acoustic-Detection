create_project prj -part xc7z020clg484-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
source "C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln/running_threshold/solution1/syn/verilog/running_threshold_ap_fadd_7_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips running_threshold_ap_fadd_7_full_dsp_32]]
}
source "C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln/running_threshold/solution1/syn/verilog/running_threshold_ap_fdiv_28_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips running_threshold_ap_fdiv_28_no_dsp_32]]
}
source "C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln/running_threshold/solution1/syn/verilog/running_threshold_ap_fmul_3_max_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips running_threshold_ap_fmul_3_max_dsp_32]]
}
