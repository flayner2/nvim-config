local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

local servers = { "clangd", "cssls", "eslint", "gopls", "html", "lua_ls", "ols", "pyright", "ruff_lsp", "rust_analyzer",
  "svelte",
  "tsserver", "tailwindcss" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- additional configs
lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

lspconfig.ols.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    enable_format = true,
    enable_hover = true,
    enable_snippets = true,
    enable_semantic_tokens = true,
    enable_inlay_hints = true,
    enable_procedure_snippets = true
  }
}

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    pyright = {
      -- Using Ruff's import organizer
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { '*' },
      },
    },
  }
}

lspconfig.ruff_lsp.setup {
  on_attach = function(client, bufnr)
    if client.name == 'ruff_lsp' then
      -- Disable hover in favor of Pyright
      client.server_capabilities.hoverProvider = false
    end

    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}
