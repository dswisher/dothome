
-- See https://github.com/neovim/nvim-lspconfig/blob/master/lsp/csharp_ls.lua
--      This is a much-simplified version of that config.
-- Uses https://github.com/razzmatazz/csharp-language-server

return {
    cmd = { 'csharp-ls'},
    filetypes = { 'cs' },
}

