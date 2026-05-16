# Segundo Cérebro — Schema & Instruções de Operação

Leia este arquivo no início de cada sessão. Ele define a estrutura, convenções e fluxos de trabalho do wiki. Evolua-o junto com o usuário conforme o sistema amadurece.

---

## Estrutura do Repositório

```
/
├── CLAUDE.md          ← este arquivo (schema)
├── sources/           ← fontes brutas e imutáveis (nunca modifique)
│   └── notas, artigos, transcrições, diários, PDFs em texto
└── wiki/              ← base de conhecimento mantida pelo LLM
    ├── index.md       ← catálogo mestre de conteúdo (atualizar em todo ingest)
    ├── log.md         ← registro cronológico append-only
    ├── overview.md    ← síntese de alto nível do segundo cérebro
    ├── people/        ← uma página por pessoa relevante
    ├── projects/      ← uma página por projeto ativo ou passado
    ├── goals/         ← metas de curto, médio e longo prazo
    ├── health/        ← saúde física, mental, hábitos, energia
    ├── ideas/         ← ideias, insights, hipóteses
    ├── events/        ← eventos, momentos marcantes, reuniões
    ├── learnings/     ← aprendizados de livros, cursos, artigos
    └── resources/     ← ferramentas, links, referências úteis
        syntheses/     ← sínteses e análises geradas por queries
```

**Regra:** O LLM escreve e mantém tudo dentro de `wiki/`. O usuário alimenta `sources/`. Nenhum toca a camada do outro.

---

## Frontmatter (todas as páginas)

```yaml
---
title: Título da Página
type: person | project | goal | health | idea | event | learning | resource | synthesis | overview
created: YYYY-MM-DD
updated: YYYY-MM-DD
sources: [slug-da-fonte-1, slug-da-fonte-2]
tags: [tag1, tag2]
---
```

## Links internos

- Use `[[Nome da Página]]` (formato wikilink do Obsidian) para todos os links internos.
- Toda página deve ter ao menos um link de entrada vindo de outra página ou do index.md.
- Prefira texto de link específico: `[[João Silva|a visão do João]]`.

---

## Tipos de Página

### `people/` — Pessoa
Seções: Visão Geral, Relação/Contexto, Características Observadas, Histórico de Interações, Projetos em Comum, Notas Abertas.

### `projects/` — Projeto
Seções: Objetivo, Status, Pessoas Envolvidas, Timeline, Decisões Tomadas, Próximos Passos, Aprendizados.

### `goals/` — Meta
Seções: O que quero alcançar, Por quê, Prazo, Métricas de sucesso, Progresso, Obstáculos, Próximas ações.

### `health/` — Saúde
Seções: Contexto, Observações, Padrões Identificados, Hábitos Ativos, O que está funcionando, O que não está.

### `ideas/` — Ideia
Seções: A ideia em uma frase, Desenvolvimento, Por que pode funcionar, Riscos, Próxima ação para testar.

### `events/` — Evento
Seções: Data, Contexto, O que aconteceu, Pessoas envolvidas, Decisões, Aprendizados, Links para projetos/pessoas.

### `learnings/` — Aprendizado
Seções: Fonte, Conceito Central, Por que importa, Aplicações práticas, Contradições com crenças atuais, Links relacionados.

### `resources/` — Recurso
Seções: Descrição, Link/Localização, Casos de uso, Avaliação, Data de descoberta.

### `syntheses/` — Síntese
Seções: Pergunta feita, Abordagem, Resposta/Achados, Ressalvas, Perguntas de follow-up. Arquivada para que explorações se acumulem.

---

## Fluxos de Trabalho

### Ingerir uma nova fonte

1. **Leia** o arquivo em `sources/`.
2. **Discuta** os pontos principais com o usuário. Pergunte o que enfatizar.
3. **Escreva ou atualize** páginas nas categorias relevantes (people, projects, goals, etc.).
4. **Atualize** `wiki/overview.md` se a fonte mudar a síntese geral.
5. **Atualize** `wiki/index.md` — adicione páginas novas e atualize as existentes.
6. **Adicione** ao `wiki/log.md`:
   ```
   ## [YYYY-MM-DD] ingest | Título da Fonte
   - Páginas criadas: …
   - Páginas atualizadas: …
   - Destaques: …
   ```

Um único ingest normalmente toca 5–15 páginas do wiki. Isso é esperado e bom.

### Responder uma query

1. **Leia** `wiki/index.md` para encontrar páginas relevantes.
2. **Leia** essas páginas.
3. **Sintetize** uma resposta com `[[citações]]` para páginas do wiki.
4. **Pergunte** ao usuário: "Devo arquivar isso como uma síntese?" Se sim, escreva em `wiki/syntheses/<slug>.md`, atualize o index.md e adicione ao log.md.

### Lint do wiki

Rode periodicamente ou quando o usuário pedir. Verifique:
- Contradições entre páginas.
- Afirmações desatualizadas superadas por fontes mais novas.
- Páginas órfãs (sem links de entrada).
- Conceitos mencionados repetidamente mas sem página própria.
- Links cruzados faltando entre páginas relacionadas.
- Lacunas que uma busca na web poderia preencher.

Reporte como lista numerada. Proponha correções. Pergunte quais acionar.

---

## Formato do index.md

```markdown
# Índice do Wiki

_Atualizado: YYYY-MM-DD | Fontes ingeridas: N | Páginas: N_

## Visão Geral
- [[overview]] — Síntese do segundo cérebro

## Pessoas
| Página | Contexto |
|--------|----------|
| [[people/nome]] | uma linha |

## Projetos
| Página | Status | Resumo |
|--------|--------|--------|
| [[projects/slug]] | ativo/pausado/concluído | uma linha |

## Metas
| Página | Prazo | Status |
|--------|-------|--------|
| [[goals/slug]] | YYYY-MM | em andamento |

## Saúde
| Página | Tema |
|--------|------|
| [[health/slug]] | uma linha |

## Ideias
| Página | Resumo |
|--------|--------|
| [[ideas/slug]] | uma linha |

## Eventos
| Página | Data | Resumo |
|--------|------|--------|
| [[events/slug]] | YYYY-MM-DD | uma linha |

## Aprendizados
| Página | Fonte | Tema |
|--------|-------|------|
| [[learnings/slug]] | livro/artigo/curso | uma linha |

## Recursos
| Página | Tipo | Resumo |
|--------|------|--------|
| [[resources/slug]] | ferramenta/link/ref | uma linha |

## Sínteses
| Página | Pergunta | Data |
|--------|----------|------|
| [[syntheses/slug]] | O que foi perguntado | YYYY-MM-DD |
```

---

## Formato do log.md

Append-only. Nunca edite entradas passadas.

```
## [YYYY-MM-DD] <tipo> | <título>
<resumo em bullets>
```

Tipos: `ingest`, `query`, `lint`, `schema-update`.

Grep tip: `grep "^## \[" wiki/log.md | tail -10`

---

## Diretrizes de Estilo

- Escreva em português, de forma clara e direta.
- Incerteza é explícita: "conforme [fonte], ainda não está claro se…"
- Contradições são sinalizadas: `> ⚠️ Contradição:` em blockquote.
- Datas em ISO 8601 (YYYY-MM-DD).
- Slugs em kebab-case-minúsculo.
- Se uma página passar de ~400 linhas, considere dividir.

---

## Checklist de Início de Sessão

Ao início de cada sessão:
1. Leia este arquivo (CLAUDE.md).
2. Leia `wiki/log.md` (últimas 10 entradas) para entender atividade recente.
3. Leia `wiki/index.md` para carregar o mapa atual do wiki.
4. Pergunte ao usuário: "Com o que você quer trabalhar hoje — ingerir uma fonte, fazer perguntas, ou outra coisa?"
