:: +---------------------------------------------------------------------------+
:: | File:     consolidate_logs.cmd                                            |
:: | Purpose:  Combine all Trillium log files into a single runlog file.       |
:: +---------------------------------------------------------------------------+
:: |                                                                           |
:: | Client:   Teradata Corporation                                            |
:: | Project:  1 Consumer Place                                                |
:: | Country:  All                                                             |
:: | Author:   Sheldon Hartling                                                |
:: | Date:     30-Apr-2012                                                     |
:: |                                                                           |
:: | Usage:                                                                    |
:: |   > consolidate_logs runlog pnlist section                                |
:: |     where:                                                                |
:: |       runlog = full path of runlog file to be written;                    |
:: |       pnlist = a list of p#'s in "p1,p7,p4,p2,p9" format;                 |
:: |       header = option XML section header to add to consolidated log.      |
:: |                                                                           |
:: | Requires the following environment variables:                             |
:: |   TS_LOGS       - full path for project log file directory.               |
:: |                                                                           |
:: | Return Status:                                                            |
:: |   errorlevel = 0, success                                                 |
:: |   errorlevel = 1, failure                                                 |
:: |                                                                           |
:: |                                                                           |
:: | Change History:                                                           |
:: |                                                                           |
:: |  Date         Author     Description                                      |
:: |  ...........  .........  ...............................................  |
:: |  30-Apr-2012  sheldon    Created. Ported Linux version                    |
:: |                                                                           |
:: +---------------------------------------------------------------------------+

   ::
   ::... Command line arguments.
   ::

   @set RUNLOG=%~1%
   @set PNLIST=%~2%
   @set SECTION=%~3%

   ::
   ::... Include optional XML Section begin-tag in the log.
   ::

   @if NOT "%SECTION%" == "" (
      @echo ^<%SECTION%^>  >>"%RUNLOG%"
   )

   ::
   ::... Process the entire list of P-numbers.
   ::

   @set n=0
   @for %%p in (%PNLIST%) do @(
      @call :Consolidate %%p %nnn%
   )

   ::
   ::... Include optional XML Section end-tag in the log.
   ::

   @if NOT "%SECTION%" == "" (
      echo ^</%SECTION%^>  >>"%RUNLOG%"
   )

   @exit /b 0

   :: +---------------------------------------------------------------------------+
   :: | Consolidate FUNCTION                                                      |
   :: +---------------------------------------------------------------------------+
   ::
   ::  Add marklar, marklar, marklar and marklar to common run log.
   ::

   :Consolidate

      :: determine actual file names for this p#
      @for %%f in ("%TS_LOGS%\%~1_*_stderr.txt") do @(set LOG1=%%f)
      @for %%f in ("%TS_LOGS%\%~1_*_errlog.txt") do @(set LOG2=%%f)
      @for %%f in ("%TS_LOGS%\%~1_*_log.txt")    do @(set LOG3=%%f)
      @for %%f in ("%TS_LOGS%\%~1_*_stats.txt")  do @(set LOG4=%%f)
      @for %%f in ("%TS_LOGS%\%~1_*_log.txt")    do @(set LOGNAME=%%~nf)

      @set /a n=%n%+1
      @set n=%n%
      
      @echo. >>"%RUNLOG%"
      @echo. >>"%RUNLOG%"
      @echo ================================================================================>>"%RUNLOG%"
      @echo %SECTION%-%n%: %LOGNAME% messages>>"%RUNLOG%"
      @echo ================================================================================>>"%RUNLOG%"
      @echo. >>"%RUNLOG%"

      @if EXIST "%LOG1%" (@type "%LOG1%" >>"%RUNLOG%" 2>nul & del /Q "%LOG1%" 2>nul)
      @if EXIST "%LOG2%" (@type "%LOG2%" >>"%RUNLOG%" 2>nul & del /Q "%LOG2%" 2>nul)
      @if EXIST "%LOG3%" (@type "%LOG3%" >>"%RUNLOG%" 2>nul & del /Q "%LOG3%" 2>nul)
      @echo. >>"%RUNLOG%"
      @if EXIST "%LOG4%" (@type "%LOG4%" >>"%RUNLOG%" 2>nul & del /Q "%LOG4%" 2>nul)
      
   @goto :EOF

::end consolidate_logs.cmd
