#!/bin/bash
echo "== Gaming Setup =="

read -p "Install Steam + Proton? (y/n): " choice

if [[ "$choice" =~ ^[Yy]$ ]]; then
    sudo apt install -y \
        steam gamemode mangohud gamescope \
        vulkan-tools libvulkan1 libvulkan1:i386 flatpak \
        plasma-discover-backend-flatpak \
        || exit 1

    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

    flatpak install -y flathub net.davidotek.pupgui2

    echo "Gaming stack installed ✔"
else
    echo "Skipping gaming — not usable for gaming."
fi

echo ""
read -p "Install OBS? (y/n): " obs
[[ "$obs" =~ ^[Yy]$ ]] && sudo apt install -y obs-studio

echo ""
read -p "Install Discord? (y/n): " disc
[[ "$disc" =~ ^[Yy]$ ]] && flatpak install -y flathub com.discordapp.Discord
