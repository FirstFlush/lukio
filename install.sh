#!/bin/bash

TARGET_DIR="/usr/local/bin"
SCRIPT="bin/lukio"

# Check if the script exists
if [ -f "$SCRIPT" ]; then
    echo "Installing Lukio to $TARGET_DIR..."
    # Copy the script to the target directory
    sudo cp "$SCRIPT" "$TARGET_DIR/lukio"
    # Make the script executable
    sudo chmod +x "$TARGET_DIR/lukio"
    echo "Installation complete. You can now run 'lukio' from anywhere."
else
    echo "Error: Script $SCRIPT not found. Please ensure you run the install script from the project root directory."
    exit 1
fi