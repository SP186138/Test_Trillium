@echo off
REM Copyright (c) 2006-2008 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 

call bcmenv.bat

echo compiling Stored Procedure
%JAVA_HOME%\bin\java -Dsun.net.inetaddr.ttl=0 com.teradata.xcore.util.StoredProcCompiler xserver.xml customMDMSPList.txt

:end

