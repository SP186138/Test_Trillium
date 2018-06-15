@echo off
REM Copyright (c) 2006-2008 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 

:start

call .\bcmenv.bat

echo Creating Snapshots.. Posting request ../../../cfg/xservice/toolkit/data/createSnapshots.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BCM_MASTER  ..\..\..\cfg\xservice\toolkit\data\createSnapshots.xml
sleep 15

echo Creating Global Temp tables.. Posting request ../../../cfg/xservice/toolkit/data/create_GTT.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BPE_META ../../../cfg/xservice/toolkit/data/create_GTT.xml
sleep 15

echo Creating Authorization views.. Posting request ../../../cfg/xservice/toolkit/data/createAuthView.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BPE_META ../../../cfg/xservice/toolkit/data/createAuthView.xml
sleep 15

echo Refreshing Sys DBC Views.. Posting request ../../../cfg/xservice/toolkit/data/refreshSysViews.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BCM_MASTER ../../../cfg/xservice/toolkit/data/refreshSysViews.xml
sleep 15

echo Refreshing Sys Default Rules.. Posting request ../../../cfg/xservice/toolkit/data/refreshDefaultRules.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BCM_MASTER ../../../cfg/xservice/toolkit/data/refreshDefaultRules.xml
sleep 15

echo Populating SYS_VIEW_MAP
%JAVA_HOME%\bin\java com.teradata.xcore.util.SysViewMapPopulator xserver.xml

:end
