-- cpp
vim.cmd [[autocmd filetype cpp nnoremap <F12> :w <bar> :split<CR> :res 8<CR> :terminal g++-11 % -o %:r && ./%:r<CR>i]]

-- c
vim.cmd [[autocmd filetype c nnoremap <F12> :w <bar> :split<CR> :res 8<CR> :terminal make %:r && ./%:r<CR>i]]

-- python
vim.cmd [[autocmd filetype python nnoremap <F12> :w <bar> :split<CR> :res 8<CR> :terminal python3 %<CR>]]

-- tex
vim.cmd [[
    au BufRead,BufNewFile *.tex set filetype=tex
    au BufRead,BufNewFile *.tex let g:AutoPairs =  {'$':'$', '(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}
    au BufRead,BufNewFile *.tex inoremap <C-l> <Esc>/[)}"'\]>\$]<CR>:nohl<CR>a
    autocmd filetype tex nnoremap <F12> :w <bar> :split<CR> :res 8<CR> :terminal pdflatex %; rm %:r.log; rm %:r.aux; rm %:r.out; rm %:r.thm; open -a preview %:r.pdf<CR>
    autocmd filetype tex nnoremap <F10> :w <bar> exec '!python3 ~/automations/get_tex_comments.py < '.shellescape('%').' > ref_'.shellescape('%:r').'.txt'<CR><CR>:vsplit ref_%:r.txt<CR>:vertical res 45<CR>
]]

-- matlab
vim.cmd [[autocmd filetype matlab nnoremap <F12> :w <bar> :split<CR> :res 8<CR> :terminal octave %<CR>i]]
