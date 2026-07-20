# Rhema Insurance (rhema360.com)

Sitio estático (HTML/CSS/JS puro, sin build step) para Rhema Insurance LLC — agencia de seguros para la comunidad hispana en EE.UU. (ACA, Medicare, vida, dental, visión, seguros suplementarios). Agente: Daniel Paz Galvis. Teléfono/WhatsApp: `+1 407-603-5896` (`wa.me/14076035896`). Email: rhema360insurance@gmail.com.

Hosting: Cloudflare Pages, conectado directo a este repo (sin config en el repo — no hay `CNAME`/`netlify.toml`/workflows de CI). Cada rama obtiene una preview URL propia tipo `https://<branch-slug>.rhema360.pages.dev`.

Identidad visual: navy `#060E1E` / `#0D1B33`, gold `#C9963A` / `#E8B85A`, fuentes Syne (headings) + DM Sans (body). Meta Pixel ID: `1334558204818640` (ya inicializado en todas las páginas).

## Campaña "seguros suplementarios" — /protege/

Landing gamificada (`protege/index.html`) para tráfico pagado de Meta Ads: hook "Tu seguro médico no te protege como crees" + calculadora de 3 preguntas + reveal cinematográfico de un rango de beneficio en efectivo + CTA a WhatsApp. Incluye video en el hero (`protege/media/hero-video.mp4` + `.webm`).

**Intencionalmente NO está enlazada en el menú principal** — es solo para tráfico de anuncio, no para navegación orgánica del sitio (el blog `/blog/seguro-complementario/` cubre el mismo tema para visitantes orgánicos).

**Configuración pendiente en Meta Ads Manager** (URL de destino del anuncio):
```
https://rhema360.com/protege/?utm_source=facebook&utm_medium=paid&utm_campaign=seguro_suplementario&utm_content=<nombre_variante_creativo>
```
Cambiar `utm_content` por variante/creativo probado (ej. `video_hospital`, `hook_b`) para comparar performance.

Eventos del Pixel que ya disparan solos en `/protege/`: `PageView`/`ViewContent` (entrada), `CompleteRegistration` (termina el quiz), `Lead` (clic en "Cotiza este beneficio"), `Contact` (WhatsApp/llamada).
