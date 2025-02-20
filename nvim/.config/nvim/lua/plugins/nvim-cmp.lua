-- disable custom config
if true then
  return {}
end

return {
  {
    'hrsh7th/nvim-cmp',
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.completion.autocomplete = false
      opts.mapping['<CR>'] = nil
      opts.sources = cmp.config.sources {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
      },
      opts.window = {
        completion = {
          border = {
            { '󱐋', 'WarningMsg' },
            { '─', 'Comment' },
            { '╮', 'Comment' },
            { '│', 'Comment' },
            { '╯', 'Comment' },
            { '─', 'Comment' },
            { '╰', 'Comment' },
            { '│', 'Comment' },
          },
          scrollbar = false,
          winblend = 0,
        },
        documentation = {
          border = {
            { '󰙎', 'DiagnosticHint' },
            { '─', 'Comment' },
            { '╮', 'Comment' },
            { '│', 'Comment' },
            { '╯', 'Comment' },
            { '─', 'Comment' },
            { '╰', 'Comment' },
            { '│', 'Comment' },
          },
          scrollbar = false,
          winblend = 0,
        },
      }
    end,
  },
}
