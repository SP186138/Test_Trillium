@echo off
REM TSS Match

echo Executing TSS Match

:start
set ERR=%ERRORLEVEL%
set ERR1=%ERRORLEVEL%
FOR /F "tokens=1-6 delims=/ " %%i in ('date/t') do set currentdate=%%i-%%j-%%k-%%l
FOR /F "tokens=1-6 delims=: " %%i in ('time/t') do set currenttime=%%i-%%j-%%k
call .\mdmcustomenv-parallel.bat 

copy %TSS_OUTPUT%\TSS_MATCH_INPUT_CRM_NZL.DAT %NZL_WRK%\data\TSS_MATCH_INPUT_CRM_NZL.DAT

copy %TSS_OUTPUT%\TSS_MATCH_INPUT_CRM_nzl_bad_winkey1_keys.tbl %TSS_PROJECTS%\nzl\match\tables\TSS_MATCH_INPUT_CRM_nzl_bad_winkey1_keys.tbl

del %TSS_PROJECTS%\nzl\match\tables\bad_winkey1_keys.tbl

ren %TSS_PROJECTS%\nzl\match\tables\TSS_MATCH_INPUT_CRM_nzl_bad_winkey1_keys.tbl bad_winkey1_keys.tbl

%T_SCRIPTS%\TSSNewZealandMatch.cmd %NZL_WRK% > %MDM_CUSTOM_DIR%\log\TSSMatch_NZL.log
set ERR=%ERRORLEVEL%
IF NOT %ERR% == 0 (

echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSMatch_NZL.log
ren %MDM_CUSTOM_DIR%\log\TSSMatch_NZL.LOG TSSMatch_NZL_%currentdate%_%currenttime%.LOG
exit %ERR%
)

ren %MDM_CUSTOM_DIR%\log\TSSMatch_NZL.LOG TSSMatch_NZL_%currentdate%_%currenttime%.LOG

:end