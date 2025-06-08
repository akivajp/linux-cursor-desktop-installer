#!/bin/bash

set -eu

if [ $# -ne 1 ]; then
    echo "Usage: $0 appimage-url"
    exit 1
fi

APPIMAGE_URL="$1"

# Get the directory path of this script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Script directory: $SCRIPT_DIR"

# Create tmp directory if it doesn't exist
mkdir -p "$SCRIPT_DIR/tmp"

# Download AppImage with resume capability
echo "Downloading Cursor AppImage..."
curl -L -C - "$APPIMAGE_URL" -o "$SCRIPT_DIR/tmp/Cursor-1.0.0-x86_64.AppImage"
echo "Download completed"

# Make the AppImage executable
chmod +x "$SCRIPT_DIR/tmp/Cursor-1.0.0-x86_64.AppImage"

# Copy the AppImage to the Applications directory
echo "Copying AppImage to Applications directory..."
cp -pv "$SCRIPT_DIR/tmp/Cursor-1.0.0-x86_64.AppImage" "$HOME/Applications/Cursor-1.0.0-x86_64.AppImage"

# Create a symlink to the AppImage
echo "Creating symlink..."
ln -sf "$HOME/Applications/Cursor-1.0.0-x86_64.AppImage" "$HOME/Applications/cursor.AppImage"

# Create a desktop entry
#"${SCRIPT_DIR}/CursorDesktopIntegrator.sh"
