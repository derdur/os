@                                                                                                                                                                                                                                                                                                                       echo off

:DELQ
if "%~1" == "" exit/b
if exist "%~1" del /q /f "%~1" 2>NUL >NUL
shift /1
goto:DELQ
