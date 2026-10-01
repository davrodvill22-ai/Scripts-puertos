#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: Faltan argumentos."
    echo "Uso: $0 <puerto>"
    exit 1
fi

PORT=$1

if ss -tuln | grep -Ewq ".*:$PORT"; then
    echo "El puerto $PORT está ABIERTO (escuchando)."
else
    echo "El puerto $PORT está CERRADO."
fi