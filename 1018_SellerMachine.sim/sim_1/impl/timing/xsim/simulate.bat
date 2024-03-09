@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Sat Oct 21 22:08:09 +0800 2023
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim seller_machine_sim_time_impl -key {Post-Implementation:sim_1:Timing:seller_machine_sim} -tclbatch seller_machine_sim.tcl -view D:/Coding/Vivado_workspace/1018_SellerMachine/1018_SellerMachine.sim/seller_machine_sim_behav.wcfg -log simulate.log"
call xsim  seller_machine_sim_time_impl -key {Post-Implementation:sim_1:Timing:seller_machine_sim} -tclbatch seller_machine_sim.tcl -view D:/Coding/Vivado_workspace/1018_SellerMachine/1018_SellerMachine.sim/seller_machine_sim_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
