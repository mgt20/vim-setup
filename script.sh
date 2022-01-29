#/bin/bash
# Setup VIM and VIM plugins and preferences

set -euf -o pipefail

get_os() {
        if [ -f /etc/os-release ]; then
            # freedesktop.org and systemd
            . /etc/os-release
            OS=$NAME
            VER=$VERSION_ID
        elif type lsb_release >/dev/null 2>&1; then
            # linuxbase.org
            OS=$(lsb_release -si)
            VER=$(lsb_release -sr)
        elif [ -f /etc/lsb-release ]; then
            # For some versions of Debian/Ubuntu without lsb_release command
            . /etc/lsb-release
            OS=$DISTRIB_ID
            VER=$DISTRIB_RELEASE
        elif [ -f /etc/debian_version ]; then
            # Older Debian/Ubuntu/etc.
            OS=Debian
            VER=$(cat /etc/debian_version)
        elif [ -f /etc/SuSe-release ]; then
            # Older SuSE/etc.
            ...
        elif [ -f /etc/redhat-release ]; then
            # Older Red Hat, CentOS, etc.
            ...
        else
            # Fall back to uname, e.g. "Linux <version>", also works for BSD, etc.
            OS=$(uname -s)
            VER=$(uname -r)
        # https://unix.stackexchange.com/a/6348
        fi
        }

distro_ubuntu_setup() {
        echo "You will be prompted for your sudo credentials in order to execute the next commands"
        #https://github.com/UpdateCommand/update/blob/master/bin/update-apt
        if command -v apt-get >/dev/null 2>&1; then
                sudo apt-get --quiet --yes autoclean
                sudo apt-get --quiet --yes --purge autoremove
                sudo apt-get --quiet --yes update
                sudo apt-get --quiet --yes install update-manager
                sudo apt-get --quiet --yes install update-manager-core
                sudo apt-get --quiet --yes upgrade --fix-broken --fix-missing
                sudo apt-get --quiet --yes dist-upgrade --fix-broken --fix-missing
                sudo apt-get --quiet --yes full-upgrade --fix-broken --fix-missing
                sudo apt-get --quiet --yes autoclean
                sudo apt-get --quiet --yes --purge autoremove
        fi 
        curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
        # https://github.com/nodesource/distributions/blob/master/README.md
        curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
        echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
        sudo apt-get update
        sudo apt install \
               git \
               neovim \
               python3-neovim \
               nodejs \
               python3-pip \
               nodejs \
               yarn -y
        python3 -m pip install --user --upgrade pynvim

        sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
               https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

        mkdir -p ~/.config/nvim

        sudo apt-get install -y nodejs
}

get_os
if [ $NAME == "Ubuntu" ]; then
        echo "installing stuff for Ubuntu"
        distro_ubuntu_setup
fi

