inoremap jk <ESC>
let mapleader = "\<Space>"

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Remove highlights with leader + enter
nmap <Leader><CR> :nohlsearch<cr>

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

autocmd FileType ruby nmap <F5> :!ruby %<cr>

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
set mouse=a
set ttymouse=xterm2
set textwidth=80
set colorcolumn=+1
set nobackup
set nowritebackup
set noswapfile
set cursorline
set hlsearch
set incsearch

" share clipboard
set clipboard=unnamed

" statusline setup
set statusline=%f       "tail of the filename

" Git
set statusline+=%{fugitive#statusline()}

" Switch between the last two files
nnoremap <leader><leader> <c-^>

set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:autoswap_detect_tmux = 1

" allow line shifting up/down - mac only
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" pc alternative
nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|node_modules|bower_components|tmp|target|node_modules|bower_components|dist|build)$',
  \ 'file': '\v\.(exe|so|dll|class)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0
nmap <leader>. :CtrlPTag<CR>

" test
nmap <silent> <leader>rs :TestNearest<CR>
nmap <silent> <leader>rt :TestFile<CR>
nmap <silent> <leader>ra :TestSuite<CR>
nmap <silent> <leader>rl :TestLast<CR>
nmap <silent> <leader>rv :TestVisit<CR>
let test#strategy = "dispatch"

nmap <F3> :NERDTreeFind<CR>
map <F4> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

" open nerdtree automatically on startup if no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround.git'
Plugin 'guns/vim-sexp'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mattn/emmet-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'valloric/youcompleteme'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'kchmck/vim-coffee-script'
Plugin 'rking/ag.vim'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'tpope/vim-repeat'
Plugin 'pbrisbin/vim-mkdir'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rbenv'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-dispatch'
Plugin 'gioele/vim-autoswap'
Plugin 'tmhedberg/matchit'
Plugin 'heartsentwined/vim-emblem'
Plugin 'janko-m/vim-test'
Plugin 'wellle/targets.vim'
Plugin 'jreybert/vimagit'
Plugin 'tomasr/molokai'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()
filetype plugin indent on
syntax enable
set background=dark
let g:molokai_original=1
let g:rehash256=1
set t_Co=256
colorscheme molokai
