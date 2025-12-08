
require("swish.core")
require("swish.lazy")

require("current-theme")

-- TODO: where to put these??
vim.lsp.enable('lua_ls')
vim.lsp.enable('pyright')

vim.keymap.set("n", "gd", vim.lsp.buf.declaration, { desc = "lsp: go to declaration" })

