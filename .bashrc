#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# aliases
if [ -f ~/.aliases ]; then
	. ~/.aliases
fi

# wal colorscheme
(cat ~/.cache/wal/sequences &)

#Path
export XDG_USER_CONFIG_DIR=~/.config
export PATH=$PATH:~/scripts/bin
RANGER_LOAD_DEFAULT_RC=FALSE
