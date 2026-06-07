---
name: reporte-pipeline
description: >-
  Genera el reporte semanal de pipeline de ventas de Tunal Digital: leads nuevos, respuestas
  positivas pendientes de seguimiento, calls agendadas y reply rate por sector, con umbrales de
  alerta definidos. Úsala desde la rutina semanal de Claude Code Scheduled o manualmente antes de
  planear la semana comercial. Incluye modo pre-pipeline para cuando aún no hay campañas activas,
  de modo que nunca invente métricas que no existen.
---

# Reporte de pipeline — Tunal Digital

## Objetivo

Producir un reporte semanal corto que le diga a Oseloth, en menos de 3 minutos de lectura, cómo está su pipeline de ventas y qué necesita su atención **hoy**. El reporte amanece listo el lunes.

## Fuentes de datos (en orden de prioridad)

1. **HubSpot** vía conector/MCP, si está disponible en el entorno: contactos, deals, etapas, actividad de la semana.
2. **Export de Instantly** si existe el archivo `inteligencia/data/instantly-export.csv` en el repositorio (campañas, enviados, respuestas).
3. **Briefs y notas previas** en la carpeta `inteligencia/` del repositorio.

## MODO PRE-PIPELINE (crítico — leer primero)

Si NO hay conector HubSpot disponible, o HubSpot no tiene datos de campañas, o no existe el CSV de Instantly: **NO generes métricas**. En su lugar, produce el reporte en «modo pre-pipeline»: indica explícitamente que aún no hay datos de campañas, lista qué pieza falta (conector HubSpot en claude.ai, export de Instantly, campañas activas), y recuerda en qué fase del plan está la captación según `Plan_Implementacion_Junio_Septiembre_2026.md` si está accesible. Un reporte que dice honestamente «aún no hay datos» es correcto; un reporte con números inventados es un fallo grave.

## Métricas (definiciones exactas)

| Métrica | Definición |
|---|---|
| Leads nuevos | Contactos creados en los últimos 7 días |
| Positivas pendientes | Respuestas positivas sin seguimiento nuestro en más de 48 h — cada una es ALERTA |
| Calls agendadas | Discovery calls en los próximos 7 días, con día y hora |
| Reply rate por sector | Respuestas ÷ correos enviados, por sector (contratistas, real estate, seguros, inmigración) |
| Enviados de la semana | Total de correos de prospección enviados los últimos 7 días |

## Umbrales de alerta

- Reply rate de un sector **< 3%** → alerta en el primer párrafo del reporte con recomendación (recalibrar personalización o ICP de ese sector).
- Reply rate global **< 2%** → alerta CRÍTICA: recomendar pausar envíos y revisar (según el plan, seguir enviando con reply <2% quema la reputación de los dominios).
- Cualquier respuesta positiva sin atender > 48 h → listarla primero, con nombre y empresa.

## Reglas duras

1. Cada número del reporte debe salir de HubSpot o del CSV — nunca de memoria ni estimaciones.
2. Si una métrica no se puede calcular, escribe «sin datos» y explica qué falta.
3. Reporte de máximo media página. Primero alertas, después números, después contexto.
4. No incluyas datos personales sensibles de prospectos en el reporte (solo nombre, empresa y estado del deal).

## Formato exacto del reporte

```markdown
# Pipeline — semana del [fecha]

## ⚠ Requiere tu atención hoy
(Alertas según umbrales, o «Sin alertas esta semana».)

## Números de la semana
(Tabla: leads nuevos, positivas pendientes, calls agendadas, enviados, reply rate por sector.)

## Próximos 7 días
(Calls agendadas con día/hora; follow-ups que tocan esta semana.)

## Nota de método
(Fuentes usadas; métricas sin datos y por qué.)
```

## Dónde guardar el resultado

Guarda el reporte como `inteligencia/AAAA-MM-DD-pipeline.md` en el repositorio `tunal-digital` (commit directo si el entorno lo permite; si no, incluye el reporte completo en la respuesta/notificación de la rutina).
