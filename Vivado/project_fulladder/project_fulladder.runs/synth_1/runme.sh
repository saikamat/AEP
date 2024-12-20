#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/saptarshi/Xilinx/SDK/2015.4/bin:/home/saptarshi/Xilinx/Vivado/2015.4/ids_lite/ISE/bin/lin64:/home/saptarshi/Xilinx/Vivado/2015.4/bin
else
  PATH=/home/saptarshi/Xilinx/SDK/2015.4/bin:/home/saptarshi/Xilinx/Vivado/2015.4/ids_lite/ISE/bin/lin64:/home/saptarshi/Xilinx/Vivado/2015.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/saptarshi/Xilinx/Vivado/2015.4/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/saptarshi/Xilinx/Vivado/2015.4/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/saptarshi/Documents/AEP/project_fulladder/project_fulladder.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log FullAdder.vds -m64 -mode batch -messageDb vivado.pb -notrace -source FullAdder.tcl
