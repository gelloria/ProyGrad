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
ExecStep $xv_path/bin/xsim tb_AlgoritmoCorrelacion_time_synth -key {Post-Synthesis:sim_1:Timing:tb_AlgoritmoCorrelacion} -tclbatch tb_AlgoritmoCorrelacion.tcl -log simulate.log
