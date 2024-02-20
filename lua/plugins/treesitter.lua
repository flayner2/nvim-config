return {
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "css",
        "csv",
        "gitignore",
        "glsl",
        "html",
        "javascript",
        "latex",
        "lua",
        "odin",
        "query",
        "r",
        "regex",
        "svelte",
        "sql",
        "templ",
        "toml",
        "tsv",
        "vim",
      },
    },
  },
}
