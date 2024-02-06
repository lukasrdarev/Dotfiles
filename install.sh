
#!/bin/zsh


git clone https://github.com/burw0r/Dotfiles.git $HOME

sudo apt install -y i3 i3blocks alacritty terminator fonts-jetbrains-mono feh nitrogen npm flameshot
npm i -g alacritty-themes


cp "$HOME/Dotfiles/alacritty/alacritty.yml" "$HOME/.config/alacritty/alacritty.yml"
cp "$HOME/Dotfiles/i3/config" "$HOME/.config/i3/config"
cp "$HOME/Dotfiles/wallpapers/"* "$HOME/Pictures/wallpapers/"
cp "$HOME/Dotfiles/tmux/.tmux.conf" "$HOME/.tmux.conf"
cp "$HOME/Dotfiles/rofi/config.rasi" "$HOME/.config/rofi/config.rasi"


#--------------------------------------------------------------------------

echo "[+] Done"
echo "[+] Restart and enjoy"
