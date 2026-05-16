---
title: Ferramentas do Segundo Cérebro
type: resource
created: 2026-05-16
updated: 2026-05-16
sources: [sessao-configuracao-2026-05-16]
tags: [ferramentas, obsidian, claude-code, git, nodejs, windows]
---

# Ferramentas do Segundo Cérebro

## Obsidian

**Descrição:** Editor de notas em markdown com suporte nativo a wikilinks, grafo de conexões e plugins.

**Link:** https://obsidian.md

**Casos de uso:**
- Navegar o wiki visualmente
- Ver grafo de conexões entre páginas (`Ctrl+G`)
- Abrir qualquer página rapidamente (`Ctrl+O`)
- Editar manualmente quando necessário

**Avaliação:** Excelente como interface de leitura. Os wikilinks `[[assim]]` funcionam nativamente. O grafo de conhecimento é poderoso para ver conexões emergentes.

**Configuração usada:**
- Vault: `C:\Users\vgerm\OneDrive\Documentos\segundo cerebro\Cérebro Germano`
- Página inicial: `wiki/home.md`

---

## Claude Code CLI

**Descrição:** CLI da Anthropic que roda Claude diretamente no terminal, com acesso ao sistema de arquivos local.

**Instalação:** `npm install -g @anthropic-ai/claude-code`

**Casos de uso:**
- Ingerir fontes e atualizar o wiki automaticamente
- Responder perguntas com base nas páginas do wiki
- Fazer lint e manutenção do wiki
- Criar e editar arquivos markdown

**Avaliação:** Motor principal do sistema. Lê o `CLAUDE.md` e segue as instruções de workflow. Essencial para o padrão LLM Wiki.

**Como abrir:** Dar dois cliques em `abrir-claude.bat` na pasta do vault.

**Atalho importante:** `Ctrl+Shift+V` para colar texto no terminal.

---

## Git + GitHub

**Descrição:** Sistema de controle de versão para sincronizar o vault entre dispositivos e manter histórico.

**Repositório:** `vgermano1711/segundo-c-rebro-obsidian---claude-`

**Branch:** `claude/llm-wiki-pattern-xg5c7`

**Casos de uso:**
- Sincronizar mudanças feitas pelo Claude Code web → PC local
- Histórico de todas as mudanças no wiki
- Backup automático no GitHub

**Comandos essenciais:**
```cmd
git pull   ← baixar atualizações
git push   ← enviar atualizações
git status ← ver o que mudou
```

---

## Node.js / npm

**Descrição:** Runtime JavaScript necessário para instalar o Claude Code CLI.

**Link:** https://nodejs.org

**Casos de uso:**
- Apenas como dependência do Claude Code
- Instalar via instalador `.msi` no Windows

**Avaliação:** Necessário mas transparente — instala uma vez e esquece.

---

## abrir-claude.bat

**Descrição:** Script Windows que abre o Claude Code já na pasta correta do vault.

**Localização:** Raiz da pasta `Cérebro Germano`

**O que faz:**
1. Navega para a pasta do vault
2. Sincroniza via `git pull`
3. Abre o Claude Code

**Como usar:** Dois cliques no arquivo.

---

## Data de descoberta
2026-05-16

## Links
- [[projects/segundo-cerebro-obsidian-claude]] — projeto que usa todas essas ferramentas
- [[events/configuracao-segundo-cerebro-2026-05-16]] — sessão de instalação e configuração
