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

return M
