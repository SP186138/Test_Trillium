@echo off
REM Copyright (c) 2006-2007 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 

echo "<!--************ Refreshing/Updating Business Rules ************-->"

:start
call .\bcmenv.bat
set CLASSPATH=.;%CLASSPATH%

echo Uploading ..\..\..\cfg\xservice\toolkit\data\refreshBusinessRules.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BPE_META ..\..\..\cfg\xservice\toolkit\data\refreshBusinessRules.xml
pause
exit
