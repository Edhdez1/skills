---
name: cierre-mensual
description: >
  Produce el cierre mensual de Tunal Digital LLC a partir de los archivos que Edwar entregue
  (CSV de banco, exports de Stripe/PayPal, facturas, recibos) en la carpeta de Balanza:
  libro de ingresos y gastos, resultado del mes en español claro, termómetro de transición
  W-2 → freelance, recordatorios de impuestos estimados y el paquete anual para el contador.
  Úsala siempre que Edwar pida "cierra el mes", "el cierre de [mes]", "registra estos
  movimientos", "¿cómo vamos este mes en dinero/finanzas?", "prepara el paquete del
  contador" o entregue archivos financieros para procesar. (Si la pregunta es de ventas o
  pipeline, eso es reporte-pipeline; si es el panorama estratégico, sintesis-estrategica.)
  Nunca estima cifras sin documento fuente: si falta un dato, lo declara como "sin datos"
  y pide el archivo que lo respaldaría.
---

# Cierre mensual — Tunal Digital LLC

Esta skill es el procedimiento contable interno de Balanza. Organiza y calcula; las
decisiones fiscales son de Edwar y su contador (regla 11 de Reglas.md).

## Entradas aceptadas

Solo archivos que Edwar deposite o entregue explícitamente: CSV bancarios, exports de
Stripe/PayPal, facturas emitidas, recibos de gastos. Sin archivo no hay número: jamás se
reconstruye un movimiento de memoria ni se estima "aproximadamente" (regla 4).
Si el archivo es la factura de un cliente, aquí se registra el ingreso y nada más:
el reporte de retainer de ese cliente es territorio de Puente (skill crm-ligero).

## Proceso

1. **Registrar**: volcar cada movimiento al libro del mes (`libro/AAAA-MM.md` en la
   carpeta de Balanza) con fecha, concepto, categoría (ingreso / gasto operativo /
   inversión / impuestos / transferencia) y archivo fuente entre paréntesis.
   **Clientes reales siempre por su alias del CRM de Puente (Piloto A, Piloto B…; regla
   17)**: el nombre real solo puede aparecer dentro del paquete del contador, que no
   sale de la carpeta hasta que Edwar lo entregue en persona.
2. **Clasificar con la pregunta de la casa**: ¿esto es gasto o inversión? Si es ambiguo,
   se anota la duda para Edwar en vez de decidir en silencio.
3. **Cerrar**: totales del mes (ingresos, gastos, resultado), comparación con el mes
   anterior si existe libro previo, y tres líneas de lectura en español claro: qué pasó,
   qué cambió, qué vigilar.
4. **Termómetro W-2**: ingreso freelance del mes y promedio móvil de 3 meses contra el
   umbral que Edwar haya definido. El umbral vive en `memory/umbral-w2.md` del workspace
   de Balanza; si no existe, preguntarlo una vez y guardarlo ahí. Con menos de 3 libros
   previos: "promedio 3m: sin datos (n meses disponibles)". Sin umbral definido:
   "Termómetro W-2: pendiente de umbral".
5. **Impuestos**: si el mes cierra dentro de los 30 días previos a un pago de impuestos
   estimados (15 de enero, abril, junio y septiembre), escribir el recordatorio en
   `memory/recordatorio-fiscal.md` del propio workspace de Balanza — **solo fecha y
   concepto, jamás cifras** — para que El Amanecer (el briefing matutino de Faro) lo
   levante sin filtrar finanzas.
6. **Paquete del contador** (solo cuando Edwar lo pida o al cerrar diciembre): resumen
   anual por categorías + lista de archivos fuente, listo para entregar.

## Formato del cierre (salida)

```
CIERRE [MES AAAA] — Tunal Digital LLC
Ingresos: $X (n movimientos) · Gastos: $Y (n) · Resultado: $Z
vs mes anterior: [+/-% o "sin mes previo"]
Termómetro W-2: [$X de $UMBRAL (XX%) | "pendiente de umbral"] · promedio 3m: [$X | "sin datos (n meses)"]
Lectura: [3 líneas máximo]
Pendientes/dudas para Edwar: [lista o "ninguna"]
Fuentes: [archivos procesados]
```

Si el cierre va a circular fuera de la carpeta de Balanza (una junta, un acta, otra
memoria), se entrega la **versión junta**: solo totales agregados, sin alias, sin
nombres y sin rutas de archivo.

## Reglas duras

- Ningún número sin archivo fuente; lo que falte se reporta como "sin datos" (regla 4).
- Los datos financieros JAMÁS salen de la carpeta de Balanza: ni a repos, ni a chats con
  terceros, ni a otros workspaces (regla 17 y matriz de accesos). Fuera de la carpeta,
  solo la versión junta agregada.
- Esta skill informa y organiza; no asesora fiscalmente. Toda salida que toque impuestos
  termina recordando: "decisión final con tu contador o un profesional licenciado de la
  jurisdicción que corresponda (Maryland/DC/Virginia; por defecto Maryland, donde está
  registrada la LLC)" (regla 11).
- Nada se borra: los libros mensuales son acumulativos y se corrigen con asientos nuevos,
  no editando los viejos (regla 12).
