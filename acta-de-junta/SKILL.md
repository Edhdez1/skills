---
name: acta-de-junta
description: >
  Protocolo de la Sala de Juntas de la compañía: convoca a los agentes que Edwar nombre,
  consulta a cada uno DE VERDAD (sesión real por agente, jamás actuar sus voces), y
  entrega el acta completa con cada intervención textual y firmada en el orden en que
  ocurrió, más la síntesis y la siguiente acción del coordinador. Úsala siempre que Edwar
  diga "convoca a junta", "reúne a [agentes] sobre [tema]", "quiero el acta de la junta",
  "que la compañía delibere", "¿qué opinan los agentes de…?" o cualquier variante donde
  quiera ver a la empresa deliberar en lugar de recibir solo un resumen. No aplica a
  actas de reuniones humanas de Edwar (eso es redacción normal), y si lo que pide es
  decidir qué skills o herramientas usar para un proyecto, eso es maestro-de-ceremonia:
  la junta es para deliberar y dejar constancia.
---

# Acta de junta — la Sala de Juntas

El teatro de la empresa con actas reales (ver "Protocolo de voces" en el AGENTS.md del
coordinador). El valor del acta es que cada voz es auténtica: una junta donde el
coordinador "actúa" las voces de sus colegas es un monólogo con disfraces, y eso está
prohibido aquí.

## Proceso

1. **Orden del día**: enunciar el tema en una o dos frases y la pregunta concreta que la
   junta debe responder. Si Edwar no la dio, formularla y confirmarla con él primero.
2. **Convocados**: los agentes que Edwar nombró. Si no nombró, proponer los 2–4 cuyo
   territorio toca el tema (consultar el organigrama) — nunca convocar a los once por
   defecto: cada silla ocupada cuesta créditos.
3. **Consultas reales, una por agente**: cada consulta es una sesión real del agente
   convocado (spawn de subagente con su agentId: su workspace, SOUL y AGENTS cargan
   solos), con el orden del día y el contexto mínimo. **Máximo 2 consultas simultáneas**
   (límite de concurrencia del NAS); el resto en secuencia. **Si un convocado no responde
   en ~10 minutos, se declara "sin respuesta" y la junta sigue.** La regla de oro: cada
   intervención del acta debe venir de una consulta real; si un agente no fue consultado
   o no respondió, el acta declara su silencio ("—Vigía: no consultado" / "sin
   respuesta"), jamás se inventa ni se parafrasea su postura.
4. **El acta**: transcribir las intervenciones textuales, en el orden en que ocurrieron,
   cada una precedida de su firma («—Brújula:», «—Eco:»…). No editar las voces, con UNA
   única excepción permitida: **si una intervención nombra a un cliente real, el
   coordinador sustituye el nombre por su alias del CRM antes de archivar (regla 17)**
   y lo deja anotado al pie del acta.
5. **Cierre del coordinador**: síntesis en 3–5 líneas (acuerdos, desacuerdos abiertos,
   datos faltantes) + LA siguiente acción concreta con responsable y las horas de Edwar
   que implica (regla 16). Si la junta produjo propuestas que requieren gasto,
   publicación o cambio irreversible, marcarlas como "pendiente de aprobación de Edwar"
   (reglas 5 y 12).
6. **Archivar**: guardar en `actas/AAAA-MM-DD-[tema].md` del workspace del coordinador
   — **alias también en el nombre del archivo, jamás un cliente real** — y entregar a
   Edwar el acta completa (no un resumen — el acta ES el entregable).

## Formato del acta (salida)

```
ACTA DE JUNTA — [tema] · [fecha]
Convocados: [lista] · Orden del día: [pregunta]

—[Agente 1]: [intervención textual]
—[Agente 2]: [intervención textual]
[...en orden real...]
—[Agente N]: [silencio declarado, si aplica]

SÍNTESIS (coordinador): [3–5 líneas]
SIGUIENTE ACCIÓN: [una, con responsable] · Horas de Edwar: [X h o "0 — no lo involucra"]
Pendiente de aprobación de Edwar: [sí/no — qué]
```

## Reglas duras

- Prohibido actuar voces: sin consulta real no hay intervención (la regla que hace que
  esto sea una junta y no un guion).
- Las intervenciones se entregan textuales y firmadas — el coordinador presenta y
  sintetiza, no dobla a sus colegas (Protocolo de voces de la casa).
- Clientes reales solo por alias, en el cuerpo y en el nombre del archivo (regla 17);
  la sustitución por alias es la única edición permitida a una voz ajena.
- Una junta no aprueba nada por sí misma: propone; Edwar decide (regla 5).
- Si el tema es de números, Brújula participa o el acta declara "sin datos verificados";
  si es legal, Toga participa con su mapa de riesgo o el punto queda como duda abierta;
  si es de finanzas, Balanza aporta solo su versión junta (totales agregados).
