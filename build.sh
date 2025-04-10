#!/bin/bash
set -e

# Download and install the latest Quarto deb package (for Linux)
curl -LO https://github.com/quarto-dev/quarto-cli/releases/download/v1.7.22/quarto-1.7.22-linux-amd64.deb
sudo dpkg -i quarto-1.7.22-linux-amd64.deb

export PATH="$PWD/quarto/bin:$PATH"

quarto --version

quarto render
