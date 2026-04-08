#!/bin/bash
echo "== Tweaks =="

mkdir -p ~/.config

cat > ~/.config/gamemode.ini <<EOF
[general]
renice=10
[cpu]
governor=performance
EOF

mkdir -p ~/.config/MangoHud

cat > ~/.config/MangoHud/MangoHud.conf <<EOF
fps
frametime
gpu_load
cpu_temp
EOF

echo '__GL_SHADER_DISK_CACHE_SIZE=10000000000' >> ~/.bashrc
