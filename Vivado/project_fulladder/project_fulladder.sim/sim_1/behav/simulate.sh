#!/bin/bash -f
xv_path="/home/saptarshi/Xilinx/Vivado/2015.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim Full_Adder_tb_behav -key {Behavioral:sim_1:Functional:Full_Adder_tb} -tclbatch Full_Adder_tb.tcl -log simulate.log
