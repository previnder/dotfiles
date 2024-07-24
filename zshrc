export ZSH="/home/vinci//.oh-my-zsh"
ZSH_THEME="pygmalion"
plugins=(git)

source $ZSH/oh-my-zsh.sh

alias diff='diff --color'
alias isrunning='ps aux | grep -i'

export QT_QPA_PLATFORMTHEME="qt5ct"
PATH="$PATH:/home/common/scripts"
PATH="$PATH:$HOME/Code/python"
export EDITOR=nvim

alias yt-dlp="yt-dlp --embed-metadata --embed-subs"
alias yt-dlp-fhd="yt-dlp -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]'"
alias yt-dlp-hd="yt-dlp -f 'bestvideo[height<=720]+bestaudio/best[height<=720]'"

alias gs='git show'
alias gl='git log'

