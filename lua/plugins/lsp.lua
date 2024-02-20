return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        ols = {
          settings = {
            enable_format = true,
            enable_hover = true,
            enable_snippets = true,
            enable_semantic_tokens = true,
            enable_inlay_hints = true,
          },
        },
        -- See:
        -- https://github.com/sveltejs/language-tools/tree/master/packages/typescript-plugin#usage
        svelte = {},
        glsl_analyzer = {},
        htmx = {},
      },
    },
  },
}
