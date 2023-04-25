DOTFILES=(
    tmux.conf
    tmux.conf.local
    condarc
    gitconfig
    bashrc
    zshrc
)

for dotfile in ${DOTFILES[@]}; do
    test -f ~/.$dotfile && rm ~/.$dotfile
    ln -s ~/.dotfiles/$dotfile ~/.$dotfile
done

# vimrc forces configs to stay separate from the vimrc file
test -f ~/.vim_runtime/my_configs.vim && rm ~/.vim_runtime/my_configs.vim
ln -s ~/.dotfiles/my_configs.vim ~/.vim_runtime/my_configs.vim
