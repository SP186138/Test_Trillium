:: +---------------------------------------------------------------------------+
:: | File:     RunParserCustomization.cmd                                      |
:: | Purpose:  Run CDP Parser Customization for all countries.                 |
:: +---------------------------------------------------------------------------+
:: |                                                                           |
:: | Client:   Teradata Corporation                                            |
:: | Project:  1 Consumer Place                                                |
:: | Country:  All Countries                                                   |
:: | Author:   Sheldon Hartling                                                |
:: | Date:     12-Jun-2012                                                     |
:: |                                                                           |
:: | Usage:                                                                    |
:: |   > RunParserCustomization [workarea]                                     |
:: |     where:                                                                |
:: |       workarea = an optional argument specifying the complete path name   |
:: |                  for the work area directory.                             |
:: |                                                                           |
:: | Return Status:                                                            |
:: |   errorlevel = 0, success                                                 |
:: |   errorlevel > 0, failure                                                 |
:: |                                                                           |
:: |                                                                           |
:: | Change History:                                                           |
:: |                                                                           |
:: |  Date         Author     Description                                      |
:: |  ...........  .........  ...............................................  |
:: |  12-Jun-2012  sheldon    Created.                                         |
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
   @set TS_QUALITY=C:\Program Files (x86)\Trillium Software\TSQuality\13\Software
   @set TS_POSTAL=%TS_QUALITY%\..\tables
   @set TS_PROJECTS=C:\Trillium_Development\development\projects
   @set TS_WORKAREA=C:\Trillium_Development\development\workarea1
   @set PATH=%TS_QUALITY%\bin;%SystemRoot%\system32;%SystemRoot%

   :: DEV server environment
   ::! @set TS_QUALITY=E:\Program Files (x86)\Trillium Software\TSQuality\13\Software
   ::! @set TS_POSTAL=%TS_QUALITY%\..\tables
   ::! @set TS_PROJECTS=F:\TrilliumDeployment-ParallelF\projects
   ::! @set TS_WORKAREA=%TS_PROJECT%
   ::! @set PATH=%TS_QUALITY%\bin;%SystemRoot%\system32;%SystemRoot%

   ::
   ::... Set derived environment variables.
   ::    
   
   @set TSQ_BIN=%TS_QUALITY%\bin
   ::
   @set TS_DATA=%TS_WORKAREA%\data
   @set TS_LOGS=%TS_WORKAREA%\logs
   @set TS_TMP=%TS_WORKAREA%\tmp
  
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
      
   ::    +---------------------------------------------------------------------+
   ::... | Process each country, one after the other                           |
   ::    +---------------------------------------------------------------------+
  
   @set olddir=%CD%
   @cd %TS_PROJECTS%
   @for /d %%c in (*) do @(
      @call :process_country "%%c"
      echo %status%
      @if %status% == 1 goto :end
   )
   @cd %olddir%
         
   ::    +---------------------------------------------------------------------+
   ::... | Exit with status.                                                   |
   ::    +---------------------------------------------------------------------+

   ::
   ::... Set Prompt back to default.
   ::

   :end
   @cd %olddir%
   @echo ^</%~n0_runlog^>>>"%RUNLOG%"
   @prompt

   ::
   ::... Display final error or success message.
   ::

   @echo final status check is  %status%
   @if %status% == 0 (
      @echo.
      @echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      @echo RunParserCustomization job succeeded!
      @echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      @echo.
   ) else (
      @echo.
      @echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      @echo RunParserCustomization job failed!
      @echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      @if EXIST "%ERRLOG%" (
         @type "%ERRLOG%" 1>&2
         @find "ERROR:" "%RUNLOG%" 1>&2
      )
      @echo.
   )

   @exit /b %status%


:: +---------------------------------------------------------------------------+
:: | process_country FUNCTION                                                  |
:: +---------------------------------------------------------------------------+
::
::  Local function used run parser customization for a single country.
::
::  Input Arguments:
::    arg1 = sub-directory name, usually an ISO country code.
::
::

:process_country
      echo called :process_country %~1

   :: Is there a parser-customization setting file in this directory?
   
   @if EXIST "%TS_PROJECTS%\%~1%\cleanse\settings\*prcustom*.stx" (
   
      @set TS_PROJECT=%TS_PROJECTS%\%~1%\cleanse
      @set TS_DDL=%TS_PROJECT%\dll
      @set TS_SETTINGS=%TS_PROJECT%\settings
      @set TS_TABLES=%TS_PROJECT%\tables
      @set PRCUSTOM_STX=
      for %%f in ("%TS_SETTINGS%\*prcustom*.stx") do (set PRCUSTOM_STX=%%f && echo inside its %PRCUSTOM_STX% )
      echo outside its %PRCUSTOM_STX%
      @del /Q "%TS_CONFIG%" 2>nul
      @call "%HOME%\make_config.cmd"
      echo Running parser cutomization for %~1% using this settings file: "%PRCUSTOM_STX%"
      echo TS_PROJECT=%TS_PROJECT%
      echo TS_DDL=%TS_DDL%
      echo TS_SETTINGS=%TS_SETTINGS%
      echo TS_TABLES=%TS_TABLES%
      echo PRCUSTOM_STX=%PRCUSTOM_STX%
      echo.
      echo.
      call "%HOME%\run_process.cmd"  "%TSQ_BIN%\prcustom"  "%PRCUSTOM_STX%"  "%TS_LOGS%\prcustom"  "%ERRLOG%" 
      @set savederrorlevel=%errorlevel%
                                     @set status=0
      @if NOT %savederrorlevel% == 0 @set status=1
      @if %savederrorlevel% == 101   @set status=0
      @if EXIST "%ERRLOG%"           @set status=1
      @call "%HOME%\consolidate_logs" "%RUNLOG%" "p" "%~1%_prcustom"
      echo returning status=%status%
   )   
   @goto :EOF

::end RunParserCustomization.cmd
