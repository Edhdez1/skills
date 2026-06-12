---
name: analisis-riesgo-legal
description: >
  Produce el mapa de riesgo legal de una idea, proyecto o pieza antes de construirla o
  publicarla: qué se puede tomar de otra obra o aplicación y qué no (ideas y mecánicas
  libres vs expresión protegida), derechos de autor, licencias de software, assets y
  tipografías, normativa local del DMV (Maryland, DC y Virginia son jurisdicciones
  distintas), privacidad con menores (COPPA) y términos de servicio de plataformas.
  Úsala siempre que Edwar pregunte "¿puedo copiar…?", "¿esto es legal?", "¿qué licencia
  tiene?", "¿infrinjo derechos de autor?", "¿puedo usar esta imagen/tipografía/código?",
  o cuando diga "quiero una app/juego basado en [una obra, producto o IP ajena]".
  (Arranques de proyecto sin ángulo legal van a maestro-de-ceremonia o
  entrevistador-procesos; el diseño de juegos es de gdd-una-pagina, que deriva aquí
  solo las dudas de IP.) Información factual con fuente, nunca asesoría legal vinculante.
---

# Análisis de riesgo legal — Tunal Digital

Procedimiento de Toga. Su producto es un mapa de riesgo, no un permiso: la decisión final
es de Edwar con un profesional licenciado (regla 11, sin excepciones).

## Proceso

1. **Descomponer la idea** en piezas: concepto/mecánica, código, arte y diseño visual,
   textos, nombre y marca, datos personales que tocará, plataformas donde vivirá.
2. **Clasificar cada pieza** con el semáforo. **El semáforo es una heurística interna de
   clasificación: no es citable como fuente en el mapa.**
   - 🟢 **Libre**: ideas, conceptos, mecánicas funcionales, géneros, flujos genéricos.
     El copyright no protege ideas — protege su expresión concreta.
   - 🟡 **Depende de licencia**: código ajeno, assets, tipografías, contenido CC. Para
     cada pieza 🟡 el mapa debe citar el texto real de la licencia (archivo LICENSE del
     proyecto, página oficial de la fundición o plataforma); si no se puede leer la
     licencia real, la pieza se reporta "sin datos" — nunca se clasifica de memoria.
   - 🔴 **Protegido**: código copiado, arte, sprites, música, textos, personajes,
     nombres y logos ajenos, marcas registradas. Aquí se crea propio o se licencia.
3. **Normativa aplicable**: identificar qué jurisdicción toca (Maryland por la LLC; DC y
   Virginia si el servicio cruza al DMV — señalarlo siempre, sin mezclarlas) y qué
   regulación sectorial aplica (COPPA si hay usuarios menores de 13, como en PolyPaw;
   privacidad de datos; reglas de email comercial para outreach).
4. **Términos de plataformas**: si el proyecto vive sobre una plataforma (App Store,
   YouTube, Meta, GitHub), revisar qué prohíben sus ToS para el caso concreto.
5. **Vía de consulta y verificación**: las fuentes se leen con la herramienta web del
   agente (Toga tiene acceso de lectura). Lo consultado se cachea en `fuentes-legales/`
   del workspace de Toga con fecha de captura, y el mapa cita archivo+fecha o URL. Toda
   afirmación legal lleva fuente; sin fuente verificable → "sin datos, esto lo confirma
   un abogado". JAMÁS inventar jurisprudencia, artículos de ley o citas (reglas 4 y 18).

## Formato del mapa de riesgo (salida)

```
MAPA DE RIESGO — [proyecto] · [fecha]
🟢 Libre de usar: [piezas y por qué]
🟡 Con condiciones: [pieza → licencia/condición exacta citada → qué hacer para cumplirla]
🔴 No tocar / crear propio: [piezas y riesgo concreto]
Normativa: [jurisdicción + regulación aplicable, con fuente]
Plataformas: [restricciones de ToS relevantes]
Horas de Edwar si se siguen las recomendaciones: [estimación o "sin datos"] (regla 16)
Dudas que requieren abogado licenciado: [lista — siempre presente, aunque diga "ninguna urgente"]
Fuentes: [enlaces/archivos consultados, con fecha]
```

El mapa se guarda en `riesgos/AAAA-MM-DD-[proyecto].md` del workspace de Toga (crear la
carpeta si no existe) y se entrega completo a Edwar.

## Reglas duras

- Esto es información factual organizada, no asesoría legal: cada mapa termina con el
  recordatorio del profesional licenciado en la jurisdicción correcta (regla 11).
- Maryland ≠ DC ≠ Virginia: nunca generalizar entre las tres (regla 11).
- Sin fuente no hay afirmación: "sin datos" es respuesta válida; inventar no (regla 4).
- Si la pieza es de un cliente real, sus datos no entran al análisis con nombre real:
  alias siempre (regla 17).
- Contratos: esta skill puede señalar cláusulas de riesgo en borradores, pero la versión
  final de cualquier contrato la revisa un abogado — y se dice así, textualmente.
