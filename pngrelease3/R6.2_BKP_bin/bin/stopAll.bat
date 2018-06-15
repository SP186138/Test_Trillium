@echo off
REM Copyright (c) 2006-2007 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 


call .\bcmenv.bat

start /min .\stopServices.bat
sleep 5

start /min .\stopLocator.bat
sleep 5

echo services stopped
exit
