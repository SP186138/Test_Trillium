
@echo off
REM Copyright (c) 2006-2007 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 


echo Calling loadRolledupData.bat
call .\rollupData.bat > ..\log\rolledupData.log
sleep 60

echo stopping all services
start .\stopAll.bat