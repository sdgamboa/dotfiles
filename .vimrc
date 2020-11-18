" Settings ####################################################################

" Indentation settings
set tabstop=4       " Tabs at the rigth position
set shiftwidth=4    " Indent is four spaces
set expandtab       " Use spaces instead of tab character
set autoindent      " Turn on auto indent
set smartindent     " Indents correcty (mostly)

" Set number
set number

" Enable syntax highlighting
syntax enable

" Highlight end of file for coding
set colorcolumn=80                                                              
hi ColorColumn guibg=#2c2d27 ctermbg=196
let &colorcolumn=join(range(81,999),",") " Delete this to not hi to end

set cursorline " higlight cursor line

" Don't show preview window on top when autocomplete with jedi for python
" code
set completeopt-=preview

" Sex or Vex options
let g:netrw_banner = 0 " Remove banner
let g:netrw_liststyle = 1 "List with details.
let g:netrw_browse_split = 0 " For tab, set 3

" color
set t_Co=256 " Enable 256 colors
colorscheme spacecamp_lite " Set color





" Mappings ####################################################################

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

" Open NERDTree
nmap <F4> :NERDTreeToggle<CR>

