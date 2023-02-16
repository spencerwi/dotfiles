-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/spencerwi/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/spencerwi/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/spencerwi/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/spencerwi/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/spencerwi/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-treesitter"] = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/cmp-treesitter",
    url = "https://github.com/ray-x/cmp-treesitter"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["command-center.nvim"] = {
    config = { "\27LJ\2\2ã\4\0\0\6\0\19\0$6\0\0\0'\1\1\0B\0\2\0029\0\2\0'\1\3\0B\0\2\0016\0\0\0'\1\3\0B\0\2\0026\1\4\0009\1\5\0019\1\6\1'\2\a\0'\3\b\0'\4\t\0B\1\4\0015\1\n\0009\2\v\0004\3\4\0005\4\f\0005\5\r\0>\1\3\5=\5\14\4>\4\1\0035\4\15\0005\5\16\0>\1\3\5=\5\14\4>\4\2\0035\4\17\0005\5\18\0>\1\3\5=\5\14\4>\4\3\3B\2\2\1K\0\1\0\1\3\0\0\6n\14<leader>f\1\0\2\16description\18Grep in files\bcmd!<CMD>Telescope live_grep<CR>\1\3\0\0\6n\14<leader>b\1\0\2\16description\19Switch buffers\bcmd\31<CMD>Telescope buffers<CR>\16keybindings\1\3\0\0\6n\n<C-t>\1\0\2\16description\15Find files\bcmd\"<CMD>Telescope find_files<CR>\badd\1\0\2\vsilent\2\fnoremap\2&<cmd>Telescope command_center<CR>\14<leader>a\6n\bset\vkeymap\bvim\19command_center\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/command-center.nvim",
    url = "https://github.com/gfeiyou/command-center.nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["kotlin-vim"] = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/kotlin-vim",
    url = "https://github.com/udalov/kotlin-vim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2Á\3\0\0\6\0\27\0)6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\n\0005\3\6\0005\4\a\0005\5\b\0=\5\t\4>\4\2\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\2=\2\22\0015\2\23\0004\3\0\0=\3\v\0024\3\0\0=\3\r\0025\3\24\0=\3\15\0025\3\25\0=\3\17\0024\3\0\0=\3\19\0024\3\0\0=\3\21\2=\2\26\1B\0\2\1K\0\1\0\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_f\1\2\0\0\rlocation\14lualine_e\1\2\0\0\rprogress\14lualine_d\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\1\2\0\0\tmode\foptions\1\0\0\1\0\2\18icons_enabled\2\ntheme\15tokyonight\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  neomake = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/neomake",
    url = "https://github.com/benekastah/neomake"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2p\0\2\b\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\3\0\0009\3\1\0039\3\3\3\18\4\0\0+\5\2\0+\6\2\0+\a\2\0B\3\5\2\18\4\1\0+\5\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim;\0\1\3\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim{\0\1\4\1\5\1\0156\1\0\0009\1\1\0019\1\2\1)\2\1\0B\1\2\2\t\1\0\0X\1\5Ä-\1\0\0'\2\3\0'\3\4\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\2u\0\1\4\1\5\1\0156\1\0\0009\1\1\0019\1\2\1)\2ˇˇB\1\2\2\t\1\0\0X\1\5Ä-\1\0\0'\2\3\0'\3\4\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\2ø\4\1\0\t\0$\0I6\0\0\0'\1\1\0B\0\2\0023\1\2\0009\2\3\0005\3\a\0005\4\5\0003\5\4\0=\5\6\4=\4\b\0039\4\t\0009\4\n\0049\4\v\0045\5\14\0009\6\t\0009\6\f\0065\a\r\0B\6\2\2=\6\15\0059\6\t\0003\a\16\0005\b\17\0B\6\3\2=\6\18\0059\6\t\0003\a\19\0005\b\20\0B\6\3\2=\6\21\0059\6\t\0009\6\22\6B\6\1\2=\6\23\5B\4\2\2=\4\t\0039\4\24\0009\4\25\0044\5\6\0005\6\26\0>\6\1\0055\6\27\0>\6\2\0055\6\28\0>\6\3\0055\6\29\0>\6\4\0055\6\30\0>\6\5\5B\4\2\2=\4\25\3B\2\2\0019\2\3\0009\2\31\2'\3 \0005\4!\0009\5\t\0009\5\n\0059\5\31\5B\5\1\2=\5\t\0049\5\24\0009\5\25\0054\6\3\0005\a\"\0>\a\1\0064\a\3\0005\b#\0>\b\1\aB\5\3\2=\5\25\4B\2\3\0012\0\0ÄK\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\fcmdline\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\15treesitter\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\14<C-Space>\rcomplete\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\vinsert\vpreset\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\bcmp\frequire\0" },
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\2<\0\0\1\1\3\0\b-\0\0\0009\0\0\0B\0\1\1-\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\0¿\topen\trepl\rcontinue`\0\0\3\1\5\0\t-\0\0\0009\0\0\0006\1\1\0009\1\2\0019\1\3\1'\2\4\0B\1\2\0A\0\0\1K\0\1\0\0¿\27Breakpoint condition: \ninput\afn\bvim\19set_breakpoint¯\a\1\0\a\0(\0R6\0\0\0'\1\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\2\5\0005\3\6\0B\1\3\0015\1\a\0006\2\0\0'\3\b\0B\2\2\0029\3\t\0024\4\n\0005\5\n\0003\6\v\0=\6\f\0055\6\r\0>\1\3\6=\6\14\5>\5\1\0045\5\15\0009\6\16\0=\6\f\0055\6\17\0>\1\3\6=\6\14\5>\5\2\0045\5\18\0009\6\19\0=\6\f\0055\6\20\0>\1\3\6=\6\14\5>\5\3\0045\5\21\0009\6\22\0=\6\f\0055\6\23\0>\1\3\6=\6\14\5>\5\4\0045\5\24\0009\6\25\0=\6\f\0055\6\26\0>\1\3\6=\6\14\5>\5\5\0045\5\27\0009\6\28\0=\6\f\0055\6\29\0>\1\3\6=\6\14\5>\5\6\0045\5\30\0009\6\31\0=\6\f\0055\6 \0>\1\3\6=\6\14\5>\5\a\0045\5!\0003\6\"\0=\6\f\0055\6#\0>\1\3\6=\6\14\5>\5\b\0045\5$\0009\6%\0009\6&\6=\6\f\0055\6'\0>\1\3\6=\6\14\5>\5\t\4B\3\2\0012\0\0ÄK\0\1\0\1\3\0\0\6n\15<leader>de\topen\trepl\1\0\1\16description\22(Debug) Open REPL\1\3\0\0\6n\16<leader>dcb\0\1\0\1\16description#(Debug) Conditional Breakpoint\1\3\0\0\6n\15<leader>db\22toggle_breakpoint\1\0\1\16description\30(Debug) Toggle Breakpoint\1\3\0\0\6n\15<leader>di\14step_into\1\0\1\16description\22(Debug) Step Into\1\3\0\0\6n\15<leader>dn\14step_over\1\0\1\16description\22(Debug) Step Over\1\3\0\0\6n\15<leader>dd\tdown\1\0\1\16description\26(Debug) Down in stack\1\3\0\0\6n\15<leader>du\aup\1\0\1\16description\24(Debug) Up in stack\1\3\0\0\6n\15<leader>dn\14terminate\1\0\1\16description\27(Debug) Stop debugging\16keybindings\1\3\0\0\6n\15<leader>dr\bcmd\0\1\0\1\16description\16(Debug) Run\badd\19command_center\1\0\2\vsilent\2\fnoremap\2\1\0\4\vtexthl\5\ttext\tüõë\vlinehl\5\nnumhl\5\18DapBreakpoint\16sign_define\afn\bvim\bdap\frequire\0" },
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\2A\2\0\3\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\1\0\0G\2\0\0A\0\1\1K\0\1\0\1Ä\24nvim_buf_set_keymap\bapi\bvimA\2\0\3\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\1\0\0G\2\0\0A\0\1\1K\0\1\0\1Ä\24nvim_buf_set_option\bapi\bvim=\0\0\1\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\22range_code_action\bbuf\blsp\bvim„\15\1\2\v\0@\0¨\1\v\1\0\0X\2\1Ä)\1\0\0003\2\0\0003\3\1\0\18\4\3\0'\5\2\0'\6\3\0B\4\3\0015\4\4\0006\5\5\0'\6\6\0B\5\2\0029\6\a\0054\a\14\0005\b\b\0006\t\t\0009\t\n\t9\t\v\t9\t\f\t=\t\r\b5\t\14\0>\4\3\t=\t\15\b>\b\1\a5\b\16\0006\t\t\0009\t\n\t9\t\v\t9\t\17\t=\t\r\b4\t\3\0005\n\18\0>\4\3\n>\n\1\t5\n\19\0>\4\3\n>\n\2\t=\t\15\b>\b\2\a5\b\20\0006\t\t\0009\t\n\t9\t\v\t9\t\21\t=\t\r\b5\t\22\0>\4\3\t=\t\15\b>\b\3\a5\b\23\0006\t\t\0009\t\n\t9\t\v\t9\t\24\t=\t\r\b4\t\3\0005\n\25\0>\4\3\n>\n\1\t5\n\26\0>\4\3\n>\n\2\t=\t\15\b>\b\4\a5\b\27\0006\t\t\0009\t\n\t9\t\v\t9\t\24\t=\t\r\b5\t\28\0>\4\3\t=\t\15\b>\b\5\a5\b\29\0006\t\t\0009\t\n\t9\t\v\t9\t\30\t=\t\r\b5\t\31\0>\4\3\t=\t\15\b>\b\6\a5\b \0006\t\t\0009\t!\t9\t\"\t=\t\r\b5\t#\0>\4\3\t=\t\15\b>\b\a\a5\b$\0006\t\t\0009\t!\t9\t%\t=\t\r\b5\t&\0>\4\3\t=\t\15\b>\b\b\a5\b'\0006\t\t\0009\t\n\t9\t\v\t9\t(\t=\t\r\b5\t)\0>\4\3\t=\t\15\b>\b\t\a5\b*\0006\t\t\0009\t\n\t9\t\v\t9\t+\t=\t\r\b5\t,\0>\4\3\t=\t\15\b>\b\n\a5\b-\0003\t.\0=\t\r\b5\t/\0>\4\3\t=\t\15\b>\b\v\a5\b0\0005\t1\0>\4\3\t=\t\15\b>\b\f\a5\b2\0005\t3\0>\4\3\t=\t\15\b>\b\r\aB\6\2\0016\6\t\0009\0064\0069\0065\6'\a6\0005\b7\0B\6\3\0016\6\t\0009\0064\0069\0065\6'\a8\0005\b9\0B\6\3\0016\6\t\0009\0064\0069\0065\6'\a:\0005\b;\0B\6\3\0016\6\t\0009\0064\0069\0065\6'\a<\0005\b=\0B\6\3\0016\6\5\0'\a>\0B\6\2\0029\6?\6B\6\1\0012\0\0ÄK\0\1\0\14on_attach\18lsp_signature\1\0\2\ttext\tüí°\nnumhl\30LspDiagnosticsDefaultHint\27LspDiagnosticsSignHint\1\0\2\ttext\tüõà\nnumhl%LspDiagnosticsDefaultInformation\"LspDiagnosticsSignInformation\1\0\2\ttext\b‚ö†\nnumhl!LspDiagnosticsDefaultWarning\30LspDiagnosticsSignWarning\1\0\2\ttext\b‚ùå\nnumhl\31LspDiagnosticsDefaultError\28LspDiagnosticsSignError\16sign_define\afn\1\3\0\0\6n\agr\1\0\2\16description\27(LSP) Go to references\bcmd&<CMD>Telescope lsp_references<CR>\1\3\0\0\6n\n<C-n>\1\0\2\16description$(LSP) Go to symbol in workspace\bcmd5<CMD>Telescope lsp_dynamic_workspace_symbols<CR>\1\3\0\0\6v\15<leader>ca\0\1\0\1\16description#(LSP) Code action on selection\1\3\0\0\6n\15<leader>ca\16code_action\1\0\1\16description\22(LSP) Code action\1\3\0\0\6n\15<leader>rn\vrename\1\0\1\16description\17(LSP) Rename\1\3\0\0\6n\a]d\14goto_next\1\0\1\16description\21(LSP) Next error\1\3\0\0\6n\a[d\14goto_prev\15diagnostic\1\0\1\16description\25(LSP) Previous error\1\3\0\0\6n\14<leader>K\20type_definition\1\0\1\16description\31(LSP) Show type definition\1\3\0\0\6n\n<C-k>\1\0\1\16description\30(LSP) Show signature help\1\3\0\0\6v\6K\1\3\0\0\6n\6K\nhover\1\0\1\16description#(LSP) Show hover documentation\1\3\0\0\6n\agi\19implementation\1\0\1\16description\31(LSP) Go to Implementation\1\3\0\0\6n\n<C-]>\1\3\0\0\6n\agd\15definition\1\0\1\16description\27(LSP) Go to Definition\16keybindings\1\3\0\0\6n\agD\bcmd\16declaration\bbuf\blsp\bvim\1\0\1\16description\28(LSP) Go to Declaration\badd\19command_center\frequire\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\0\0ë\1\0\2\a\3\a\0\20\v\1\0\0X\2\1Ä4\1\0\0005\2\0\0-\3\0\0=\3\1\2-\3\1\0=\3\2\0026\3\3\0009\3\4\3'\4\5\0\18\5\1\0\18\6\2\0B\3\4\2-\4\2\0008\4\0\0049\4\6\4\18\5\3\0B\4\2\1K\0\1\0\2¿\1¿\0¿\nsetup\tkeep\15tbl_extend\bvim\17capabilities\14on_attach\1\0\0A\0\2\4\0\2\0\b6\2\0\0'\3\1\0B\2\2\0028\3\0\2\14\0\3\0X\3\1Ä<\1\0\2K\0\1\0\22lspconfig.configs\frequire$\0\1\2\0\3\0\0046\1\0\0009\1\1\0019\1\2\1D\1\1\0\bcwd\tloop\bvim‰\a\1\0\v\0(\1c6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\1\3\1B\1\1\0023\2\4\0003\3\5\0003\4\6\0\18\5\3\0'\6\a\0005\a\f\0004\b\3\0006\t\b\0009\t\t\t9\t\n\t'\n\v\0B\t\2\0?\t\0\0=\b\r\aB\5\3\1\18\5\3\0'\6\14\0005\a\16\0005\b\15\0=\b\r\aB\5\3\1\18\5\3\0'\6\17\0004\a\0\0B\5\3\1\18\5\3\0'\6\18\0004\a\0\0B\5\3\1\18\5\3\0'\6\19\0004\a\0\0B\5\3\1\18\5\3\0'\6\20\0B\5\2\1\18\5\3\0'\6\21\0005\a\23\0004\b\3\0006\t\b\0009\t\t\t9\t\n\t'\n\22\0B\t\2\0?\t\0\0=\b\r\aB\5\3\1\18\5\3\0'\6\24\0005\a\26\0004\b\3\0006\t\b\0009\t\t\t9\t\n\t'\n\25\0B\t\2\0?\t\0\0=\b\r\aB\5\3\1\18\5\3\0'\6\27\0005\a\29\0004\b\3\0006\t\b\0009\t\t\t9\t\n\t'\n\28\0B\t\2\0?\t\0\0=\b\r\aB\5\3\1\18\5\4\0'\6\30\0005\a&\0005\b \0005\t\31\0=\t\r\b5\t!\0=\t\"\b3\t#\0=\t$\b4\t\0\0=\t%\b=\b'\aB\5\3\1\18\5\3\0'\6\30\0B\5\2\0012\0\0ÄK\0\1\0\19default_config\1\0\0\rsettings\rroot_dir\0\14filetypes\1\17\0\0\thtml\bcss\tscss\15javascript\20javascriptreact\15typescript\20typescriptreact\thaml\bxml\bxsl\bpug\tslim\tsass\bsss\bhbs\15handlebars\1\0\0\1\3\0\0\rls_emmet\f--stdio\rls_emmet\1\0\0\19~/apps/zls/zls\bzls\1\0\0D~/apps/kotlin-language-server/server/bin/kotlin-language-server\27kotlin_language_server\1\0\0)~/apps/jdt-language-server/bin/jdtls\njdtls\focamlls\18rust_analyzer\rtsserver\17intelephense\1\0\0\1\4\0\0\19fsautocomplete\"--adaptive-lsp-server-enabled\14--verbose\19fsautocomplete\bcmd\1\0\0\23~/apps/crystalline\14normalize\afs\bvim\16crystalline\0\0\0\25default_capabilities\17cmp_nvim_lsp\14lspconfig\frequire\3ÄÄ¿ô\4\0" },
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-test"] = {
    config = { "\27LJ\2\2±\4\0\0\6\0\17\0\"6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\0016\0\0\0'\1\6\0B\0\2\2\18\1\0\0009\0\2\0005\2\a\0B\0\3\0016\0\0\0'\1\b\0B\0\2\0029\1\t\0004\2\5\0005\3\n\0005\4\v\0005\5\f\0>\5\3\4=\4\r\3>\3\1\0025\3\14\0>\3\2\0025\3\15\0>\3\3\0025\3\16\0>\3\4\2B\1\2\1K\0\1\0\1\0\2\16description\21Re-run last test\bcmd\22<CMD>TestLast<CR>\1\0\2\16description\20Go to last test\bcmd\23<CMD>TestVisit<CR>\1\0\2\16description\14Test file\bcmd\22<CMD>TestFile<CR>\16keybindings\1\0\2\vsilent\2\fnoremap\2\1\3\0\0\6n\14<leader>t\1\0\2\16description\17Test nearest\bcmd\25<CMD>TestNearest<CR>\badd\19command_center\1\0\1\17file_pattern$\\v(test/.*|Tests)\\.(cs|fs|fsx)$\29nvim-test.runners.dotnet\frunners\1\0\0\1\0\1\vfsharp\29nvim-test.runners.dotnet\nsetup\14nvim-test\frequire\0" },
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/nvim-test",
    url = "https://github.com/klen/nvim-test"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\2æ\3\0\0\6\0\21\0#6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\15'=\1\6\0006\0\a\0'\1\b\0B\0\2\0029\0\t\0005\1\n\0005\2\v\0=\2\f\0015\2\r\0=\2\14\1B\0\2\0016\0\a\0'\1\15\0B\0\2\0029\1\16\0004\2\3\0005\3\17\0005\4\18\0005\5\19\0>\5\3\4=\4\20\3>\3\1\2B\1\2\1K\0\1\0\16keybindings\1\0\2\vsilent\2\fnoremap\2\1\3\0\0\6n\v<C-j>o\1\0\2\16description\21Navigate outline\bcmd\"<CMD>Telescope treesitter<CR>\badd\19command_center\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\1\0\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\14foldlevel\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\6o\bvim\0" },
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\2\2D\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\23treesitter-context\frequire\0" },
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["promptline.vim"] = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/promptline.vim",
    url = "https://github.com/plexigras/promptline.vim"
  },
  ["refactoring.nvim"] = {
    config = { "\27LJ\2\2’\2\0\0\6\0\v\0\0256\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\0016\0\0\0'\1\3\0B\0\2\0029\0\4\0'\1\1\0B\0\2\0016\0\0\0'\1\5\0B\0\2\0029\1\6\0004\2\3\0005\3\a\0005\4\b\0005\5\t\0>\5\3\4=\4\n\3>\3\1\2B\1\2\1K\0\1\0\16keybindings\1\0\2\vsilent\2\fnoremap\2\1\3\0\0\6v\15<leader>rr\1\0\2\16description\26Refactor selection...\bcmdN<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>\badd\19command_center\19load_extension\14telescope\nsetup\16refactoring\frequire\0" },
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/refactoring.nvim",
    url = "https://github.com/ThePrimeagen/refactoring.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    config = { "\27LJ\2\2N\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0'\1\3\0B\0\2\1K\0\1\0\14ui-select\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\2£\1\0\0\4\0\v\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2=\2\a\1B\0\2\0016\0\b\0009\0\t\0'\1\n\0B\0\2\1K\0\1\0\22colors tokyonight\bcmd\bvim\vstyles\rcomments\1\0\0\1\0\1\vitalic\1\1\0\1\nstyle\nnight\nsetup\15tokyonight\frequire\0" },
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\2¢\1\0\0\4\0\6\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\0016\0\0\0'\1\3\0B\0\2\0029\1\4\0004\2\3\0005\3\5\0>\3\1\2B\1\2\1K\0\1\0\1\0\2\16description\22(LSP) Show errors\bcmd\21<CMD>Trouble<CR>\badd\19command_center\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-crystal"] = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/vim-crystal",
    url = "https://github.com/vim-crystal/vim-crystal"
  },
  ["vim-fsharp"] = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/vim-fsharp",
    url = "https://github.com/PhilT/vim-fsharp"
  },
  ["vim-fugitive"] = {
    config = { "\27LJ\2\2∂\3\0\0\4\0\v\0\0216\0\0\0'\1\1\0B\0\2\0029\1\2\0004\2\a\0005\3\3\0>\3\1\0025\3\4\0>\3\2\0025\3\5\0>\3\3\0025\3\6\0>\3\4\0025\3\a\0>\3\5\0025\3\b\0>\3\6\0029\3\t\0009\3\n\3B\1\3\1K\0\1\0\rADD_ONLY\tmode\1\0\2\16description\rGit push\bcmd\22<CMD>Git push<CR>\1\0\2\16description\rGit pull\bcmd\22<CMD>Git pull<CR>\1\0\2\16description\15Git commit\bcmd\24<CMD>Git commit<CR>\1\0\2\16description\fGit add\bcmd\21<CMD>Git add<CR>\1\0\2\16description\31(Git) Open file in browser\bcmd\21<CMD>GBrowse<CR>\1\0\2\16description\23Git blame/annotate\bcmd\23<CMD>Git blame<CR>\badd\19command_center\frequire\0" },
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/spencerwi/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2æ\3\0\0\6\0\21\0#6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\15'=\1\6\0006\0\a\0'\1\b\0B\0\2\0029\0\t\0005\1\n\0005\2\v\0=\2\f\0015\2\r\0=\2\14\1B\0\2\0016\0\a\0'\1\15\0B\0\2\0029\1\16\0004\2\3\0005\3\17\0005\4\18\0005\5\19\0>\5\3\4=\4\20\3>\3\1\2B\1\2\1K\0\1\0\16keybindings\1\0\2\vsilent\2\fnoremap\2\1\3\0\0\6n\v<C-j>o\1\0\2\16description\21Navigate outline\bcmd\"<CMD>Telescope treesitter<CR>\badd\19command_center\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\1\0\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\14foldlevel\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\6o\bvim\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2p\0\2\b\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\3\0\0009\3\1\0039\3\3\3\18\4\0\0+\5\2\0+\6\2\0+\a\2\0B\3\5\2\18\4\1\0+\5\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim;\0\1\3\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim{\0\1\4\1\5\1\0156\1\0\0009\1\1\0019\1\2\1)\2\1\0B\1\2\2\t\1\0\0X\1\5Ä-\1\0\0'\2\3\0'\3\4\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\2u\0\1\4\1\5\1\0156\1\0\0009\1\1\0019\1\2\1)\2ˇˇB\1\2\2\t\1\0\0X\1\5Ä-\1\0\0'\2\3\0'\3\4\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\2ø\4\1\0\t\0$\0I6\0\0\0'\1\1\0B\0\2\0023\1\2\0009\2\3\0005\3\a\0005\4\5\0003\5\4\0=\5\6\4=\4\b\0039\4\t\0009\4\n\0049\4\v\0045\5\14\0009\6\t\0009\6\f\0065\a\r\0B\6\2\2=\6\15\0059\6\t\0003\a\16\0005\b\17\0B\6\3\2=\6\18\0059\6\t\0003\a\19\0005\b\20\0B\6\3\2=\6\21\0059\6\t\0009\6\22\6B\6\1\2=\6\23\5B\4\2\2=\4\t\0039\4\24\0009\4\25\0044\5\6\0005\6\26\0>\6\1\0055\6\27\0>\6\2\0055\6\28\0>\6\3\0055\6\29\0>\6\4\0055\6\30\0>\6\5\5B\4\2\2=\4\25\3B\2\2\0019\2\3\0009\2\31\2'\3 \0005\4!\0009\5\t\0009\5\n\0059\5\31\5B\5\1\2=\5\t\0049\5\24\0009\5\25\0054\6\3\0005\a\"\0>\a\1\0064\a\3\0005\b#\0>\b\1\aB\5\3\2=\5\25\4B\2\3\0012\0\0ÄK\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\fcmdline\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\15treesitter\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\14<C-Space>\rcomplete\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\vinsert\vpreset\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\2D\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
-- Config for: nvim-test
time([[Config for nvim-test]], true)
try_loadstring("\27LJ\2\2±\4\0\0\6\0\17\0\"6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\0016\0\0\0'\1\6\0B\0\2\2\18\1\0\0009\0\2\0005\2\a\0B\0\3\0016\0\0\0'\1\b\0B\0\2\0029\1\t\0004\2\5\0005\3\n\0005\4\v\0005\5\f\0>\5\3\4=\4\r\3>\3\1\0025\3\14\0>\3\2\0025\3\15\0>\3\3\0025\3\16\0>\3\4\2B\1\2\1K\0\1\0\1\0\2\16description\21Re-run last test\bcmd\22<CMD>TestLast<CR>\1\0\2\16description\20Go to last test\bcmd\23<CMD>TestVisit<CR>\1\0\2\16description\14Test file\bcmd\22<CMD>TestFile<CR>\16keybindings\1\0\2\vsilent\2\fnoremap\2\1\3\0\0\6n\14<leader>t\1\0\2\16description\17Test nearest\bcmd\25<CMD>TestNearest<CR>\badd\19command_center\1\0\1\17file_pattern$\\v(test/.*|Tests)\\.(cs|fs|fsx)$\29nvim-test.runners.dotnet\frunners\1\0\0\1\0\1\vfsharp\29nvim-test.runners.dotnet\nsetup\14nvim-test\frequire\0", "config", "nvim-test")
time([[Config for nvim-test]], false)
-- Config for: telescope-ui-select.nvim
time([[Config for telescope-ui-select.nvim]], true)
try_loadstring("\27LJ\2\2N\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0'\1\3\0B\0\2\1K\0\1\0\14ui-select\19load_extension\14telescope\frequire\0", "config", "telescope-ui-select.nvim")
time([[Config for telescope-ui-select.nvim]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\2<\0\0\1\1\3\0\b-\0\0\0009\0\0\0B\0\1\1-\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\0¿\topen\trepl\rcontinue`\0\0\3\1\5\0\t-\0\0\0009\0\0\0006\1\1\0009\1\2\0019\1\3\1'\2\4\0B\1\2\0A\0\0\1K\0\1\0\0¿\27Breakpoint condition: \ninput\afn\bvim\19set_breakpoint¯\a\1\0\a\0(\0R6\0\0\0'\1\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\2\5\0005\3\6\0B\1\3\0015\1\a\0006\2\0\0'\3\b\0B\2\2\0029\3\t\0024\4\n\0005\5\n\0003\6\v\0=\6\f\0055\6\r\0>\1\3\6=\6\14\5>\5\1\0045\5\15\0009\6\16\0=\6\f\0055\6\17\0>\1\3\6=\6\14\5>\5\2\0045\5\18\0009\6\19\0=\6\f\0055\6\20\0>\1\3\6=\6\14\5>\5\3\0045\5\21\0009\6\22\0=\6\f\0055\6\23\0>\1\3\6=\6\14\5>\5\4\0045\5\24\0009\6\25\0=\6\f\0055\6\26\0>\1\3\6=\6\14\5>\5\5\0045\5\27\0009\6\28\0=\6\f\0055\6\29\0>\1\3\6=\6\14\5>\5\6\0045\5\30\0009\6\31\0=\6\f\0055\6 \0>\1\3\6=\6\14\5>\5\a\0045\5!\0003\6\"\0=\6\f\0055\6#\0>\1\3\6=\6\14\5>\5\b\0045\5$\0009\6%\0009\6&\6=\6\f\0055\6'\0>\1\3\6=\6\14\5>\5\t\4B\3\2\0012\0\0ÄK\0\1\0\1\3\0\0\6n\15<leader>de\topen\trepl\1\0\1\16description\22(Debug) Open REPL\1\3\0\0\6n\16<leader>dcb\0\1\0\1\16description#(Debug) Conditional Breakpoint\1\3\0\0\6n\15<leader>db\22toggle_breakpoint\1\0\1\16description\30(Debug) Toggle Breakpoint\1\3\0\0\6n\15<leader>di\14step_into\1\0\1\16description\22(Debug) Step Into\1\3\0\0\6n\15<leader>dn\14step_over\1\0\1\16description\22(Debug) Step Over\1\3\0\0\6n\15<leader>dd\tdown\1\0\1\16description\26(Debug) Down in stack\1\3\0\0\6n\15<leader>du\aup\1\0\1\16description\24(Debug) Up in stack\1\3\0\0\6n\15<leader>dn\14terminate\1\0\1\16description\27(Debug) Stop debugging\16keybindings\1\3\0\0\6n\15<leader>dr\bcmd\0\1\0\1\16description\16(Debug) Run\badd\19command_center\1\0\2\vsilent\2\fnoremap\2\1\0\4\vtexthl\5\ttext\tüõë\vlinehl\5\nnumhl\5\18DapBreakpoint\16sign_define\afn\bvim\bdap\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\2¢\1\0\0\4\0\6\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\0016\0\0\0'\1\3\0B\0\2\0029\1\4\0004\2\3\0005\3\5\0>\3\1\2B\1\2\1K\0\1\0\1\0\2\16description\22(LSP) Show errors\bcmd\21<CMD>Trouble<CR>\badd\19command_center\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2Á\3\0\0\6\0\27\0)6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\n\0005\3\6\0005\4\a\0005\5\b\0=\5\t\4>\4\2\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\2=\2\22\0015\2\23\0004\3\0\0=\3\v\0024\3\0\0=\3\r\0025\3\24\0=\3\15\0025\3\25\0=\3\17\0024\3\0\0=\3\19\0024\3\0\0=\3\21\2=\2\26\1B\0\2\1K\0\1\0\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_f\1\2\0\0\rlocation\14lualine_e\1\2\0\0\rprogress\14lualine_d\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\1\2\0\0\tmode\foptions\1\0\0\1\0\2\18icons_enabled\2\ntheme\15tokyonight\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: vim-fugitive
time([[Config for vim-fugitive]], true)
try_loadstring("\27LJ\2\2∂\3\0\0\4\0\v\0\0216\0\0\0'\1\1\0B\0\2\0029\1\2\0004\2\a\0005\3\3\0>\3\1\0025\3\4\0>\3\2\0025\3\5\0>\3\3\0025\3\6\0>\3\4\0025\3\a\0>\3\5\0025\3\b\0>\3\6\0029\3\t\0009\3\n\3B\1\3\1K\0\1\0\rADD_ONLY\tmode\1\0\2\16description\rGit push\bcmd\22<CMD>Git push<CR>\1\0\2\16description\rGit pull\bcmd\22<CMD>Git pull<CR>\1\0\2\16description\15Git commit\bcmd\24<CMD>Git commit<CR>\1\0\2\16description\fGit add\bcmd\21<CMD>Git add<CR>\1\0\2\16description\31(Git) Open file in browser\bcmd\21<CMD>GBrowse<CR>\1\0\2\16description\23Git blame/annotate\bcmd\23<CMD>Git blame<CR>\badd\19command_center\frequire\0", "config", "vim-fugitive")
time([[Config for vim-fugitive]], false)
-- Config for: command-center.nvim
time([[Config for command-center.nvim]], true)
try_loadstring("\27LJ\2\2ã\4\0\0\6\0\19\0$6\0\0\0'\1\1\0B\0\2\0029\0\2\0'\1\3\0B\0\2\0016\0\0\0'\1\3\0B\0\2\0026\1\4\0009\1\5\0019\1\6\1'\2\a\0'\3\b\0'\4\t\0B\1\4\0015\1\n\0009\2\v\0004\3\4\0005\4\f\0005\5\r\0>\1\3\5=\5\14\4>\4\1\0035\4\15\0005\5\16\0>\1\3\5=\5\14\4>\4\2\0035\4\17\0005\5\18\0>\1\3\5=\5\14\4>\4\3\3B\2\2\1K\0\1\0\1\3\0\0\6n\14<leader>f\1\0\2\16description\18Grep in files\bcmd!<CMD>Telescope live_grep<CR>\1\3\0\0\6n\14<leader>b\1\0\2\16description\19Switch buffers\bcmd\31<CMD>Telescope buffers<CR>\16keybindings\1\3\0\0\6n\n<C-t>\1\0\2\16description\15Find files\bcmd\"<CMD>Telescope find_files<CR>\badd\1\0\2\vsilent\2\fnoremap\2&<cmd>Telescope command_center<CR>\14<leader>a\6n\bset\vkeymap\bvim\19command_center\19load_extension\14telescope\frequire\0", "config", "command-center.nvim")
time([[Config for command-center.nvim]], false)
-- Config for: refactoring.nvim
time([[Config for refactoring.nvim]], true)
try_loadstring("\27LJ\2\2’\2\0\0\6\0\v\0\0256\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\0016\0\0\0'\1\3\0B\0\2\0029\0\4\0'\1\1\0B\0\2\0016\0\0\0'\1\5\0B\0\2\0029\1\6\0004\2\3\0005\3\a\0005\4\b\0005\5\t\0>\5\3\4=\4\n\3>\3\1\2B\1\2\1K\0\1\0\16keybindings\1\0\2\vsilent\2\fnoremap\2\1\3\0\0\6v\15<leader>rr\1\0\2\16description\26Refactor selection...\bcmdN<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>\badd\19command_center\19load_extension\14telescope\nsetup\16refactoring\frequire\0", "config", "refactoring.nvim")
time([[Config for refactoring.nvim]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\2£\1\0\0\4\0\v\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2=\2\a\1B\0\2\0016\0\b\0009\0\t\0'\1\n\0B\0\2\1K\0\1\0\22colors tokyonight\bcmd\bvim\vstyles\rcomments\1\0\0\1\0\1\vitalic\1\1\0\1\nstyle\nnight\nsetup\15tokyonight\frequire\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\2A\2\0\3\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\1\0\0G\2\0\0A\0\1\1K\0\1\0\1Ä\24nvim_buf_set_keymap\bapi\bvimA\2\0\3\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\1\0\0G\2\0\0A\0\1\1K\0\1\0\1Ä\24nvim_buf_set_option\bapi\bvim=\0\0\1\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\22range_code_action\bbuf\blsp\bvim„\15\1\2\v\0@\0¨\1\v\1\0\0X\2\1Ä)\1\0\0003\2\0\0003\3\1\0\18\4\3\0'\5\2\0'\6\3\0B\4\3\0015\4\4\0006\5\5\0'\6\6\0B\5\2\0029\6\a\0054\a\14\0005\b\b\0006\t\t\0009\t\n\t9\t\v\t9\t\f\t=\t\r\b5\t\14\0>\4\3\t=\t\15\b>\b\1\a5\b\16\0006\t\t\0009\t\n\t9\t\v\t9\t\17\t=\t\r\b4\t\3\0005\n\18\0>\4\3\n>\n\1\t5\n\19\0>\4\3\n>\n\2\t=\t\15\b>\b\2\a5\b\20\0006\t\t\0009\t\n\t9\t\v\t9\t\21\t=\t\r\b5\t\22\0>\4\3\t=\t\15\b>\b\3\a5\b\23\0006\t\t\0009\t\n\t9\t\v\t9\t\24\t=\t\r\b4\t\3\0005\n\25\0>\4\3\n>\n\1\t5\n\26\0>\4\3\n>\n\2\t=\t\15\b>\b\4\a5\b\27\0006\t\t\0009\t\n\t9\t\v\t9\t\24\t=\t\r\b5\t\28\0>\4\3\t=\t\15\b>\b\5\a5\b\29\0006\t\t\0009\t\n\t9\t\v\t9\t\30\t=\t\r\b5\t\31\0>\4\3\t=\t\15\b>\b\6\a5\b \0006\t\t\0009\t!\t9\t\"\t=\t\r\b5\t#\0>\4\3\t=\t\15\b>\b\a\a5\b$\0006\t\t\0009\t!\t9\t%\t=\t\r\b5\t&\0>\4\3\t=\t\15\b>\b\b\a5\b'\0006\t\t\0009\t\n\t9\t\v\t9\t(\t=\t\r\b5\t)\0>\4\3\t=\t\15\b>\b\t\a5\b*\0006\t\t\0009\t\n\t9\t\v\t9\t+\t=\t\r\b5\t,\0>\4\3\t=\t\15\b>\b\n\a5\b-\0003\t.\0=\t\r\b5\t/\0>\4\3\t=\t\15\b>\b\v\a5\b0\0005\t1\0>\4\3\t=\t\15\b>\b\f\a5\b2\0005\t3\0>\4\3\t=\t\15\b>\b\r\aB\6\2\0016\6\t\0009\0064\0069\0065\6'\a6\0005\b7\0B\6\3\0016\6\t\0009\0064\0069\0065\6'\a8\0005\b9\0B\6\3\0016\6\t\0009\0064\0069\0065\6'\a:\0005\b;\0B\6\3\0016\6\t\0009\0064\0069\0065\6'\a<\0005\b=\0B\6\3\0016\6\5\0'\a>\0B\6\2\0029\6?\6B\6\1\0012\0\0ÄK\0\1\0\14on_attach\18lsp_signature\1\0\2\ttext\tüí°\nnumhl\30LspDiagnosticsDefaultHint\27LspDiagnosticsSignHint\1\0\2\ttext\tüõà\nnumhl%LspDiagnosticsDefaultInformation\"LspDiagnosticsSignInformation\1\0\2\ttext\b‚ö†\nnumhl!LspDiagnosticsDefaultWarning\30LspDiagnosticsSignWarning\1\0\2\ttext\b‚ùå\nnumhl\31LspDiagnosticsDefaultError\28LspDiagnosticsSignError\16sign_define\afn\1\3\0\0\6n\agr\1\0\2\16description\27(LSP) Go to references\bcmd&<CMD>Telescope lsp_references<CR>\1\3\0\0\6n\n<C-n>\1\0\2\16description$(LSP) Go to symbol in workspace\bcmd5<CMD>Telescope lsp_dynamic_workspace_symbols<CR>\1\3\0\0\6v\15<leader>ca\0\1\0\1\16description#(LSP) Code action on selection\1\3\0\0\6n\15<leader>ca\16code_action\1\0\1\16description\22(LSP) Code action\1\3\0\0\6n\15<leader>rn\vrename\1\0\1\16description\17(LSP) Rename\1\3\0\0\6n\a]d\14goto_next\1\0\1\16description\21(LSP) Next error\1\3\0\0\6n\a[d\14goto_prev\15diagnostic\1\0\1\16description\25(LSP) Previous error\1\3\0\0\6n\14<leader>K\20type_definition\1\0\1\16description\31(LSP) Show type definition\1\3\0\0\6n\n<C-k>\1\0\1\16description\30(LSP) Show signature help\1\3\0\0\6v\6K\1\3\0\0\6n\6K\nhover\1\0\1\16description#(LSP) Show hover documentation\1\3\0\0\6n\agi\19implementation\1\0\1\16description\31(LSP) Go to Implementation\1\3\0\0\6n\n<C-]>\1\3\0\0\6n\agd\15definition\1\0\1\16description\27(LSP) Go to Definition\16keybindings\1\3\0\0\6n\agD\bcmd\16declaration\bbuf\blsp\bvim\1\0\1\16description\28(LSP) Go to Declaration\badd\19command_center\frequire\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\0\0ë\1\0\2\a\3\a\0\20\v\1\0\0X\2\1Ä4\1\0\0005\2\0\0-\3\0\0=\3\1\2-\3\1\0=\3\2\0026\3\3\0009\3\4\3'\4\5\0\18\5\1\0\18\6\2\0B\3\4\2-\4\2\0008\4\0\0049\4\6\4\18\5\3\0B\4\2\1K\0\1\0\2¿\1¿\0¿\nsetup\tkeep\15tbl_extend\bvim\17capabilities\14on_attach\1\0\0A\0\2\4\0\2\0\b6\2\0\0'\3\1\0B\2\2\0028\3\0\2\14\0\3\0X\3\1Ä<\1\0\2K\0\1\0\22lspconfig.configs\frequire$\0\1\2\0\3\0\0046\1\0\0009\1\1\0019\1\2\1D\1\1\0\bcwd\tloop\bvim‰\a\1\0\v\0(\1c6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\1\3\1B\1\1\0023\2\4\0003\3\5\0003\4\6\0\18\5\3\0'\6\a\0005\a\f\0004\b\3\0006\t\b\0009\t\t\t9\t\n\t'\n\v\0B\t\2\0?\t\0\0=\b\r\aB\5\3\1\18\5\3\0'\6\14\0005\a\16\0005\b\15\0=\b\r\aB\5\3\1\18\5\3\0'\6\17\0004\a\0\0B\5\3\1\18\5\3\0'\6\18\0004\a\0\0B\5\3\1\18\5\3\0'\6\19\0004\a\0\0B\5\3\1\18\5\3\0'\6\20\0B\5\2\1\18\5\3\0'\6\21\0005\a\23\0004\b\3\0006\t\b\0009\t\t\t9\t\n\t'\n\22\0B\t\2\0?\t\0\0=\b\r\aB\5\3\1\18\5\3\0'\6\24\0005\a\26\0004\b\3\0006\t\b\0009\t\t\t9\t\n\t'\n\25\0B\t\2\0?\t\0\0=\b\r\aB\5\3\1\18\5\3\0'\6\27\0005\a\29\0004\b\3\0006\t\b\0009\t\t\t9\t\n\t'\n\28\0B\t\2\0?\t\0\0=\b\r\aB\5\3\1\18\5\4\0'\6\30\0005\a&\0005\b \0005\t\31\0=\t\r\b5\t!\0=\t\"\b3\t#\0=\t$\b4\t\0\0=\t%\b=\b'\aB\5\3\1\18\5\3\0'\6\30\0B\5\2\0012\0\0ÄK\0\1\0\19default_config\1\0\0\rsettings\rroot_dir\0\14filetypes\1\17\0\0\thtml\bcss\tscss\15javascript\20javascriptreact\15typescript\20typescriptreact\thaml\bxml\bxsl\bpug\tslim\tsass\bsss\bhbs\15handlebars\1\0\0\1\3\0\0\rls_emmet\f--stdio\rls_emmet\1\0\0\19~/apps/zls/zls\bzls\1\0\0D~/apps/kotlin-language-server/server/bin/kotlin-language-server\27kotlin_language_server\1\0\0)~/apps/jdt-language-server/bin/jdtls\njdtls\focamlls\18rust_analyzer\rtsserver\17intelephense\1\0\0\1\4\0\0\19fsautocomplete\"--adaptive-lsp-server-enabled\14--verbose\19fsautocomplete\bcmd\1\0\0\23~/apps/crystalline\14normalize\afs\bvim\16crystalline\0\0\0\25default_capabilities\17cmp_nvim_lsp\14lspconfig\frequire\3ÄÄ¿ô\4\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
