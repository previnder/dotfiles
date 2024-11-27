# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'
alias vim='nvim'
alias vi='/usr/bin/vim'

export PATH="$PATH:$HOME/Scripts"

alias diff='diff --color'

# Yt-dlp aliases
alias yt-dlp='yt-dlp --embed-metadata --embed-subs'
alias yt-dlp-hd="yt-dlp -f 'bestvideo[height<=720]+bestaudio/best[height<=720]'"
alias yt-dlp-fhd="yt-dlp -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]'"

# Git aliases
alias g='git'
alias gco='git checkout'
alias gs='git status'
alias gl='git log'
alias ga='git add'
alias gap='git add -p' # short for: git add patch
alias gaa='git add -A' # short for: git add all
alias gc='git commit'
alias gca='git commit -a' # short for: git commit all
alias gcaa='git commit -a --amend' # short for: git commit all amend
alias gcaan='git commit -a --amend --no-edit' # short for: git commit all amend no-edit
alias gd='git diff'
alias gds='git diff --staged'
alias gsh='git show'
alias gb='git branch'
alias gba='git branch --all'

