---
title: Padrão LLM Wiki
type: learning
created: 2026-05-16
updated: 2026-05-16
sources: [sessao-configuracao-2026-05-16]
tags: [llm, wiki, conhecimento, rag, obsidian, padrão]
---

# Padrão LLM Wiki

## Fonte
Artigo "LLM Wiki: A pattern for building personal knowledge bases using LLMs" — descoberto e implementado em 2026-05-16.

## Conceito Central
Em vez de usar LLMs para recuperar informação sob demanda (RAG), usar o LLM para **construir e manter um wiki persistente** que acumula conhecimento ao longo do tempo. O LLM compila o conhecimento uma vez; as sínteses e cross-referências já estão prontas quando você precisa.

## Diferença do RAG

| RAG | LLM Wiki |
|-----|----------|
| Redescobre a cada pergunta | Acumula progressivamente |
| Chunks isolados | Páginas interligadas |
| Sem memória entre sessões | Wiki persiste e cresce |
| Ótimo para buscas pontuais | Ótimo para síntese profunda |

## Arquitetura — Três Camadas

**1. Fontes brutas** (`sources/`)
- Documentos imutáveis que o LLM lê mas nunca modifica
- Notas, artigos, transcrições, PDFs convertidos em texto
- Fonte da verdade do sistema

**2. Wiki** (`wiki/`)
- Diretório de arquivos markdown mantidos exclusivamente pelo LLM
- Páginas de entidades, conceitos, sínteses, overview
- Cresce e se refina com cada novo ingest

**3. Schema** (`CLAUDE.md` / `AGENTS.md`)
- Documento que instrui o LLM sobre estrutura, convenções e fluxos
- Transforma o LLM de chatbot genérico em mantenedor disciplinado
- Evolui junto com o sistema e o usuário

## Três Operações Principais

**Ingest** — processar uma nova fonte:
1. LLM lê a fonte
2. Discute pontos principais com o usuário
3. Cria/atualiza páginas no wiki
4. Atualiza index.md e log.md

**Query** — responder perguntas:
1. LLM lê index.md para encontrar páginas relevantes
2. Lê as páginas
3. Sintetiza resposta com citações
4. Opcionalmente arquiva em `syntheses/`

**Lint** — checar saúde do wiki:
- Contradições entre páginas
- Páginas órfãs sem links de entrada
- Conceitos sem página própria
- Afirmações desatualizadas

## Casos de Uso
- **Pessoal**: metas, saúde, psicologia, diários
- **Pesquisa**: papers, artigos, relatórios sobre um tema
- **Leitura**: wiki por livro (personagens, temas, plot)
- **Empresarial**: wiki de equipe alimentado por Slack, reuniões, docs

## Por que importa
Resolve o problema fundamental de ferramentas como NotebookLM e ChatGPT file uploads: o conhecimento não se acumula. A cada sessão, o LLM começa do zero. O padrão LLM Wiki cria um artefato persistente que fica mais valioso com o tempo.

## Aplicações práticas
- Implementado no [[projects/segundo-cerebro-obsidian-claude]]
- Usar `CLAUDE.md` como schema para sessões do Claude Code
- Usar `AGENTS.md` para outros agentes (Codex, OpenCode)
- Manter `index.md` atualizado como mapa de navegação
- Usar `log.md` para rastrear evolução cronológica

## Trechos memoráveis
> "Obsidian is the IDE; the LLM is the programmer; the wiki is the codebase."

> "The wiki keeps getting richer with every source you add and every question you ask."

> "Knowledge is compiled once and kept current, not re-derived on every query."

## Contradições com crenças anteriores
- Antes: LLMs são ferramentas de consulta pontual
- Depois: LLMs podem ser mantenedores de conhecimento de longo prazo

## Links relacionados
- [[ideas/segundo-cerebro-como-exocortex]] — a ideia aplicada ao contexto pessoal
- [[projects/segundo-cerebro-obsidian-claude]] — implementação concreta
- [[resources/ferramentas-segundo-cerebro]] — ferramentas que viabilizam o padrão
