vim.g.mapleader = " "
vim.o.tgc = true

require("thenameiswiiwin.plugins")
require("thenameiswiiwin.options")
require("thenameiswiiwin.mappings")
require("thenameiswiiwin.commands")
require("thenameiswiiwin.completion")
require("thenameiswiiwin.colors")

require("thenameiswiiwin.autocmds")
require("thenameiswiiwin.folds")
require("thenameiswiiwin.filetree")
require("thenameiswiiwin.statusline")
require("thenameiswiiwin.treesitter")
-- require "thenameiswiiwin.formatting"
-- require "thenameiswiiwin.lsp"
require("thenameiswiiwin.null_ls")
require("thenameiswiiwin.lsp_mason")
