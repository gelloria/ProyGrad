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
ExecStep $xv_path/bin/xsim tb_Comparador_behav -key {Behavioral:sim_2:Functional:tb_Comparador} -tclbatch tb_Comparador.tcl -log simulate.log
