#!/bin/sh

echo "\n====================================="
echo "\n===== CLONING NEOVIM REPOSITORY ====="
echo "\n====================================="
git clone https://github.com/neovim/neovim.git ~/neovim
cd ~/neovim
git checkout stable

echo "\n==========================="
echo "\n===== BUILDING NEOVIM ====="
echo "\n==========================="
make CMAKE_BUILD_TYPE=${BUILD_TYPE:-Release}

echo "\n============================="
echo "\n===== INSTALLING NEOVIM ====="
echo "\n============================="
make CMAKE_INSTALL_PREFIX=~/nvim install
