---
title: Configuração do Segundo Cérebro — Obsidian + Claude Code
type: event
created: 2026-05-16
updated: 2026-05-16
sources: [sessao-configuracao-2026-05-16]
tags: [setup, obsidian, claude-code, segundo-cerebro, marco]
---

# Configuração do Segundo Cérebro — 2026-05-16

## Data
2026-05-16

## Contexto
Primeira sessão de configuração do segundo cérebro pessoal. O usuário descobriu o padrão LLM Wiki e decidiu implementá-lo do zero, combinando Obsidian como interface visual e Claude Code como motor de escrita e organização.

## O que aconteceu

### Fase 1 — Descoberta do padrão
- Usuário trouxe o artigo "LLM Wiki: A pattern for building personal knowledge bases using LLMs"
- Claude Code (web) criou o scaffold inicial do repositório no GitHub
- Estrutura definida: `sources/`, `wiki/people/`, `wiki/projects/`, `wiki/goals/`, `wiki/health/`, `wiki/ideas/`, `wiki/events/`, `wiki/learnings/`, `wiki/resources/`, `wiki/syntheses/`

### Fase 2 — Tentativas e erros no Windows
- Primeira tentativa de criar pastas: colou texto com comentários (`←`) junto com os comandos — erro
- Segunda tentativa: comando limpo funcionou, mas pastas já existiam — erro de "já existe", que não era erro real
- Tentativa de abrir Claude Code via Obsidian plugin: usou `osascript` (comando macOS) — falhou no Windows
- `git pull` na pasta: falhou porque pasta foi criada manualmente, sem git init

### Fase 3 — Instalação e configuração
- Node.js instalado (necessário para npm)
- Claude Code instalado via `npm install -g @anthropic-ai/claude-code`
- Git inicializado na pasta correta: `C:\Users\vgerm\OneDrive\Documentos\segundo cerebro\Cérebro Germano`
- Repositório conectado ao GitHub e branch baixado
- Login feito com conta `vgermano1710@gmail.com`
- Vault aberto no Obsidian apontando para a pasta correta

### Fase 4 — Primeiro ingest
- Artigo LLM Wiki colado no Claude Code
- Claude processou e criou: `wiki/learnings/llm-wiki-pattern.md` e `wiki/ideas/llm-wiki-como-metodo.md`
- `wiki/overview.md`, `wiki/index.md` e `wiki/log.md` atualizados automaticamente
- Sistema funcionando: Obsidian mostrando páginas criadas pelo Claude Code em tempo real

## Problemas Encontrados e Soluções

| Problema | Causa | Solução |
|----------|-------|---------|
| `osascript` não reconhecido | Comando macOS no Windows | Criado `abrir-claude.bat` |
| `tcd` não reconhecido | Typo ao digitar `cd` | Digitar devagar, um comando por vez |
| `npm` não reconhecido | Node.js não instalado | Instalar Node.js em nodejs.org |
| `git pull` falhou | Pasta criada sem git | `git init` + `git remote add` + `git fetch` |
| Não conseguia colar no terminal | Atalho errado | Usar `Ctrl+Shift+V` no terminal |
| Pasta errada no git init | Rodou na pasta `C:\Users\vgerm` | Navegar para a pasta correta primeiro |

## Decisões Tomadas
- Vault do Obsidian em: `C:\Users\vgerm\OneDrive\Documentos\segundo cerebro\Cérebro Germano`
- Repositório GitHub: `vgermano1711/segundo-c-rebro-obsidian---claude-`
- Branch de trabalho: `claude/llm-wiki-pattern-xg5c7`
- Tema do Claude Code: Dark mode
- Login: conta Claude Pro (`vgermano1710@gmail.com`)

## Aprendizados
- No Windows, sempre usar `Ctrl+Shift+V` para colar no terminal
- `mkdir` dando "já existe" não é erro — as pastas foram criadas
- `osascript` é exclusivo do macOS — no Windows usar `.bat`
- Sempre navegar para a pasta correta antes de rodar `git init`
- `abrir-claude.bat` é o atalho para o fluxo diário

## Links
- [[projects/segundo-cerebro-obsidian-claude]] — projeto principal
- [[learnings/llm-wiki-pattern]] — o padrão que inspirou tudo
- [[ideas/segundo-cerebro-como-exocortex]] — a ideia central
- [[resources/ferramentas-segundo-cerebro]] — ferramentas usadas
- [[goals/dominar-segundo-cerebro]] — meta de longo prazo
