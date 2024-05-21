#!/bin/bash

## USED BY RENDER.COM AND ACTIONS IN THE MRJS REPO

# Stop on the first sign of trouble
set -e

# Set up directories
PANDOC_DIR="$HOME/local/pandoc"
mkdir -p "$PANDOC_DIR"
BIN_DIR="$HOME/local/bin"
mkdir -p "$BIN_DIR"
export PATH="$BIN_DIR:$PATH"

# Get the latest Pandoc version
PANDOC_REPO="jgm/pandoc"
PANDOC_API_URL="https://api.github.com/repos/${PANDOC_REPO}/releases/latest"

echo "Fetching latest Pandoc release from GitHub"
LATEST_RELEASE=$(curl -s $PANDOC_API_URL | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
PANDOC_VERSION=${LATEST_RELEASE}

# Exit if we failed to get the latest version
if [ -z "$PANDOC_VERSION" ]; then
    echo "Failed to fetch the latest Pandoc version"
    exit 1
fi

# Download Pandoc tarball
PANDOC_TARBALL="pandoc-${PANDOC_VERSION#v}-linux-amd64.tar.gz"
PANDOC_URL="https://github.com/${PANDOC_REPO}/releases/download/${PANDOC_VERSION}/${PANDOC_TARBALL}"

echo "Downloading Pandoc from $PANDOC_URL"
wget -O "${PANDOC_DIR}/${PANDOC_TARBALL}" "$PANDOC_URL"

# Verify the tarball is not empty or corrupted
if [ ! -s "${PANDOC_DIR}/${PANDOC_TARBALL}" ]; then
    echo "Download failed or file is empty"
    exit 1
fi

# List contents of the tarball
echo "Inspecting contents of the tarball"
tar -tzf "${PANDOC_DIR}/${PANDOC_TARBALL}"

# Extract Pandoc
echo "Extracting Pandoc to $BIN_DIR"
tar -xzf "${PANDOC_DIR}/${PANDOC_TARBALL}" -C "$BIN_DIR" --strip-components 2

# Make sure Pandoc is executable
chmod +x "${BIN_DIR}/pandoc"

# Verify Pandoc installation
pandoc --version

# Run your pre-build script
echo "Running pre-build script"
chmod +x ./smoo.sh
./smoo.sh
