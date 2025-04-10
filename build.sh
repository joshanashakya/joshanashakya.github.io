#!/bin/bash
set -e

wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.7.22/quarto-1.7.22-linux-amd64.tar.gz

mkdir ~/opt
tar -C ~/opt -xvzf quarto-1.7.22-linux-amd64.tar.gz

mkdir ~/.local/bin
ln -s ~/opt/quarto-1.7.22/bin/quarto ~/.local/bin/quarto

# Verify the installation by checking Quarto version
quarto --version
