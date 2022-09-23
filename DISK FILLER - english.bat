@echo off 
title DISK FILLER 
color 0F 
set count=0
set /P path=path to the folder where it will fill (DONT ADD ""):  
echo Please wait...
echo A > "%path%\fill."
FOR /L %i IN (1,1,30) DO (
    type "%path%\fill." >>"%path%\fill."
)
cls
echo copying file
:loop
set /A count=%count%+1
FOR /L %i IN (1,1,%count%) DO (
   copy "%path%\fill." "%path%\fill %count%."
   copy "%path%\fill %count%." "%path%\fill %count%+1."
)
goto :loop