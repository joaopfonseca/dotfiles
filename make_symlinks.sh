DOTFILES=(
    vimrc
    tmux.conf
    tmux.local.conf
    condarc
    gitconfig
    bashrc
    zshrc
)

for dotfile in ${DOTFILES[@]}; do
    test -f ~/.$dotfile && rm ~/.$dotfile
    ln -s ~/.dotfiles/$dotfile ~/.$dotfile
done
