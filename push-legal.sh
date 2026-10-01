#!/bin/bash
REPO="/home/jrg/ecosistema-defensor"
TITULO=$1; CARPETA=$2; CONTENIDO=$3
FECHA=$(date '+%Y-%m-%d')
ANIO=$(date '+%Y'); MES=$(date '+%m-%B' | tr '[:upper:]' '[:lower:]')
HASH=$(echo -n "$CONTENIDO" | sha256sum | awk '{print $1}')
SLUG=$(echo "$TITULO" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd 'a-z0-9-')

[ -z "$CARPETA" ] && CARPETA="$ANIO/$MES"
mkdir -p "$REPO/$CARPETA"

# Crear el archivo Markdown
cat > "$REPO/$CARPETA/${FECHA}-${SLUG}.md" << MDEOF
# 📜 ${TITULO}
| Campo | Valor |
|---|---|
| **Fecha** | ${FECHA} |
| **SHA256** | \`${HASH}\` |
| **Autor** | JRG + CTO-IA |

## Contenido
${CONTENIDO}

---
*© JRG — roberto@defensorjrg.com — MIT*
MDEOF

# Commit y push a main
cd "$REPO"
git add .
git commit -m "📜 ${TITULO} | ${FECHA}"
git push origin main
echo "✅ Push exitoso a: https://github.com/jrogutierrez/legals"
