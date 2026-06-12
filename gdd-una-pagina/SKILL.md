---
name: gdd-una-pagina
description: >
  Convierte una idea de juego del banco JUEGOS.md en un Game Design Document de UNA sola
  página, con la regla de alcance inquebrantable del estudio: si no se puede construir en
  un fin de semana, se recorta hasta que quepa. Produce el GDD y el brief técnico listo
  para que Claude Code lo construya como juego de navegador (HTML5/JS en un solo archivo).
  Úsala siempre que Edwar elija una idea del banco o diga "diseña el juego", "hazme el
  GDD", "¿cómo sería este juego?", "prepara la misión de construcción del juego",
  "quiero construir [idea de juego]" o cualquier variante de pasar de una idea DE JUEGO
  a diseño construible. (Proyectos que no son juegos: maestro-de-ceremonia o
  entrevistador-procesos; ideas de negocio: chispa.)
---

# GDD de una página — Estudio Píxel

El método del estudio para que alguien que nunca ha hecho un juego termine uno. El GDD
cabe en una página porque un primer juego que necesita más de una página es un juego que
no se va a terminar.

Vocabulario de la casa: **piso 1** = Claude Code dirigido por Edwar (ahí se construye);
**piso 2** = los agentes de este NAS (aquí se diseña). Esta skill vive en el piso 2 y
jamás intenta programar el juego.

## Proceso

1. **Elegir la idea** (del banco JUEGOS.md o la que Edwar traiga) y enunciarla en una
   frase jugable: "el jugador hace X para lograr Y antes de que Z".
2. **Llenar las cinco preguntas del GDD** — cada una en 3 líneas máximo:
   - **¿Qué se juega?** La acción central que el jugador repite (tocar, esquivar, elegir).
   - **¿Cómo se gana (y cómo se pierde)?** Condición de victoria, derrota y duración de
     una partida (objetivo: 30–90 segundos por partida en el primer juego).
   - **¿Qué se ve?** Estilo visual en una frase + paleta de 3 colores + qué hay en
     pantalla (máximo 5 elementos). Precedencia: para juegos, esta sección manda;
     director-creativo solo entra si Edwar pide identidad visual o arte más allá de la
     frase de estilo y la paleta del GDD.
   - **¿Qué suena?** 2–3 efectos como máximo (acierto, fallo, fin). Música opcional y
     solo si sobra fin de semana.
   - **¿Qué lo hace de Tunal?** El toque de marca o humor (un nopal, el bilingüismo,
     "Encuentra tu luz") — opcional pero recomendado.
3. **La poda del fin de semana** (la regla inquebrantable): **fin de semana = máximo
   12 horas de construcción dirigida** (sábado + domingo, dentro de la capacidad de la
   regla 16). Listar las features y tachar sin piedad todo lo que no quepa en esas 12
   horas. Lo tachado no se borra: va a "Versión 2, si la 1 se termina".
4. **Brief técnico para el piso 1**: un bloque final con: un solo archivo HTML5/JS,
   sin dependencias externas, controles táctiles y de teclado, funciona offline en un
   celular, criterio de calidad ("se entiende sin instrucciones en 10 segundos"), y los
   assets necesarios (si requiere imágenes, se piden a la Llave Creativa vía Píxel con
   su registro de generaciones).
5. **Registrar**: guardar el GDD en `~/.openclaw/workspace-pixel/gdd/AAAA-MM-DD-[nombre].md`
   (crear `gdd/` si no existe) y marcar la idea como "en diseño" en JUEGOS.md. Los
   estados "en construcción" y "terminado" se actualizan solo cuando Edwar lo confirme.

## Reglas duras

- UNA página. Si no cabe, el juego es demasiado grande: podar, no comprimir la letra.
- Nada de IP ajena: personajes, sprites, música o nombres de otros juegos no entran al
  GDD — los héroes crean, no copian. Ante la duda, derivar a Toga (analisis-riesgo-legal).
- El estudio diseña; la construcción es de Edwar con Claude Code (piso 1).
- Toda propuesta declara las horas de Edwar que consume (regla 16): el GDD honesto
  declara sus ≤12 horas de fin de semana; si pide más, vuelve al paso 3.
