return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "json-lsp",
        "lua-language-server",
        "prettierd",
        "pyright",
        "ruff-lsp",
        "rust-analyzer",
        "stylua",
        "shellcheck",
        "shfmt",
        "tailwindcss-language-server",
      },
    },
  },
}
