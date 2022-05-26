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

alias youtube-dl='youtube-dl --external-downloader aria2c --external-downloader-args "-j 16 -x 16 -s 16 -k 1M"'
alias youtube-dl-fhd="youtube-dl -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]'"
