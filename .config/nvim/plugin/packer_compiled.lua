-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/gabriel/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/gabriel/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/gabriel/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/gabriel/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/gabriel/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ale = {
    config = { "\27LJ\2\nû\3\0\0\6\0\f\0\0216\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\3\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0)\1\0\0=\1\5\0006\0\0\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0'\4\n\0005\5\v\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\16:ALEFix<CR>\14<leader>f\6n\20nvim_set_keymap\bapi\20ale_fix_on_save‹\1                let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'], 'python': ['autoimport', 'autoflake', 'autopep8', 'isort', 'yapf'], 'c': ['clang-format'], 'cpp': ['clang-format']}\n            \bcmd\20ale_disable_lsp\6g\bvim\0" },
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/ale",
    url = "https://github.com/dense-analysis/ale"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\nã\5\0\0\b\0!\1=6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\0016\0\0\0'\2\3\0B\0\2\0029\1\5\0009\1\6\0014\2\3\0005\3\b\0>\3\1\2=\2\a\0019\1\5\0009\1\t\0014\2\6\0009\3\n\0'\5\v\0'\6\f\0'\a\r\0B\3\4\2>\3\1\0029\3\n\0'\5\14\0'\6\15\0'\a\16\0B\3\4\2>\3\2\0029\3\n\0'\5\17\0'\6\18\0'\a\19\0B\3\4\2>\3\3\0029\3\n\0'\5\20\0'\6\21\0'\a\22\0B\3\4\2>\3\4\0029\3\n\0'\5\23\0'\6\24\0'\a\25\0B\3\4\0?\3\0\0=\2\a\0016\1\26\0009\1\27\0019\1\28\1'\3\29\0'\4\30\0'\5\31\0005\6 \0B\1\5\1K\0\1\0\1\0\1\fnoremap\2\15:Alpha<cr>\15<leader>aa\6n\20nvim_set_keymap\bapi\bvim\f:qa<cr>\14quit nvim\6qD:e /Users/gabriel/Library/texmf/tex/latex/local/Gabriel.sty<cr>\16latex style\6l\20:e ~/.zshrc<cr>\15zsh config\6z&:e ~/.config/kitty/kitty.conf<cr>\17kitty config\6K#:e ~/.config/nvim/init.lua<cr>\18neovim config\6v\vbutton\19bottom_buttons\1\0\2\ttype\fpadding\bval\3\0\bval\fmru_cwd\fsection\topts\26alpha.themes.startify\nsetup\nalpha\frequire\vÄÄ¿ô\4\0" },
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-ultisnips"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/cmp-nvim-ultisnips",
    url = "https://github.com/quangnguyen30192/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-tabnine"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  ["jupyter-nvim"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17jupyter-nvim\frequire\0" },
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/jupyter-nvim",
    url = "https://github.com/ahmedkhalf/jupyter-nvim"
  },
  ["lightspeed.nvim"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/lightspeed.nvim",
    url = "https://github.com/ggandor/lightspeed.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["move.nvim"] = {
    config = { "\27LJ\2\nã\5\0\0\6\0\29\0A6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\n\0'\3\v\0'\4\f\0005\5\r\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\n\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\17\0'\4\18\0005\5\19\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\20\0'\4\21\0005\5\22\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\n\0'\3\23\0'\4\24\0005\5\25\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\n\0'\3\26\0'\4\27\0005\5\28\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24:MoveHBlock(-1)<CR>\6H\1\0\2\fnoremap\2\vsilent\2\23:MoveHBlock(1)<CR>\6L\1\0\2\fnoremap\2\vsilent\2\23:MoveHChar(-1)<CR>\14<leader>h\1\0\2\fnoremap\2\vsilent\2\22:MoveHChar(1)<CR>\14<leader>l\1\0\2\fnoremap\2\vsilent\2\23:MoveBlock(-1)<CR>\6K\1\0\2\fnoremap\2\vsilent\2\22:MoveBlock(1)<CR>\6J\6v\1\0\2\fnoremap\2\vsilent\2\22:MoveLine(-1)<CR>\14<leader>k\1\0\2\fnoremap\2\vsilent\2\21:MoveLine(1)<CR>\14<leader>j\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/move.nvim",
    url = "https://github.com/fedepujol/move.nvim"
  },
  nerdtree = {
    config = { "\27LJ\2\né\2\0\0\6\0\14\0\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\a\0'\1\t\0=\1\b\0006\0\0\0009\0\a\0)\1\0\0=\1\n\0006\0\0\0009\0\a\0005\1\f\0=\1\v\0006\0\0\0009\0\a\0)\1#\0=\1\r\0K\0\1\0\20NERDTreeWinSize\1\3\0\0\v\\.pyc$\16__pycache__\19NERDTreeIgnore\23NERDTreeShowHidden\tleft\19NERDTreeWinPos\6g\1\0\1\vsilent\2\24:NERDTreeToggle<CR>\15<leader>nn\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/scrooloose/nerdtree"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n:\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\19UltiSnips#Anon\afn\bvim‹\6\1\0\v\0)\0Z6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0009\5\b\0009\5\t\0055\a\n\0B\5\2\2=\5\f\4=\4\b\0039\4\r\0009\4\14\0044\6\4\0005\a\15\0>\a\1\0065\a\16\0>\a\2\0065\a\17\0>\a\3\0064\a\3\0005\b\18\0>\b\1\aB\4\3\2=\4\14\3B\1\2\0019\1\2\0009\1\19\1'\3\20\0005\4\22\0004\5\3\0005\6\21\0>\6\1\5=\5\14\4B\1\3\0019\1\2\0009\1\19\1'\3\23\0005\4\26\0009\5\r\0009\5\14\0054\a\3\0005\b\24\0>\b\1\a4\b\3\0005\t\25\0>\t\1\bB\5\3\2=\5\14\4B\1\3\0016\1\0\0'\3\27\0B\1\2\0029\1\28\0016\3\29\0009\3\30\0039\3\31\0039\3 \3B\3\1\0A\1\0\0025\2!\0006\3\"\0\18\5\2\0B\3\2\4X\6\bÄ6\b\0\0'\n#\0B\b\2\0028\b\a\b9\b\2\b5\n$\0=\1%\nB\b\2\1E\6\3\3R\6ˆ6\3\0\0'\5&\0B\3\2\2\18\6\3\0009\4\2\0035\a'\0004\b\0\0=\b(\aB\4\3\1K\0\1\0\23ignored_file_types\1\0\5\24snippet_placeholder\a..\27run_on_every_keystroke\2\20max_num_results\3\20\14max_lines\3Ù\3\tsort\2\23cmp_tabnine.config\17capabilities\1\0\0\14lspconfig\vipairs\1\5\0\0\16sumneko_lua\fpyright\vclangd\vtexlab\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\14ultisnips\1\0\1\tname\rnvim_lsp\1\0\1\tname\16cmp_tabnine\fsources\vconfig\t<CR>\1\0\0\1\0\1\vselect\1\fconfirm\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nY\0\2\b\0\5\0\t6\2\0\0009\2\1\0029\2\2\2'\4\3\0\18\5\0\0\18\6\1\0005\a\4\0B\2\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\6n\20nvim_set_keymap\bapi\bvim£\1\0\1\a\0\f\0\0194\1\0\0009\2\0\0\a\2\1\0X\2\nÄ5\2\t\0005\3\a\0005\4\5\0005\5\3\0005\6\2\0=\6\4\5=\5\6\4=\4\b\3=\3\n\2\18\1\2\0\18\4\0\0009\2\v\0\18\5\1\0B\2\3\1K\0\1\0\nsetup\rsettings\1\0\0\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\3\0\0\bvim\buse\16sumneko_lua\tnameˇ\4\1\0\5\0\24\00003\0\0\0\18\1\0\0'\3\1\0'\4\2\0B\1\3\1\18\1\0\0'\3\3\0'\4\4\0B\1\3\1\18\1\0\0'\3\5\0'\4\6\0B\1\3\1\18\1\0\0'\3\a\0'\4\b\0B\1\3\1\18\1\0\0'\3\a\0'\4\t\0B\1\3\1\18\1\0\0'\3\n\0'\4\v\0B\1\3\1\18\1\0\0'\3\f\0'\4\r\0B\1\3\1\18\1\0\0'\3\14\0'\4\15\0B\1\3\1\18\1\0\0'\3\16\0'\4\17\0B\1\3\1\18\1\0\0'\3\18\0'\4\19\0B\1\3\0016\1\20\0'\3\21\0B\1\2\0029\2\22\0013\4\23\0B\2\2\1K\0\1\0\0\20on_server_ready\23nvim-lsp-installer\frequire\":lua vim.lsp.buf.rename()<cr>\15<leader>rn':lua vim.lsp.buf.code_action()<cr>\15<leader>af!:lua vim.lsp.buf.hover()<cr>\6K+:lua vim.lsp.buf.type_definition()<cr>\agt&:lua vim.lsp.buf.references()<cr>\agr,:lua vim.lsp.buf.workspace_symbol()<cr>+:lua vim.lsp.buf.document_symbol()<cr>\agw*:lua vim.lsp.buf.implementation()<cr>\agi':lua vim.lsp.buf.declaration()<cr>\agD&:lua vim.lsp.buf.definition()<cr>\agd\0\0" },
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n•\2\0\0\5\0\16\0\0216\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\3B\1\2\0016\1\n\0009\1\v\1'\2\r\0=\2\f\0016\1\n\0009\1\v\1'\2\15\0=\2\14\1K\0\1\0\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\bopt\bvim\frainbow\1\0\2\venable\2\18extended_mode\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ripgrep = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/ripgrep",
    url = "https://github.com/BurntSushi/ripgrep"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nY\0\2\b\0\5\0\t6\2\0\0009\2\1\0029\2\2\2'\4\3\0\18\5\0\0\18\6\1\0005\a\4\0B\2\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\6n\20nvim_set_keymap\bapi\bvim|\1\0\5\0\5\0\n3\0\0\0\18\1\0\0'\3\1\0'\4\2\0B\1\3\1\18\1\0\0'\3\3\0'\4\4\0B\1\3\1K\0\1\0 :Telescope find_buffers<CR>\15<leader>tb\30:Telescope find_files<CR>\15<leader>tf\0\0" },
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ultisnips = {
    config = { "\27LJ\2\n¢\1\0\0\2\0\b\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0K\0\1\0\n<c-j>!UltiSnipsJumpBackwardTrigger\n<c-k> UltiSnipsJumpForwardTrigger\rvertical\23UltiSnipsEditSplit\6g\bvim\0" },
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  vimwiki = {
    config = { "\27LJ\2\nΩ\4\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0ù\4            function! VimwikiLinkHandler(link)\n            let link = a:link\n            if link =~# '^vfile:'\n            let link = link[1:]\n            else\n            return 0\n            endif\n            let link_infos = vimwiki#base#resolve_link(link)\n            if link_infos.filename == ''\n            echomsg 'Vimwiki Error: Unable to resolve link!'\n            return 0\n            else\n            exe 'tabnew ' . fnameescape(link_infos.filename)\n            return 1\n            endif\n            endfunction\n            \bcmd\bvim\0" },
    loaded = true,
    path = "/Users/gabriel/.local/share/nvim/site/pack/packer/start/vimwiki",
    url = "https://github.com/vimwiki/vimwiki"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vimwiki
time([[Config for vimwiki]], true)
try_loadstring("\27LJ\2\nΩ\4\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0ù\4            function! VimwikiLinkHandler(link)\n            let link = a:link\n            if link =~# '^vfile:'\n            let link = link[1:]\n            else\n            return 0\n            endif\n            let link_infos = vimwiki#base#resolve_link(link)\n            if link_infos.filename == ''\n            echomsg 'Vimwiki Error: Unable to resolve link!'\n            return 0\n            else\n            exe 'tabnew ' . fnameescape(link_infos.filename)\n            return 1\n            endif\n            endfunction\n            \bcmd\bvim\0", "config", "vimwiki")
time([[Config for vimwiki]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nY\0\2\b\0\5\0\t6\2\0\0009\2\1\0029\2\2\2'\4\3\0\18\5\0\0\18\6\1\0005\a\4\0B\2\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\6n\20nvim_set_keymap\bapi\bvim£\1\0\1\a\0\f\0\0194\1\0\0009\2\0\0\a\2\1\0X\2\nÄ5\2\t\0005\3\a\0005\4\5\0005\5\3\0005\6\2\0=\6\4\5=\5\6\4=\4\b\3=\3\n\2\18\1\2\0\18\4\0\0009\2\v\0\18\5\1\0B\2\3\1K\0\1\0\nsetup\rsettings\1\0\0\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\3\0\0\bvim\buse\16sumneko_lua\tnameˇ\4\1\0\5\0\24\00003\0\0\0\18\1\0\0'\3\1\0'\4\2\0B\1\3\1\18\1\0\0'\3\3\0'\4\4\0B\1\3\1\18\1\0\0'\3\5\0'\4\6\0B\1\3\1\18\1\0\0'\3\a\0'\4\b\0B\1\3\1\18\1\0\0'\3\a\0'\4\t\0B\1\3\1\18\1\0\0'\3\n\0'\4\v\0B\1\3\1\18\1\0\0'\3\f\0'\4\r\0B\1\3\1\18\1\0\0'\3\14\0'\4\15\0B\1\3\1\18\1\0\0'\3\16\0'\4\17\0B\1\3\1\18\1\0\0'\3\18\0'\4\19\0B\1\3\0016\1\20\0'\3\21\0B\1\2\0029\2\22\0013\4\23\0B\2\2\1K\0\1\0\0\20on_server_ready\23nvim-lsp-installer\frequire\":lua vim.lsp.buf.rename()<cr>\15<leader>rn':lua vim.lsp.buf.code_action()<cr>\15<leader>af!:lua vim.lsp.buf.hover()<cr>\6K+:lua vim.lsp.buf.type_definition()<cr>\agt&:lua vim.lsp.buf.references()<cr>\agr,:lua vim.lsp.buf.workspace_symbol()<cr>+:lua vim.lsp.buf.document_symbol()<cr>\agw*:lua vim.lsp.buf.implementation()<cr>\agi':lua vim.lsp.buf.declaration()<cr>\agD&:lua vim.lsp.buf.definition()<cr>\agd\0\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\nã\5\0\0\b\0!\1=6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\0016\0\0\0'\2\3\0B\0\2\0029\1\5\0009\1\6\0014\2\3\0005\3\b\0>\3\1\2=\2\a\0019\1\5\0009\1\t\0014\2\6\0009\3\n\0'\5\v\0'\6\f\0'\a\r\0B\3\4\2>\3\1\0029\3\n\0'\5\14\0'\6\15\0'\a\16\0B\3\4\2>\3\2\0029\3\n\0'\5\17\0'\6\18\0'\a\19\0B\3\4\2>\3\3\0029\3\n\0'\5\20\0'\6\21\0'\a\22\0B\3\4\2>\3\4\0029\3\n\0'\5\23\0'\6\24\0'\a\25\0B\3\4\0?\3\0\0=\2\a\0016\1\26\0009\1\27\0019\1\28\1'\3\29\0'\4\30\0'\5\31\0005\6 \0B\1\5\1K\0\1\0\1\0\1\fnoremap\2\15:Alpha<cr>\15<leader>aa\6n\20nvim_set_keymap\bapi\bvim\f:qa<cr>\14quit nvim\6qD:e /Users/gabriel/Library/texmf/tex/latex/local/Gabriel.sty<cr>\16latex style\6l\20:e ~/.zshrc<cr>\15zsh config\6z&:e ~/.config/kitty/kitty.conf<cr>\17kitty config\6K#:e ~/.config/nvim/init.lua<cr>\18neovim config\6v\vbutton\19bottom_buttons\1\0\2\ttype\fpadding\bval\3\0\bval\fmru_cwd\fsection\topts\26alpha.themes.startify\nsetup\nalpha\frequire\vÄÄ¿ô\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: jupyter-nvim
time([[Config for jupyter-nvim]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17jupyter-nvim\frequire\0", "config", "jupyter-nvim")
time([[Config for jupyter-nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n•\2\0\0\5\0\16\0\0216\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\3B\1\2\0016\1\n\0009\1\v\1'\2\r\0=\2\f\0016\1\n\0009\1\v\1'\2\15\0=\2\14\1K\0\1\0\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\bopt\bvim\frainbow\1\0\2\venable\2\18extended_mode\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: move.nvim
time([[Config for move.nvim]], true)
try_loadstring("\27LJ\2\nã\5\0\0\6\0\29\0A6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\n\0'\3\v\0'\4\f\0005\5\r\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\n\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\17\0'\4\18\0005\5\19\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\20\0'\4\21\0005\5\22\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\n\0'\3\23\0'\4\24\0005\5\25\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\n\0'\3\26\0'\4\27\0005\5\28\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24:MoveHBlock(-1)<CR>\6H\1\0\2\fnoremap\2\vsilent\2\23:MoveHBlock(1)<CR>\6L\1\0\2\fnoremap\2\vsilent\2\23:MoveHChar(-1)<CR>\14<leader>h\1\0\2\fnoremap\2\vsilent\2\22:MoveHChar(1)<CR>\14<leader>l\1\0\2\fnoremap\2\vsilent\2\23:MoveBlock(-1)<CR>\6K\1\0\2\fnoremap\2\vsilent\2\22:MoveBlock(1)<CR>\6J\6v\1\0\2\fnoremap\2\vsilent\2\22:MoveLine(-1)<CR>\14<leader>k\1\0\2\fnoremap\2\vsilent\2\21:MoveLine(1)<CR>\14<leader>j\6n\20nvim_set_keymap\bapi\bvim\0", "config", "move.nvim")
time([[Config for move.nvim]], false)
-- Config for: nerdtree
time([[Config for nerdtree]], true)
try_loadstring("\27LJ\2\né\2\0\0\6\0\14\0\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\a\0'\1\t\0=\1\b\0006\0\0\0009\0\a\0)\1\0\0=\1\n\0006\0\0\0009\0\a\0005\1\f\0=\1\v\0006\0\0\0009\0\a\0)\1#\0=\1\r\0K\0\1\0\20NERDTreeWinSize\1\3\0\0\v\\.pyc$\16__pycache__\19NERDTreeIgnore\23NERDTreeShowHidden\tleft\19NERDTreeWinPos\6g\1\0\1\vsilent\2\24:NERDTreeToggle<CR>\15<leader>nn\6n\20nvim_set_keymap\bapi\bvim\0", "config", "nerdtree")
time([[Config for nerdtree]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nY\0\2\b\0\5\0\t6\2\0\0009\2\1\0029\2\2\2'\4\3\0\18\5\0\0\18\6\1\0005\a\4\0B\2\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\6n\20nvim_set_keymap\bapi\bvim|\1\0\5\0\5\0\n3\0\0\0\18\1\0\0'\3\1\0'\4\2\0B\1\3\1\18\1\0\0'\3\3\0'\4\4\0B\1\3\1K\0\1\0 :Telescope find_buffers<CR>\15<leader>tb\30:Telescope find_files<CR>\15<leader>tf\0\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: ultisnips
time([[Config for ultisnips]], true)
try_loadstring("\27LJ\2\n¢\1\0\0\2\0\b\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0K\0\1\0\n<c-j>!UltiSnipsJumpBackwardTrigger\n<c-k> UltiSnipsJumpForwardTrigger\rvertical\23UltiSnipsEditSplit\6g\bvim\0", "config", "ultisnips")
time([[Config for ultisnips]], false)
-- Config for: ale
time([[Config for ale]], true)
try_loadstring("\27LJ\2\nû\3\0\0\6\0\f\0\0216\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\3\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0)\1\0\0=\1\5\0006\0\0\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0'\4\n\0005\5\v\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\16:ALEFix<CR>\14<leader>f\6n\20nvim_set_keymap\bapi\20ale_fix_on_save‹\1                let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'], 'python': ['autoimport', 'autoflake', 'autopep8', 'isort', 'yapf'], 'c': ['clang-format'], 'cpp': ['clang-format']}\n            \bcmd\20ale_disable_lsp\6g\bvim\0", "config", "ale")
time([[Config for ale]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n:\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\19UltiSnips#Anon\afn\bvim‹\6\1\0\v\0)\0Z6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0009\5\b\0009\5\t\0055\a\n\0B\5\2\2=\5\f\4=\4\b\0039\4\r\0009\4\14\0044\6\4\0005\a\15\0>\a\1\0065\a\16\0>\a\2\0065\a\17\0>\a\3\0064\a\3\0005\b\18\0>\b\1\aB\4\3\2=\4\14\3B\1\2\0019\1\2\0009\1\19\1'\3\20\0005\4\22\0004\5\3\0005\6\21\0>\6\1\5=\5\14\4B\1\3\0019\1\2\0009\1\19\1'\3\23\0005\4\26\0009\5\r\0009\5\14\0054\a\3\0005\b\24\0>\b\1\a4\b\3\0005\t\25\0>\t\1\bB\5\3\2=\5\14\4B\1\3\0016\1\0\0'\3\27\0B\1\2\0029\1\28\0016\3\29\0009\3\30\0039\3\31\0039\3 \3B\3\1\0A\1\0\0025\2!\0006\3\"\0\18\5\2\0B\3\2\4X\6\bÄ6\b\0\0'\n#\0B\b\2\0028\b\a\b9\b\2\b5\n$\0=\1%\nB\b\2\1E\6\3\3R\6ˆ6\3\0\0'\5&\0B\3\2\2\18\6\3\0009\4\2\0035\a'\0004\b\0\0=\b(\aB\4\3\1K\0\1\0\23ignored_file_types\1\0\5\24snippet_placeholder\a..\27run_on_every_keystroke\2\20max_num_results\3\20\14max_lines\3Ù\3\tsort\2\23cmp_tabnine.config\17capabilities\1\0\0\14lspconfig\vipairs\1\5\0\0\16sumneko_lua\fpyright\vclangd\vtexlab\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\14ultisnips\1\0\1\tname\rnvim_lsp\1\0\1\tname\16cmp_tabnine\fsources\vconfig\t<CR>\1\0\0\1\0\1\vselect\1\fconfirm\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
