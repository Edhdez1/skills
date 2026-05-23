---
name: NotebookLMSkill
description: Acceso completo a Google NotebookLM — crear cuadernos, añadir fuentes, generar podcasts, videos, infografias, presentaciones, quizzes, mapas mentales, informes y mas. Funciona en Claude Code en Mac y Windows. Activar con /NotebookLMSkill, "instala notebooklm", "crea un podcast sobre X", "genera una infografia", "busca en profundidad sobre X", "añade estas fuentes a NotebookLM", "lista mis cuadernos".
---
<!-- notebooklm-py v0.3.4 | Claridad Artificial | Mac + Windows -->

# NotebookLM — Acceso completo desde Claude

Acceso programatico completo a Google NotebookLM, incluyendo funciones no disponibles en la interfaz web. Crea cuadernos, añade fuentes (URLs, YouTube, PDFs, audio, video, imagenes), chatea con el contenido, genera todos los tipos de artefactos y descarga los resultados.

---

## ENTORNO — Ejecutar al inicio de cada activacion

Antes de cualquier comando, detectar el sistema operativo y configurar la ruta correcta:

```bash
if [ -f "$HOME/.notebooklm-venv/bin/notebooklm" ]; then
    NLM="$HOME/.notebooklm-venv/bin/notebooklm"
    VENV_PYTHON="$HOME/.notebooklm-venv/bin/python3"
    echo "Sistema: Mac/Linux"
elif [ -f "$HOME/.notebooklm-venv/Scripts/notebooklm.exe" ]; then
    NLM="$HOME/.notebooklm-venv/Scripts/notebooklm.exe"
    VENV_PYTHON="$HOME/.notebooklm-venv/Scripts/python.exe"
    echo "Sistema: Windows"
else
    echo "NotebookLM no esta instalado. Ejecuta el proceso de instalacion primero."
    exit 1
fi

$NLM auth check
```

**Si auth falla:** Ejecutar el Step 0 completo (instalacion y login).

A partir de aqui, **todos los comandos usan `$NLM`** en lugar de `notebooklm` directamente.
