#!/bin/bash

SRC="$HOME/Projects/dotfile/.config"
DEST="$HOME/.config"

mkdir -p "$DEST"

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
