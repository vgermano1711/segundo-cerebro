@echo off
title Segundo Cerebro — Claude Code
color 0B

echo.
echo ========================================
echo   SEGUNDO CEREBRO — Abrindo Claude
echo ========================================
echo.

:: Ajuste este caminho para a pasta do seu vault no Obsidian
set VAULT=C:\Users\vgerm\OneDrive\Documentos\segundo cerebro\Cérebro Germano

cd /d "%VAULT%"

if errorlevel 1 (
    echo ERRO: Pasta nao encontrada: %VAULT%
    echo Edite este arquivo e corrija o caminho na linha "set VAULT=..."
    pause
    exit /b 1
)

echo Pasta: %VAULT%
echo.
echo Iniciando Claude Code...
echo.
claude
