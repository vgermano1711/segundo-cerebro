---
title: Germano Dev — Portfólio Profissional
type: project
created: 2026-03-29
updated: 2026-05-16
sources: [historico-claude-2026]
tags: [portfolio, desenvolvedor, chartjs, admin, germanodev, cms]
---

# Germano Dev — Portfólio Profissional

## Objetivo
Portfólio profissional com dashboards interativos de resultados para clientes, sistema CMS de administração e apresentação visual de projetos.

## Status
**Ativo** — em evolução contínua.

## URLs
- germanodev-portfolio.netlify.app
- agent-69c0619efd19e2f44e8e--germanodev-portfolio.netlify.app (versão agent)

## Projetos no Portfólio

| # | Nome | Link | Tagline |
|---|------|------|---------|
| 001 | Bolsa Pro | bolsoproo.netlify.app | App financeiro |
| 002 | Academia Agits | academiaagits.com.br | Transforme seu corpo |
| 003 | Alma Estudos Visuais | almaestudosvisuais.com.br | Centro de estudos |
| 004 | TypeOn | lightyellow-crab-232162.hostingersite.com | Minimalist Typing Practice |
| 005 | Projeto Pringles | projetopringles-teste.lovable.app | Abra a Diversão |

## Sistema Admin (CMS)

### Acesso
- **Duplo clique** no logo "GERMANO DEV." na navbar
- Senha: `Careca1711@`
- Nenhum botão visível para visitantes

### Funcionalidades Admin
- Botão flutuante **"+ Novo Projeto"** no canto inferior direito
- Badge verde **Admin** na navbar
- Clique em projeto → abre **painel lateral CMS** (slide-in da direita)
- Preview ao vivo do card enquanto edita
- Botão **"Salvar e Publicar"** → atualiza localStorage e re-renderiza
- Botão **Excluir** em cada projeto
- Duplo clique na logo novamente → logout admin

### Campos editáveis por projeto
- Nome, descrição, link, tecnologias, imagem (URL ou upload)

## Dashboards de Clientes
Resultados antes/depois com gráficos Chart.js:
- **Pringles** — métricas de campanha
- **Alma Estudos Visuais** — engajamento
- **Agit's Academia** — performance fitness

## Seção de Cursos
- Gerenciamento via painel admin
- FAB speed dial para adicionar
- Persistência em localStorage (`gd_courses_v1`)

## PDF do Portfólio
Versão PDF profissional criada com ReportLab (Python):
- 4 páginas: Capa · Perfil & Skills · Projetos · Serviços & Contato
- Design preto e branco
- Cards de projeto com faixa colorida por identidade de marca

## Stack Técnica
- HTML, CSS, JavaScript puro
- Chart.js para gráficos
- localStorage para persistência
- Netlify para deploy

## Próximos Passos
- [ ] Migrar persistência de localStorage para banco real
- [ ] Adicionar mais clientes com dashboards
- [ ] Blog técnico integrado
- [ ] Versão mobile otimizada

## Links
- [[people/victor-germano]] — dono do portfólio
- [[resources/carreira-cv]] — CV que referencia o portfólio
- [[projects/bolsopro]] — projeto listado
- [[projects/academia-agits]] — projeto listado
