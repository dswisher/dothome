
-- Enable these LSP servers. The actual configs are in the /lsp directory off the root of the nvim
-- config. The names of those files must match the names used here.
vim.lsp.enable('csharp_ls')
vim.lsp.enable('lua_ls')
vim.lsp.enable('pyright')
vim.lsp.enable('ruff')
vim.lsp.enable('terraform_ls')

-- Configure diagnostics.
vim.diagnostic.config({
    -- Show error messages below the line with the issue.
    -- NOTE: it is possible to set this up so it only displays for the current line, if desired
    virtual_lines = true
})

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        local map = function(keys, func, desc)
            vim.keymap.set('n', keys, func, { buffer = ev.buf, desc = 'LSP: ' .. desc })
        end

        local tele = require("telescope.builtin")

        -- map("gd", vim.lsp.buf.declaration, "go to declaration")
        map('gd', tele.lsp_definitions, 'Goto Definition (via telescope)')

        map('<leader>fd', tele.diagnostics, 'Diagnostics (via telescope)')
        map('<leader>fr', tele.lsp_references, 'Goto References (via telescope)')
        map('<leader>fs', tele.lsp_document_symbols, 'Doc Symbols (via telescope)')


        -- map('<leader>fS', tele.lsp_dynamic_workspace_symbols, 'Dynamic Symbols')
        -- map('<leader>ft', tele.lsp_type_definitions, 'Goto Type')
        -- map('<leader>fi', tele.lsp_implementations, 'Goto Impl')
        --
        -- map('K', vim.lsp.buf.hover, 'hover')
        -- map('<leader>E', vim.diagnostic.open_float, 'diagnostic')
        -- map('<leader>k', vim.lsp.buf.signature_help, 'sig help')
        -- map('<leader>rn', vim.lsp.buf.rename, 'rename')
        -- map('<leader>ca', vim.lsp.buf.code_action, 'code action')
        -- map('<leader>wf', vim.lsp.buf.format, 'format')
        --
        -- vim.keymap.set('v',
        --     '<leader>ca',
        --     vim.lsp.buf.code_action, { buffer = ev.buf, desc = 'Lsp: code_action' })
        --
        -- local dap = require('dap')
        -- map('<leader>dt', dap.toggle_breakpoint, 'Toggle Break')
        -- map('<leader>dc', dap.continue, 'Continue')
        -- map('<leader>dr', dap.repl.open, 'Inspect')
        -- map('<leader>dk', dap.terminate, 'Kill')
        --
        -- map('<leader>dso', dap.step_over, 'Step Over')
        -- map('<leader>dsi', dap.step_into, 'Step Into')
        -- map('<leader>dsu', dap.step_out, 'Step Out')
        -- map('<leader>dl', dap.run_last, 'Run Last')
        --
        -- local dapui = require('dapui')
        -- map('<leader>duu', dapui.open, 'open ui')
        -- map('<leader>duc', dapui.close, 'open ui')
    end,
})

