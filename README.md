# vim-setup

Documenting my vim plugs and preferences

## Instructions

1. Download the script and run it:

```
curl -o- ~/.config/nvim/init.vim https://raw.githubusercontent.com/mgt20/vim-setup/main/init.vim && -o- https://raw.githubusercontent.com/mgt20/vim-setup/main/script.sh | bash
```

2. Copy .vimrc file to ~/.vimrc:

```
curl -o- https://raw.githubusercontent.com/mgt20/docker-crostini-setup/main/.vimrc | cp .vimrc ~/.vimrc
```

3. Either reboot, or run 'source ~/.vimrc'

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


