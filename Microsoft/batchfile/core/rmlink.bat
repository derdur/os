@                                                                                                                                                                                                                                                                                                                       echo off

:LOOP
if "%~1" == "" exit/b
if exist "%~1" rmdir /q "%~1" 2>NUL >NUL
shift /1
goto:LOOP
