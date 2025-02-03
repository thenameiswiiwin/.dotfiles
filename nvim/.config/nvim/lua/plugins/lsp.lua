-- Disable "No information available" notification on hover
-- plus define border for hover window
local vim = vim
vim.lsp.handlers['textDocument/hover'] = function(_, result, ctx, config)
  config = config
    or {
      border = {
        { '╭', 'Comment' },
        { '─', 'Comment' },
        { '╮', 'Comment' },
        { '│', 'Comment' },
        { '╯', 'Comment' },
        { '─', 'Comment' },
        { '╰', 'Comment' },
        { '│', 'Comment' },
      },
    }
  config.focus_id = ctx.method
  if not (result and result.contents) then
    return
  end
  local markdown_lines = vim.lsp.util.convert_input_to_markdown_lines(result.contents)
  if vim.tbl_isempty(markdown_lines) then
    return
  end
  return vim.lsp.util.open_floating_preview(markdown_lines, 'markdown', config)
end

-- Helper: determine default node_modules directory (if needed by some servers)
local util = require 'lspconfig.util'
local default_node_modules = ''
do
  local found = vim.fs.find('node_modules', { path = vim.fn.getcwd(), upward = true })
  if found and #found > 0 then
    default_node_modules = vim.fs.dirname(found[1])
  end
end

-- Setup runtime path for lua_ls
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        nxls = {},
        vtsls = {
          root_dir = function(file)
            return vim.fs.dirname(vim.fs.find('.git', { path = file, upward = true })[1])
              or util.root_pattern('.git', 'package.json', 'tsconfig.json')(file)
          end,
          single_file_support = true,
          filetypes = {
            'javascript',
            'javascriptreact',
            'javascript.jsx',
            'typescript',
            'typescriptreact',
            'typescript.tsx',
          },
          settings = {
            complete_function_calls = true,
            vtsls = {
              enableMoveToFileCodeAction = true,
              autoUseWorkspaceTsdk = true,
              experimental = {
                completion = { enableServerSideFuzzyMatch = true },
              },
            },
            typescript = {
              updateImportsOnFileMove = 'always',
              suggest = { completeFunctionCalls = true },
              inlayHints = {
                enumMemberValues = { enabled = true },
                functionLikeReturnTypes = { enabled = true },
                parameterNames = { enabled = 'literals' },
                parameterTypes = { enabled = true },
                propertyDeclarationTypes = { enabled = true },
                variableTypes = { enabled = false },
              },
            },
            referencesCodeLens = {
              showOnAllFunctions = true,
              enabled = true,
            },
          },
        },
        sourcekit = {
          capabilities = {
            workspace = {
              didChangeWatchedFiles = {
                dynamicRegistration = true,
              },
            },
          },
        },
        emmet_ls = {
          cmd = { 'emmet-ls', '--stdio' },
          filetypes = { 'html', 'css', 'scss' },
          root_dir = function()
            return vim.loop.cwd()
          end,
          settings = {},
        },
        dartls = {},
        jsonls = {
          cmd = { 'vscode-json-language-server', '--stdio' },
          filetypes = { 'json', 'jsonc' },
          settings = {
            json = {
              schemas = {
                {
                  fileMatch = { 'package.json' },
                  url = 'https://json.schemastore.org/package.json',
                },
                {
                  fileMatch = { 'manifest.json', 'manifest.webmanifest' },
                  url = 'https://json.schemastore.org/web-manifest-combined.json',
                },
                {
                  fileMatch = { 'tsconfig*.json' },
                  url = 'https://json.schemastore.org/tsconfig.json',
                },
                {
                  fileMatch = { '.prettierrc', '.prettierrc.json', 'prettier.config.json' },
                  url = 'https://json.schemastore.org/prettierrc.json',
                },
                {
                  fileMatch = { '.eslintrc', '.eslintrc.json' },
                  url = 'https://json.schemastore.org/eslintrc.json',
                },
                {
                  fileMatch = { '.babelrc', '.babelrc.json', 'babel.config.json' },
                  url = 'https://json.schemastore.org/babelrc.json',
                },
                {
                  fileMatch = { 'lerna.json' },
                  url = 'https://json.schemastore.org/lerna.json',
                },
                {
                  fileMatch = { 'now.json', 'vercel.json' },
                  url = 'https://json.schemastore.org/now.json',
                },
                {
                  fileMatch = { '.stylelintrc', '.stylelintrc.json', 'stylelint.config.json' },
                  url = 'http://json.schemastore.org/stylelintrc.json',
                },
              },
            },
          },
        },
        angularls = {
          root_dir = util.root_pattern('angular.json', 'project.json'),
        },
        volar = {
          init_options = {
            typescript = {
              tsdk = default_node_modules .. '/typescript/lib',
            },
          },
        },
        lua_ls = {
          settings = {
            Lua = {
              runtime = {
                version = 'LuaJIT',
                path = runtime_path,
              },
              diagnostics = { globals = { 'vim' } },
              telemetry = { enable = false },
              workspace = {
                library = vim.api.nvim_get_runtime_file('', true),
              },
            },
          },
        },
      },
    },
  },
}
