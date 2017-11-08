@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto abdd2319b49b4001bbfa2eaff93e5def -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_rotate_behav xil_defaultlib.tb_rotate -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
