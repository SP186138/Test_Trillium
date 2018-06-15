@echo off

REM SCRIPT:               Consumer Information.BTEQ 
REM DESCRIPTION:          This script validates the records received from ETL Staging.
REM DEPENDENCY:           
REM INPUT:                ETL Staging
REM OUTPUT:               MST Staging
REM ERRORS:
REM SPECIAL INSTRUCTIONS:
REM CHANGE LOG:
REM VERSION              DATE                 AUTHOR                          CHANGES
REM 1.00                 01/21/2011           TERADATA                        INITIAL VERSION

echo Executing INPUT LOAD

:start

call .\mdmcustomenv.bat 

set ETLDB="/c:%ETL_DB%"

set CONSUMERVALIDATIONBTEQ="/d:%CONSUMER_VALIDATION_BTEQ%"

set LOGONFILE="/e:%LOGON_FILE%"

set DATABASENAME="/f:%MST_DB%"

set MASTERDB="/g:%ETL_CTRL_DB%"

set DBNAME="/h:%MASTER_DB%"

set EMAIL="/i:%EMAIL_ADDRESS%"

set POSTL="/j:%POSTL_ADDRESS%"

set PHONE="/k:%PHONE_ADDRESS%"

cscript %MDM_CUSTOM_DIR%\bin\CONSUMER_VALIDATION.vbs %ETLDB% %CONSUMERVALIDATIONBTEQ% %LOGONFILE% %DATABASENAME% %MASTERDB% %DBNAME% %EMAIL% %POSTL% %PHONE%> %MDM_CUSTOM_DIR%\log\CONSUMER_INFORMATION_LOG.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during validation load >> %MDM_CUSTOM_DIR%\log\CONSUMER_INFORMATION_LOG.LOG
set errorlevel=1
exit 1
)

bteq < %CONSUMER_VALIDATION_BTEQ% >> %MDM_CUSTOM_DIR%\log\CONSUMER_INFORMATION_LOG.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during validation load >> %MDM_CUSTOM_DIR%\log\CONSUMER_INFORMATION_LOG.LOG
set errorlevel=1
exit 1
)

set ETLDB="/c:%ETL_DB%"

set CONSUMERERRORMOVEBTEQ="/d:%CONSUMER_ERRORMOVE_BTEQ%"

set LOGONFILE="/e:%LOGON_FILE%"

set DATABASENAME="/f:%MST_DB%"

cscript %MDM_CUSTOM_DIR%\bin\CONSUMER_VALIDATION.vbs %ETLDB% %CONSUMERERRORMOVEBTEQ% %LOGONFILE% %DATABASENAME% %MASTERDB% %DBNAME% >> %MDM_CUSTOM_DIR%\log\CONSUMER_INFORMATION_LOG.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during error table loads >> %MDM_CUSTOM_DIR%\log\CONSUMER_INFORMATION_LOG.LOG
set errorlevel=1
exit 1
)

bteq < %CONSUMER_ERRORMOVE_BTEQ% >> %MDM_CUSTOM_DIR%\log\CONSUMER_INFORMATION_LOG.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during error table loads >> %MDM_CUSTOM_DIR%\log\CONSUMER_INFORMATION_LOG.LOG
set errorlevel=1
exit 1
)

:end
