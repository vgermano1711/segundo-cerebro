@echo off
title Segundo Cerebro — Sincronizando...
color 0A

echo.
echo ========================================
echo   SEGUNDO CEREBRO — Sincronizacao
echo ========================================
echo.

cd /d "%~dp0"

echo [1/3] Baixando atualizacoes do GitHub...
git pull origin main
if errorlevel 1 (
    echo.
    echo AVISO: Erro ao sincronizar. Verifique sua conexao.
    echo Abrindo Obsidian com a versao local...
)

echo.
echo [2/3] Sincronizacao concluida!
echo.

echo [3/3] Abrindo Obsidian...
start "" "obsidian://open?path=%~dp0"

echo.
echo ========================================
echo   Tudo pronto! Bom trabalho.
echo ========================================
echo.
timeout /t 3 /nobreak >nul
