#!/bin/sh

datetime=$(date +%Y%m%d)

# Install basics
if pacman -Q | grep -E '(^|\s)zsh($|\s)' >/dev/null; then
    echo "Dependency zsh already satisfied"
else
    sudo pacman -S zsh
fi

if pacman -Q | grep -E '(^|\s)zsh-completions($|\s)' >/dev/null; then
    echo "Dependency zsh-completions already satisfied"
else
    sudo pacman -S zsh-completions
fi

rm -rf ~/zsh-config/antigen
git clone https://github.com/zsh-users/antigen.git

mv ~/.nvm ~/.nvm-$datetime
git clone https://github.com/creationix/nvm.git ~/.nvm

if pacman -Q | grep -E '(^|\s)awesome-terminal-fonts-patched($|\s)' >/dev/null; then
    echo "Dependency awesome-terminal-fonts-patched already satisfied"
else
    yay -S awesome-terminal-fonts-patched
fi

touch ~/zsh-config/.device_specific
ln -s ~/zsh-config/.zshrc ~/
ln -s ~/zsh-config/.aliases ~/

chsh -s $(which zsh)
