@                                                                                                                                                                                                                                                                                                                       echo off

:LOOP
if "%~1" == "" exit/b
for %%i in ( "%~1" ) do if exist %%i if %%~zi EQU 0 ( 
  for /f usebacktokens^=1* %%A in ( `rclone lsf -Fhtp  --fast-list --copy-links --ignore-case --no-traverse --separator " " %%i ` ) do echo %%A %%i
) else for /f usebacktokens^=1* %%A in ( ` certutil -hashfile %%i MD5 ` ) do if "%%~B" == "" echo %%A %%i
shift /1
goto:LOOP


