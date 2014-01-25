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

" Required
filetype plugin indent on

syntax enable
set encoding=utf-8
set showcmd
set cursorline
set wildmenu
set showmatch

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
NeoBundle 'matze/vim-move'

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

set mouse=a

set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set backspace=indent,eol,start
set list
set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮

set title

" swap directory
"set directory=~/.vimswp

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Airline
set t_Co=256
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

" Numbers.vim settings
let g:numbers_exclude = ['tagbar', 'nerdtree']
nnoremap <F3> :NumbersToggle<CR>

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
