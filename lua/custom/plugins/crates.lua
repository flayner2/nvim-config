return {
  'saecki/crates.nvim',
  tag = 'v0.4.0',
  event = { "BufRead Cargo.toml" },
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('crates').setup {
      src = {
        cmp = {
          enabled = true,
        }
      }
    }
  end,
}
