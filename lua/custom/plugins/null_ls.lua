return {
  'jose-elias-alvarez/null-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'
    local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

    null_ls.setup {
      on_attach = function(client, bufnr)
        if client.supports_method 'textDocument/formatting' then
          vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
          vim.api.nvim_create_autocmd('BufWritePre', {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format { async = false }
            end,
          })
        end
      end,
      sources = {
        -- Diagnostics
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.diagnostics.ruff,

        -- Code actions
        null_ls.builtins.code_actions.eslint_d,

        -- Completion
        -- null_ls.builtins.completion.spell,

        -- Formatting
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.rustfmt,
        null_ls.builtins.formatting.ruff.with {
          extra_args = { '--ignore F841,F401' },
        },
        null_ls.builtins.formatting.sqlfluff.with {
          extra_args = { '--dialect', 'mysql' },   -- change to your dialect
          null_ls.builtins.diagnostics.sqlfluff.with {
            extra_args = { '--dialect', 'mysql' }, -- change to your dialect
          },
        },
      },
    }
  end,
}
