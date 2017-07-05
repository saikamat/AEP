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
ExecStep $xv_path/bin/xelab -wto 7c86d043f90448d7bfa183dc92b39c34 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot Full_Adder_tb_behav xil_defaultlib.Full_Adder_tb -log elaborate.log
