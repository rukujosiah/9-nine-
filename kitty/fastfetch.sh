#!/usr/bin/env bash

# Set paths
BACKGROUND_LINK="$HOME/.config/omarchy/current/background"
IMAGES_DIR="$HOME/.config/fastfetch/images"
SYMLINK_TARGET="$HOME/.config/fastfetch/icon"

# Resolve actual wallpaper path
wallpaper_path=$(readlink -f "$BACKGROUND_LINK")

# Extract character name from wallpaper filename (e.g., sora from sora_wal.png)
character=$(basename "$wallpaper_path" | cut -d'_' -f1)

# Construct the corresponding ASCII art filename
ascii_art_file="${character}_icon.png"
ascii_art_path="$IMAGES_DIR/$ascii_art_file"

# Check if ASCII art exists
if [[ -f "$ascii_art_path" ]]; then
    # Remove existing symlink if it exists
    [[ -L "$SYMLINK_TARGET" || -f "$SYMLINK_TARGET" ]] && rm "$SYMLINK_TARGET"

    # Create new symlink
    ln -s "$ascii_art_path" "$SYMLINK_TARGET"
    echo "Symlink created: $SYMLINK_TARGET -> $ascii_art_path"
else
    echo "Error: ASCII art file not found for '$character' at '$ascii_art_path'" >&2
    exit 1
fi
