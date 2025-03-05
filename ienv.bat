@echo off

:: Step 1: Open the directory in VS Code
start "" code "D:\MyGitHub\inevis"

:: Step 2: Run 'npm run dev' in a visible CMD window
start cmd /k "cd /d D:\MyGitHub\inevis && npm run dev"

:: Step 3: Wait for 5 seconds to allow the dev server to start
ping -n 6 127.0.0.1 >nul

:: Step 4: Open Microsoft Edge to http://localhost:3000
start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" http://localhost:3000

:: Step 5: Open ChatGPT in Chrome
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Default" "https://chatgpt.com/c/67c4614d-6798-800d-be2d-f9cc9353740f"
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Default" "https://chatgpt.com/c/67c4612e-b50c-800d-8db9-44b6fd5a1ab6"
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Default" "https://www.inevis.de/de/contact"
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Default" "https://tailwindui.com/"
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Default" "https://tailwindcss.com/docs/"

:loop
set /p input=Press 'q' and Enter to close everything: 
if "%input%"=="q" goto close
goto loop

:close
:: Kill VS Code, CMD, Edge, Chrome, and child processes
call taskkill /f /im code.exe
call taskkill /f /t /im cmd.exe
call taskkill /f /im msedge.exe
call taskkill /f /im chrome.exe
exit
