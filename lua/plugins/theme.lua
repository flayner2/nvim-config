return { -- add gruvbox
  { "sainnhe/gruvbox-material" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },

  -- disable catppuccin
  { "catppuccin", enabled = false },

  -- disable tokyonight
  { "folke/tokyonight.nvim", enabled = false },
}
