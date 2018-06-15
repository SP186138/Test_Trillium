@ECHO OFF
::........................................
::
:: Generated Batch file for windows
:: 2011/01/03 14:35:36
::
::........................................


::........................................
::
:: User may need to modify the value of TS_QUALITY
:: before running the script on a different machine
::
::........................................

call .\mdmcustomenv-parallel.bat 


copy/b "%MDM%\etl-scripts-parallel\bin\configbatchset.tbl"+"%PFOURN%\settings\config batch.tbl" "%PFOURN%\settings\config_batch.tbl" >> %MDM%\log\TSSEnvSet_BRA.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_BRA.LOG
set errorlevel=1
exit 1
)

copy/b "%MDM%\etl-scripts-parallel\bin\configbatchset.tbl"+"%PFOURONE%\settings\config batch.tbl" "%PFOURONE%\settings\config_batch.tbl" >> %MDM%\log\TSSEnvSet_BRA.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_BRA.LOG
set errorlevel=1
exit 1
)

copy/b "%MDM%\etl-scripts-parallel\bin\configbatchset.tbl"+"%PFOURTWO%\settings\config batch.tbl" "%PFOURTWO%\settings\config_batch.tbl" >> %MDM%\log\TSSEnvSet_BRA.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_BRA.LOG
set errorlevel=1
exit 1
)

copy/b "%MDM%\etl-scripts-parallel\bin\mdmcustomenv-parallel.bat"+"%PFOURONE%\scripts\runProject41.cmd" "%PFOURONE%\scripts\TSSBRACleanse.cmd" >> %MDM%\log\TSSEnvSet_BRA.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_BRA.LOG
set errorlevel=1
exit 1
)

copy/b "%MDM%\etl-scripts-parallel\bin\mdmcustomenv-parallel.bat"+"%PFOURN%\scripts\runProject23.cmd" "%PFOURN%\scripts\TSSGlobalRouter.cmd" >> %MDM%\log\TSSEnvSet_BRA.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_BRA.LOG
set errorlevel=1
exit 1
)

copy/b "%MDM%\etl-scripts-parallel\bin\mdmcustomenv-parallel.bat"+"%PFOURTWO%\scripts\runProject42.cmd" "%PFOURTWO%\scripts\TSSBRAMatch.cmd" >> %MDM%\log\TSSEnvSet_BRA.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_BRA.LOG
set errorlevel=1
exit 1
)

