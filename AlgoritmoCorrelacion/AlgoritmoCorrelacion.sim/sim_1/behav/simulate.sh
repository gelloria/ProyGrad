#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2015.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim tb_shiftRegister_behav -key {Behavioral:sim_1:Functional:tb_shiftRegister} -tclbatch tb_shiftRegister.tcl -view /home/gabriel/PG/AlgoritmoCorrelacion/tb_shiftRegister_behav1.wcfg -log simulate.log
