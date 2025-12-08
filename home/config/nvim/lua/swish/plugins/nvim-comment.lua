
-- See https://github.com/terrortylor/nvim-comment

return {
    'terrortylor/nvim-comment',
    config = function()
        require("nvim_comment").setup({
            create_mappings = false,
        })

        vim.keymap.set({"n", "v"}, "<leader>c", ":CommentToggle<cr>", { desc = "nvim-command: toggle comments" })
    end
}
