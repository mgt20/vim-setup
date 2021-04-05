sudo apt-get update
sudo apt-get install git -y
sudo apt-get install neovim -y
sudo apt-get install nodejs -y


~/.sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# After installing vim-plug, add these plug-ins

dracula/vim
neoclide/coc.nvim
vim-airline/vim-airline
preservim/nerdtree
raimon49/requirements.txt.vim

After installing coc.nvim, install:
- :PlugUpgrade
- :PlugUpdate
- :CocInstall coc-pyright
