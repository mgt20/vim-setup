" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'

" Initialize plugin system
call plug#end()

" Syntax highlight
syntax enable

" Tabs are spaces
set expandtab

" Number of spaces per tab
set tabstop=4

" Search as soon as characters are entered
set incsearch

" Highlight search results
set hlsearch

" Show line numbers
set number

" Set colorscheme
colorscheme dracula

