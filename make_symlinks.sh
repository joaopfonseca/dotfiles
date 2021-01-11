# remove dotfiles
rm ~/.vimrc
rm ~/.bashrc

# create symlinks
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
