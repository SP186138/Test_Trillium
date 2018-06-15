@echo off
REM Copyright (c) 2006-2008 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 

:start

call .\bcmenv.bat


echo performing Service Setup
%JAVA_HOME%\bin\java %JAVA_OPTIONS% com.teradata.mcore.mdmSpecGen.MdmSpecGen ./mdm-spec-gen.xml ../../../bin/tddb.keywords
sleep 5 

echo Generating Incr Schema
%JAVA_HOME%\bin\java -DEXECUTION_MODE=INCREMENTAL_SCHEMA_GENERATION_NO_RUN_MODE %JAVA_OPTIONS% com.teradata.xcore.xserver.Xserver xserver.xml bpemeta.xml toolkit.xml  E2E.xml toolkit-output.xml toolkit-version.xml toolkit-input.xml  toolkit-netchange.xml userSecurity.xml messaging.xml dataProfiling.xml dataupload.xml email.xml bpeui.xml hierarchy.xml png.xml png-input.xml png-output.xml png-netchange.xml png-version.xml 

IF ERRORLEVEL 1 (
echo Exiting due to error during schema generation
EXIT
)

echo Recompiling Stored Procedure and Views
%JAVA_HOME%\bin\java %JAVA_OPTIONS% com.teradata.xcore.util.StoredProcCompiler xserver.xml ../../../sql/teradata/MDMBaseSPList.txt

IF ERRORLEVEL 1 (
echo Exiting due to error during stored procedure and views recompilation
EXIT
)

:end
