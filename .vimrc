
set nocompatible

" ################### Vundle ################################################

filetype off 

set rtp+=~/.vim/bundle/Vundle.vim " Path to vundle plugins
call vundle#begin()
Plugin 'Vundlevim/vundle.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'sheerun/vim-polyglot'
Plugin 'davidhalter/jedi-vim'
Plugin 'EdenEast/nightfox.nvim'
" Plugin 'olimorris/onedarkpro.nvim'
"Plugin 'jalvesaq/Nvim-R'
call vundle#end()

filetype plugin on 

" ##################### Misc settings ###################################

" Status bar settings
set laststatus=2
set ruler " show row and column positions in status bar

" Don't wrap up lines
set nowrap

" Indentation settings
set tabstop=4       " Tabs at the rigth position
set smarttab
set shiftwidth=4    " Indent is four spaces
set shiftround      " Round indentation when shifting lines
set expandtab       " Use spaces instead of tab character
set autoindent      " Turn on auto indent
set smartindent     " Indents correcty (mostly)

set number
" set relativenumber

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

" Source the ~/.vimrc file when saving (:w)
autocmd! bufwritepost .vimrc source %

" ####################### Color settings ####################################

syntax on " enable

" use GUI colors
if (has("termguicolors"))
 set termguicolors
endif

highlight Cursor guibg=NONE guifg=NONE gui=reverse

set t_Co=256 " Enable 256 colors
set background=dark
colorscheme PaperColor " hackerman PaperColor 

set colorcolumn=80

" highlight cursor line  (only numbers)
" highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline 

" ####################### Python ############################################

" enable all Python syntax highlighting features
let python_highlight_all = 1

" Don't show preview window on top when autocomplete with jedi for python code
set completeopt-=preview

" ######################## netrw tree #######################################

" netrw options
let g:netrw_banner = 0 " Remove banner
let g:netrw_liststyle = 0 "List with details.
let g:netrw_browse_split = 0 " For tab, set 3

" ############################ Mapping #####################################

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

map <F2> :set relativenumber!<CR>

" Cursor settings
autocmd VimEnter * silent !echo -ne "\e[1 q"
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[3 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
autocmd VimLeave * silent !echo -ne "\e[5 q"

" augroup CursorSettings
"    autocmd! 
    " Alternative codes:
    "  1 -> blinking block
    "  2 -> solid block 
    "  3 -> blinking underscore
    "  4 -> solid underscore
    "  5 -> blinking vertical bar
    "  6 -> solid vertical bar
     
"    autocmd VimEnter * let &t_SI.="\e[5 q" "SI = INSERT mode
"    autocmd VimEnter * let &t_SR.="\e[3 q" "SR = REPLACE mode
"    autocmd VimEnter * let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"    autocmd VimLeave * let &t_EI.="\e[1 q" | normal i
" augroup END

