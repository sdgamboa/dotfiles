
set nocompatible
filetype plugin on
syntax enable

" Status bar settings
set laststatus=2
set ruler " show row and column positions in status bar

" Dont wrap up lines
set nowrap

set number

" Source the ~/.vimrc file when saving (:w)
autocmd! bufwritepost .vimrc source %

" Indentation settings
set tabstop=4       " Tabs at the rigth position
set smarttab
set shiftwidth=4    " Indent is four spaces
set shiftround      " Round indentation when shifting lines
set expandtab       " Use spaces instead of tab character
set autoindent      " Turn on auto indent
set smartindent     " Indents correcty (mostly)

" use GUI colors
if (has("termguicolors"))
 set termguicolors
endif

set t_Co=256 " Enable 256 colors
colorscheme challenger_deep " wombat256grf molokai darktheme challenger_deep molokai

set colorcolumn=80

" enable all Python syntax highlighting features
let python_highlight_all = 1

" highlight cursor line
set cursorline 

" Don't show preview window on top when autocomplete with jedi for python code
set completeopt-=preview

" netrw options
let g:netrw_banner = 0 " Remove banner
let g:netrw_liststyle = 1 "List with details.
let g:netrw_browse_split = 0 " For tab, set 3

" provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" show the matching part of the pair for [] {} and ()
set showmatch

" mouse click works
set mouse=a
set bs=2

" Open new split panes to right and bottom (works with Sex and Sex!)
set splitbelow
set splitright

" Easier navigation between panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Only use h, j, k, and l to move in normal mode 
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

set relativenumber

map <F2> :set relativenumber!<CR>

call plug#begin('~/.vim/plugged')
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
call plug#end()

