@echo off
REM TSS Match

echo Executing TSS Match

:start
set ERR=%ERRORLEVEL%
set ERR1=%ERRORLEVEL%
FOR /F "tokens=1-6 delims=/ " %%i in ('date/t') do set currentdate=%%i-%%j-%%k-%%l
FOR /F "tokens=1-6 delims=: " %%i in ('time/t') do set currenttime=%%i-%%j-%%k
call .\mdmcustomenv-parallel.bat 

copy %TSS_OUTPUT%\TSS_MATCH_INPUT_CRM_GRC.DAT %GRC_WRK%\data\TSS_MATCH_INPUT_CRM_GRC.DAT

copy %TSS_OUTPUT%\TSS_MATCH_INPUT_CRM_grc_bad_winkey1_keys.tbl %TSS_PROJECTS%\grc\match\tables\TSS_MATCH_INPUT_CRM_grc_bad_winkey1_keys.tbl

del %TSS_PROJECTS%\grc\match\tables\bad_winkey1_keys.tbl

ren %TSS_PROJECTS%\grc\match\tables\TSS_MATCH_INPUT_CRM_grc_bad_winkey1_keys.tbl bad_winkey1_keys.tbl

%T_SCRIPTS%\TSSGreeceMatch.cmd %GRC_WRK% > %MDM_CUSTOM_DIR%\log\TSSMatch_GRCq_new.log
set ERR=%ERRORLEVEL%
IF NOT %ERR% == 0 (

echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSMatch_GRCq_new.log
ren %MDM_CUSTOM_DIR%\log\TSSMatch_GRCq_new.log TSSMatch_GRC_%currentdate%_%currenttime%.LOG
exit %ERR%
)

ren %MDM_CUSTOM_DIR%\log\TSSMatch_GRCq_new.log TSSMatch_GRC_%currentdate%_%currenttime%.LOG

:end