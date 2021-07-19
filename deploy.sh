#!/bin/bash

# Rename existing dotfiles as .dotfile.old
mv ~/.gitconfig ~/.gitconfig.old
mv ~/.inputrc ~/.inputrc.old
mv ~/.xprofile ~/.xprofile.old

# Copy these dotfiles to the appropriate locations
cp .gitconfig ~/.gitconfig
cp .inputrc ~/.inputrc 
cp .xprofile ~/.xprofile
