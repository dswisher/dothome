
-- Roughly based on https://github.com/neovim/nvim-lspconfig/blob/master/lsp/pyright.lua
--   That config jumps through some hoops to find the Python path, which I have not included.
--   I assume pyright-langserver is on the path.

return {
  -- Command and arguments to start the server.
  cmd = { "pyright-langserver", "--stdio" },

  -- Filetypes to automatically attach to.
  filetypes = { "python" },

  -- Sets the "root directory" to the parent directory of one of these files
  root_markers = {
      "pyrightconfig.json",
      "pyproject.toml",
      "requirements.txt",
      ".git",
  },

  -- Specific settings to send to the server. The schema for this is
  -- defined by the server.
  -- Documentation here: https://microsoft.github.io/pyright/#/settings
  settings = {
      python = {
          autoSearchPaths = true,
          useLibraryCodeForTypes = true,
          diagnosticMode = "openFilesOnly",
      }
  }
}

