Joao Fonseca's Dot Files
=======================

These are my configs and setup a system the way I like it. Feel free to use as 
you will, but be sure you know what you are modifying.

Installation
=============

.. code-block:: bash

    # change to home directory
    cd ~
    
    # clone the repo
    git clone https://github.com/joaopfonseca/dotfiles.git
    
    # change the dotfiles' directory name
    mv dotfiles .dotfiles
    
    # install vim stuff and create symlinks
    bash setup.sh
    bash make_symlinks.sh
