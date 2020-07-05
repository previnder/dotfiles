#!/bin/bash

diff -q ./inputrc $HOME/.inputrc
diff -q ./tmux.conf $HOME/.tmux.conf
diff -q ./zathurarc $HOME/.config/zathura/zathurarc
diff -q ./zshrc $HOME/.zshrc
diff -q ./nvim/init.vim $HOME/.config/nvim/init.vim
diff -q ./mpv/mpv.conf $HOME/.config/mpv/mpv.conf
diff -q ./mpv/input.conf $HOME/.config/mpv/input.conf
