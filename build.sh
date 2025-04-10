#!/bin/bash
set -e

# Download and install the latest Quarto deb package (for Linux)
curl -LO https://quarto.org/download/latest/quarto-linux-amd64.deb
sudo dpkg -i quarto-linux-amd64.deb

# (Optional) Check Quarto version to verify installation
quarto --version

# Render the Quarto site; adjust the command if you have a custom configuration
quarto render

# If your rendered site files go into a directory other than the default,
# make sure you update the Cloudflare Pages output directory accordingly.
