local ok, lspkind = pcall(require, "lspkind")
if not ok then
  return
end

lspkind.init()

local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = {
    { name = "nvim_lua" },
    { name = "nvim_lsp", keyword_length = 3 },
    { name = "path" },
    { name = "luasnip" },
    { name = "buffer" },
  },
  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        buffer = "[buf]",
        nvim_lsp = "[LSP]",
        nvim_lua = "[api]",
        path = "[path]",
        luasnip = "[snip]",
        gh_issues = "[issues]",
        tn = "[TabNine]",
      },
    },
  },
  experimental = {
    native_menu = false,
    ghost_text = false,
  }
})

