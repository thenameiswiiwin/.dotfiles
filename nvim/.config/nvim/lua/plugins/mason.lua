return {
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        'volar',
        'tsserver',
        'pylsp',
        'bashls',
        'html',
        'cssls',
        'vimls',
        'svelte',
        'zls',
      },
      capabilities = {
        textDocument = {
          completion = {
            completionItem = {
              snippetSupport = true,
              resolveSupport = {
                properties = { 'documentation', 'detail', 'additionalTextEdits', 'documentHighlight' },
              },
            },
          },
        },
      },
    },
  },
}
