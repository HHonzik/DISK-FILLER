@echo off 
title DISK FILLER 
color 0F 
set count=0
set /P path=cesta k zaplneni disku (bez ""):  
echo Cekejte prosim
echo A > "%path%\fill."
FOR /L %i IN (1,1,30) DO (
    type "%path%\fill." >>"%path%\fill."
)
cls
echo kopilovani souboru
:loop
set /A count=%count%+1
FOR /L %i IN (1,1,%count%) DO (
   copy "%path%\fill." "%path%\fill %count%."
   copy "%path%\fill %count%." "%path%\fill %count%+1."
)
goto :loop