@                                                                                                                                                                                                                                                                                                                       echo off

for /f usebacktokens^=* %%I in ( '%CMDCMDLINE:*" = "%' ) do echo %%I

