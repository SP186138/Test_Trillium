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


copy/b "%MDM%\etl-scripts-parallel\bin\configbatchset.tbl"+"%PFORTYFOUR%\settings\config batch.tbl" "%PFORTYFOUR%\settings\config_batch.tbl" >> %MDM%\log\TSSEnvSet_LA.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_LA.LOG
set errorlevel=1
exit 1
)

copy/b "%MDM%\etl-scripts-parallel\bin\configbatchset.tbl"+"%PFOURFIVE%\settings\config batch.tbl" "%PFOURFIVE%\settings\config_batch.tbl" >> %MDM%\log\TSSEnvSet_LA.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_LA.LOG
set errorlevel=1
exit 1
)

copy/b "%MDM%\etl-scripts-parallel\bin\mdmcustomenv-parallel.bat"+"%PFORTYFOUR%\scripts\runProject44.cmd" "%PFORTYFOUR%\scripts\TSSLACleanse.cmd" >> %MDM%\log\TSSEnvSet_LA.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_LA.LOG
set errorlevel=1
exit 1
)

copy/b "%MDM%\etl-scripts-parallel\bin\mdmcustomenv-parallel.bat"+"%PFOURFIVE%\scripts\runProject45.cmd" "%PFOURFIVE%\scripts\TSSLAMatch.cmd" >> %MDM%\log\TSSEnvSet_LA.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_LA.LOG
set errorlevel=1
exit 1
)

