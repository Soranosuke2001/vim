vim9script

# --- Plugins ---
g:plug_home = expand('~/.vim/plugged')
plug#begin(g:plug_home)
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
plug#end()
