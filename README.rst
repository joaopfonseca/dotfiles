Joao Fonseca's Dot Files
=======================

These are the configs I use to setup a system the way I like it. Feel free to
use it yourself, but make sure you know what you are modifying.

These configurations are set up to work on Fedora Linux, but it will probably
work on other distros too. Never tested on MacOS.

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
    bash setup.sh
    bash make_symlinks.sh

Installing the packages in ``software_list.txt`` beforehand is recommended.
For the case of Fedora Silverblue you can just run this just before running
the setup scripts:

.. code-block:: bash
    
    while IFS="" read -r sftw || [ -n "$sftw" ]
    do
        if [[ $sftw != \#* ]]&&[[ $sftw != "" ]]; then
        rpm-ostree install $sftw
        fi
    done < "$HOME/.dotfiles/software_list.txt"
    
