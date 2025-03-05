@echo off

:: Open OpenAI chats in Orya Ahmad profile
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Default" "https://chatgpt.com/c/67a609ca-313c-800d-804e-de01a9bc7928"
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Default" "https://chatgpt.com/c/67a87835-e8d8-800d-b1a2-e48e2b7b1f10"

:: Open YouTube Studio in Auctos AI profile
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 6" "https://studio.youtube.com/channel/UCMGG8Je09kIuHfwbSojarQw"

:: Open folder
start explorer "D:\series\auctos ai lte series"

:: Open PowerPoint presentations
start "" "D:\series\auctos ai lte series\Introduction to LTE and 4G Mobile Communication.pptx"
start "" "D:\series\auctos ai lte series\z Technology Presentation in Blue Red Yellow 3D Style.pptx"

:: Open Word document
start "" "D:\series\auctos ai lte series\lte description.docx"

:: Open Iriun Webcam
start "" "C:\Program Files (x86)\Iriun Webcam\IriunWebcam.exe"

:: Open Paint
start "" "%windir%\system32\mspaint.exe"

:: Keep the script running and wait for 'q' to exit
echo Press 'q' and hit Enter to close everything.
:loop
set /p input=
if /I "%input%"=="q" goto close
goto loop

:close
taskkill /IM "chrome.exe" /F
taskkill /IM "POWERPNT.EXE" /F
taskkill /IM "WINWORD.EXE" /F
taskkill /IM "IriunWebcam.exe" /F
taskkill /IM "mspaint.exe" /F
exit
