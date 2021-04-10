# vim-setup

Documenting my vim plugs and preferences

## Instructions

1. Download and run script.sh. Also, copy init.vim to the proper directory. Finally, reload ~/.vimrc and init.vim:

```
curl -o- https://raw.githubusercontent.com/mgt20/vim-setup/main/script.sh | bash
curl -o ~/.config/nvim/init.vim https://raw.githubusercontent.com/mgt20/vim-setup/main/init.vim 
source ~/.vimrc
source ~/.config/nvim/init.vim
```


# After installing vim-plug, add these plug-ins

- dracula/vim
- neoclide/coc.nvim
- vim-airline/vim-airline
- preservim/nerdtree
- raimon49/requirements.txt.vim

After installing coc.nvim, run:
- vim
- :PlugUpgrade
- :PlugUpdate
- :CocInstall coc-pyright

- nvim
- :PlugUpgrade
- :PlugUpdate
- :CocInstall coc-pyright


