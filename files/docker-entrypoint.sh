#!/bin/sh

echo "\n===== CLONING NEOVIM REPOSITORY ====="
git clone https://github.com/neovim/neovim.git ~/neovim
cd ~/neovim
git checkout stable

echo "\n===== BUILDING NEOVIM ====="
make CMAKE_BUILD_TYPE=${BUILD_TYPE:-Release}

echo "\n===== INSTALLING NEOVIM ====="
make CMAKE_INSTALL_PREFIX=~/nvim install
