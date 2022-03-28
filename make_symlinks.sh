DOTFILES=(
    vimrc
    tmux.conf
    tmux.conf.local
    condarc
    gitconfig
    bashrc
)

for dotfile in ${DOTFILES[@]}; do
    test -f ~/.$dotfile && rm ~/.$dotfile
    ln -s ~/.dotfiles/$dotfile ~/.$dotfile
done
