
#!/bin/zsh

# install.sh should be run without sudo

sudo pacman -Sy
sudo pacman  -Sy --noconfirm i3  alacritty terminator ttf-jetbrains-mono feh nitrogen picom flameshot rofi thunar kitty python-pip zip unzip git python-pywal firefox tmux zsh


mkdir -p ~/.config/alacritty/
mkdir -p ~/.config/alacritty/themes
mkdir -p ~/.config/i3/
mkdir -p ~/Pictures/wallpapers/
mkdir -p ~/.config/rofi/
mkdir -p ~/.config/kitty/
mkdir -p ~/.config/picom/
mkdir -p ~/.config/terminator


cp "alacritty/alacritty.toml"    "$HOME/.config/alacritty/alacritty.toml"
cp "i3/config"                   "$HOME/.config/i3/config"
cp "wallpapers/wallpapers.zip"   "$HOME/Pictures/wallpapers/"
unzip "$HOME/Pictures/wallpapers/wallpapers.zip" -d "$HOME/Pictures/wallpapers/"
cp "tmux/.tmux.conf"             "$HOME/.tmux.conf"
cp "rofi/config.rasi"            "$HOME/.config/rofi/config.rasi"
cp "terminator/config"		 "$HOME/.config/terminator/config"
cp "kitty/kitty.conf"            "$HOME/.config/kitty/kitty.conf"
cp "kitty/current-theme.conf"     "$HOME/.config/kitty/current-theme.conf"
sudo cp ./randomtheme.sh /usr/local/bin

#echo 'PS1="%F{blue}%n%f %F{red}%~%f >> "' >> ~/.zshrc

git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes


chsh -s /bin/zsh

#--------------------------------------------------------------------------

echo "[!] Picom config not set due to possible performance issues with blurring."
echo "	- enable hardware acceleration, then run:"
echo "     cp ./picom/picom.conf  ~/.config/picom/"

echo "[+] Done"

