:: +---------------------------------------------------------------------------+
:: | File:     TSSUnitedKingdomCleanse.cmd                                     |
:: | Purpose:  Cleanse 1CP UnitedKingdom data.                                 |
:: +---------------------------------------------------------------------------+
:: |                                                                           |
:: | Client:   Teradata Corporation                                            |
:: | Project:  1 Consumer Place                                                |
:: | Country:  UnitedKingdom                                                   |
:: | Author:   Sheldon Hartling                                                |
:: | Date:     18-Apr-2013                                                     |
:: |                                                                           |
:: | Usage:                                                                    |
:: |   > TSSUnitedKingdomCleanse [workarea]                                    |
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
:: |  18-Apr-2013  sheldon    Created.                                         |
:: |  02-Jan-2014  sheldon    Upgraded to TSS v14.0.                           |
:: |  03-Jan-2014  sheldon    Added lat/long geocoder.                         |
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
   @set TS_QUALITY=C:\Program Files (x86)\Trillium Software\TSQuality\14\Software
   @set TS_POSTAL=%TS_QUALITY%\..\tables
   @set TS_PROJECT=C:\Trillium_Development\v14\development\projects\gbr\cleanse
   @set TS_WORKAREA=C:\Trillium_Development\v14\development\workarea1
   @set PATH=%TS_QUALITY%\bin;%SystemRoot%\system32;%SystemRoot%

   :: DEV server environment
   ::! @set TS_QUALITY=E:\Program Files (x86)\Trillium Software\TSQuality\14\Software
   ::! @set TS_POSTAL=%TS_QUALITY%\..\tables
   ::! @set TS_PROJECT=F:\TrilliumDeployment-ParallelF\projects\gbr\cleanse
   ::! @set TS_WORKAREA=%TS_PROJECT%
   ::! @set PATH=%TS_QUALITY%\bin;%SystemRoot%\system32;%SystemRoot%

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

   @if NOT EXIST "%TS_DATA%\TSS_CLEANSE_INPUT_GBR.DAT" (
      @echo GBR cleanse input file is missing.  No GBR cleansing performed. >>"%RUNLOG%"
      @type nul > "%TS_DATA%\TSS_CLEANSE_OUTPUT_GBR.DAT"
      @type nul > "%TS_DATA%\TSS_WINKEY_OUTPUT_GBR.DAT"
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
   ::    Reads:  TSS_CLEANSE_INPUT_GBR.DAT
   ::    Writes: TSS_CLEANSE_OUTPUT_GBR.DAT
   ::

   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\gbtranfrmr_p1.stx"  "%TS_LOGS%\p1_gbtranfrmr"  "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\cusparse"  "%TS_SETTINGS%\gbcusparse_p2.stx"  "%TS_LOGS%\p2_gbcusparse"  "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tsqsort"   "%TS_SETTINGS%\gbsrtforpm_p3.stx"  "%TS_LOGS%\p3_gbsrtforpm"  "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\gbpmatch"  "%TS_SETTINGS%\gbpmatch_p4.stx"    "%TS_LOGS%\p4_gbpmatch"    "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\gbdrtrans_p5.stx"   "%TS_LOGS%\p5_gbdrtrans"   "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\gllatlon"  "%TS_SETTINGS%\gblatlon_p9.stx"    "%TS_LOGS%\p9_gblatlon"    "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\winkey"    "%TS_SETTINGS%\gbwinkey_p6.stx"    "%TS_LOGS%\p6_gbwinkey"    "%ERRLOG%" | (
   @"%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\gbtranfrmr_p7.stx"  "%TS_LOGS%\p7_gbtranfrmr"  "%ERRLOG%"    )))))))
   @call :check_status "p1,p2,p3,p4,p5,p9,p6,p7" "Cleanse"
   @if %status% == 1 (set status=112 & goto end)

   ::    +---------------------------------------------------------------------+
   ::... | Create the WINKEY_OUTPUT file.                                      |
   ::    +---------------------------------------------------------------------+
   ::
   ::    Reads:  TSS_CLEANSE_OUTPUT_GBR.DAT
   ::    Writes: TSS_WINKEY_OUTPUT_GBR.DAT
   ::

   @call "%HOME%\run_process.cmd"  "%TSQ_BIN%\tranfrmr"  "%TS_SETTINGS%\gbtranfrmr_p8.stx"  "%TS_LOGS%\p8_gbtranfrmr"  "%ERRLOG%"
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
      @echo TSSUnitedKingdomCleanse job succeeded!
      @echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      @echo.
   ) else (
      @echo.
      @echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      @echo TSSUnitedKingdomCleanse job failed!
      @echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      @if EXIST "%ERRLOG%" (
         @type "%ERRLOG%" 1>&2
         @find "ERROR:" "%RUNLOG%" 1>&2
      )
      @echo.
   )

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

::end TSSUnitedKingdomCleanse.cmd
