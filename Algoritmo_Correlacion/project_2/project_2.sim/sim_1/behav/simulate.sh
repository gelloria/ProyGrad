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
ExecStep $xv_path/bin/xsim SimCorrelacion_behav -key {Behavioral:sim_1:Functional:SimCorrelacion} -tclbatch SimCorrelacion.tcl -view /home/gabriel/project_2/project_2.srcs/sim_1/imports/project_1/SimCorrelacion_behav.wcfg -log simulate.log
