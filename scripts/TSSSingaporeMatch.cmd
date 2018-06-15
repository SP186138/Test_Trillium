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
:: | File:     TSSSingaporeMatch.cmd                                           |
:: | Purpose:  Match 1CP Singapore data.                                       |
:: +---------------------------------------------------------------------------+
:: |                                                                           |
:: | Client:   Teradata Corporation                                            |
:: | Project:  1 Consumer Place                                                |
:: | Country:  Singapore                                                       |
:: | Author:   Sheldon Hartling                                                |
:: | Date:     28-Apr-2013                                                     |
:: |                                                                           |
:: | Usage:                                                                    |
:: |   > TSSSingaporeMatch [workarea]                                          |
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
:: |   112 - cleaning records                                                  |
:: |   113 - creating the WINKEY_OUTPUT file                                   |
:: |                                                                           |
:: |   PREMATCH                                                                |
:: |   201 - workarea does not exit                                            |
:: |   202 - reference CRM file is missing.                                    |
:: |   203 - transforming REF records                                          |
:: |                                                                           |
:: |   MATCH 1 BY ADDRESS                                                      |
:: |   301 - sorting REF records by winkey1 for 1st match                      |
:: |   302 - reading transaction file and sort by winkey1                      |
:: |   303 - matching records by address grouped by winkey1                    |
:: |                                                                           |
:: |   MATCH 2 BY EMAIL                                                        |
:: |   401 - sorting REF records by email for 2nd match                        |
:: |   402 - sorting match1 output by email                                    |
:: |   403 - matching records by email address                                 |
:: |                                                                           |
:: |   MATCH 3 BY PHONE NUMBER                                                 |
:: |   501 - sorting REF records by phone for 3rd match                        |
:: |   502 - sorting match1 output by phone number                             |
:: |   503 - matching records by phone number                                  |
:: |                                                                           |
:: |   COMBINE FILES AND RESOLVE TRANSITIVITY                                  |
:: |   601 - sort match #1 output by ref-id                                    |
:: |   602 - combining link files & resolve transintivity                      |
:: |   603 - updating using link files & commonize triads                      |
:: |                                                                           |
:: |   MATCH 4 FINAL INDIVIDUAL MATCH                                          |
:: |   701 - sorting REF records by ref-id for final match                     |
:: |   702 - matching households to identify individuals                       |
:: |                                                                           |
:: |                                                                           |
:: | Change History:                                                           |
:: |                                                                           |
:: |  Date         Author     Description                                      |
:: |  ...........  .........  ...............................................  |
:: |  28-Apr-2013  sheldon    Created.                                         |
:: |  06-Aug-2013  sheldon    New multi-match design.                          |
:: |  01-Jan-2014  sheldon    Upgraded to TSS v14.0.                           |
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

   :: Sheldon's Laptop environment
   ::! @set TS_QUALITY=C:\Program Files (x86)\Trillium Software\TSQuality\14\Software
   ::! @set TS_POSTAL=%TS_QUALITY%\..\tables
   ::! @set TS_PROJECT=C:\Trillium_Development\v14\development\projects\sgp\match
   ::! @set TS_WORKAREA=C:\Trillium_Development\v14\development\workarea1
   ::! @set PATH=%TS_QUALITY%\bin;%SystemRoot%\system32;%SystemRoot%

   :: P&G server environment
   @set TS_QUALITY=%TSS_SWV%\Software
   @set TS_POSTAL=%TS_QUALITY%\..\tables
   @set TS_PROJECT=%TSS_PROJECTS%\sgp\match
   @set TS_WORKAREA=%SGP_WRK%
   @set PATH=%TS_QUALITY%\bin;%SystemRoot%\system32;%SystemRoot%
   
   ::
   ::... Process the optional "workarea" command-line argument.
   ::

   @if NOT "%~1" == "" (
      @set TS_WORKAREA=%~1%
   )
   @if NOT EXIST "%TS_WORKAREA%" (
      @echo ERROR: [%DATE%%TIME%] The specified workarea directory does not exist, '%TS_WORKAREA%'
      @set status=201
      @goto end
   )

   ::
   ::... Set derived environment variables.
   ::

   @set TSQ_BIN=%TS_QUALITY%\bin
   ::
   @set TS_DATA=%TS_WORKAREA%\data
   @set TS_LOGS=%TS_WORKAREA%\logs
   @set TS_TMP=%TS_WORKAREA%\tmp
   ::
   @set TS_DDL=%TS_PROJECT%\dll
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
   ::... Make sure we've got a REF input file to process
   ::

   @if NOT EXIST "%TS_DATA%\TSS_MATCH_INPUT_CRM_SGP.DAT" (
      @echo ERROR: [%DATE%%TIME%] SGP reference CRM file is missing.
      @set status=202
      @goto end
   )

   ::
   ::... Make sure we've got a TRN input file to process
   ::

   @if NOT EXIST "%TS_DATA%\TSS_CLEANSE_OUTPUT_SGP.DAT" (
      @echo SGP cleanse output file is missing.  No SGP matching performed. >>"%RUNLOG%"
      @type nul > "%TS_DATA%\TSS_MATCH_OUTPUT_SGP.DAT"
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
   ::... | Prepare Reference File Input                                        |
   ::    +---------------------------------------------------------------------+
   ::
   ::    Reads:  TSS_MATCH_INPUT_CRM_SGP.DAT.
   ::    Writes: ("tmp1")
   ::

   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\tranfrmr_p3.stx"  "%TS_LOGS%\p3_tranfrmr"  "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\tranfrmr_p4.stx"  "%TS_LOGS%\p4_tranfrmr"  "%ERRLOG%"    )
   @call :check_status "p3" "ReadRefFileTranfrmr#1"
   @if %status% == 1 (set status=203 & goto end)
   @call :check_status "p4" "ReadRefFileTranfrmr#2"
   @if %status% == 1 (set status=203 & goto end)

   ::    +---------------------------------------------------------------------+
   ::... | Match 1: Address Only                                               |
   ::    +---------------------------------------------------------------------+
   ::
   ::    Reads:  ("tmp1")
   ::            TSS_CLEANSE_OUTPUT_SGP (output from cleanse)
   ::    Writes: ("tmp6")
   ::            ("tmp3")
   ::            ("maout1")
   ::

   @call "%HOME%\run_process.cmd"  "%TSQ_BIN%\tsqsort"  "%TS_SETTINGS%\srtforrl_p7.stx"  "%TS_LOGS%\p7_srtforrl"  "%ERRLOG%"
   @call :check_status "p7" "SortRefFileByWinkey"
   @if %status% == 1 (set status=301 & goto end)

   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\tranfrmr_p1.stx"  "%TS_LOGS%\p1_tranfrmr"  "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tsqsort"   "%TS_SETTINGS%\srtforrl_p2.stx"  "%TS_LOGS%\p2_srtforrl"  "%ERRLOG%"    )
   @call :check_status "p1" "ReadTrnFileTranfrmr#1"
   @if %status% == 1 (set status=302 & goto end)
   @call :check_status "p2" "SortTrnFileByWinkey"
   @if %status% == 1 (set status=302 & goto end)

   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\rellink"   "%TS_SETTINGS%\rellinkref_p8.stx"  "%TS_LOGS%\p8_rellinkref"  "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\tranfrmr_p9.stx"    "%TS_LOGS%\p9_tranfrmr"    "%ERRLOG%"    )
   @call :check_status "p8" "Match#1ByAddress"
   @if %status% == 1 (set status=303 & goto end)
   @call :check_status "p9" "SaveAddressHouseholdId"
   @if %status% == 1 (set status=303 & goto end)

   :: OK to delete tmp3 & tmp6
   @del /Q "%TS_DATA%\sg_srtforrl_p7.dat" 2>nul
   @del /Q "%TS_DATA%\sg_srtforrl_p2.dat" 2>nul

   ::    +---------------------------------------------------------------------+
   ::... | Match 2: Email Address                                              |
   ::    +---------------------------------------------------------------------+
   ::
   ::    Reads:  ("tmp1")
   ::            ("maout1")
   ::            
   ::    Writes: ("tmp4")
   ::            ("tmp7")
   ::            ("maout2")
   ::            ("link2")
   ::

   @call "%HOME%\run_process.cmd"  "%TSQ_BIN%\tsqsort"  "%TS_SETTINGS%\srtforrl_p13.stx"  "%TS_LOGS%\p13_srtforrl"  "%ERRLOG%"
   @call :check_status "p13" "SortRefFileByEmail"
   @if %status% == 1 (set status=401 & goto end)

   @call "%HOME%\run_process.cmd"  "%TSQ_BIN%\tsqsort"  "%TS_SETTINGS%\srtforrl_p15.stx"  "%TS_LOGS%\p15_srtforrl"  "%ERRLOG%"
   @call :check_status "p15" "SortTrnFileByEmail"
   @if %status% == 1 (set status=402 & goto end)

   @call "%HOME%\run_process.cmd"  "%TSQ_BIN%\rellink"  "%TS_SETTINGS%\rellinkref_p16.stx"  "%TS_LOGS%\p16_rellinkref"  "%ERRLOG%"
   @call :check_status "p16" "Match#2ByEmail"
   @if %status% == 1 (set status=403 & goto end)

   :: OK to delete tmp4 & tmp7
   @del /Q "%TS_DATA%\sg_srtforrl_p13.dat" 2>nul
   @del /Q "%TS_DATA%\sg_srtforrl_p15.dat" 2>nul

   ::    +---------------------------------------------------------------------+
   ::... | Match 3: Phone Number                                               |
   ::    +---------------------------------------------------------------------+
   ::
   ::    Reads:  ("tmp1")
   ::            ("maout1")
   ::            
   ::    Writes: ("tmp5")
   ::            ("tmp8")
   ::            ("maout3")
   ::            ("link3")
   ::

   @call "%HOME%\run_process.cmd"  "%TSQ_BIN%\tsqsort"  "%TS_SETTINGS%\srtforrl_p11.stx"  "%TS_LOGS%\p11_srtforrl"  "%ERRLOG%"
   @call :check_status "p11" "SortRefFileByPhone"
   @if %status% == 1 (set status=501 & goto end)

   @call "%HOME%\run_process.cmd"  "%TSQ_BIN%\tsqsort"  "%TS_SETTINGS%\srtforrl_p10.stx"  "%TS_LOGS%\p10_srtforrl"  "%ERRLOG%"
   @call :check_status "p10" "SortTrnFileByPhone"
   @if %status% == 1 (set status=502 & goto end)

   @call "%HOME%\run_process.cmd"  "%TSQ_BIN%\rellink"  "%TS_SETTINGS%\rellinkref_p12.stx"  "%TS_LOGS%\p12_rellinkref"  "%ERRLOG%"
   @call :check_status "p12" "Match#3ByPhone"
   @if %status% == 1 (set status=503 & goto end)

   :: OK to delete tmp5 & tmp8
   @del /Q "%TS_DATA%\sg_srtforrl_p11.dat" 2>nul
   @del /Q "%TS_DATA%\sg_srtforrl_p10.dat" 2>nul

   ::    +---------------------------------------------------------------------+
   ::... | Resolve transitivity                                                |
   ::    +---------------------------------------------------------------------+
   ::
   ::    Reads:  ("maout2")
   ::            ("maout3")
   ::            ("link2")
   ::            ("link3")
   ::    Writes: ("tmp10")
   ::

   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\tranfrmr_p17.stx"  "%TS_LOGS%\p17_tranfrmr"  "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\resolve"   "%TS_SETTINGS%\resolve_p18.stx"   "%TS_LOGS%\p18_resolve"   "%ERRLOG%"    )
   @call :check_status "p17" "CombineMatch#2#3AndLinks"
   @if %status% == 1 (set status=602 & goto end)
   @call :check_status "p18" "ResolveTransitivity"
   @if %status% == 1 (set status=602 & goto end)

   :: OK to delete maout2, maout3, link2 & link3
   @del /Q "%TS_DATA%\sg_rellinkref_p16.dat" 2>nul
   @del /Q "%TS_DATA%\sg_rellinkref_p12.dat" 2>nul
   @del /Q "%TS_DATA%\LINKING_sg_rellinkref_p16.dat" 2>nul
   @del /Q "%TS_DATA%\LINKING_sg_rellinkref_p12.dat" 2>nul

   ::    +---------------------------------------------------------------------+
   ::... | File update.                                                        |
   ::    +---------------------------------------------------------------------+
   ::
   ::    Reads:  ("tmp9")
   ::            ("tmp10")
   ::    Writes: ("tmp11")
   ::

   @call "%HOME%\run_process.cmd"  "%TSQ_BIN%\tsqsort"   "%TS_SETTINGS%\tsqsort_p14.stx"   "%TS_LOGS%\p14_tsqsort"   "%ERRLOG%"
   @call :check_status "p14" "SortMaout1ByHouseholdId"
   @if %status% == 1 (set status=601 & goto end)

   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\fileupdt"  "%TS_SETTINGS%\fileupdt_p19.stx"  "%TS_LOGS%\p19_fileupdt"  "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tsqsort"   "%TS_SETTINGS%\srtforrl_p20.stx"  "%TS_LOGS%\p20_srtforrl"  "%ERRLOG%"    )
   @call :check_status "p19" "FileUpdateToCombineMatches"
   @if %status% == 1 (set status=603 & goto end)
   @call :check_status "p20" "SortMatchedHouseholdsById"
   @if %status% == 1 (set status=603 & goto end)

   :: OK to delete tmp9, tmp10 & maout1
   @del /Q "%TS_DATA%\sg_tranfrmr_p9.dat" 2>nul
   @del /Q "%TS_DATA%\sg_tsqsort_p14.dat" 2>nul
   @del /Q "%TS_DATA%\sg_resolve_p18.dat" 2>nul

   ::    +---------------------------------------------------------------------+
   ::... | Match 4:                                                            |
   ::    +---------------------------------------------------------------------+
   ::
   ::    Reads:  ("tmp1")
   ::            ("tmp11")
   ::    Writes: ("tmp2")
   ::            TSS_MATCH_OUTPUT_SGP.DAT
   ::

   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\tranfrmr_p5.stx"  "%TS_LOGS%\p5_tranfrmr"  "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tsqsort"   "%TS_SETTINGS%\srtforrl_p6.stx"  "%TS_LOGS%\p6_srtforrl"  "%ERRLOG%"    )
   @call :check_status "p5" "PrepareRefFileForIndvMatch"
   @if %status% == 1 (set status=701 & goto end)
   @call :check_status "p6" "SortRefFileByHouseholdId"
   @if %status% == 1 (set status=701 & goto end)

   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\rellink"   "%TS_SETTINGS%\rellinkref_p21.stx"  "%TS_LOGS%\p21_rellinkref"  "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\tranfrmr_p22.stx"    "%TS_LOGS%\p22_tranfrmr"    "%ERRLOG%"    )
   @call :check_status "p21" "Match#4Individuals"
   @if %status% == 1 (set status=702 & goto end)
   @call :check_status "p22" "WriteFinalOutputFile"
   @if %status% == 1 (set status=702 & goto end)

   :: OK to delete tmp1, tmp2 & tmp11
   @del /Q "%TS_DATA%\sg_tranfrmr_p4.dat"  2>nul
   @del /Q "%TS_DATA%\sg_srtforrl_p6.dat"  2>nul
   @del /Q "%TS_DATA%\sg_srtforrl_p20.dat" 2>nul

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
      @echo TSSSingaporeMatch job succeeded!
      @echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      @echo.
   ) else (
      @echo.
      @echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      @echo TSSSingaporeMatch job failed!
      @echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      @if EXIST "%ERRLOG%" (
         @type "%ERRLOG%" 1>&2
         @find "ERROR:" "%RUNLOG%" 1>&2
      )
      @echo.
   )
copy %SGP_WRK%\data\TSS_MATCH_OUTPUT_SGP.DAT %TSS_OUTPUT%\TSS_MATCH_OUTPUT_SGP.DAT
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

::end TTSSingaporeMatch
