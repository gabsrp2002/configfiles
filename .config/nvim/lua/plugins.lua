return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'jiangmiao/auto-pairs'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'

    -- Setup Telescope
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim', 'kyazdani42/nvim-web-devicons', 'nvim-lua/popup.nvim', 'BurntSushi/ripgrep'},
        config = function()
            local function nkeymap(key, map)
                vim.api.nvim_set_keymap('n', key, map, {noremap = true, silent = true})
            end
            nkeymap('<leader>tf', ':Telescope find_files<CR>')
            nkeymap('<leader>tb', ':Telescope find_buffers<CR>')
        end
    }

    -- ALE Fixing
    use {'dense-analysis/ale',
        config = function()
            vim.g.ale_disable_lsp = 1
            vim.cmd [[
                let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'], 'python': ['autoimport', 'autoflake', 'autopep8', 'isort', 'yapf'], 'c': ['clang-format'], 'cpp': ['clang-format']}
            ]]
            vim.g.ale_fix_on_save = 0
            vim.api.nvim_set_keymap('n', '<leader>f', ':ALEFix<CR>', {silent = true, noremap = true})
        end
    }

    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- Snippets
    use {'SirVer/ultisnips',
        config = function()
            vim.g.UltiSnipsEditSplit="vertical"
            vim.g.UltiSnipsJumpForwardTrigger="<c-k>"
            vim.g.UltiSnipsJumpBackwardTrigger="<c-j>"
        end
    }

    -- LSP config and completion
    use {'neovim/nvim-lspconfig',
        requires = {'williamboman/nvim-lsp-installer'},
        config = function()
            local function nkeymap(key, map)
                vim.api.nvim_set_keymap('n', key, map, {noremap = true, silent = true})
            end

            nkeymap('gd', ':lua vim.lsp.buf.definition()<cr>')
            nkeymap('gD', ':lua vim.lsp.buf.declaration()<cr>')
            nkeymap('gi', ':lua vim.lsp.buf.implementation()<cr>')
            nkeymap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
            nkeymap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
            nkeymap('gr', ':lua vim.lsp.buf.references()<cr>')
            nkeymap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
            nkeymap('K', ':lua vim.lsp.buf.hover()<cr>')
            nkeymap('<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
            nkeymap('<leader>rn', ':lua vim.lsp.buf.rename()<cr>')

            local lsp_installer = require("nvim-lsp-installer")
            lsp_installer.on_server_ready(function(server)
                local opts = {}
                if server.name == "sumneko_lua" then
                    opts = {
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { 'vim', 'use' } },
                            }
                        }
                    }
                end
                server:setup(opts)
            end)
        end
    }
    use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
    use {'hrsh7th/nvim-cmp',
        requires = {'neovim/nvim-lspconfig', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'hrsh7th/cmp-cmdline', 'SirVer/ultisnips', 'quangnguyen30192/cmp-nvim-ultisnips'},
        config = function()
            local cmp = require'cmp'

            cmp.setup({
                snippet = {
                    expand = function(args)
                        vim.fn["UltiSnips#Anon"](args.body)
                    end,
                },
                mapping = {
                    ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                },
                sources = cmp.config.sources({
                    { name = 'cmp_tabnine' },
                    { name = 'nvim_lsp' },
                    { name = 'ultisnips' }
                }, {
                        { name = 'buffer' },
                    })
            })

            -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
            cmp.setup.cmdline('/', {
                sources = {
                    { name = 'buffer' }
                }
            })

            -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
            cmp.setup.cmdline(':', {
                sources = cmp.config.sources({
                    { name = 'path' }
                }, {
                        { name = 'cmdline' }
                    })
            })

            -- Setup lspconfig.
            local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
            local servers = {'sumneko_lua', 'pyright', 'clangd', 'texlab'}
            for _, server in ipairs(servers) do
                require('lspconfig')[server].setup {
                    capabilities = capabilities
                }
            end

            local tabnine = require('cmp_tabnine.config')
            tabnine:setup({
                max_lines = 500;
                max_num_results = 20;
                sort = true;
                run_on_every_keystroke = true;
                snippet_placeholder = '..';
                ignored_file_types = { -- default is not to ignore
                    -- uncomment to ignore in lua:
                    -- lua = true
                };
            })
        end
    }

    --vimwiki
    use {'vimwiki/vimwiki',
        config = function()
            vim.cmd [[
            function! VimwikiLinkHandler(link)
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
            ]]
        end
    }

    -- NerdTree
    use {'scrooloose/nerdtree',
        requires = {'ryanoasis/vim-devicons'},
        config = function()
            vim.api.nvim_set_keymap('n', '<leader>nn', ':NERDTreeToggle<CR>', {silent = true})
            vim.g.NERDTreeWinPos = "left"
            vim.g.NERDTreeShowHidden=0
            vim.g.NERDTreeIgnore = {'\\.pyc$', '__pycache__'}
            vim.g.NERDTreeWinSize=35
        end
    }

    -- Colorscheme
    use 'navarasu/onedark.nvim'

    -- Moves text around
    use {'fedepujol/move.nvim',
        config = function()
            vim.api.nvim_set_keymap('n', '<leader>j', ":MoveLine(1)<CR>", { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<leader>k', ":MoveLine(-1)<CR>", { noremap = true, silent = true })
            vim.api.nvim_set_keymap('v', 'J', ":MoveBlock(1)<CR>", { noremap = true, silent = true })
            vim.api.nvim_set_keymap('v', 'K', ":MoveBlock(-1)<CR>", { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<leader>l', ":MoveHChar(1)<CR>", { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<leader>h', ":MoveHChar(-1)<CR>", { noremap = true, silent = true })
            vim.api.nvim_set_keymap('v', 'L', ":MoveHBlock(1)<CR>", { noremap = true, silent = true })
            vim.api.nvim_set_keymap('v', 'H', ":MoveHBlock(-1)<CR>", { noremap = true, silent = true })
        end
    }

    -- Tree-sitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
        config = function()
            local configs = require'nvim-treesitter.configs'
            configs.setup {
                ensure_installed = "maintained", -- Only use parsers that are maintained
                highlight = { -- enable highlighting
                    enable = true,
                },
                indent = {
                    enable = true,
                },
                rainbow = {
                    enable = true,
                    extended_mode = true,
                    max_file_lines = nil,
                }
            }
            vim.opt.foldmethod = "expr"
            vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
        end
    }

    use { 'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.opts)
            local startify = require("alpha.themes.startify")
            startify.section.mru_cwd.val = { { type = "padding", val = 0 } }
            startify.section.bottom_buttons.val = {
                startify.button("v", "neovim config", ":e ~/.config/nvim/init.lua<cr>"),
                startify.button("K", "kitty config", ":e ~/.config/kitty/kitty.conf<cr>"),
                startify.button("z", "zsh config", ":e ~/.zshrc<cr>"),
                startify.button("l", "latex style", ":e /Users/gabriel/Library/texmf/tex/latex/local/Gabriel.sty<cr>"),
                startify.button("q", "quit nvim", ":qa<cr>"),
            }
            vim.api.nvim_set_keymap('n', '<leader>aa', ':Alpha<cr>', {noremap = true})
        end
    }
end)
