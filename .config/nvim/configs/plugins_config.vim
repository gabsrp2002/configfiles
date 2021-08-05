""""""""""""""""""""""""""""""
" => UltiSnips 
""""""""""""""""""""""""""""""
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

" Auto opens NERDTree when no argument is given
function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Rainbow Parentheses
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Deoplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use deoplete.
let g:deoplete#enable_at_startup = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noshowmode
let g:lightline = {
    \'colorscheme':'darcula'
    \}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual-multi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n
let g:VM_quit_after_leaving_insert_mode = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ale linting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let b:ale_fixers = {
    \'python': ['autoimport', 'autoflake', 'autopep8', 'isort', 'yapf'],
    \'c': ['clang-format'],
    \'cpp': ['clang-format']
    \}

let g:ale_fix_on_save = 0

nnoremap <silent><leader>l :ALEToggle<CR>
nnoremap <silent><leader>f :ALEFix<CR>
