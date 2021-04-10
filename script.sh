sudo apt-get update
sudo apt-get install git -y
sudo apt-get install neovim -y
sudo apt-get install python3-neovim -y
sudo apt-get install nodejs -y
sudo apt-get install python3-pip -y
sudo apt install nodejs npm -y
python3 -m pip install --user --upgrade pynvim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

cp init.vim ~/.config/nvim/init.vim
