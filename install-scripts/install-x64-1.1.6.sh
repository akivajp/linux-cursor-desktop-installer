#!/bin/bash

set -eu

APPIMAGE_URL="https://downloads.cursor.com/production/5b19bac7a947f54e4caa3eb7e4c5fbf832389853/linux/x64/Cursor-1.1.6-x86_64.AppImage"

# Get the directory path of this script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_DIR="$(cd "${SCRIPT_DIR}" && cd .. && pwd)"

echo "Script directory: $SCRIPT_DIR"
echo "Base directory: $BASE_DIR"

"${BASE_DIR}/install-appimage.sh" "$APPIMAGE_URL"
