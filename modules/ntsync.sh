#!/bin/bash
echo "== NTSYNC =="

read -p "Enable NTSYNC? (y/n): " choice

if [[ "$choice" =~ ^[Yy]$ ]]; then
    echo 'export PROTON_USE_NTSYNC=1' >> ~/.bashrc
    echo "Enabled ✔"
fi
