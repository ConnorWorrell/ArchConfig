#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# add scripts folder to path
export PATH=~/.scripts:~/.scripts/dwmblocks:$PATH
export STEAM_COMPAT_DATA_PATH=$HOME/proton

# Bash tab complete
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

HISTFILE="/tmp/.bash_history"
HISTCONTROL=ignoredups

# Copy with progress bar
alias cpp='rsync -t --progress'

# Terminal
alias alacritty='LIBGL_ALWAYS_SOFTWARE=1 alacritty'

# Run wine with jp locale
alias winejp='LANG=ja_JP.UTF-8 wine'

# Mount iso file
alias mountiso='mount -o loop'

# Start and disown dwmblocks
alias blocks='dwmblocks & disown $!'

# CD into file without cd command
shopt -s autocd

export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcixt'

alias news='newsboat && pkill -RTMIN+8 dwmblocks'

alias neofetch='uwufetch'

alias vi="vim"
alias draw="gromit-mpx"
alias notes="joplin"
alias knowledge="logseq"
alias cdf="source cdf"

bind TAB:menu-complete
bind '"\e[Z":menu-complete-backward'
bind "set show-all-if-ambiguous on"
bind "set menu-complete-display-prefix on"

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# StartX on login
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx
fi
