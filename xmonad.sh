# Update
sudo pacman -Syu

# Xmonad
echo "Installando xmonad y extras"
sudo pacman -S xmonad xmonad-contrib dmenu xterm

# Xmobar
echo "Installando xmobar --> Barra superior con stats"
sudo pacman -S xmobar
mkdir ~/.config/xmobar
cp /usr/share/doc/xmobar/examples/xmobar.config ~/.config/xmobar/xmobarrc
curl https://archives.haskell.org/code.haskell.org/xmonad/man/xmonad.hs > ~/.xmonad/xmonad.hs
