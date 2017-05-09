create_project prj -part xc7z020clg484-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
source "C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln/peaks/solution2/syn/verilog/peaks_ap_fcmp_2_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips peaks_ap_fcmp_2_no_dsp_32]]
}
