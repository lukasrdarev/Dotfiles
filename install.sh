
#!/bin/zsh

# install.sh should be run without sudo

sudo apt update
sudo apt install -y i3 i3blocks alacritty terminator fonts-jetbrains-mono feh  picom flameshot rofi thunar kitty


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

#echo 'PS1="%F{blue}%n%f %F{red}%~%f >> "' >> ~/.zshrc

git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes


#--------------------------------------------------------------------------

echo "\n\n"
echo "[!] Picom config not set due to possible performance issues with blurring."
echo "	- enable hardware acceleration, then copy ./picom/picom.conf to ~/.config/picom/"

echo "\n\n"
echo "[+] Done"

