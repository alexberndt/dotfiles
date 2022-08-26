#!/bin/sh

echo "Running install script ..."

# Install Core Dependencies
sudo apt-get install -y build-essential git 

# Install VS Code
echo "Installing VS Code ..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders


echo "Installing Inkscape ..."
sudo add-apt-repository ppa:inkscape.dev/stable
sudo apt update
sudo apt install inkscape

echo "Installing GIMP ..."
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update
sudo apt-get install gimp

echo "Install VLC player ..."
sudo apt install -y vlc

echo "Installing Tex Live ..."
sudo apt-get install -y texlive-full

echo "Installing Spotify Client ..."
sudo apt install -y curl
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

echo "Installing Unity Tweak Tool ..."
sudo add-apt-repository universe
sudo apt install -y gnome-tweak-tool
mkdir ~/.themes
git clone https://github.com/vinceliuice/Mojave-gtk-theme.git ~/.themes/mojave-gtk-theme
chmod +x ~/.themes/mojave-gtk-theme/install.sh

sudo apt-get install -y libglib2.0-dev-bin

~/.themes/mojave-gtk-theme/install.sh

echo "Setting background ..."
mkdir ~/Pictures/wallpapers
wget https://raw.githubusercontent.com/alexberndt/dotfiles/main/wallpapers/google-earth-1.jpg -O /home/alex/Pictures/wallpapers/earth-1.jpg
gsettings set org.gnome.desktop.background picture-uri file:////home/alex/Pictures/wallpapers/earth-1.jpg
gsettings set org.gnome.desktop.screensaver picture-uri file:////home/alex/Pictures/wallpapers/earth-1.jpg


sudo apt-get install terminator

# Pyenv
# git clone https://github.com/pyenv/pyenv.git ~/.pyenv


sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Poetry
curl -sSL https://install.python-poetry.org | python3 -


# wget https://raw.githubusercontent.com/alexberndt/dotfiles/main/.tmux.conf
# wget https://raw.githubusercontent.com/alexberndt/dotfiles/main/.antigenrc
# wget https://raw.githubusercontent.com/alexberndt/dotfiles/main/.zshrc
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# curl -L git.io/antigen > .antigen.zsh
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# git clone https://github.com/wbthomason/packer.nvim\
#  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# mkdir .config/nvim
# nvm install node
# [ "$UID" -eq 0 ] || exec sudo "$0" "$@"
# pacman -S zsh starship docker docker-compose go
# chsh -s $(which zsh)
# source .zshrc
