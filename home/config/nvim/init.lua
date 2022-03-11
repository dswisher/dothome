
-- init.lua

require('settings')
require('plugins')


-- TODO - move this to settings? Explore other color schemes - need one that doesn't use hot pink for completions
-- vim.cmd [[colorscheme nightfly]]

-- vim.g.tokyonight_style = "night"
-- vim.cmd[[colorscheme tokyonight]]

vim.cmd [[colorscheme ron]]


-- TODO - move these keymaps to their own file
vim.api.nvim_set_keymap('n', '<leader>b', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })

-- TODO - figure out how to enable preview with find-files (gives an error if previewer set to true)
vim.api.nvim_set_keymap('n', '<leader>r', [[<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]], { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>ve', ':edit $MYVIMRC<CR>', { noremap = true, silent = true })
-- TODO - set '<leader>vs' to source init.lua


-- TODO - move LSP settings to its own file
-- LSP settings
local nvim_lsp = require 'lspconfig'
local on_attach = function(_, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local opts = { noremap = true, silent = true }
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'fr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'fr', '<cmd>Telescope lsp_references<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'fi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)

    -- TODO - additional keymaps! using 'gd' just to test LSP setup
end

-- nvim-cmp supports additional completion capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- omnisharp LSP config
nvim_lsp.omnisharp.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    -- TODO - fix this - can we get it from nvim-lsp-installer? Why doesn't it work like others? At least use stdpath("data")
    cmd = { "/Users/swisherd/.local/share/nvim/lsp_servers/omnisharp/omnisharp/run", "--languageserver" , "--hostPID", tostring(pid) }
}

-- Enable the following language servers
--[[
local servers = { 'omnisharp' }
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end
]]--


-- Set completeopt to have a better completion experience
-- TODO - dig into this
vim.o.completeopt = 'menuone,noselect'

-- TODO - look at luasnip?

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
    mapping = {
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        })
    },
    sources = {
        { name = 'nvim_lsp' },
    }
}

