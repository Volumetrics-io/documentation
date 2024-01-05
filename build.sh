#!/bin/bash

# Stop on the first sign of trouble
set -e

# Define the Pandoc version you need
PANDOC_VERSION="3.1.11"  # Replace with your desired version

# Create a directory for Pandoc
PANDOC_DIR="$HOME/local/pandoc"
mkdir -p "$PANDOC_DIR"

# Create a directory for local binaries
BIN_DIR="$HOME/local/bin"
mkdir -p "$BIN_DIR"
export PATH="$BIN_DIR:$PATH"

# Download Pandoc
PANDOC_TARBALL="pandoc-${PANDOC_VERSION}-1-amd64.tar.gz"
PANDOC_URL="https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/${PANDOC_TARBALL}"

echo "Downloading Pandoc from $PANDOC_URL"
wget -O "${PANDOC_DIR}/${PANDOC_TARBALL}" "$PANDOC_URL"

# Verify the tarball is not empty or corrupted
if [ ! -s "${PANDOC_DIR}/${PANDOC_TARBALL}" ]; then
    echo "Download failed or file is empty"
    exit 1
fi

# Extract Pandoc
echo "Extracting Pandoc to $BIN_DIR"
tar -xzf "${PANDOC_DIR}/${PANDOC_TARBALL}" -C "$BIN_DIR" --strip-components 1

# Ensure the pandoc binary is executable
chmod +x "${BIN_DIR}/pandoc"

# Verify Pandoc installation
pandoc --version

# Run your pre-build script
echo "Running pre-build script"
chmod +x ./smoo.sh
./smoo.sh

# Add your static site build commands here
# e.g., hugo, jekyll build, etc.
