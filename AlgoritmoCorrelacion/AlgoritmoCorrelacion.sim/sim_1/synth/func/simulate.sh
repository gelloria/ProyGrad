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
ExecStep $xv_path/bin/xsim tb_AlgoritmoCorrelacion_func_synth -key {Post-Synthesis:sim_1:Functional:tb_AlgoritmoCorrelacion} -tclbatch tb_AlgoritmoCorrelacion.tcl -view /home/gabriel/PG/AlgoritmoCorrelacion/tb_AlgoritmoCorrelacion_behav.wcfg -log simulate.log
