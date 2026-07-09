Vamos a recolectar el contenido. Lee CLAUDE.md para recordar qué cuentas
y redes estamos estudiando (por defecto: Rhema360 en Instagram y
Facebook, @rhema360insurance en ambas; más los referentes que hayamos
agregado, si aplica).

Usando el MCP de Apify, para cada red acordada:

1. Corre el actor correcto:
   - Instagram reels → apify/instagram-reel-scraper (trae transcripción)
   - Instagram posts → apify/instagram-scraper (métricas y captions)
   - Facebook → busca el actor de Apify más adecuado para posts/videos
     públicos de página de Facebook y muéstrame su ficha antes de usarlo
   - TikTok → clockworks/tiktok-scraper (activa la opción de transcribir
     todos los videos) — solo si agregamos cuentas de TikTok
   - YouTube → streamers/youtube-scraper (trae los subtítulos) — solo si
     agregamos cuentas de YouTube
2. Topes obligatorios en CADA corrida: maxItems entre 30 y 50 por
   cuenta, y maxTotalChargeUsd de 1 dólar. Antes de correr cada actor,
   muéstrame los parámetros y el costo estimado, y espera mi OK.
3. Si una corrida tarda más de 45 segundos, no te quedes esperando:
   guarda el ID de la corrida, sigue con la siguiente red y recupera el
   dataset cuando termine.
4. Guarda todo:
   - Los datos crudos en fuentes/, un archivo por red.
   - Cada transcripción en transcripciones/, nombrada
     red-fecha-título-corto, con sus métricas arriba: vistas, likes,
     comentarios, compartidos y fecha de publicación.
5. Ordena cada red de más viral a menos viral con las vistas reales del
   scraper. Si un dato no viene, escribe "s/d" — nunca lo inventes ni lo
   estimes.
6. Al final: cuántas piezas bajamos por red, las 5 más virales de todas,
   y cuánto crédito de Apify gastamos.

Solo cuentas y videos públicos. Si una cuenta es privada o el actor no
puede leerla, dime cuál y seguimos sin ella.
