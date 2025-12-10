
-- Be explicit, and set the leader key to backslash (which is the default). I used to use comma...
vim.g.mapleader = '\\'
vim.g.maplocalleader = '\\'

-- Moving lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

-- Remove the built-in LSP key maps. I define my own in lsp_options.lua, many using telescope.
vim.keymap.del({'n', 'v'}, 'gra')   -- vim.lsp.buf.code_action()
vim.keymap.del('n', 'gri')          -- vim.lsp.buf.implementation()
vim.keymap.del('n', 'grn')          -- vim.lsp.buf.rename()
vim.keymap.del('n', 'grr')          -- vim.lsp.buf.references()
vim.keymap.del('n', 'grt')          -- vim.lsp.buf.type_definition()
vim.keymap.del('n', 'gO')           -- vim.lsp.buf.document_symbol()

