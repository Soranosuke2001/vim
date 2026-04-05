vim9script

# --- Plugins ---
g:plug_home = expand('~/.vim/plugged')
plug#begin(g:plug_home)
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
plug#end()

# --- General System Settings ---
set nocompatible
filetype on
filetype plugin indent on
syntax on
set encoding=utf-8
set mouse=a
set clipboard=unnamed
set timeoutlen=1000
set ttimeoutlen=10

# --- Appearance & UI ---
set termguicolors
set background=dark
set number
set relativenumber
set signcolumn=yes
set laststatus=2
set noshowmode
set shortmess+=c
set scrolloff=8
set nowrap
g:netrw_cursor = 0

# --- Search ---
set hlsearch
set incsearch
set ignorecase
set smartcase
set path+=**
set wildmenu
set wildmode=longest:full,full
set wildignorecase
set wildignore+=*.class,*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
set wildignore+=node_modules/**,target/**,build/**,bin/**,.venv/**,venv/**
set suffixes+=.info,.swp,.bak,.log

# --- Formatting & Indentation ---
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent

# --- Files, Backups & Undo ---
set backup
set writebackup
set undofile
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

# --- Folding --- 
set foldmethod=indent
set foldlevelstart=99
set foldnestmax=10
set nofoldenable

# --- Autocomplete & LSP ---
set omnifunc=syntaxcomplete#Complete
set completeopt=menu,menuone,noselect,popup
set pumheight=10
set completeopt+=popup

# --- Load External Configs ---
var current_dir = expand('<sfile>:p:h')
g:palette_dir = 'source ' .. current_dir .. '/colors/palette.vim'
g:general_dir = 'source ' .. current_dir .. '/colors/general.vim'
execute g:palette_dir
execute g:general_dir
