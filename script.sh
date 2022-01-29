curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
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
