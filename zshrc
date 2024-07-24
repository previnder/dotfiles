# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

export PATH="$PATH:$HOME/Scripts"

alias diff='diff --color'

alias yt-dlp='yt-dlp --embed-metadata --embed-subs'
alias yt-dlp-hd="yt-dlp -f 'bestvideo[height<=720]+bestaudio/best[height<=720]'"
alias yt-dlp-fhd="yt-dlp -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]'"

alias gs='git show'
alias gl='git log'

