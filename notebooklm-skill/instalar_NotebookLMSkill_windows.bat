@echo off
chcp 65001 >nul
cls

echo.
echo ============================================
echo    Instalador NotebookLMSkill
echo    Claridad Artificial
echo ============================================
echo.
echo Este proceso instala todo lo necesario para
echo conectar Claude Code con NotebookLM.
echo.
pause
echo.

echo [1/4] Comprobando Python...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo   Python no encontrado.
    echo   Ve a: https://www.python.org/downloads/
    start https://www.python.org/downloads/
    pause
    exit /b 1
)

for /f "tokens=2 delims= " %%v in ('python --version 2^>^&1') do set PYVER=%%v
echo   v Python %PYVER% encontrado.

echo.
echo [2/4] Configurando PowerShell...
powershell -Command "Set-ExecutionPolicy -Scope CurrentUser RemoteSigned -Force" >nul 2>&1
echo   v Configuracion correcta.

echo.
echo [3/4] Instalando notebooklm-py (3-7 minutos)...
python -m venv "%USERPROFILE%\.notebooklm-venv"
"%USERPROFILE%\.notebooklm-venv\Scripts\pip.exe" install --quiet --upgrade pip
"%USERPROFILE%\.notebooklm-venv\Scripts\pip.exe" install "notebooklm-py[browser]"
"%USERPROFILE%\.notebooklm-venv\Scripts\playwright.exe" install chromium
echo   v notebooklm-py instalado correctamente.

echo.
echo [4/4] Verificando instalacion...
"%USERPROFILE%\.notebooklm-venv\Scripts\notebooklm.exe" --help >nul 2>&1
if %errorlevel% neq 0 (
    echo   x Algo ha fallado en la verificacion.
    pause
    exit /b 1
)
echo   v Todo funciona correctamente.

echo.
echo ============================================
echo   v Instalacion completada correctamente
echo ============================================
echo.
echo Pasos siguientes:
echo   1. Abre Claude Code
echo   2. Sube NotebookLMSkill.md como skill
echo   3. Escribe: instala notebooklm
echo.
pause
