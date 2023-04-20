alias ..='cd ..'
alias ...='cd ../..'
alias 4..='cd ../../..'
alias v='nvim'
alias load='clear && zsh'
alias pkgi='pkg install'
alias pkgu='pkg uninstall'
alias py='python'
alias open='termux-open'
alias ourl='termux-open-url'
alias commit='git add -A ; git commit -m'
alias suck='exit'
alias gc='git clone'
alias push='git push origin master'
alias pull='git pull origin master'
alias uu='pkg update && pkg upgrade'
alias updt='pkg update'
alias upgrd='pkg upgrde'
alias cds='cd ~/storage/shared/'
alias xclip='termux-clipboard-set'
alias pst='termux-clipboard-get'
alias ex='atool --explain --extract'
alias reload='termux-reload-settings'
alias send='termux-open --send'
alias pkgc= 'pkg clean && pkg autoclean'


#proot-distro manage
alias pdl="proot-distro login"
alias pdls="proot-distro list"
alias pdi="proot-distro install"
alias pdr="proot-distro remove"

alias larch="proot-distro login archlinux"

#gcc
alias cmpl="gcc -v -lm"
alias ncmpl="gcc -lm"

prgms () {
pkg list-installed | awk -F '/' '{print $1}' | sed '1d'
}

#fzf
alias fprvu="fzf --preview 'bat {} --color=always' --preview-window up:70%"

#yt-dlp

alias yt-mp4='yt-dlp -f  bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4 --no-mtime'
alias yt-mkv="yt-dlp -f bestvideo+bestaudio --no-mtime --merge-output-format mkv"
#alias ytmkv-sv="yt-dlp -f bestvideo+bestaudio --no-mtime --merge-output-format mp4 -P $HOME/storage/shared/oppofiles/Media/Short\ Videos"
alias ytm4s="yt-dlp -f bestvideo[ext=mp4]+bestaudio[ext=m4a] --no-mtime -S vcodec:h264 -S acodec:aac --merge-output-format mp4 -P $HOME/oppofiles/Media/Short\ Videos/"
alias ytmks="yt-dlp -f bestvideo+bestaudio --no-mtime -S vcodec:h264 -S acodec:aac --merge-output-format mkv -P $HOME/oppofiles/Media/Short\ Videos/"

