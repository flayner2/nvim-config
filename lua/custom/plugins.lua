local overrides = require("custom.configs.overrides")

return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end -- Override to setup mason-lspconfig
    }, {"williamboman/mason.nvim", opts = overrides.mason},

    {"nvim-treesitter/nvim-treesitter", opts = overrides.treesitter},

    {"nvim-tree/nvim-tree.lua", opts = overrides.nvimtree}, {
        "nvimtools/none-ls.nvim",
        event = "VeryLazy",
        opts = function() return require "custom.configs.null-ls" end
    }, {
        "windwp/nvim-ts-autotag",
        ft = {
            "javascript", "javascriptreact", "typescript", "typescriptreact",
            "svelte"
        },
        config = function() require("nvim-ts-autotag").setup() end
    }
}
