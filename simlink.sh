rm ~/.gitconfig
rm ~/.bashrc
rm ~/.bash_aliases
rm ~/.tmux.conf
rm ~/.pdbrc
rm ~/.profile
rm ~/.gdbinit
rm ~/.theanorc

ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.pdbrc ~/.pdbrc
ln -s ~/dotfiles/.profile ~/.profile
ln -s ~/dotfiles/.gdbinit ~/.gdbinit
ln -s ~/dotfiles/.theanorc ~/.theanorc

rm -r ~/.config/terminator/config
ln -s ~/dotfiles/config/terminator ~/.config/terminator

rm -r ~/.config/sublime-text-3
ln -s ~/dotfiles/config/sublime-text-3 ~/.config/sublime-text-3

rm -r ~/.config/fish
ln -s ~/dotfiles/config/fish ~/.config/fish

rm -r ~/.mozilla
ln -s ~/dotfiles/config/.mozilla ~/.mozilla

