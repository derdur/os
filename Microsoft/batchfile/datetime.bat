@                                                                                                                                                                                                                                                                                                                       echo off

if %TIME:~,2% GEQ 10 ( echo %DATE:~-4%-%DATE:~4,2%-%DATE:~7,2%T%TIME:~,2%_%TIME:~3,2%_%TIME:~6,2%) else echo %DATE:~-4%-%DATE:~4,2%-%DATE:~7,2%T0%TIME:~1,1%_%TIME:~3,2%_%TIME:~6,2%

