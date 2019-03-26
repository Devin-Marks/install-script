#!/usr/bin/env bash

IDIR=$(pwd)
echo $IDIR
sudo apt install -y dpkg

wget https://github.com/anmoljagetia/Flatabulous/releases/download/16.04.1/Flatabulous-Theme.deb

sudo dpkg -i Flatabulous-Theme.deb
sudo rm Flatabulous-Theme.deb

wget https://dl.opendesktop.org/api/files/download/id/1488211092/s/4ebcff1a8cb2a9d04432a054dfe5f1e6116871eb26f8cdea416eb107da14e993021d5a5e274e1b75d1603d999d4e7d9e04be8187762e19c89783872b9dfded2c/t/1553620088/u//ultra-flat-icon-pack.tar.gz

sudo mv ultra-flat-icon-pack.tar.gz /usr/share/icons

cd /usr/share/icons

sudo tar -xvzf ultra-flat-icon-pack.tar.gz
sudo rm ultra-flat-icon-pack.tar.gz

cd $IDIR 
gnome-tweak-tool

exit 1;
