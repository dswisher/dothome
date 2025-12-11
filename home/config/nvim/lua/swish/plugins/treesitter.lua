
-- See https://github.com/nvim-treesitter/nvim-treesitter
-- Also: https://github.com/Sin-cy/dotfiles/blob/main/nvim/.config/nvim/lua/sethy/plugins/treesitter.lua

return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        event = { "BufReadPre", "BufNewFile" },
        build = ":TSUpdate",
        lazy = false,

        config = function()
            local treesitter = require("nvim-treesitter.configs")

            treesitter.setup({
                highlight = {
                    enable = true,

                    -- disable built-in highlighting
                    additional_vim_regex_highlighting = false,
                },

                -- ensure these languages parsers are installed
                ensure_installed = {
                    "c",
                    "lua",
                    "markdown",
                    "python",
                    "sql",
                },

            })
        end
    }
}

