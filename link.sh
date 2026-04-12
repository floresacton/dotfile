#!/bin/bash

SRC="$HOME/dotfiles/config"
DEST="$HOME/.config"

mkdir -p "$DEST"

ln -s "$HOME/dotfiles/bashrc" "$HOME/.bashrc"

for item in "$SRC"/*; do
    name=$(basename "$item")
    target="$DEST/$name"

    if [ -e "$target" ] || [ -L "$target" ]; then
        echo "$name already exists"
    else
        ln -s "$item" "$target"
        echo "Linked $name → ~/.config/$name"
    fi
done
