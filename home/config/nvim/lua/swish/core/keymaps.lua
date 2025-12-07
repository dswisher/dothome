
-- Be explicit, and set the leader key to backslash (which is the default). I used to use comma...
vim.g.mapleader = '\\'
vim.g.maplocalleader = '\\'

-- Moving lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

