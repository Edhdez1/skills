# Skills

Colección de skills personales para usar con Claude Code, Claude Cowork y Claude Code Scheduled. Cada carpeta de este repo es una skill independiente con su archivo `SKILL.md` y, cuando hace falta, los archivos auxiliares que necesita para funcionar.

La idea de centralizarlas aquí en vez de copiarlas en cada conversación o en cada rutina automatizada es práctica: cuando una skill mejora, la cambias en un solo sitio y todos los entornos que la consumen heredan la mejora automáticamente, sin tener que tocar prompts uno por uno.

## Las skills disponibles

| Skill | Para qué sirve | Dónde se usa mejor |
|-------|----------------|---------------------|
| [director-creativo](director-creativo/) | Acompaña al usuario en proyectos visuales (webs, presentaciones, pósters, dashboards, branding) con un proceso de briefing, propuesta visual y, solo tras aprobación, implementación. | claude.ai, Cowork |
| [entrevistador-procesos](entrevistador-procesos/) | Entrevista al usuario para definir un proceso, workflow o skill antes de construirlo. Una pregunta a la vez, sin saltarse fases. | claude.ai, Cowork |
| [humanizador](humanizador/) | Reescribe textos para que suenen naturales y humanos, quitando frases típicas de IA, tono inflado y lenguaje corporativo vacío. | claude.ai, Cowork |
| [kit-cerebro-operativo](kit-cerebro-operativo/) | Sistema para convertir Cowork en un asistente personal real, con identidad, contexto y memoria propios. | Cowork |
| [notebooklm-skill](notebooklm-skill/) | Acceso completo a Google NotebookLM desde Claude: crear cuadernos, añadir fuentes, generar podcasts, vídeos, infografías, presentaciones, quizzes, mapas mentales e informes. Incluye también `ResumenCoNoteSkill` para exportar sesiones. | Claude Code (Mac + Windows) |
| [optimizador-prompts](optimizador-prompts/) | Convierte ideas desordenadas o notas rápidas en prompts limpios y estructurados, adaptados a la herramienta de destino (Claude, ChatGPT, Midjourney, Sora, n8n, etc.). | claude.ai, Cowork |
| [presentaciones-visuales](presentaciones-visuales/) | Genera presentaciones HTML modernas y autocontenidas a partir de una idea, esquema, transcripción o documento, eligiendo el estilo según el público y el uso previsto. | claude.ai, Cowork |
| [superpowers](superpowers/) | Activa un modo de trabajo riguroso para proyectos complejos: entender, planificar, detectar riesgos, definir criterios de calidad, y solo entonces construir. | claude.ai, Cowork |
| [verificador-datos](verificador-datos/) | Revisa cualquier texto buscando afirmaciones falsas, exageradas, dudosas o no verificables, y devuelve un informe con correcciones concretas y una recomendación final. | claude.ai, Cowork, Scheduled |

## Cómo usarlas

### NotebookLMSkill

Ejecuta `instalar_NotebookLMSkill_windows.bat` en Windows o sigue las instrucciones del README dentro de la carpeta si estás en Mac. Después sube `NotebookLMSkill.md` como skill en Claude Code y escribe `instala notebooklm` para arrancar el flujo de autenticación con Google.

### Kit Cerebro Operativo

Crea una carpeta `SegundoCerebro/` en tu ordenador, abre Cowork montando esa carpeta como espacio de trabajo, y sigue los 5 pasos del kit en orden. Cada prompt te lleva al siguiente sin que tengas que recordar nada de memoria.

### El resto

Las demás skills se invocan con el comando slash de su nombre dentro de una conversación de claude.ai o Cowork. Por ejemplo, `/verificador-datos` activa el verificador sobre el texto que sigas, `/humanizador` reescribe lo que le pegues, y así con cada una.

Para usarlas desde una rutina automatizada de Claude Code Scheduled, en lugar del slash command lo que haces es indicarle al modelo en el prompt de la rutina que lea el archivo `SKILL.md` correspondiente desde este repositorio y aplique sus principios al contenido que esté procesando. Por ejemplo, en una rutina de investigación de mercado podrías incluir: *"antes de finalizar el reporte, lee `verificador-datos/SKILL.md` y aplica esos principios a todas las afirmaciones numéricas y de fechas, marcando cada una con su clasificación correspondiente"*.

## Si quieres añadir o modificar una skill

Para una skill nueva, crea una carpeta con su nombre en minúsculas y con guiones (por ejemplo `nombre-de-skill/`) y dentro un archivo `SKILL.md` con la cabecera YAML estándar (`name` y `description`) seguida del cuerpo de la skill. Para mejorar una skill existente, edita su `SKILL.md` y los cambios se propagan automáticamente a cualquier entorno que la esté consumiendo desde aquí.
