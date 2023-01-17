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
local package_path_str = "/Users/huy/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/huy/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/huy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/huy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/huy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["Comment.nvim"] = {
    config = { "\27LJ\2\nß\3\0\1\a\0\22\00066\1\0\0009\1\1\0019\1\2\1\a\1\3\0X\0010€6\1\4\0'\3\5\0B\1\2\0029\2\6\0009\3\6\0019\3\a\3\5\2\3\0X\2\2€'\2\b\0X\3\1€'\2\t\0+\3\0\0009\4\6\0009\5\6\0019\5\n\5\5\4\5\0X\4\a€6\4\4\0'\6\v\0B\4\2\0029\4\f\4B\4\1\2\18\3\4\0X\4\16€9\4\r\0009\5\r\0019\5\14\5\4\4\5\0X\4\5€9\4\r\0009\5\r\0019\5\15\5\5\4\5\0X\4\6€6\4\4\0'\6\v\0B\4\2\0029\4\16\4B\4\1\2\18\3\4\0006\4\4\0'\6\17\0B\4\2\0029\4\18\0045\6\19\0=\2\20\6=\3\21\6D\4\2\0K\0\1\0\rlocation\bkey\1\0\0\28calculate_commentstring&ts_context_commentstring.internal\30get_visual_start_location\6V\6v\fcmotion\24get_cursor_location#ts_context_commentstring.utils\nblock\16__multiline\14__default\tline\nctype\18Comment.utils\frequire\20typescriptreact\rfiletype\abo\bvimN\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\rpre_hook\1\0\0\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["NeoClear.lua"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/NeoClear.lua",
    url = "https://github.com/nyngwang/NeoClear.lua"
  },
  SimpylFold = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/opt/SimpylFold",
    url = "https://github.com/tmhedberg/SimpylFold"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  delimitMate = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/delimitMate",
    url = "https://github.com/Raimondi/delimitMate"
  },
  ["dressing.nvim"] = {
    config = { "\27LJ\2\n\v\0\1\1\0\0\0\1L\0\2\0\v\0\1\1\0\0\0\1L\0\2\0Š\5\1\0\6\0\27\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0033\4\n\0=\4\v\3=\3\r\0025\3\14\0005\4\15\0=\4\16\0035\4\17\0005\5\18\0=\5\t\0045\5\19\0=\5\5\0045\5\20\0=\5\a\0045\5\21\0=\5\22\0043\5\23\0=\5\v\4=\4\24\0034\4\0\0=\4\25\3=\3\26\2B\0\2\1K\0\1\0\vselect\25format_item_override\fbuiltin\0\15min_height\1\3\0\0\3\5\4š³æÌ\t™³¦þ\3\1\3\0\0\3(\4š³æÌ\t™³¦þ\3\1\3\0\0\3Œ\1\4š³æÌ\t™³¦ÿ\3\1\0\2\rwinblend\3\0\17winhighlight\20Normal:MyNormal\1\0\4\15max_height\4Í™³æ\fÌ™³ÿ\3\rrelative\vcursor\vborder\frounded\vanchor\aNW\fbackend\1\0\0\1\0\2\fenabled\2\16trim_prompt\2\ninput\1\0\0\roverride\0\16win_options\1\0\2\rwinblend\3\n\17winhighlight\5\14min_width\1\3\0\0\3\20\4š³æÌ\t™³¦þ\3\14max_width\1\3\0\0\3Œ\1\4Í™³æ\fÌ™³ÿ\3\1\0\b\19default_prompt\vInput:\fenabled\2\17prefer_width\3(\rrelative\vcursor\vborder\frounded\vanchor\aSW\16insert_only\2\17prompt_align\tleft\nsetup\rdressing\frequire\0" },
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["formatter.nvim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["github-light.vim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/github-light.vim",
    url = "https://github.com/romgrk/github-light.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nÅ\2\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\3=\3\15\2B\0\2\1K\0\1\0\nsigns\17changedelete\1\0\2\ahl\26GitGutterChangeDelete\ttext\6~\14topdelete\1\0\2\ahl\20GitGutterDelete\ttext\bâ€¾\vdelete\1\0\2\ahl\20GitGutterDelete\ttext\6_\vchange\1\0\2\ahl\20GitGutterChange\ttext\bâ”‚\badd\1\0\0\1\0\2\ahl\17GitGutterAdd\ttext\bâ”‚\1\0\1\15debug_mode\1\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["glow-in-the-dark-gucci-shark-bites-vim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/glow-in-the-dark-gucci-shark-bites-vim",
    url = "https://github.com/kenwheeler/glow-in-the-dark-gucci-shark-bites-vim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/goyo.vim",
    url = "https://github.com/junegunn/goyo.vim"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["html5.vim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/html5.vim",
    url = "https://github.com/othree/html5.vim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nù\2\0\0\2\0\v\0\0256\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0+\1\1\0=\1\b\0006\0\0\0009\0\1\0+\1\1\0=\1\t\0006\0\0\0009\0\1\0+\1\1\0=\1\n\0K\0\1\0004indent_blankline_show_trailing_blankline_indent*indent_blankline_show_current_context$indent_blankline_use_treesitter\aÂ¦\26indent_blankline_char\1\6\0\0\thelp\rstartify\14dashboard\vpacker\nYanil&indent_blankline_filetype_exclude\1\2\0\0\rterminal%indent_blankline_buftype_exclude\6g\bvim\0" },
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["jsonc.vim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/jsonc.vim",
    url = "https://github.com/neoclide/jsonc.vim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/lsp-status.nvim",
    url = "https://github.com/nvim-lua/lsp-status.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  neogit = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  neovim = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/neovim",
    url = "https://github.com/rose-pine/neovim"
  },
  ["neovim-ui"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/neovim-ui",
    url = "https://github.com/mjlbach/neovim-ui"
  },
  ["night-owl-vim-theme"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/night-owl-vim-theme",
    url = "https://github.com/Khaledgarbaya/night-owl-vim-theme"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  nvim = {
    config = { "\27LJ\2\nÜ\5\0\0\b\0\18\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0004\3\3\0005\4\3\0005\5\4\0=\5\5\0045\5\6\0005\6\a\0005\a\b\0=\a\t\0065\a\n\0=\a\v\6=\6\f\0055\6\r\0=\6\14\0055\6\15\0=\6\16\5=\5\17\4>\4\1\3B\1\2\1K\0\1\0\17integrations\21indent_blankline\1\0\2\26colored_indent_levels\1\fenabled\1\rnvimtree\1\0\2\14show_root\2\fenabled\2\15native_lsp\15underlines\1\0\4\verrors\14underline\16information\14underline\rwarnings\14underline\nhints\14underline\17virtual_text\1\0\4\verrors\vitalic\16information\vitalic\rwarnings\vitalic\nhints\vitalic\1\0\1\fenabled\2\1\0\17\14gitgutter\1\rlsp_saga\1\16lsp_trouble\1\15treesitter\2\14dashboard\1\bhop\1\15ts_rainbow\1\15lightspeed\1\rmarkdown\1\15bufferline\1\vbarbar\1\tfern\1\14vim_sneak\1\vneogit\1\14which_key\1\14telescope\1\rgitsigns\1\vstyles\1\0\5\14functions\vitalic\rcomments\vitalic\14variables\tNONE\fstrings\tNONE\rkeywords\vitalic\1\0\3\16term_colors\1\17transparency\1\16colorscheme\21dark_catppuccino\nsetup\15catppuccin\frequire\0" },
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/nvim",
    url = "https://github.com/catppuccin/nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["oceanic-next"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/oceanic-next",
    url = "https://github.com/mhartington/oceanic-next"
  },
  ["octo.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tocto\frequire\0" },
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/octo.nvim",
    url = "https://github.com/pwntester/octo.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["stabilize.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14stabilize\frequire\0" },
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/stabilize.nvim",
    url = "https://github.com/luukvbaal/stabilize.nvim"
  },
  ["switch.vim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/switch.vim",
    url = "https://github.com/AndrewRadev/switch.vim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzy-native.nvim"
  },
  ["telescope-github.nvim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/telescope-github.nvim",
    url = "https://github.com/nvim-telescope/telescope-github.nvim"
  },
  ["telescope-node-modules.nvim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/telescope-node-modules.nvim",
    url = "https://github.com/nvim-telescope/telescope-node-modules.nvim"
  },
  ["telescope-packer.nvim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/telescope-packer.nvim",
    url = "https://github.com/nvim-telescope/telescope-packer.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["true-zen.nvim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/true-zen.nvim",
    url = "https://github.com/Pocco81/true-zen.nvim"
  },
  ["vim-browserslist"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-browserslist",
    url = "https://github.com/antonk52/vim-browserslist"
  },
  ["vim-colors-synthwave"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-colors-synthwave",
    url = "https://github.com/TroyFletcher/vim-colors-synthwave"
  },
  ["vim-colors-xcode"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-colors-xcode",
    url = "https://github.com/arzg/vim-colors-xcode"
  },
  ["vim-css3-syntax"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-css3-syntax",
    url = "https://github.com/hail2u/vim-css3-syntax"
  },
  ["vim-diff-fold"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-diff-fold",
    url = "https://github.com/sgeb/vim-diff-fold"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-equinusocio-material"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-equinusocio-material",
    url = "https://github.com/chuling/vim-equinusocio-material"
  },
  ["vim-folds"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-folds",
    url = "https://github.com/mhartington/vim-folds"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-grammarous"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-grammarous",
    url = "https://github.com/rhysd/vim-grammarous"
  },
  ["vim-html-escape"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-html-escape",
    url = "https://github.com/skwp/vim-html-escape"
  },
  ["vim-json"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-json",
    url = "https://github.com/elzr/vim-json"
  },
  ["vim-jsx-pretty"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty",
    url = "https://github.com/MaxMEllon/vim-jsx-pretty"
  },
  ["vim-lua"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-lua",
    url = "https://github.com/tbastos/vim-lua"
  },
  ["vim-markdown"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/opt/vim-markdown",
    url = "https://github.com/tpope/vim-markdown"
  },
  ["vim-markdown-folding"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/opt/vim-markdown-folding",
    url = "https://github.com/nelstrom/vim-markdown-folding"
  },
  ["vim-mdx-js"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-mdx-js",
    url = "https://github.com/jxnblk/vim-mdx-js"
  },
  ["vim-monokai-tasty"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-monokai-tasty",
    url = "https://github.com/patstockwell/vim-monokai-tasty"
  },
  ["vim-nightfly-guicolors"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-nightfly-guicolors",
    url = "https://github.com/bluz71/vim-nightfly-guicolors"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-startuptime"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-svelte-plugin"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-svelte-plugin",
    url = "https://github.com/leafOfTree/vim-svelte-plugin"
  },
  ["vim-table-mode"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-table-mode",
    url = "https://github.com/dhruvasagar/vim-table-mode"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  },
  ["vim-textobj-xmlattr"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-textobj-xmlattr",
    url = "https://github.com/whatyouhide/vim-textobj-xmlattr"
  },
  ["vim-tmux"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-tmux",
    url = "https://github.com/tmux-plugins/vim-tmux"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  },
  ["vim-vue"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-vue",
    url = "https://github.com/posva/vim-vue"
  },
  ["vim-yaml-folds"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vim-yaml-folds",
    url = "https://github.com/pedrohdz/vim-yaml-folds"
  },
  vison = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/vison",
    url = "https://github.com/Quramy/vison"
  },
  ["yajs.vim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/yajs.vim",
    url = "https://github.com/othree/yajs.vim"
  },
  yanil = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/yanil",
    url = "https://github.com/Xuyuanp/yanil"
  },
  ["yats.vim"] = {
    loaded = true,
    path = "/Users/huy/.local/share/nvim/site/pack/packer/start/yats.vim",
    url = "https://github.com/HerringtonDarkholme/yats.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim
time([[Config for nvim]], true)
try_loadstring("\27LJ\2\nÜ\5\0\0\b\0\18\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0004\3\3\0005\4\3\0005\5\4\0=\5\5\0045\5\6\0005\6\a\0005\a\b\0=\a\t\0065\a\n\0=\a\v\6=\6\f\0055\6\r\0=\6\14\0055\6\15\0=\6\16\5=\5\17\4>\4\1\3B\1\2\1K\0\1\0\17integrations\21indent_blankline\1\0\2\26colored_indent_levels\1\fenabled\1\rnvimtree\1\0\2\14show_root\2\fenabled\2\15native_lsp\15underlines\1\0\4\verrors\14underline\16information\14underline\rwarnings\14underline\nhints\14underline\17virtual_text\1\0\4\verrors\vitalic\16information\vitalic\rwarnings\vitalic\nhints\vitalic\1\0\1\fenabled\2\1\0\17\14gitgutter\1\rlsp_saga\1\16lsp_trouble\1\15treesitter\2\14dashboard\1\bhop\1\15ts_rainbow\1\15lightspeed\1\rmarkdown\1\15bufferline\1\vbarbar\1\tfern\1\14vim_sneak\1\vneogit\1\14which_key\1\14telescope\1\rgitsigns\1\vstyles\1\0\5\14functions\vitalic\rcomments\vitalic\14variables\tNONE\fstrings\tNONE\rkeywords\vitalic\1\0\3\16term_colors\1\17transparency\1\16colorscheme\21dark_catppuccino\nsetup\15catppuccin\frequire\0", "config", "nvim")
time([[Config for nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\nß\3\0\1\a\0\22\00066\1\0\0009\1\1\0019\1\2\1\a\1\3\0X\0010€6\1\4\0'\3\5\0B\1\2\0029\2\6\0009\3\6\0019\3\a\3\5\2\3\0X\2\2€'\2\b\0X\3\1€'\2\t\0+\3\0\0009\4\6\0009\5\6\0019\5\n\5\5\4\5\0X\4\a€6\4\4\0'\6\v\0B\4\2\0029\4\f\4B\4\1\2\18\3\4\0X\4\16€9\4\r\0009\5\r\0019\5\14\5\4\4\5\0X\4\5€9\4\r\0009\5\r\0019\5\15\5\5\4\5\0X\4\6€6\4\4\0'\6\v\0B\4\2\0029\4\16\4B\4\1\2\18\3\4\0006\4\4\0'\6\17\0B\4\2\0029\4\18\0045\6\19\0=\2\20\6=\3\21\6D\4\2\0K\0\1\0\rlocation\bkey\1\0\0\28calculate_commentstring&ts_context_commentstring.internal\30get_visual_start_location\6V\6v\fcmotion\24get_cursor_location#ts_context_commentstring.utils\nblock\16__multiline\14__default\tline\nctype\18Comment.utils\frequire\20typescriptreact\rfiletype\abo\bvimN\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\rpre_hook\1\0\0\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: stabilize.nvim
time([[Config for stabilize.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14stabilize\frequire\0", "config", "stabilize.nvim")
time([[Config for stabilize.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nÅ\2\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\3=\3\15\2B\0\2\1K\0\1\0\nsigns\17changedelete\1\0\2\ahl\26GitGutterChangeDelete\ttext\6~\14topdelete\1\0\2\ahl\20GitGutterDelete\ttext\bâ€¾\vdelete\1\0\2\ahl\20GitGutterDelete\ttext\6_\vchange\1\0\2\ahl\20GitGutterChange\ttext\bâ”‚\badd\1\0\0\1\0\2\ahl\17GitGutterAdd\ttext\bâ”‚\1\0\1\15debug_mode\1\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: octo.nvim
time([[Config for octo.nvim]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tocto\frequire\0", "config", "octo.nvim")
time([[Config for octo.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: dressing.nvim
time([[Config for dressing.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\1\1\0\0\0\1L\0\2\0\v\0\1\1\0\0\0\1L\0\2\0Š\5\1\0\6\0\27\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0033\4\n\0=\4\v\3=\3\r\0025\3\14\0005\4\15\0=\4\16\0035\4\17\0005\5\18\0=\5\t\0045\5\19\0=\5\5\0045\5\20\0=\5\a\0045\5\21\0=\5\22\0043\5\23\0=\5\v\4=\4\24\0034\4\0\0=\4\25\3=\3\26\2B\0\2\1K\0\1\0\vselect\25format_item_override\fbuiltin\0\15min_height\1\3\0\0\3\5\4š³æÌ\t™³¦þ\3\1\3\0\0\3(\4š³æÌ\t™³¦þ\3\1\3\0\0\3Œ\1\4š³æÌ\t™³¦ÿ\3\1\0\2\rwinblend\3\0\17winhighlight\20Normal:MyNormal\1\0\4\15max_height\4Í™³æ\fÌ™³ÿ\3\rrelative\vcursor\vborder\frounded\vanchor\aNW\fbackend\1\0\0\1\0\2\fenabled\2\16trim_prompt\2\ninput\1\0\0\roverride\0\16win_options\1\0\2\rwinblend\3\n\17winhighlight\5\14min_width\1\3\0\0\3\20\4š³æÌ\t™³¦þ\3\14max_width\1\3\0\0\3Œ\1\4Í™³æ\fÌ™³ÿ\3\1\0\b\19default_prompt\vInput:\fenabled\2\17prefer_width\3(\rrelative\vcursor\vborder\frounded\vanchor\aSW\16insert_only\2\17prompt_align\tleft\nsetup\rdressing\frequire\0", "config", "dressing.nvim")
time([[Config for dressing.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nù\2\0\0\2\0\v\0\0256\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0+\1\1\0=\1\b\0006\0\0\0009\0\1\0+\1\1\0=\1\t\0006\0\0\0009\0\1\0+\1\1\0=\1\n\0K\0\1\0004indent_blankline_show_trailing_blankline_indent*indent_blankline_show_current_context$indent_blankline_use_treesitter\aÂ¦\26indent_blankline_char\1\6\0\0\thelp\rstartify\14dashboard\vpacker\nYanil&indent_blankline_filetype_exclude\1\2\0\0\rterminal%indent_blankline_buftype_exclude\6g\bvim\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vim-markdown', 'vim-markdown-folding'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'SimpylFold'}, { ft = "python" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/huy/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], true)
vim.cmd [[source /Users/huy/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]]
time([[Sourcing ftdetect script at: /Users/huy/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], false)
vim.cmd("augroup END")

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
