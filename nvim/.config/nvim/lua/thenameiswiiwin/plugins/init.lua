Plug = require "thenameiswiiwin.vimplug"

Plug.begin("~/.config/nvim/plugged")

-- Colors
Plug "morhetz/gruvbox"
Plug "mhartington/oceanic-next"
Plug "Mofiqul/dracula.nvim"

-- LSP
Plug "neovim/nvim-lspconfig"
Plug 'williamboman/nvim-lsp-installer'
Plug "folke/trouble.nvim"
Plug "onsails/lspkind-nvim"
Plug "creativenull/diagnosticls-configs-nvim"

-- Completion
Plug "hrsh7th/nvim-cmp"
Plug "hrsh7th/cmp-buffer"
Plug "hrsh7th/cmp-path"
Plug "hrsh7th/cmp-nvim-lsp"
Plug "L3MON4D3/LuaSnip"
Plug "saadparwaiz1/cmp_luasnip"
Plug "David-Kunz/cmp-npm"

-- File Management
Plug "nvim-lua/popup.nvim"
Plug "nvim-lua/plenary.nvim"
Plug "nvim-telescope/telescope.nvim"
Plug("nvim-telescope/telescope-fzf-native.nvim", { run = "make" })
Plug "nvim-telescope/telescope-file-browser.nvim"
Plug "sudormrfbin/cheatsheet.nvim"
Plug "kyazdani42/nvim-tree.lua"
Plug "ThePrimeagen/harpoon"

-- Treesitter
Plug("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate"})
Plug "JoosepAlviste/nvim-ts-context-commentstring"
Plug "MaxMEllon/vim-jsx-pretty" -- fiix indentation in jsx until treesitter can
Plug "jxnblk/vim-mdx-js"
-- Plug "code-biscuits/nvim-biscuits"

-- Custom Text Objects
Plug "michaeljsmith/vim-indent-object" -- gcii gcaI
Plug "kana/vim-textobj-user"

-- Status Line
Plug "hoob3rt/lualine.nvim"
Plug "kyazdani42/nvim-web-devicons"

-- tmux plugins
Plug "christoomey/vim-tmux-navigator"
Plug "preservim/vimux"

-- tpope plugins
Plug "tpope/vim-projectionist"
Plug "tpope/vim-unimpaired" -- helpful shorthand like [b ]b
Plug "tpope/vim-surround"
Plug "tpope/vim-repeat"
Plug "tpope/vim-commentary"
Plug "tpope/vim-eunuch"
Plug "tpope/vim-sleuth"
Plug "tpope/vim-fugitive"

Plug "editorconfig/editorconfig-vim"
Plug "lewis6991/gitsigns.nvim"
Plug "karb94/neoscroll.nvim"
Plug("vimwiki/vimwiki", { on = "VimwikiIndex" })
Plug("norcalli/nvim-colorizer.lua", { branch = "color-editor" })
Plug "machakann/vim-highlightedyank"
Plug "wesQ3/vim-windowswap" -- <leader>ww
Plug "justinmk/vim-sneak"
Plug "dstein64/vim-startuptime"
Plug "akinsho/nvim-bufferline.lua"
Plug "windwp/nvim-autopairs"
Plug "miyakogi/conoline.vim"
Plug "yamatsum/nvim-cursorline"
Plug "mattn/emmet-vim"
Plug "GustavoKatel/sidebar.nvim"

Plug "folke/zen-mode.nvim"
Plug "junegunn/limelight.vim"
Plug("gelguy/wilder.nvim", { run = ":UpdateRemotePlugins" })
Plug "stevearc/dressing.nvim"

Plug "vim-pandoc/vim-pandoc"
Plug "vim-pandoc/vim-pandoc-syntax"

Plug.ends()
