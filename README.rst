Joao Fonseca's Dot Files
=======================

These are the configs I use to setup a system the way I like it. Feel free to use it
yourself, but make sure you know what you are modifying.

These configurations are set up to work on Fedora Silverblue, but it might also work on
other distros too (with some tweaking). Never tested on MacOS.

In the future, I might also add the installation of all the flatpaks I use.

Useful links
------------

https://github.com/iaacornus/workstation_setup/blob/main/silverblue_setup.md

Installation
=============

Installing the packages in ``base_packages.txt`` beforehand is recommended.  For the case
of Fedora Silverblue you can just run the code snippet after the 4th comment in the code
block below. Alternatively, you can just follow the all the steps below:

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
    
    # Set zsh as the default shell
    sudo usermod --shell $(which zsh) $USER
    
    # You can also create a container and run the script below
    bash ~/.dotfiles/setup_toolbox.sh

To install the openh264 codec (required for some video playback in Firefox), you can run
the following command:

.. code-block:: bash

    rpm-ostree override remove noopenh264 --install mozilla-openh264

Documentation / Checklist
=========================

- Install terminal font (Meslo Nerd): https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#fonts
- Install MS Core Fonts: https://discussion.fedoraproject.org/t/ms-core-fonts-on-silverblue/1916/5
- Libadwaita for GTK3 applications: https://github.com/lassekongo83/adw-gtk3
  - For flatpak applications you might also need the following: ``ln -s .local/share/themes ``~/.themes``
- Set temperature to Celsius: ``gsettings set org.gnome.GWeather4 temperature-unit centigrade``
