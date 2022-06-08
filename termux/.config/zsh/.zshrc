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


#bindkey -v
source ~/.config/zsh/.aliases
source ~/.config/zsh/.zprofile
export EDITOR='nvim'
export MANPAGER='nvim +Man!'
export TERM='xterm-256color'
export HISTFILE=~/.config/zsh/.zsh_history

#oh my zsh installation
export ZSH="/data/data/com.termux/files/home/.oh-my-zsh"
plugins=()
source $ZSH/oh-my-zsh.sh

#Prompt
declare -a PROMPTS
PROMPTS=(
     ""
     ""
     ""
     "﮼"
     ""
)
#PROMPT='%F{cyan}%1~%f %F{blue}%f '
RANDOM=$$$(date +%s)
ignition=${PROMPTS[$RANDOM % ${#RANDOM[*]}+1]}
PROMPT='%F{red}%1~%f %F{cyan}$ignition%f '


#Case Insensitive Tab Completion: 
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

#Git Right Side Prompt:
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%r%f'
zstyle ':vcs_info:*' enable git

