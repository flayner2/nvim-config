local M = {}

M.abc = {
  n = {
    -- split windows
    ["<leader>|"] = { "<C-W>v", "vertical split" },
    ["<leader>-"] = { "<C-W>s", "horizontal split" },
    -- resize windows
    ["<C-Up>"] = { "<cmd>resize +2<cr>", "increase height" },
    ["<C-Down>"] = { "<cmd>resize -2<cr>", "decrease height" },
    ["<C-Left>"] = { "<cmd>vertical resize +2<cr>", "increase width" },
    ["<C-Right>"] = { "<cmd>vertical resize -2<cr>", "decrease width" },
    -- move lines
    ["<A-j>"] = { "<cmd>m .+1<cr>==", "move line down" },
    ["<A-k>"] = { "<cmd>m .-2<cr>==", "move line up" },
    -- buffers
    ["<S-h>"] = { "<cmd>bprevious<cr>", "prev buffer" },
    ["<S-l>"] = { "<cmd>bnext<cr>", "next buffer" },
  },

  i = {
    -- move lines
    ["<A-j>"] = { "<esc><cmd>m .+1<cr>==gi", "move line down" },
    ["<A-k>"] = { "<esc><cmd>m .-2<cr>==gi", "move line up" },
  },

  v = {
    -- move lines
    ["<A-j>"] = { ":m '>+1<cr>gv=gv", "move line down" },
    ["<A-k>"] = { ":m '<-2<cr>gv=gv", "move line up" },
  }
}

return M
