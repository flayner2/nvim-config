local M = {}

M.treesitter = {
  ensure_installed = {
    "css",
    "csv",
    "glsl",
    "go",
    "gomod",
    "gowork",
    "html",
    "javascript",
    "json",
    "json5",
    "lua",
    "markdown",
    "markdown_inline",
    "odin",
    "python",
    "rust",
    "svelte",
    "templ",
    "toml",
    "tsv",
    "tsx",
    "typescript",
    "yaml"
  },
  indent = {
    enable = true,
  }
}

M.mason = {
  ensure_installed = {
    "css-lsp",
    "eslint-lsp",
    "html-lsp",
    "lua-language-server",
    "prettierd",
    "pyright",
    "ruff-lsp",
    "rust-analyzer",
    "shfmt",
    "svelte-language-server",
    "tailwindcss-language-server",
    "typescript-language-server",
  }
}

-- M.cmp = {
--   mapping = {
--     ['<Tab>'] = require('cmp').mapping.confirm({ select = true }),
--     ['<Up>'] = require('cmp').mapping.select_prev_item(),
--     ['<Down>'] = require('cmp').mapping.select_next_item(),
--   },
-- }

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
