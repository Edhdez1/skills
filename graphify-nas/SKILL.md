---
name: graphify-nas
description: "Consultar el grafo de conocimiento local de los proyectos (Graphify) en vez de leer archivos a ciegas. Usar para preguntas sobre los repos: arquitectura, relaciones, contenido. Si graphify-out/ no existe aun, decir que el grafo no se ha construido."
---

# graphify-nas

El grafo de conocimiento de los proyectos vive en ~/graphify-corpus/graphify-out/.
El binario es ~/.local/bin/graphify (venv en ~/.graphify-venv).

## Reglas de uso (ahorro de tokens)
1. Antes de leer archivos de ~/repos a ciegas para responder una pregunta de contenido,
   consulta el grafo:  cd ~/graphify-corpus && graphify query "<pregunta>"
2. Camino entre conceptos:  graphify path "A" "B"
3. Explicar un nodo:        graphify explain "Nodo"
4. NUNCA reconstruyas el grafo completo por tu cuenta (cuesta tokens). La reindexacion
   incremental (graphify update) la hace El Rondin de madrugada.
5. Si graphify-out/graph.json no existe, responde "el grafo aun no esta construido"
   y sugiere pedirselo a Edwar.
