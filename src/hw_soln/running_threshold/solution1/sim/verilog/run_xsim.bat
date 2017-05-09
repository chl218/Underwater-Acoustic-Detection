
call xelab xil_defaultlib.apatb_running_threshold_top -prj running_threshold.prj --lib "ieee_proposed=./ieee_proposed" -s running_threshold 
call xsim --noieeewarnings running_threshold -tclbatch running_threshold.tcl

