set -x fish_greeting ""

# PATHs

set PATH $PATH ./node_modules/.bin
if test -e /usr/local/bin
	set PATH $PATH /usr/local/bin
end
if test -e $HOME/bin
	set PATH $PATH $HOME/bin
end
if test -e /usr/local/cuda/bin
	set PATH $PATH /usr/local/cuda/bin
end
if test -e $HOME/anaconda3/bin
	set PATH $HOME/anaconda3/bin $PATH
end

# editor is sublime
set EDITOR "subl -w -n"

# colors!
set fish_color_host blue
set fish_color_user yellow
set fish_color_cwd green
set fish_color_error D79 # pale pink

function fish_prompt
    set_color $fish_color_user; echo -n $USER
    set_color normal; echo -n '@'
    set_color $fish_color_host; echo -n (hostname)
    set_color normal; echo -n ':'
    set_color $fish_color_cwd; echo -n $PWD
    set_color normal; echo -n '$ '
end

function !! --description "Run the last command"
	if test (count $argv) -ge 1
		set cmd $history[1]" $argv"
	else
		set cmd $history[1]
	end
	eval $cmd
end

function sshx
	command "ssh -XA"
end

function tunl
	command ssh $argv -N -L 5000:127.0.0.1:8888;
end

function psgrep
	command ps axuf | grep -v grep | grep $argv -i --color=auto; 
end

function ll
	command ls -lashF
end

function l
	command ls -CFa
end
