#!/bin/bash -x

set -e


# Update
sudo pacman -Syu --noconfirm

# Paquetes Generales y Herramientas
sudo pacman -S vim emacs nano strace openssh curl htop tree wget terminator xclip bless fastfetch net-tools valgrind meld bluez bluez-utils --noconfirm

# Lenguajes de Programacion
sudo pacman -S base-devel gcc gdb python python-pip jdk21-openjdk cunit make cmake bless --noconfirm

# installs nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# Avoid restart shell
\. "$HOME/.nvm/nvm.sh"

# download and install Node.js (you may need to restart the terminal)
nvm install 22
node -v
nvm current
corepack enable pnpm
pnpm -v

# Add Docker
sudo pacman -S docker --noconfirm
sudo systemctl start docker
sudo systemctl enable docker 
sudo usermod -aG docker $USER

# Add YaY
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
cd .. && rm -rf ./yay

## Esto queda para el final para no cambiar la shell en medio
# ZSH
echo "Installando ZSH"
sudo pacman -S zsh --noconfirm

# Oh My ZSH
echo "Installando Oh My ZSH --> ZSH Cheto"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


