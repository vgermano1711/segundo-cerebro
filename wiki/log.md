# Log do Wiki

Registro cronológico append-only de toda atividade do wiki.
Formato: `## [YYYY-MM-DD] <tipo> | <título>`
Tipos: `ingest`, `query`, `lint`, `schema-update`

Grep tip: `grep "^## \[" wiki/log.md | tail -10`

---

## [2026-05-16] schema-update | Scaffold inicial do Segundo Cérebro
- Estrutura criada: sources/, wiki/people/, wiki/projects/, wiki/goals/, wiki/health/, wiki/ideas/, wiki/events/, wiki/learnings/, wiki/resources/, wiki/syntheses/
- CLAUDE.md escrito com fluxos de ingest, query e lint em português
- wiki/index.md, wiki/log.md e wiki/overview.md criados
- Wiki pronto para primeira ingestão de fonte
