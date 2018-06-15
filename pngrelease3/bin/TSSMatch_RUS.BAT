@echo off
REM TSS Match

echo Executing TSS Match

:start
set ERR=%ERRORLEVEL%
set ERR1=%ERRORLEVEL%
FOR /F "tokens=1-6 delims=/ " %%i in ('date/t') do set currentdate=%%i-%%j-%%k-%%l
FOR /F "tokens=1-6 delims=: " %%i in ('time/t') do set currenttime=%%i-%%j-%%k
call .\mdmcustomenv-parallel.bat 

copy %TSS_OUTPUT%\TSS_MATCH_INPUT_CRM_RUS.DAT %RUS_WRK%\data\TSS_MATCH_INPUT_CRM_RUS.DAT

copy %TSS_OUTPUT%\TSS_MATCH_INPUT_CRM_rus_bad_winkey1_keys.tbl %TSS_PROJECTS%\rus\match\tables\TSS_MATCH_INPUT_CRM_rus_bad_winkey1_keys.tbl

del %TSS_PROJECTS%\rus\match\tables\bad_winkey1_keys.tbl

ren %TSS_PROJECTS%\rus\match\tables\TSS_MATCH_INPUT_CRM_rus_bad_winkey1_keys.tbl bad_winkey1_keys.tbl

%T_SCRIPTS%\TSSRussiaMatch.cmd %RUS_WRK% > %MDM_CUSTOM_DIR%\log\TSSMatch_RUSq_new.log
set ERR=%ERRORLEVEL%
IF NOT %ERR% == 0 (

echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSMatch_RUSq_new.log
ren %MDM_CUSTOM_DIR%\log\TSSMatch_RUSq_new.log TSSMatch_RUS_%currentdate%_%currenttime%.LOG
exit %ERR%
)

ren %MDM_CUSTOM_DIR%\log\TSSMatch_RUSq_new.log TSSMatch_RUS_%currentdate%_%currenttime%.LOG

:end