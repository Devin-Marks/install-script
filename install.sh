#!/usr/bin/env bash

sudo add-apt-repository ppa:deadsnakes/ppa;
sudo apt update;

sudo snap install discord;
sudo snap install telegram-desktop;
sudo snap install spotify;
sudo snap install vscode;

sudo apt isntall -y python3.6;
sudo apt install -y python3-pip;
sudo apt install -y zsh;
sudo apt install -y geany;
sudo apt install -y keepass2;
sudo apt install -y vim;
sudo apt install -y libreoffice;
sudo apt install -y glances;
sudo apt install -y ncdu;
sudo apt install -y curl;
sudo apt install -y gnome-tweak-tool;
sudo apt install -y mono-complete;
    
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" --batch && echo "Install complete!"
    
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
   
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    
sudo git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
    
sudo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
    
sudo wget -o /usr/lib/keepass2/KeePassHttp.plgx https://raw.github.com/pfn/keepasshttp/master/KeePassHttp.plgx

sudo sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="spaceship"/' .zshrc
sudo sed -i 's/plugins=.*/plugins=(git, zsh-autosuggestions, zsh-syntax-highlighting)/g' .zshrc

echo "Left to install: IntelliJ, dropbox, edit vim.rc" 
echo "Todo: Edit vim rice file, side script with option for firefox addons"
