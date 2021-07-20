#!/bin/bash

# Rename existing dotfiles as .dotfile.old
mv ~/.gitconfig ~/.gitconfig.old
mv ~/.inputrc ~/.inputrc.old
mv ~/.xprofile ~/.xprofile.old
mv ~/.alacritty.yml ~/.alacritty.yml.old

mv ~/.config/i3/config ~/.config/i3/config.old

sudo mv /etc/xdg/picom.conf /etc/xdg/picom.conf.old

# Copy these dotfiles to the appropriate locations
cp .gitconfig ~/.gitconfig
cp .inputrc ~/.inputrc 
cp .xprofile ~/.xprofile
cp .alacritty.yml ~/.alacritty.yml

cp .config/i3/config ~/.config/i3/config

sudo cp picom.conf /etc/xdg/picom.conf
