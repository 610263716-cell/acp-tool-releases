@echo off
chcp 65001 >nul
setlocal EnableExtensions
set "VER=V1.1.1"
set "URL=https://github.com/610263716-cell/acp-tool-releases/releases/download/V1.1.1/ACP-Tool-V1.1.1.exe"
set "OUT=%~dp0ACP-Tool-%VER%.exe"
echo 正在下载 ACP-Tool %VER% …
powershell -NoProfile -Command "Invoke-WebRequest -Uri '%URL%' -OutFile '%OUT%' -UseBasicParsing"
if errorlevel 1 ( echo 下载失败 & pause & exit /b 1 )
echo 完成：%OUT%
start "" "%OUT%"
pause
endlocal
