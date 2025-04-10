#!/bin/bash
set -e

# Download the latest Quarto tarball release for Linux
wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.7.22/quarto-1.7.22-linux-amd64.tar.gz

# Extract the tarball into the current directory
tar -xzf quarto-1.7.22-linux-amd64.tar.gz

# Add the extracted binary directory to the PATH for this build session
export PATH="$PWD/quarto/bin:$PATH"

# Verify the installation by checking Quarto version
quarto --version
