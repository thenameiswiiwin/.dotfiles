return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = {
        'bash',
        'css',
        'diff',
        'dockerfile',
        'html',
        'http',
        'javascript',
        'json',
        'json5',
        'lua',
        'markdown',
        'markdown_inline',
        "php",
        'prisma',
        'python',
        'query',
        'regex',
        'scss',
        'sql',
        'toml',
        'tsx',
        'typescript',
        'vim',
        'yaml',
      },
      -- highlight = { enable = true },
      config = function(_, opts)
        require('nvim-treesitter.configs').setup(opts)

        -- MDX
        vim.filetype.add {
          extension = {
            mdx = 'mdx',
          },
        }
        vim.treesitter.language.register('markdown', 'mdx')
      end,
    },
  },
  {
    'nvim-treesitter/playground',
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
    enabled = false,
  },
}
