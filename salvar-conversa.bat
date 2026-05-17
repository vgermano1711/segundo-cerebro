@echo off
title Segundo Cerebro — Salvando Conversa...
color 0B
echo.
echo ========================================
echo   SEGUNDO CEREBRO — Salvar Conversa
echo ========================================
echo.
cd /d "%~dp0"
if not exist config.env (
    echo [ERRO] Execute setup.bat primeiro!
    pause & exit /b 1
)
for /f "tokens=2 delims==" %%a in ('findstr "GITHUB_TOKEN" config.env') do set TOKEN=%%a
for /f "tokens=2 delims==" %%a in ('findstr "GITHUB_USER" config.env') do set USER=%%a
for /f "tokens=2 delims==" %%a in ('findstr "GITHUB_REPO" config.env') do set REPO=%%a
echo [1/2] Baixando nota salva pelo Claude...
git pull "https://%TOKEN%@github.com/%USER%/%REPO%.git" main
echo.
echo [2/2] Abrindo Obsidian...
start "" "obsidian://open?path=%~dp0"
echo.
echo ========================================
echo   Nota disponivel no Obsidian!
echo ========================================
timeout /t 3 /nobreak >nul
