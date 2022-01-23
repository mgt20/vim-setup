curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
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

curl -sL install-node.vercel.app/lts | sudo bash #install node, pre-req for coc.nvim

mkdir -p ~/.config/nvim
