@echo off

:: Open OpenAI chats in Orya Ahmad profile
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Default" "https://chatgpt.com/c/679fb3f7-6424-800d-8b31-c4f55a13902a"
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Default" "https://chatgpt.com/c/67ab1086-31e8-800d-ba0d-409365daa789"

:: Open YouTube Studio in Auctos AI profile
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 6" "https://studio.youtube.com/playlist/PL89tvecXAeKURNoSEg7hLW6aTC4GAZr5c/videos"

:: Open VS Code in the specified project directory
start "" "C:\Users\CEO\AppData\Local\Programs\Microsoft VS Code\Code.exe" "D:\series\auctos ai python series\play list 2\test project"



:: Open folder
start explorer "D:\series\auctos ai python series\play list 2"

:: Open PowerPoint presentations
start "" "D:\series\auctos ai python series\play list 2\Getting started with practical python.pptx"


:: Open Word document
start "" "D:\series\auctos ai python series\play list 2\description.docx"


:: Open python book
start "" "D:\series\auctos ai python series\python.pdf"

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
taskkill /IM "FoxitPDFReader.exe" /F
taskkill /IM "Code.exe" /F
exit
