# Install vim configurations
read -p "Install vim configurations [y/N]: " -i Y input
if [[ $input == "Y" || $input == "y" ]]; then
    # Install ultimate vimrc
    git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh

    # Install vim plugin manager
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    # Install GitHub Copilot for Vim
    git clone https://github.com/github/copilot.vim.git \
        ~/.vim/pack/github/start/copilot.vim
else
    echo "vim configuration cancelled."
fi

# Install tmux plugin manager
read -p "Install tmux plugin manager [y/N]: " -i Y input
if [[ $input == "Y" || $input == "y" ]]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
    echo "tmux plugin manager cancelled."
fi

# Install miniconda
read -p "Install miniconda [y/N]: " -i Y input
if [[ $input == "Y" || $input == "y" ]]; then
    curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o $HOME/miniconda.sh
    sh $HOME/miniconda.sh && rm $HOME/miniconda.sh
else
    echo "miniconda installation cancelled."
fi

# Install zsh configurations
read -p "Install zsh configurations [y/N]: " -i Y input
    if [[ $input == "Y" || $input == "y" ]]; then
    # Install Oh-my-zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    # Install zsh extensions
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

    # Download and add symbols
    mkdir -p $HOME/.fonts/
    curl -fLo "$HOME/.fonts/Symbols-1000-em Nerd Font Complete.ttf" \
        https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/NerdFontsSymbolsOnly/complete/Symbols-1000-em%20Nerd%20Font%20Complete.ttf
    curl -fLo "$HOME/.fonts/Symbols-2048-em Nerd Font Complete.ttf" \
        https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/NerdFontsSymbolsOnly/complete/Symbols-2048-em%20Nerd%20Font%20Complete.ttf
    fc-cache -fv

else
    echo "zsh configuration cancelled."
fi
