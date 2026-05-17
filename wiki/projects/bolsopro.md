---
title: BolsoPro — App Financeiro
type: project
created: 2026-03-29
updated: 2026-05-16
sources: [historico-claude-2026]
tags: [fintech, webapp, firebase, saas, bolsopro]
---

# BolsoPro — App Financeiro

## Objetivo
App de gestão financeira pessoal com interface moderna, autenticação e sistema de assinatura.

## Status
**Em desenvolvimento** — múltiplas iterações realizadas entre março e abril de 2026.

## Funcionalidades Implementadas

### Autenticação
- Login com Google via Firebase
- Sistema de logout

### Interface
- Design inspirado em pierre.finance
- Landing page com 8 seções completas
- Responsividade mobile

### Financeiro
- Aba de assinatura com PIX, boleto e cartão
- Visualizador interativo de juros compostos

### Navegação
- Botões ENTRAR e COMEÇAR
- SAC no canto da tela
- Aba de pagamentos separada

## Stack Técnica
- HTML, CSS, JavaScript
- Firebase (autenticação)
- Hospedagem: Netlify

## Decisões Tomadas
- Interface inspirada em pierre.finance pelo design limpo
- Firebase escolhido para autenticação por facilidade de integração com Google
- PIX como método de pagamento principal (mercado brasileiro)

## Próximos Passos
- [ ] Integração de pagamentos real (Stripe/PagSeguro)
- [ ] Dashboard de transações
- [ ] Categorização de gastos
- [ ] Relatórios mensais

## Aprendizados
- Firebase facilita muito autenticação social
- Design de fintech precisa transmitir confiança e simplicidade

## Links
- [[people/victor-germano]] — criador
- [[projects/germano-dev-portfolio]] — projeto no portfólio
- [[learnings/juros-compostos]] — feature do visualizador de juros
