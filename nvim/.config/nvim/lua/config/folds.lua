-- ~/.config/nvim/lua/config/foldtext.lua
local M = {}

function M.foldText()
  local fs = vim.api.nvim_get_vvar 'foldstart'
  local line = vim.fn.getline(fs)
  line = line:gsub('\t', string.rep(' ', vim.bo.tabstop))
  return line .. ' '
end

return M
