set clipboard+=unnamedplus


syn on
set mouse=a
set showcmd
set cursorline
set number

filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
" Plug 'junegunn/seoul256.vim'
Plug 'https://gitlab.com/yorickpeterse/happy_hacking.vim.git'
" For getting git status in the status line
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
" List ends here. Plugins become visible to Vim after this call.
"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

color happy_hacking
