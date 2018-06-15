@echo off
REM Copyright (c) 2006-2007 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 

call bcmenv.bat
title Locator Service
%JAVA_HOME%\bin\java -Dsun.net.inetaddr.ttl=0 com.teradata.xservice.locator.LocatorService services.xml
exit

