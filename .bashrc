if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

color_prompt=yes
force_color_prompt=yes

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

export PATH="$HOME/bin:$PATH"
export PATH="/usr/local/share/ghaas/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ecr/danielv/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ecr/danielv/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ecr/danielv/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ecr/danielv/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
conda activate geopython
