scriptencoding utf-8
set encoding=utf-8
set nocompatible

" let $TMPDIR = '' "z TMPDIR na OSX wariuje trochę
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

if has('vim_starting')
  " Required
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
" Required
call neobundle#begin(expand('~/.vim/bundle/'))

" Required

" Let NeoBundle manage NeoBundle
" Required
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'bling/vim-airline'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'ryanoasis/vim-webdevicons'
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
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'gre/play2vim'
NeoBundle 'kablamo/vim-git-log'
NeoBundle 'airblade/vim-gitgutter'
"NeoBundle 'groenwege/vim-less'
"NeoBundle 'mileszs/ack.vim'
NeoBundle 'matze/vim-move'
"NeoBundle 'gcmt/wildfire.vim'
NeoBundle 'gabesoft/vim-ags'
NeoBundleLazy 'tpope/vim-markdown',           { 'autoload': { 'filetypes': ['markdown'] } }
NeoBundleLazy 'kchmck/vim-coffee-script',     { 'autoload': { 'filetypes': ['coffee'] } }
NeoBundleLazy 'tpope/vim-haml',               { 'autoload': { 'filetypes': ['haml'] } }
" NeoBundleLazy 'pangloss/vim-javascript',      { 'autoload': { 'filetypes': ['javascript'] } }
NeoBundleLazy 'othree/yajs.vim',              { 'autoload': { 'filetypes': ['javascript'] } }
NeoBundleLazy 'cakebaker/scss-syntax.vim',    { 'autoload': { 'filetypes': ['scss'] } }
NeoBundleLazy 'vim-ruby/vim-ruby',            { 'autoload': { 'filetypes': ['ruby'] } }
" NeoBundleLazy 'rosstimson/scala-vim-support', { 'autoload': { 'filetypes': ['scala'] } }
NeoBundleLazy 'derekwyatt/vim-scala',         { 'autoload': { 'filetypes': ['scala'] } }
NeoBundleLazy 'dag/vim2hs',                   { 'autoload': { 'filetypes': ['haskell'] } }
NeoBundleLazy 'derekwyatt/vim-sbt',           { 'autoload': { 'filetypes': ['sbt'] } }
NeoBundleLazy 'tpope/vim-ragtag',             { 'autoload': { 'filetypes': ['html', 'xml', 'eruby', 'eelixir'] } }
NeoBundleLazy 'elixir-lang/vim-elixir',       { 'autoload': { 'filetypes': ['elixir', 'eelixir'] } }

call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

filetype plugin indent on

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
set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮
" set listchars=tab:t>,trail:.

set noswapfile

syntax enable

set shell=bash

set title

set relativenumber
set number

" set clipboard=unnamed " http://stackoverflow.com/questions/677986/vim-copy-selection-to-os-x-clipboard

" swap directory
"set directory=~/.vimswp

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set t_Co=256

" set foldmethod=syntax
" set foldcolumn=2
" set foldlevel=1

" Airline
set laststatus=2


nmap <Leader>n :NERDTreeToggle<CR>

let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.hg$\|\.svn$\|vendor\|node_modules$\|target$\|project$',
  \ 'file': '\v\.(exe|so|dll|log|png|jpeg|jpg)$',
  \ }

let g:ctrlp_max_files=0

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

" let gist-vim copy to clipboard on mac
let g:gist_clip_command = 'pbcopy'

" NerdCommenter
let NERDSpaceDelims=1

" tabs
map <C-S-Right> :tabn<CR>
map <C-S-Left> :tabp<CR>
map <C-n> :tabnew<CR>

" find merge conflict markers
nmap <silent> <Leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" syntastic
" https://github.com/scrooloose/syntastic/issues/612#issuecomment-5206659
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-", "lacks \"action", "proprietary attribute", " is not recognized", "discarding unexpected </ng"]
let g:syntastic_ruby_mri_tail = "> ~/.vim/.syntastic/ruby-mri"

" fugitive
set diffopt=vertical

set tags+=.git/tags

autocmd BufNewFile,BufRead *.thor set filetype=ruby
autocmd BufNewFile,BufRead *.yml set filetype=yaml
autocmd BufNewFile,BufRead *.html set filetype=html
autocmd BufNewFile,BufRead *.js set filetype=javascript
autocmd BufNewFile,BufRead *.haml set filetype=haml
autocmd BufNewFile,BufRead *.xml set filetype=xml
autocmd BufNewFile,BufRead *.sbt set filetype=sbt
autocmd BufNewFile,BufRead *.py set filetype=python

au FileType eruby setl sw=4 sts=4 et



if has('gui_running')
  set bg=light
  colorscheme solarized

  set guioptions=egmt
  set guioptions-=r " removes right hand scroll bar
  set guioptions-=L " removes right hand scroll bar

  let g:airline_theme='solarized'
  set gfn=Sauce\ Code\ Powerline\ Plus\ Nerd\ File\ Types:h13

  let g:airline_powerline_fonts=1

else
  set bg=dark
  colorscheme gruvbox
  let g:airline_theme='powerlineish'

  let g:webdevicons_enable = 0

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  let g:airline_left_sep = ''
  let g:airline_right_sep = ''
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.branch = '⎇ '
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.whitespace = 'Ξ'
end
