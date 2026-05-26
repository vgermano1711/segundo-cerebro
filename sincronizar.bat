@echo off
title Segundo Cerebro — Sincronizando...
color 0A

echo.
echo ========================================
echo   SEGUNDO CEREBRO — Sincronizacao
echo ========================================
echo.

cd /d "%~dp0"

echo [1/3] Buscando atualizacoes do GitHub...
git fetch origin claude/llm-wiki-pattern-xg5c7
if errorlevel 1 (
    echo.
    echo AVISO: Erro ao buscar atualizacoes. Verifique sua conexao.
    goto :abrir
)

echo.
echo [2/3] Aplicando atualizacoes (sobreescrevendo local com remoto)...
git checkout claude/llm-wiki-pattern-xg5c7
git reset --hard origin/claude/llm-wiki-pattern-xg5c7
if errorlevel 1 (
    echo.
    echo AVISO: Erro ao aplicar atualizacoes.
    goto :abrir
)

echo.
echo Sincronizacao concluida com sucesso!

:abrir
echo.
echo [3/3] Abrindo Obsidian...
start "" "obsidian://open?path=%~dp0"

echo.
echo ========================================
echo   Tudo pronto! Bom trabalho.
echo ========================================
echo.
timeout /t 3 /nobreak >nul
