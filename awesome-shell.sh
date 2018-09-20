#!/bin/sh

# Install basics
sudo pacman -S zsh zsh-completions

git clone https://github.com/zsh-users/antigen.git
git clone https://github.com/creationix/nvm.git ~/.nvm
aurman -S awesome-terminal-fonts-patched

# sudo pacman -S yarn

ln -s ~/zsh-config/.zshrc ~/
ln -s ~/zsh-config/.aliases ~/

chsh -s $(which zsh)
