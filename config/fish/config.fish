set -x fish_greeting ""

~/dotfiles/xmodmap.sh

# PATHs
set PATH $PATH ./node_modules/.bin

# prepend
if test -e $HOME/anaconda3/bin
	set PATH $HOME/anaconda3/bin $PATH
end

# append
if test -e /usr/local/bin
	set PATH $PATH /usr/local/bin
end
if test -e $HOME/bin
	set PATH $PATH $HOME/bin
end
if test -e /usr/local/cuda/bin
	set PATH $PATH /usr/local/cuda/bin
end
if test -e $HOME/.cargo/bin
	set PATH $PATH $HOME/.cargo/bin
end
if test -e $HOME/.npm-global/bin
	set PATH $PATH $HOME/.npm-global/bin
end
if test -e $HOME/.yarn/bin
	set PATH $PATH $HOME/.yarn/bin
end

for file in ~/.config/fish/sourceme/*.fish
	source $file
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
    set_color $fish_color_cwd; echo -n (pwd | sed "s,^$HOME,~,")
    set_color normal; echo -n '$ '
end

# custom keybindings
function fish_user_key_bindings
	bind -k 'caps' accept-autosuggestion
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
	command ls -lashF $argv
end

function l
	command ls -CFa $argv
end

function mp
	./manage.py $argv
end

# TODO: add a forcekillall function that does kill -9

function supa
	./manage.py shell -c "\
	from grater.models import User; \
	User.objects.update_or_create(username='max', defaults={'is_staff':True, 'is_superuser':True}); \
	user = User.objects.get(username='max'); user.set_password('asdf'); user.save();\
	from banker.views import buy_chips;buy_chips(user, 8888888).save()"
end

function socks
	command "ssh -p44 -N -n -g -D 1080"
	# in browser settings, enable SOCKS proxy @ localhost:1080
end

function loop --description "loop <count> <command>"
	for i in (seq 1 $argv[1])
		eval $argv[2..-1]
	end
end

function rsyncp --description "rsync -ravzP [port_number] [source] [destination]"
	eval "rsync -ravzP -e \"ssh -p $argv[1]\" $argv[2] $argv[3]"
end

function wrk --description "cd into directory & activate venv"
	cd $argv[1]
	source ../venv/bin/activate.fish
end

function current_branch
	eval "git rev-parse --abbrev-ref HEAD"
end

function push --description 'git push -u origin [current_branch]'
	eval "git push -u origin " (eval current_branch)
end
