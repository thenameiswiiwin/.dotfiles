local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local Util = require 'lazyvim.util'
local Snacks = require 'snacks'

keymap.set('n', '<C-h>', '<Cmd>NvimTmuxNavigateLeft<CR>', { silent = true })
keymap.set('n', '<C-j>', '<Cmd>NvimTmuxNavigateDown<CR>', { silent = true })
keymap.set('n', '<C-k>', '<Cmd>NvimTmuxNavigateUp<CR>', { silent = true })
keymap.set('n', '<C-l>', '<Cmd>NvimTmuxNavigateRight<CR>', { silent = true })
keymap.set('n', '<C-\\>', '<Cmd>NvimTmuxNavigateLastActive<CR>', { silent = true })
keymap.set('n', '<C-Space>', '<Cmd>NvimTmuxNavigateNavigateNext<CR>', { silent = true })

keymap.set('n', 'x', '"_x', { desc = 'Delete character under the cursor without yanking it' })

-- Increment / Decrement
keymap.set('n', '+', '<C-a>', { desc = 'Increment the number under the cursor' })
keymap.set('n', '-', '<C-x>', { desc = 'Decrement the number under the cursor' })

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G', { desc = 'Select all text in the buffer' })

-- Borderless terminal
vim.keymap.set('n', '<C-/>', function()
  Snacks.terminal.get(nil, { border = 'none' })
end, { desc = 'Term with border' })

-- Borderless lazygit
vim.keymap.set('n', '<leader>gg', function()
  Snacks.terminal.get('lazygit', { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false, border = 'none' })
end, { desc = 'Lazygit (root dir)' })

keymap.del({ 'n', 'i', 'v' }, '<A-j>')
keymap.del({ 'n', 'i', 'v' }, '<A-k>')
keymap.del('n', '<C-Left>')
keymap.del('n', '<C-Down>')
keymap.del('n', '<C-Up>')
keymap.del('n', '<C-Right>')

keymap.set('n', '<M-h>', '<Cmd>lua require("tmux").resize_left()<CR>', { silent = true })
keymap.set('n', '<M-j>', '<Cmd>lua require("tmux").resize_bottom()<CR>', { silent = true })
keymap.set('n', '<M-k>', '<Cmd>lua require("tmux").resize_top()<CR>', { silent = true })
keymap.set('n', '<M-l>', '<Cmd>lua require("tmux").resize_right()<CR>', { silent = true })

local set_keymap = vim.api.nvim_set_keymap

-- Window Management
keymap.set('n', '<Leader>sh', '<C-W>s', { desc = 'Split Window Below', remap = true })
keymap.set('n', '<leader>sv', '<C-W>v', { desc = 'Split Window Right', remap = true })
keymap.set('n', '<leader>sx', '<C-W>c', { desc = 'Delete Window', remap = true })

-- Tabs
keymap.set('n', 'te', ':tabedit', opts)
keymap.set('n', '<tab>', ':tabnext<Return>', opts)
keymap.set('n', '<s-tab>', ':tabprev<Return>', opts)

-- package-info keymaps
set_keymap(
  'n',
  '<leader>cpt',
  "<cmd>lua require('package-info').toggle()<cr>",
  { silent = true, noremap = true, desc = 'Toggle' }
)
set_keymap(
  'n',
  '<leader>cpd',
  "<cmd>lua require('package-info').delete()<cr>",
  { silent = true, noremap = true, desc = 'Delete package' }
)
set_keymap(
  'n',
  '<leader>cpu',
  "<cmd>lua require('package-info').update()<cr>",
  { silent = true, noremap = true, desc = 'Update package' }
)
set_keymap(
  'n',
  '<leader>cpi',
  "<cmd>lua require('package-info').install()<cr>",
  { silent = true, noremap = true, desc = 'Install package' }
)
set_keymap(
  'n',
  '<leader>cpc',
  "<cmd>lua require('package-info').change_version()<cr>",
  { silent = true, noremap = true, desc = 'Change package version' }
)
