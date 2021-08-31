@echo off
title GitHub - Automation Test
REM Coded by Bug9519
REM Coded on 31/08/2021
REM Date and Time variables and code taken from: https://tecadmin.net/create-filename-with-datetime-windows-batch-script/

set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set CUR_MS=%time:~9,2%
set CURRENTTIME=%CUR_HH%%CUR_NN%%CUR_SS%
set SUBFILENAME=%CUR_MM%%CUR_DD%%CUR_YYYY%

echo %SUBFILENAME% - Date >> uploads\%SUBFILENAME%.txt
echo %CURRENTTIME% - Time (24Hour) >> uploads\%SUBFILENAME%.txt
echo %random% - Random Number >> uploads\%SUBFILENAME%.txt
echo File created.
ping -n 6 localhost > nul
cls
git add uploads\%SUBFILENAME%.txt
echo File added.
ping -n 6 localhost > nul
cls
git commit -am "Daily update."
echo Files should be updated on github.com
ping -n 6 localhost > nul
cls
git push
echo If no errors, then it should be finished.
ping -n 6 localhost > nul
cls