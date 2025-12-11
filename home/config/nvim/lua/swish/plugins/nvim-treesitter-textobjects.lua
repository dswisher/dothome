
-- See https://github.com/nvim-treesitter/nvim-treesitter-textobjects/tree/main
-- TODO: figure out how to configure textobjects

return {
    -- "nvim-treesitter/nvim-treesitter-textobjects",
    --
    -- config = function()
    --     -- TODO: how do I use sel down below?
    --     -- local sel = require "nvim-treesitter-textobjects.select"
    --
    --     -- keymaps
    --     -- You can use the capture groups defined in `textobjects.scm`
    --     vim.keymap.set({ "x", "o" }, "af", function()
    --         require "nvim-treesitter-textobjects.select".select_textobject("@function.outer", "textobjects")
    --     end)
    --     vim.keymap.set({ "x", "o" }, "if", function()
    --         require "nvim-treesitter-textobjects.select".select_textobject("@function.inner", "textobjects")
    --     end)
    --     vim.keymap.set({ "x", "o" }, "ac", function()
    --         require "nvim-treesitter-textobjects.select".select_textobject("@class.outer", "textobjects")
    --     end)
    --     vim.keymap.set({ "x", "o" }, "ic", function()
    --         require "nvim-treesitter-textobjects.select".select_textobject("@class.inner", "textobjects")
    --     end)
    --     -- You can also use captures from other query groups like `locals.scm`
    --     vim.keymap.set({ "x", "o" }, "as", function()
    --         require "nvim-treesitter-textobjects.select".select_textobject("@local.scope", "locals")
    --     end)
    -- end
}

