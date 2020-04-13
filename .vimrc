" Settings #################################################################

" Set tabstops (ts) and shiftwidth (indent) to 4 spaces
set tabstop=4 shiftwidth=4 expandtab 

" Mappings #################################################################

" Create a new html file with markdown and pandoc
map <F2> :w!<CR> 
    \ :let my_var = expand('%:p:r') . ".html" <CR>
    \ :execute "!pandoc -s --quiet --highlight-style breezedark -f markdown -t html -o " . my_var . " " . expand('%:p')<CR>
    \ :execute "!dillo -f " . my_var . " > /dev/null 2> /dev/null&"<CR><CR>

" Refresh an existing html file with markdown and pandoc
map <F3> :w!<CR>
    \ :let my_var = expand('%:p:r') . ".html" <CR>
    \ :execute "!pandoc -s --quiet --highlight-style breezedark -f markdown -t html -o " . my_var . " " . expand('%:p')<CR><CR>

