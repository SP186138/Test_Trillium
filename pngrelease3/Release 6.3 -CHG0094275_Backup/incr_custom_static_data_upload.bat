@echo off
REM Copyright (c) 2006-2008 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 

:start

call .\bcmenv.bat

echo Generating Publication Objects
call gen_pubobjs.bat
sleep 15

start .\startAll.bat
%JAVA_HOME%\bin\java com.teradata.xcore.util.SocketPoller localhost xserver.xml

echo Refreshing Sys DBC Views.. Posting request ../../../cfg/xservice/toolkit/data/refreshSysViews.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BCM_MASTER ../../../cfg/xservice/toolkit/data/refreshSysViews.xml
sleep 15

echo Cleanup Metadata entries for ISG
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BPE_META ../../../cfg/xservice/toolkit/mdm_setup/MetadataCleanup.xml
sleep 15

start .\stopall.bat
sleep 30
REM restarting server to refresh meta cache

start .\startAll.bat
%JAVA_HOME%\bin\java com.teradata.xcore.util.SocketPoller localhost xserver.xml

echo Uploading Facet Data
%JAVA_HOME%\bin\java com.teradata.bcm.xcore.util.PosterUtil uploadfacet xserver.xml ../cfg/xservice/png/mdm_setup/facets
sleep 15

echo Generate and Upload new activity list
echo Uploading com/teradata/xservice/userSecurity/data/tk_userActivities.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml USER_SECURITY com/teradata/xservice/userSecurity/data/tk_incr_userActivities.xml
sleep 15

echo Uploading templates and correlation.xml

echo Uploading Error Templates
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml DATAUPLOAD mdm_setup\error_templates.xml
sleep 15

echo Uploading Entity Templates
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml DATAUPLOAD mdm_setup\entity_templates.xml
sleep 15

echo Uploading mdm_setup\correlation.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml E2E  mdm_setup\correlation.xml
sleep 30

echo Incr Template and Correlation Load Complete

echo Uploading ../../../cfg/xservice/toolkit/data/metaDataportal.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BPE_META ../../../cfg/xservice/toolkit/data/metaDataportal.xml
sleep 15

echo Uploading com/teradata/xservice/toolkit/data/sql_validation_rules.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BPE_META ../../../cfg/xservice/toolkit/data/sql_validation_rules.xml
sleep 15

echo Uploading com/teradata/xservice/toolkit/data/incrLoadValues.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BCM_MASTER ../../../cfg/xservice/toolkit/data/incrLoadValues.xml
sleep 15

echo Creating RODV Object.. com/teradata/xservice/toolkit/data/create_RODV.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BCM_MASTER ../../../cfg/xservice/toolkit/data/create_RODV.xml

echo Toolkit Static Data Updated
:end
