@echo off
REM Copyright (c) 2006-2009 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 

call bcmenv.bat

echo Populating SYS_VIEW_MAP
%JAVA_HOME%\bin\java com.teradata.xcore.util.SysViewMapPopulator xserver.xml

:end
