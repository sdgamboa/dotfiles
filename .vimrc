" Settings #################################################################

" Set tabstops (ts) and shiftwidth (indent) to 4 spaces
set tabstop=4 shiftwidth=4 expandtab

" Mappings #################################################################

" Save current markdown file as html (using pandoc) and visualize it with dillo
map <F2> :w!<CR> 
    \ :execute "!pandoc -s --quiet --highlight-style breezedark -f markdown -t html -o " . expand('%:p:r') . ".html " . expand('%:p')<CR>
    \ :execute "!dillo -f " . expand('%:p:r') . ".html > /dev/null 2> /dev/null&"<CR><CR>

" Save current markdwon file as html (using pandoc)
map <F3> :w!<CR>
    \ :execute "!pandoc -s --quiet --highlight-style breezedark -f markdown -t html -o " . expand('%:p:r') . ".html " . expand('%:p')<CR><CR>

