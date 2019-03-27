#!/usr/bin/env bash

wget -O ./IDEA.tar.gz https://download.jetbrains.com/idea/ideaIC-2018.3.5.tar.gz

tar -xvzf IDEA.tar.gz
mv idea-IC-183.5912.21 ~/IDEA
sudo ~/IDEA/bin/idea.sh

rm IDEA.tar.gz

exit 1;
