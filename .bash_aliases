alias verk="cd ~/verk/"
alias sub="sublime_text"
alias jc="javac -d classes *.java"
alias jr="java -cp classes"
alias tmux-kill="tmux ls | cut -d : -f 1 | xargs -I {} tmux kill-session -t {}"
alias make_ipython="PYTHONPATH=build/x86_64/bin ~/anaconda/bin/ipython"
alias sshx="ssh -XA"
function tunnel(){
	ssh $1 -L 5000:127.0.0.1:8888;
}
function psgrep() { 
	ps axuf | grep -v grep | grep "$@" -i --color=auto; 
}
function ntimes { 
	seq 1 $1| { shift; xargs -i -- "$@"; } 
}


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -lashF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias suren="ssh -XA max@ec2-54-164-145-224.compute-1.amazonaws.com"
alias gpubox="ssh -i ~/creds/maxkey.pem -XA ubuntu@ec2-54-69-78-236.us-west-2.compute.amazonaws.com"

alias vpn_start="sudo /etc/init.d/openvpn start"