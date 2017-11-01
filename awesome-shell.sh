#!/bin/sh

# Install basics
sudo pacman -S zsh zsh-completions

yaourt -S antigen-git
yaourt -S awesome-terminal-fonts-patched


ln -s ~/zsh/.zshrc ~/

