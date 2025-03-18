#!/usr/bin/env bash

USAGE="$(cat<< END_USAGE
Usage: ${0}

Sets up several symbolic links to use this repo and performs basic application config.
END_USAGE
)"

# Install submodules
git submodule update --init --recursive
# Symbolic links
ln -s /home/ruuffian/code/tooling/.dotfiles/.bashrc ~/.bashrc
ln -s /home/ruuffian/code/tooling/.dotfiles/.bash_aliases ~/.bash_aliases
touch .bash_local
touch ~/.bash_profile
echo ". ~/.bashrc" >> ~/.bash_profile
ln -s /home/ruuffian/code/tooling/.dotfiles/nvim-config ~/.config/nvim
ln -s /home/ruuffian/code/tooling/.dotfiles/.local/bin/tmux-sessionizer .local/bin/tmux-sessionizer
# Git config
git config --global user.email ruuffian@gmail.com
git config --global user.name ruuffian
