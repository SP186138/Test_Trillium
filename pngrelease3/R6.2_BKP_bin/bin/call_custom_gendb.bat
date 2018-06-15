
@echo off
REM Copyright (c) 2006-2007 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 


echo Calling custom_gendb.bat

call .\custom_gendb.bat > ..\log\custom_gendb.log
sleep 60

echo Stopping all services
start .\stopAll.bat
