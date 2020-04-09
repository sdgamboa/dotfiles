" Settings #################################################################

" Set tabstops (ts) and shiftwidth (indent) to 4 spaces
set tabstop=4 shiftwidth=4 expandtab 


" Mappings #################################################################

" Create a new html file with markdown and pandoc
map <F2> :w!<CR> 
    \ :let my_var = expand('%:p:r')<CR>
    \ :let my_ext = expand('%:e')<CR>
    \ :execute "w!" . my_var . "." . my_ext<CR>
    \ :execute "!pandoc -s  --quiet --highlight-style breezedark -f markdown -t html -o " . my_var . ".html " . my_var . "." . my_ext<CR>
    \ :execute "!dillo -f " . my_var . ".html > /dev/null 2> /dev/null&"<CR><CR>

" Refresh an existing html file with markdown and pandoc
map <F3> :w!<CR>
    \ :let my_var = expand('%:p:r')<CR>
    \ :let my_ext = expand('%:e')<CR>
    \:execute "w!" . my_var . "." . my_ext<CR>
    \:execute "!pandoc -s --quiet --highlight-style breezedark -f markdown -t html -o " . my_var . ".html " . my_var . "." . my_ext<CR><CR>

