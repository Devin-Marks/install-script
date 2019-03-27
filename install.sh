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

sudo cp vimstuff/.vimrc ~/.vimrc
sudo cp -r vimstuff/templates/ ~/
mkdir -p ~/.vim/autoload ~/.vim/bundle && \curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

clear
echo "Installation Successful!"
echo "Logout for ZSH to function properly"
 
read -p "Would you like to install Intelli? [Y/n] " pack
read -p "Would you like to install GTK Theme? [Y/n] " theme
read -p "Would you like to install Firefox profile? [Y/n] " fox

if [[ "$pack" == 'Y' || "$pack" == 'y' ]] && [[ "$theme" == 'Y' || "$theme" == 'y' ]] && [[ "$fox" == 'Y' || "$fox" == 'y' ]]
then
    sudo ./themes.sh;
    sudo ./packages.sh;
    sudo ./ext.sh;
    echo "Todo: Edit vim rice file, side script with option for firefox addons";
elif [[ "$pack" == 'Y' || "$pack" == 'y' ]] && [[ "$theme" == 'Y' || "$theme" == 'y' ]] && [[ "$fox" == 'N' || "$fox" == 'n' ]]
then
    sudo ./themes.sh;
    sudo ./packages.sh;
    echo "Todo: Edit vim rice file, side script with option for firefox addons";
elif [[ "$pack" == 'Y' || "$pack" == 'y' ]] && [[ "$theme" == 'N' || "$theme" == 'n' ]] && [[ "$fox" == 'N' || "$fox" == 'n' ]]
then
	sudo ./packages.sh
	echo "Todo: Edit vim rice file, side script with option for firefox addons";
elif [[ "$pack" == 'Y' || "$pack" == 'y' ]] && [[ "$theme" == 'N' || "$theme" == 'n' ]] && [[ "$fox" == 'Y' || "$fox" == 'y' ]]
then
	sudo ./packages.sh;
	sudo ./ext.sh;
	echo "Todo: Edit vim rice file, side script with option for firefox addons";
elif [[ "$pack" == 'N' || "$pack" == 'n' ]] && [[ "$theme" == 'Y' || "$theme" == 'y' ]] && [[ "$fox" == 'Y' || "$fox" == 'y' ]]
then
	sudo ./themes.sh;
	sudo ./ext.sh;
	echo "Todo: Edit vim rice file, side script with option for firefox addons";
elif [[ "$pack" == 'N' || "$pack" == 'n' ]] && [[ "$theme" == 'N' || "$theme" == 'n' ]] && [[ "$fox" == 'Y' || "$fox" == 'y' ]]
then
    sudo ./ext.sh;
    echo "Todo: Edit vim rice file, side script with option for firefox addons";
elif [[ "$pack" == 'N' || "$pack" == 'n' ]] && [[ "$theme" == 'Y' || "$theme" == 'y' ]] && [[ "$fox" == 'N' || "$fox" == 'n' ]]
then
    sudo ./themes.sh;
    echo "Todo: Side Script with option for firefox addons";
else
    echo "Todo: Side script with option for firefox addons";
fi
