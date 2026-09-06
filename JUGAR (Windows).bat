@echo off
title POPOL VUH - Junajpu y el falso sol
cd /d "%~dp0"
echo   Jugar:  http://localhost:8765/index.html
echo   (deja esta ventana abierta mientras juegas)
start "" http://localhost:8765/index.html
py -3 -m http.server 8765 --bind 127.0.0.1 2>nul || python -m http.server 8765 --bind 127.0.0.1
pause
