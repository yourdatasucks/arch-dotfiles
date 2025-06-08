#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

. /usr/share/LS_COLORS/dircolors.sh

# Colors and stuff
RESET="\[\e[0m\]"
BOLD="\[\e[1m\]"
BLUE="\[\e[34m\]"
CYAN="\[\e[36m\]"
RED="\[\e[31m\]"
GREEN="\[\e[32m\]"
YELLOW="\[\e[33m\]"

#eval "$(dircolors -b)"
alias ls='ls -alh --color=auto'
alias grep='grep --color=auto'
PS1="${BOLD}${CYAN}[\u@\h${RESET}:${RED} \W${RESET}${CYAN}]${RESET}\$ "

alias vi='nvim'
alias suvi='sudo nvim'
alias brc='source ~/.bashrc && clear'
export EDITOR=nvim
complete -cf sudo

export PAT=$(<.ghcr_token)
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
