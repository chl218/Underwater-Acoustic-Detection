
call xelab xil_defaultlib.apatb_peaks_top -prj peaks.prj --lib "ieee_proposed=./ieee_proposed" -s peaks 
call xsim --noieeewarnings peaks -tclbatch peaks.tcl

