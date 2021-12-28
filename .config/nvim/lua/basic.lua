-- Tab config
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.tabstop=4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

-- Sets path for pynvim
vim.g.python3_host_prog = "/Library/Frameworks/Python.framework/Versions/3.9/bin/python3.9"

-- Copys to clipboard
vim.opt.clipboard = 'unnamedplus'

-- Sets leader
vim.g.mapleader = ' '

-- wild menu
vim.opt.wildmenu = true
vim.opt.wildignore = {'*.o', '*.pyc', '*/.git/*', '*/.DS_Store'}

-- Better spliting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Set numbers
vim.opt.nu = true
vim.opt.rnu = true

-- Set encoding
vim.opt.encoding = 'UTF-8'

-- Colorscheme
vim.cmd [[
    let g:onedark_style = 'deep'
    colorscheme onedark
]]

-- In case I chose to use neovide
vim.g.neovide_cursor_vfx_mode = "sonicboom"
vim.g.neovide_transparency=0.8
