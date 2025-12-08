
-- See https://github.com/nvim-tree/nvim-tree.lua

return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local api = require "nvim-tree.api"

        -- TODO: figure out how to configure this so if explorer is the only window open, it nvim will still close

        require("nvim-tree").setup {
            view = {
                width = 30,
                adaptive_size = true,
            },
            filters = {
                dotfiles = false
            },
        }

        -- Open or focus the explorer tree
        -- vim.keymap.set("n", "<leader>e", "<CMD>NvimTreeFocus<CR>", { desc = "NvimTree: open or focus" })
        -- vim.keymap.set("n", "<leader>ee", "<CMD>NvimTreeToggle<CR>", { desc = "NvimTree: toggle open" })
        -- vim.keymap.set("n", "<leader>ee", "<CMD>NvimTreeFindFileToggle<CR>", { desc = "NvimTree: toggle open and find file" })

        -- TODO: this does not work - it opens, but does not focus - need to use the API (see below)
        vim.keymap.set("n", "<leader>ee", "<CMD>NvimTreeOpen<CR><CMD>NvimTreeFindFile<CR>", { desc = "NvimTree: toggle open and find file" })
        vim.keymap.set("n", "<leader>ec", "<CMD>NvimTreeClose<CR>", { desc = "NvimTree: close" })

        -- TODO: use the API to do this?
        -- NOTE: these do not work
        -- vim.keymap.set("n", "<leader>e", api.tree.toggle({ find_file = true, update_root = false, focus = true, }), { desc = "NvimTree: toggle open" })
        -- vim.keymap.set("n", "<leader>e", api.tree.toggle(), { desc = "NvimTree: toggle open" })
    end,
}

