inoremap jk <ESC>
let mapleader = "\<Space>"
syntax on
set encoding=utf-8
set expandtab
set ignorecase
set smartcase
set backspace=indent,eol,start
set shiftwidth=2
set tabstop=2
set expandtab

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

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

call vundle#end()       
filetype plugin indent on
