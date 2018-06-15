@echo off
REM Copyright (c) 2006-2007 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 

call .\bcmenv.bat

%JAVA_HOME%\bin\java com.teradata.bcm.xcore.util.PosterUtil locator xserver.xml shutdown.xml

exit

