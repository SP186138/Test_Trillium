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


copy/b "%MDM%\etl-scripts-parallel\bin\configbatchset.tbl"+"%PFOURM%\settings\config batch.tbl" "%PFOURM%\settings\config_batch.tbl" >> %MDM%\log\TSSEnvSet_USA.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_USA.LOG
set errorlevel=1
exit 1
)

copy/b "%MDM%\etl-scripts-parallel\bin\configbatchset.tbl"+"%PTHREEEIGHT%\settings\config batch.tbl" "%PTHREEEIGHT%\settings\config_batch.tbl" >> %MDM%\log\TSSEnvSet_USA.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_USA.LOG
set errorlevel=1
exit 1
)

copy/b "%MDM%\etl-scripts-parallel\bin\configbatchset.tbl"+"%PTHREENINE%\settings\config batch.tbl" "%PTHREENINE%\settings\config_batch.tbl" >> %MDM%\log\TSSEnvSet_USA.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_USA.LOG
set errorlevel=1
exit 1
)

copy/b "%MDM%\etl-scripts-parallel\bin\mdmcustomenv-parallel.bat"+"%PTHREEEIGHT%\scripts\runProject38.cmd" "%PTHREEEIGHT%\scripts\TSSUSACleanse.cmd" >> %MDM%\log\TSSEnvSet_USA.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_USA.LOG
set errorlevel=1
exit 1
)

copy/b "%MDM%\etl-scripts-parallel\bin\mdmcustomenv-parallel.bat"+"%PFOURM%\scripts\runProject23.cmd" "%PFOURM%\scripts\TSSGlobalRouter.cmd" >> %MDM%\log\TSSEnvSet_USA.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_USA.LOG
set errorlevel=1
exit 1
)

copy/b "%MDM%\etl-scripts-parallel\bin\mdmcustomenv-parallel.bat"+"%PTHREENINE%\scripts\runProject39.cmd" "%PTHREENINE%\scripts\TSSUSAMatch.cmd" >> %MDM%\log\TSSEnvSet_USA.LOG

IF ERRORLEVEL 1 (
echo Exiting due to error during env set >> %MDM_CUSTOM_DIR%\log\TSSEnvSet_USA.LOG
set errorlevel=1
exit 1
)

