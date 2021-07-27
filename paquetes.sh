# Update
sudo pacman -Syu

# Paquetes Herramientas
echo "Installando Herramientas Generales"
sudo pacman -S vim emacs nano strace openssh curl htop tree wget terminator xclip bless neofetch net-tools

# Lenguajes de Programacion
echo "Installando Lenguajes y Herramientas de Programacion"
sudo pacman -S base-devel gcc gdb python python-pip jdk11-openjdk cunit make cmake bless

# DEV Utils
echo "Installando Utilidades de Programacion"
sudo pacman -S valgrind meld
