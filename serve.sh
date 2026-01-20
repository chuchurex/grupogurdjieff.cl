#!/bin/bash

# Script para servir el sitio localmente
# Uso: ./serve.sh [puerto]

PORT=${1:-8000}

echo "======================================"
echo "Grupo Gurdjieff - Servidor Local"
echo "======================================"
echo ""
echo "Iniciando servidor en puerto $PORT..."
echo "URL: http://localhost:$PORT"
echo ""
echo "Presiona Ctrl+C para detener el servidor"
echo "======================================"
echo ""

# Intentar con Python 3, luego Python 2, luego PHP
if command -v python3 &> /dev/null; then
    python3 -m http.server $PORT
elif command -v python &> /dev/null; then
    python -m SimpleHTTPServer $PORT
elif command -v php &> /dev/null; then
    php -S localhost:$PORT
else
    echo "Error: No se encontró Python o PHP instalado."
    echo "Por favor instala Python 3 o usa npm:"
    echo "  npm install -g http-server"
    echo "  npx http-server -p $PORT"
    exit 1
fi
