@echo off
REM Copyright (c) 2006-2008 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 


echo Setting up Incr Database Schema and Data

:start

call .\bcmenv.bat
set CLASSPATH=.;%CLASSPATH%

echo Started Creating Incr Schema......
call incr_custom_gen_schema.bat
sleep 15

echo Refreshing Static Data......
call incr_custom_static_data_upload.bat
sleep 15

echo Recreating Remaining Tables and Views......
call incr_custom_gen_tables_and_views.bat

echo stopping services
start .\stopall.bat

echo Incr Schema Gen and Static Data creation complete

:end
