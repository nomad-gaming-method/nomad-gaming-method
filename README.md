# 🎮 Nomad Gaming Method
Clean. Fast. No nonsense.

---

## 🧱 Phase 1 — Base System

Install Debian (Testing recommended)

Select:
- KDE Plasma
- Standard system utilities

---

## ⚠️ First Boot (If Needed)

If you do not reach desktop:

At GRUB:
- Press `e`
- Add `nomodeset` to `quiet splash`
- Press F10

---

## 🧱 Update System

sudo apt update
sudo apt upgrade -y

---

## 🎮 NVIDIA Setup (Manual)

Install required packages:

sudo apt install -y linux-headers-$(uname -r) build-essential dkms

Install NVIDIA:

sudo apt install extrepo
sudo extrepo enable nvidia-cuda
sudo apt update
sudo apt install nvidia-open

Reboot:

reboot

Verify:

nvidia-smi

---

## 🚀 Phase 2 — Run Installer

curl -fsSL https://raw.githubusercontent.com/nomad-gaming-method/nomad-gaming-method/main/install/nomad-debian.sh | bash

---

## 🎯 What You Get

- Steam + Proton
- ProtonPlus
- NTSYNC
- Gamemode + MangoHUD
- OBS + Discord (optional)

---

## ❌ Not Included

- Wine
- Lutris
- Custom kernels

---

## ⚙️ Optional

TKG Kernel:
https://github.com/Frogging-Family/linux-tkg

---

## 🆘 Support

Use official sources:

- Proton → https://github.com/ValveSoftware/Proton
- Proton GE → https://github.com/GloriousEggroll/proton-ge-custom
- ProtonPlus → https://github.com/DavidoTek/ProtonPlus
- ProtonDB → https://www.protondb.com

---

## 💀 Done

Reboot → Open Steam → Play
