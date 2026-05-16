# Wiki Log

Append-only chronological record of all wiki activity.
Format: `## [YYYY-MM-DD] <type> | <title>`
Types: `ingest`, `query`, `lint`, `schema-update`

Grep tip: `grep "^## \[" wiki/log.md | tail -10`

---

## [2026-05-16] schema-update | Initial scaffold
- Created repository structure: sources/, wiki/entities/, wiki/concepts/, wiki/sources/, wiki/analyses/
- Wrote CLAUDE.md schema with ingest, query, and lint workflows
- Created wiki/index.md and wiki/overview.md stubs
- Wiki is ready for first source ingestion
