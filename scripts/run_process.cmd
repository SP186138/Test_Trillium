:: +---------------------------------------------------------------------------+
:: | File:     run_process.cmd                                                 |
:: | Purpose:  Run one Trillium Software process executable.                   |
:: +---------------------------------------------------------------------------+
:: |                                                                           |
:: | Client:   Teradata Corporation                                            |
:: | Project:  1 Consumer Place                                                |
:: | Country:  All                                                             |
:: | Author:   Sheldon Hartling                                                |
:: | Date:     30-Apr-2012                                                     |
:: |                                                                           |
:: | Usage:                                                                    |
:: |   > run_process prog settings errlog                                      |
:: |     where:                                                                |
:: |       prog     = TSQ13 executable to run                                  |
:: |       settings = TSQ13 settings file name                                 |
:: |       log      = TSQ13 log file name                                      |
:: |       errlog   = batch error log file                                     |
:: |                                                                           |
:: | Return Status:                                                            |
:: |   errorlevel = 0, success                                                 |
:: |   errorlevel = 1, failure                                                 |
:: |                                                                           |
:: | Note:                                                                     |
:: |   THIS COMMAND FILE IS RUN AS PART OF A PIPED DATA STREAM AND MUST NOT    |
:: |   BE ALLOWED TO GENERATE ANY OUTPUT TO STDOUT!                            |
:: |                                                                           |
:: |                                                                           |
:: | Change History:                                                           |
:: |                                                                           |
:: |  Date         Author     Description                                      |
:: |  ...........  .........  ...............................................  |
:: |  30-Apr-2012  sheldon    Created. Based on previous work.                 |
:: |                                                                           |
:: +---------------------------------------------------------------------------+

   ::
   ::... Run the program
   ::

   @%1 %2 "%~3_errlog.txt"  2>"%~3_stderr.txt"

   ::
   ::... Check for errors
   ::

   @if NOT %errorlevel% == 0 (
      @if NOT %errorlevel% == 101 (
         @echo ERROR: [%DATE%%TIME%] %~n3 process failed, error_level=%errorlevel% >>%4
      )
   )

::end run_process.cmd
