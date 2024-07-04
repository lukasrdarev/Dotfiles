
#!/bin/zsh

# install.sh should be run without sudo

sudo apt update
sudo apt install -y i3 i3blocks alacritty terminator fonts-jetbrains-mono feh nitrogen picom  flameshot rofi thunar
sudo pip3 install pywal


mkdir -p ~/.config/alacritty/
mkdir -p ~/.config/alacritty/themes
mkdir -p ~/.config/i3/
mkdir -p ~/Pictures/wallpapers/
mkdir -p ~/.config/rofi/


cp "alacritty/alacritty.yml"    "$HOME/.config/alacritty/alacritty.yml"
cp "i3/config"                  "$HOME/.config/i3/config"
cp "wallpapers/wallpapers.zip"  "$HOME/Pictures/wallpapers/"
unzip "$HOME/Pictures/wallpapers/wallpapers.zip" -d "$HOME/Pictures/wallpapers/"
cp "tmux/.tmux.conf"            "$HOME/.tmux.conf"
cp "rofi/config.rasi"           "$HOME/.config/rofi/config.rasi"


#echo 'PS1="%F{blue}%n%f %F{red}%~%f >> "' >> ~/.zshrc

git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes


#--------------------------------------------------------------------------

echo "\n\n"
echo "[+] Done"

