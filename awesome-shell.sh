#!/bin/sh

# Install basics
sudo pacman -S zsh zsh-completions

git clone https://github.com/zsh-users/antigen.git
yaourt -S awesome-terminal-fonts-patched

ln -s ~/zsh/.zshrc ~/
ln -s ~/zsh/.aliasses ~/
