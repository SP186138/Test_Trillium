@echo off
REM Copyright (c) 2006-2007 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 


call .\bcmenv.bat
title MDM Server
%JAVA_HOME%\bin\java %JAVA_OPTIONS% com.teradata.xcore.xserver.Xserver xserver.xml bpemeta.xml toolkit.xml toolkit-output.xml toolkit-version.xml toolkit-input.xml userSecurity.xml messaging.xml validation.xml toolkit-netchange.xml E2E.xml dataProfiling.xml dataupload.xml email.xml bpeui.xml timersink.xml hierarchy.xml png.xml png-input.xml png-output.xml png-netchange.xml png-version.xml 
pause
exit
