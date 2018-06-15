@echo off
REM Copyright (c) 2006-2007 by Teradata Corporation. 
REM All Rights Reserved. 
REM Teradata CONFIDENTIAL AND TRADE SECRET 

set TSS_SCRIPTS=\\10.138.21.15\scripts
set TSS_PROCESS=OptOut
set T_SCRIPTS=E:\scripts
set TSS_PROJECTS=E:\projects
set ROUTER_WRK=E:\Optout\workarea_router
set US_WRK=E:\Optout\workarea1
set BRA_WRK=E:\Optout\workarea2
set LAT_WRK=E:\Optout\workarea3
set CAN_WRK=E:\Optout\workarea10
set ARG_WRK=E:\Optout\workarea18
set CHL_WRK=E:\Optout\workarea19
set MEX_WRK=E:\Optout\workarea20
set TRK_WRK=E:\Optout\workarea21
set ITA_WRK=E:\Optout\workarea_ITA
set GBR_WRK=E:\Optout\workarea_GBR
set GRC_WRK=E:\Optout\workarea_GRC
set ESP_WRK=E:\Optout\workarea_ESP
set FRA_WRK=E:\Optout\workarea_FRA
set LUX_WRK=E:\Optout\workarea_LUX
set HUN_WRK=E:\Optout\workarea_HUN
set RUS_WRK=E:\Optout\workarea_RUS
set POL_WRK=E:\Optout\workarea_POL
set DEU_WRK=E:\Optout\workarea_DEU
set AUT_WRK=E:\Optout\workarea_AUT
set CHE_WRK=E:\Optout\workarea_CHE
set NLD_WRK=E:\Optout\workarea_NLD
set BEL_WRK=E:\Optout\workarea_BEL
set DNK_WRK=E:\Optout\workarea_DNK
set SWE_WRK=E:\Optout\workarea_SWE
set NOR_WRK=E:\Optout\workarea_NOR
set FIN_WRK=E:\Optout\workarea_FIN
set IRL_WRK=E:\Optout\workarea_IRL
set PRT_WRK=E:\Optout\workarea_PRT
set MDM_CUSTOM_DIR=\\10.138.21.14\Teradata\MDM\3.05.02\custom\pngrelease3
set TSS_SW=E:\Program Files (x86)\Trillium Software\TSQuality\14
set TSS_SWA=E:\Program Files (x86)\Trillium Software\TSQuality\14
set TSS_SWE=E:\Program Files (x86)\Trillium Software\TSQuality\14
set TSS_SWV=E:\Program Files (x86)\Trillium Software\15\tsq
set TSS_OUTPUT=%MDM_CUSTOM_DIR%\data
set MDM=%MDM_CUSTOM_DIR%
set LOGON_FILE=%MDM_CUSTOM_DIR%\logon\LOGON.txt
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
set IN=0
set JP=1
set AU=5
set CN=6
set NZ=2
set SG=4
set KR=7
set TW=8
set MY=3
set HK=9
set PH=11
set XX=12
set ZZ=13
set US=14
set BR=15
set LA=16
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
set CNSMR_TSS_MATCH_ERR_BTEQ=%MDM_CUSTOM_DIR%\etl-scripts-parallel\bin\CNSMR_TSS_MATCH_ERR:: +---------------------------------------------------------------------------+
:: | File:     TSSSpainCleanse.cmd                                             |
:: | Purpose:  Cleanse 1CP Spain data.                                         |
:: +---------------------------------------------------------------------------+
:: |                                                                           |
:: | Client:   Teradata Corporation                                            |
:: | Project:  1 Consumer Place                                                |
:: | Country:  Spain                                                           |
:: | Author:   Sheldon Hartling                                                |
:: | Date:     19-Apr-2013                                                     |
:: |                                                                           |
:: | Usage:                                                                    |
:: |   > TSSSpainCleanse [workarea]                                            |
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
:: |   601 - combining match output files & sort by ref-id                     |
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
:: |  19-Apr-2013  sheldon    Created.                                         |
:: |  02-Jan-2014  sheldon    Upgraded to TSS v14.0.                           |
:: |  03-Jan-2014  sheldon    Added lat/long geocoder.                         |
:: |  03-Mar-2016  TERADATA   REMOVED POSTAL STANDARDIZATION                   |
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
   ::! @set TS_PROJECT=C:\Trillium_Development\v14\development\projects\esp\cleanse
   ::! @set TS_WORKAREA=C:\Trillium_Development\v14\development\workarea1
   ::! @set PATH=%TS_QUALITY%\bin;%SystemRoot%\system32;%SystemRoot%

   :: P&G server environment
   @set TS_QUALITY=%TSS_SWV%\Software
   @set TS_POSTAL=%TS_QUALITY%\..\tables
   @set TS_PROJECT=%TSS_PROJECTS%\esp\cleanse
   @set TS_WORKAREA=%ESP_WRK%
   @set PATH=%TS_QUALITY%\bin;%SystemRoot%\system32;%SystemRoot%

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
   ::... Make sure we've got an input file to process
   ::

   @if NOT EXIST "%TS_DATA%\TSS_CLEANSE_INPUT_ESP.DAT" (
      @echo ESP cleanse input file is missing.  No ESP cleansing performed. >>"%RUNLOG%"
      @type nul > "%TS_DATA%\TSS_CLEANSE_OUTPUT_ESP.DAT"
      @type nul > "%TS_DATA%\TSS_WINKEY_OUTPUT_ESP.DAT"
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
   ::... | Run the Cleanse process as a piped-data stream                      |
   ::    +---------------------------------------------------------------------+
   ::
   ::    Run the following Trillium processes in a single piped-data-stream:
   ::            1: Transformer 1
   ::            2: Customer Data Parser
   ::            3: Sort for Postal Matcher
   ::            4: Postal Matcher
   ::            5: Transformer 2 (data reconstructor)
   ::            6: Geocoder (lat/long)
   ::            7: Window Key Generator
   ::            8: Transformer 3 (output)
   ::
   ::    Reads:  TSS_CLEANSE_INPUT_ESP.DAT
   ::    Writes: TSS_CLEANSE_OUTPUT_ESP.DAT
   ::

   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\estranfrmr_p1.stx"  "%TS_LOGS%\p1_estranfrmr"  "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\cusparse"  "%TS_SETTINGS%\escusparse_p2.stx"  "%TS_LOGS%\p2_escusparse"  "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tsqsort"   "%TS_SETTINGS%\essrtforpm_p3.stx"  "%TS_LOGS%\p3_essrtforpm"  "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tqpmatch"  "%TS_SETTINGS%\espmatch_p4.stx"    "%TS_LOGS%\p4_espmatch"    "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\gllatlon"  "%TS_SETTINGS%\eslatlon_p10.stx"    "%TS_LOGS%\p10_eslatlon"    "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\esdrtrans_p5.stx"   "%TS_LOGS%\p5_esdrtrans"   "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\winkey"    "%TS_SETTINGS%\eswinkey_p6.stx"    "%TS_LOGS%\p6_eswinkey"    "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\estranfrmr_p7.stx"  "%TS_LOGS%\p7_estranfrmr"  "%ERRLOG%"    )))))))
   @call :check_status "p1,p2,p3,p4,p10,p5,p6,p7" "Cleanse"
   @if %status% == 1 (set status=112 & goto end)

   ::    +---------------------------------------------------------------------+
   ::... | Create the WINKEY_OUTPUT file.                                      |
   ::    +---------------------------------------------------------------------+
   ::
   ::    Reads:  TSS_CLEANSE_OUTPUT_ESP.DAT
   ::    Writes: TSS_WINKEY_OUTPUT_ESP.DAT
   ::

   @call "%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\estranfrmr_p8.stx"  "%TS_LOGS%\p8_estranfrmr"  "%ERRLOG%"
   @call :check_status "p8" "CreateTriggerFile"
   @if %status% == 1 (set status=113 & goto end)

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
      @echo TSSSpainCleanse job succeeded!
      @echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      @echo.
   ) else (
      @echo.
      @echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      @echo TSSSpainCleanse job failed!
      @echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      @if EXIST "%ERRLOG%" (
         @type "%ERRLOG%" 1>&2
         
      )
      @echo.
   )
   @if "%TSS_PROCESS%" == "i2" (
copy %ESP_WRK%\data\TSS_WINKEY_OUTPUT_ESP.DAT %TSS_OUTPUT%\TSS_WINKEY_OUTPUT_ESP.DAT
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

::end TSSSpainCleanse.cmd
