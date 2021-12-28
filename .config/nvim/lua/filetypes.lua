-- cpp
vim.cmd [[autocmd filetype cpp nnoremap <F12> :w <bar> :split<CR> :res 8<CR> :terminal g++-11 % -o %:r && ./%:r<CR>i]]

-- c
vim.cmd [[autocmd filetype c nnoremap <F12> :w <bar> :split<CR> :res 8<CR> :terminal make %:r && ./%:r<CR>i]]

-- python
vim.cmd [[autocmd filetype python nnoremap <F12> :w <bar> :split<CR> :res 8<CR> :terminal python3 %<CR>]]

-- tex
vim.cmd [[
    autocmd filetype tex nnoremap <F12> :w <bar> exec '!pdflatex '.shellescape('%').'; rm '.shellescape('%:r').'.log; rm '.shellescape('%:r').'.aux; rm '.shellescape('%:r').'.out; open -a preview '.shellescape('%:r').'.pdf'<CR><CR>
    au FileType tex let g:AutoPairs =  {'$':'$', '(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}
    au FileType tex inoremap <C-l> <Esc>/[)}"'\]>\$]<CR>:nohl<CR>a
]]

-- matlab
vim.cmd [[autocmd filetype matlab nnoremap <F12> :w <bar> :split<CR> :res 8<CR> :terminal octave %<CR>i]]
