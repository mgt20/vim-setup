sudo apt-get update
sudo apt install \
       git \
       neovim \
       python3-neovim \
       nodejs \
       python3-pip \
       nodejs -y
python3 -m pip install --user --upgrade pynvim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir -p ~/.config/nvim
