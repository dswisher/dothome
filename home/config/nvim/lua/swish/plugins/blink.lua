
-- See https://github.com/saghen/blink.cmp

return {
    'saghen/blink.cmp',

    version = '1.*',

    opts = {
        -- See :h blink-cmp-config-keymap for defining your own keymap
        keymap = {
            preset = 'none',

            -- TODO: these mappings are a work in progress, need to refine them

            ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },

            ['<C-e>'] = { 'hide', 'fallback' },
            ['<C-x>'] = { 'cancel', 'fallback' },

            ['<C-y>'] = { 'select_and_accept', 'fallback' },
            ['<CR>'] = { 'select_and_accept', 'fallback' },
            ['<Tab>'] = { 'select_and_accept', 'fallback' },

            ['<Up>'] = { 'select_prev', 'fallback' },
            ['<Down>'] = { 'select_next', 'fallback' },
            ['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
            ['<C-n>'] = { 'select_next', 'fallback_to_mappings' },

            ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
            ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },

            ['<C-k>'] = { 'show_signature', 'hide_signature', 'fallback' },
        },

        completion = {
            menu = {
                auto_show = false,      -- only show the menu when asked
            },
        },

        -- Providers of suggestions
        sources = {
            default = { 'lsp', },   -- 'path', 'snippets', 'buffer' },
        },
    }
}

