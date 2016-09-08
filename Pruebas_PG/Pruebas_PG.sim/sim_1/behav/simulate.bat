@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim SIM_Pattern_Counter_behav -key {Behavioral:sim_1:Functional:SIM_Pattern_Counter} -tclbatch SIM_Pattern_Counter.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
