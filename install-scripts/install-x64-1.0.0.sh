#!/bin/bash

set -eu

APPIMAGE_URL="https://downloads.cursor.com/production/53b99ce608cba35127ae3a050c1738a959750865/linux/x64/Cursor-1.0.0-x86_64.AppImage"

# Get the directory path of this script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_DIR="$(cd "${SCRIPT_DIR}" && cd .. && pwd)"

echo "Script directory: $SCRIPT_DIR"
echo "Base directory: $BASE_DIR"

"${BASE_DIR}/install-appimage.sh" "$APPIMAGE_URL"
