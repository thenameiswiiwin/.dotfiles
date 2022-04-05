local ts = require "nvim-treesitter.configs"
local php = require "nvim-treesitter.configs"

local parser_config = require('nvim-treesitter.parsers').get_parser_configs();
parser_config.solidity = {
  install_info = {
    url = '~/code/JoranHonig/tree-sitter-solidity/', -- local path or git repo
    files = { 'src/parser.c' },
  },
}

ts.setup {
  context_commentstring = {enable = true},
  ensure_installed = "all",
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  indent = {enable = true},
  query_linter = {
    enable = true,
    use_virtual_text = true,
    lint_events = {"BufWrite", "CursorHold"}
  }
}

php.setup {
  ensure_installed = 'maintained',
  indent = {
    enable = { 'php', 'html', 'blade' },
  },
  highlight = {
    enable = true,
    disable = { 'NvimTree' },
    additional_vim_regex_highlighting = true,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['ia'] = '@parameter.inner',
        -- ['aa'] = {
        --   php = "" '@parameter.outer',

        --   python = "(function_definition) @function",
        --   cpp = "(function_definition) @function",
        --   c = "(function_definition) @function",
        --   java = "(method_declaration) @function",
        -- },
      },
    },
  },
  context_commentstring = {
    enable = true,
  },
}
