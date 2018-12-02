#!/usr/bin/env bash

set -Eeuxo pipefail

IFS=$'\n\t'

trap 'echo Error at about $LINENO' ERR

# awesome kitty emacs 
# xfce4-power-manager xscreensaver pulseaudio volti udiskie
# unclutter firefox scrot mpd mpc dmenu xsel slock

# Grab configs
git clone https://github.com/jeremyottley/xmo.git ~/.xmonad
git clone https://github.com/jeremyottley/.fonts.git ~/.fonts && sudo fc-cache -vf
git clone https://github.com/jeremyottley/.org.git ~/.org
git clone https://github.com/jeremyottley/.Xresources.d.git ~/.Xresources.d
git clone https://github.com/jeremyottley/bash-utils.git ~/.bash
git clone https://github.com/jeremyottley/.wallpapers.git ~/.wallpapers
git clone https://github.com/jeremyottley/.cheatsheets.git ~/.cheatsheets
git clone https://github.com/jeremyottley/Startpages.git ~/.startpages
git clone https://github.com/jeremyottley/.pandoc.git ~/.pandoc

# Set Up Themes
#git clone --recursive https://github.com/lcpz/awesome-copycats.git
#mv -bv awesome-copycats/* ~/.config/awesome; rm -rf awesome-copycats

mv -vi .Xresources ~/.Xresources
mkdir -p ~/.config/kitty
mv -vi kitt.conf ~/.config/kitty/kitty.conf
mv -vi Icons.bdf ~/.fonts/bitmap/Icons.bdf
# add these to xinitrc?
xset +fp ~/.fonts/bitmap/
xset fp rehash
