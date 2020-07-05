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

# export GOPATH="$HOME/Code/go"
# PATH="$PATH:$GOPATH/bin"
