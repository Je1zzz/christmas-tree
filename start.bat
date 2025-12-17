@echo off
setlocal
cd /d "%~dp0"

set PORT=5173
set PY=
where py >nul 2>nul && set PY=py -3
if "%PY%"=="" (
  where python >nul 2>nul && set PY=python
)

if "%PY%"=="" (
  echo [错误] 未找到 Python。
  echo 解决方案：
  echo - 安装 Python 3（勾选 Add to PATH），或
  echo - 继续使用 VS Code 的 Live Server 插件
  echo.
  pause
  exit /b 1
)

echo [Info] 启动本地服务：http://localhost:%PORT%/
echo [Info] 请保持此窗口打开，关闭即停止服务。
start "" "http://localhost:%PORT%/index.html"
%PY% -m http.server %PORT%


