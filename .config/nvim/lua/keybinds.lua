local keymap = vim.api.nvim_set_keymap

-- Fast saving and quiting
keymap('n', '<leader><space>', ':w<CR>', {})
keymap('n', '<leader>q', ':q<CR>', {})

-- Switch CWD to current directory
keymap('n', '<leader>cd', ':cd %:p:h<CR>:pwd<CR>', {})

-- Remap 0 to go to first non-blank char
keymap('n', '0', '^', {})

-- Exit terminal mode faster
keymap('t', '<Esc>', '<c-\\><c-n>', {})

local opts = {noremap = true}

-- Getting out of surroundings fast
keymap('i', '<C-l>', '<Esc>/[)}\"\'\\]>]<CR>:nohl<CR>a', opts)

-- Moving around
keymap('n', '<c-l>', '<c-w>l', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-h>', '<c-w>h', opts)

-- Move between tabs
keymap('n', '<Tab>', 'gt', opts)
keymap('n', '<S-Tab>', 'gT', opts)

-- Gives meaning to <return> in normal mode
keymap('n', '<return>', 'o', opts)

-- Adds space in normal mode
keymap('n', 'ss', 'i<space><esc>l', opts)

opts = {noremap = true, silent = true}

-- Disable highlight faster
keymap('n', '<leader><CR>', ':noh<CR>', opts)

-- Opens a small terminal below the current buffer
keymap('n', '<leader>tt', ':split term://zsh<CR> :res 8<CR>i', opts)
