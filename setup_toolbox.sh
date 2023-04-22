PACKAGES=(
    zsh
    make
    gvim
    xclip
    # texlive-scheme-full
)

SFTW=""
for sftw in ${PACKAGES[@]}; do
    if [[ $sftw != \#* ]]&&[[ $sftw != "" ]]; then
    SFTW="$SFTW $sftw"
    fi
done
sudo dnf install $SFTW
