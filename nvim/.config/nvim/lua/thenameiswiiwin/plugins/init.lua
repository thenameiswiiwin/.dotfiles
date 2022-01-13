local Plug = require "thenameiswiiwin.util.vimplug"

Plug.begin("~/.config/nvim/plugged")

-- Colors
Plug "folke/tokyonight.nvim"

-- Telescopes
Plug "nvim-lua/plenary.nvim"
Plug "nvim-telescope/telescope.nvim"

-- LSP
Plug "neovim/nvim-lspconfig"
Plug "nvim-lua/lsp-status.nvim"
Plug "hrsh7th/nvim-cmp"
Plug "hrsh7th/cmp-nvim-lsp"
Plug "L3MON4D3/LuaSnip"
Plug "saadparwaiz1/cmp_luasnip"
Plug "f3fora/cmp-spell"

-- Telescope
Plug "nvim-telescope/telescope.nvim"
Plug "nvim-telescope/telescope-github.nvim"
Plug "nvim-telescope/telescope-packer.nvim"
Plug "nvim-telescope/telescope-node-modules.nvim"
Plug "nvim-telescope/telescope-fzy-native.nvim"

Plug.ends()
