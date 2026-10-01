# 📜 Evidencia Gladiador Intruso Japon Capturado
| Campo | Valor |
|---|---|
| **Fecha** | 2026-10-01 |
| **SHA256** | `2defd8ba4e5438b10ac9678fae8bf9a8f2a22afa84c768a6aa503158907353e5` |
| **Autor** | JRG + CTO-IA |

## Contenido

EVIDENCIA DE PROTECCIÓN EN VIVO — 01/10/2026

Vector de ataque: Probing no autenticado de archivos .env
IP atacante: 138.64.97.146
Origen: Asahi Net Inc, Kabukiza Tower 21F, Ginza, Tokio, Japón
User-Agent: Mozilla/5.0 (Macintosh) Firefox/77.0 (disfrazado)

Detección:
- Capa 3 (Nginx): HTTP 301 → 404 (archivo no servido)
- Capa 6 (Gladiador Canary): Alerta ntfy en <2 segundos
- Capa 7 (UFW): Baneo permanente insertado en regla #1

Archivos trampa activados:
1. .env.backup
2. api.keys_vault.json
3. informe_accesos_restringidos.txt

Resultado: CERO datos comprometidos. Atacante baneado.
Costo de defensa: 0.0000 USD.
Tiempo de respuesta: <2 segundos.

Este registro demuestra que el ecosistema Defensor JRG detecta,
neutraliza y documenta ataques reales de internet en tiempo real
sobre infraestructura de 10.50 USD/mes.


---
*© JRG — roberto@defensorjrg.com — MIT*
