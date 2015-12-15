rm ~/.gitconfig
rm ~/.bashrc
rm ~/.bash_aliases
rm ~/.tmux.conf
rm ~/.profile
rm ~/.gdbinit
rm ~/.theanorc
rm ~/z.sh
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.profile ~/.profile
ln -s ~/dotfiles/.gdbinit ~/.gdbinit
ln -s ~/dotfiles/.theanorc ~/.theanorc
ln -s ~/dotfiles/z/z.sh

mkdir ~/.config/terminator
rm ~/.config/terminator/config
ln -s ~/dotfiles/config/terminator ~/.config/terminator/config

mkdir ~/.config/sublime-text-3/Packages/User/
rm ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
ln -s ~/dotfiles/config/sublime ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
