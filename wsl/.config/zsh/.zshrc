
#                                      ██
#                                     ░██
#                       ██████  ██████░██      ██████  █████
#                      ░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#                         ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░
#                    ██  ██    ░░░░░██░██  ░██ ░██   ░██   ██
#                   ░██ ██████ ██████ ░██  ░██░███   ░░█████
#                   ░░ ░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░
#
#

source ~/.config/zsh/.aliases
source ~/.config/zsh/.zprofile
export EDITOR='nvim'
export MANPAGER='nvim +Man!'
export TERM='xterm-256color'
export HISTFILE=~/.config/zsh/.zsh_history

# Path to oh-my-zsh installation.
export ZSH="/home/shreekottes/.oh-my-zsh"

#oh my zsh themes
ZSH_THEME="robbyrussell"

#Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh
LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS
