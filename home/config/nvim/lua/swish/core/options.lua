
-- Disable python plugin support (I think).
-- let g:loaded_python3_provider = 0
vim.g.loaded_python3_provider = 0

-- vim.opt.guicursor = ""

-- Prefer spaces over tabs
vim.opt.expandtab = true

-- allow buffers with changes to be unlinked from a window (do not save when switching buffers)
vim.opt.hidden = true

-- do not highlight all search matches
vim.opt.hlsearch = false

-- show search progress (incremental search)
vim.opt.incsearch = true

-- default to using 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- when indenting, use one tabstop
vim.opt.shiftwidth = 4

-- do not autoindent
vim.opt.autoindent = true
vim.opt.smartindent = true

-- do not wrap long lines
vim.opt.wrap = false

-- show line numbers with relative lines numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- show search results as I type
vim.opt.incsearch = true

-- always show the "sign" column (which is on the left)
vim.opt.signcolumn = "yes"

-- start scrolling before we get to the top/bottom to keep some context
vim.opt.scrolloff = 8

-- show a "margin" line so we know when lines are getting too wide
vim.opt.colorcolumn = "150"

-- make whitespace characters (tab) visible
vim.opt.list = true

-- read editorconfig files to align with project settings
-- TODO: read more about this
-- vim.g.editorconfig = true

-- I want to be able to use the mouse to copy/paste, and that is all. So, disable neovim mouse handling.
vim.opt.mouse = ""

