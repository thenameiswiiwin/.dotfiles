vim.g.mapleader = ' '

local opt = vim.opt

opt.conceallevel = 0
opt.laststatus = 3
opt.cmdheight = 0

vim.g.root_spec = { 'cwd' }
vim.g.omni_sql_no_default_maps = 1
vim.g.python3_host_prog = '/usr/bin/python3'

vim.opt.foldtext = 'v:lua.require("config.foldtext").foldText()'
