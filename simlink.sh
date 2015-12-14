rm ~/.gitconfig
rm ~/.bashrc
rm ~/.bash_aliases
rm ~/.tmux.conf
rm ~/.profile
rm ~/z.sh
ln -s ~/dotfiles/.gitconfig
ln -s ~/dotfiles/.bashrc
ln -s ~/dotfiles/.bash_aliases
ln -s ~/dotfiles/.tmux.conf
ln -s ~/dotfiles/.profile
ln -s ~/dotfiles/.gdbinit
ln -s ~/dotfiles/.theanorc
ln -s ~/dotfiles/z/z.sh
mkdir ~/.config/terminator
rm ~/.config/terminator/config
ln -s ~/dotfiles/config/terminator ~/.config/terminator/config

mkdir ~/.config/sublime-text-3/Packages/User/
rm ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
ln -s ~/dotfiles/config/sublime ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings


 Preferences.sublime-settings
