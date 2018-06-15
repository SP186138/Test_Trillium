@echo off
REM Copyright (c) 2006-2007 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 


call .\bcmenv.bat
title MDM Server
%JAVA_HOME%\bin\java %JAVA_OPTIONS% com.teradata.xcore.xserver.Xserver xserver.xml Trillium.xml
pause
exit
