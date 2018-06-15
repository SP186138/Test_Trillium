@echo off
REM Copyright (c) 2006-2007 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 

set TSS_SCRIPTS=\\10.138.21.15\scripts
set TSS_SCRIPTS_ASIA=\\10.138.21.15\scripts
set TSS_SCRIPTS_EUROPE=\\10.138.21.15\scripts
set TSS_PROCESS=i2
set RTNTN_DATE=0
set T_SCRIPTS=E:\scripts
set US_WRK=E:\workarea1
set BRA_WRK=E:\workarea2
set LAT_WRK=E:\workarea3
set HKG_WRK=E:\workarea4
set KOR_WRK=E:\workarea5
set IND_WRK=E:\workarea6
set JPN_WRK=E:\workarea7
set TWN_WRK=E:\workarea8
set CHN_WRK=E:\workarea9
set CAN_WRK=E:\workarea10
set AUS_WRK=E:\workarea11
set NZL_WRK=E:\workarea12
set PHL_WRK=E:\workarea13
set MYS_WRK=E:\workarea14
set SGP_WRK=E:\workarea15
set OTH_WRK=E:\workarea16
set TSS_PROJECTS=E:\projects
set ARG_WRK=E:\workarea18
set CHL_WRK=E:\workarea19
set MEX_WRK=E:\workarea20
set TRK_WRK=E:\workarea21
set ITA_WRK=E:\workarea_ITA
set GBR_WRK=E:\workarea_GBR
set GRC_WRK=E:\workarea_GRC
set ESP_WRK=E:\workarea_ESP
set FRA_WRK=E:\workarea_FRA
set LUX_WRK=E:\workarea_LUX
set HUN_WRK=E:\workarea_HUN
set RUS_WRK=E:\workarea_RUS
set POL_WRK=E:\workarea_POL
set DEU_WRK=E:\workarea_DEU
set AUT_WRK=E:\workarea_AUT
set CHE_WRK=E:\workarea_CHE
set NLD_WRK=E:\workarea_NLD
set BEL_WRK=E:\workarea_BEL
set DNK_WRK=E:\workarea_DNK
set SWE_WRK=E:\workarea_SWE
set NOR_WRK=E:\workarea_NOR
set FIN_WRK=E:\workarea_FIN
set IRL_WRK=E:\workarea_IRL
set PRT_WRK=E:\workarea_PRT
set ARB_WRK=E:\workarea_ARB
set AFR_WRK=E:\workarea_AFR
set ISR_WRK=E:\workarea_ISR
set EGY_WRK=E:\workarea_EGY
set ROU_WRK=E:\workarea_ROU
set BGR_WRK=E:\workarea_BGR
set CZE_WRK=E:\workarea_CZE
set HRV_WRK=E:\workarea_HRV
set PAK_WRK=E:\workarea_PAK
set TUR_WRK=E:\workarea_TUR
set ROUTER_WRK=E:\workarea_router
set MDM_CUSTOM_DIR=\\10.138.21.14\Teradata\MDM\3.05.02\custom\pngrelease3
set TSS_SW=E:\Program Files (x86)\Trillium Software\TSQuality\14
set TSS_SWA=E:\Program Files (x86)\Trillium Software\TSQuality\14
set TSS_SWE=E:\Program Files (x86)\Trillium Software\TSQuality\14
set TSS_SWV=E:\Program Files (x86)\Trillium Software\15\tsq
set TSS_OUTPUT=%MDM_CUSTOM_DIR%\data
set MDM=%MDM_CUSTOM_DIR%
set LOGON_FILE=%MDM_CUSTOM_DIR%\logon\LOGON.txt
set MDM_STATUS_EXTRNSTDRD_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\MDM_STATUS_EXTRNSTDRD.BTEQ
set TSS_CLEANSE_INPUT_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_CLEANSE_INPUT
set TSS_CLEANSE_INPUT_FEXP=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_CLEANSE_INPUT
set TSS_MATCH_INPUT_CRM_FEXP=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_MATCH_INPUT_CRM
set TSS_OPTOUT_INPUT_FEXP=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_OPTOUT_INPUT
set TSS_OPTOUT_INPUT_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_OPTOUT_INPUT
set TSS_NCOA_INPUT_FEXP=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_NCOA_INPUT
set TSS_NCOA_INPUT_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_NCOA_INPUT
set CNSMR_TSS_MATCH_STG_MLD=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\CNSMR_TSS_MATCH_STG
set TSS_CLEANSE_INPUT_TPT=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_CLEANSE_INPUT.TPT
set TSS_MATCH_INPUT_CRM_TPT=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_MATCH_INPUT_CRM.TPT
set CNSMR_TSS_MATCH_STG_TPT=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\CNSMR_TSS_MATCH_STG.TPT
set TSS_MATCH_OUTPUT=%MDM_CUSTOM_DIR%\data\TSS_MATCH_OUTPUT
set TSS_WINKEY_OUTPUT=%MDM_CUSTOM_DIR%\data\TSS_WINKEY_OUTPUT
set CNSMR_TSS_WINKEY_STG_FLD=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\CNSMR_TSS_WINKEY_STG
set CNSMR_TSS_WINKEY_STG_TPT=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\CNSMR_TSS_WINKEY_STG.TPT
set CNSMR_TSS_WINKEY_STG_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\CNSMR_TSS_WINKEY_STG
set CNSMR_TSS_MATCH_STG_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\CNSMR_TSS_MATCH_STG
set CNSMR_TSS_MATCH_EDW_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\CNSMR_TSS_MATCH_EDW
set TSS_CLEANSE_INPUT=%MDM_CUSTOM_DIR%\data\TSS_CLEANSE_INPUT
set TSS_MATCH_INPUT=%MDM_CUSTOM_DIR%\data\TSS_MATCH_INPUT_CRM
set TSS_OPTOUT_INPUT=%MDM_CUSTOM_DIR%\data\TSS_OPTOUT_INPUT
set TSS_OPTOUT_OUTPUT=%MDM_CUSTOM_DIR%\data\TSS_OPTOUT_OUTPUT
set TSS_NCOA_INPUT=%MDM_CUSTOM_DIR%\data\TSS_NCOA_INPUT
set TSS_NCOA_OUTPUT=%MDM_CUSTOM_DIR%\data\TSS_NCOA_OUTPUT
set CONSUMER_STG_DELETE_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\CONSUMER_STG_DELETE.BTEQ
set MST_DB=MDM
set MASTER_DB=MDM
set ICRM_DB=ICRM_TBL
set ETL_CTRL_DB=ETL_CTRL
set MDM_STATUS_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\MDM_STATUS.BTEQ
set RESTART_STATUS_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\RESTART_STATUS.BTEQ
set CONSUMER_VALIDATION_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\CONSUMER_VALIDATION.BTEQ
set CONSUMER_ERRORMOVE_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\CONSUMER_ERRORMOVE.BTEQ
set ETL_DB=ICRM_STAGE
set CNSMR_TSS_MATCH_CLEANUP_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_MATCH_CLEANUP
set CNSMR_TSS_WINKEY_CLEANUP_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_WINKEY_CLEANUP
set TSS_OPTOUT_CLEANUP_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_OPTOUT_CLEANUP
set TSS_OPTOUT_OUTPUT_FLD=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_OPTOUT_OUTPUT
set TSS_OPTOUT_OUTPUT_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_OPTOUT_OUTPUT
set TSS_NCOA_CLEANUP_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_NCOA_CLEANUP
set TSS_NCOA_OUTPUT_FLD=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_NCOA_OUTPUT
set TSS_NCOA_OUTPUT_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_NCOA_OUTPUT
set LOAD_ID=0
set EMAIL_ADDRESS='Email Address'
set POSTL_ADDRESS='Postal Address'
set PHONE_ADDRESS='Telephone Number'
set SOCIAL_NETWORK='Social Network Account'
set TdpId=MDM
set UserName=MDM
set UserPassword=h3k9d6q1
set MDM_DB=mdm
set ERR_DB=mdm
set LOG_DB=mdm
set WORK_DB=mdm
set CONSUMER_VALIDATION_FAILURE_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\CONSUMER_VALIDATION_FAILURE.BTEQ
set CNSMR_DATA_RTNTN_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\CNSMR_DATA_RTNTN.BTEQ
set CNSMR_DATA_RTNTN_DEL_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\CNSMR_DATA_RTNTN_DEL.BTEQ
set CNSMR_DATA_RTNTN_REVERT_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\CNSMR_DATA_RTNTN_REVERT.BTEQ
set TSS_MATCH_OUTPUT_FAILURE_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_MATCH_OUTPUT_FAILURE.BTEQ
set TSS_MATCH_STG_FAILURE_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_MATCH_STG_FAILURE
set TSS_WINKEY_STG_FAILURE_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_WINKEY_STG_FAILURE
set TSS_CLEANSE_INPUT_FAILURE_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_CLEANSE_INPUT_FAILURE
set TSS_OPTOUT_INPUT_FAILURE_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_OPTOUT_INPUT_FAILURE.BTEQ
set TSS_OPTOUT_OUTPUT_FAILURE_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_OPTOUT_OUTPUT_FAILURE.BTEQ
set TSS_NCOA_INPUT_FAILURE_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_NCOA_INPUT_FAILURE.BTEQ
set TSS_NCOA_OUTPUT_FAILURE_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_NCOA_OUTPUT_FAILURE.BTEQ
set TREMOR_MIG_BTEQ=%MDM_CUSTOM_DIR%\bin\TREMOR_MIG.BTEQ
set MDM_STATUS_OPTOUT_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\MDM_STATUS_OPTOUT.BTEQ
set MDM_STATUS_NCOA_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\MDM_STATUS_NCOA.BTEQ
set TSS_CLEANSE_INPUT1=%MDM_CUSTOM_DIR%\data\TSS_CLEANSE_INPUT_
set TSS_MATCH_INPUT1=%MDM_CUSTOM_DIR%\data\TSS_MATCH_INPUT_CRM_
set TSS_OPTOUT_INPUT1=%MDM_CUSTOM_DIR%\data\TSS_OPTOUT_INPUT
set TSS_NCOA_INPUT_FEXP=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_NCOA_INPUT
set TSS_NCOA_INPUT_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_NCOA_INPUT
set TSS_NCOA_INPUT=%MDM_CUSTOM_DIR%\data\TSS_NCOA_INPUT
set TSS_NCOA_OUTPUT=%MDM_CUSTOM_DIR%\data\TSS_NCOA_OUTPUT
set TSS_NCOA_CLEANUP_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_NCOA_CLEANUP
set TSS_NCOA_OUTPUT_FLD=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_NCOA_OUTPUT
set TSS_NCOA_OUTPUT_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_NCOA_OUTPUT
set TSS_NCOA_INPUT_FAILURE_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_NCOA_INPUT_FAILURE.BTEQ
set TSS_NCOA_OUTPUT_FAILURE_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_NCOA_OUTPUT_FAILURE.BTEQ
set MDM_STATUS_NCOA_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\MDM_STATUS_NCOA.BTEQ
set TSS_NCOA_INPUT1=%MDM_CUSTOM_DIR%\data\TSS_NCOA_INPUT
set CNSMR_TSS_MATCH_ERR_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\CNSMR_TSS_MATCH_ERR
set PROJECTRETLR=E:\TrilliumDeployment-RETLR\project7\batch
set PRETLR=\\10.138.19.14\TrilliumDeployment-RETLR\project7\batch
set TSS_RETLR_INPUT_FEXP=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_RETLR_INPUT
set TSS_RETLR_INPUT_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_RETLR_INPUT
set TSS_RETLR_INPUT=%MDM_CUSTOM_DIR%\data\TSS_RETLR_INPUT
set TSS_RETLR_OUTPUT=%MDM_CUSTOM_DIR%\data\TSS_RETLR_OUTPUT
set TSS_RETLR_CLEANUP_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_RETLR_CLEANUP
set TSS_RETLR_OUTPUT_FLD=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_RETLR_OUTPUT
set TSS_RETLR_OUTPUT_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_RETLR_OUTPUT
set TSS_RETLR_INPUT_FAILURE_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_RETLR_INPUT_FAILURE.BTEQ
set TSS_RETLR_OUTPUT_FAILURE_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_RETLR_OUTPUT_FAILURE.BTEQ
set MDM_STATUS_RETLR_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\MDM_STATUS_RETLR.BTEQ
set TSS_RETLR_INPUT_FEXP=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_RETLR_INPUT
set TSS_RETLR_INPUT_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_RETLR_INPUT
set TSS_RETLR_INPUT=%MDM_CUSTOM_DIR%\data\TSS_RETLR_INPUT
set TSS_RETLR_OUTPUT=%MDM_CUSTOM_DIR%\data\TSS_RETLR_OUTPUT
set TSS_RETLR_CLEANUP_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_RETLR_CLEANUP
set TSS_RETLR_OUTPUT_FLD=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_RETLR_OUTPUT
set TSS_RETLR_OUTPUT_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_RETLR_OUTPUT
set TSS_RETLR_INPUT_FAILURE_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_RETLR_INPUT_FAILURE.BTEQ
set TSS_RETLR_OUTPUT_FAILURE_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_RETLR_OUTPUT_FAILURE.BTEQ
set MDM_STATUS_RETLR_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\MDM_STATUS_RETLR.BTEQ
set TSS_RETLR_INPUT1=%MDM_CUSTOM_DIR%\data\TSS_RETLR_INPUT
set TSS_GDPR_INPUT_FEXP=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_GDPR_INPUT
set TSS_GDPR_INPUT_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_GDPR_INPUT
set TSS_GDPR_INPUT=%MDM_CUSTOM_DIR%\data\TSS_GDPR_INPUT
set TSS_GDPR_OUTPUT=%MDM_CUSTOM_DIR%\data\TSS_GDPR_OUTPUT
set TSS_GDPR_CLEANUP_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_GDPR_CLEANUP
set TSS_GDPR_OUTPUT_FLD=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_GDPR_OUTPUT
set TSS_GDPR_OUTPUT_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_GDPR_OUTPUT
set TSS_GDPR_INPUT_FAILURE_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_GDPR_INPUT_FAILURE.BTEQ
set TSS_GDPR_OUTPUT_FAILURE_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\TSS_GDPR_OUTPUT_FAILURE.BTEQ
set MDM_STATUS_GDPR_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\MDM_STATUS_GDPR.BTEQ
set TSS_GDPR_INPUT1=%MDM_CUSTOM_DIR%\data\TSS_GDPR_INPUT
:: +---------------------------------------------------------------------------+
:: | File:     TSSRouterOptOut.cmd                                             |
:: | Purpose:  Route OptOut data.                                              |
:: +---------------------------------------------------------------------------+
:: |                                                                           |
:: | Client:   Teradata Corporation                                            |
:: | Project:  1 Consumer Place                                                |
:: | Country:  Australia                                                       |
:: | Author:   Sri Palaniappan                                                 |
:: | Date:     16-Dec-2013                                                     |
:: |                                                                           |
:: | Usage:                                                                    |
:: |   > TSSRouterOptOut [workarea]                                            |
:: |     where:                                                                |
:: |       workarea = an optional argument specifying the complete path name   |
:: |                  for the work area directory.                             |
:: |                                                                           |
:: | Return Status:                                                            |
:: |   errorlevel = 0, success                                                 |
:: |   errorlevel > 0, failure                                                 |
:: |                                                                           |
:: | Trillium errorlevel Values:                                               |
:: |                                                                           |
:: |   CLEANSER                                                                |
:: |   111 - workarea does not exit                                            |
:: |   112 - routing records                                                   |
:: |                                                                           |
:: | Change History:                                                           |
:: |                                                                           |
:: |  Date         Author     Description                                      |
:: |  ...........  .........  ...............................................  |
:: |  16-Dec-2013  Sri        Created.                                         |
:: |                                                                           |
:: +---------------------------------------------------------------------------+

   ::
   ::... Set Prompt to include time;
   ::

   @prompt [$t] $g
   @set HOME=%~p0

   ::
   ::... Set environment variables for Trillium.
   ::
   :: Teradata DEV server environment
   ::!@set TS_QUALITY=%TSS_SW%\Software
   ::!@set TS_POSTAL=%TS_QUALITY%\..\tables
   ::!@set TS_PROJECT=%TSS_PROJECTS%\router
   ::!@set TS_WORKAREA=%ROUTER_WRK%
   ::!@set PATH=%TS_QUALITY%\bin;%SystemRoot%\system32;%SystemRoot%
   
@set TS_QUALITY=%TSS_SW%\Software
@set TS_BIN=%TS_QUALITY%\bin
@set TS_PROJECT=%TSS_PROJECTS%\router
@set TS_CONFIG=%TS_PROJECT%\settings\config_batch.tbl
@set TS_SETTINGS=%TS_PROJECT%\settings
@set TS_WORKAREA=%ROUTER_WRK%
@set TS_DATA=%TS_WORKAREA%\data
@set TS_LOGS=%TS_WORKAREA%\logs
@set TS_TABLES=%TS_PROJECT%\tables
@set TSQ_PROJECTS=%TS_QUALITY%\..\Templates
@set PATH=%TS_QUALITY%\bin;%SystemRoot%\system32;%SystemRoot%

   ::
   ::... Set derived environment variables.
   ::

   @set TSQ_BIN=%TS_QUALITY%\bin
   ::
   @set TS_DATA=%TS_WORKAREA%\data
   @set TS_LOGS=%TS_WORKAREA%\logs
   @set TS_TMP=%TS_WORKAREA%\tmp
   ::
   @set TS_DDL=%TS_PROJECT%\ddl
   @set TS_SCRIPTS=%TS_PROJECT%\scripts
   @set TS_SETTINGS=%TS_PROJECT%\settings
   @set TS_TABLES=%TS_PROJECT%\tables

   ::
   ::... Name our runlog, errlog and config files.
   ::

   @set ERRLOG=%TS_LOGS%\%~n0_errlog.txt
   @set RUNLOG=%TS_LOGS%\%~n0_runlog.txt
   @set TS_CONFIG=%TS_TMP%\%~n0_config.txt

   ::
   ::... Delete the batch error log file.
   ::    We'll use this file later to determine success or failure.
   ::    Clear the runlog.

   @del /Q "%ERRLOG%" 2>nul
   @del /Q "%RUNLOG%" 2>nul
   @echo ^<%~n0_runlog^>>>"%RUNLOG%"

   ::
   ::... Create data, logs and tmp subdirectories, if they do not exist
   ::

   @if NOT EXIST "%TS_DATA%" mkdir "%TS_DATA%"
   @if NOT EXIST "%TS_LOGS%" mkdir "%TS_LOGS%"
   @if NOT EXIST "%TS_TMP%"  mkdir "%TS_TMP%"

   ::
   ::... Process the optional "workarea" command-line argument.
   ::

   @if NOT "%~1" == "" (
      @set TS_WORKAREA=%~1%
   )
   @if NOT EXIST "%TS_WORKAREA%" (
      @echo ERROR: [%DATE%%TIME%] The specified workarea directory does not exist, '%TS_WORKAREA%'
      @set status=111
      @goto end
   )

   ::
   ::... Make sure we've got an input file to process
   ::

   @if NOT EXIST "%TS_DATA%\ROUTER_INPUT.DAT" (
      @echo input file is missing.  No routing performed. >>"%RUNLOG%"
      @set status=0
      @goto end
   )

   ::
   ::... Clear the workarea's /logs and /tmp sub-directories;
   ::

   ::@del /Q "%TS_TMP%\*"  2>nul
   ::@del /Q "%TS_LOGS%\*" 2>nul

   ::
   ::... Create a specific config.txt file for this job, on the fly;
   ::

   @call "%HOME%\make_config.cmd"

   ::    +---------------------------------------------------------------------+
   ::... | Run the Router process                                              |
   ::    +---------------------------------------------------------------------+
   ::
   ::    Run the following Trillium processes in a single piped-data-stream:
   ::            1: Transformer
   ::            2: Global Router
   ::
   ::    Reads:  ROUTER_INPUT.DAT
   ::    Writes: TSS_CLEANSE_INPUT_$CNTRY.DAT
   ::


   @call "%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\artranfrmr_p1.stx"    "%TS_LOGS%\p1_tranfrmr"    "%ERRLOG%" | (
   @call "%HOME%\run_process.cmd"  "%TSQ_BIN%\globrtr"  "%TS_SETTINGS%\arglobrtr_p2.stx"    "%TS_LOGS%\p2_globrtr"    "%ERRLOG%" )
   @call :check_status "p1,p2" "Router"
   @if %status% == 1 (set status=112 & goto end)      
   
   ::
   ::... Set Prompt back to default.
   ::   
   
if NOT EXIST "%TS_DATA%\globrtr_p1_ar.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_ar.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_at.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_at.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_be.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_be.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_br.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_br.dat" )
 if NOT EXIST "%TS_DATA%\globrtr_p1_bo.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_bo.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_ca.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_ca.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_cl.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_cl.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_co.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_co.dat" )
 if NOT EXIST "%TS_DATA%\globrtr_p1_cr.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_cr.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_dk.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_dk.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_fi.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_fi.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_fr.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_fr.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_de.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_de.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_gr.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_gr.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_hu.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_hu.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_ie.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_ie.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_il.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_il.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_it.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_it.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_jm.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_jm.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_lu.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_lu.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_mx.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_mx.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_nl.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_nl.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_no.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_no.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_pe.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_pe.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_pl.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_pl.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_pt.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_pt.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_ru.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_ru.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_es.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_es.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_se.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_se.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_ch.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_ch.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_tr.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_tr.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_gb.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_gb.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_us.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_us.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_ve.dat" (     
 type nul   > "%TS_DATA%\globrtr_p1_ve.dat" )
if NOT EXIST "%TS_DATA%\globrtr_p1_ec.dat" (
 type nul   > "%TS_DATA%\globrtr_p1_ec.dat") 
if NOT EXIST "%TS_DATA%\globrtr_p1_sv.dat" (
 type nul   > "%TS_DATA%\globrtr_p1_sv.dat") 
if NOT EXIST "%TS_DATA%\globrtr_p1_gt.dat" (
 type nul   > "%TS_DATA%\globrtr_p1_gt.dat") 
if NOT EXIST "%TS_DATA%\globrtr_p1_hn.dat" (
 type nul   > "%TS_DATA%\globrtr_p1_hn.dat") 
if NOT EXIST "%TS_DATA%\globrtr_p1_ni.dat" (
 type nul   > "%TS_DATA%\globrtr_p1_ni.dat") 
if NOT EXIST "%TS_DATA%\globrtr_p1_pa.dat" (
 type nul   > "%TS_DATA%\globrtr_p1_pa.dat") 

      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e943_delim.stx"    "%TS_LOGS%\p3_delim"    "%ERRLOG%"  | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e944_delim.stx"    "%TS_LOGS%\p4_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e945_delim.stx"    "%TS_LOGS%\p5_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e946_delim.stx"    "%TS_LOGS%\p6_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e947_delim.stx"    "%TS_LOGS%\p7_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e948_delim.stx"    "%TS_LOGS%\p8_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e949_delim.stx"    "%TS_LOGS%\p9_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e950_delim.stx"    "%TS_LOGS%\p10_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e951_delim.stx"    "%TS_LOGS%\p11_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e952_delim.stx"    "%TS_LOGS%\p12_delim"     "%ERRLOG%" )))))))))
   @call :check_status "p3,p4,p5,p6,p7,p8,p9,p10,p11,p12" "Delim"
   @if %status% == 1 (set status=112 & goto end)      
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e953_delim.stx"    "%TS_LOGS%\p13_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e954_delim.stx"    "%TS_LOGS%\p14_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e955_delim.stx"    "%TS_LOGS%\p15_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e956_delim.stx"    "%TS_LOGS%\p16_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e957_delim.stx"    "%TS_LOGS%\p17_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e958_delim.stx"    "%TS_LOGS%\p18_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e959_delim.stx"    "%TS_LOGS%\p19_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e960_delim.stx"    "%TS_LOGS%\p20_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e961_delim.stx"    "%TS_LOGS%\p21_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e962_delim.stx"    "%TS_LOGS%\p22_delim"     "%ERRLOG%" )))))))))
   @call :check_status "p13,p14,p15,p16,p17,p18,p19,p20,p21,p22" "Delim"
   @if %status% == 1 (set status=112 & goto end)      
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e963_delim.stx"    "%TS_LOGS%\p23_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e964_delim.stx"    "%TS_LOGS%\p24_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e965_delim.stx"    "%TS_LOGS%\p25_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e966_delim.stx"    "%TS_LOGS%\p26_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e967_delim.stx"    "%TS_LOGS%\p27_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e968_delim.stx"    "%TS_LOGS%\p28_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e969_delim.stx"    "%TS_LOGS%\p29_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e970_delim.stx"    "%TS_LOGS%\p30_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e971_delim.stx"    "%TS_LOGS%\p31_delim"     "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e972_delim.stx"    "%TS_LOGS%\p32_delim"     "%ERRLOG%" )))))))))
   @call :check_status "p23,p24,p25,p26,p27,p28,p29,p30,p31,p32" "Delim"
   @if %status% == 1 (set status=112 & goto end)      
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e973_delim.stx"    "%TS_LOGS%\p33_delim"    "%ERRLOG%" | (
      @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\e974_delim.stx"    "%TS_LOGS%\p34_delim"    "%ERRLOG%" )
   @call :check_status "p33,p34" "Delim"
   @if %status% == 1 (set status=112 & goto end)     
   
   ::    +---------------------------------------------------------------------+
   ::... | Exit with status.                                                   |
   ::    +---------------------------------------------------------------------+

   ::
   ::... Set Prompt back to default.
   ::

   :end
   
   @echo ^</%~n0_runlog^>>>"%RUNLOG%"
   @prompt

   ::
   ::... Display final error or success message.
   ::

   @if %status% == 0 (
      @echo.
      @echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      @echo TSSRouterOptOut job succeeded!
      @echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      @echo.
   ) else (
      @echo.
      @echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      @echo TSSRouterOptOut job failed!
      @echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      @if EXIST "%ERRLOG%" (
         @type "%ERRLOG%" 1>&2
         
      )
      @echo.
   )

      @set cur_yyyy=%date:~10,4%
      @set cur_mm=%date:~4,2%
      @set cur_dd=%date:~7,2%
      @set cur_hh=%time:~0,2%
      @if %cur_hh% lss 10 (set cur_hh=0%time:~1,1%)
      @set cur_nn=%time:~3,2%
      @set cur_ss=%time:~6,2%
      @set cur_ms=%time:~9,2%
      @set timestamp=%cur_yyyy%%cur_mm%%cur_dd%_%cur_hh%%cur_nn%%cur_ss%%cur_ms%   
   @copy /b "%RUNLOG%" "%RUNLOG%%timestamp%"
   @if EXIST "%ERRLOG%"           @copy /b "%ERRLOG%" "%ERRLOG%%timestamp%"
   @exit /b %status%

:: +---------------------------------------------------------------------------+
:: | check_status FUNCTION                                                     |
:: +---------------------------------------------------------------------------+
::
::  Local function used to check for errors and to request that log files be
::  consolidated.
::
::  Input Arguments:
::    pnlist = a list of p#'s in "p1,p7,p4,p2,p9" format.  The logs for these
::             p#'s will be consolidated in the order given.
::
::

:check_status
   @set savederrorlevel=%errorlevel%
                                  @set status=0
   @if NOT %savederrorlevel% == 0 @set status=1
   @if %savederrorlevel% == 101   @set status=0
   @if EXIST "%ERRLOG%"           @set status=1
   @call "%HOME%\consolidate_logs" "%RUNLOG%" "%~1" "%~2"
   @goto :EOF

::end TSSRouterOptOut.cmd
