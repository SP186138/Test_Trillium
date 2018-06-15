@echo off
REM TSS Match

echo Executing TSS Match

:start
set ERR=%ERRORLEVEL%
set ERR1=%ERRORLEVEL%
FOR /F "tokens=1-6 delims=/ " %%i in ('date/t') do set currentdate=%%i-%%j-%%k-%%l
FOR /F "tokens=1-6 delims=: " %%i in ('time/t') do set currenttime=%%i-%%j-%%k
call .\mdmcustomenv-parallel.bat 

copy %TSS_OUTPUT%\TSS_MATCH_INPUT_CRM_AFR.DAT %AFR_WRK%\data\TSS_MATCH_INPUT_CRM_AFR.DAT

%T_SCRIPTS%\TSSAfricaMatch.cmd %AFR_WRK% > %MDM_CUSTOM_DIR%\log\TSSMatch_AFR.log
set ERR=%ERRORLEVEL%
IF NOT %ERR% == 0 (

echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSMatch_AFR.log
ren %MDM_CUSTOM_DIR%\log\TSSMatch_AFR.log TSSMatch_AFR_%currentdate%_%currenttime%.LOG
exit %ERR%
)

ren %MDM_CUSTOM_DIR%\log\TSSMatch_AFR.log TSSMatch_AFR_%currentdate%_%currenttime%.LOG

:end