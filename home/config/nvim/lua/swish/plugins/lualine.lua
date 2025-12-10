
-- See https://github.com/nvim-lualine/lualine.nvim

return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },

    config = function()
        local lualine = require("lualine")

        lualine.setup({
            sections = {
                lualine_a = {
                    'mode'
                },

                lualine_b = {},

                lualine_c = {
                    {
                        'filename',
                        file_status = true,
                        newfile_status = true,
                        path = 1,   -- relative path
                    }
                },

                lualine_x = {
                    'lsp_status'
                },

                lualine_y = {
                    'location',
                    {
                        'encoding',
                        show_bomb = true,
                    },
                    'filetype',
                    'diagnostics',
                },

                lualine_z = {},
            },

            inactive_sections = {
                lualine_a = {},

                lualine_b = {},

                lualine_c = {
                    {
                        'filename',
                        file_status = true,
                        newfile_status = true,
                        path = 1,   -- relative path
                    },
                },

                lualine_x = {},

                lualine_y = {
                    'diagnostics',
                },

                lualine_z = {},
            }
        })
    end
}

