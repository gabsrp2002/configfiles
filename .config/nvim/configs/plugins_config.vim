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
    \'colorscheme':'onedark'
    \}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual-multi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n
let g:VM_quit_after_leaving_insert_mode = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ale
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_fixers = {
    \'python': ['autoimport', 'autoflake', 'autopep8', 'isort', 'yapf'],
    \'c': ['clang-format'],
    \'cpp': ['clang-format']
    \}

let g:ale_fix_on_save = 0

nnoremap <silent><leader>l :ALEToggle<CR>
nnoremap <silent><leader>f :ALEFix<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimspector debbugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimspector_install_gadgets = [ 'debugpy', 'CodeLLDB' ]
" let g:vimspector_enable_mappings = 'HUMAN'

nnoremap <Leader>de :call vimspector#Reset()<CR>
nnoremap <Leader>dd :call vimspector#Continue()<CR>

nnoremap <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dy <Plug>VimspectorAddFunctionBreakpoint
nnoremap <Leader>dT :call vimspector#ClearBreakpoints()<CR>

nmap <Leader>dr <Plug>VimspectorRestart
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Neovide configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neovide_cursor_vfx_mode = "sonicboom"
let g:neovide_transparency=0.8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimwiki configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:vimwiki_listsyms = '✗○◐●✓'
function! VimwikiLinkHandler(link)
    " Use Vim to open external files with the 'vfile:' scheme.  E.g.:
    "   1) [[vfile:~/Code/PythonProject/abc123.py]]
    "   2) [[vfile:./|Wiki Home]]
    let link = a:link
    if link =~# '^vfile:'
      let link = link[1:]
    else
      return 0
    endif
    let link_infos = vimwiki#base#resolve_link(link)
    if link_infos.filename == ''
      echomsg 'Vimwiki Error: Unable to resolve link!'
      return 0
    else
      exe 'tabnew ' . fnameescape(link_infos.filename)
      return 1
    endif
  endfunction
