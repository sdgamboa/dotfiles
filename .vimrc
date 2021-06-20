" Settings ####################################################################

" Enter the new millenium
set nocompatible

" Source the ~/.vimrc file when saving (:w)
autocmd! bufwritepost .vimrc source %

" Enable plug ins
filetype plugin on

" Use pathogen to manage runtimepath
syntax on

" Indentation settings
set tabstop=4       " Tabs at the rigth position
set smarttab
set shiftwidth=4    " Indent is four spaces
set shiftround      " Round indentation when shifting lines
set expandtab       " Use spaces instead of tab character
set autoindent      " Turn on auto indent
set smartindent     " Indents correcty (mostly)

" Set number
set number

" Status bar settings
set laststatus=2
set ruler " show row and column positions in status bar

" Enable syntax highlighting
"syntax enable

" use GUI colors
if (has("termguicolors"))
 set termguicolors
endif

set t_Co=256 " Enable 256 colors
colorscheme wombat256grf " molokai darktheme challenger_deep  Set color

" Highlight end of file for coding for all files
" set colorcolumn=80                                                              
" hi ColorColumn guibg=#2c2d27 ctermbg=196

" Highlight end of file for python files only (*.py)
autocmd FileType python set colorcolumn=79
"autocmd FileType python let &colorcolumn=join(range(80,999),",")

" enable all Python syntax highlighting features
let python_highlight_all = 1

" highlight cursor line
set cursorline 

" jedi-vim ###################################
" Don't show preview window on top when autocomplete with jedi for python code
set completeopt-=preview
" ############################################

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

" Mappings ####################################################################

" Easier navigation between panes, windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" I can only use h, j, k, and l to move in normal mode (great for training
" your fingers
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Save current markdown file as html (pandoc) and visualize it with dillo
map <F2> :w!<CR> 
    \ :execute "!pandoc -s --quiet --highlight-style breezedark -f markdown 
    \ -t html -o " . expand('%:p:r') . ".html " . expand('%:p')<CR>
    \ :execute "!dillo -f " . expand('%:p:r') . 
    \ ".html > /dev/null 2> /dev/null&"<CR><CR>

" Save current markdwon file as html (using pandoc)
map <F3> :w!<CR>
    \ :execute "!pandoc -s --quiet --highlight-style breezedark 
    \ -f markdown -t html -o " . expand('%:p:r') . ".html 
    \ " . expand('%:p')<CR><CR>

