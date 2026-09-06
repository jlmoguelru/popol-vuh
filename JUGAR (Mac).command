#!/bin/bash
# Doble clic para jugar. Cierra esta ventana de Terminal para apagar el juego.
cd "$(dirname "$0")" || exit 1
PUERTO=8765
lsof -ti:$PUERTO | xargs kill -9 2>/dev/null
echo "  POPOL VUH - Junajpu y el falso sol"
echo "  Jugar:  http://localhost:$PUERTO/index.html"
echo "  (deja esta ventana abierta mientras juegas)"
sleep 1 && open "http://localhost:$PUERTO/index.html" &
python3 -m http.server $PUERTO --bind 127.0.0.1
