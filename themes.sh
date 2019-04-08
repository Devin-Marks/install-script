#!/usr/bin/env bash

IDIR=$(pwd)
echo $IDIR
sudo apt install -y dpkg

wget https://github.com/anmoljagetia/Flatabulous/releases/download/16.04.1/Flatabulous-Theme.deb

sudo dpkg -i Flatabulous-Theme.deb
sudo rm Flatabulous-Theme.deb

echo "Icons must be done manually https://www.opendesktop.org/p/1171748/"
cd $IDIR 

exit 1;
