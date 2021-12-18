" Executes each type of program
autocmd filetype cpp nnoremap <F12> :w <bar> :split<CR> :res 8<CR> :terminal g++-11 % -o %:r && ./%:r<CR>pi<CR>
autocmd filetype c nnoremap <F12> :w <bar> :split<CR> :res 8<CR> :terminal make %:r && ./%:r<CR>i
autocmd filetype python nnoremap <F12> :w <bar> :split<CR> :res 8<CR> :terminal python3 %<CR>
autocmd filetype tex nnoremap <F12> :w <bar> exec '!pdflatex '.shellescape('%').'; rm '.shellescape('%:r').'.log; rm '.shellescape('%:r').'.aux; rm '.shellescape('%:r').'.out; open -a preview '.shellescape('%:r').'.pdf'<CR><CR>
autocmd filetype matlab nnoremap <F12> :w <bar> :split<CR> :res 8<CR> :terminal octave %<CR>i

" latex
let g:tex_flavor = 'latex'

" Defines python3 for nvim
let g:python3_host_prog = "/Library/Frameworks/Python.framework/Versions/3.9/bin/python3.9"
" Remembers folds
augroup remember_folds
  autocmd!
  au BufWinLeave ?* mkview 1
  au BufWinEnter ?* silent! loadview 1
augroup END

"Set line numbers to be relative
set nu rnu

" Copys to clipboard
set clipboard=unnamed

" Useful shortcuts
nnoremap ss i<space><esc>l
nnoremap <return> o

" Gets out from (), {}, "", '', [], <> and maps in visual mode
inoremap <C-l> <Esc>/[)}"'\]>]<CR>:nohl<CR>a

set nocompatible  

filetype off

" Install plugins
set rtp+=~/.config/nvim/bundles/Vundle.vim
call vundle#begin('~/.config/nvim/bundles')

source ~/.config/nvim/configs/plugins.vim

call vundle#end()            
filetype plugin indent on
