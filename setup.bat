@echo off
title Segundo Cerebro — Setup Inicial
color 0A
echo.
echo ========================================
echo   SEGUNDO CEREBRO — Setup do Token
echo ========================================
echo.
cd /d "%~dp0"
if exist config.env (
    echo [OK] config.env ja existe.
    timeout /t 2 /nobreak >nul
    exit /b 0
)
echo Criando config.env local...
echo GITHUB_TOKEN=SEU_TOKEN_AQUI > config.env
echo GITHUB_USER=vgermano1711 >> config.env
echo GITHUB_REPO=segundo-cerebro >> config.env
echo.
echo [ATENCAO] Abrindo config.env para voce preencher o token.
pause >nul
notepad config.env
