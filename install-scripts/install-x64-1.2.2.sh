#!/bin/bash

set -eu

APPIMAGE_URL="https://downloads.cursor.com/production/faa03b17cce93e8a80b7d62d57f5eda6bb6ab9fa/linux/x64/Cursor-1.2.2-x86_64.AppImage"
# Get the directory path of this script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_DIR="$(cd "${SCRIPT_DIR}" && cd .. && pwd)"

echo "Script directory: $SCRIPT_DIR"
echo "Base directory: $BASE_DIR"

"${BASE_DIR}/install-appimage.sh" "$APPIMAGE_URL"
