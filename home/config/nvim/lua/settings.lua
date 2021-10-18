
-- Set leader to comma
vim.g.mapleader = ','

-- Prefer spaces over tabs
vim.o.expandtab = true

-- Do not save when switching buffers (note: this is now a default on master)
vim.o.hidden = true

-- allow buffers with changes to be unlinked from a window (do not save when switching buffers)
vim.o.hidden = true

-- do not highlight all search matches
vim.o.hlsearch = false

-- show search progress (incremental search)
vim.o.incsearch = true

-- default to using 4 spaces
vim.o.tabstop = 4

-- when indenting, use one tabstop
vim.o.shiftwidth = 0

-- do not wrap long lines
vim.o.wrap = false

-- show line numbers
vim.o.number = true

-- use relative line numbers
vim.o.relativenumber = true

-- for now, always enable true-color terminal support
-- TODO - find/build a color scheme that requires fewer colors
-- vim.o.termguicolors = true


