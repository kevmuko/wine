#!/bin/bash
set -e
cd "$(dirname "$0")"

VERSION=8.1
FILE="wine-staging_${VERSION}-x86_64.appimage"

mkdir -p bin && cd bin
wget "https://github.com/mmtrt/WINE_AppImage/releases/download/continuous-staging/${FILE}"
chmod +x "${FILE}"
ln -s "${FILE}" "wine"

# Launch and create WINEPREFIX
./wine
