@echo off
REM Copyright (c) 2006-2007 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 


call .\bcmenv.bat
start /min .\startLocator.bat
sleep 5 

start /min .\startServices.bat
exit
