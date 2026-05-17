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

## [2026-05-16] schema-update | Páginas README e dashboard
- Criadas páginas README em todas as categorias do wiki
- Criado wiki/home.md como dashboard principal
- Criado sincronizar.bat e abrir-claude.bat para Windows
- Criado AGENTS.md com referência de comandos

## [2026-05-16] ingest | Artigo LLM Wiki Pattern
- Páginas criadas: wiki/learnings/llm-wiki-pattern.md, wiki/ideas/llm-wiki-como-metodo.md
- Páginas atualizadas: wiki/overview.md, wiki/index.md, wiki/log.md
- Destaques: primeiro ingest realizado via Claude Code CLI local

## [2026-05-16] ingest | Sessão de Configuração — Memórias do Segundo Cérebro
- Páginas criadas:
  - wiki/events/configuracao-segundo-cerebro-2026-05-16.md
  - wiki/projects/segundo-cerebro-obsidian-claude.md
  - wiki/ideas/segundo-cerebro-como-exocortex.md
  - wiki/learnings/llm-wiki-pattern.md (versão expandida)
  - wiki/resources/ferramentas-segundo-cerebro.md
  - wiki/goals/dominar-segundo-cerebro.md
- Páginas atualizadas: wiki/overview.md, wiki/index.md
- Destaques: toda a sessão de configuração foi convertida em memórias estruturadas — problemas encontrados, decisões tomadas, ferramentas instaladas, fluxo diário definido

## [2026-05-16] ingest | Histórico de Conversas do Claude (22 conversas)
- Páginas criadas:
  - wiki/projects/desenvolvimento-web-portfolio.md
  - wiki/projects/vrv-academia.md
  - wiki/projects/hype-station.md
  - wiki/projects/plataforma-direito.md
  - wiki/resources/carreira-cv.md
  - wiki/resources/automacao-gmail.md
  - wiki/learnings/juros-compostos.md
- Páginas atualizadas: wiki/overview.md, wiki/index.md
- Destaques: 22 conversas de março a maio de 2026 processadas — padrão dominante é desenvolvimento web com foco em portfólio e projetos de clientes; carreira em transição para programação; interesse em IA aplicada

## [2026-05-16] ingest | Conteúdo detalhado das 22 conversas do Claude
- Páginas criadas:
  - wiki/people/victor-germano.md — perfil completo com stack, idiomas, formação, projetos
  - wiki/projects/bolsopro.md — app financeiro com Firebase e assinatura
  - wiki/projects/germano-dev-portfolio.md — portfólio Germano Dev com sistema admin
  - wiki/projects/academia-agits.md — site Academia Agit's
  - wiki/resources/ferramentas-ia-criativas.md — Krea.AI, Runway, Gamma, N8N, Bolt, Replit
- Páginas atualizadas:
  - wiki/projects/hype-station.md — detalhes completos ASN Supply
  - wiki/projects/vrv-academia.md — PptxGenJS confirmado
  - wiki/resources/carreira-cv.md — CV completo com todos os cursos e stack
  - wiki/index.md — 24 páginas catalogadas
- Destaques: perfil completo de Victor extraído — Engenharia de Software UNICSUL, stack web completa, 6 projetos documentados em detalhe, ferramentas IA como diferencial de carreira

## [2026-05-17] ingest | Biografia Pessoal de Victor Afonso Germano
- Páginas atualizadas:
  - wiki/people/victor-germano.md — reescrita completa com biografia pessoal detalhada
- Destaques:
  - Dados pessoais completos: nascimento 17/11/2005, Vila Industrial/SP
  - Família documentada: vó Nilce, vô Ademir (†2015), mãe Juliana, padrasto Neto (abusivo), irmã Ana Júlia, pai ausente Leandro, tios Luci/Terezinha/Simone, primos Giancarlo e Raul (†2023)
  - Linha do tempo biográfica 2005–2026: infância sem pai, abuso do padrasto, pandemia/enforcamento (2020), episódio neurológico em SC (2023), internação da vó, abandono da mãe, início na tech
  - Relacionamentos: Manuela (2021–22), Isis (2024, traição)
  - Amigos-chave: Caua "Japonês" e Marcelo (CEO Stone)
  - Carreira atual: HelpDesk Grupo Roveri + proposta Google (16/05/2026)
  - Características observadas: resiliência, autodidatismo, musculação há 9 anos, lealdade
