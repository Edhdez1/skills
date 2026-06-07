# Skills

Colección de skills para usar con Claude Code, Claude Cowork y Claude Code Scheduled. Cada carpeta de este repo es una skill independiente con su archivo `SKILL.md` y, cuando hace falta, los archivos auxiliares que necesita para funcionar.

La idea de centralizarlas aquí en vez de copiarlas en cada conversación o en cada rutina automatizada es práctica: cuando una skill mejora, la cambias en un solo sitio y todos los entornos que la consumen heredan la mejora automáticamente, sin tener que tocar prompts uno por uno.

## Autoría de las skills (importante para futuras sesiones)

Este repo mezcla skills creadas por mí (Edwar Hernández) con skills recopiladas de la comunidad o de terceros que guardo aquí solo para tenerlas centralizadas. Para que cualquier sesión futura lo tenga claro:

- **Propias (creadas por mí):** `director-creativo`, `copywriter-tunal`, `maestro-de-ceremonia`, `monitoreo-competencia`, `reporte-pipeline`.
- **Externas (recopiladas de terceros, no son de mi autoría):** `entrevistador-procesos`, `humanizador`, `kit-cerebro-operativo`, `notebooklm-skill`, `optimizador-prompts`, `presentaciones-visuales`, `superpowers`, `verificador-datos`.

Regla para futuras sesiones: al hablar de "mis skills" o evaluar autoría, considerar como propias únicamente las marcadas como **Propia** en la tabla. Las externas pueden usarse y adaptarse, pero no atribuírmelas.

## Las skills disponibles

| Skill | Autoría | Para qué sirve | Dónde se usa mejor |
|-------|---------|----------------|---------------------|
| [director-creativo](director-creativo/) | Propia | Acompaña al usuario en proyectos visuales (webs, presentaciones, pósters, dashboards, branding) con un proceso de briefing, propuesta visual y, solo tras aprobación, implementación. | claude.ai, Cowork |
| [copywriter-tunal](copywriter-tunal/) | Propia | Copywriter bilingüe (ES/EN) para LinkedIn de Tunal Digital: crea posts, carruseles, anuncios y newsletter con la voz "Encuentra tu luz" y deja el texto limpio de tono IA en el mismo paso. | claude.ai, Cowork |
| [entrevistador-procesos](entrevistador-procesos/) | Externa | Entrevista al usuario para definir un proceso, workflow o skill antes de construirlo. Una pregunta a la vez, sin saltarse fases. | claude.ai, Cowork |
| [humanizador](humanizador/) | Externa | Reescribe textos para que suenen naturales y humanos, quitando frases típicas de IA, tono inflado y lenguaje corporativo vacío. | claude.ai, Cowork |
| [kit-cerebro-operativo](kit-cerebro-operativo/) | Externa | Sistema para convertir Cowork en un asistente personal real, con identidad, contexto y memoria propios. | Cowork |
| [maestro-de-ceremonia](maestro-de-ceremonia/) | Propia | Orquesta tus proyectos: hace triage corto, mapea necesidades a skills/conectores/herramientas, devuelve un plan ordenado y, si falta una pieza, propone crear una skill nueva derivando a `entrevistador-procesos` y `optimizador-prompts`. | claude.ai, Cowork |
| [monitoreo-competencia](monitoreo-competencia/) | Propia | Visita los sitios de agencias competidoras del DMV y produce un brief semanal de inteligencia competitiva de 1 página: cambios de precios, casos nuevos, herramientas, ofertas y mensaje, con reglas anti-invención y comparación contra la semana anterior. | Claude Code Scheduled, Claude Code |
| [notebooklm-skill](notebooklm-skill/) | Externa | Acceso completo a Google NotebookLM desde Claude: crear cuadernos, añadir fuentes, generar podcasts, vídeos, infografías, presentaciones, quizzes, mapas mentales e informes. Incluye también `ResumenCoNoteSkill` para exportar sesiones. | Claude Code (Mac + Windows) |
| [optimizador-prompts](optimizador-prompts/) | Externa | Convierte ideas desordenadas o notas rápidas en prompts limpios y estructurados, adaptados a la herramienta de destino (Claude, ChatGPT, Midjourney, Sora, n8n, etc.). | claude.ai, Cowork |
| [presentaciones-visuales](presentaciones-visuales/) | Externa | Genera presentaciones HTML modernas y autocontenidas a partir de una idea, esquema, transcripción o documento, eligiendo el estilo según el público y el uso previsto. | claude.ai, Cowork |
| [reporte-pipeline](reporte-pipeline/) | Propia | Genera el reporte semanal de pipeline de Tunal Digital (leads nuevos, positivas pendientes, calls, reply rate por sector) con umbrales de alerta y un modo pre-pipeline que evita inventar métricas cuando aún no hay campañas. | Claude Code Scheduled, Claude Code |
| [superpowers](superpowers/) | Externa | Activa un modo de trabajo riguroso para proyectos complejos: entender, planificar, detectar riesgos, definir criterios de calidad, y solo entonces construir. | claude.ai, Cowork |
| [verificador-datos](verificador-datos/) | Externa | Revisa cualquier texto buscando afirmaciones falsas, exageradas, dudosas o no verificables, y devuelve un informe con correcciones concretas y una recomendación final. | claude.ai, Cowork, Scheduled |

## Cómo usarlas

### copywriter-tunal

Invócala con `/copywriter-tunal` (o pídele directamente "hazme un post para LinkedIn sobre X"). Genera la pieza en español e inglés con la voz de Tunal Digital y la deja sin tono de IA. Funciona de la mano de `humanizador`, pero no lo necesita: ya incorpora esa limpieza al crear el contenido.

### monitoreo-competencia y reporte-pipeline

Nacieron para las rutinas server-side de Claude Code (Scheduled): la rutina semanal lee el `SKILL.md` correspondiente desde el repositorio `tunal-digital` (carpeta `.claude/skills/`) y lo sigue al pie de la letra. La copia maestra vive aquí; la copia que consumen las rutinas vive en `tunal-digital/.claude/skills/`. Si mejoras una, replica el cambio en la otra (o pide a Claude que lo haga). También puedes usarlas manualmente en una conversación: pídele a Claude que lea el `SKILL.md` y lo aplique.

### NotebookLMSkill

Ejecuta `instalar_NotebookLMSkill_windows.bat` en Windows o sigue las instrucciones del README dentro de la carpeta si estás en Mac. Después sube `NotebookLMSkill.md` como skill en Claude Code y escribe `instala notebooklm` para arrancar el flujo de autenticación con Google.

### Kit Cerebro Operativo

Crea una carpeta `SegundoCerebro/` en tu ordenador, abre Cowork montando esa carpeta como espacio de trabajo, y sigue los 5 pasos del kit en orden. Cada prompt te lleva al siguiente sin que tengas que recordar nada de memoria.

### El resto

Las demás skills se invocan con el comando slash de su nombre dentro de una conversación de claude.ai o Cowork. Por ejemplo, `/verificador-datos` activa el verificador sobre el texto que sigas, `/humanizador` reescribe lo que le pegues, y así con cada una.

Para usarlas desde una rutina automatizada de Claude Code Scheduled, en lugar del slash command lo que haces es indicarle al modelo en el prompt de la rutina que lea el archivo `SKILL.md` correspondiente desde este repositorio y aplique sus principios al contenido que esté procesando. Por ejemplo, en una rutina de investigación de mercado podrías incluir: *"antes de finalizar el reporte, lee `verificador-datos/SKILL.md` y aplica esos principios a todas las afirmaciones numéricas y de fechas, marcando cada una con su clasificación correspondiente"*.

## Si quieres añadir o modificar una skill

Para una skill nueva, crea una carpeta con su nombre en minúsculas y con guiones (por ejemplo `nombre-de-skill/`) y dentro un archivo `SKILL.md` con la cabecera YAML estándar (`name` y `description`) seguida del cuerpo de la skill. Para mejorar una skill existente, edita su `SKILL.md` y los cambios se propagan automáticamente a cualquier entorno que la esté consumiendo desde aquí.
