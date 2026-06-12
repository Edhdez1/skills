---
name: crm-ligero
description: >
  Mantiene el CRM en Markdown de Puente: un archivo por cliente de Tunal Digital con
  alias (Piloto A, Piloto B…), historial de interacciones, acuerdos, fechas comprometidas
  y próximos pasos, más los reportes mensuales de retainer listos para que Edwar los
  envíe. Úsala siempre que Edwar diga "anota esto del cliente", "actualiza la ficha",
  "¿en qué quedamos con [cliente]?", "prepara el reporte de retainer", "onboarding del
  cliente nuevo", "¿qué le prometimos?" o cualquier variante de registrar o consultar la
  relación con un cliente. Esta skill es la dueña del proceso completo del reporte de
  retainer: copywriter-tunal actúa solo como paso de redacción dentro de ella, nunca
  por fuera y sin la ficha. Los nombres y contactos reales jamás tocan un documento que
  pueda salir de la carpeta de Puente.
---

# CRM ligero — Puente

La memoria comercial de Tunal en archivos planos: suficiente para no fallarle a ningún
cliente, sin una sola herramienta de pago, y a prueba de la regla 17.

Vocabulario: **El Amanecer** es el briefing matutino que Faro envía a Edwar cada día a
las 5:55 — levanta lo que los agentes dejan anotado en sus carpetas `memory/`.

## Estructura (raíz: `~/.openclaw/workspace-puente/crm/` — crearla si no existe)

- `crm/INDICE.md` — la tabla maestra: alias ↔ estado (preventa / entrega / retainer /
  pausado / cerrado) ↔ próxima fecha comprometida.
- `crm/.alias` — el ÚNICO lugar del mundo donde vive el mapa alias↔realidad, una línea
  por cliente con el formato: `PILOTO-A = Nombre Real | contacto (tel/email/WhatsApp)`.
  **Todo dato de contacto real vive aquí y solo aquí: nunca en fichas, índice,
  checklists ni reportes.**
- `crm/[ALIAS].md` — la ficha del cliente, cuatro secciones fijas:
  1. **Contexto**: sector, paquete contratado, idioma preferido, manías conocidas.
  2. **Historial**: una línea por interacción (`AAAA-MM-DD — qué pasó — quién debe el
     siguiente paso`), siempre arriba la más reciente.
  3. **Acuerdos vigentes**: qué se prometió, cuándo vence, qué cuesta. Nada de promesas
     fuera del manual de precios canónico de Tunal (vive en el clon
     `~/repos/tunal-digital/`; si el dato de precio no se encuentra ahí, se pregunta a
     Edwar — no se promete, regla 10).
  4. **Próximos pasos**: máximo 3, con fecha.

## Proceso

1. **Tras cada interacción** que Edwar reporte: una línea al historial, actualizar
   próximos pasos, y si cambió un acuerdo, reflejarlo el mismo día (la memoria se anota
   cuando ocurre, no "después").
2. **Onboarding de cliente nuevo**: crear la ficha desde la primera conversación seria,
   asignar el siguiente alias libre del índice, y generar el checklist de arranque
   (accesos que pedir, expectativas de plazos, canal de comunicación acordado — el
   canal se nombra por tipo, "WhatsApp"/"email", y el contacto concreto va a `.alias`).
   Las expectativas de plazos declaran las horas/semana de Edwar que consumen y se
   contrastan con su capacidad de 25–37 h antes de pasar a borrador (regla 16).
3. **Reporte de retainer** (mensual o cuando Edwar lo pida): qué se hizo este mes, qué
   valor concreto recibió el cliente, qué viene el próximo — la sección "qué viene"
   declara horas de Edwar (regla 16). Redacción con la cadena copywriter-tunal →
   humanizador → verificador-datos, siempre desde la ficha y con alias. Se entrega como
   borrador: **Puente redacta, Edwar envía** (regla 5).
4. **Alerta de fechas**: al revisar el índice, toda fecha comprometida a ≤7 días se
   anota en `memory/alertas-clientes.md` del workspace de Puente con el formato
   `AAAA-MM-DD | ALIAS | compromiso` para que El Amanecer la levante.

## Reglas duras

- Alias SIEMPRE en fichas, índice, reportes y cualquier texto que pueda salir de la
  carpeta; la realidad solo en `crm/.alias` (regla 17).
- **`crm/.alias` jamás entra a control de versiones, respaldos sincronizados fuera del
  NAS, repos ni exports** — si algún repo llegara a contener `crm/`, `.alias` debe estar
  en su `.gitignore`. El tar de respaldo local del NAS sí puede contenerlo (no sale de
  la máquina).
- Nada se envía a un cliente desde aquí: todo es borrador para aprobación de Edwar
  (regla 5).
- Promesas de precio o alcance fuera del manual de Tunal: no se escriben ni "para
  negociar" — se marca la tensión y se consulta a Edwar (regla 10).
- Temas de contrato o legales en una ficha: información factual + derivar a Toga;
  la palabra final la tiene un profesional licenciado (regla 11).
- Las fichas no se borran: cliente que se va pasa a estado "cerrado" con su historia
  intacta (regla 12).
