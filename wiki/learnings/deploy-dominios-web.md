---
title: Deploy e Domínios para Projetos Web
type: learning
created: 2026-05-12
updated: 2026-05-16
sources: [historico-claude-2026]
tags: [deploy, dominio, vercel, netlify, render, registrobr, cloudflare]
---

# Deploy e Domínios para Projetos Web

## Fonte
Conversa sobre deploy de site SaaS de consultoria — 2026-05-12.

## Plataformas de Deploy

### Netlify
- **Melhor para:** Sites estáticos, HTML/CSS/JS, React
- **Gratuito até:** Generous free tier com deploy automático via GitHub
- **Usado por Victor em:** germanodev-portfolio, bolsoproo, bolso-pro

### Vercel
- **Melhor para:** Next.js, React, sites com SSR
- **Gratuito até:** Projetos pessoais
- **Diferencial:** Deploy instantâneo, preview automático por branch

### Render
- **Melhor para:** Backends (Node.js, Python, APIs)
- **Gratuito até:** Plano free com sleep após inatividade
- **Ideal quando:** Precisa de servidor real, não só frontend

### Hostinger
- **Melhor para:** Sites WordPress ou HTML simples com domínio brasileiro
- **Pago:** Planos acessíveis
- **Usado por Victor em:** lightyellow-crab-232162.hostingersite.com (TypeOn)

## Domínios

### Registro.br
- **Para:** Domínios .com.br e .br
- **Recomendado para:** Clientes e projetos brasileiros
- **Vantagem:** Único registrador oficial de .com.br no Brasil

### Cloudflare
- **Para:** DNS, CDN, proteção DDoS
- **Gratuito:** Plano básico cobre a maioria dos casos
- **Uso:** Conectar domínio comprado no Registro.br ao Netlify/Vercel

## Fluxo Padrão para Cliente Brasileiro

```
1. Comprar domínio .com.br no Registro.br
2. Hospedar site no Netlify (grátis para HTML simples)
3. Apontar DNS do Registro.br para Netlify
4. (Opcional) Usar Cloudflare como DNS intermediário
```

## Aplicações práticas
- Site simples de cliente → Netlify + Registro.br
- App com backend → Render (backend) + Netlify (frontend)
- Portfólio pessoal → Netlify (gratuito, rápido)

## Links
- [[projects/germano-dev-portfolio]] — deploy no Netlify
- [[projects/academia-agits]] — Hostinger → GitHub
- [[resources/carreira-cv]] — habilidade de deploy no CV
