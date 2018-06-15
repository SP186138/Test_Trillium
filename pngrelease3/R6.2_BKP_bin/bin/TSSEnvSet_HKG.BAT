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

copy/b "%MDM%\etl-scripts-parallel\bin\mdmcustomenv-parallel.bat"+"%PFOURA%\scripts\runProject23.cmd" "%PFOURA%\scripts\TSSGlobalRouter.cmd" >> %MDM%\log\TSSEnvSet_HKG.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_HKG.LOG
set errorlevel=1
exit 1
)

copy/b "%MDM%\etl-scripts-parallel\bin\configbatchset.tbl"+"%PFOURA%\settings\config batch.tbl" "%PFOURA%\settings\config_batch.tbl" >> %MDM%\log\TSSEnvSet_HKG.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_HKG.LOG
set errorlevel=1
exit 1
)

copy/b "%MDM%\etl-scripts-parallel\bin\mdmcustomenv-parallel.bat"+"%PONEZEROSIX%\scripts\runProject2.cmd" "%PONEZEROSIX%\scripts\TSSHongKongCleanse.cmd" >> %MDM%\log\TSSEnvSet_HKG.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_HKG.LOG
set errorlevel=1
exit 1
)

copy/b "%MDM%\etl-scripts-parallel\bin\mdmcustomenv-parallel.bat"+"%PONEZEROSEVEN%\scripts\runProject34.cmd" "%PONEZEROSEVEN%\scripts\TSSHongKongMatch.cmd" >> %MDM%\log\TSSEnvSet_HKG.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_HKG.LOG
set errorlevel=1
exit 1
)

copy/b "%MDM%\etl-scripts-parallel\bin\configbatchset.tbl"+"%PONEZEROSIX%\settings\config batch.tbl" "%PONEZEROSIX%\settings\config_batch.tbl" >> %MDM%\log\TSSEnvSet_HKG.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_HKG.LOG
set errorlevel=1
exit 1
)

copy/b "%MDM%\etl-scripts-parallel\bin\configbatchset.tbl"+"%PONEZEROSEVEN%\settings\config batch.tbl" "%PONEZEROSEVEN%\settings\config_batch.tbl" >> %MDM%\log\TSSEnvSet_HKG.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_HKG.LOG
set errorlevel=1
exit 1
)

