
-- See https://github.com/neovim/nvim-lspconfig/blob/master/lsp/terraformls.lua
-- and https://github.com/hashicorp/terraform-ls

return {
  cmd = { 'terraform-ls', 'serve' },
  filetypes = { 'terraform', 'terraform-vars' },
  root_markers = { '.terraform', '.git' },
}

