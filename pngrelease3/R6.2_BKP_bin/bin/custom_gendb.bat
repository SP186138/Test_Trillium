
@echo off
REM Copyright (c) 2006-2008 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 


echo Setting up Database Schema and Data

:start
call .\bcmenv.bat
set CLASSPATH=.;%CLASSPATH%

echo Adding Db Parameters to Properties Files
for %%i in ( ../../../cfg/properties/xserver.xml  ../../../cfg/properties/xserverweb.xml) do %JAVA_HOME%\bin\java com.teradata.xcore.util.DbpropertyUpdate %%i


REM REM echo Dropping Teradata tables
REM cd ..\..\..\sql\teradata
REM cd ..\..\bin
:start_nodrop

echo Started Creating Schema......
call custom_gen_schema.bat
sleep 15

echo Uploading Static Data to the Database......
call custom_static_data_upload.bat
sleep 15

echo Creating Remaining Tables and Views......
call custom_gen_tables_and_views.bat

REM echo stopping services
REM start .\stopall.bat

echo Database Schema Generation and Static Data Population Completed Successfully

:end
