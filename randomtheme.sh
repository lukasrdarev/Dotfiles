#!/bin/bash

# Directory where wallpapers are stored
WALLPAPERS_DIR=~/Pictures/wallpapers

# Get a list of jpg and png files in the wallpapers directory
pictures=("$WALLPAPERS_DIR"/*.jpg "$WALLPAPERS_DIR"/*.png)

# Check if there are any pictures available
if [ ${#pictures[@]} -eq 0 ]; then
    echo "No JPG or PNG pictures found in $WALLPAPERS_DIR"
    exit 1
fi

# Select a random picture
random_picture=${pictures[RANDOM % ${#pictures[@]}]}

# Run wal to set the wallpaper
wal -i "$random_picture"

