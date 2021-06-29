" Roda cada tipo de arquivo
autocmd filetype cpp nnoremap <F12> :w <bar> :terminal g++-11 % -o %:r && ./%:r<CR>i
autocmd filetype python nnoremap <F12> :w <bar> :terminal python3 %<cr>i
autocmd filetype tex nnoremap <F12> :w <bar> exec '!pdflatex '.shellescape('%').'; rm '.shellescape('%:r').'.log; rm '.shellescape('%:r').'.aux; rm '.shellescape('%:r').'.out; open -a preview '.shellescape('%:r').'.pdf'<CR><CR>

" latex
let g:tex_flavor = 'latex'

" Remembers folds
augroup remember_folds
  autocmd!
  au BufWinLeave ?* mkview 1
  au BufWinEnter ?* silent! loadview 1
augroup END

"Ordena as linhas
set nu

" Copys to clipboard
set clipboard=unnamed

" Useful shortcuts
nnoremap ss i<space><esc>l
nnoremap <return> o

" Gets out from (), {}, "", '', [], <> and maps in visual mode
inoremap <C-l> <Esc>/[)}"'\]>]<CR>:nohl<CR>a
xnoremap ( <Esc>`>a)<Esc>`<i(<Esc>
xnoremap " <Esc>`>a"<Esc>`<i"<Esc>
xnoremap ' <Esc>`>a'<Esc>`<i'<Esc>
xnoremap [ <Esc>`>a]<Esc>`<i[<Esc>
xnoremap { <Esc>`>a}<Esc>`<i{<Esc>

set nocompatible  
filetype off

" Install plugins
set rtp+=~/.config/nvim/bundles/Vundle.vim
call vundle#begin('~/.config/nvim/bundles')

source ~/.config/nvim/configs/plugins.vim

call vundle#end()            
filetype plugin indent on
