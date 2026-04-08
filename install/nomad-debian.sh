#!/bin/bash

clear

echo "========================================="
echo "   🎮 Nomad Gaming Method v1.0"
echo "========================================="
echo "Clean. Fast. No nonsense."
echo ""

echo "Type: I AGREE"
read -r confirm
[[ "$confirm" == "I AGREE" ]] || exit 1

# Checks
if [ "$EUID" -eq 0 ]; then
  echo "Run as normal user."
  exit 1
fi

if ! command -v plasmashell >/dev/null; then
    echo "KDE Plasma not detected."
    exit 1
fi

if ! command -v nvidia-smi >/dev/null; then
    echo "NVIDIA driver not detected."
    echo "Complete manual NVIDIA setup first."
    exit 1
fi

ping -c 1 google.com >/dev/null || {
    echo "Internet required."
    exit 1
}

echo "System ready ✔"
sleep 1

BASE_URL="https://raw.githubusercontent.com/nomad-gaming-method/nomad-gaming-method/main/modules"

WORKDIR=$(mktemp -d)
cd "$WORKDIR" || exit 1

echo "Downloading modules..."

for file in system gaming ntsync fonts tweaks lsfg; do
    curl -s "$BASE_URL/$file.sh" -o "$file.sh"
done

echo "Starting install..."

bash system.sh || exit 1
bash gaming.sh || exit 1
bash ntsync.sh || exit 1
bash fonts.sh
bash tweaks.sh
bash lsfg.sh

echo ""
echo "========================================="
echo " ✅ Setup Complete"
echo "========================================="
echo ""
echo "Reboot → Open Steam → Install Proton GE → Play 🎮"
