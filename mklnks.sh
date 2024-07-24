#!/bin/bash

ln -fsr "zshrc" "$HOME/.zshrc"
ln -fsr "tmux.conf" "$HOME/.tmux.conf"
ln -fsr "inputrc" "$HOME/.inputrc"

NVIM_DIR="$HOME/.config/nvim"
mkdir -p $NVIM_DIR
ln -fsr "nvim/init.vim" "$NVIM_DIR/init.vim"

MPV_DIR="$HOME/.config/mpv"
mkdir -p $MPV_DIR
ln -fsr "mpv/*" "$NVIM_DIR/"

ZATHURA_DIR="$HOME/.config/mpv"
mkdir -p $ZATHURA_DIR
ln -fsr "zathurarc" "$ZATHURA_DIR/zathurarc"
