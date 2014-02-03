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
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'bling/vim-airline'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/gist-vim'
NeoBundle 'edsono/vim-matchit'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'ervandew/supertab'
NeoBundle 'tpope/vim-surround'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'rking/ag.vim'
NeoBundle 'gorkunov/smartgf.vim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'gre/play2vim'
NeoBundle 'kablamo/vim-git-log'
NeoBundle 'airblade/vim-gitgutter'
"NeoBundle 'myusuf3/numbers.vim'
"NeoBundle 'groenwege/vim-less'
"NeoBundle 'mileszs/ack.vim'
NeoBundle 'matze/vim-move'
NeoBundleLazy 'tpope/vim-markdown',           { 'autoload': { 'filetypes': ['markdown'] } }
NeoBundleLazy 'kchmck/vim-coffee-script',     { 'autoload': { 'filetypes': ['coffee'] } }
NeoBundleLazy 'tpope/vim-haml',               { 'autoload': { 'filetypes': ['haml'] } }
NeoBundleLazy 'pangloss/vim-javascript',      { 'autoload': { 'filetypes': ['javascript'] } }
NeoBundleLazy 'cakebaker/scss-syntax.vim',    { 'autoload': { 'filetypes': ['scss'] } }
NeoBundleLazy 'vim-ruby/vim-ruby',            { 'autoload': { 'filetypes': ['ruby'] } }
NeoBundleLazy 'rosstimson/scala-vim-support', { 'autoload': { 'filetypes': ['scala'] } }

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" Required
filetype plugin indent on

syntax enable
set encoding=utf-8
set showcmd
set cursorline
set wildmenu
set showmatch

set mouse=a

set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set backspace=indent,eol,start
set list
"set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮
set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮

set shell=bash

set title

set relativenumber
set number

" swap directory
"set directory=~/.vimswp

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"set t_Co=256

" Airline
set laststatus=2
"let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'

nmap <Leader>n :NERDTreeToggle<CR>

let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.hg$\|\.svn$\|vendor\|node_modules$\|target$\|project$',
  \ 'file': '\v\.(exe|so|dll|log|png|jpeg|jpg)$',
  \ }

" Tagbar
nmap <Leader>t :TagbarToggle<CR>
let g:tagbar_type_scala = {
  \ 'ctagstype' : 'Scala',
  \ 'kinds'     : [
      \ 'p:packages:1',
      \ 'V:values',
      \ 'T:types',
      \ 't:traits',
      \ 'o:objects',
      \ 'a:aclasses',
      \ 'c:classes',
      \ 'r:cclasses',
      \ 'm:methods'
  \ ]
  \ }

" Vim Move
let g:move_key_modifier = 'C'
vmap <C-Up> <Plug>MoveBlockUp
vmap <C-Down> <Plug>MoveBlockDown
nmap <C-Up> <Plug>MoveLineUp
nmap <C-Down> <Plug>MoveLineDown

" Tabular
nmap <Leader>t= :Tabularize /^[^=]*\zs=<CR>
vmap <Leader>t= :Tabularize /^[^=]*\zs=<CR>
nmap <Leader>t: :Tabularize /:\zs<CR>
vmap <Leader>t: :Tabularize /:\zs<CR>

" smartgf
let g:smartgf_enable_gems_search = 0

" tabs
map <C-S-Right> :tabn<CR>
map <C-S-Left> :tabp<CR>
map <C-n> :tabnew<CR>

" find merge conflict markers
nmap <silent> <Leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

set tags+=.git/tags

autocmd BufNewFile,BufRead *.thor set filetype=ruby

set bg=dark
colorscheme gruvbox
