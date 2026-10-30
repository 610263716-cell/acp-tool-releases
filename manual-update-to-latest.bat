@echo off
chcp 65001 >nul
setlocal EnableExtensions
REM 给仍卡在 V1.0.5 文件名、或应用内升级失败的用户：下载最新版到本脚本同目录（版本化文件名）
set "VER=V1.1.0"
set "URL=https://github.com/610263716-cell/acp-tool-releases/releases/download/V1.1.0/ACP-Tool-V1.1.0.exe"
set "OUT=%~dp0ACP-Tool-%VER%.exe"
echo 正在下载 ACP-Tool %VER% …
echo URL=%URL%
echo OUT=%OUT%
powershell -NoProfile -Command "Invoke-WebRequest -Uri '%URL%' -OutFile '%OUT%' -UseBasicParsing"
if errorlevel 1 (
  echo 下载失败。请手动打开 Releases 页下载。
  pause
  exit /b 1
)
echo 完成：%OUT%
echo 请运行新文件（看窗口标题版本），旧的 ACP-Tool-V1.0.5.exe 可删掉。
start "" "%OUT%"
pause
endlocal
