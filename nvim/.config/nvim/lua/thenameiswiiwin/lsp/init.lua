-- npm i -g typescript typescript-language-server
local util = require "lspconfig/util"
require "lspconfig".tsserver.setup {
    on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
    end,
        --[=====[
    handlers = {
      ["textDocument/publishDiagnostics"] = function(_, _, params, client_id, _, config)
        local ignore_codes = { 80001, 7016 };
        if params.diagnostics ~= nil then
          local idx = 1
          while idx <= #params.diagnostics do
            if vim.tbl_contains(ignore_codes, params.diagnostics[idx].code) then
              table.remove(params.diagnostics, idx)
            else
              idx = idx + 1
            end
          end
        end
        vim.lsp.diagnostic.on_publish_diagnostics(_, _, params, client_id, _, config)
      end,
    },
    --]=====]
}

-- npm install -g diagnostic-languageserver eslint_d prettier_d_slim prettier
local function on_attach(client)
  print('Attached to ' .. client.name)
end
local dlsconfig = require 'diagnosticls-configs'
dlsconfig.init {
  default_config = false,
  format = true,
  on_attach = on_attach,
}
local eslint = require 'diagnosticls-configs.linters.eslint'
local prettier = require 'diagnosticls-configs.formatters.prettier'
prettier.requiredFiles = {
    '.prettierrc',
    '.prettierrc.json',
    '.prettierrc.toml',
    '.prettierrc.json',
    '.prettierrc.yml',
    '.prettierrc.yaml',
    '.prettierrc.json5',
    '.prettierrc.js',
    '.prettierrc.cjs',
    'prettier.config.js',
    'prettier.config.cjs',
  }
dlsconfig.setup {
  ['javascript'] = {
    linter = eslint,
    formatter = { prettier }
  },
  ['javascriptreact'] = {
    linter = { eslint },
    formatter = { prettier }
  },
  ['css'] = {
    formatter = prettier
  },
  ['html'] = {
    formatter = prettier
  },
}

require "trouble".setup {}

require('lspkind').init({})

local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
    local opts = {
      capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    }
    server:setup(opts)
  end
)
