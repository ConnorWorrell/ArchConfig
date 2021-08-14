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
