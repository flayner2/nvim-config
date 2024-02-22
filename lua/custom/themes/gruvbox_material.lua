-- Modified version of https://github.com/MayushKumar/base16-gruvbox-material-scheme

local M = {}

M.base_30 = {
  white = "#ebdbb2",
  darker_black = "#222222",
  black = "#282829", --  nvim bg
  black2 = "#2e2e2e",
  one_bg = "#323232",
  one_bg2 = "#3b3b3b",
  one_bg3 = "#434343",
  grey = "#505050",
  grey_fg = "#5a5a5a",
  grey_fg2 = "#646464",
  light_grey = "#6c6c6c",
  red = "#ea6962",
  baby_pink = "#ce8196",
  pink = "#ff75a0",
  line = "#373737", -- for lines like vertsplit
  green = "#89b482",
  vibrant_green = "#a9b665",
  nord_blue = "#6f8faf",
  blue = "#6d8dad",
  yellow = "#d8a657",
  sun = "#eab869",
  purple = "#d3869b",
  dark_purple = "#d3869b",
  teal = "#749689",
  orange = "#e78a4e",
  cyan = "#89b482",
  statusline_bg = "#2c2c2c",
  lightbg = "#393939",
  pmenu_bg = "#89b482",
  folder_bg = "#6d8dad",
}

M.base_16 = {
  base00 = "#292829",
  base01 = "#32302f",
  base02 = "#504945",
  base03 = "#665c54",
  base04 = "#bdae93",
  base05 = "#ddc7a1",
  base06 = "#ebdbb2",
  base07 = "#fbf1c7",
  base08 = "#ea6962",
  base09 = "#e78a4e",
  base0A = "#d8a657",
  base0B = "#a9b665",
  base0C = "#89b482",
  base0D = "#7daea3",
  base0E = "#d3869b",
  base0F = "#bd6f3e",
}

M.type = "dark"

M = require("base46").override_theme(M, "gruvbox_material")

M.polish_hl = {
  Operator = {
    fg = M.base_30.nord_blue,
  },

  ["@operator"] = {
    fg = M.base_30.nord_blue,
  },
}

return M
