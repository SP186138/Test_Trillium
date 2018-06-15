@echo off
REM Copyright (c) 2006-2008 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 

:start

call .\bcmenv.bat

echo Generating Publication Objects
call gen_pubobjs.bat
sleep 15

echo starting locator
start /min .\startLocator.bat
sleep 5 

echo starting mdm server
start /min .\startServices.bat

%JAVA_HOME%\bin\java  com.teradata.xcore.util.SocketPoller localhost xserver.xml

echo Refreshing Sys DBC Views.. Posting request ../../../cfg/xservice/toolkit/data/refreshSysViews.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BCM_MASTER ../../../cfg/xservice/toolkit/data/refreshSysViews.xml
sleep 15

echo Uploading Facet Data
%JAVA_HOME%\bin\java com.teradata.bcm.xcore.util.PosterUtil uploadfacet xserver.xml ../cfg/xservice/png/mdm_setup/facets
sleep 30

echo Uploading com/teradata/xservice/userSecurity/data/tk_userSecurityStaticData.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml USER_SECURITY com/teradata/xservice/userSecurity/data/tk_userSecurityStaticData.xml
sleep 30


echo Uploading com/teradata/xservice/userSecurity/data/tk_userActivities.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml USER_SECURITY com/teradata/xservice/userSecurity/data/tk_userActivities.xml
sleep 15


echo Uploading com/teradata/xservice/userSecurity/data/tk_roleActivities.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml USER_SECURITY com/teradata/xservice/userSecurity/data/tk_roleActivities.xml
sleep 15


echo Uploading ../../../cfg/xservice/toolkit/queryforms/tk_uploadForms.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BCM_MASTER ../../../cfg/xservice/toolkit/queryforms/tk_uploadForms.xml
sleep 15


echo Uploading ../../../cfg/xservice/toolkit/staging/input/queryforms/uploadForms.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BCM_INPUT_STAGING ../../../cfg/xservice/toolkit/staging/input/queryforms/uploadForms.xml
sleep 15

echo Uploading ../../../cfg/xservice/toolkit/staging/output/queryforms/uploadForms.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BCM_OUTPUT_STAGING ../../../cfg/xservice/toolkit/staging/output/queryforms/uploadForms.xml
sleep 15

echo Uploading ../../../cfg/xservice/toolkit/staging/version/queryforms/uploadForms.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BCM_VERSION_STAGING ../../../cfg/xservice/toolkit/staging/version/queryforms/uploadForms.xml
sleep 15

echo Uploading ../../../cfg/xservice/toolkit/staging/netchange/queryforms/uploadForms.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BCM_NET_CHANGE ../../../cfg/xservice/toolkit/staging/netchange/queryforms/uploadForms.xml
sleep 15


echo Uploading com/teradata/xservice/userSecurity/queryforms/uploadForms.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml USER_SECURITY com/teradata/xservice/userSecurity/queryforms/uploadForms.xml
sleep 15


echo Uploading com/teradata/xservice/E2E/queryforms/uploadForms.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml E2E com/teradata/xservice/E2E/queryforms/uploadForms.xml
sleep 15

echo Uploading ../../../cfg/xservice/toolkit/staging/output/messaging/uploadMsgSpec.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml MESSAGING ../../../cfg/xservice/toolkit/staging/output/messaging/uploadMsgSpec.xml
sleep 15

echo Uploading com/teradata/xservice/userSecurity/messaging/uploadMsgSpec.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml MESSAGING com/teradata/xservice/userSecurity/messaging/uploadMsgSpec.xml
sleep 15


echo Uploading com/teradata/xservice/E2E/messaging/uploadMsgSpec.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml MESSAGING com/teradata/xservice/E2E/messaging/uploadMsgSpec.xml
sleep 15


echo Uploading com/teradata/xservice/userSecurity/data/setmessagingpreferences.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml USER_SECURITY xservice/userSecurity/data/setmessagingpreferences.xml
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

echo Template and Correlation Load Complete
sleep 15

echo Uploading xserviceE2E\data\log_setting.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml E2E  com/teradata/xservice/E2E/data/log_setting.xml
sleep 15

echo Uploading ../../../cfg/xservice/toolkit/data/metaDataportal.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BPE_META ../../../cfg/xservice/toolkit/data/metaDataportal.xml
sleep 15

echo Uploading com/teradata/xservice/dataprofiling/data/parameters.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver  ../../../cfg/properties/xserver.xml DATA_PROFILING com/teradata/xservice/dataprofiling/data/parameters.xml
sleep 15

echo Uploading com/teradata/xservice/dataprofiling/data/standardTemplateData.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver  ../../../cfg/properties/xserver.xml DATA_PROFILING com/teradata/xservice/dataprofiling/data/standardTemplateData.xml
sleep 15

echo Uploading com/teradata/xservice/E2E/data/addDqRules.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml E2E com/teradata/xservice/E2E/data/addDqRules.xml
sleep 15

echo Uploading com/teradata/xservice/toolkit/data/sql_validation_rules.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BPE_META ../../../cfg/xservice/toolkit/data/sql_validation_rules.xml
sleep 15

echo Uploading com/teradata/xservice/toolkit/data/loadValues.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BCM_MASTER ../../../cfg/xservice/toolkit/data/loadValues.xml
sleep 15

echo Creating RODV Object.. com/teradata/xservice/toolkit/data/create_RODV.xml
%JAVA_HOME%\bin\java com.teradata.xcore.net.Poster xserver xserver.xml BCM_MASTER ../../../cfg/xservice/toolkit/data/create_RODV.xml

echo Toolkit Static Data creation complete

:end
