@echo off
title My Study Session
cd /d D:\series\3 bayyenah\

REM Open PNG files in Paint
start mspaint.exe "00 back.png"
start mspaint.exe "00 front.png"

REM Open PDF files in default PDF reader
start "" "nahw.pdf"
start "" "nahw_10-day answers key.pdf"

REM Open Folder in Explorer
start explorer .


echo All files and folder are running...
echo.
echo Press 'q' and hit ENTER to close everything.

:loop
set /p input=Type here: 
if /i "%input%"=="q" (
    taskkill /im mspaint.exe /f
    taskkill /im FoxitPDFReader.exe /f
    echo Closed all programs.
    exit
) else (
    echo Invalid input. Press 'q' and Enter to quit.
    goto loop
)
