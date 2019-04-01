#!/usr/bin/env bash

set -e

sudo add-apt-repository ppa:deadsnakes/ppa;
sudo apt update;

sudo snap install discord;
sudo snap install telegram-desktop;
sudo snap install spotify;
sudo snap install bitwarden;
sudo snap install vscode --classic;

sudo apt install -y python3.6;
sudo apt install -y python3-pip;
sudo apt install -y zsh;
sudo apt install -y geany;
sudo apt install -y vim;
sudo apt install -y libreoffice;
sudo apt install -y glances;
sudo apt install -y ncdu;
sudo apt install -y curl;
sudo apt install -y gnome-tweak-tool;
sudo apt install -y tmux;

sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" --batch && echo "Install complete!"

ZSH=/home/devin/.oh-my-zsh;
ZSH_CUSTOM=/home/devin/.oh-my-zsh;
    
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
   
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    
sudo git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
    
sudo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
    
chsh -s $(which zsh);

sudo sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="spaceship"/' ~/.zshrc
sudo sed -i 's/plugins=.*/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc
sed -i -e 's/NEWLINE=true/NEWLINE=false/g' ~/.oh-my-zsh/themes/spaceship-prompt/spaceship.zsh

sudo cp vimstuff/.vimrc ~/.vimrc
sudo cp -r vimstuff/templates/ ~/
mkdir -p ~/.vim/autoload ~/.vim/bundle && \curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "alias mux=\"./mux.sh\"" >> ~/.zshrc
echo "alias clr=\"clear\"" >> ~/.zshrc

cp ./.tmux.conf ~/.tmux.conf
cp ./mux.sh ~/mux.sh

clear

echo "Installation Successful!"
echo "Logout for ZSH to function properly"
 
read -p "Would you like to install Intelli? [Y/n] " pack
read -p "Would you like to install GTK Theme? [Y/n] " theme
read -p "Would you like to install Firefox profile? [Y/n] " fox

if [[ "$pack" == 'Y' || "$pack" == 'y' ]]
then
    sudo ./packages.sh;
fi

if [[ "$theme" == 'Y' || "$theme" == 'y' ]]
then
	sudo ./themes.sh;
fi

if [[ "$fox" == 'Y' || "$fox" == 'y' ]]
then
    sudo mv firefoxprofile/* ~/.mozilla/firefox
    echo "Copy files from profile starting with \"owsn\" into the default firefox profile.";
fi

echo "Installation complete!"
