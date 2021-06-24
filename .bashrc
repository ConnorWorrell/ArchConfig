#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# add scripts folder to path
export PATH=~/.scripts:~/.scripts/dwmblocks:$PATH

# Bash tab complete
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

alias cpp='rsync -t --progress'
