Joao Fonseca's Dot Files
=======================

These are the configs I use to setup a system the way I like it. Feel free to
use it yourself, but make sure you know what you are modifying.

These configurations are set up to work on Fedora Linux, but it will probably
work on other distros too. Never tested on MacOS.

Useful links
------------

https://github.com/iaacornus/workstation_setup/blob/main/silverblue_setup.md

Installation
=============

You can just follow the commands below.

.. code-block:: bash

    # change to home directory
    cd ~
    
    # clone the repo
    git clone https://github.com/joaopfonseca/dotfiles.git
    
    # change the dotfiles' directory name
    mv dotfiles .dotfiles
    
    # install vim and tmux stuff and create symlinks
    bash ~/.dotfiles/make_symlinks.sh

    # You might need to run this script twice
    bash ~/.dotfiles/setup.sh
    
    # If you're running Silverblue, you can also create a toolbox and run the script below
    bash ~/.dotfiles/setup_toolbox.sh

Installing the packages in ``base_packages.txt`` beforehand is recommended.
For the case of Fedora Silverblue you can just run this just before running
the setup scripts:

.. code-block:: bash
    
    while IFS="" read -r sftw || [ -n "$sftw" ]
    do
        if [[ $sftw != \#* ]]&&[[ $sftw != "" ]]; then
        sudo rpm-ostree install $sftw -y
        fi
    done < "$HOME/.dotfiles/base_packages.txt"
    
    # Set zsh as the default shell
    sudo usermod --shell $(which zsh) $USER
    
Documentation / Checklist
=========================

- Install terminal font (Meslo Nerd): https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#fonts
- Install MS Core Fonts: https://discussion.fedoraproject.org/t/ms-core-fonts-on-silverblue/1916/5
- Libadwaita for GTK3 applications: https://github.com/lassekongo83/adw-gtk3
- Jupyter Notebooks in Vim: https://github.com/luk400/vim-jukit
