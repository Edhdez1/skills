---
name: monitoreo-competencia
description: >-
  Monitorea los sitios web de agencias competidoras de Tunal Digital en el DMV y produce un brief
  semanal de inteligencia competitiva de máximo una página. Úsala desde la rutina semanal de Claude
  Code Scheduled o manualmente cuando se necesite saber qué están haciendo los competidores: cambios
  de precios o paquetes, casos de éxito nuevos, herramientas que mencionan, ofertas activas y cambios
  de mensaje. Incluye lista de competidores con URLs, método de extracción, formato exacto del brief
  y reglas duras anti-invención de datos.
---

# Monitoreo de competencia — Tunal Digital

## Objetivo

Producir cada semana un brief de inteligencia competitiva de **máximo una página** que responda tres preguntas: ¿qué cambió en la oferta de los competidores esta semana?, ¿qué están haciendo que Tunal Digital no hace?, ¿qué implica eso para las decisiones de Tunal esta semana?

El lector del brief es Oseloth (dueño de Tunal Digital), que lo lee el lunes por la mañana en menos de 5 minutos.

## Competidores a visitar

| # | Competidor | URL | Estado de verificación |
|---|---|---|---|
| 1 | QA Digital Ads | https://qadigitalads.com | Confirmado DMV (Maryland, bilingüe ES/EN) |
| 2 | Dupont Creative | https://www.dupontcreative.com | Confirmado DMV (Silver Spring / DC) |
| 3 | Digital Sprout | https://digitalsprout.com | Confirmado DMV (Silver Spring) |
| 4 | Nick Marketing | https://nickmarketing.co | Enfoque hispano — ubicación POR CONFIRMAR |
| 5 | Latino Marketing Agency | https://latinomarketingagency.com | Enfoque hispano — ubicación POR CONFIRMAR |

**Primera corrida:** antes de producir el primer brief, valida la lista: confirma que cada competidor realmente atiende al mercado DMV y/o hispano de EE. UU. Si alguno no aplica (por ejemplo, opera solo en otra región), márcalo como descartado en el brief y propón un reemplazo concreto con URL, buscando «agencia web/marketing negocios hispanos DMV/Maryland/Virginia». La lista final debe quedar registrada en el primer brief.

## Qué extraer de cada sitio (solo lo observable)

1. **Precios y paquetes:** cifras publicadas, nombres de planes, qué incluyen. Si no publican precios, registra «no publica precios» (eso también es inteligencia).
2. **Casos de éxito / portfolio:** entradas nuevas desde la última corrida (nombre del cliente, sector, resultado que afirman).
3. **Herramientas y tecnologías que mencionan:** IA, chatbots, automatización, plataformas.
4. **Ofertas o promociones activas:** descuentos, paquetes de temporada, garantías.
5. **Cambios de mensaje:** eslogan, propuesta de valor, públicos que dicen atender (¿mencionan «hispano/latino/bilingüe»?).

## Método de investigación

- Si el entorno tiene disponible `@playwright/cli` (o puede instalarse con un comando), úsalo para visitar las páginas: gasta ~4x menos tokens que otras vías. Si no está disponible, usa la lectura/búsqueda web estándar del entorno.
- Visita como máximo la portada + 2 páginas relevantes por competidor (precios/servicios y portfolio/casos). No rastrees sitios completos.
- Guarda lo observado con su URL exacta de origen.

## Comparación con la semana anterior

Antes de escribir, lee el brief más reciente en la carpeta `inteligencia/` del repositorio (archivos `AAAA-MM-DD-competencia.md`). El brief nuevo debe reportar **cambios** respecto al anterior, no repetir lo ya dicho. Si no hay cambios en un competidor, escribe literalmente «Sin cambios observados». Si es la primera corrida, el brief es la línea base.

## Reglas duras (no negociables)

1. **Nunca inventes datos.** Solo afirma lo que viste en una página, con su URL. Esta regla pesa más que completar todas las secciones del brief.
2. Si una cifra o afirmación es dudosa o de fuente débil, aplica los principios de la skill `verificador-datos` (este mismo repositorio) y márcala como `[sin verificar]` si no se puede confirmar.
3. Si un sitio no carga o bloquea el acceso, repórtalo como «no accesible esta semana» — no rellenes con memoria ni suposiciones.
4. Máximo una página. Si hay más material, prioriza: precios > ofertas > casos nuevos > mensaje.
5. El brief es interno para Tunal Digital. No incluyas juicios sobre personas, solo sobre ofertas y negocios.

## Formato exacto del brief

```markdown
# Inteligencia competitiva — semana del [fecha]

## Cambios relevantes esta semana
(2-5 viñetas con lo nuevo. Cada viñeta: competidor → qué cambió → URL fuente. Si nada cambió: «Semana sin movimientos relevantes».)

## Detalle por competidor
(Una línea o dos por competidor. «Sin cambios observados» cuando aplique.)

## Implicaciones para Tunal Digital
(1-3 acciones o decisiones concretas que esto sugiere. Accionables, no genéricas.)

## Notas de método
(Sitios no accesibles, datos sin verificar, reemplazos propuestos de competidores.)
```

## Dónde guardar el resultado

Guarda el brief como `inteligencia/AAAA-MM-DD-competencia.md` en el repositorio `tunal-digital` (commit directo si el entorno lo permite; si no, incluye el brief completo en la respuesta/notificación de la rutina para que nada se pierda).
