-- Options
local Type = {GLOBAL_OPTION = "o"}
local add_options = function(option_type, options)
	if type(options) ~= "table" then
		error "options should be a type of 'table'"
		return
	end
	local vim_option = vim[option_type]
	for key, value in pairs(options) do
		vim_option[key] = value
	end
end
local Option = {}
Option.g = function(options)
	add_options(Type.GLOBAL_OPTION, options)
end

Option.g {
	termguicolors = true,
	tabstop = 4, 
	softtabstop = 4,
	shiftwidth = 4,
	expandtab = true,
	smartindent = true,
	number = true,
	numberwidth = 4,
	relativenumber = true,
	signcolumn = "yes",
	swapfile = false,
	backup = false,
	undodir = "~/.config/nvim/undodir",
	undofile = true,
	incsearch = true,
	hlsearch = false,
	ignorecase = true,
	smartcase = true,
	wrap = false,
	splitbelow = true,
	splitright = true,
	hidden = true,
	scrolloff = 999,
	showmode = false,
	updatetime = 250 ,
	encoding = "UTF-8",
	mouse = "a",
    errorbells = true,
    wildmode = "longest:full,full",
    list = true,
    listchars = "tab:▸·,trail:·",
    clipboard = "unnamedplus",
    background = "dark",
}
vim.g.clipboard = {
  name = "macOS-clipboard",
  copy = {["+"] = "pbcopy", ["*"] = "pbcopy"},
  paste = {["+"] = "pbpaste", ["*"] = "pbpaste"},
  cache_enabled = false
}

vim.g.mapleader = " "

vim.g.one_allow_italics = true
vim.g.override_nvim_web_devicons = true
vim.g.table_mode_corner = "|"

return Option