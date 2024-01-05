#!/bin/bash

# Stop on the first sign of trouble
set -e

# Define the Pandoc version you need
PANDOC_VERSION="3.1.3"  # Replace with your desired version

# Create a directory for local tools
mkdir -p $HOME/local/bin
export PATH=$HOME/local/bin:$PATH

# Download and unpack Pandoc to the local tools directory
wget -qO- https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-1-amd64.tar.gz | tar xvz -C $HOME/local/bin --strip-components 1

# Ensure the pandoc binary is executable
chmod +x $HOME/local/bin/pandoc

# Verify Pandoc installation
pandoc --version

# Run your pre-build script
chmod +x ./smoo.sh
./smoo.sh
