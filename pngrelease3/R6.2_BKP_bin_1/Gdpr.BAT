@echo off
REM TSS Route and Cleanse

echo Executing TSS Route and Cleanse

:start
FOR /F "tokens=1-6 delims=/ " %%i in ('date/t') do set currentdate=%%i-%%j-%%k-%%l
FOR /F "tokens=1-6 delims=: " %%i in ('time/t') do set currenttime=%%i-%%j-%%k
call .\mdmcustomenv-parallelGdpr.bat 

copy %TSS_OUTPUT%\TSS_GDPR_INPUT.DAT %ROUTER_WRK%\data\ROUTER_INPUT.DAT
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
call %T_SCRIPTS%\TSSRouterGdpr.cmd > %MDM%\log\TSSGdprRouter.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)

del /F %US_WRK%\data\TSS_CLEANSE_INPUT_USA.DAT 
del /F %BRA_WRK%\data\TSS_CLEANSE_INPUT_BRA.DAT
del /F %LAT_WRK%\data\TSS_CLEANSE_INPUT_LA.DAT 
del /F %CAN_WRK%\data\TSS_CLEANSE_INPUT_CAN.DAT
del /F %ARG_WRK%\data\TSS_CLEANSE_INPUT_ARG.DAT
del /F %CHL_WRK%\data\TSS_CLEANSE_INPUT_CHL.DAT 
del /F %MEX_WRK%\data\TSS_CLEANSE_INPUT_MEX.DAT
del /F %ITA_WRK%\data\TSS_CLEANSE_INPUT_ITA.DAT
del /F %GBR_WRK%\data\TSS_CLEANSE_INPUT_GBR.DAT 
del /F %GRC_WRK%\data\TSS_CLEANSE_INPUT_GRC.DAT
del /F %ESP_WRK%\data\TSS_CLEANSE_INPUT_ESP.DAT 
del /F %FRA_WRK%\data\TSS_CLEANSE_INPUT_FRA.DAT
del /F %DEU_WRK%\data\TSS_CLEANSE_INPUT_DEU.DAT 
del /F %AUT_WRK%\data\TSS_CLEANSE_INPUT_AUT.DAT
del /F %CHE_WRK%\data\TSS_CLEANSE_INPUT_CHE.DAT 
del /F %NLD_WRK%\data\TSS_CLEANSE_INPUT_NLD.DAT
del /F %BEL_WRK%\data\TSS_CLEANSE_INPUT_BEL.DAT 
del /F %DNK_WRK%\data\TSS_CLEANSE_INPUT_DNK.DAT
del /F %SWE_WRK%\data\TSS_CLEANSE_INPUT_SWE.DAT 
del /F %NOR_WRK%\data\TSS_CLEANSE_INPUT_NOR.DAT
del /F %FIN_WRK%\data\TSS_CLEANSE_INPUT_FIN.DAT 
del /F %IRL_WRK%\data\TSS_CLEANSE_INPUT_IRL.DAT
del /F %PRT_WRK%\data\TSS_CLEANSE_INPUT_PRT.DAT

Copy/b "%ROUTER_WRK%\data\globrtr_p2_co.prn"+"%ROUTER_WRK%\data\globrtr_p2_jm.prn"+"%ROUTER_WRK%\data\globrtr_p2_pe.prn"+"%ROUTER_WRK%\data\globrtr_p2_ve.prn"+"%ROUTER_WRK%\data\globrtr_p2.prn" "%ROUTER_WRK%\data\globrtr_p2_la.dat" > %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_ar.prn %ARG_WRK%\data\TSS_CLEANSE_INPUT_ARG.DAT
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_cl.prn %CHL_WRK%\data\TSS_CLEANSE_INPUT_CHL.DAT
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_mx.prn %MEX_WRK%\data\TSS_CLEANSE_INPUT_MEX.DAT
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_us.prn %US_WRK%\data\TSS_CLEANSE_INPUT_USA.DAT 
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_br.prn %BRA_WRK%\data\TSS_CLEANSE_INPUT_BRA.DAT
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_la.dat %LAT_WRK%\data\TSS_CLEANSE_INPUT_LA.DAT 
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_ca.prn %CAN_WRK%\data\TSS_CLEANSE_INPUT_CAN.DAT
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_it.prn %ITA_WRK%\data\TSS_CLEANSE_INPUT_ITA.DAT
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_gb.prn %GBR_WRK%\data\TSS_CLEANSE_INPUT_GBR.DAT 
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_gr.prn %GRC_WRK%\data\TSS_CLEANSE_INPUT_GRC.DAT
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_es.prn %ESP_WRK%\data\TSS_CLEANSE_INPUT_ESP.DAT 
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_fr.prn %FRA_WRK%\data\TSS_CLEANSE_INPUT_FRA.DAT
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_de.prn %DEU_WRK%\data\TSS_CLEANSE_INPUT_DEU.DAT 
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_at.prn %AUT_WRK%\data\TSS_CLEANSE_INPUT_AUT.DAT
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_ch.prn %CHE_WRK%\data\TSS_CLEANSE_INPUT_CHE.DAT 
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_nl.prn %NLD_WRK%\data\TSS_CLEANSE_INPUT_NLD.DAT
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_be.prn %BEL_WRK%\data\TSS_CLEANSE_INPUT_BEL.DAT 
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_dk.prn %DNK_WRK%\data\TSS_CLEANSE_INPUT_DNK.DAT
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_se.prn %SWE_WRK%\data\TSS_CLEANSE_INPUT_SWE.DAT 
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_no.prn %NOR_WRK%\data\TSS_CLEANSE_INPUT_NOR.DAT
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_fi.prn %FIN_WRK%\data\TSS_CLEANSE_INPUT_FIN.DAT 
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_ie.prn %IRL_WRK%\data\TSS_CLEANSE_INPUT_IRL.DAT
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
copy %ROUTER_WRK%\data\globrtr_p2_pt.prn %PRT_WRK%\data\TSS_CLEANSE_INPUT_PRT.DAT
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)

 call %T_SCRIPTS%\TSSLatamCleanseGdpr.cmd %LAT_WRK% > %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSArgentinaCleanseGdpr.cmd %ARG_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSChileCleanseGdpr.cmd %CHL_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSMexicoCleanseGdpr.cmd %MEX_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSUSACleanseGdpr.cmd %USA_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSBrazilCleanseGdpr.cmd %BRA_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSCanadaCleanseGdpr.cmd %CAN_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSItalyCleanseGdpr.cmd %ITA_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSBritainCleanseGdpr.cmd %GBR_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSGreeceCleanseGdpr.cmd %GRC_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSSpainCleanseGdpr.cmd %ESP_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSFranceCleanseGdpr.cmd %FRA_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSGermanyCleanseGdpr.cmd %DEU_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSAustriaCleanseGdpr.cmd %AUT_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSSwitzerlandCleanseGdpr.cmd %CHE_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSNetherlandsCleanseGdpr.cmd %NLD_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSBelgiumCleanseGdpr.cmd %BEL_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSDenmarkCleanseGdpr.cmd %DNK_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSSwedenCleanseGdpr.cmd %SWE_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSNorwayCleanseGdpr.cmd %NOR_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSFinlandCleanseGdpr.cmd %FIN_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSIrelandCleanseGdpr.cmd %IRL_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
 call %T_SCRIPTS%\TSSPortugalCleanseGdpr.cmd %PRT_WRK% >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)

Copy/b "%LAT_WRK%\data\TSS_CLEANSE_OUTPUT_LA.DAT"+"%ARG_WRK%\data\TSS_CLEANSE_OUTPUT_ARG.DAT"+"%CHL_WRK%\data\TSS_CLEANSE_OUTPUT_CHL.DAT"+"%MEX_WRK%\data\TSS_CLEANSE_OUTPUT_MEX.DAT"+"%US_WRK%\data\TSS_CLEANSE_OUTPUT_USA.DAT"+"%BRA_WRK%\data\TSS_CLEANSE_OUTPUT_BRA.DAT"+"%CAN_WRK%\data\TSS_CLEANSE_OUTPUT_CAN.DAT"+"%ITA_WRK%\data\TSS_CLEANSE_OUTPUT_ITA.DAT"+"%GBR_WRK%\data\TSS_CLEANSE_OUTPUT_GBR.DAT"+"%GRC_WRK%\data\TSS_CLEANSE_OUTPUT_GRC.DAT"+"%ESP_WRK%\data\TSS_CLEANSE_OUTPUT_ESP.DAT"+"%FRA_WRK%\data\TSS_CLEANSE_OUTPUT_FRA.DAT"+"%DEU_WRK%\data\TSS_CLEANSE_OUTPUT_DEU.DAT"+"%AUT_WRK%\data\TSS_CLEANSE_OUTPUT_AUT.DAT"+"%CHE_WRK%\data\TSS_CLEANSE_OUTPUT_CHE.DAT"+"%NLD_WRK%\data\TSS_CLEANSE_OUTPUT_NLD.DAT"+"%BEL_WRK%\data\TSS_CLEANSE_OUTPUT_BEL.DAT"+"%DNK_WRK%\data\TSS_CLEANSE_OUTPUT_DNK.DAT"+"%SWE_WRK%\data\TSS_CLEANSE_OUTPUT_SWE.DAT"+"%NOR_WRK%\data\TSS_CLEANSE_OUTPUT_NOR.DAT"+"%FIN_WRK%\data\TSS_CLEANSE_OUTPUT_FIN.DAT"+"%IRL_WRK%\data\TSS_CLEANSE_OUTPUT_IRL.DAT"+"%PRT_WRK%\data\TSS_CLEANSE_OUTPUT_PRT.DAT" "%TSS_OUTPUT%\TSS_GDPR_OUTPUT.DAT" >> %MDM%\log\TSSRouteCleanse_Gdpr.log
set ERR=%errorlevel%
IF NOT %ERR% == 0 (
echo Exiting due to error during TSS Cleanse >> %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.LOG TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.LOG
exit /b %ERR%
)
ren %MDM_CUSTOM_DIR%\log\TSSRouteCleanse_Gdpr.log TSSRouteCleanse_Gdpr_%currentdate%_%currenttime%.log
ren %MDM_CUSTOM_DIR%\log\TSSGdprRouter.log TSSGdprRouter_%currentdate%_%currenttime%.log

:end