# Matriz de Contenido Viral — Rhema360

Sistema para que Claude baje el contenido más viral de las redes de
Rhema360 (o de creadores de referencia), lo transcriba, encuentre el
patrón y ayude a escribir los próximos guiones encima de ese patrón.
Corre en local con Claude Code y el MCP de Apify — nada de esto se
publica en el sitio web, es una carpeta de herramientas internas.

## 1. Conecta el MCP de Apify (una sola vez, en tu máquina)

```
claude mcp add --transport http apify https://mcp.apify.com
```

Abre Claude Code dentro de esta carpeta (`matriz-viral/`) y autoriza la
conexión:

```
claude
```

Dentro de Claude Code:

```
/mcp
```

Si una respuesta del MCP se corta (pasa de 10,000 tokens), cierra la
sesión y ábrela así:

```
MAX_MCP_OUTPUT_TOKENS=50000 claude
```

## 2. Verifica la conexión

Copia y pega `prompts/00-verificar-conexion.md`.

## 3. Corre el sistema, en orden

1. `prompts/01-plan-maestro.md` — en **modo Plan** (Shift+Tab hasta ver
   `plan mode`). Ya trae precargados los datos de Rhema360 (redes,
   tema); solo falta confirmar tono, cadencia semanal y si se estudian
   referentes.
2. `prompts/02-recolectar.md` — baja lo más viral con topes de costo.
3. `prompts/03-matriz.md` — construye la Matriz de Contenido Viral y el
   documento de patrones.
4. `prompts/04-simular-guiones.md` — escribe y simula 5 guiones nuevos.
5. `prompts/05-rutina-semanal.md` — se pega una sola vez; después,
   escribir "rutina semanal" dispara los 5 pasos (ya quedó grabado
   también en `CLAUDE.md`).

## Redes de Rhema360

- Instagram: https://www.instagram.com/rhema360insurance
- Facebook: https://www.facebook.com/rhema360insurance

(No hay presencia detectada en TikTok, YouTube ni X todavía — si se
abren esas cuentas, agrégalas a `CLAUDE.md` antes de recolectar.)

## Costos

Ver la guía completa para el detalle por actor. En corto: un análisis
inicial de ~130 piezas cuesta menos de $0.25 USD, y la rutina semanal
menos de $0.10 USD — el plan gratis de Apify da $5 USD de crédito cada
mes, sin tarjeta.

## Reglas de oro

- La matriz presta estructura y técnica, nunca palabras — no copiar
  frases literales.
- Ningún número se inventa: sin dato del scraper, la celda dice `s/d`.
- Se publica también lo que puntúe bajo en la simulación.
