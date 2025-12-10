
-- Based on https://github.com/neovim/nvim-lspconfig/blob/master/lsp/ruff_lsp.lua
--   But looking at the ruff github repo, their command (ruff-lsp) is deprecated, and "ruff server" should be used instead

return {
    cmd = { "ruff", "server" },
    filetypes = { "python" },
    root_markers = {
        "pyproject.toml",
        "ruff.toml",
        "requirements.txt",
        ".git"
    },
    settings = {},
}

