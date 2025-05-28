# Update
sudo pacman -Syu

# Paquetes Herramientas
echo "Instalando Herramientas Generales"
sudo pacman -S vim emacs nano strace openssh curl htop tree wget terminator xclip bless neofetch net-tools

# Lenguajes de Programacion
echo "Instalando Lenguajes y Herramientas de Programacion"
sudo pacman -S base-devel gcc gdb python python-pip jdk21-openjdk cunit make cmake bless

# DEV Utils
echo "Instalando Utilidades de Programacion"
sudo pacman -S valgrind meld
