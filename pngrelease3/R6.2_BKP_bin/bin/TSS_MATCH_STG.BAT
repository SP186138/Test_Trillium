@echo off
REM TSS Import

REM SCRIPT:               CNSMR_TSS_MATCH_STG.FLD 
REM DESCRIPTION:          This script loads the TRILLIUM OUTPUT table from the file that is given by Trillium
REM DEPENDENCY:           TRILLIUM MATCH SCRIPT
REM INPUT:                TRILLIUM OUTPUT FILE
REM OUTPUT:               TRILLIUM OUTPUT
REM ERRORS:
REM SPECIAL INSTRUCTIONS:
REM CHANGE LOG:
REM VERSION              DATE                 AUTHOR                          CHANGES
REM 1.00                 01/21/2011           TERADATA                        INITIAL VERSION


echo Executing TSS Import

:start

call .\mdmcustomenv.bat 

set TSSMATCHOUTPUT="/c:%TSS_MATCH_OUTPUT%"

set LOGONFILE="/e:%LOGON_FILE%"

set DATABASENAME="/f:%MASTER_DB%"

set CNSMRTSSMATCHCLEANUPBTEQ="/d:%CNSMR_TSS_MATCH_CLEANUP_BTEQ%"

set MSTDB="/g:%MST_DB%"

REM cscript %MDM_CUSTOM_DIR%\bin\CNSMR_TSS_MATCH_STG.vbs %TSSMATCHOUTPUT% %CNSMRTSSMATCHCLEANUPBTEQ% %LOGONFILE% %DATABASENAME% %MSTDB% > %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT_VBS.LOG

REM IF ERRORLEVEL 1 (
REM echo Exiting due to error during TRILLIUM OUTPUT cleanup >> %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT.LOG
REM set errorlevel=1
REM exit 1
REM )

REM bteq < %CNSMR_TSS_MATCH_CLEANUP_BTEQ% > %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT.LOG

REM IF ERRORLEVEL 1 (
REM echo Exiting due to error during TRILLIUM OUTPUT cleanup >> %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT.LOG
REM set errorlevel=1
REM exit 1
REM )

set CNSMRTSSMATCHSTGFLD="/d:%CNSMR_TSS_MATCH_STG_FLD%"

cscript %MDM_CUSTOM_DIR%\bin\CNSMR_TSS_MATCH_STG.vbs %TSSMATCHOUTPUT% %CNSMRTSSMATCHSTGFLD% %LOGONFILE% %DATABASENAME% %MSTDB% > %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT_VBS.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during fast load > %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT.LOG
set errorlevel=1
exit 1
)

fastload -c UTF8 < %CNSMR_TSS_MATCH_STG_FLD% >> %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during fast load >> %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT.LOG
set errorlevel=1
exit 1
)

set CNSMRTSSMATCHSTGBTEQ="/d:%CNSMR_TSS_MATCH_STG_BTEQ%"

cscript %MDM_CUSTOM_DIR%\bin\CNSMR_TSS_MATCH_STG.vbs %TSSMATCHOUTPUT% %CNSMRTSSMATCHSTGBTEQ% %LOGONFILE% %DATABASENAME% >> %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT_VBS.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during TRILLIUM OUTPUT update >> %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT.LOG
set errorlevel=1
exit 1
)

bteq < %CNSMR_TSS_MATCH_STG_BTEQ% >> %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during TRILLIUM OUTPUT update >> %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT.LOG
set errorlevel=1
exit 1
)

FOR /F "tokens=1-6 delims=/ " %%i in ('date/t') do set currentdate=%%i-%%j-%%k-%%l
IF ERRORLEVEL 1 (
echo Exiting due to error during TRILLIUM OUTPUT update >> %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT.LOG
set errorlevel=1
exit 1
)
FOR /F "tokens=1-6 delims=: " %%i in ('time/t') do set currenttime=%%i-%%j-%%k
IF ERRORLEVEL 1 (
echo Exiting due to error during TRILLIUM OUTPUT update >> %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT.LOG
set errorlevel=1
exit 1
)
copy %TSS_MATCH_OUTPUT% %MDM_CUSTOM_DIR%\archive\TSS_MATCH_OUTPUT_%currentdate%_%currenttime%.DAT >> %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT.LOG
IF ERRORLEVEL 1 (
echo Exiting due to error during TRILLIUM OUTPUT update >> %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT.LOG
set errorlevel=1
exit 1
)
compress -z %MDM_CUSTOM_DIR%\archive\TSS_MATCH_OUTPUT_%currentdate%_%currenttime%.DAT %MDM_CUSTOM_DIR%\archive\TSS_MATCH_OUTPUT_%currentdate%_%currenttime%.cmp >> %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT.LOG
IF ERRORLEVEL 1 (
echo Exiting due to error during TRILLIUM OUTPUT update >> %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT.LOG
set errorlevel=1
exit 1
)
del %TSS_MATCH_OUTPUT%
IF ERRORLEVEL 1 (
echo Exiting due to error during TRILLIUM OUTPUT update >> %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT.LOG
set errorlevel=1
exit 1
)
del %MDM_CUSTOM_DIR%\archive\TSS_MATCH_OUTPUT_%currentdate%_%currenttime%.DAT
IF ERRORLEVEL 1 (
echo Exiting due to error during TRILLIUM OUTPUT update >> %MDM_CUSTOM_DIR%\log\TSS_MATCH_OUTPUT.LOG
set errorlevel=1
exit 1
)

:end