@echo off
REM TSS Match

echo Executing TSS Match

:start
set ERR=%ERRORLEVEL%
set ERR1=%ERRORLEVEL%
FOR /F "tokens=1-6 delims=/ " %%i in ('date/t') do set currentdate=%%i-%%j-%%k-%%l
FOR /F "tokens=1-6 delims=: " %%i in ('time/t') do set currenttime=%%i-%%j-%%k
call .\mdmcustomenv-parallel.bat 

copy %TSS_OUTPUT%\TSS_MATCH_INPUT_CRM_CZE.DAT %CZE_WRK%\data\TSS_MATCH_INPUT_CRM_CZE.DAT

%T_SCRIPTS%\TSSCzechMatch.cmd %CZE_WRK% > %MDM_CUSTOM_DIR%\log\TSSMatch_CZE.log
set ERR=%ERRORLEVEL%
IF NOT %ERR% == 0 (

echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSMatch_CZE.log
ren %MDM_CUSTOM_DIR%\log\TSSMatch_CZE.log TSSMatch_CZE_%currentdate%_%currenttime%.LOG
exit %ERR%
)

ren %MDM_CUSTOM_DIR%\log\TSSMatch_CZE.log TSSMatch_CZE_%currentdate%_%currenttime%.LOG

:end