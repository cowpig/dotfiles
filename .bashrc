# If not running interactively, don't do anything
[ -z "$PS1" ] && return

#PATH stuff
export PATH=$HOME/anaconda3/bin:$PATH
export PATH=$PATH:$HOME/bin
export PATH=$PATH:/opt/Qt/5.2.1/gcc_64/bin
export PATH=$PATH:/usr/local/cuda/bin
export PATH=$PATH:./node_modules/.bin

# for some reason curl is looking in the wrong place for cert
export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

# aggregate all history to the same .history file
shopt -s histappend
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTCONTROL=ignoredups:erasedups
export HISTCONTROL=ignoreboth
export PROMPT_COMMAND="history -a;history -c;history -r;$PROMPT_COMMAND"
export PYLEARN2_DATA_PATH=$HOME/pylearn2/data

# editor is sublime
export EDITOR="subl -w -n"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
# case "$TERM" in
#     xterm-color | xterm) color_prompt=yes;;
# esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
export force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    PS1='\[\033[0;33m\]\u\[\033[0m\]@\[\033[0;32m\]\h\[\033[0m\]:\[\033[0;34m\]\w\[\033[0m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac


# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
if [ -f ~/.rvm/scripts/rvm ]; then
    source ~/.rvm/scripts/rvm
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS

# source nvm
# source ~/.nvm/nvm.sh

# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
