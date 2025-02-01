return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- Web dev
        "bash-language-server",
        "css-lsp",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "eslint-lsp",
        "html-lsp",
        "json-lsp",
        "lua-language-server",
        "prisma-language-server",
        "prettier",
        "prettierd",
        "stylelint",
        "typescript-language-server",
        "tailwindcss-language-server",
        -- Markdown, YAML, etc.
        "marksman",
        "yaml-language-server",
        -- Python
        "pyright",
        "debugpy",
        "ruff",
        "ruff-lsp",
        -- SQL
        "sql-formatter",
        "sqlfluff",
        -- PHP
        "intelephense",
        "php-cs-fixer",
        "phpstan",
        -- Additional general dev tools
        "shfmt",
        "shellcheck",
        "stylua",   -- Lua formatter
      },
    },
  },
}
