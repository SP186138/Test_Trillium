@echo off
REM TSS Route and Cleanse

echo Executing TSS Route and Cleanse

:start
set ERR=%ERRORLEVEL%
set ERR1=%ERRORLEVEL%
FOR /F "tokens=1-6 delims=/ " %%i in ('date/t') do set currentdate=%%i-%%j-%%k-%%l
FOR /F "tokens=1-6 delims=: " %%i in ('time/t') do set currenttime=%%i-%%j-%%k
call .\mdmcustomenv-parallel.bat 

copy %TSS_OUTPUT%\TSS_CLEANSE_INPUT_LA.DAT %ROUTER_WRK%\data\ROUTER_INPUT.DAT

call %T_SCRIPTS%\TSSLARouter.cmd > %MDM%\log\TSSLARouter.log

del /F %ROUTER_WRK%\data\TSS_CLEANSE_INPUT_LA.DAT 
del /F %ROUTER_WRK%\data\TSS_CLEANSE_INPUT_ARG.DAT 
del /F %ROUTER_WRK%\data\TSS_CLEANSE_INPUT_CHL.DAT 
del /F %ROUTER_WRK%\data\TSS_CLEANSE_INPUT_MEX.DAT 
Copy/b "%ROUTER_WRK%\data\globrtr_p2_co.prn"+"%ROUTER_WRK%\data\globrtr_p2_jm.prn"+"%ROUTER_WRK%\data\globrtr_p2_pe.prn"+"%ROUTER_WRK%\data\globrtr_p2_ve.prn"+"%ROUTER_WRK%\data\globrtr_p2.prn" "%LAT_WRK%\data\TSS_CLEANSE_INPUT_LA.DAT" > %MDM%\log\TSSRouteCleanse_LA.log
copy %ROUTER_WRK%\data\globrtr_p2_ar.prn %ARG_WRK%\data\TSS_CLEANSE_INPUT_ARG.DAT
copy %ROUTER_WRK%\data\globrtr_p2_cl.prn %CHL_WRK%\data\TSS_CLEANSE_INPUT_CHL.DAT
copy %ROUTER_WRK%\data\globrtr_p2_mx.prn %MEX_WRK%\data\TSS_CLEANSE_INPUT_MEX.DAT

call %T_SCRIPTS%\TSSLatamCleanse.cmd %LAT_WRK% >> %MDM%\log\TSSRouteCleanse_LA.log

call %T_SCRIPTS%\TSSArgentinaCleanse.cmd %ARG_WRK% >> %MDM%\log\TSSRouteCleanse_LA.log

call %T_SCRIPTS%\TSSChileCleanse.cmd %CHL_WRK% >> %MDM%\log\TSSRouteCleanse_LA.log

call %T_SCRIPTS%\TSSMexicoCleanse.cmd %MEX_WRK% >> %MDM%\log\TSSRouteCleanse_LA.log

Copy/b "%LAT_WRK%\data\TSS_WINKEY_OUTPUT_LA.DAT"+"%ARG_WRK%\data\TSS_WINKEY_OUTPUT_ARG.DAT"+"%CHL_WRK%\data\TSS_WINKEY_OUTPUT_CHL.DAT"+"%MEX_WRK%\data\TSS_WINKEY_OUTPUT_MEX.DAT" "%TSS_OUTPUT%\TSS_WINKEY_OUTPUT_LA.DAT" >> %MDM%\log\TSSRouteCleanse_LA.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_LA.LOG TSSRouteCleanse_LA_%currentdate%_%currenttime%.LOG

:end