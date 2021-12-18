""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1

au FileType python set foldmethod=indent


""""""""""""""""""""""""""""""
" => Markdown
""""""""""""""""""""""""""""""
let vim_markdown_folding_disabled = 1

""""""""""""""""""""""""""""""
" => Tex
""""""""""""""""""""""""""""""
au FileType tex let g:AutoPairs =  {'$':'$', '(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}
au FileType tex inoremap <C-l> <Esc>/[)}"'\]>\$]<CR>:nohl<CR>a
""""""""""""""""""""""""""""""
" => C/C++
""""""""""""""""""""""""""""""
au FileType c set foldmethod=syntax
au FileType cpp set foldmethod=syntax
