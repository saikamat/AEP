
xelab xil_defaultlib.apatb_zs_func_top -prj zs_func.prj --lib "ieee_proposed=./ieee_proposed" -s zs_func 
xsim --noieeewarnings zs_func -tclbatch zs_func.tcl

