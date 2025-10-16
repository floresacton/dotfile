#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
# end default bash

#editor
export EDITOR="nvim"

# cargo bin
export PATH="$HOME/.cargo/bin:$PATH"

# go bin
export PATH="$HOME/.go/bin:$PATH"

# show fetch on tty login
if [[ -z $DISPLAY && $(tty) == /dev/tty1 ]]; then
    fastfetch
fi

# Only switch to fish if bash wasn't started with -c
# Fish conflicts with yazi
if [[ $- == *i* ]] && [[ -z "$BASH_EXECUTION_STRING" ]]; then
    exec fish
fi

