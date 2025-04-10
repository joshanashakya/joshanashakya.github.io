#!/bin/bash
set -e

# Download and install the latest Quarto deb package (for Linux)
curl -LO https://github.com/quarto-dev/quarto-cli/releases/download/v1.7.22/quarto-1.7.22-linux-amd64.deb
chmod +x quarto-1.7.22-linux-amd64.deb
dpkg -i quarto-1.7.22-linux-amd64.deb

quarto --version

quarto render
