@echo off
rem -- ----------------------------------------------------------------
rem -- This file is for Ms Windows.
rem -- This file starts the ChatClient from its remote installation point.
rem -- *** IMPORTANT ***
rem -- You must modify the line   set HTTP=...  to point to *your* codebase.
rem -- ----------------------------------------------------------------

set HTTP=http://www.dsv.su.se/~user/prislab1/client

set CFG=%~dp0.\HTTPD_CFG.BAT

IF NOT EXIST "%CFG%" GOTO nofile
CALL "%CFG%"
SET HTTP=%CODEBASE%

:nofile

set ROOT="%~dp0..\.."

set LIB=%ROOT%/lib

set PCY=%LIB%/policy.all

set JRN=%LIB%/JarRunner.jar

set CBS=%HTTP%/client/ChatClient-dl.jar

set JAR=%HTTP%/client/ChatClient.jar

set CLASSPATH=

java -Djava.security.policy=%PCY% -Djava.rmi.server.codebase="%CBS%" -jar %JRN% %JAR% %*
