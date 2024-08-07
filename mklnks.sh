#!/bin/bash

ln -fsr "zshrc" "$HOME/.zshrc"
ln -fsr "tmux.conf" "$HOME/.tmux.conf"
ln -fsr "inputrc" "$HOME/.inputrc"

NVIM_DIR="$HOME/.config/nvim"
mkdir -p $NVIM_DIR
ln -fsr "nvim/init.vim" "$NVIM_DIR/init.vim"

MPV_DIR="$HOME/.config/mpv"
mkdir -p $MPV_DIR
ln -fsr "mpv/input.conf" "$MPV_DIR/input.conf"
ln -fsr "mpv/mpv.conf" "$MPV_DIR/mpv.conf"

ZATHURA_DIR="$HOME/.config/mpv"
mkdir -p $ZATHURA_DIR
ln -fsr "zathurarc" "$ZATHURA_DIR/zathurarc"

VSCODE_DIR="$HOME/.config/Code/User"
mkdir -p $VSCODE_DIR
ln -fsr "vscode/settings.json" "$VSCODE_DIR/settings.json"
ln -fsr "vscode/keybindings.json" "$VSCODE_DIR/keybindings.json"

