#!/bin/bash

# Rename existing dotfiles as .dotfile.old
declare -a file_paths=(~/.gitconfig
                       ~/.inputrc
                       ~/.xprofile
                       ~/.alacritty.yml
                       ~/.config/i3/config)

declare -a protected_files=(/etc/xdg/picom.conf)

for FILE in "${file_paths[@]}"
do
  if [ -f "$FILE" ]; then
    mv "$FILE" "$FILE.old"
  else
    echo "$FILE does not exist."
  fi
done

for FILE in "${protected_files[@]}"
do
  if [ -f "$FILE" ]; then
    sudo mv "$FILE" "$FILE.old"
  else
    echo "$FILE does not exist."
  fi
done

# Copy these dotfiles to the appropriate locations
cp .gitconfig ~/.gitconfig
cp .inputrc ~/.inputrc 
cp .xprofile ~/.xprofile
cp .alacritty.yml ~/.alacritty.yml

cp .config/i3/config ~/.config/i3/config

sudo cp picom.conf /etc/xdg/picom.conf
