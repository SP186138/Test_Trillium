@echo off
REM TSS Match

echo Executing TSS Match

:start
set ERR=%ERRORLEVEL%
set ERR1=%ERRORLEVEL%
FOR /F "tokens=1-6 delims=/ " %%i in ('date/t') do set currentdate=%%i-%%j-%%k-%%l
FOR /F "tokens=1-6 delims=: " %%i in ('time/t') do set currenttime=%%i-%%j-%%k
call .\mdmcustomenv-parallel.bat 

copy %TSS_OUTPUT%\TSS_MATCH_INPUT_CRM_IRL.DAT %IRL_WRK%\data\TSS_MATCH_INPUT_CRM_IRL.DAT

copy %TSS_OUTPUT%\TSS_MATCH_INPUT_CRM_irl_bad_winkey1_keys.tbl %TSS_PROJECTS%\irl\match\tables\TSS_MATCH_INPUT_CRM_irl_bad_winkey1_keys.tbl

del %TSS_PROJECTS%\irl\match\tables\bad_winkey1_keys.tbl

ren %TSS_PROJECTS%\irl\match\tables\TSS_MATCH_INPUT_CRM_irl_bad_winkey1_keys.tbl bad_winkey1_keys.tbl

%T_SCRIPTS%\TSSIrelandMatch.cmd %IRL_WRK% > %MDM_CUSTOM_DIR%\log\TSSMatch_IRLq_new.log
set ERR=%ERRORLEVEL%
IF NOT %ERR% == 0 (

echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSMatch_IRLq_new.log
ren %MDM_CUSTOM_DIR%\log\TSSMatch_IRLq_new.log TSSMatch_IRL_%currentdate%_%currenttime%.LOG
exit %ERR%
)

ren %MDM_CUSTOM_DIR%\log\TSSMatch_IRLq_new.log TSSMatch_IRL_%currentdate%_%currenttime%.LOG

:end