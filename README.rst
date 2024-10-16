Joao Fonseca's Dot Files
=======================

These are the configs I use to setup a system the way I like it. Feel free to
use it yourself, but make sure you know what you are modifying.

These configurations are set up to work on Fedora Silverblue, but it might
also work on other distros too (with some tweaking). Never tested on MacOS.

In the future, I might also add the installation of all the flatpaks I use.

Useful links
------------

https://github.com/iaacornus/workstation_setup/blob/main/silverblue_setup.md

Installation
=============

Installing the packages in ``base_packages.txt`` beforehand is recommended.
For the case of Fedora Silverblue you can just run the code snippet after the 4th
comment in the code block below. Alternatively, you can just follow the all
the steps below:

.. code-block:: bash

    # change to home directory
    cd ~
    
    # clone the repo
    git clone https://github.com/joaopfonseca/dotfiles.git
    
    # change the dotfiles' directory name
    mv dotfiles .dotfiles

    # Install base packages
    while IFS="" read -r sftw || [ -n "$sftw" ]
    do
        if [[ $sftw != \#* ]]&&[[ $sftw != "" ]]; then
        sudo rpm-ostree install $sftw -y
        fi
    done < "$HOME/.dotfiles/base_packages.txt"
    
    # Set zsh as the default shell
    sudo usermod --shell $(which zsh) $USER
    
    # install vim and tmux stuff and create symlinks
    bash ~/.dotfiles/make_symlinks.sh

    # You might need to run this script twice
    bash ~/.dotfiles/setup.sh
    
    # You can also create a toolbox and run the script below
    bash ~/.dotfiles/setup_toolbox.sh

To install the openh264 codec (required for some video playback in Firefox),
you can run the following command:

.. code-block:: bash
    rpm-ostree override remove noopenh264 --install mozilla-openh26

To set up automatic swap file management, you can use ``systemd-swap``:

.. code-block:: bash
    sudo rpm-ostree install systemd-swap
    sudo rpm-ostree apply-live --allow-replacement
    sudo systemctl enable --now systemd-swap
    ln -s ~/.dotfiles/swap.conf /etc/systemd/swap.conf.d/swap.conf
    
Documentation / Checklist
=========================

- Install terminal font (Meslo Nerd): https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#fonts
- Install MS Core Fonts: https://discussion.fedoraproject.org/t/ms-core-fonts-on-silverblue/1916/5
- Libadwaita for GTK3 applications: https://github.com/lassekongo83/adw-gtk3
- Jupyter Notebooks in Vim: https://github.com/luk400/vim-jukit
