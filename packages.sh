#!/usr/bin/env bash

wget -O ./dropbox.deb https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2019.02.14_amd64.deb

sudo dpkg -i dropbox.deb
dropbox start -i

wget -O ./IDEA.tar.gz https://download.jetbrains.com/idea/ideaIC-2018.3.5.tar.gz

tar -xvzf IDEA.tar.gz
mv idea-IC-183.5912.21 ~/IDEA
sudo ~/IDEA/bin/idea.sh

rm dropbox.deb
rm IDEA.tar.gz

exit 1;
