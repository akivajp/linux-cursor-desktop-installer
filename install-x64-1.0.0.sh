#!/bin/bash

set -eu

APPIMAGE_URL="https://github.com/cursor-desktop/cursor-desktop/releases/download/1.0.0/Cursor-1.0.0-x86_64.AppImage"

# Get the directory path of this script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

"${SCRIPT_DIR}/install-appimage.sh" "$APPIMAGE_URL"
