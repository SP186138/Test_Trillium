@echo off
REM Copyright (c) 2006-2007 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 

call bcmenv.bat

%JAVA_HOME%\bin\java -DEXECUTION_MODE=PUBLICATION_OBJECT_GENERATOR %JAVA_OPTIONS% com.teradata.xcore.xserver.Xserver xserver.xml bpemeta.xml toolkit.xml toolkit-output.xml toolkit-version.xml toolkit-input.xml userSecurity.xml messaging.xml toolkit-netchange.xml E2E.xml dataProfiling.xml dataupload.xml email.xml bpeui.xml png.xml png-input.xml png-output.xml png-netchange.xml png-version.xml 

:end


 