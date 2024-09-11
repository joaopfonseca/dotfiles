PACKAGES=(
    zsh
    make
    gvim
    xclip
    tmux
    nodejs
    flatpak-xdg-utils
    # texlive-scheme-full
)

SFTW=""
for sftw in ${PACKAGES[@]}; do
    if [[ $sftw != \#* ]]&&[[ $sftw != "" ]]; then
    SFTW="$SFTW $sftw"
    fi
done
sudo dnf install $SFTW

# Allow open files/directories outside the toolbox
# xdg-open is also alliased to open in .zshrc
sudo rm /usr/bin/xdg-open
ln -s /usr/bin/flatpak-xdg-open /usr/bin/xdg-open
