

# ============================================= Added by Me ============================================= #

# user identifier
export PS1="\[\e[32m\][\[\e[m\]\[\e[32m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]\[\e[32m\]]\[\e[m\]:\[\e[m\]\W\\$ "

export CLICOLOR=1 # enables ls colors to be displayed

#export LSCOLORS=ExFxCxDxBxegedabagacad # default
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx # for black backgrounds
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd # typical Linux terminal ls colors


alias ll='ls -lahp'
alias l='ls -lh'

declare -x JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home"

export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"

# =========================================== Added by MacPorts =========================================== #

##
# Your previous /Users/jfonseca/.bash_profile file was backed up as /Users/jfonseca/.bash_profile.macports-saved_2019-04-28_at_17:18:17
##

# MacPorts Installer addition on 2019-04-28_at_17:18:17: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# =========================================== Added by Miniconda =========================================== #

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jfonseca/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jfonseca/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jfonseca/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jfonseca/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

