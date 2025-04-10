#!/bin/bash
set -e

# Download and install the latest Quarto deb package (for Linux)
curl -LO https://github.com/quarto-dev/quarto-cli/releases/download/v1.7.22/quarto-1.7.22-linux-amd64.deb
dpkg -i quarto-1.7.22-linux-amd64.deb

# (Optional) Check Quarto version to verify installation
quarto --version

# Render the Quarto site; adjust the command if you have a custom configuration
quarto render

# If your rendered site files go into a directory other than the default,
# make sure you update the Cloudflare Pages output directory accordingly.
