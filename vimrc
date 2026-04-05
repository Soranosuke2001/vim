vim9script

g:plug_home = expand('~/.vim/plugged')
plug#begin(g:plug_home)
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'airblade/vim-gitgutter'
plug#end()

g:lsp_diagnostics_enabled = 1
g:lsp_preview_float = 1

# Set colorscheme
colorscheme ptheme

# Enable true color
set termguicolors
set background=dark

# -- General Settings --
set nocompatible
filetype plugin indent on
syntax on
set encoding=utf-8

# Mouse mode
set mouse=r

# Enable sign columns
set signcolumn=yes

# Key timeout
set timeoutlen=1000
set ttimeoutlen=10

# No wrap
set nowrap

# Clipboard sync
set clipboard=unnamed

# Shows line numbers
set number
set relativenumber

# Show the status line
set laststatus=2

# Shows mode
set noshowmode
set shortmess+=c

# Cursorline
set nocursorcolumn
g:netrw_cursor = 0

# Display command line completion
set wildmenu
set wildmode=longest:full,full

set wildignorecase
set suffixes+=.info,.swp,.bak,.log

# Writing backups
set backup
set writebackup

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

# Save undo history to file
set undofile
set undodir=~/.vim/undo//

# 8 lines above and below cursor
set scrolloff=8


# -- Searching --
set hlsearch
set incsearch
set ignorecase
set smartcase

# Ignore specific files
set wildignore+=*.class,*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
set wildignore+=node_modules/**,target/**,build/**,bin/**,.venv/**,venv/**



# -- File Management --
# Search subdirectories recursively
set path+=**


# -- Indentation --
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent


# -- Folding -- 
set foldmethod=indent
set foldlevelstart=99
set foldnestmax=10
set nofoldenable


# -- Autocomplete --
# Enable omni-completion (lsp replacement)
set omnifunc=syntaxcomplete#Complete

# Pop-up menu settings
set completeopt=menu,menuone,noselect,popup
set pumheight=10
set completeopt+=popup


# -- Git diff --
# set diffopt=internal,filler,closeoff,indent-heuristic,algorithm:histogram

