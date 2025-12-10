
-- See https://github.com/ThePrimeagen/harpoon/tree/harpoon2

return {
    -- "ThePrimeagen/harpoon",
    -- branch = "harpoon2",
    -- dependencies = {
    --     "nvim-lua/plenary.nvim",
    --     "nvim-telescope/telescope.nvim",
    -- },
    -- config = function()
    --     local harpoon = require("harpoon")
    --
    --     harpoon:setup({
    --         global_settings = {
    --             save_on_toggle = true,
    --             save_on_change = true,
    --         },
    --     })
    --
    --     -- basic telescope configuration
    --     local conf = require("telescope.config").values
    --     local function toggle_telescope(harpoon_files)
    --         local file_paths = {}
    --         for _, item in ipairs(harpoon_files.items) do
    --             table.insert(file_paths, item.value)
    --         end
    --
    --         require("telescope.pickers").new({}, {
    --             prompt_title = "Harpoon",
    --             finder = require("telescope.finders").new_table({
    --                 results = file_paths,
    --             }),
    --             previewer = conf.file_previewer({}),
    --             sorter = conf.generic_sorter({}),
    --         }):find()
    --     end
    --
    --     vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "harpoon: add file" })
    --     -- vim.keymap.set("n", "<leader>fh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon: open quick menu" })
    --     vim.keymap.set("n", "<leader>fh", function() toggle_telescope(harpoon:list()) end, { desc = "harpoon: open list via telescope" })
    -- end
}

