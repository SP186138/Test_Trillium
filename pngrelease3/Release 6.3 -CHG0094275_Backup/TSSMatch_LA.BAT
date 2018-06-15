@echo off
REM TSS Match

echo Executing TSS Match

:start
set ERR=%ERRORLEVEL%
set ERR1=%ERRORLEVEL%
FOR /F "tokens=1-6 delims=/ " %%i in ('date/t') do set currentdate=%%i-%%j-%%k-%%l
FOR /F "tokens=1-6 delims=: " %%i in ('time/t') do set currenttime=%%i-%%j-%%k
call .\mdmcustomenv-parallel.bat 

copy %TSS_OUTPUT%\TSS_MATCH_INPUT_CRM_LA.DAT %LAT_WRK%\data\TSS_MATCH_INPUT_CRM_LA.DAT
copy %TSS_OUTPUT%\TSS_MATCH_INPUT_CRM_LA.DAT %ARG_WRK%\data\TSS_MATCH_INPUT_CRM_ARG.DAT
copy %TSS_OUTPUT%\TSS_MATCH_INPUT_CRM_LA.DAT %CHL_WRK%\data\TSS_MATCH_INPUT_CRM_CHL.DAT
copy %TSS_OUTPUT%\TSS_MATCH_INPUT_CRM_LA.DAT %MEX_WRK%\data\TSS_MATCH_INPUT_CRM_MEX.DAT

copy %TSS_OUTPUT%\TSS_MATCH_INPUT_CRM_LA_bad_winkey1_keys.tbl %TSS_PROJECTS%\lat\match\tables\TSS_MATCH_INPUT_CRM_LA_bad_winkey1_keys.tbl

del %TSS_PROJECTS%\lat\match\tables\bad_winkey1_keys.tbl

ren %TSS_PROJECTS%\lat\match\tables\TSS_MATCH_INPUT_CRM_LA_bad_winkey1_keys.tbl bad_winkey1_keys.tbl

copy %TSS_PROJECTS%\lat\match\tables\bad_winkey1_keys.tbl %TSS_PROJECTS%\arg\match\tables\bad_winkey1_keys.tbl
copy %TSS_PROJECTS%\lat\match\tables\bad_winkey1_keys.tbl %TSS_PROJECTS%\chl\match\tables\bad_winkey1_keys.tbl
copy %TSS_PROJECTS%\lat\match\tables\bad_winkey1_keys.tbl %TSS_PROJECTS%\mex\match\tables\bad_winkey1_keys.tbl

call %T_SCRIPTS%\TSSLatamMatch.cmd %LAT_WRK% > %MDM_CUSTOM_DIR%\log\TSSMatch_LA.log
set ERR=%ERRORLEVEL%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Match >> %MDM_CUSTOM_DIR%\log\TSSMatch_LA.log
ren %MDM_CUSTOM_DIR%\log\TSSMatch_LA.LOG TSSMatch_LA_%currentdate%_%currenttime%.LOG
exit %ERR%
)
ren %MDM_CUSTOM_DIR%\log\TSSMatch_LA.LOG TSSMatch_LA_%currentdate%_%currenttime%.LOG

call %T_SCRIPTS%\TSSArgentinaMatch.cmd %ARG_WRK% > %MDM_CUSTOM_DIR%\log\TSSMatch_ARG.log
set ERR=%ERRORLEVEL%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Match >> %MDM_CUSTOM_DIR%\log\TSSMatch_ARG.log
ren %MDM_CUSTOM_DIR%\log\TSSMatch_ARG.LOG TSSMatch_ARG_%currentdate%_%currenttime%.LOG
exit %ERR%
)
ren %MDM_CUSTOM_DIR%\log\TSSMatch_ARG.LOG TSSMatch_ARG_%currentdate%_%currenttime%.LOG

call %T_SCRIPTS%\TSSChileMatch.cmd %CHL_WRK% > %MDM_CUSTOM_DIR%\log\TSSMatch_CHL.log
set ERR=%ERRORLEVEL%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Match >> %MDM_CUSTOM_DIR%\log\TSSMatch_CHL.log
ren %MDM_CUSTOM_DIR%\log\TSSMatch_CHL.LOG TSSMatch_ARG_%currentdate%_%currenttime%.LOG
exit %ERR%
)
ren %MDM_CUSTOM_DIR%\log\TSSMatch_CHL.LOG TSSMatch_CHL_%currentdate%_%currenttime%.LOG

call %T_SCRIPTS%\TSSMexicoMatch.cmd %MEX_WRK% > %MDM_CUSTOM_DIR%\log\TSSMatch_MEX.log
set ERR=%ERRORLEVEL%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Match >> %MDM_CUSTOM_DIR%\log\TSSMatch_MEX.log
ren %MDM_CUSTOM_DIR%\log\TSSMatch_MEX.LOG TSSMatch_MEX_%currentdate%_%currenttime%.LOG
exit %ERR%
)
ren %MDM_CUSTOM_DIR%\log\TSSMatch_MEX.LOG TSSMatch_MEX_%currentdate%_%currenttime%.LOG

Copy/b "%LAT_WRK%\data\TSS_MATCH_OUTPUT_LA.DAT"+"%ARG_WRK%\data\TSS_MATCH_OUTPUT_ARG.DAT"+"%CHL_WRK%\data\TSS_MATCH_OUTPUT_CHL.DAT"+"%MEX_WRK%\data\TSS_MATCH_OUTPUT_MEX.DAT" "%TSS_OUTPUT%\TSS_MATCH_OUTPUT_LA.DAT" > %MDM%\log\TSSMatch_LA.log

:end