@echo off
REM TSS Match

echo Executing TSS Match

:start
set ERR=%ERRORLEVEL%
set ERR1=%ERRORLEVEL%
FOR /F "tokens=1-6 delims=/ " %%i in ('date/t') do set currentdate=%%i-%%j-%%k-%%l
FOR /F "tokens=1-6 delims=: " %%i in ('time/t') do set currenttime=%%i-%%j-%%k
call .\mdmcustomenv-parallel.bat 

copy %TSS_OUTPUT%\TSS_MATCH_INPUT_CRM_BRA.DAT %BRA_WRK%\data\TSS_MATCH_INPUT_CRM_BRA.DAT

copy %TSS_OUTPUT%\TSS_MATCH_INPUT_CRM_bra_bad_winkey1_keys.tbl %TSS_PROJECTS%\bra\match\tables\TSS_MATCH_INPUT_CRM_bra_bad_winkey1_keys.tbl

del %TSS_PROJECTS%\bra\match\tables\bad_winkey1_keys.tbl

ren %TSS_PROJECTS%\bra\match\tables\TSS_MATCH_INPUT_CRM_bra_bad_winkey1_keys.tbl bad_winkey1_keys.tbl

%T_SCRIPTS%\TSSBrazilMatch.cmd %BRA_WRK% > %MDM_CUSTOM_DIR%\log\TSSMatch_BRA.log
set ERR=%ERRORLEVEL%
IF NOT %ERR% == 0 (

echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSMatch_BRA.log
ren %MDM_CUSTOM_DIR%\log\TSSMatch_BRA.LOG TSSMatch_BRA_%currentdate%_%currenttime%.LOG
exit %ERR%
)

ren %MDM_CUSTOM_DIR%\log\TSSMatch_BRA.LOG TSSMatch_BRA_%currentdate%_%currenttime%.LOG

:end