---
title: Segundo Cérebro — Obsidian + Claude Code
type: project
created: 2026-05-16
updated: 2026-05-16
sources: [sessao-configuracao-2026-05-16]
tags: [projeto-ativo, obsidian, claude-code, conhecimento, produtividade]
---

# Segundo Cérebro — Obsidian + Claude Code

## Objetivo
Construir um segundo cérebro pessoal persistente — uma base de conhecimento viva que acumula tudo que Victor estuda, vive, decide e aprende, organizada automaticamente pelo Claude Code e navegável pelo Obsidian.

## Status
**Ativo** — infraestrutura configurada, primeiro ingest realizado em 2026-05-16.

## Pessoas Envolvidas
- Victor Germano — dono e curador do segundo cérebro

## Arquitetura

```
sources/          ← Victor alimenta (notas, artigos, transcrições)
wiki/             ← Claude Code escreve e mantém
  home.md         ← dashboard
  index.md        ← catálogo mestre
  log.md          ← histórico cronológico
  overview.md     ← síntese geral
  people/         ← pessoas relevantes
  projects/       ← projetos
  goals/          ← metas
  health/         ← saúde e hábitos
  ideas/          ← insights e hipóteses
  events/         ← momentos marcantes
  learnings/      ← aprendizados
  resources/      ← ferramentas e links
  syntheses/      ← análises geradas
```

## Ferramentas
- **Obsidian** — interface visual, grafo de links, navegação
- **Claude Code CLI** — motor de escrita e organização
- **Git + GitHub** — sincronização e histórico
- **Node.js / npm** — necessário para instalar Claude Code

## Timeline
| Data | Marco |
|------|-------|
| 2026-05-16 | Scaffold criado, Obsidian configurado, primeiro ingest realizado |

## Fluxo Diário
1. Abrir `abrir-claude.bat` na pasta do vault
2. Jogar notas/artigos em `sources/`
3. Dizer ao Claude: `ingest sources/arquivo.md`
4. Obsidian atualiza automaticamente com as novas páginas

## Decisões Tomadas
- Vault localizado no OneDrive para backup automático
- Branch separado no GitHub para versionamento
- Idioma do wiki: português
- Schema definido em `CLAUDE.md`

## Próximos Passos
- [ ] Ingerir primeiras fontes pessoais (notas, diários, artigos salvos)
- [ ] Criar páginas de pessoas relevantes
- [ ] Registrar metas atuais
- [ ] Fazer primeiro lint do wiki após 10+ páginas
- [ ] Instalar plugin Obsidian Git para sync automático

## Aprendizados
- O padrão LLM Wiki é radicalmente diferente de RAG — o conhecimento se acumula em vez de ser redescoberto
- Obsidian funciona como IDE; Claude Code funciona como programador; o wiki é o código

## Links
- [[events/configuracao-segundo-cerebro-2026-05-16]] — dia da configuração
- [[learnings/llm-wiki-pattern]] — padrão que inspirou o projeto
- [[ideas/segundo-cerebro-como-exocortex]] — a ideia central
- [[resources/ferramentas-segundo-cerebro]] — ferramentas do projeto
- [[goals/dominar-segundo-cerebro]] — meta associada
