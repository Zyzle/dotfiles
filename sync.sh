#!/usr/bin/env bash

set -x

# --- Sync dotfiles
dotfiles=(".aliases" ".gitconfig" ".nvmrc" ".profile" ".zprofile" ".zshrc")
for dotfile in "${dotfiles[@]}"; do
	cp ${HOME}/${dotfile} .
done

# --- Sync Zsh theme
cp ~/.oh-my-zsh/themes/headline.zsh-theme .