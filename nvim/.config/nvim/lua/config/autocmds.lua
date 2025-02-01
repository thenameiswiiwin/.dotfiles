-- autocmds.lua
-- Custom autocmds (fired on VeryLazy)
-- e.g. disable default wrap/spell or your own triggers

-- Example: Trim trailing whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    local save = vim.fn.winsaveview()
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.winrestview(save)
  end,
  desc = "Trim trailing whitespace on save",
})
