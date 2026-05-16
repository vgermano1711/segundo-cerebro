# LLM Wiki — Schema & Operating Instructions

This is the schema file. It defines the structure, conventions, and workflows for this wiki. Read it at the start of every session. Evolve it collaboratively with the user as the domain matures.

---

## Repository Layout

```
/
├── CLAUDE.md          ← this file (schema)
├── sources/           ← raw, immutable source documents (never modify)
│   └── .gitkeep
└── wiki/              ← LLM-maintained knowledge base
    ├── index.md       ← master content catalog (update on every ingest)
    ├── log.md         ← append-only chronological event log
    ├── overview.md    ← high-level synthesis of the entire knowledge base
    ├── entities/      ← one page per named entity (person, org, place, product…)
    ├── concepts/      ← one page per key concept, idea, or theme
    ├── sources/       ← one summary page per ingested source document
    └── analyses/      ← query answers, comparisons, and explorations worth keeping
```

**Rule:** The LLM writes and maintains everything under `wiki/`. The user curates `sources/`. Neither touches the other's layer.

---

## Wiki Page Conventions

### Frontmatter (all pages)
```yaml
---
title: Page Title
type: entity | concept | source | analysis | overview
created: YYYY-MM-DD
updated: YYYY-MM-DD
sources: [source-slug-1, source-slug-2]   # which sources informed this page
---
```

### Cross-linking
- Use `[[Page Title]]` (Obsidian wikilink format) for all internal links.
- Every page must have at least one inbound link from another wiki page or from index.md.
- Prefer specific link text: `[[Albert Einstein|Einstein's view]]` over bare links.

### Sections (adapt to page type)

**Entity page** (`wiki/entities/`): Overview, Key Facts, Timeline, Relationships, Open Questions, Sources.

**Concept page** (`wiki/concepts/`): Definition, Why It Matters, Key Arguments/Evidence, Counterarguments, Related Concepts, Open Questions, Sources.

**Source summary page** (`wiki/sources/`): Bibliographic info, Key Takeaways (bullet list), Entities & Concepts Mentioned, Contradictions with existing wiki claims, Raw excerpts worth preserving.

**Analysis page** (`wiki/analyses/`): Question asked, Approach, Answer/Findings, Caveats, Follow-up questions. Filed here so explorations compound.

**Overview page** (`wiki/overview.md`): Evolving thesis, major themes, open questions, last updated date.

---

## Workflows

### Ingest a new source

1. **Read** the source file in `sources/`.
2. **Discuss** key takeaways with the user. Ask what to emphasize.
3. **Write** a summary page at `wiki/sources/<slug>.md`.
4. **Update** entity and concept pages touched by the source. Create new pages as needed.
5. **Update** `wiki/overview.md` if the source shifts the overall thesis or introduces a major new theme.
6. **Update** `wiki/index.md` — add the new source page and any new entity/concept pages.
7. **Append** to `wiki/log.md`:
   ```
   ## [YYYY-MM-DD] ingest | Source Title
   - Summary page: wiki/sources/<slug>.md
   - Pages created: …
   - Pages updated: …
   - Notable: …
   ```

A single ingest typically touches 5–15 wiki pages. That's expected and good.

### Answer a query

1. **Read** `wiki/index.md` to find relevant pages.
2. **Read** those pages.
3. **Synthesize** an answer with `[[citations]]` to wiki pages.
4. **Ask** the user: "Should I file this as an analysis page?" If yes, write it to `wiki/analyses/<slug>.md`, update index.md, and append to log.md.

### Lint the wiki

Run periodically or when the user asks. Check for:
- Contradictions between pages (flag both pages).
- Stale claims superseded by newer sources.
- Orphan pages (no inbound links).
- Concepts mentioned repeatedly but lacking their own page.
- Missing cross-references between related pages.
- Data gaps a web search could fill.

Report findings as a numbered list. Propose fixes. Ask the user which to action.

---

## index.md Format

index.md is the LLM's navigation tool. Keep it current.

```markdown
# Wiki Index

_Last updated: YYYY-MM-DD | Sources ingested: N | Pages: N_

## Overview
- [[overview]] — Evolving synthesis of the entire knowledge base

## Sources
| Page | Title | Date | Key Topics |
|------|-------|------|------------|
| [[sources/slug]] | Full Title | YYYY-MM-DD | topic1, topic2 |

## Entities
| Page | Type | Notes |
|------|------|-------|
| [[entities/name]] | person/org/place | one-liner |

## Concepts
| Page | Notes |
|------|-------|
| [[concepts/name]] | one-liner |

## Analyses
| Page | Question | Date |
|------|----------|------|
| [[analyses/slug]] | What was asked | YYYY-MM-DD |
```

---

## log.md Format

log.md is append-only. Never edit past entries. Each entry:

```
## [YYYY-MM-DD] <type> | <title>
<bullet summary>
```

Types: `ingest`, `query`, `lint`, `schema-update`.

The prefix format `## [YYYY-MM-DD]` makes entries greppable:
```bash
grep "^## \[" wiki/log.md | tail -10
```

---

## Style Guidelines

- Write in clear, direct prose. No filler.
- Uncertainty is explicit: "as of [source], unclear whether…", "Source A claims X; Source B contradicts this."
- Contradictions are flagged in-line with a `> ⚠️ Contradiction:` blockquote.
- Dates are ISO 8601 (YYYY-MM-DD).
- Slugs are lowercase-kebab-case.
- Keep pages focused. If a page grows past ~500 lines, consider splitting it.

---

## Session Start Checklist

At the start of every session:
1. Read this file (CLAUDE.md).
2. Read `wiki/log.md` (last 10 entries) to understand recent activity.
3. Read `wiki/index.md` to load the current map of the wiki.
4. Ask the user: "What would you like to work on today — ingest a source, ask questions, or something else?"

---

## Evolving This Schema

This file is a living document. When you and the user discover a convention that works well, add it here. When something isn't working, revise it. Append a `schema-update` entry to log.md when you make changes.
