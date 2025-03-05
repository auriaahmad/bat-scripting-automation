@echo off
start "Folder" "D:\series\dil o danish\dil danish"
start "Audacity" "C:\Program Files\Audacity\Audacity.exe"
start winword
start whatsapp:


:loop
set /p input=Press 'q' and Enter to close everything: 
if "%input%"=="q" goto close

goto loop

:close
taskkill /f /im audacity.exe
Taskkill /f /im WINWORD.EXE
taskkill /f /im WhatsApp.exe
exit
