
-- See https://github.com/folke/todo-comments.nvim

return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    config = function()
        local todo_comments = require("todo-comments")

        todo_comments.setup({
            keywords = {
                FIX = {
                    icon = " ", -- icon used for the sign, and in search results
                    color = "error", -- can be a hex color, or a named color (see below)
                    alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
                    -- signs = false, -- configure signs for some keywords individually
                },
                TODO = { icon = " ", color = "info" , alt = {"Personal"} },
                HACK = { icon = " ", color = "warning", alt = { "DON SKIP" } },
                WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
                PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
                NOTE = { icon = " ", color = "hint", alt = { "INFO", "READ", "COLORS", "Custom" } },
                TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
                FORGETNOT = { icon = " ", color = "hint" },
            },
        })

        vim.keymap.set("n", "<leader>ft", "<CMD>TodoTelescope keywords=TODO,HACK<CR>", { desc = "todo-comments: show TODOs in telescope" })
    end
}

