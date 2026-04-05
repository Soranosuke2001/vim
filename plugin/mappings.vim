vim9script 

# -- General Config --
# Leader Key
g:mapleader = " "

# Clear Search Highlight
nnoremap <esc> :noh<return><esc>


# -- Window Navigation -- 
# Changing windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


# -- File Navigation --
# Open netrw
nnoremap <leader>vn <cmd>Explore<cr>

# File search 
nnoremap <leader>ff :find *

# Buffer management
nnoremap <leader>bn <cmd>bnext<cr>
nnoremap <leader>bp <cmd>bprev<cr>
nnoremap <leader>bd <cmd>bdelete<cr>
nnoremap <leader>bl <cmd>ls<cr>:b


# -- Code -- 
# Move selected line up/down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

# Search word under cursor (current project)
nnoremap <leader>fW <cmd>grep! "\b<cword>\b"<cr><cmd>copen<cr>

