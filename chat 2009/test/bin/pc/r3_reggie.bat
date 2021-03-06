@Echo Off
REM -- ----------------------------------------------------------------
REM -- *** IMPORTANT ***
REM -- This file is for starting a Jini Lookup Server on a Ms Windows PC.
REM -- You will need to customise this file - see below.
REM -- ----------------------------------------------------------------

REM -- This file launches the Jini sample registrar implementation (reggie)
REM -- This file uses Windows NT command extensions.
REM -- Fredrik Kilander, DSV

REM -- INSTRUCTIONS BEFORE USE
REM -- Put this file in the  bin  directory of the lab file-tree.
REM -- Make sure that you have completed the installation of r2_rmid.bat
REM -- Put the file reggie.jar in the  lib  directory of the lab file-tree.
REM -- Make sure that you have a working HTTP server for your codebase, and
REM -- that the file reggie-dl.jar is reachable from it.

REM -- The easiest way to start and stop the reggie Lookup Service, is to
REM -- Start:
REM --   run  r2_rmid
REM --   run  r3_reggie
REM -- Run your programs, do work for as long as it takes...
REM -- Stop:
REM --   Open a Windows command prompt and give the command
REM --     rmid -stop
REM --   This will shut down rmid and reggie as well.

Set LABROOT="%~dp0..\.."

Set PCY=%LABROOT%\lib\policy.all

Set LOG=%TEMP%\reggie_log

REM -- This codebase definition is just an example. Make sure that it points
REM -- to a working HTTP server. Test it with a web-browser.

set CFG=%~dp0.\HTTPD_CFG.BAT

IF NOT EXIST "%CFG%" GOTO nofile
CALL "%CFG%"
SET HTTP=%CODEBASE%

:nofile

SET CBS=%HTTP%/reggie-dl.jar
REM Set CBS=http://%COMPUTERNAME%:80/reggie-dl.jar

Set JAR=%LABROOT%\lib\reggie.jar

Echo ******************************
Echo Starting a Jini Lookup Service
Echo PCY = %PCY%
Echo LOG = %LOG%
Echo CBS = %CBS%
Echo JAR = %JAR%


REM ********************************
REM Remove the old log
REM R[emove]D[irectory] /S[earch the tree] /Q[uietly]
REM ********************************

If Not Exist %LOG% Goto LogIsGone
Echo Removing %LOG%
RD /S /Q %LOG%
:LogIsGone

REM ********************************
REM Disable the classpath variable.
REM ********************************

Set CLASSPATH=

Echo ******************************

REM ************************
REM Invoke the program.
REM Since we are running reggie here, the 'public' at the end of
REM the arguments refers to the group which should be served.
REM ************************

java -jar %JAR% "%CBS%" %PCY% %LOG% public
