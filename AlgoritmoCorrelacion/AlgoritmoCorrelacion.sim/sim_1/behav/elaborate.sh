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
ExecStep $xv_path/bin/xelab -wto 419dddb1f1ad44b882a6b3e2abc42a8f -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot tb_AlgoritmoCorrelacion_behav xil_defaultlib.tb_AlgoritmoCorrelacion xil_defaultlib.glbl -log elaborate.log
