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

M.map("n", "<leader>pv", ":Ex<CR>")

-- LSP
M.map("n", "<leader>gd",    "<cmd>lua vim.lsp.buf.definition()<CR>")
M.map("n", "<leader>gh",    "<cmd>lua vim.lsp.buf.hover()<CR>")
M.map("n", "<leader>gca",   "<cmd>:Telescope lsp_code_actions<CR>")
M.map("n", "<leader>gD ",   "<cmd>lua vim.lsp.buf.implementation()<CR>")
M.map("n", "<leader><c-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
M.map("n", "<leader>gr",    "<cmd>lua vim.lsp.buf.references()<CR>")
M.map("n", "<leader>gR",    "<cmd>lua vim.lsp.buf.rename()<CR>")
M.map("n", "<leader>leader>fo", "<cmd>lua vim.lsp.buf.formatting()<CR>")

M.map("n", "<leader>xx", "<cmd>TroubleToggle<cr>")
M.map("n", "<leader>xw", "<cmd>TroubleToggle lsp_workspace_diagnostics<cr>")
M.map("n", "<leader>xd", "<cmd>TroubleToggle lsp_document_diagnostics<cr>")
M.map("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>")
M.map("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>")
M.map("n", "gR", "<cmd>TroubleToggle lsp_references<cr>")

-- Sidebar
M.map("n", "<leader>sb", "<cmd>SidebarNvimToggl<cr>")

-- Bufferline
M.map("n", "<leader>gb", ":BufferLinePick<CR>")

-- Telescope
M.map("n", "<leader>ps", ":lua require('telescope.builtin').grep_string( { search = vim.fn.input('Grep for > ') } )<cr>")
M.map("n", "<leader>ff", ":lua require'telescope.builtin'.find_files{ hidden = true }<cr>")
M.map("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
-- M.map("n", <Leader>fs", ":lua require'telescope.builtin'.file_browser{ cwd = vim.fn.expand('%:p:h') }<cr>")
M.map("n", "<leader>fs", "<cmd>lua require 'telescope'.extensions.file_browser.file_browser( { path = vim.fn.expand('%:p:h') } )<CR>")
M.map("n", "<leader>fc", ":lua require'telescope.builtin'.git_status{}<cr>")
M.map("n", "<leader>cb", ":lua require'telescope.builtin'.git_branches{}<cr>")
M.map("n", "<leader>fr", ":lua require'telescope.builtin'.resume{}<CR>")
M.map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep( { file_ignore_patterns = { '**/*.spec.js' } } )<cr>")
-- M.map("n", "<leader>fgi", "<cmd>lua require('telescope.builtin').live_grep( { file_ignore_patterns = { vim.fn.input("Ignore pattern > ") } } )<cr>")
M.map("n", "<leader>fgd", ":lua require'telescope.builtin'.live_grep{ search_irs = { 'slices/admin' } }")

M.map("n", "<leader>cheat", ":Cheatsheet<cr>")
-- M.map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>d")

-- Harpoon
M.map("n", "<leader>a", ":lua require('harpoon.mark').add_file()<CR>")
M.map("n", "<leader>,", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
M.map("n", "<leader>1", ":lua require('harpoon.ui').nav_file(1)<CR>")
M.map("n", "<leader>2", ":lua require('harpoon.ui').nav_file(2)<CR>")
M.map("n", "<leader>3", ":lua require('harpoon.ui').nav_file(3)<CR>")
M.map("n", "<leader>4", ":lua require('harpoon.ui').nav_file(4)<CR>")

-- Vimwiki
M.map("n", "<leader>vw", "VimwikiIndex<CR>")
M.map("n", "<leader>tl", "VimwikiToggleListItem<cr>")

return M
