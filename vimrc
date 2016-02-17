inoremap jk <ESC>
let mapleader = "\<Space>"
syntax on
set hidden
set number
set encoding=utf-8
set expandtab
set ignorecase
set smartcase
set backspace=indent,eol,start
set shiftwidth=2
set tabstop=2
set expandtab
set list
set list listchars=tab:>-,trail:·,extends:>

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|node_modules|bower_components|tmp|target|node_modules|bower_components|dist|build)$',
  \ 'file': '\v\.(exe|so|dll|class)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
map <C-n> :NERDTreeToggle<CR>

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'thoughtbot/vim-rspec'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround.git'
Plugin 'guns/vim-sexp'
Plugin 'leafgarland/typescript-vim'
Plugin 'scrooloose/nerdtree'

call vundle#end()       
filetype plugin indent on
