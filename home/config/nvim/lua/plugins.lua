
-- plugins.lua

local fn = vim.fn

-- Install (bootstrap) packer, if not already installed
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'    -- so packer can update itself

    -- Telescope - nice interface for LSP functions (among other things)
    use { 
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- LSP fun
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'   -- makes installing LSP providers easier

    -- Completion
    -- TODO - look at coc?
    use 'hrsh7th/nvim-cmp'      -- autocompletion framework
    use 'hrsh7th/cmp-nvim-lsp'  -- LSP autocompletion provider

    -- Color scheme - update settings to use whatever is installed here
    use 'bluz71/vim-nightfly-guicolors'
    -- use 'folke/tokyonight.nvim'

    use 'cocopon/colorswatch.vim'   -- adds ColorSwatchGenerate command
    use 'cocopon/inspecthi.vim'     -- adds Inspecthi command to show link structure of highlighting groups

    -- vimwiki - personal wiki in vim, with diary
    -- TODO - enable vimwiki, once I figure out how to config the path and other settings
    -- use 'vimwiki/vimwiki'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

