#!/bin/bash
echo "== Fonts =="

echo ""
echo "Install recommended fonts?"
echo "Improves readability and UI appearance."

read -p "(y/n): " choice

if [[ "$choice" =~ ^[Yy]$ ]]; then
    sudo apt install -y \
        fonts-jetbrains-mono \
        fonts-inter \
        fonts-ubuntu \
        fonts-ubuntu-console \
        || exit 1

    echo "Fonts installed ✔"
else
    echo "Skipping fonts — system will use defaults."
fi
