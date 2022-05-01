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

--Colorscheme
require('onedark').setup  {
    -- Main options --
    style = 'dark', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = false,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    -- toggle theme style ---
    toggle_style_key = '<leader>ts', -- Default keybinding to toggle
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'bold',
        strings = 'italic',
        variables = 'none'
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups

    -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}
require('onedark').load()

-- Set numbers
vim.opt.nu = true
vim.opt.rnu = true

-- Set encoding
vim.opt.encoding = 'UTF-8'

-- In case I chose to use neovide
vim.g.neovide_cursor_vfx_mode = "sonicboom"
vim.g.neovide_transparency=0.8
