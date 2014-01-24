set nocompatible
if has('vim_starting')
  " Required
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
" Required
call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'bling/vim-airline'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'myusuf3/numbers.vim'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/gist-vim'
NeoBundle 'edsono/vim-matchit'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'ervandew/supertab'
NeoBundle 'tpope/vim-surround'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-haml'
NeoBundle 'pangloss/vim-javascript'
"NeoBundle 'groenwege/vim-less'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'rosstimson/scala-vim-support'
NeoBundle 'rking/ag.vim'
"NeoBundle 'mileszs/ack.vim'
NeoBundle 'gorkunov/smartgf.vim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'gre/play2vim'
NeoBundle 'kablamo/vim-git-log'
NeoBundle 'airblade/vim-gitgutter'

" Required
filetype plugin indent on

syntax enable
set encoding=utf-8
set showcmd

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

set t_Co=256
set laststatus=2
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif


" unicode symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'

nmap <Leader>n :NERDTreeToggle<CR>

" Whitespace
set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start
set list
set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Numbers.vim settings
let g:numbers_exclude = ['tagbar', 'nerdtree']
nnoremap <F3> :NumbersToggle<CR>

" Toggle tagbar
nmap <Leader>t :TagbarToggle<CR>

set bg=dark
colorscheme gruvbox
