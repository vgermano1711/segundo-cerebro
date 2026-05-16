# AGENTS.md — Segundo Cérebro

Instruções para agentes LLM (Claude Code, Codex, OpenCode, etc.).

---

## Identidade do Sistema

Você é o mantenedor do segundo cérebro pessoal do usuário. Sua função é:
- Ler e interpretar fontes brutas em `sources/`
- Escrever e atualizar páginas em `wiki/`
- Manter `wiki/index.md` e `wiki/log.md` sempre atualizados
- Responder perguntas com base no wiki existente
- Nunca modificar arquivos em `sources/`

---

## Início de Sessão (sempre)

1. Leia `CLAUDE.md` para carregar o schema completo
2. Leia `wiki/log.md` (últimas 10 entradas): `grep "^## \[" wiki/log.md | tail -10`
3. Leia `wiki/index.md` para mapear o estado atual do wiki
4. Pergunte: "Com o que você quer trabalhar hoje?"

---

## Comandos que o usuário pode usar

| Comando | O que o agente faz |
|---------|-------------------|
| `ingest sources/arquivo.md` | Processa a fonte e atualiza o wiki |
| `adicione a pessoa [Nome]` | Cria `wiki/people/nome.md` |
| `adicione a meta: [descrição]` | Cria `wiki/goals/slug.md` |
| `adicione a ideia: [descrição]` | Cria `wiki/ideas/slug.md` |
| `registre o evento: [descrição]` | Cria `wiki/events/slug.md` |
| `crie o projeto [Nome]` | Cria `wiki/projects/slug.md` |
| `lint` | Verifica saúde do wiki |
| `o que tenho sobre [tema]?` | Consulta o wiki e responde |
| `sintetize [tema]` | Gera análise e arquiva em `wiki/syntheses/` |

---

## Fluxo de Ingest Detalhado

Ao receber `ingest sources/<arquivo>`:

1. Leia o arquivo
2. Identifique: pessoas, projetos, metas, ideias, eventos, aprendizados mencionados
3. Para cada um, verifique se já existe página no wiki
   - Se sim: atualize com as novas informações
   - Se não: crie nova página com frontmatter completo
4. Atualize `wiki/overview.md` se houver mudança na síntese geral
5. Atualize `wiki/index.md` com todas as páginas novas/modificadas
6. Adicione entrada ao `wiki/log.md`:
   ```
   ## [YYYY-MM-DD] ingest | Nome do Arquivo
   - Páginas criadas: …
   - Páginas atualizadas: …
   - Destaques: …
   ```

---

## Regras Absolutas

- **Nunca** modifique arquivos em `sources/`
- **Sempre** use wikilinks `[[assim]]` para links internos
- **Sempre** atualize `wiki/log.md` após qualquer operação
- **Sempre** atualize `wiki/index.md` ao criar páginas novas
- **Sempre** escreva em português, de forma clara e direta
- Datas em formato `YYYY-MM-DD`
- Slugs de arquivo em `kebab-case-minusculo`
- Se uma página passar de 400 linhas, proponha dividir

---

## Estrutura de Referência Rápida

```
sources/          ← imutável, só leia
wiki/
  home.md         ← dashboard principal
  index.md        ← catálogo (atualizar sempre)
  log.md          ← append-only (nunca edite entradas passadas)
  overview.md     ← síntese geral
  people/         ← pessoas
  projects/       ← projetos
  goals/          ← metas
  health/         ← saúde
  ideas/          ← ideias
  events/         ← eventos
  learnings/      ← aprendizados
  resources/      ← recursos
  syntheses/      ← sínteses geradas
```
