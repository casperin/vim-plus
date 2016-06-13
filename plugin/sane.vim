
set autoread        " Load the file if it has been changing outside vim

syntax on
filetype plugin indent on

set guioptions-=L   " Remove scrollbars in macvim

"set mouse=a         " Enable mouse scrolling
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set mouse=a        " Add scrolling and highilghting


set background=dark
"colorscheme desert  " Dark, but not too dark.
"colorscheme Tomorrow-Night-Eighties  " Dark, but not too dark.
" colorscheme frood
"colorscheme 256-grayvim
"colorscheme iceberg
" colorscheme mango

" used by vim-jsx :: https://github.com/mxw/vim-jsx
let g:jsx_ext_required = 0             " jsx syntax in .js files

" set backup dirs
silent !mkdir ~/.vim/swp_backups > /dev/null 2>&1
set backupdir=~/.vim/swp_backups//
set directory=~/.vim/swp_backups//

set ruler           " position of cursor
set number          " line number
"set nonumber
"set relativenumber  " Set relative numbers (can be toggle with <Leader>sr)
set showcmd         " commands
set hidden          " supress warning when switching away from an unsaved buffer
set t_Co=256        " We will assume we're in a terminal that has 256 colors to work with
set shiftwidth=2    " Tabs width
set tabstop=2       " Tabs width
set expandtab       " Insert spaces and not tabs
set autoindent      " auto indent
set smartindent     " smart indent
set smarttab        " tab and backspace are smart
set backspace=indent,eol,start  " Makes backspace work like in most other programs
set linebreak       " don't makes line breaks in the middle of a word
set incsearch       " incremental search
set ignorecase      " ignore cases in searches, unless...
set smartcase       " case-sensitive if search contains an uppercase character
let g:loaded_matchparen= 1  " Don't highlight matching brackets
set suffixesadd+=.js " so `gf` works with requireJS
" Help with tab completion in ex mode (opening files, remembering commands, etc)
set wildmenu
set wildmode=longest:full,full


set splitright      " new splits are opened to the right
set splitbelow      " ... or below

" set tw=100          " Wrap lines at 100 characters (using gq), raher than 80

if filereadable(glob(".vimrc.local"))
    source .vimrc.local
endif
