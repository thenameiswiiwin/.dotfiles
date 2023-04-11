local vim = vim
local api = vim.api
local H = {}
function H.map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
function H.mapBuf(buf, mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_buf_set_keymap(buf, mode, lhs, rhs, options)
end

function H.keymap(modes, mapping, func, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.keymap.set(modes, mapping, func, opts)
end

H.map("n", "Q", "<nop>")
H.map("n", "q", "<nop>")

H.map("n", "<Leader>H", "<cmd>TSHighlightCapturesUnderCursor<cr>")
H.keymap({ "n" }, "<c-f>", function()
	require("thenameiswiiwin.telescope").find_files()
end)
H.map("n", "<Leader>h", "<cmd>lua require('thenameiswiiwin.telescope').help_tags()<cr>")
H.map("n", "<Leader>c", "<cmd>lua require('thenameiswiiwin.telescope').colors()<cr>")
H.map("n", "<Leader>a", "<cmd>Telescope live_grep<cr>")
H.map("n", "<Leader>b", "<cmd>Telescope buffers<cr>")
H.map("n", "z=", "<cmd>Telescope spell_suggest<cr>")
-- H.map("n", "<Leader>f", "<cmd>Format<cr>")
H.map("n", "H", "^")
H.map("n", "L", "g_")
H.map("v", "H", "^")
H.map("v", "L", "g_")
H.map("n", "J", "5j")
H.map("n", "K", "5k")
-- H.map("v", "J", "5j")
-- H.map("v", "K", "5k")
H.map("v", "gJ", ":join<cr>")
-- H.map("n", ";", ":", {nowait = true, silent = false})
-- H.map("n", "<Space>", "za")
-- H.map("n", "<Space>", "za")
H.map("n", "<Leader>.", "<cmd>bnext<cr>")
H.map("n", "<Leader>,", "<cmd>bprevious<cr>")
H.map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
H.map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })
H.map("v", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
H.map("v", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- no highlight after search
H.map("n", "<Leader>nh", ":noh<CR>")

-- Copilot
H.map("i", "<C-b>", ":copilot#Accept('\\<CR>')<CR>", { silent = true })

-- H.map("v", "<leader><CR>", ":so ~/.config/nvim/init.lua<CR>")
H.map("v", "<Leader>y", '"+y"')
H.map("v", "J", ":m '>+1<CR>gv=gv")
H.map("v", "K", ":m '<-2<CR>gv=gv")
H.map("n", "<leader>x", ":!chmod +x %<cr>")
-- H.map("n", "<silent><C-f>", ":silent !tmux neww tmux-sessionizer<CR>")
H.map("n", "<leader>pv", ":Ex<CR>")
H.map("x", "<Leader>p", '"_dP')

H.map("n", "<Leader>d", '"_d')
H.map("v", "<Leader>d", '"_d')
H.map("n", "<Esc>", "<cmd>noh<cr>")

H.map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
H.map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
H.map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
H.map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")

H.map("i", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
H.map("i", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
H.map("i", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
H.map("i", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")

H.map("t", "<C-j>", "<c-\\><c-n>:TmuxNavigateDown<cr>")
H.map("t", "<C-k>", "<c-\\><c-n>:TmuxNavigateUp<cr>")
H.map("t", "<C-l>", "<c-\\><c-n>:TmuxNavigateRight<cr>")
H.map("t", "<C-h>", "<c-\\><c-n>:TmuxNavigateLeft<CR>")

H.map("n", "<Leader>tm", "<cmd>TableModeToggle<cr>")
H.map("n", "<Leader>u", "<cmd>PackerUpdate<cr>")

for i = 1, 9 do
	H.map("n", "<leader>" .. i, ':lua require"bufferline".go_to_buffer(' .. i .. ")<CR>")
	H.map("t", "<leader>" .. i, '<C-\\><C-n>:lua require"bufferline".go_to_buffer(' .. i .. ")<CR>")
end

vim.cmd("cnoreabbrev <silent> x lua require('thenameiswiiwin.commands').BufDel()")

-- Show package versions
H.map("n", "<leader>ns", ":lua require('package-info').show()<CR>")

-- Hide package versions
H.map("n", "<leader>nc", ":lua require('package-info').hide()<CR>")

-- Update package on line
H.map("n", "<leader>nu", ":lua require('package-info').update()<CR>")

-- Delete package on line
H.map("n", "<leader>nd", ":lua require('package-info').delete()<CR>")

-- Install a new package
H.map("n", "<leader>ni", ":lua require('package-info').install()<CR>")

-- Reinstall dependencies
H.map("n", "<leader>nr", ":lua require('package-info').reinstall()<CR>")

-- Install a different package version
H.map("n", "<leader>np", ":lua require('package-info').change_version()<CR>")

return H
