@echo off

:: Open your folder and HandBrake
start "" "D:\series\dil o danish\dil danish"
start "" "C:\Users\CEO\Videos"
start "" "C:\Users\CEO\Downloads"
start "" "C:\Program Files\HandBrake\HandBrake.exe"

:: Launch Clipchamp using the shell:AppsFolder method
start "" explorer.exe shell:AppsFolder\Clipchamp.Clipchamp_yxz26nhyzhsrt!App

:: Open websites with Chrome Profile 3
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 3" "https://chatgpt.com/g/g-677784aa07648191bd4a375667809554-text-to-video-generator-prompt" "https://sora.com/library"

:: Open YouTube Studio with Chrome Profile 7
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 7" "https://studio.youtube.com/channel/UCCO7WYT_dEkn4nTTA6xWdEg/videos/upload?filter=%5B%5D&sort=%7B%22columnType%22%3A%22date%22%2C%22sortOrder%22%3A%22DESCENDING%22%7D"

:WAIT
set /p input=Press Q and Enter to close everything:
if /i "%input%"=="Q" (
    taskkill /im HandBrake.exe /f
    taskkill /im Clipchamp.exe /f
    taskkill /im chrome.exe /f
    exit
) else (
    goto WAIT
)