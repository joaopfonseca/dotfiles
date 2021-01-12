# remove dotfiles
rm ~/.vimrc
rm ~/.bashrc
rm ~/.zshrc

# create symlinks
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
