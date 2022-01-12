local vim = vim
local api = vim.api
local M = {}
function M.map(mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
function M.mapBuf(buf, mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_buf_set_keymap(buf, mode, lhs, rhs, options)
end

M.map("n", "Q", "<nop>")
M.map("n", "q", "<nop>") 

M.map("n", "<leader>pv", ":Ex<CR>")
M.map("n", "<Leader><CR>", ":so ~/.config/nvim/init.lua<CR>")
M.map("n", "<leader>vwh", ":h <C-R>=expand('<cword>')<CR><CR>")
M.map("n", "<leader>bs", "/<C-R>=escape(expand('<cWORD>'), '/')<CR><CR>")
M.map("n", "<leader>u", ":UndotreeShow<R")
M.map("n", "<Leader>+", ":vertical resize +5<CR>")
M.map("n", "<Leader>-", ":vertical resize -5<CR>")
M.map("n", "<Leader>rp", ":resize 100<CR>")
M.map("n", "<Leader>ee", "oif err != nil {<CR>log.Fatalf('%+v\n', err)<CR>}<CR><esc>kkI<esc>")
M.map("n", "<Leader>cpu", "a%' PRIu64 '<esc>")
-- M.map("n", "<leader>s", ":%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>")
M.map("n", "<leader>gt", "<Plug>PlenaryTestFile")
M.map("n", "<leader>gll", ":let g:_search_term = expand('%')<CR><bar>:Gclog -- %<CR>:call search(g:_search_term)<CR>")
M.map("n", "<leader>gln", ":cnext<CR>:call search(_search_term)<CR>")
M.map("n", "<leader>glp", ":cprev<CR>:call search(_search_term)<CR>")

M.map("n", "<leader>x", ":silent !chmod +x %<CR>")

M.map("v", "K", ":m '<-2<CR>gv=gv")
M.map("v", "J", ":m '>+1<CR>gv=gv")

M.map("n", "Y", "yg$")
M.map("n", "n", "nzzzv")
M.map("n", "N", "Nzzzv")
M.map("n", "J", "mzJ`z")

M.map("x", "<leader>p", '"_dP')

M.map("n", "<leader>y", '"+y')
M.map("v", "<leader>y", '"+y')
M.map("n", "<leader>Y", 'gg"+yG')

M.map("n", "<leader>d", '"_d')
M.map("v", "<leader>d", '"_d')

M.map("n", "<Leader>ww", "ofunction wait(ms: number): Promise<void> {<CR>return new Promise(res => setTimeout(res, ms));<CR>}<esc>k=i{<CR>")

M.map("i", "<C-c>", "<esc>")

M.map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
M.map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
M.map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
M.map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")

M.map("i", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
M.map("i", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
M.map("i", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
M.map("i", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")

M.map("t", "<C-j>", "<c-\\><c-n>:TmuxNavigateDown<cr>")
M.map("t", "<C-k>", "<c-\\><c-n>:TmuxNavigateUp<cr>")
M.map("t", "<C-l>", "<c-\\><c-n>:TmuxNavigateRight<cr>")
M.map("t", "<C-h>", "<c-\\><c-n>:TmuxNavigateLeft<CR>")

M.map("n", "<Leader>tm", "<cmd>TableModeToggle<cr>")

return M
