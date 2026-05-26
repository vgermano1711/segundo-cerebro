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
App de gestão financeira pessoal com interface moderna inspirada em pierre.finance, autenticação Google e sistema de assinatura com múltiplos métodos de pagamento.

## Status
**Em desenvolvimento** — múltiplas iterações realizadas.

## URLs
- bolsoproo.netlify.app
- bolso-pro.netlify.app (versão anterior de referência)

## Funcionalidades Implementadas

### Autenticação
- Login com Google via Firebase
- Sistema de logout
- Design da tela de login inspirado na versão anterior (dois painéis: branding + formulário)

### Interface
- Design inspirado em pierre.finance
- Landing page com 8 seções completas
- Responsividade mobile

### Planos e Pagamentos
- Modal de assinatura com 3 abas:
  - **Cartão de crédito** — campos formatados automaticamente, seletor de parcelas
  - **Boleto** — gera código de barras com botão de copiar e download PDF
  - **PIX** — QR Code + código copia e cola
- Botões "Assinar Pro" e "Assinar Premium"

### Navegação
- Botões ENTRAR (abre login) e COMEÇAR AGORA (abre cadastro)
- Visualizador interativo de juros compostos
- SAC no canto inferior direito (substituiu aba "Fale Conosco")
  - 4 perguntas frequentes clicáveis
  - Campo de texto livre para dúvidas personalizadas

## Decisões de Design
- Interface inspirada em pierre.finance pelo design limpo e sofisticado
- Firebase para autenticação por facilidade com Google Login
- PIX como método principal (mercado brasileiro)
- SAC widget em vez de aba de contato — menos intrusivo

## Stack Técnica
- HTML, CSS, JavaScript
- Firebase (autenticação Google)
- Netlify (deploy)

## Próximos Passos
- [ ] Integração de pagamentos real (Stripe/PagSeguro/Mercado Pago)
- [ ] Dashboard de transações do usuário
- [ ] Categorização automática de gastos
- [ ] Relatórios mensais em PDF

## Links
- [[people/victor-germano]] — criador
- [[projects/germano-dev-portfolio]] — projeto no portfólio
- [[learnings/juros-compostos]] — feature do visualizador de juros
