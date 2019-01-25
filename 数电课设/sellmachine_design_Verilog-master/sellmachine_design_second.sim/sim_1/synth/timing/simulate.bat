@echo off
set xv_path=E:\\vivado\\Vivado\\2015.2\\bin
call %xv_path%/xsim sellmachine_design_second_tb_time_synth -key {Post-Synthesis:sim_1:Timing:sellmachine_design_second_tb} -tclbatch sellmachine_design_second_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
