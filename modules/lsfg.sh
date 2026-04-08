#!/bin/bash
echo "========================================="
echo " 🚀 LSFG Setup"
echo "========================================="

echo ""
echo "LSFG requires purchase via Steam."
echo "This will NOT function without it."
echo ""

read -p "Install LSFG support package? (y/n): " choice

if [[ "$choice" =~ ^[Yy]$ ]]; then

    cd /tmp || exit 1

    echo ""
    echo "Downloading LSFG package..."

    curl -LO https://github.com/PancakeTAS/lsfg-vk/releases/download/v1.0.0/lsfg-vk-1.0.0.x86_64.deb

    echo ""
    echo "Installing LSFG package..."

    sudo apt install -y ./lsfg-vk-1.0.0.x86_64.deb || {
        echo "Fixing dependencies..."
        sudo apt -f install -y
    }

    echo ""
    echo "LSFG installed ✔"

    mkdir -p ~/.local/share/vulkan/implicit_layer.d

    echo ""
    echo "IMPORTANT:"
    echo "You must own LSFG on Steam for this to work."
    echo ""
    echo "Support / Instructions:"
    echo "https://github.com/PancakeTAS/lsfg-vk"

else
    echo "Skipping LSFG setup."
fi
