@echo off
chcp 65001 >nul
setlocal
set "VER=V1.1.1"
set "URL=https://github.com/610263716-cell/acp-tool-releases/releases/download/V1.1.1/ACP-Tool-V1.1.1.exe"
set "OUT=%~dp0ACP-Tool-%VER%.exe"
echo ??????? ACP-Tool %VER% ?
powershell -NoProfile -Command "Invoke-WebRequest -Uri '%URL%' -OutFile '%OUT%' -UseBasicParsing"
if errorlevel 1 ( echo ?? & pause & exit /b 1 )
start "" "%OUT%"
pause
endlocal
