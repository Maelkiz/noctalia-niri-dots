# ~/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

eval -- "$(/usr/bin/starship init bash --print-full-init)"
. "$HOME/.cargo/env"
export JAVA_HOME=/usr/lib/jvm/jdk-25
export PATH=$JAVA_HOME/bin:$PATH
