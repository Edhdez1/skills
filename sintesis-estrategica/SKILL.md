---
name: sintesis-estrategica
description: >-
  Síntesis estratégica mensual de Tunal Digital: lee TODOS los informes del mes en la carpeta
  inteligencia/ (briefs de competencia, reportes de pipeline, health-check y cualquier otro),
  los cruza contra el marco de negocio (inteligencia/contexto-negocio.md) y produce máximo una
  página de consejo accionable: logros, riesgos, propuestas priorizadas por impacto/esfuerzo y
  qué dejar de hacer. PROPONE, nunca ejecuta. Úsala desde la rutina mensual de Claude Code
  Scheduled (día 2 de cada mes) o manualmente antes de planear el mes.
---

# Síntesis estratégica mensual — Tunal Digital

## Objetivo

Convertir un mes de informes sueltos en **consejo estratégico de una página**. El lector es Oseloth (dueño de Tunal Digital), que la lee el día 3 de cada mes en 5 minutos y decide su mes con ella. La diferencia con las demás rutinas: ellas reportan su dominio (competencia, pipeline); esta **cruza el conjunto** y detecta lo que solo se ve mirando todo junto (ej.: «la competencia bajó precios el mismo mes en que nuestro reply rate cayó — quizá el problema no es el copy sino la oferta»).

## Insumos (en este orden)

1. `inteligencia/contexto-negocio.md` — el marco: fases del plan, metas, triggers de decisión. Si NO existe, decláralo en el output y continúa solo con lo observado.
2. `inteligencia/AAAA-MM-health.md` del mes que cierra — te dice si el mes viene completo o con huecos. Decláralo.
3. TODOS los archivos del mes que cierra en `inteligencia/`: `*-competencia.md`, `*-pipeline.md` y cualquier otro informe presente.
4. La síntesis del mes anterior (`AAAA-MM-sintesis.md` previo), si existe, para no repetir propuestas sin avisar.

**Modo mes incompleto:** si hay menos de 2 semanas de datos en el mes, no finjas análisis profundo — produce una síntesis corta declarando la cobertura real y limita las propuestas a lo que la evidencia disponible aguante.

## Formato exacto del output (máximo una página)

```markdown
# Síntesis estratégica — [mes AAAA]

**Cobertura de datos:** (qué archivos se leyeron; huecos declarados por el health-check)

## El mes en 3 líneas
(Lo esencial que pasó, sin adornos.)

## 3 logros
(Con evidencia: archivo de origen entre paréntesis.)

## 3 riesgos
(Con evidencia y por qué importan ahora.)

## Propuestas para el mes que empieza (3–5, priorizadas)
| # | Propuesta | Impacto | Esfuerzo | Evidencia | Fase del plan |
(Impacto/Esfuerzo: alto-medio-bajo. Evidencia: archivo(s) de origen. Si una propuesta repite la del mes anterior, márcala «reiterada».)

## Una cosa que dejar de hacer
(Con su justificación.)

## Pregunta del mes
(La única pregunta que Oseloth debería responderse este mes.)
```

## Reglas duras (no negociables)

1. **PROPONES, NUNCA EJECUTAS.** Esta skill no dispara acciones, no envía correos, no cambia archivos fuera de su output. Las decisiones las toma Oseloth (Regla 5 del proyecto).
2. **Cada afirmación cita su fuente** (el archivo de inteligencia/ del que sale). Sin evidencia en los archivos, no hay propuesta — nunca inventes datos ni rellenes con conocimiento general.
3. Los huecos del mes se declaran, no se disimulan.
4. Máximo una página. Mejor 3 propuestas sólidas que 5 flojas.
5. No repitas propuestas del mes anterior sin marcarlas «reiterada» (y si se reitera 2+ meses, señálalo como decisión estancada).
6. Si una propuesta implica gasto, indica el costo y el trigger del plan que lo justificaría (los triggers están en contexto-negocio.md).

## Dónde guardar el resultado

Guarda como `inteligencia/AAAA-MM-sintesis.md` (con el mes que CIERRA, no el que empieza) en el repositorio `tunal-digital` (commit directo si el entorno lo permite; si no, incluye la síntesis completa en la respuesta/notificación de la rutina).
