return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- Don't use signs/icons in the left bar
    signs = false,
    highlight = {
      -- Don't highlight the text after the keyword
      after = {},
      -- Only highlight the keyword, ignore other characters
      keyword = "bg",
    }
  }
}
