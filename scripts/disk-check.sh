#!/bin/bash
# Script: disk-check.sh
# Descripción: Revisa el uso de disco y muestra las 3 carpetas más pesadas de $HOME
# Autor: Roanger Ochoa

echo "============================="
echo "  Disk Usage Check"
echo "============================="
echo ""

# 1. Capturar el % de uso del disco raíz
USO=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

# 2. Decidir si alertar o no
if [ "$USO" -ge 85 ]; then
    echo "⚠️  Alerta: disco al ${USO}%, revisa estas carpetas:"
else
    echo "✅ Disco en ${USO}%, todo en orden."
fi

echo ""
echo "📂 Top 3 carpetas más pesadas en \$HOME:"
sudo du -sh "$HOME"/* 2>/dev/null | sort -rh | head -3

echo ""
echo "============================="
echo "  Revisión completada ✅"
echo "============================="
