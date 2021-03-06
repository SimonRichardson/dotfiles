#!/bin/bash

mkdir -p ~/src/github.com/thestinger
cd ~/src/github.com/thestinger

git clone --recursive https://github.com/thestinger/termite.git
git clone https://github.com/thestinger/vte-ng.git
sudo apt-get install g++ libgtk-3-dev gtk-doc-tools gnutls-bin valac
sudo apt-get install libglib3.0-cil-dev libgnutls28-dev libgirepository1.0-dev
sudo apt-get install libxml2-utils gperf
cd vte-ng && ./autogen.sh && make && sudo make install
cd ../termite && make && sudo make install

mkdir -p ~/.config/termite
ln -sf ~/my/dotfiles/termite/config ~/.config/termite/config
